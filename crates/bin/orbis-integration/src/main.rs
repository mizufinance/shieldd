use std::{
    collections::BTreeMap,
    env,
    ffi::OsStr,
    fs,
    io::Write,
    net::TcpStream,
    path::{Path, PathBuf},
    process::{Command, Stdio},
    thread,
    time::Duration,
};

use anyhow::{anyhow, bail, Context, Result};
use clap::{Parser, Subcommand};
use command::{collect_args, command_output, format_captured_output, render_args, run_command};
use demo_auth::dkg_signer;
use demo_config::{
    compliance_dev_env, node_dial_host, process_env_or_default, sourcehub_client, OrbisEndpoints,
    DEFAULT_COMPLIANCE_DEV_AUTHORITY_SK_HEX, DEFAULT_COMPLIANCE_DEV_AUTHORITY_VK_HEX,
    DEFAULT_COMPLIANCE_DEV_REGISTRAR_SK_HEX, DEFAULT_COMPLIANCE_GRANT_VALID_UNTIL_UNIX,
    NODE1_DIAL_HOST, NODE2_DIAL_HOST, NODE3_DIAL_HOST, ORBIS_PERMISSION,
    ORBIS_POLICY_MARSHAL_TYPE_YAML, ORBIS_POLICY_YAML, ORBIS_RESOURCE, ORBIS_RING_POLICY_RESOURCE,
};
use demo_state::{
    missing_ring, now_string, read_json, write_json, AuditDemoState, AuditRecord, AuditSubject,
    DetectedRow, DetectedScanFile, IssuerState, LedgerRow, RingState, ScannerState, StatusDocument,
    UserState,
};
use orbis_common::blockchain::{orbis::WhitelistTarget, SourceHubClient};
use serde::Deserialize;
use shieldd_orbis_client::{NodeInfo, OrbisClient};
use shieldd_sdk_compliance::{
    decrypt_flagged_rows, export_ledger_rows_json, export_scan_json, import_orbis_audit_entries,
    record_address_alias, scanner_health_json, AuditScanExport, DetectionKey, OrbisAuditEntry,
    SqliteScannerStore,
};

mod command;
mod demo_auth;
mod demo_config;
mod demo_state;

fn compliance_key_scalar(label: &str) -> decaf377::Fr {
    let mut hash = 0xcbf29ce484222325u64;
    for byte in label.as_bytes() {
        hash ^= u64::from(*byte);
        hash = hash.wrapping_mul(0x100000001b3);
    }
    if hash == 0 {
        hash = 1;
    }
    decaf377::Fr::from(hash)
}

fn compliance_clue_public_key_hex(label: &str) -> String {
    let scalar = compliance_key_scalar(label);
    hex::encode((decaf377::Element::GENERATOR * scalar).vartime_compress().0)
}

fn compliance_user_public_key_hex(ring_pk_hex: &str, label: &str) -> Result<String> {
    let bytes = hex::decode(ring_pk_hex).context("invalid Orbis ring public key hex")?;
    let encoded: [u8; 32] = bytes
        .try_into()
        .map_err(|_| anyhow!("Orbis ring public key must be 32 bytes"))?;
    let ring_pk = decaf377::Encoding(encoded)
        .vartime_decompress()
        .map_err(|_| anyhow!("invalid Orbis ring public key encoding"))?;
    if ring_pk == decaf377::Element::default() {
        bail!("Orbis ring public key must not be the identity");
    }
    Ok(hex::encode(
        (ring_pk * compliance_key_scalar(label))
            .vartime_compress()
            .0,
    ))
}

fn compliance_detection_key_hex(label: &str) -> String {
    hex::encode(compliance_key_scalar(label).to_bytes())
}

fn add_audit_selection_args(
    command: &mut Command,
    authorization_id: Option<&str>,
    from_timestamp: Option<u64>,
    to_timestamp: Option<u64>,
    fields: &[String],
) {
    if let Some(id) = authorization_id {
        command.arg("--authorization-id").arg(id);
    }
    if let Some(from) = from_timestamp {
        command.arg("--from-timestamp").arg(from.to_string());
    }
    if let Some(to) = to_timestamp {
        command.arg("--to-timestamp").arg(to.to_string());
    }
    for field in fields {
        command.arg("--field").arg(field);
    }
}

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
    /// Run the full bring-up, seed, verify, and teardown flow.
    Run {
        /// Keep the Shieldd and Orbis stacks running if the flow fails.
        #[clap(long)]
        keep_on_fail: bool,
    },
    /// Seed an already running Shieldd + Orbis stack.
    Seed,
    /// Run the read-only verification phase against a seeded stack.
    Verify,
    /// Set up an Orbis ring and policy for an already running Orbis stack.
    SetupRing {
        /// Path to write ring/policy details as JSON.
        #[clap(long)]
        output_json: PathBuf,
    },
    /// Run bankD audit-demo setup/scanner/audit commands against an already running local stack.
    AuditDemo {
        #[clap(subcommand)]
        command: AuditDemoCommand,
    },
}

#[derive(Subcommand, Debug)]
enum AuditDemoCommand {
    /// Idempotently register regulated BRL and issuer demo subjects.
    Setup,
    /// Follow Shieldd blocks and continuously import regulated transfer detections.
    Scanner,
    /// Audit one issuer subject by name.
    AuditUser {
        /// Issuer registry subject: Alice, Bob, or Charlie.
        name: String,
        #[clap(long)]
        from_timestamp: Option<u64>,
        #[clap(long)]
        to_timestamp: Option<u64>,
        #[clap(long = "field", value_delimiter = ',')]
        fields: Vec<String>,
    },
    /// Audit one proof-bound authorization ID without knowing the user.
    AuditTransaction {
        authorization_id: String,
        #[clap(long = "field", value_delimiter = ',')]
        fields: Vec<String>,
    },
    /// Audit every transfer in an authorization timestamp range without knowing the user.
    AuditRange {
        from_timestamp: u64,
        to_timestamp: u64,
        #[clap(long = "field", value_delimiter = ',')]
        fields: Vec<String>,
    },
    /// Run the complete user-range, master-transaction, and master-granularity story.
    Scenario {
        name: String,
        authorization_id: String,
        from_timestamp: u64,
        to_timestamp: u64,
    },
}

#[derive(Debug)]
struct RepoPaths {
    root: PathBuf,
    tmp: PathBuf,
    env_file: PathBuf,
    ring_info_file: PathBuf,
    issuer_dk_file: PathBuf,
    detected_file: PathBuf,
    scanner_db_file: PathBuf,
    orbis_runtime_file: PathBuf,
    orbis_audit_bin: PathBuf,
    pcli_bin: PathBuf,
}

#[derive(Debug)]
struct DemoEnv {
    values: BTreeMap<String, String>,
}

