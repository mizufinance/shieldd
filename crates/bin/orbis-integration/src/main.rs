use std::{
    env, fs,
    net::TcpStream,
    path::{Path, PathBuf},
    thread,
    time::Duration,
};

use anyhow::{anyhow, bail, Context, Result};
use clap::{Parser, Subcommand};
use demo_auth::dkg_signer;
use demo_config::{
    node_dial_host, vera_client, OrbisEndpoints, NODE1_DIAL_HOST, NODE2_DIAL_HOST, NODE3_DIAL_HOST,
    ORBIS_PERMISSION, ORBIS_POLICY_MARSHAL_TYPE_YAML, ORBIS_POLICY_YAML, ORBIS_RESOURCE,
    ORBIS_RING_POLICY_RESOURCE,
};
use demo_state::RingState;
use orbis_common::blockchain::{orbis::WhitelistTarget, VeraClient};
use shieldd_orbis_client::{NodeInfo, OrbisClient};

mod demo_auth;
mod demo_config;
mod demo_state;

#[derive(Parser, Debug)]
#[clap(
    name = "orbis-integration",
    about = "Typed Shieldd <-> Orbis integration flow"
)]
struct Args {
    #[clap(subcommand)]
    command: CommandKind,
}

#[derive(Subcommand, Debug)]
enum CommandKind {
    /// Set up an Orbis ring and policy for an already running Orbis stack.
    SetupRing {
        /// Path to write ring/policy details as JSON.
        #[clap(long)]
        output_json: PathBuf,
    },
}

#[derive(Debug)]
struct RepoPaths {
    orbis_runtime_file: PathBuf,
}

#[tokio::main]
async fn main() -> Result<()> {
    let args = Args::parse();

    match args.command {
        CommandKind::SetupRing { output_json } => {
            let repo = RepoPaths::discover()?;
            let endpoints = repo.orbis_endpoints()?;
            setup_ring(&output_json, &endpoints).await
        }
    }
}

async fn setup_ring(output_json: &Path, endpoints: &OrbisEndpoints) -> Result<()> {
    let (node1_endpoint, node2_endpoint, node3_endpoint) = endpoints.node_endpoints();
    for endpoint in [&node1_endpoint, &node2_endpoint, &node3_endpoint] {
        wait_for_tcp_endpoint(endpoint, 60, Duration::from_secs(2))?;
    }

    let node1 = OrbisClient::new(node1_endpoint)?;
    let node2 = OrbisClient::new(node2_endpoint)?;
    let node3 = OrbisClient::new(node3_endpoint)?;

    let info1 = wait_for_node_info(&node1, "node1").await?;
    let info2 = wait_for_node_info(&node2, "node2").await?;
    let info3 = wait_for_node_info(&node3, "node3").await?;

    let vera = vera_client(endpoints).await?;
    let (node_keys, node_routes) = orbis_node_routes(&info1, &info2, &info3)?;
    let policy_id = OrbisClient::add_policy(
        &vera,
        ORBIS_POLICY_YAML,
        ORBIS_POLICY_MARSHAL_TYPE_YAML,
        ORBIS_RESOURCE,
        ORBIS_PERMISSION,
    )
    .await?;
    OrbisClient::register_object(&vera, &policy_id, ORBIS_RING_POLICY_RESOURCE, &policy_id).await?;
    authorize_orbis_nodes_for_policy(&vera, &node_routes, &policy_id).await?;
    let dkg_signer = dkg_signer();
    let dkg = node1
        .start_dkg(2, &node_keys, &vera, &policy_id, &dkg_signer)
        .await?;
    eprintln!(
        "orbis-integration: DKG session started for ring {}: {} ({})",
        dkg.ring_id, dkg.session_id, dkg.status
    );
    eprintln!("orbis-integration: DKG message: {}", dkg.message);

    let ring = wait_for_ring(&vera, &dkg.ring_id).await?;
    let output = RingState {
        ring_pk_hex: ring.ring_pk_hex,
        ring_id: ring.ring_id,
        policy_id,
        resource: ORBIS_RESOURCE.to_string(),
        permission: ORBIS_PERMISSION.to_string(),
    };

    if let Some(parent) = output_json.parent() {
        fs::create_dir_all(parent)
            .with_context(|| format!("failed to create {}", parent.display()))?;
    }
    fs::write(output_json, serde_json::to_string_pretty(&output)?)
        .with_context(|| format!("failed to write {}", output_json.display()))?;
    println!("{}", output_json.display());
    Ok(())
}

fn wait_for_tcp(addr: &str, attempts: usize, interval: Duration) -> Result<()> {
    for _ in 0..attempts {
        if TcpStream::connect(addr).is_ok() {
            return Ok(());
        }
        thread::sleep(interval);
    }
    bail!("timed out waiting for TCP service at {addr}");
}

fn wait_for_tcp_endpoint(endpoint: &str, attempts: usize, interval: Duration) -> Result<()> {
    let without_scheme = endpoint
        .strip_prefix("http://")
        .or_else(|| endpoint.strip_prefix("https://"))
        .unwrap_or(endpoint);
    let addr = without_scheme
        .split('/')
        .next()
        .filter(|addr| !addr.is_empty())
        .ok_or_else(|| anyhow!("invalid endpoint: {endpoint}"))?;
    wait_for_tcp(addr, attempts, interval)
}

