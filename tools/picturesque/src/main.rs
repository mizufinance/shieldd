use std::io::IsTerminal as _;

use clap::Parser;
use picturesque::Options;
use tracing_subscriber::{layer::SubscriberExt as _, util::SubscriberInitExt as _, EnvFilter};

fn setup_tracing(log_level: tracing::Level) -> anyhow::Result<()> {
    let fmt_layer = tracing_subscriber::fmt::layer()
        .with_ansi(std::io::stdout().is_terminal())
        .with_target(true);
    let filter_layer = EnvFilter::builder()
        .with_default_directive(log_level.into())
        .parse("")?;

    let registry = tracing_subscriber::registry()
        .with(filter_layer)
        .with(fmt_layer);
    registry.init();
    Ok(())
}
#[tokio::main]
async fn main() -> anyhow::Result<()> {
    let opts = Options::parse();
    setup_tracing(opts.log_level)?;
    opts.run().await?;
    Ok(())
}