#[tokio::main]
async fn main() -> Result<()> {
    let args = Args::parse();

    match args.command {
        CommandKind::Run { keep_on_fail } => {
            let repo = RepoPaths::discover()?;
            run_full_flow(&repo, keep_on_fail).await
        }
        CommandKind::Seed => {
            let repo = RepoPaths::discover()?;
            let endpoints = repo.orbis_endpoints()?;
            seed(&repo, &endpoints).await
        }
        CommandKind::Verify => {
            let repo = RepoPaths::discover()?;
            let endpoints = repo.orbis_endpoints()?;
            verify(&repo, &endpoints).await
        }
        CommandKind::SetupRing { output_json } => {
            let repo = RepoPaths::discover()?;
            let endpoints = repo.orbis_endpoints()?;
            setup_ring(&output_json, &endpoints).await
        }
        CommandKind::AuditDemo { command } => {
            let repo = RepoPaths::discover()?;
            let endpoints = repo.orbis_endpoints()?;
            let demo = AuditDemo::from_env(endpoints)?;
            match command {
                AuditDemoCommand::Setup => demo.setup().await,
                AuditDemoCommand::Scanner => demo.scanner(),
                AuditDemoCommand::AuditUser {
                    name,
                    from_timestamp,
                    to_timestamp,
                    fields,
                } => demo.audit_user(&name, from_timestamp, to_timestamp, &fields),
                AuditDemoCommand::AuditTransaction {
                    authorization_id,
                    fields,
                } => demo.audit_master(Some(&authorization_id), None, None, &fields, "transaction"),
                AuditDemoCommand::AuditRange {
                    from_timestamp,
                    to_timestamp,
                    fields,
                } => demo.audit_master(
                    None,
                    Some(from_timestamp),
                    Some(to_timestamp),
                    &fields,
                    "range",
                ),
                AuditDemoCommand::Scenario {
                    name,
                    authorization_id,
                    from_timestamp,
                    to_timestamp,
                } => demo.audit_scenario(&name, &authorization_id, from_timestamp, to_timestamp),
            }
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

    let sourcehub = sourcehub_client(endpoints).await?;
    let (node_keys, node_routes) = orbis_node_routes(&info1, &info2, &info3)?;
    let policy_id = OrbisClient::add_policy(
        &sourcehub,
        ORBIS_POLICY_YAML,
        ORBIS_POLICY_MARSHAL_TYPE_YAML,
        ORBIS_RESOURCE,
        ORBIS_PERMISSION,
    )
    .await?;
    OrbisClient::register_object(
        &sourcehub,
        &policy_id,
        ORBIS_RING_POLICY_RESOURCE,
        &policy_id,
    )
    .await?;
    authorize_orbis_nodes_for_policy(&sourcehub, &node_routes, &policy_id).await?;
    let dkg_signer = dkg_signer();
    let dkg = node1
        .start_dkg(2, &node_keys, &sourcehub, &policy_id, &dkg_signer)
        .await?;
    eprintln!(
        "orbis-integration: DKG session started for ring {}: {} ({})",
        dkg.ring_id, dkg.session_id, dkg.status
    );
    eprintln!("orbis-integration: DKG message: {}", dkg.message);

    let ring = wait_for_ring(&sourcehub, &dkg.ring_id).await?;
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

async fn run_full_flow(repo: &RepoPaths, keep_on_fail: bool) -> Result<()> {
    let mut started_shieldd = false;
    let mut started_orbis = false;
    let result = async {
        run_script_with_env(repo, "scripts/shieldd-up.sh", &[], &compliance_dev_env())?;
        started_shieldd = true;

        started_orbis = true;
        run_script_with_args(repo, "scripts/orbis-stack.sh", &["up"])?;

        let endpoints = repo.running_orbis_endpoints()?;
        seed(repo, &endpoints).await?;
        verify(repo, &endpoints).await?;
        Result::<()>::Ok(())
    }
    .await;

    if result.is_err() {
        let _ = capture_orbis_logs(repo);
        if keep_on_fail {
            eprintln!("orbis-integration: preserving Shieldd and Orbis stacks for debugging");
            return result;
        }
    }
    if started_orbis {
        let _ = run_script_with_args(repo, "scripts/orbis-stack.sh", &["down"]);
    }
    if started_shieldd {
        let _ = run_script(repo, "scripts/shieldd-down.sh");
    }

    result
}

async fn seed(repo: &RepoPaths, endpoints: &OrbisEndpoints) -> Result<()> {
    let env = load_required_env(
        &repo.env_file,
        "run `just orbis-integration-up` before `just orbis-integration-seed`",
    )?;
    let (node1_endpoint, node2_endpoint, node3_endpoint) = endpoints.node_endpoints();
    wait_for_tcp_endpoint(env.get("SHIELDD_NODE_PD_URL")?, 30, Duration::from_secs(1))?;
    wait_for_tcp_endpoint(&node1_endpoint, 60, Duration::from_secs(2))?;
    wait_for_tcp_endpoint(&node2_endpoint, 60, Duration::from_secs(2))?;
    wait_for_tcp_endpoint(&node3_endpoint, 60, Duration::from_secs(2))?;

    let node1 = OrbisClient::new(node1_endpoint)?;
    let node2 = OrbisClient::new(node2_endpoint)?;
    let node3 = OrbisClient::new(node3_endpoint)?;

    let info1 = wait_for_node_info(&node1, "node1").await?;
    let info2 = wait_for_node_info(&node2, "node2").await?;
    let info3 = wait_for_node_info(&node3, "node3").await?;

    let sourcehub = sourcehub_client(endpoints).await?;
    let (node_keys, node_routes) = orbis_node_routes(&info1, &info2, &info3)?;
    let policy_id = OrbisClient::add_policy(
        &sourcehub,
        ORBIS_POLICY_YAML,
        ORBIS_POLICY_MARSHAL_TYPE_YAML,
        ORBIS_RESOURCE,
        ORBIS_PERMISSION,
    )
    .await?;
    OrbisClient::register_object(
        &sourcehub,
        &policy_id,
        ORBIS_RING_POLICY_RESOURCE,
        &policy_id,
    )
    .await?;
    authorize_orbis_nodes_for_policy(&sourcehub, &node_routes, &policy_id).await?;
    let dkg_signer = dkg_signer();
    let dkg = node1
        .start_dkg(2, &node_keys, &sourcehub, &policy_id, &dkg_signer)
        .await?;
    eprintln!(
        "orbis-integration: DKG session started for ring {}: {} ({})",
        dkg.ring_id, dkg.session_id, dkg.status
    );
    eprintln!("orbis-integration: DKG message: {}", dkg.message);
    let ring = wait_for_ring(&sourcehub, &dkg.ring_id).await?;
    fs::write(
        &repo.ring_info_file,
        format!(
            "RING_PK={}\nRING_ID={}\nRING_PEER_IDS={},{},{}\nORBIS_POLICY_ID={}\nORBIS_RESOURCE={}\nORBIS_PERMISSION={}\n",
            ring.ring_pk_hex,
            ring.ring_id,
            info1.peer_id,
            info2.peer_id,
            info3.peer_id,
            policy_id,
            ORBIS_RESOURCE,
            ORBIS_PERMISSION
        ),
    )
    .with_context(|| format!("failed to write {}", repo.ring_info_file.display()))?;

    let dk_output = capture_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "generate-dk",
        ],
    )?;
    let regulated_dk = parse_key_value_line(&dk_output, "DK (hex): ")?;
    let regulated_dk_pub = parse_key_value_line(&dk_output, "DK_pub (hex): ")?;
    fs::write(
        &repo.issuer_dk_file,
        format!("REGULATED_DK={regulated_dk}\nREGULATED_DK_PUB={regulated_dk_pub}\n"),
    )
    .with_context(|| format!("failed to write {}", repo.issuer_dk_file.display()))?;

    let registrar_sk = demo_env_or_default(
        &env,
        "COMPLIANCE_DEV_REGISTRAR_SK_HEX",
        DEFAULT_COMPLIANCE_DEV_REGISTRAR_SK_HEX,
    );
    let authority_vk = demo_env_or_default(
        &env,
        "COMPLIANCE_DEV_AUTHORITY_VK_HEX",
        DEFAULT_COMPLIANCE_DEV_AUTHORITY_VK_HEX,
    );
    let authority_sk = demo_env_or_default(
        &env,
        "COMPLIANCE_DEV_AUTHORITY_SK_HEX",
        DEFAULT_COMPLIANCE_DEV_AUTHORITY_SK_HEX,
    );
    let grant_valid_until = demo_env_or_default(
        &env,
        "COMPLIANCE_GRANT_VALID_UNTIL_UNIX",
        DEFAULT_COMPLIANCE_GRANT_VALID_UNTIL_UNIX,
    );
    let asset_grant = capture_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "sign-asset-grant",
            "regulated_usd",
            "--regulated",
            "--dk-pub-hex",
            &regulated_dk_pub,
            "--threshold",
            "500000000000000000000",
            "--ring-pk-hex",
            &ring.ring_pk_hex,
            "--ring-id",
            &ring.ring_id,
            "--policy-id",
            &policy_id,
            "--resource",
            ORBIS_RESOURCE,
            "--permission",
            ORBIS_PERMISSION,
            "--registration-authority-vk-hex",
            &authority_vk,
            "--registrar-sk-hex",
            &registrar_sk,
            "--valid-until-unix",
            &grant_valid_until,
        ],
    )?;

    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "register-asset",
            "regulated_usd",
            "--regulated",
            "--dk-pub-hex",
            &regulated_dk_pub,
            "--threshold",
            "500000000000000000000",
            "--ring-pk-hex",
            &ring.ring_pk_hex,
            "--ring-id",
            &ring.ring_id,
            "--policy-id",
            &policy_id,
            "--resource",
            ORBIS_RESOURCE,
            "--permission",
            ORBIS_PERMISSION,
            "--registration-authority-vk-hex",
            &authority_vk,
            "--asset-registration-grant-hex",
            &asset_grant,
        ],
    )?;
    sync_wallets(repo, &env, &["ALICE_HOME", "BOB_HOME", "CHARLIE_HOME"])?;

    let alice_address_1 = capture_pcli(
        repo,
        &env,
        ["--home", env.get("ALICE_HOME")?, "view", "address", "1"],
    )?
    .trim()
    .to_string();
    let alice_user_public_key =
        compliance_user_public_key_hex(&ring.ring_pk_hex, "alice:regulated_usd:user")?;
    let alice_clue_public_key = compliance_clue_public_key_hex("alice:regulated_usd:clue");
    let alice_grant_0 = capture_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "sign-user-grant",
            "regulated_usd",
            "--address",
            env.get("ALICE_ADDRESS")?,
            "--user-public-key-hex",
            &alice_user_public_key,
            "--clue-public-key-hex",
            &alice_clue_public_key,
            "--policy-id",
            &policy_id,
            "--registration-authority-sk-hex",
            &authority_sk,
            "--valid-until-unix",
            &grant_valid_until,
        ],
    )?;
    let alice_grant_1 = capture_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "sign-user-grant",
            "regulated_usd",
            "--address",
            &alice_address_1,
            "--user-public-key-hex",
            &alice_user_public_key,
            "--clue-public-key-hex",
            &alice_clue_public_key,
            "--policy-id",
            &policy_id,
            "--registration-authority-sk-hex",
            &authority_sk,
            "--valid-until-unix",
            &grant_valid_until,
        ],
    )?;

    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "register-user",
            "regulated_usd",
            "--user-public-key-hex",
            &alice_user_public_key,
            "--clue-public-key-hex",
            &alice_clue_public_key,
            "--user-registration-grant-hex",
            &alice_grant_0,
        ],
    )?;
    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "transfer",
            "--to",
            &alice_address_1,
            "1000000ushieldd",
        ],
    )?;
    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "register-user",
            "regulated_usd",
            "--address-index",
            "1",
            "--user-public-key-hex",
            &alice_user_public_key,
            "--clue-public-key-hex",
            &alice_clue_public_key,
            "--user-registration-grant-hex",
            &alice_grant_1,
        ],
    )?;
    for who in ["BOB_HOME", "CHARLIE_HOME"] {
        let address_key = who.trim_end_matches("_HOME").to_string() + "_ADDRESS";
        let user_public_key = compliance_user_public_key_hex(
            &ring.ring_pk_hex,
            &format!("{who}:regulated_usd:user"),
        )?;
        let clue_public_key = compliance_clue_public_key_hex(&format!("{who}:regulated_usd:clue"));
        let grant = capture_pcli(
            repo,
            &env,
            [
                "--home",
                env.get(who)?,
                "tx",
                "compliance",
                "sign-user-grant",
                "regulated_usd",
                "--address",
                env.get(&address_key)?,
                "--user-public-key-hex",
                &user_public_key,
                "--clue-public-key-hex",
                &clue_public_key,
                "--policy-id",
                &policy_id,
                "--registration-authority-sk-hex",
                &authority_sk,
                "--valid-until-unix",
                &grant_valid_until,
            ],
        )?;
        run_pcli(
            repo,
            &env,
            [
                "--home",
                env.get(who)?,
                "tx",
                "compliance",
                "register-user",
                "regulated_usd",
                "--user-public-key-hex",
                &user_public_key,
                "--clue-public-key-hex",
                &clue_public_key,
                "--user-registration-grant-hex",
                &grant,
            ],
        )?;
    }
    sync_wallets(
        repo,
        &env,
        &[
            "ALICE_HOME",
            "BOB_HOME",
            "CHARLIE_HOME",
            "UNREGISTERED_HOME",
        ],
    )?;

    let alice_split_note = capture_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "view",
            "notes",
            "--asset",
            "regulated_usd",
            "--largest",
            "--commitment-only",
        ],
    )?
    .trim()
    .to_string();
    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "reshape",
            "one-to-many",
            "--note-commitment",
            &alice_split_note,
            "400regulated_usd",
            "300regulated_usd",
            "600regulated_usd",
            "100regulated_usd",
            "100regulated_usd",
            "100regulated_usd",
            "100regulated_usd",
            "998300regulated_usd",
        ],
    )?;
    sync_wallets(repo, &env, &["ALICE_HOME", "BOB_HOME", "CHARLIE_HOME"])?;

    run_transfer(
        repo,
        &env,
        "ALICE_HOME",
        "400regulated_usd",
        env.get("BOB_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "ALICE_HOME",
        "300regulated_usd",
        env.get("CHARLIE_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "BOB_HOME",
        "50regulated_usd",
        env.get("ALICE_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "CHARLIE_HOME",
        "40regulated_usd",
        env.get("ALICE_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "BOB_HOME",
        "100regulated_usd",
        env.get("CHARLIE_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "CHARLIE_HOME",
        "80regulated_usd",
        env.get("BOB_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "BOB_HOME",
        "60regulated_usd",
        env.get("ALICE_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "CHARLIE_HOME",
        "30regulated_usd",
        env.get("ALICE_ADDRESS")?,
    )?;
    run_transfer(
        repo,
        &env,
        "ALICE_HOME",
        "600regulated_usd",
        env.get("BOB_ADDRESS")?,
    )?;
    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("BOB_HOME")?,
            "tx",
            "reshape",
            "many-to-one",
            "regulated_usd",
            "--family",
            "2x1",
        ],
    )?;
    sync_wallets(repo, &env, &["ALICE_HOME", "BOB_HOME", "CHARLIE_HOME"])?;

    let unregistered = command_output(pcli_command(repo, &env).args([
        "--home",
        env.get("ALICE_HOME")?,
        "tx",
        "transfer",
        "--to",
        env.get("UNREGISTERED_ADDRESS")?,
        "10regulated_usd",
    ]))?;
    if unregistered.status.success() {
        bail!("transfer to unregistered user unexpectedly succeeded");
    }

    run_transfer(
        repo,
        &env,
        "ALICE_HOME",
        "1000test_usd",
        env.get("BOB_ADDRESS")?,
    )?;
    eprintln!("orbis-integration: seed phase completed");
    Ok(())
}

async fn verify(repo: &RepoPaths, endpoints: &OrbisEndpoints) -> Result<()> {
    let env = load_required_env(
        &repo.env_file,
        "run `just orbis-integration-up` before `just orbis-integration-verify`",
    )?;
    let ring_info = load_required_env(
        &repo.ring_info_file,
        "run `just orbis-integration-seed` before `just orbis-integration-verify`",
    )?;
    let issuer = load_required_env(
        &repo.issuer_dk_file,
        "run `just orbis-integration-seed` before `just orbis-integration-verify`",
    )?;
    let (node1_endpoint, node2_endpoint, node3_endpoint) = endpoints.node_endpoints();
    let node1 = OrbisClient::new(node1_endpoint)?;
    let node2 = OrbisClient::new(node2_endpoint)?;
    let node3 = OrbisClient::new(node3_endpoint)?;
    let current_peer_ids = format!(
        "{},{},{}",
        wait_for_node_info(&node1, "node1").await?.peer_id,
        wait_for_node_info(&node2, "node2").await?.peer_id,
        wait_for_node_info(&node3, "node3").await?.peer_id
    );
    if ring_info.get("RING_PEER_IDS")? != current_peer_ids {
        bail!("ring is stale: saved peer IDs do not match current Orbis nodes");
    }

    run_pcli(
        repo,
        &env,
        [
            "--home",
            env.get("ALICE_HOME")?,
            "tx",
            "compliance",
            "scan",
            "catch-up",
            "--dk-hex",
            issuer.get("REGULATED_DK")?,
            "--scan-asset-id",
            "regulated_usd",
            "--node",
            env.get("SHIELDD_NODE_PD_URL")?,
            "--db",
            repo.scanner_db_file.to_str().with_context(|| {
                format!(
                    "scanner_db_file path is not valid UTF-8: {:?}",
                    repo.scanner_db_file
                )
            })?,
        ],
    )?;

    let store = SqliteScannerStore::new(&repo.scanner_db_file)?;
    let dk = detection_key_from_hex(issuer.get("REGULATED_DK")?)?;
    let _ = decrypt_flagged_rows(&store, &dk)?;
    for (name, key) in [
        ("Alice", "ALICE_ADDRESS"),
        ("Bob", "BOB_ADDRESS"),
        ("Charlie", "CHARLIE_ADDRESS"),
    ] {
        record_address_alias(&store, env.get(key)?, name)?;
    }
    fs::write(
        &repo.detected_file,
        serde_json::to_vec_pretty(&export_scan_json(&store)?)?,
    )?;

    let scan: AuditScanExport = read_json(&repo.detected_file)?;
    let flagged = scan.detected.iter().filter(|tx| tx.is_flagged).count();
    eprintln!(
        "orbis-integration: detected {} transfer entries ({} flagged)",
        scan.detected.len(),
        flagged
    );

    for (user_name, address_key) in [("Alice", "ALICE_ADDRESS"), ("Bob", "BOB_ADDRESS")] {
        let audit_file = repo
            .tmp
            .join(format!("{}-audit.json", user_name.to_lowercase()));
        run_orbis_audit(
            repo,
            &env,
            &issuer,
            &repo.detected_file,
            &audit_file,
            user_name,
            env.get(address_key)?,
            endpoints,
        )?;
        update_scanner_db_from_audit(repo, &env, user_name, &audit_file)?;
    }

    let store = SqliteScannerStore::new(&repo.scanner_db_file)?;
    println!(
        "{}",
        serde_json::to_string_pretty(&export_ledger_rows_json(&store)?)?
    );
    eprintln!("orbis-integration: verify phase completed");
    Ok(())
}

fn run_orbis_audit(
    repo: &RepoPaths,
    env: &DemoEnv,
    issuer: &DemoEnv,
    input: &Path,
    output: &Path,
    user_name: &str,
    subject_address: &str,
    endpoints: &OrbisEndpoints,
) -> Result<()> {
    let clue_detection_key = compliance_detection_key_hex(&format!(
        "{}:regulated_usd:clue",
        user_name.to_ascii_lowercase()
    ));
    run_command(
        Command::new(&repo.orbis_audit_bin)
            .current_dir(&repo.root)
            .envs(endpoints.sourcehub_env())
            .arg("--input")
            .arg(input)
            .arg("--dk-hex")
            .arg(issuer.get("REGULATED_DK")?)
            .arg("--node")
            .arg(env.get("SHIELDD_NODE_PD_URL")?)
            .arg("--output")
            .arg(output)
            .arg("--object-cache")
            .arg(repo.tmp.join("orbis-audit-object-cache.json"))
            .arg("--authority")
            .arg("user")
            .arg("--clue-detection-key-hex")
            .arg(clue_detection_key)
            .arg("--subject-address")
            .arg(subject_address)
            .arg("--timings-json")
            .arg(
                repo.tmp
                    .join(format!("{}-timings.json", user_name.to_lowercase())),
            )
            .arg("--orbis-endpoint")
            .arg(endpoints.node1()),
    )
}

fn update_scanner_db_from_audit(
    repo: &RepoPaths,
    _env: &DemoEnv,
    user_name: &str,
    audit_file: &Path,
) -> Result<()> {
    let entries: Vec<OrbisAuditEntry> = read_json(audit_file)?;
    if entries.is_empty() {
        return Ok(());
    }
    let store = SqliteScannerStore::new(&repo.scanner_db_file)?;
    import_orbis_audit_entries(&store, &entries, Some(user_name))?;
    Ok(())
}

fn capture_orbis_logs(repo: &RepoPaths) -> Result<()> {
    let output = command_output(
        Command::new(repo.root.join("scripts/orbis-stack.sh"))
            .current_dir(&repo.root)
            .arg("logs"),
    )?;
    let mut logs = output.stdout;
    logs.extend_from_slice(&output.stderr);
    fs::write(repo.tmp.join("orbis-docker.log"), logs)
        .with_context(|| "failed to write tmp/orbis-docker.log".to_string())?;
    Ok(())
}

fn sync_wallets(repo: &RepoPaths, env: &DemoEnv, homes: &[&str]) -> Result<()> {
    for home in homes {
        run_pcli(repo, env, ["--home", env.get(home)?, "view", "sync"])?;
    }
    Ok(())
}

fn run_transfer(
    repo: &RepoPaths,
    env: &DemoEnv,
    home_key: &str,
    value: &str,
    to: &str,
) -> Result<()> {
    run_pcli(
        repo,
        env,
        [
            "--home",
            env.get(home_key)?,
            "tx",
            "transfer",
            "--to",
            to,
            value,
        ],
    )?;
    sync_wallets(repo, env, &["ALICE_HOME", "BOB_HOME", "CHARLIE_HOME"])?;
    Ok(())
}

fn run_pcli<I, S>(repo: &RepoPaths, env: &DemoEnv, args: I) -> Result<()>
where
    I: IntoIterator<Item = S>,
    S: AsRef<OsStr>,
{
    let args = collect_args(args);
    eprintln!("orbis-integration: running pcli {}", render_args(&args));
    run_command(pcli_command(repo, env).args(&args))
}

fn capture_pcli<I, S>(repo: &RepoPaths, env: &DemoEnv, args: I) -> Result<String>
where
    I: IntoIterator<Item = S>,
    S: AsRef<OsStr>,
{
    let args = collect_args(args);
    eprintln!("orbis-integration: running pcli {}", render_args(&args));
    let output = command_output(pcli_command(repo, env).args(&args))?;
    if !output.status.success() {
        bail!(
            "pcli command failed with status {}:\n{}",
            output.status,
            format_captured_output(&output)
        );
    }
    Ok(String::from_utf8_lossy(&output.stdout).trim().to_string())
}

fn pcli_command<'a>(repo: &'a RepoPaths, env: &'a DemoEnv) -> Command {
    let mut command = Command::new(&repo.pcli_bin);
    command.current_dir(&repo.root);
    for (key, value) in &env.values {
        command.env(key, value);
    }
    command
}

fn run_script(repo: &RepoPaths, script: &str) -> Result<()> {
    run_script_with_args(repo, script, &[])
}

fn run_script_with_args(repo: &RepoPaths, script: &str, args: &[&str]) -> Result<()> {
    run_script_with_env(repo, script, args, &[])
}

fn run_script_with_env(
    repo: &RepoPaths,
    script: &str,
    args: &[&str],
    envs: &[(&str, String)],
) -> Result<()> {
    let script_path = repo.root.join(script);
    eprintln!(
        "orbis-integration: running {} {}",
        script_path.display(),
        render_args(args)
    );
    let mut command = Command::new(script_path);
    command.current_dir(&repo.root);
    command.args(args);
    for (key, value) in envs {
        command.env(key, value);
    }
    run_command(&mut command)
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
    client: &SourceHubClient,
    routes: &[(String, String)],
    policy_id: &str,
) -> Result<()> {
    for (node_key, peer_id) in routes {
        wait_for_sourcehub_node_info(client, node_key).await?;
        whitelist_orbis_node_for_policy(client, node_key, peer_id, policy_id).await?;
    }
    Ok(())
}

async fn wait_for_sourcehub_node_info(client: &SourceHubClient, node_key: &str) -> Result<()> {
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
                last_error = Some(anyhow!("Orbis NodeInfo {node_key} not found on SourceHub"));
            }
            Err(error) => {
                last_error = Some(anyhow!("failed to read Orbis NodeInfo {node_key}: {error}"));
            }
        }
        tokio::time::sleep(Duration::from_secs(2)).await;
    }
    Err(last_error
        .unwrap_or_else(|| anyhow!("timed out waiting for Orbis NodeInfo {node_key} on SourceHub")))
    .with_context(|| format!("timed out waiting for Orbis NodeInfo {node_key} on SourceHub"))
}