async fn wait_for_node_info(client: &OrbisClient, label: &str) -> Result<NodeInfo> {
    let mut last_error = None;
    for _ in 0..60 {
        match client.query_node_info().await {
            Ok(info) => return Ok(info),
            Err(error) => {
                last_error = Some(error);
                thread::sleep(Duration::from_secs(2));
            }
        }
    }
    Err(last_error.unwrap_or_else(|| anyhow!("timed out waiting for {label} info endpoint")))
        .with_context(|| format!("timed out waiting for {label} info endpoint"))
}

fn orbis_node_routes(
    info1: &NodeInfo,
    info2: &NodeInfo,
    info3: &NodeInfo,
) -> Result<(Vec<String>, Vec<(String, String)>)> {
    let routes = vec![
        (
            info1.node_key.clone(),
            docker_peer_id(
                info1,
                &node_dial_host("ORBIS_NODE1_DIAL_HOST", NODE1_DIAL_HOST),
            )?,
        ),
        (
            info2.node_key.clone(),
            docker_peer_id(
                info2,
                &node_dial_host("ORBIS_NODE2_DIAL_HOST", NODE2_DIAL_HOST),
            )?,
        ),
        (
            info3.node_key.clone(),
            docker_peer_id(
                info3,
                &node_dial_host("ORBIS_NODE3_DIAL_HOST", NODE3_DIAL_HOST),
            )?,
        ),
    ];
    let node_keys = routes
        .iter()
        .map(|(node_key, _)| node_key.clone())
        .collect();
    Ok((node_keys, routes))
}

async fn authorize_orbis_nodes_for_policy(
    client: &VeraClient,
    routes: &[(String, String)],
    policy_id: &str,
) -> Result<()> {
    for (node_key, peer_id) in routes {
        wait_for_vera_node_info(client, node_key).await?;
        whitelist_orbis_node_for_policy(client, node_key, peer_id, policy_id).await?;
    }
    Ok(())
}

async fn wait_for_vera_node_info(client: &VeraClient, node_key: &str) -> Result<()> {
    let mut last_error = None;
    // 180 * 2s = 6 min. On-chain NodeInfo registration lags node startup by the
    // full funder round-trip (wait for keys -> wait for first block -> fund ->
    // node observes its funded account -> registers). The old self-funding image
    // registered immediately, so 2 min was enough; the prebuilt-image + funder
    // topology needs a larger budget or this races and flakes.
    for _ in 0..180 {
        match client.orbis_read_node_info(node_key).await {
            Ok(Some(_)) => return Ok(()),
            Ok(None) => {
                last_error = Some(anyhow!("Orbis NodeInfo {node_key} not found on Vera"));
            }
            Err(error) => {
                last_error = Some(anyhow!("failed to read Orbis NodeInfo {node_key}: {error}"));
            }
        }
        tokio::time::sleep(Duration::from_secs(2)).await;
    }
    Err(last_error
        .unwrap_or_else(|| anyhow!("timed out waiting for Orbis NodeInfo {node_key} on Vera")))
    .with_context(|| format!("timed out waiting for Orbis NodeInfo {node_key} on Vera"))
}

