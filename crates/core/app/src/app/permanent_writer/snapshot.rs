use super::*;
use std::{
    fs::{self, File, OpenOptions},
    io::{Read, Write},
    path::Path,
};

const MANIFEST: &str = "shieldd-snapshot.json";
impl PermanentWriter {
    /// Checkpoint application data and independent insertion history at one
    /// committed boundary. No NOMT read session is retained during the export.
    pub async fn export_snapshot(
        &self,
        destination: &Path,
        expected: &CommitBoundary,
    ) -> Result<()> {
        ensure!(
            matches!(&self.phase,Phase::Ready(current) if current == expected),
            "snapshot requires a ready committed writer"
        );
        ensure!(!destination.exists(), "snapshot destination already exists");
        let snapshot = self.storage.latest_snapshot();
        ensure!(
            Some(snapshot.root_hash().await?.0) == expected.application_root
                && snapshot.get_block_height().await?
                    == expected
                        .nullifiers
                        .height
                        .context("snapshot height is missing")?,
            "snapshot application boundary changed"
        );
        fs::create_dir_all(destination)?;
        self.storage.checkpoint(&destination.join("application"))?;
        self.history(expected)?
            .export(&destination.join("nullifiers"))?;
        ensure!(
            self.storage.latest_version() == snapshot.version(),
            "application changed during snapshot export"
        );
        // Written last; interrupted exports have no completion marker.
        let mut manifest = OpenOptions::new()
            .write(true)
            .create_new(true)
            .open(destination.join(MANIFEST))?;
        manifest.write_all(&serde_json::to_vec(expected)?)?;
        manifest.sync_all()?;
        File::open(destination)?.sync_all()?;
        Ok(())
    }

    /// Rebuild a fresh replica using the application root selected by Bankd's
    /// authenticated checkpoint. The local snapshot manifest supplies no trust.
    pub async fn restore_snapshot(
        source: &Path,
        destination: &Path,
        config: &nullifiers::Config,
        expected_root: [u8; 32],
    ) -> Result<Self> {
        ensure!(!destination.exists(), "restore destination already exists");
        let mut bytes = Vec::new();
        File::open(source.join(MANIFEST))?
            .take(8193)
            .read_to_end(&mut bytes)?;
        ensure!(bytes.len() <= 8192, "snapshot manifest exceeds limit");
        let expected: CommitBoundary = serde_json::from_slice(&bytes)?;
        ensure!(
            expected.application_root == Some(expected_root),
            "snapshot differs from authenticated application root"
        );
        copy_checkpoint(&source.join("application"), destination)?;
        let storage =
            Storage::load(destination.to_path_buf(), crate::SUBSTORE_PREFIXES.to_vec()).await?;
        let snapshot = storage.latest_snapshot();
        ensure!(
            nullifiers::read_committed_boundary(&snapshot, expected_root).await?
                == expected.nullifiers,
            "snapshot nullifier boundary mismatch"
        );
        let mut store = Store::open(&destination.join("permanent-nullifiers"), config, true)?;
        store.restore(&source.join("nullifiers"), &expected.nullifiers)?;
        Self::recover(storage, store, Some(expected_root)).await
    }
    pub fn capacity(&self) -> Result<Vec<nullifiers::PartitionCapacity>> {
        ensure!(
            matches!(self.phase, Phase::Ready(_)),
            "capacity requires a ready writer"
        );
        self.nullifiers
            .read()
            .map_err(|_| anyhow::anyhow!("nullifier writer failed"))?
            .capacity()
    }
}
fn copy_checkpoint(source: &Path, destination: &Path) -> Result<()> {
    ensure!(source.is_dir(), "application checkpoint is missing");
    fs::create_dir_all(destination)?;
    for entry in fs::read_dir(source)? {
        let entry = entry?;
        let kind = entry.file_type()?;
        ensure!(kind.is_file(), "checkpoint contains a non-file entry");
        let target = destination.join(entry.file_name());
        fs::copy(entry.path(), &target)?;
        File::open(target)?.sync_all()?;
    }
    File::open(destination)?.sync_all()?;
    Ok(())
}
