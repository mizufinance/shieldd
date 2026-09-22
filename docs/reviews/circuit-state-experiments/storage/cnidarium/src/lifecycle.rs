use anyhow::{ensure, Result};
use cnidarium::{StateDelta, StateRead, StateWrite, Storage};
use ff::Field;
use futures::StreamExt;
use rand::SeedableRng;
use rand_chacha::ChaCha20Rng;
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_sct::{nullifier_generation::NullifierTreeId, nullifier_tree, state_key, Nullifier};
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
    let path = std::env::args().nth(1).expect("fresh data directory");
    let count: usize = std::env::args().nth(2).expect("nullifier count").parse()?;
    let unbounded = std::env::args().nth(3).as_deref() == Some("unbounded");
    let coordinated = std::env::args().nth(3).as_deref() == Some("coordinated");
    let path = Path::new(&path);
    ensure!(!path.exists(), "pass a fresh data directory");
    let mut rng = ChaCha20Rng::seed_from_u64(0x5eed_2026);
    let nullifiers: Vec<_> = (0..count).map(|_| Nullifier(Fq::random(&mut rng))).collect();
    let misses: Vec<_> = (0..8).map(|_| Nullifier(Fq::random(&mut rng))).collect();
    let mut db = Storage::load(path.to_path_buf(), vec![]).await?;
    let mut delta = StateDelta::new(db.latest_snapshot());
    nullifier_tree::initialize(&mut delta).await?;
    delta.put_raw("benchmark/sentinel".to_owned(), b"nonempty verifiable state".to_vec());
    db.commit(delta).await?;
    let t = Instant::now();
    let mut delta = StateDelta::new(db.latest_snapshot());
    nullifier_tree::insert_batch(&mut delta, nullifiers).await?;
    db.commit(delta).await?;
    println!("phase=insert count={count} elapsed_ms={} physical_bytes={}",t.elapsed().as_millis(),bytes(path)?);
    let mut delta = StateDelta::new(db.latest_snapshot());
    nullifier_tree::rollover(&mut delta, 30, 1 << 32).await?.expect("first rollover");
    nullifier_tree::rollover(&mut delta, 60, 2 << 32).await?.expect("second rollover");
    let pre_prune_root = db.commit(delta).await?;
    let t = Instant::now();
    let snapshot = db.latest_snapshot();
    let pack = nullifier_tree::build_generation_pack(&snapshot, 0).await?;
    let serialized = pack.encode()?;
    fs::write(path.with_extension("ngp"), &serialized)?;
    let receipt = pack.receipt(&serialized)?;
    println!("phase=pack count={count} elapsed_ms={} pack_bytes={} physical_bytes={}",t.elapsed().as_millis(),serialized.len(),bytes(path)?);
    let t = Instant::now();
    let rebuilt = pack.reconstruct()?;
    ensure!(rebuilt.root() == pack.metadata.generation_root, "pack root mismatch");
    for nf in misses {
        let live = nullifier_tree::archived_nonmembership_proof(&snapshot, 0, nf).await?;
        let cold = rebuilt.nonmembership_proof(nf)?;
        ensure!(*cold == live, "cold proof mismatch");
    }
    drop(snapshot);
    drop(rebuilt);
    println!("phase=reconstruct count={count} elapsed_ms={}",t.elapsed().as_millis());
    let mut delta = StateDelta::new(db.latest_snapshot());
    nullifier_tree::record_generation_pack_completion(&mut delta, &receipt).await?;
    let receipt_root = db.commit_in_place(delta).await?;
    ensure!(receipt_root == pre_prune_root, "receipt changed consensus root");
    db.release().await;
    db = Storage::load(path.to_path_buf(), vec![]).await?;
    if unbounded {
        let t = Instant::now();
        let mut delta = StateDelta::new(db.latest_snapshot());
        let deleted = nullifier_tree::prune_packed_generation(&mut delta, &receipt).await?;
        let root = db.commit_in_place(delta).await?;
        ensure!(root == pre_prune_root, "unbounded prune changed consensus root");
        db.release().await;
        db = Storage::load(path.to_path_buf(), vec![]).await?;
        println!("phase=unbounded_prune count={count} elapsed_ms={} deleted_records={deleted} physical_bytes={} root_same=true",t.elapsed().as_millis(),bytes(path)?);
        nullifier_tree::verify_committed_roots(&db.latest_snapshot()).await?;
        ensure!(nullifier_tree::generation_pack_receipt(&db.latest_snapshot(), 0).await?.is_some(), "receipt absent after reopen");
        db.release().await;
        return Ok(());
    }
    let t = Instant::now();
    let tree = NullifierTreeId::Generation(0);
    let prefixes = [
        state_key::nullifier_generations::tree_node_prefix(tree),
        state_key::nullifier_generations::leaf_prefix(tree),
        state_key::nullifier_generations::value_prefix(tree),
        state_key::nullifier_generations::value_desc_prefix(tree),
    ];
    let mut deleted = 0_u64;
    let mut pages = 0_u64;
    for prefix in prefixes {
        loop {
            let keys = {
                let snapshot = db.latest_snapshot();
                let stream = snapshot.nonverifiable_prefix_raw(&prefix);
                futures::pin_mut!(stream);
                let mut keys = Vec::with_capacity(256);
                while let Some(entry) = stream.next().await {
                    keys.push(entry?.0);
                    if keys.len() == 256 { break; }
                }
                keys
            };
            if keys.is_empty() { break; }
            let mut delta = StateDelta::new(db.latest_snapshot());
            for key in keys.iter() { delta.nonverifiable_delete(key.clone()); }
            if coordinated {
                delta.put_raw("benchmark/sentinel".to_owned(), b"nonempty verifiable state".to_vec());
            }
            let root = if coordinated { db.commit(delta).await? } else { db.commit_in_place(delta).await? };
            ensure!(root == pre_prune_root, "page changed consensus root");
            deleted += keys.len() as u64;
            pages += 1;
            if !coordinated || pages == 1 {
                db.release().await;
                db = Storage::load(path.to_path_buf(), vec![]).await?;
                ensure!(nullifier_tree::generation_pack_receipt(&db.latest_snapshot(), 0).await?.is_some(),"receipt absent after page restart");
            }
        }
    }
    println!("phase=bounded_prune count={count} coordinated={coordinated} elapsed_ms={} deleted_records={deleted} pages={pages} page_limit=256 physical_bytes={} root_same=true",t.elapsed().as_millis(),bytes(path)?);
    db.release().await;
    let db = Storage::load(path.to_path_buf(), vec![]).await?;
    nullifier_tree::verify_committed_roots(&db.latest_snapshot()).await?;
    ensure!(nullifier_tree::generation_pack_receipt(&db.latest_snapshot(), 0).await?.is_some(),"receipt absent after reopen");
    println!("phase=reopen count={count} physical_bytes={}",bytes(path)?);
    db.release().await;
    Ok(())
}
