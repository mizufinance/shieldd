#![deny(clippy::unwrap_used)]

use std::{
    io::IsTerminal as _,
    net::{IpAddr, SocketAddr},
    path::PathBuf,
};

use anyhow::Context;
use clap::{Parser, Subcommand};
use cnidarium::Storage;
use execution_client::GrpcExecutionClient;
use shieldd_sdk_app::{APP_VERSION, SUBSTORE_PREFIXES};
use shieldd_sdk_proto::execution_client::v1::execution_client_server::ExecutionClientServer;
use tonic::transport::Server;
use tracing_subscriber::{prelude::*, EnvFilter};

mod execution_client;

#[derive(Debug, Parser)]
#[clap(
    name = "shieldd",
    about = "Minimal Shieldd execution-client server",
    version
)]
struct Opt {
    #[clap(subcommand)]
    command: Command,
}

#[derive(Debug, Subcommand)]
enum Command {
    /// Start the Shieldd execution-client gRPC server.
    Start {
        /// RocksDB path for Shieldd state.
        #[clap(long, env = "SHIELDD_DB")]
        db: PathBuf,

        /// Execution-client TCP host.
        #[clap(long, default_value = "127.0.0.1", env = "SHIELDD_HOST")]
        host: IpAddr,

        /// Execution-client TCP port.
        #[clap(long, default_value = "50551", env = "SHIELDD_PORT")]
        port: u16,
    },
}

#[tokio::main]
async fn main() -> anyhow::Result<()> {
    init_tracing()?;

    let Opt { command } = Opt::parse();

    match command {
        Command::Start { db, host, port } => start(db, SocketAddr::new(host, port)).await,
    }
}

async fn start(db: PathBuf, bind: SocketAddr) -> anyhow::Result<()> {
    let storage = Storage::load(db.clone(), SUBSTORE_PREFIXES.to_vec())
        .await
        .with_context(|| format!("failed to open Shieldd RocksDB at {}", db.display()))?;

    tracing::info!(
        app_version = APP_VERSION,
        db = %db.display(),
        %bind,
        "starting Shieldd execution-client server"
    );

    if storage.latest_version() == u64::MAX {
        tracing::info!("Shieldd app state is not initialized; waiting for InitGenesis");
    } else if shieldd_sdk_app::app::App::is_ready(storage.latest_snapshot()).await {
        tracing::info!("Shieldd app state is ready");
    } else {
        anyhow::bail!("Shieldd app state is not ready");
    }

    Server::builder()
        .add_service(ExecutionClientServer::new(GrpcExecutionClient::new(
            storage,
        )))
        .serve(bind)
        .await
        .map_err(|error| {
            anyhow::anyhow!("Shieldd execution-client server failed on {bind}: {error}")
        })
}

fn init_tracing() -> anyhow::Result<()> {
    let fmt_layer = tracing_subscriber::fmt::layer()
        .with_ansi(std::io::stdout().is_terminal())
        .with_target(true);
    let filter_layer = EnvFilter::try_from_default_env().or_else(|_| EnvFilter::try_new("info"))?;

    tracing_subscriber::registry()
        .with(filter_layer)
        .with(fmt_layer)
        .init();

    Ok(())
}
