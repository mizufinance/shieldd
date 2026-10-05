//! A single local capture owned by the SDK snapshot manager's reservation.
use anyhow::{ensure, Context, Result};
use futures::FutureExt;
use shieldd_sdk_app::app::App;
use shieldd_sdk_storage::{ForestConfig, Manifest, Storage};
use std::{
    path::{Path, PathBuf},
    sync::{
        atomic::{AtomicBool, Ordering},
        Arc, Mutex,
    },
};
use tokio::sync::watch;

struct Capture {
    boundary: Manifest,
    path: PathBuf,
    cancelled: AtomicBool,
    started: AtomicBool,
    result: watch::Sender<Option<Result<(), String>>>,
    completion: Mutex<()>,
}
#[derive(Default)]
pub(crate) struct Checkpoints {
    current: Mutex<Option<Arc<Capture>>>,
    validation: Mutex<Option<tokio::task::JoinHandle<()>>>,
}
impl Checkpoints {
    pub(crate) fn schedule(&self, boundary: Manifest, path: PathBuf) -> Result<()> {
        ensure!(
            path.is_absolute()
                && path
                    .symlink_metadata()
                    .is_err_and(|e| e.kind() == std::io::ErrorKind::NotFound),
            "checkpoint requires a new absolute destination"
        );
        ensure!(
            path.parent().is_some_and(Path::is_dir),
            "checkpoint parent is missing"
        );
        let mut current = self.current.lock().expect("checkpoint lock poisoned");
        if current
            .as_ref()
            .is_some_and(|c| c.cancelled.load(Ordering::Acquire) && c.result.borrow().is_some())
        {
            current.take();
        }
        ensure!(
            current.is_none(),
            "a checkpoint capture is already reserved"
        );
        ensure!(
            self.validation
                .lock()
                .expect("checkpoint worker lock poisoned")
                .as_ref()
                .is_none_or(|job| job.is_finished()),
            "previous checkpoint validation is still running"
        );
        let (result, _) = watch::channel(None);
        *current = Some(Arc::new(Capture {
            boundary,
            path,
            cancelled: AtomicBool::new(false),
            started: AtomicBool::new(false),
            result,
            completion: Mutex::new(()),
        }));
        Ok(())
    }
    /// Copy under the publication writer, then validate the independent copy.
    /// Validation does not keep either the writer or the execution lock alive.
    pub(crate) async fn capture(&self, storage: Storage, boundary: &Manifest) {
        let capture = {
            let current = self.current.lock().expect("checkpoint lock poisoned");
            let Some(capture) = current
                .as_ref()
                .filter(|c| &c.boundary == boundary && !c.cancelled.load(Ordering::Acquire))
            else {
                return;
            };
            if capture.started.swap(true, Ordering::AcqRel) {
                return;
            }
            capture.clone()
        };
        let job = capture.clone();
        let copy =
            tokio::task::spawn_blocking(move || storage.checkpoint(&job.path, &job.boundary)).await;
        let result = copy
            .context("checkpoint copy worker panicked")
            .and_then(|r| r);
        if let Err(error) = result {
            finish(&capture, Err(error));
            return;
        }
        let worker = tokio::spawn(async move {
            let result = std::panic::AssertUnwindSafe(validate(&capture.path, &capture.boundary))
                .catch_unwind()
                .await
                .map_err(|_| anyhow::anyhow!("checkpoint validation panicked"))
                .and_then(|r| r);
            finish(&capture, result);
        });
        *self
            .validation
            .lock()
            .expect("checkpoint worker lock poisoned") = Some(worker);
    }
    pub(crate) async fn wait(&self, height: u64) -> Result<()> {
        let capture = self
            .current
            .lock()
            .expect("checkpoint lock poisoned")
            .clone()
            .context("checkpoint is not reserved")?;
        ensure!(
            capture.boundary.height == height,
            "checkpoint height mismatch"
        );
        let mut receiver = capture.result.subscribe();
        loop {
            if let Some(result) = receiver.borrow().clone() {
                return result.map_err(anyhow::Error::msg);
            }
            receiver
                .changed()
                .await
                .context("checkpoint worker stopped")?;
        }
    }
    pub(crate) fn release(&self, height: u64) -> Result<()> {
        let mut current = self.current.lock().expect("checkpoint lock poisoned");
        let capture = current.as_ref().context("checkpoint is not reserved")?;
        ensure!(
            capture.boundary.height == height,
            "checkpoint height mismatch"
        );
        let completion = capture
            .completion
            .lock()
            .expect("checkpoint completion lock poisoned");
        capture.cancelled.store(true, Ordering::Release);
        if !capture.started.load(Ordering::Acquire) {
            capture
                .result
                .send_replace(Some(Err("checkpoint cancelled".into())));
        }
        if capture.result.borrow().is_some() {
            if capture.path.exists() {
                std::fs::remove_dir_all(&capture.path)?;
            }
        }
        // Keep a running copy reserved until validation and cleanup complete.
        let completed = capture.result.borrow().is_some();
        drop(completion);
        if completed {
            current.take();
        }
        Ok(())
    }
    // The serialized service owner first joins materialization, which awaits
    // the copy phase; only detached validation remains for this method to join.
    pub(crate) async fn join(&self) -> Result<()> {
        {
            let current = self.current.lock().expect("checkpoint lock poisoned");
            if let Some(capture) = current
                .as_ref()
                .filter(|c| !c.started.load(Ordering::Acquire))
            {
                let _completion = capture
                    .completion
                    .lock()
                    .expect("checkpoint completion lock poisoned");
                capture.cancelled.store(true, Ordering::Release);
                capture
                    .result
                    .send_replace(Some(Err("checkpoint owner closed".into())));
            }
        }
        let worker = self
            .validation
            .lock()
            .expect("checkpoint worker lock poisoned")
            .take();
        if let Some(worker) = worker {
            worker
                .await
                .context("checkpoint validation worker panicked")?;
        }
        Ok(())
    }
    pub(crate) fn fail(&self, message: &str) {
        if let Some(capture) = self
            .current
            .lock()
            .expect("checkpoint lock poisoned")
            .as_ref()
        {
            let _completion = capture
                .completion
                .lock()
                .expect("checkpoint completion lock poisoned");
            capture.cancelled.store(true, Ordering::Release);
            capture.result.send_replace(Some(Err(message.into())));
        }
    }
}
fn finish(capture: &Capture, result: Result<()>) {
    let _completion = capture
        .completion
        .lock()
        .expect("checkpoint completion lock poisoned");
    if capture.cancelled.load(Ordering::Acquire) && capture.path.exists() {
        let _ = std::fs::remove_dir_all(&capture.path);
    }
    if capture.result.borrow().is_none() {
        let result = if capture.cancelled.load(Ordering::Acquire) {
            Err(anyhow::anyhow!("checkpoint cancelled"))
        } else {
            result
        };
        capture
            .result
            .send_replace(Some(result.map_err(|e| format!("{e:#}"))));
    }
}
pub async fn validate(path: &Path, expected: &Manifest) -> Result<()> {
    validate_with_archive(
        path,
        expected,
        shieldd_sdk_storage::ArchiveCompleteness::FullHistory,
    )
    .await
}
/// Explicit native checkpoint contract. Hosts still choose and authenticate the
/// boundary; this verifies current native trees as well as selected coverage.
pub async fn validate_with_archive(
    path: &Path,
    expected: &Manifest,
    required: shieldd_sdk_storage::ArchiveCompleteness,
) -> Result<()> {
    let anchor = expected.digest()?;
    let config = ForestConfig::from_env()?;
    let source = path.to_owned();
    let config_copy = config.clone();
    let actual = tokio::task::spawn_blocking(move || {
        Storage::validate_checkpoint_with_archive(&source, config_copy, anchor, required)
    })
    .await
    .context("checkpoint validation worker panicked")??;
    ensure!(
        &actual == expected,
        "checkpoint boundary differs from SDK snapshot"
    );
    let storage = Storage::open(path, config)?;
    let view = storage.latest_snapshot();
    ensure!(
        App::is_ready(view.clone()).await,
        "checkpoint native commitments are inconsistent"
    );
    storage
        .forest()
        .read()
        .authenticate_reads(expected, view.observations())?;
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    fn reserve(checkpoints: &Checkpoints, parent: &Path) -> Arc<Capture> {
        let boundary = Manifest {
            chain_id: "test".into(),
            protocol: [1; 32],
            height: 1,
            block_id: [2; 32],
            previous: [3; 32],
            participants: vec![],
        };
        checkpoints
            .schedule(boundary, parent.join("capture"))
            .unwrap();
        checkpoints
            .current
            .lock()
            .unwrap()
            .as_ref()
            .unwrap()
            .clone()
    }
    #[tokio::test]
    async fn releasing_unstarted_capture_wakes_existing_waiter() {
        let directory = tempfile::tempdir().unwrap();
        let checkpoints = Arc::new(Checkpoints::default());
        let capture = reserve(&checkpoints, directory.path());
        let waiter = {
            let checkpoints = checkpoints.clone();
            tokio::spawn(async move { checkpoints.wait(1).await })
        };
        while capture.result.receiver_count() == 0 {
            tokio::task::yield_now().await;
        }
        checkpoints.release(1).unwrap();
        assert!(
            tokio::time::timeout(std::time::Duration::from_secs(1), waiter)
                .await
                .unwrap()
                .unwrap()
                .unwrap_err()
                .to_string()
                .contains("cancelled")
        );
    }
    #[tokio::test]
    async fn joining_unstarted_capture_wakes_existing_waiter() {
        let directory = tempfile::tempdir().unwrap();
        let checkpoints = Checkpoints::default();
        let capture = reserve(&checkpoints, directory.path());
        checkpoints.join().await.unwrap();
        assert!(capture
            .result
            .borrow()
            .as_ref()
            .unwrap()
            .as_ref()
            .unwrap_err()
            .contains("closed"));
    }
    #[test]
    fn release_and_completion_clean_running_capture_in_either_order() {
        for finish_first in [true, false] {
            let directory = tempfile::tempdir().unwrap();
            let checkpoints = Checkpoints::default();
            let capture = reserve(&checkpoints, directory.path());
            capture.started.store(true, Ordering::Release);
            std::fs::create_dir(&capture.path).unwrap();
            if finish_first {
                finish(&capture, Ok(()));
            }
            checkpoints.release(1).unwrap();
            if !finish_first {
                finish(&capture, Ok(()));
            }
            assert!(!capture.path.exists());
            assert!(capture.result.borrow().is_some());
        }
    }
}
