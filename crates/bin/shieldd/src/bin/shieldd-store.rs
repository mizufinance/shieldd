//! Offline matched-boundary maintenance. Stop Bankd before opening these files.
use anyhow::{ensure, Context, Result};
use shieldd_sdk_storage::{ForestConfig, ParticipantId, Storage};
use std::path::Path;

#[tokio::main]
async fn main() -> Result<()> {
    let args: Vec<_> = std::env::args().collect();
    ensure!(args.len() >= 4, "usage: shieldd-store export DB DEST SDK_ROOT | restore SOURCE DEST SDK_ROOT | capacity DB SDK_ROOT | grow DB PARTICIPANT BUCKETS SDK_ROOT");
    let raw = args.last().context("missing trusted SDK root")?;
    ensure!(
        raw.is_ascii() && raw.len() == 64,
        "SDK root must contain 64 hexadecimal characters"
    );
    let mut anchor = [0; 32];
    for (i, byte) in anchor.iter_mut().enumerate() {
        *byte = u8::from_str_radix(&raw[i * 2..i * 2 + 2], 16).context("invalid SDK root")?;
    }
    let config = ForestConfig::from_env()?;
    let source = Path::new(&args[2]);
    match args[1].as_str() {
        "restore" if args.len() == 5 => {
            let manifest = Storage::validate_checkpoint(source, config.clone(), anchor)?;
            shieldd::validate_checkpoint_native(source, &manifest).await?;
            let storage = Storage::restore(source, Path::new(&args[3]), config, anchor)?;
            ensure!(
                shieldd_sdk_app::app::App::is_ready(storage.latest_snapshot()).await,
                "restored native commitments are inconsistent"
            );
            println!(
                "{}",
                serde_json::to_string(&storage.manifest().context("restored boundary missing")?)?
            );
        }
        "export" | "capacity" => {
            ensure!(
                args.len() == if args[1] == "export" { 5 } else { 4 },
                "invalid maintenance arguments"
            );
            let storage = Storage::open(source, config.clone())?;
            let manifest = storage
                .manifest()
                .context("database has no materialized boundary")?;
            ensure!(
                manifest.digest()? == anchor,
                "database differs from the authenticated SDK root"
            );
            storage.validate()?;
            ensure!(
                shieldd_sdk_app::app::App::is_ready(storage.latest_snapshot()).await,
                "native commitments are inconsistent"
            );
            if args[1] == "export" {
                let destination = Path::new(&args[3]);
                storage.checkpoint(destination, &manifest)?;
                Storage::validate_checkpoint(destination, config, anchor)?;
            } else {
                println!("{}", serde_json::to_string(&storage.capacity()?)?);
            }
        }
        "grow" if args.len() == 6 => {
            let id = match args[3].as_str() {
                "application" => ParticipantId::APPLICATION,
                name if name.starts_with("permanent-") => {
                    ParticipantId::permanent(name[10..].parse()?)?
                }
                name if name.starts_with("volume-") => {
                    ParticipantId::volume(shieldd_sdk_storage::Day(name[7..].parse()?))?
                }
                _ => anyhow::bail!("unknown participant"),
            };
            let manifest = Storage::grow_offline(source, config, id, args[4].parse()?, anchor)?;
            println!("{}", serde_json::to_string(&manifest)?);
        }
        _ => anyhow::bail!("unknown command or invalid arguments"),
    }
    Ok(())
}
