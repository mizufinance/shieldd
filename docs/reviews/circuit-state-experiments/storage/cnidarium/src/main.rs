use anyhow::{ensure, Result};
use cnidarium::{StateDelta, StateRead, StateWrite, Storage};
use std::{fs, path::Path, time::Instant};

fn bytes(path: &Path) -> Result<u64> {
    fn walk(p: &Path) -> Result<u64> {
        let mut n = 0;
        for entry in fs::read_dir(p)? {
            let entry = entry?;
            let meta = entry.metadata()?;
            n += if meta.is_dir() { walk(&entry.path())? } else { meta.len() };
        }
        Ok(n)
    }
    walk(path)
}

#[tokio::main]
async fn main() -> Result<()> {
    let path = std::env::args().nth(1).expect("data directory argument");
    let path = Path::new(&path);
    ensure!(!path.exists(), "pass a fresh data directory");
    let mut db = Storage::load(path.to_path_buf(), vec![]).await?;
    let mut latest_root = None;
    for version in 0..32_u32 {
        let mut delta = StateDelta::new(db.latest_snapshot());
        for i in 0..512_u32 {
            let key = format!("hist/{i:08}");
            delta.put_raw(key, vec![version as u8; 64]);
        }
        let start = Instant::now();
        let root = db.commit(delta).await?;
        latest_root = Some(root);
        println!("phase=updates version={version} commit_ms={} root={root:?} physical_bytes={}",start.elapsed().as_millis(),bytes(path)?);
    }
    let rebuilt_path = path.with_extension("rebuilt");
    ensure!(!rebuilt_path.exists(), "rebuilt data directory exists");
    let rebuilt = Storage::load(rebuilt_path.clone(), vec![]).await?;
    let mut rebuilt_delta = StateDelta::new(rebuilt.latest_snapshot());
    for i in 0..512_u32 {
        let key = format!("hist/{i:08}");
        let value = db.latest_snapshot().get_raw(&key).await?.expect("latest key");
        rebuilt_delta.put_raw(key, value);
    }
    let rebuilt_root = rebuilt.commit(rebuilt_delta).await?;
    ensure!(Some(rebuilt_root) == latest_root, "latest-state rebuild changed root");
    rebuilt.release().await;
    println!("phase=rebuilt equal_root=true physical_bytes={} original_bytes_open={}",bytes(&rebuilt_path)?,bytes(path)?);
    db.release().await;
    db = Storage::load(path.to_path_buf(), vec![]).await?;
    println!("phase=predelete_reopened original_bytes={} rebuilt_bytes={}",bytes(path)?,bytes(&rebuilt_path)?);
    let mut delta = StateDelta::new(db.latest_snapshot());
    for i in 0..512_u32 { delta.delete(format!("hist/{i:08}")); }
    db.commit(delta).await?;
    println!("phase=deleted physical_bytes={}",bytes(path)?);
    db.release().await;
    let db = Storage::load(path.to_path_buf(), vec![]).await?;
    let snapshot = db.latest_snapshot();
    ensure!(snapshot.get_raw("hist/00000000").await?.is_none(), "deleted key reappeared");
    println!("phase=reopened physical_bytes={}",bytes(path)?);
    db.release().await;
    Ok(())
}