/// A single controller-issued NodeInfo transaction. Vera split the former
/// `MsgUpdateNodeInfo` into per-field messages, so refreshing a node's
/// docker-routed peer id and whitelisting its policy are now distinct txs.
enum NodeTx<'a> {
    UpdatePeerId { peer_id: &'a str },
    WhitelistPolicy { policy_id: &'a str },
}

/// Each Orbis node self-registers its NodeInfo on spinup. Here the controller
/// (test account) rewrites the peer id to the docker-routed value and whitelists
/// the freshly created ACP policy onto the node.
async fn whitelist_orbis_node_for_policy(
    client: &VeraClient,
    node_key: &str,
    peer_id: &str,
    policy_id: &str,
) -> Result<()> {
    send_orbis_node_tx(client, node_key, NodeTx::UpdatePeerId { peer_id }).await?;
    send_orbis_node_tx(client, node_key, NodeTx::WhitelistPolicy { policy_id }).await
}

async fn send_orbis_node_tx(client: &VeraClient, node_key: &str, tx: NodeTx<'_>) -> Result<()> {
    let mut attempt = 0u32;
    loop {
        let (label, outcome) = match &tx {
            NodeTx::UpdatePeerId { peer_id } => (
                "update peer id",
                client.orbis_update_node_peer_id(node_key, peer_id).await,
            ),
            NodeTx::WhitelistPolicy { policy_id } => (
                "whitelist policy",
                client
                    .orbis_add_node_to_whitelist(
                        node_key,
                        WhitelistTarget::PolicyId(policy_id.to_string()),
                    )
                    .await,
            ),
        };
        match outcome {
            Ok(result) if result.code == 0 => return Ok(()),
            Ok(result) => {
                if attempt < 30 && is_transient_vera_tx_error(&result.log) {
                    attempt += 1;
                    let _ = client.resync_nonce().await;
                    tokio::time::sleep(Duration::from_secs(1)).await;
                    continue;
                }
                bail!(
                    "Orbis NodeInfo {label} tx failed for {node_key}: code={} log={}",
                    result.code,
                    result.log
                )
            }
            Err(error) => {
                let msg = error.to_string();
                if attempt < 30 && is_transient_vera_tx_error(&msg) {
                    attempt += 1;
                    let _ = client.resync_nonce().await;
                    tokio::time::sleep(Duration::from_secs(1)).await;
                    continue;
                }
                return Err(anyhow!(
                    "failed to {label} on Orbis NodeInfo {node_key}: {error}"
                ));
            }
        }
    }
}

fn is_transient_vera_tx_error(message: &str) -> bool {
    let lower = message.to_ascii_lowercase();
    lower.contains("sequence mismatch")
        || lower.contains("account not found")
        || lower.contains("issuedidfromaccountaddr")
}

async fn wait_for_ring(
    client: &VeraClient,
    ring_id: &str,
) -> Result<shieldd_orbis_client::RingInfo> {
    let mut last_error = None;
    for _ in 0..60 {
        match OrbisClient::get_ring(client, ring_id).await {
            Ok(ring) => return Ok(ring),
            Err(error) => {
                last_error = Some(error);
                thread::sleep(Duration::from_secs(2));
            }
        }
    }
    Err(last_error.unwrap_or_else(|| anyhow!("timed out waiting for Orbis ring {ring_id}")))
        .with_context(|| format!("timed out waiting for Orbis ring {ring_id}"))
}

fn docker_peer_id(info: &NodeInfo, dial_host: &str) -> Result<String> {
    let (peer_id, socket_addr) = info
        .p2p_address
        .split_once('@')
        .ok_or_else(|| anyhow!("unexpected p2p address format: {}", info.p2p_address))?;
    let (_, port) = socket_addr
        .rsplit_once(':')
        .ok_or_else(|| anyhow!("missing port in p2p address: {}", info.p2p_address))?;
    Ok(format!("{peer_id}@{dial_host}:{port}"))
}

impl RepoPaths {
    fn discover() -> Result<Self> {
        let root = env::var_os("BANKD_REPO_ROOT")
            .map(PathBuf::from)
            .or_else(|| env::current_dir().ok().and_then(find_repo_root))
            .or_else(|| {
                PathBuf::from(env!("CARGO_MANIFEST_DIR"))
                    .join("../../..")
                    .canonicalize()
                    .ok()
            })
            .context("failed to locate repo root")?;
        let tmp = env::var("COMPLIANCE_TMP")
            .map(PathBuf::from)
            .unwrap_or_else(|_| root.join("tmp"));
        fs::create_dir_all(&tmp).with_context(|| format!("failed to create {}", tmp.display()))?;

        Ok(Self {
            orbis_runtime_file: tmp.join("orbis-runtime.json"),
        })
    }

    fn orbis_endpoints(&self) -> Result<OrbisEndpoints> {
        OrbisEndpoints::load_or_env(&self.orbis_runtime_file)
    }
}

fn find_repo_root(start: PathBuf) -> Option<PathBuf> {
    let ancestors = start.ancestors().collect::<Vec<_>>();
    ancestors
        .iter()
        .find(|candidate| {
            candidate
                .join("deployments/orbis/docker-compose.yml")
                .is_file()
        })
        .or_else(|| {
            ancestors
                .iter()
                .find(|candidate| candidate.join("infra/docker-compose.yml").is_file())
        })
        .copied()
        .map(Path::to_path_buf)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn docker_peer_id_rewrites_host_only() {
        let info = NodeInfo {
            public_address: "vera1abc".to_string(),
            node_key: "node-key".to_string(),
            peer_id: "peerid".to_string(),
            p2p_address: "peerid@127.0.0.1:4001".to_string(),
        };

        let peer = docker_peer_id(&info, "node1").expect("peer id should rewrite");
        assert_eq!(peer, "peerid@node1:4001");
    }

    #[test]
    fn repo_discovery_prefers_shieldd_markers_and_falls_back_to_host_checkout() {
        let directory = tempfile::tempdir().unwrap();
        let host = directory.path().join("host");
        let shieldd = host.join("shieldd");
        let nested = shieldd.join("crates/tool");
        std::fs::create_dir_all(&nested).unwrap();
        std::fs::create_dir_all(host.join("infra")).unwrap();
        std::fs::create_dir_all(shieldd.join("deployments/orbis")).unwrap();
        std::fs::write(host.join("infra/docker-compose.yml"), "").unwrap();
        let marker = shieldd.join("deployments/orbis/docker-compose.yml");
        std::fs::write(&marker, "").unwrap();
        assert_eq!(find_repo_root(nested.clone()), Some(shieldd));
        std::fs::remove_file(marker).unwrap();
        assert_eq!(find_repo_root(nested), Some(host));
    }
}
