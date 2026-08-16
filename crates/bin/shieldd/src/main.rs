#![deny(clippy::unwrap_used)]

use std::{
    io::IsTerminal as _,
    net::{IpAddr, SocketAddr},
    path::PathBuf,
};

use anyhow::Context;
use clap::{Parser, Subcommand};
use shieldd::{ExecutionService, GrpcExecutionClient};
use shieldd_sdk_app::APP_VERSION;
use shieldd_sdk_proto::execution_client::v1::execution_client_service_server::ExecutionClientServiceServer;
use tonic::transport::Server;
use tracing_subscriber::{prelude::*, EnvFilter};

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

        /// Directory containing immutable retired-generation witness packs.
        #[clap(long, env = "SHIELDD_GENERATION_PACKS")]
        generation_packs: Option<PathBuf>,

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
        Command::Start {
            db,
            generation_packs,
            host,
            port,
        } => start(db, generation_packs, SocketAddr::new(host, port)).await,
    }
}

async fn start(
    db: PathBuf,
    generation_packs: Option<PathBuf>,
    bind: SocketAddr,
) -> anyhow::Result<()> {
    let service = match generation_packs.as_ref() {
        Some(directory) => ExecutionService::open_with_generation_packs(&db, directory).await,
        None => ExecutionService::open(&db).await,
    }
    .with_context(|| {
        format!(
            "failed to open Shieldd execution service for {}",
            db.display()
        )
    })?;
    let grpc = GrpcExecutionClient::new(service);

    tracing::info!(
        app_version = APP_VERSION,
        db = %db.display(),
        %bind,
        "starting Shieldd execution-client server"
    );

    let server_result = Server::builder()
        .add_service(ExecutionClientServiceServer::new(grpc.clone()))
        .serve_with_shutdown(bind, shutdown_signal())
        .await
        .map_err(|error| {
            anyhow::anyhow!("Shieldd execution-client server failed on {bind}: {error:?}")
        });
    let close_result = grpc
        .close()
        .await
        .context("failed to close Shieldd execution service");

    match (server_result, close_result) {
        (Err(server_error), Err(close_error)) => {
            Err(server_error.context(format!("also failed during shutdown: {close_error:#}")))
        }
        (Err(server_error), Ok(())) => Err(server_error),
        (Ok(()), Err(close_error)) => Err(close_error),
        (Ok(()), Ok(())) => Ok(()),
    }
}

async fn shutdown_signal() {
    match tokio::signal::ctrl_c().await {
        Ok(()) => tracing::info!("received shutdown signal"),
        Err(error) => tracing::error!(?error, "failed to listen for shutdown signal"),
    }
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
