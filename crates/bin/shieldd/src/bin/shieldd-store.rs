//! Offline storage maintenance; stop Bankd before opening its exclusive database.
use anyhow::{ensure, Context, Result};
use shieldd_sdk_app::{app::PermanentWriter, SUBSTORE_PREFIXES};
use shieldd_sdk_sct::permanent_nullifiers::Config;
use std::path::Path;

#[tokio::main]
async fn main() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    ensure!(args.len()==5 || args.len()==4,"usage: shieldd-store export DB DEST ROOTHEX | restore SOURCE DEST ROOTHEX | capacity DB ROOTHEX");
    let raw = args.last().unwrap();
    ensure!(
        raw.is_ascii() && raw.len() == 64,
        "authenticated root must be 32 bytes of hexadecimal"
    );
    let mut root = [0; 32];
    for (i, byte) in root.iter_mut().enumerate() {
        *byte = u8::from_str_radix(&raw[i * 2..i * 2 + 2], 16).context("invalid root encoding")?;
    }
    let config = Config::from_env()?;
    match args[1].as_str() {
        "restore" if args.len() == 5 => {
            let writer = PermanentWriter::restore_snapshot(
                Path::new(&args[2]),
                Path::new(&args[3]),
                &config,
                root,
            )
            .await?;
            println!("{}", serde_json::to_string(writer.committed()?)?);
        }
        "export" | "capacity" => {
            let storage =
                cnidarium::Storage::load(args[2].clone().into(), SUBSTORE_PREFIXES.to_vec())
                    .await?;
            ensure!(
                storage.latest_snapshot().root_hash().await?.0 == root,
                "database differs from authenticated Bankd root"
            );
            let writer = PermanentWriter::open(storage, &config).await?;
            let boundary = writer.committed()?;
            ensure!(
                boundary.application_root == Some(root),
                "database differs from authenticated Bankd root"
            );
            if args[1] == "export" {
                ensure!(args.len() == 5, "export requires destination");
                writer
                    .export_snapshot(Path::new(&args[3]), boundary)
                    .await?;
            } else {
                ensure!(args.len() == 4, "capacity takes database and root");
                println!("{}", serde_json::to_string(&writer.capacity()?)?);
            }
        }
        _ => anyhow::bail!("unknown maintenance command"),
    }
    Ok(())
}