/// A single controller-issued NodeInfo transaction. SourceHub split the former
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
    client: &SourceHubClient,
    node_key: &str,
    peer_id: &str,
    policy_id: &str,
) -> Result<()> {
    send_orbis_node_tx(client, node_key, NodeTx::UpdatePeerId { peer_id }).await?;
    send_orbis_node_tx(client, node_key, NodeTx::WhitelistPolicy { policy_id }).await
}

async fn send_orbis_node_tx(
    client: &SourceHubClient,
    node_key: &str,
    tx: NodeTx<'_>,
) -> Result<()> {
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
                if attempt < 30 && is_transient_sourcehub_tx_error(&result.log) {
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
                if attempt < 30 && is_transient_sourcehub_tx_error(&msg) {
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

fn is_transient_sourcehub_tx_error(message: &str) -> bool {
    let lower = message.to_ascii_lowercase();
    lower.contains("sequence mismatch")
        || lower.contains("account not found")
        || lower.contains("issuedidfromaccountaddr")
}

async fn wait_for_ring(
    client: &SourceHubClient,
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

fn parse_key_value_line(output: &str, prefix: &str) -> Result<String> {
    output
        .lines()
        .find_map(|line| line.trim().strip_prefix(prefix))
        .map(str::to_string)
        .ok_or_else(|| anyhow!("failed to find '{prefix}' in command output"))
}

fn demo_env_or_default(env: &DemoEnv, key: &str, default: &str) -> String {
    env.values
        .get(key)
        .cloned()
        .or_else(|| std::env::var(key).ok())
        .unwrap_or_else(|| default.to_string())
}

fn detection_key_from_hex(hex_str: &str) -> Result<DetectionKey> {
    let bytes = hex::decode(hex_str).context("invalid issuer DK hex")?;
    if bytes.len() != 32 {
        bail!("issuer DK must be exactly 32 bytes");
    }
    let mut arr = [0u8; 32];
    arr.copy_from_slice(&bytes);
    Ok(DetectionKey::new(decaf377::Fr::from_le_bytes_mod_order(
        &arr,
    )))
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

#[derive(Debug, Clone)]
struct AuditDemo {
    root: PathBuf,
    demo_dir: PathBuf,
    demo_dir_rel: String,
    status_file: PathBuf,
    state_file: PathBuf,
    scanner_db_rel: String,
    scanner_db_abs: PathBuf,
    scanner_health_file: PathBuf,
    asset: String,
    threshold: String,
    shieldd_grpc: String,
    orbis_endpoint: String,
    orbis_endpoints: OrbisEndpoints,
}

impl AuditDemo {
    const ALICE_PHRASE: &'static str = "wealth flavor believe regret funny network recall kiss grape useless pepper cram hint member few certain unveil rather brick bargain curious require crowd raise";
    const CHARLIE_PHRASE: &'static str = "decorate bright ozone fork gallery riot bus exhaust worth way bone indoor calm squirrel merry zero scheme cotton until shop any excess stage laundry";

    fn from_env(orbis_endpoints: OrbisEndpoints) -> Result<Self> {
        let root = env::current_dir().context("failed to resolve current directory")?;
        let demo_dir_rel =
            env::var("DEMO_DIR").unwrap_or_else(|_| ".localnet/audit-demo".to_string());
        let demo_dir = root.join(&demo_dir_rel);
        fs::create_dir_all(demo_dir.join("wallets"))
            .with_context(|| format!("failed to create {}", demo_dir.display()))?;
        let scanner_db_rel = format!("{demo_dir_rel}/scanner.db");
        Ok(Self {
            status_file: demo_dir.join("status.json"),
            state_file: demo_dir.join("state.json"),
            scanner_db_abs: demo_dir.join("scanner.db"),
            scanner_health_file: demo_dir.join("scanner-health.json"),
            root,
            demo_dir,
            demo_dir_rel,
            scanner_db_rel,
            asset: env::var("AUDIT_DEMO_ASSET")
                .unwrap_or_else(|_| "transfer/channel-0/ubrl".to_string()),
            threshold: env::var("AUDIT_DEMO_THRESHOLD").unwrap_or_else(|_| "500000000".to_string()),
            shieldd_grpc: env::var("SHIELDD_GRPC")
                .or_else(|_| env::var("SHIELDD_NODE_PD_URL"))
                .unwrap_or_else(|_| {
                    let port =
                        env::var("SHIELDD_PD_GRPC_PORT").unwrap_or_else(|_| "8080".to_string());
                    format!("http://127.0.0.1:{port}")
                }),
            orbis_endpoint: env::var("ORBIS_ENDPOINT")
                .unwrap_or_else(|_| orbis_endpoints.node1().to_string()),
            orbis_endpoints,
        })
    }

    async fn setup(&self) -> Result<()> {
        self.init_state_file()?;
        self.write_status("running", "setup", "Initializing audit setup")?;
        self.init_wallet("alice", Some(Self::ALICE_PHRASE))?;
        self.sync_wallet("alice")?;
        self.setup_asset().await?;
        self.register_subject("Alice", "alice", Some(Self::ALICE_PHRASE), false)?;
        self.register_subject("Bob", "bob", None, true)?;
        self.register_subject("Charlie", "charlie", Some(Self::CHARLIE_PHRASE), true)?;
        self.update_state(|state| {
            state.setup.initialized = true;
            state.setup.updated_at = Some(now_string());
        })?;
        self.refresh_outputs()?;
        self.write_status("complete", "setup", "Audit setup ready")?;
        Ok(())
    }

    fn scanner(&self) -> Result<()> {
        self.init_state_file()?;
        if !self.state()?.setup.initialized {
            self.write_health(false, "Audit setup is not ready", None)?;
            bail!("audit setup is not ready");
        }
        let dk = self.issuer_dk()?;
        self.write_health(true, "Scanner running", None)?;
        let refresh_demo = self.clone();
        let refresh_handle = thread::spawn(move || loop {
            let _ = refresh_demo.refresh_outputs();
            let last_height = refresh_demo
                .scanner_store()
                .ok()
                .and_then(|store| scanner_health_json(&store).ok())
                .and_then(|v| v.get("last_height").and_then(serde_json::Value::as_u64));
            let _ = refresh_demo.write_health(true, "Scanner running", last_height);
            thread::sleep(Duration::from_secs(2));
        });
        let _ = refresh_handle.thread().id();

        let status = self
            .pcli_command("alice")
            .args([
                "tx",
                "compliance",
                "scan",
                "run",
                "--node",
                &self.shieldd_grpc,
                "--dk-hex",
                &dk,
                "--scan-asset-id",
                &self.asset,
                "--db",
                &self.scanner_db_rel,
            ])
            .status()
            .context("failed to run pcli compliance scanner")?;
        self.write_health(false, "Scanner stopped", None)?;
        if status.success() {
            Ok(())
        } else {
            bail!("pcli compliance scanner failed with status {status}")
        }
    }

    fn audit_user(
        &self,
        input_name: &str,
        from_timestamp: Option<u64>,
        to_timestamp: Option<u64>,
        fields: &[String],
    ) -> Result<()> {
        if let (Some(from), Some(to)) = (from_timestamp, to_timestamp) {
            anyhow::ensure!(from <= to, "audit timestamp range starts after it ends");
        }
        self.init_state_file()?;
        let subject = self
            .subject(input_name)?
            .ok_or_else(|| anyhow!("unknown audit subject: {input_name}"))?;
        self.write_status(
            "running",
            "audit-user",
            &format!("Auditing {}", subject.name),
        )?;
        self.refresh_outputs()?;
        let detected_path = self.demo_dir.join("detected-txs.json");
        if !detected_path.exists() {
            write_json(&detected_path, &DetectedScanFile::empty())?;
        }
        let detected = self.read_json::<DetectedScanFile>(&detected_path)?.detected;
        let selected = detected
            .iter()
            .filter(|row| !row.is_flagged)
            .filter(|row| row.is_private_transfer())
            .filter(|row| row.matches_authorization_range(from_timestamp, to_timestamp))
            .cloned()
            .collect::<Vec<_>>();

        if selected.is_empty() {
            self.write_status(
                "complete",
                "audit-user",
                &format!("No new transfers to audit for {}", subject.name),
            )?;
            return Ok(());
        }

        let input = self
            .demo_dir
            .join(format!("{}-user-audit-input.json", subject.slug));
        self.write_scan_input(&input, selected)?;
        let output = self
            .demo_dir
            .join(format!("{}-user-audit.json", subject.slug));
        self.run_subject_audit(
            &subject,
            &input,
            &output,
            from_timestamp,
            to_timestamp,
            fields,
        )?;
        self.update_scanner_db_from_audit(&subject.name, &output)?;

        self.refresh_outputs()?;
        self.update_state(|state| {
            state.audits.push(AuditRecord {
                user_slug: subject.slug.clone(),
                user_name: subject.name.clone(),
                at: now_string(),
            });
            state.setup.updated_at = Some(now_string());
        })?;
        self.write_status(
            "complete",
            "audit-user",
            &format!("Audit complete for {}", subject.name),
        )?;
        Ok(())
    }

    fn audit_master(
        &self,
        authorization_id: Option<&str>,
        from_timestamp: Option<u64>,
        to_timestamp: Option<u64>,
        fields: &[String],
        label: &str,
    ) -> Result<()> {
        anyhow::ensure!(
            authorization_id.is_some() || from_timestamp.is_some() || to_timestamp.is_some(),
            "master audit requires an authorization id or timestamp bound"
        );
        if let (Some(from), Some(to)) = (from_timestamp, to_timestamp) {
            anyhow::ensure!(from <= to, "audit timestamp range starts after it ends");
        }
        if let Some(id) = authorization_id {
            id.parse::<shieldd_sdk_compliance::AuthorizationId>()?;
        }
        self.init_state_file()?;
        self.write_status("running", "audit-master", "Running master audit")?;
        self.refresh_outputs()?;
        let detected_path = self.demo_dir.join("detected-txs.json");
        let detected = self.read_json::<DetectedScanFile>(&detected_path)?.detected;
        let selected = detected
            .iter()
            .filter(|row| !row.is_flagged && row.is_private_transfer())
            .filter(|row| {
                authorization_id.is_none_or(|id| row.authorization_id.as_deref() == Some(id))
            })
            .filter(|row| row.matches_authorization_range(from_timestamp, to_timestamp))
            .cloned()
            .collect::<Vec<_>>();
        anyhow::ensure!(
            !selected.is_empty(),
            "no transfers match the master audit selector"
        );

        let input = self.demo_dir.join(format!("master-{label}-input.json"));
        let output = self.demo_dir.join(format!("master-{label}-audit.json"));
        self.write_scan_input(&input, selected)?;
        self.run_master_audit(
            &input,
            &output,
            authorization_id,
            from_timestamp,
            to_timestamp,
            fields,
            label,
        )?;
        self.write_status(
            "complete",
            "audit-master",
            &format!("Master audit complete: {}", output.display()),
        )
    }

    fn audit_scenario(
        &self,
        name: &str,
        authorization_id: &str,
        from_timestamp: u64,
        to_timestamp: u64,
    ) -> Result<()> {
        self.audit_user(name, Some(from_timestamp), Some(to_timestamp), &[])?;
        self.audit_master(Some(authorization_id), None, None, &[], "transaction-all")?;
        for field in ["sender", "amount", "receiver"] {
            self.audit_master(
                Some(authorization_id),
                None,
                None,
                &[field.to_owned()],
                &format!("transaction-{field}"),
            )?;
        }
        self.audit_master(
            None,
            Some(from_timestamp),
            Some(to_timestamp),
            &[],
            "incident-range",
        )
    }

    async fn setup_asset(&self) -> Result<()> {
        let state = self.state()?;
        if state.setup.asset_registered {
            let _ = self.scanner_store()?;
            return Ok(());
        }

        let ring_file = self.demo_dir.join("ring.json");
        setup_ring(&ring_file, &self.orbis_endpoints).await?;
        let ring = self.read_json::<RingState>(&ring_file)?;
        let dk_output = self.capture_pcli("alice", ["tx", "compliance", "generate-dk"])?;
        let dk_hex = parse_key_value_line(&dk_output, "DK (hex): ")?;
        let dk_pub_hex = parse_key_value_line(&dk_output, "DK_pub (hex): ")?;
        let registrar_sk = process_env_or_default(
            "COMPLIANCE_DEV_REGISTRAR_SK_HEX",
            DEFAULT_COMPLIANCE_DEV_REGISTRAR_SK_HEX,
        );
        let authority_vk = process_env_or_default(
            "COMPLIANCE_DEV_AUTHORITY_VK_HEX",
            DEFAULT_COMPLIANCE_DEV_AUTHORITY_VK_HEX,
        );
        let valid_until = process_env_or_default(
            "COMPLIANCE_GRANT_VALID_UNTIL_UNIX",
            DEFAULT_COMPLIANCE_GRANT_VALID_UNTIL_UNIX,
        );
        let asset_grant = self.capture_pcli(
            "alice",
            [
                "tx",
                "compliance",
                "sign-asset-grant",
                &self.asset,
                "--regulated",
                "--dk-pub-hex",
                &dk_pub_hex,
                "--threshold",
                &self.threshold,
                "--ring-pk-hex",
                &ring.ring_pk_hex,
                "--ring-id",
                &ring.ring_id,
                "--policy-id",
                &ring.policy_id,
                "--resource",
                &ring.resource,
                "--permission",
                &ring.permission,
                "--registration-authority-vk-hex",
                &authority_vk,
                "--registrar-sk-hex",
                &registrar_sk,
                "--valid-until-unix",
                &valid_until,
            ],
        )?;
        self.run_pcli(
            "alice",
            [
                "tx",
                "compliance",
                "register-asset",
                &self.asset,
                "--regulated",
                "--dk-pub-hex",
                &dk_pub_hex,
                "--threshold",
                &self.threshold,
                "--ring-pk-hex",
                &ring.ring_pk_hex,
                "--ring-id",
                &ring.ring_id,
                "--policy-id",
                &ring.policy_id,
                "--resource",
                &ring.resource,
                "--permission",
                &ring.permission,
                "--registration-authority-vk-hex",
                &authority_vk,
                "--asset-registration-grant-hex",
                &asset_grant,
            ],
        )?;
        // The registration transaction is confirmed before the next setup step,
        // but the immediately following user-registration transaction can still
        // hit an app-state race in the local stack. Give the chain one block and
        // refresh Alice's view before registering subjects.
        thread::sleep(Duration::from_secs(2));
        self.sync_wallet("alice")?;
        let _ = self.scanner_store()?;
        self.update_state(|state| {
            state.ring = Some(ring);
            state.issuer = Some(IssuerState { dk_hex, dk_pub_hex });
            state.setup.asset_registered = true;
            state.setup.updated_at = Some(now_string());
        })?;
        Ok(())
    }

    fn register_subject(
        &self,
        name: &str,
        slug: &str,
        phrase: Option<&str>,
        fund_fee: bool,
    ) -> Result<()> {
        if self.subject(slug)?.is_some() {
            return Ok(());
        }
        self.init_wallet(slug, phrase)?;
        self.sync_wallet(slug)?;
        if fund_fee {
            let address = self.address_for(slug, 0)?;
            self.run_pcli(
                "alice",
                ["tx", "transfer", "--to", &address, "50000ushieldd"],
            )?;
            self.sync_wallet(slug)?;
        }
        let address = self.address_for(slug, 0)?;
        let ring = self
            .state()?
            .ring
            .as_ref()
            .ok_or_else(missing_ring)?
            .clone();
        let policy_id = ring.policy_id.clone();
        let authority_sk = process_env_or_default(
            "COMPLIANCE_DEV_AUTHORITY_SK_HEX",
            DEFAULT_COMPLIANCE_DEV_AUTHORITY_SK_HEX,
        );
        let valid_until = process_env_or_default(
            "COMPLIANCE_GRANT_VALID_UNTIL_UNIX",
            DEFAULT_COMPLIANCE_GRANT_VALID_UNTIL_UNIX,
        );
        let user_public_key = compliance_user_public_key_hex(
            &ring.ring_pk_hex,
            &format!("audit-demo:{slug}:{}:user", self.asset),
        )?;
        let clue_public_key =
            compliance_clue_public_key_hex(&format!("audit-demo:{slug}:{}:clue", self.asset));
        let user_grant = self.capture_pcli(
            slug,
            [
                "tx",
                "compliance",
                "sign-user-grant",
                &self.asset,
                "--address",
                &address,
                "--user-public-key-hex",
                &user_public_key,
                "--clue-public-key-hex",
                &clue_public_key,
                "--policy-id",
                &policy_id,
                "--registration-authority-sk-hex",
                &authority_sk,
                "--valid-until-unix",
                &valid_until,
            ],
        )?;
        self.run_pcli(
            slug,
            [
                "tx",
                "compliance",
                "register-user",
                &self.asset,
                "--address-index",
                "0",
                "--user-public-key-hex",
                &user_public_key,
                "--clue-public-key-hex",
                &clue_public_key,
                "--user-registration-grant-hex",
                &user_grant,
            ],
        )?;
        let store = self.scanner_store()?;
        record_address_alias(&store, &address, name)?;
        let transparent_address = self.address_for_transparent(slug)?;
        record_address_alias(&store, &transparent_address, name)?;
        self.update_state(|state| {
            let user = UserState::new(name, slug, self.wallet_home_rel(slug), address);
            state.users.retain(|user| user.slug != slug);
            state.users.push(user);
            state.setup.updated_at = Some(now_string());
        })?;
        Ok(())
    }

    fn init_wallet(&self, slug: &str, phrase: Option<&str>) -> Result<()> {
        let home = self.wallet_home_abs(slug);
        fs::create_dir_all(&home)?;
        if home.join("config.toml").exists() {
            return Ok(());
        }
        let mut child = self
            .pcli_command(slug)
            .args(["init", "--grpc-url", &self.shieldd_grpc, "soft-kms"])
            .arg(if phrase.is_some() {
                "import-phrase"
            } else {
                "generate"
            })
            .stdin(Stdio::piped())
            .spawn()
            .context("failed to start pcli wallet init")?;
        if let Some(mut stdin) = child.stdin.take() {
            stdin.write_all(phrase.unwrap_or("").as_bytes())?;
            stdin.write_all(b"\n")?;
        }
        let status = child
            .wait()
            .context("failed to wait for pcli wallet init")?;
        if status.success() {
            Ok(())
        } else {
            bail!("pcli wallet init failed with status {status}")
        }
    }

    fn sync_wallet(&self, slug: &str) -> Result<()> {
        self.run_pcli(slug, ["view", "sync"])
    }

    fn address_for(&self, slug: &str, index: u64) -> Result<String> {
        let output = self.capture_pcli(slug, ["view", "address", &index.to_string()])?;
        Ok(output
            .lines()
            .last()
            .unwrap_or(output.trim())
            .trim()
            .to_string())
    }

    fn address_for_transparent(&self, slug: &str) -> Result<String> {
        let output = self.capture_pcli(slug, ["view", "address", "0", "--transparent"])?;
        Ok(output
            .lines()
            .last()
            .unwrap_or(output.trim())
            .trim()
            .to_string())
    }

    fn run_subject_audit(
        &self,
        subject: &AuditSubject,
        input: &Path,
        output: &Path,
        from_timestamp: Option<u64>,
        to_timestamp: Option<u64>,
        fields: &[String],
    ) -> Result<()> {
        let clue_detection_key = compliance_detection_key_hex(&format!(
            "audit-demo:{}:{}:clue",
            subject.slug, self.asset
        ));
        let mut command = Command::new("orbis-audit");
        command
            .current_dir(&self.root)
            .envs(self.orbis_endpoints.sourcehub_env())
            .arg("--input")
            .arg(input)
            .arg("--dk-hex")
            .arg(self.issuer_dk()?)
            .arg("--node")
            .arg(&self.shieldd_grpc)
            .arg("--output")
            .arg(output)
            .arg("--timings-json")
            .arg(
                self.demo_dir
                    .join(format!("{}-user-timings.json", subject.slug)),
            )
            .arg("--object-cache")
            .arg(self.demo_dir.join("orbis-object-cache.json"))
            .arg("--authority")
            .arg("user")
            .arg("--clue-detection-key-hex")
            .arg(clue_detection_key)
            .arg("--orbis-endpoint")
            .arg(&self.orbis_endpoint)
            .arg("--subject-address")
            .arg(&subject.address);
        add_audit_selection_args(&mut command, None, from_timestamp, to_timestamp, fields);
        self.run_orbis_locked(&mut command)
    }

    #[allow(clippy::too_many_arguments)]
    fn run_master_audit(
        &self,
        input: &Path,
        output: &Path,
        authorization_id: Option<&str>,
        from_timestamp: Option<u64>,
        to_timestamp: Option<u64>,
        fields: &[String],
        label: &str,
    ) -> Result<()> {
        let mut command = Command::new("orbis-audit");
        command
            .current_dir(&self.root)
            .envs(self.orbis_endpoints.sourcehub_env())
            .arg("--input")
            .arg(input)
            .arg("--dk-hex")
            .arg(self.issuer_dk()?)
            .arg("--node")
            .arg(&self.shieldd_grpc)
            .arg("--output")
            .arg(output)
            .arg("--timings-json")
            .arg(self.demo_dir.join(format!("master-{label}-timings.json")))
            .arg("--object-cache")
            .arg(self.demo_dir.join("orbis-object-cache.json"))
            .arg("--authority")
            .arg("master")
            .arg("--orbis-endpoint")
            .arg(&self.orbis_endpoint);
        add_audit_selection_args(
            &mut command,
            authorization_id,
            from_timestamp,
            to_timestamp,
            fields,
        );
        self.run_orbis_locked(&mut command)
    }

    fn run_orbis_locked(&self, command: &mut Command) -> Result<()> {
        let lock = self.demo_dir.join("orbis-sourcehub.lock");
        while fs::create_dir(&lock).is_err() {
            thread::sleep(Duration::from_secs(1));
        }
        let result = run_command(command);
        let _ = fs::remove_dir(&lock);
        result
    }

    fn update_scanner_db_from_audit(&self, name: &str, audit_file: &Path) -> Result<()> {
        let entries = self
            .read_json_array(audit_file)
            .unwrap_or_default()
            .into_iter()
            .map(serde_json::from_value::<OrbisAuditEntry>)
            .collect::<std::result::Result<Vec<_>, _>>()
            .context("failed to parse orbis-audit output")?;
        if entries.is_empty() {
            return Ok(());
        }
        let store = self.scanner_store()?;
        import_orbis_audit_entries(&store, &entries, Some(name))?;
        Ok(())
    }

    fn refresh_outputs(&self) -> Result<()> {
        self.init_state_file()?;
        if !self.scanner_health_file.exists() {
            self.write_health(false, "Scanner not started", None)?;
        }
        let detected = self.demo_dir.join("detected-txs.json");
        let ledger_path = self.demo_dir.join("ledger.json");
        let store = self.scanner_store()?;
        if let Ok(dk_hex) = self.issuer_dk() {
            let dk = detection_key_from_hex(&dk_hex)?;
            let _ = decrypt_flagged_rows(&store, &dk)?;
        }
        fs::write(
            &detected,
            serde_json::to_vec_pretty(&export_scan_json(&store)?)?,
        )?;
        fs::write(
            &ledger_path,
            serde_json::to_vec_pretty(&export_ledger_rows_json(&store)?)?,
        )?;

        let detected_json = self.read_json::<DetectedScanFile>(&detected)?;
        let ledger_rows = self
            .read_json_array::<LedgerRow>(&ledger_path)
            .unwrap_or_default();
        let scanner = self.read_json::<ScannerState>(&self.scanner_health_file)?;
        self.update_state(|state| {
            let detected_rows = detected_json.detected;
            let flagged = detected_rows.iter().filter(|row| row.is_flagged).count();
            let audited = ledger_rows
                .iter()
                .filter(|row| !row.is_flagged && row.amount.is_some())
                .count();
            state.scan.detected_count = detected_rows.len();
            state.scan.flagged_count = flagged;
            state.scan.audited_count = audited;
            state.scan.scan_time = detected_json.scan_info.get("scan_time").cloned();
            state.scan.detected = detected_rows;
            state.scanner = scanner;
            state.ledger_rows = ledger_rows;
            state.setup.updated_at = Some(now_string());
        })
    }

    fn write_scan_input(&self, path: &Path, refs: Vec<DetectedRow>) -> Result<()> {
        write_json(
            path,
            &DetectedScanFile {
                scan_info: serde_json::json!({}),
                detected: refs,
            },
        )
    }

    fn write_status(&self, state: &str, step: &str, message: &str) -> Result<()> {
        write_json(
            &self.status_file,
            &StatusDocument::new(state, step, message),
        )
    }

    fn write_health(&self, running: bool, message: &str, last_height: Option<u64>) -> Result<()> {
        write_json(
            &self.scanner_health_file,
            &ScannerState {
                running,
                message: Some(message.to_string()),
                last_height,
                updated_at: Some(now_string()),
            },
        )
    }

    fn init_state_file(&self) -> Result<()> {
        if self.state_file.exists() {
            return Ok(());
        }
        write_json(
            &self.state_file,
            &AuditDemoState::new(
                self.shieldd_grpc.clone(),
                self.asset.clone(),
                self.threshold.clone(),
            ),
        )
    }

    fn state(&self) -> Result<AuditDemoState> {
        self.read_json(&self.state_file)
    }

    fn update_state<F>(&self, mutate: F) -> Result<()>
    where
        F: FnOnce(&mut AuditDemoState),
    {
        let mut state = self.state()?;
        mutate(&mut state);
        write_json(&self.state_file, &state)
    }

    fn issuer_dk(&self) -> Result<String> {
        self.state()?
            .issuer
            .map(|issuer| issuer.dk_hex)
            .ok_or_else(|| anyhow!("issuer DK is missing; run audit-demo setup first"))
    }

    fn scanner_store(&self) -> Result<SqliteScannerStore> {
        SqliteScannerStore::new(&self.scanner_db_abs).with_context(|| {
            format!(
                "failed to open audit-demo scanner database {}",
                self.scanner_db_abs.display()
            )
        })
    }

    fn subject(&self, name_or_slug: &str) -> Result<Option<AuditSubject>> {
        Ok(self.state()?.subject(name_or_slug))
    }

    fn wallet_home_rel(&self, slug: &str) -> String {
        format!("{}/wallets/{slug}", self.demo_dir_rel)
    }

    fn wallet_home_abs(&self, slug: &str) -> PathBuf {
        self.root.join(self.wallet_home_rel(slug))
    }

    fn pcli_command(&self, slug: &str) -> Command {
        let mut command = Command::new("pcli");
        command
            .current_dir(&self.root)
            .env("HOME", "/home/shieldd")
            .env("SHIELDD_PCLI_HOME", self.wallet_home_abs(slug));
        command
    }

    fn run_pcli<I, S>(&self, slug: &str, args: I) -> Result<()>
    where
        I: IntoIterator<Item = S>,
        S: AsRef<OsStr>,
    {
        let args = collect_args(args);
        eprintln!("orbis-integration audit-demo: pcli {}", render_args(&args));
        run_command(self.pcli_command(slug).args(args))
    }

    fn capture_pcli<I, S>(&self, slug: &str, args: I) -> Result<String>
    where
        I: IntoIterator<Item = S>,
        S: AsRef<OsStr>,
    {
        let args = collect_args(args);
        eprintln!("orbis-integration audit-demo: pcli {}", render_args(&args));
        let output = command_output(self.pcli_command(slug).args(args))?;
        if !output.status.success() {
            bail!(
                "pcli command failed with status {}:\n{}",
                output.status,
                format_captured_output(&output)
            );
        }
        Ok(String::from_utf8_lossy(&output.stdout).trim().to_string())
    }

    fn read_json<T: for<'de> Deserialize<'de>>(&self, path: impl AsRef<Path>) -> Result<T> {
        read_json(path.as_ref())
    }

    fn read_json_array<T: for<'de> Deserialize<'de>>(
        &self,
        path: impl AsRef<Path>,
    ) -> Result<Vec<T>> {
        read_json(path.as_ref())
    }
}

fn load_required_env(path: &Path, hint: &str) -> Result<DemoEnv> {
    if !path.exists() {
        bail!("missing {}: {hint}", path.display());
    }
    DemoEnv::load(path)
}

impl RepoPaths {
    fn discover() -> Result<Self> {
        let root = PathBuf::from(env!("CARGO_MANIFEST_DIR"))
            .join("../../..")
            .canonicalize()
            .context("failed to locate repo root")?;
        let tmp = env::var("COMPLIANCE_TMP")
            .map(PathBuf::from)
            .unwrap_or_else(|_| root.join("tmp"));
        fs::create_dir_all(&tmp).with_context(|| format!("failed to create {}", tmp.display()))?;

        Ok(Self {
            env_file: tmp.join("compliance-demo.env"),
            ring_info_file: tmp.join("ring-info.env"),
            issuer_dk_file: tmp.join("issuer-dk.env"),
            detected_file: tmp.join("detected_txs.json"),
            scanner_db_file: tmp.join("scanner.db"),
            orbis_runtime_file: tmp.join("orbis-runtime.json"),
            orbis_audit_bin: root.join("target/release/orbis-audit"),
            pcli_bin: root.join("target/release/pcli"),
            root,
            tmp,
        })
    }

    fn orbis_endpoints(&self) -> Result<OrbisEndpoints> {
        OrbisEndpoints::load_or_env(&self.orbis_runtime_file)
    }

    fn running_orbis_endpoints(&self) -> Result<OrbisEndpoints> {
        OrbisEndpoints::load(&self.orbis_runtime_file)
    }
}

impl DemoEnv {
    fn load(path: &Path) -> Result<Self> {
        let raw = fs::read_to_string(path)
            .with_context(|| format!("failed to read {}", path.display()))?;
        let mut values = BTreeMap::new();
        for line in raw.lines() {
            let trimmed = line.trim();
            if trimmed.is_empty() || trimmed.starts_with('#') {
                continue;
            }
            let normalized = trimmed.strip_prefix("export ").unwrap_or(trimmed);
            let (key, value) = normalized
                .split_once('=')
                .ok_or_else(|| anyhow!("invalid env line in {}: {}", path.display(), trimmed))?;
            let value = value.trim().trim_matches('"').to_string();
            values.insert(key.to_string(), value);
        }
        Ok(Self { values })
    }

    fn get(&self, key: &str) -> Result<&str> {
        self.values
            .get(key)
            .map(String::as_str)
            .ok_or_else(|| anyhow!("missing {key} in environment"))
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn docker_peer_id_rewrites_host_only() {
        let info = NodeInfo {
            public_address: "sourcehub1abc".to_string(),
            node_key: "node-key".to_string(),
            peer_id: "peerid".to_string(),
            p2p_address: "peerid@127.0.0.1:4001".to_string(),
        };

        let peer = docker_peer_id(&info, "node1").expect("peer id should rewrite");
        assert_eq!(peer, "peerid@node1:4001");
    }
}
