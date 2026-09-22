use anyhow::{ensure, Result};
use ff::Field;
use rand::SeedableRng;
use rand_chacha::ChaCha20Rng;
use shieldd_sdk_crypto::Fq;
use shieldd_sdk_sct::{generation_pack::NullifierGenerationPack, Nullifier};
use std::{fs, time::Instant};

fn main() -> Result<()> {
    let path = std::env::args().nth(1).expect("pack file");
    let bytes = fs::read(path)?;
    let t = Instant::now();
    let pack = NullifierGenerationPack::decode(&bytes)?;
    let decoded_ms = t.elapsed().as_millis();
    let t = Instant::now();
    let tree = pack.reconstruct()?;
    ensure!(tree.root() == pack.metadata.generation_root, "root mismatch");
    let reconstructed_ms = t.elapsed().as_millis();
    let mut rng = ChaCha20Rng::seed_from_u64(0x5eed_2026 + bytes.len() as u64);
    let t = Instant::now();
    for _ in 0..8 {
        let nf = Nullifier(Fq::random(&mut rng));
        tree.nonmembership_proof(nf)?.verify_for(nf)?;
    }
    println!("pack_bytes={} count={} decode_ms={decoded_ms} reconstruct_ms={reconstructed_ms} prove8_ms={}",bytes.len(),pack.nullifiers.len(),t.elapsed().as_millis());
    Ok(())
}
