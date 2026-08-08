use std::collections::{HashMap, HashSet};
use std::env;
use std::fs::{self, File};
use std::io::{BufReader, Write};
use std::path::PathBuf;
use std::time::Instant;

use anyhow::{anyhow, Context, Result};
use clap::Parser;
use decaf377::{Element, Fq, Fr};
use did_key::{generate, Ed25519KeyPair as DidEd25519KeyPair, Fingerprint};
use extract::{extract_transfer_data, TransferExtraction};
use match_rows::{entry, AddressData, TransferDisclosure};
use orbis_authn::JwtSigner;
use orbis_common::blockchain::{ChainConfig, SourceHubClient, TxSigner, TEST_ACCOUNT_HEX_KEY};
use serde::{Deserialize, Serialize};
use sha2::{Digest, Sha256};
use shieldd_orbis_client::OrbisClient;
use shieldd_sdk_asset::asset;
use shieldd_sdk_compliance::{
    decrypt_orbis_reencrypted_seed, decrypt_tier_bytes, AuditAuthority, AuditDetectedRef,
    AuditScanExport, AuditSelection, ComplianceLeaf, DisclosureField, OrbisAuditEntry,
    OrbisEncryptedSeedUploadPackage, TransferComplianceCiphertext, TransferOrbisUploadBundle,
    TransferRole,
};
use shieldd_sdk_keys::Address;
use shieldd_sdk_num::Amount;
use tonic::transport::Channel;
use url::Url;

const ORBIS_READER_RELATION: &str = "reader";
const ORBIS_DEMO_READER_DID_PK: &str = "test_jwt";

mod extract;
mod match_rows;

#[derive(Parser, Debug)]
#[clap(
    name = "orbis-audit",
    about = "Compliance audit via Orbis PRE for transfer ciphertexts"
)]
struct Args {
    #[clap(long)]
    input: PathBuf,

    #[clap(long)]
    dk_hex: String,

    #[clap(long, env = "SHIELDD_NODE_PD_URL")]
    node: Url,

    #[clap(long, default_value = "/tmp/alice-audit.json")]
    output: PathBuf,

    #[clap(long, default_value = "user")]
    authority: String,

    #[clap(long = "field", value_delimiter = ',')]
    fields: Vec<String>,

    #[clap(long)]
    authorization_id: Option<String>,

    #[clap(long)]
    from_timestamp: Option<u64>,

    #[clap(long)]
    to_timestamp: Option<u64>,

    #[clap(long = "subject-address")]
    subject_addresses: Vec<String>,

    #[clap(long)]
    orbis_endpoint: String,

    #[clap(long)]
    timings_json: Option<PathBuf>,

    #[clap(long)]
    object_cache: Option<PathBuf>,

    #[clap(long)]
    prepare_only: bool,
}

fn sourcehub_chain_config() -> ChainConfig {
    ChainConfig::builder()
        .chain_id(env::var("ORBIS_SOURCEHUB_CHAIN_ID").ok())
        .rpc_url(sourcehub_url(
            "ORBIS_SOURCEHUB_RPC",
            "ORBIS_SOURCEHUB_RPC_PORT",
        ))
        .rest_url(sourcehub_url(
            "ORBIS_SOURCEHUB_REST",
            "ORBIS_SOURCEHUB_REST_PORT",
        ))
        .grpc_url(sourcehub_url(
            "ORBIS_SOURCEHUB_GRPC",
            "ORBIS_SOURCEHUB_GRPC_PORT",
        ))
        .denom(env::var("ORBIS_SOURCEHUB_DENOM").ok())
        .build()
}

fn sourcehub_url(url_key: &str, port_key: &str) -> Option<String> {
    env::var(url_key).ok().or_else(|| {
        env::var(port_key)
            .ok()
            .map(|port| format!("http://127.0.0.1:{port}"))
    })
}

async fn sourcehub_client() -> Result<SourceHubClient> {
    let config = sourcehub_chain_config();
    let signer = TxSigner::from_hex_key(TEST_ACCOUNT_HEX_KEY, config.clone())
        .map_err(|e| anyhow!("failed to create demo SourceHub signer: {}", e))?;
    SourceHubClient::with_signer(config, signer)
        .await
        .map_err(|e| anyhow!("failed to create signed SourceHub client: {}", e))
}

fn demo_jwt_signer() -> JwtSigner {
    let key_pair = generate::<DidEd25519KeyPair>(Some(&demo_did_seed(ORBIS_DEMO_READER_DID_PK)));
    JwtSigner::from_key_pair(key_pair)
}

fn demo_reader_did_uri() -> String {
    let key_pair = generate::<DidEd25519KeyPair>(Some(&demo_did_seed(ORBIS_DEMO_READER_DID_PK)));
    format!("did:key:{}", key_pair.fingerprint())
}

fn demo_did_seed(s: &str) -> [u8; 32] {
    Sha256::digest(s.as_bytes()).into()
}

#[derive(Clone)]
struct PackageObjectContext {
    object_id: String,
    package: OrbisEncryptedSeedUploadPackage,
    cache_key: String,
    from_cache: bool,
}

#[derive(Clone, Debug, Default, Serialize, Deserialize)]
struct ObjectCache {
    objects: HashMap<String, CachedObject>,
}

#[derive(Clone, Debug, Serialize, Deserialize)]
struct CachedObject {
    object_id: String,
}

#[derive(Clone)]
struct AuditContext<'a> {
    cli: &'a OrbisClient,
    sourcehub: Option<&'a SourceHubClient>,
    jwt_signer: Option<&'a JwtSigner>,
    reader_did_uri: Option<&'a str>,
    dk: &'a Fr,
    dk_pub: &'a Element,
    fields: &'a HashSet<DisclosureField>,
}

#[derive(Clone, Debug)]
struct SubjectInput {
    address: Address,
    transmission_key_hex: String,
}

#[derive(Clone, Debug)]
struct SubjectData {
    asset_id: String,
    transmission_key_hex: String,
    user_public_key_bytes: [u8; 32],
}

#[derive(Clone, Debug, Default, Serialize)]
struct AuditTimings {
    authority: AuditAuthority,
    fields: Vec<DisclosureField>,
    candidate_refs: u64,
    skipped_flagged: u64,
    skipped_selector: u64,
    no_ciphertext: u64,
    transaction_fetch_ms: u128,
    ciphertext_extraction_ms: u128,
    package_store_ms: u128,
    object_registration_ms: u128,
    relationship_setup_ms: u128,
    start_pre_ms: u128,
    seed_decrypt_ms: u128,
    amount_decrypt_ms: u128,
    address_decrypt_ms: u128,
    issuer_db_update_ms: u128,
    pre_calls: u64,
    total_pre_ms: u128,
    avg_pre_ms: u128,
    p95_pre_ms: u128,
    total_ms: u128,
    decrypted: u64,
    object_cache_hits: u64,
    object_cache_misses: u64,
    object_cache_stale: u64,
    subject_mismatch: u64,
    discovery_examined: u64,
    discovery_candidates: u64,
    #[serde(skip)]
    pre_call_samples_ms: Vec<u128>,
}

#[tokio::main]
async fn main() -> Result<()> {
    let args = Args::parse();
    let authority = match args.authority.as_str() {
        "user" => AuditAuthority::User,
        "master" => AuditAuthority::Master,
        other => anyhow::bail!("--authority must be 'user' or 'master', got '{other}'"),
    };
    let fields = parse_fields(&args.fields)?;
    let selection = AuditSelection {
        authorization_id: args
            .authorization_id
            .as_deref()
            .map(str::parse)
            .transpose()?,
        from_timestamp: args.from_timestamp,
        to_timestamp: args.to_timestamp,
    };
    selection.validate()?;
    anyhow::ensure!(
        authority != AuditAuthority::Master || selection.is_bounded(),
        "master audits require --authorization-id or a timestamp bound"
    );

    let dk = parse_fr(&args.dk_hex, "DK")?;
    let dk_pub = Element::GENERATOR * dk;
    let subject_inputs = parse_subjects(&args, authority)?;
    let discovery_addresses = subject_inputs
        .iter()
        .map(|subject| subject.address.clone())
        .collect::<Vec<_>>();

    let cli = OrbisClient::new(args.orbis_endpoint.clone())?;
    let sourcehub = sourcehub_client().await?;
    let jwt_signer = demo_jwt_signer();
    let reader_did_uri = demo_reader_did_uri();
    let file = File::open(&args.input).context("failed to open input file")?;
    let reader = BufReader::new(file);
    let scan: AuditScanExport =
        serde_json::from_reader(reader).context("failed to parse scan JSON")?;
    eprintln!(
        "orbis-audit: Processing {} detected transactions",
        scan.detected.len()
    );

    let channel = connect_to_node(&args.node).await?;
    let chain_discovery = if authority == AuditAuthority::User {
        let height_range = scan
            .detected
            .iter()
            .fold(None::<(u64, u64)>, |range, tx_ref| {
                Some(match range {
                    None => (tx_ref.height, tx_ref.height),
                    Some((start, end)) => (start.min(tx_ref.height), end.max(tx_ref.height)),
                })
            });
        match height_range {
            Some((start_height, end_height)) => Some(
                fetch_user_transaction_candidates(
                    channel.clone(),
                    start_height,
                    end_height,
                    &discovery_addresses,
                )
                .await?,
            ),
            None => None,
        }
    } else {
        None
    };
    let subjects = if authority == AuditAuthority::User {
        resolve_subject_public_keys(channel.clone(), &subject_inputs, &scan).await?
    } else {
        Vec::new()
    };
    if authority == AuditAuthority::User {
        eprintln!(
            "orbis-audit: targets={}...",
            subject_inputs
                .iter()
                .map(|subject| &subject.transmission_key_hex[..16])
                .collect::<Vec<_>>()
                .join(",")
        );
    }
    let total_started = Instant::now();
    let mut object_cache = load_object_cache(args.object_cache.as_ref())?;
    let mut timings = AuditTimings {
        authority,
        fields: [
            DisclosureField::Sender,
            DisclosureField::Amount,
            DisclosureField::Receiver,
        ]
        .into_iter()
        .filter(|field| fields.contains(field))
        .collect(),
        ..Default::default()
    };
    if let Some(chain_discovery) = &chain_discovery {
        timings.discovery_examined = chain_discovery.examined;
        timings.discovery_candidates = chain_discovery.transaction_ids.len() as u64;
    }
    let mut results = Vec::new();
    let mut attempted = 0u64;
    let mut decrypted = 0u64;
    let mut no_ciphertext = 0u64;
    let ctx = AuditContext {
        cli: &cli,
        sourcehub: Some(&sourcehub),
        jwt_signer: Some(&jwt_signer),
        reader_did_uri: Some(&reader_did_uri),
        dk: &dk,
        dk_pub: &dk_pub,
        fields: &fields,
    };

    for tx_ref in &scan.detected {
        if tx_ref.is_flagged {
            timings.skipped_flagged += 1;
            continue;
        }
        if !selection.matches(tx_ref) {
            timings.skipped_selector += 1;
            continue;
        }
        if authority == AuditAuthority::User {
            if let Some(chain_discovery) = &chain_discovery {
                if chain_discovery.examined == 0 {
                    if !matches_discovery_tag(tx_ref, &discovery_addresses)? {
                        continue;
                    }
                } else if !chain_discovery
                    .transaction_ids
                    .contains(&(tx_ref.height, tx_ref.tx_hash.to_ascii_lowercase()))
                {
                    continue;
                }
            } else if !matches_discovery_tag(tx_ref, &discovery_addresses)? {
                continue;
            }
        }
        let tx_subjects = subjects
            .iter()
            .filter(|subject| subject.asset_id == tx_ref.asset_id)
            .collect::<Vec<_>>();
        let candidate_count = if authority == AuditAuthority::Master {
            1
        } else {
            tx_subjects.len() as u64
        };
        attempted += candidate_count;
        timings.candidate_refs += candidate_count;
        if candidate_count == 0 {
            timings.subject_mismatch += 1;
            continue;
        }

        let started = Instant::now();
        let transactions = fetch_transactions(channel.clone(), tx_ref.height).await?;
        timings.transaction_fetch_ms += started.elapsed().as_millis();

        for tx in &transactions {
            let Some(body) = tx.body.as_ref() else {
                continue;
            };
            let action_index = tx_ref.action_index as usize;
            if action_index >= body.actions.len() {
                continue;
            }

            let action = &body.actions[action_index];
            let started = Instant::now();
            let (ct, bundle) = match extract_transfer_data(action, tx_ref.output_index as usize) {
                TransferExtraction::Found(extracted) => (extracted.ciphertext, extracted.bundle),
                TransferExtraction::Skipped(reason) => {
                    timings.ciphertext_extraction_ms += started.elapsed().as_millis();
                    no_ciphertext += 1;
                    timings.no_ciphertext += 1;
                    if reason.is_malformed() {
                        eprintln!("orbis-audit: malformed transfer data: {reason:?}");
                    }
                    continue;
                }
            };
            timings.ciphertext_extraction_ms += started.elapsed().as_millis();
            bundle.validate()?;
            if Some(bundle.authorization_id()?) != tx_ref.authorization_id
                || Some(bundle.authorization_timestamp()?) != tx_ref.authorization_timestamp
            {
                continue;
            }

            if authority == AuditAuthority::Master {
                if args.prepare_only {
                    prepare_master_transfer(&bundle, &ctx, &mut timings, &mut object_cache).await?;
                } else {
                    results.push(
                        audit_master_transfer(
                            tx_ref,
                            &ct,
                            &bundle,
                            &ctx,
                            &mut timings,
                            &mut object_cache,
                        )
                        .await?,
                    );
                    decrypted += 1;
                }
            } else {
                for subject in &tx_subjects {
                    if args.prepare_only {
                        prepare_user_transfer(
                            &bundle,
                            subject,
                            &ctx,
                            &mut timings,
                            &mut object_cache,
                        )
                        .await?;
                    } else if let Some(result) = audit_user_transfer(
                        tx_ref,
                        &ct,
                        &bundle,
                        subject,
                        &ctx,
                        &mut timings,
                        &mut object_cache,
                    )
                    .await?
                    {
                        results.push(result);
                        decrypted += 1;
                    }
                }
            }
        }
    }

    let json = serde_json::to_string_pretty(&results)?;
    let mut out_file = File::create(&args.output)?;
    out_file.write_all(json.as_bytes())?;

    if authority == AuditAuthority::User {
        let candidate_rate = if timings.discovery_examined == 0 {
            0.0
        } else {
            100.0 * timings.discovery_candidates as f64 / timings.discovery_examined as f64
        };
        eprintln!(
            "orbis-audit: Discovery tags selected {}/{} transactions ({candidate_rate:.3}%).",
            timings.discovery_candidates, timings.discovery_examined
        );
    }
    eprintln!(
        "orbis-audit: Decrypted {}/{} selected transfers (authority={}).",
        decrypted, attempted, args.authority
    );
    if no_ciphertext > 0 {
        eprintln!(
            "orbis-audit: {} actions had no compliance ciphertext.",
            no_ciphertext
        );
    }
    timings.decrypted = decrypted;
    timings.total_ms = total_started.elapsed().as_millis();
    timings.pre_calls = timings.pre_call_samples_ms.len() as u64;
    timings.total_pre_ms = timings.pre_call_samples_ms.iter().sum();
    timings.avg_pre_ms = if timings.pre_calls == 0 {
        0
    } else {
        timings.total_pre_ms / timings.pre_calls as u128
    };
    timings.p95_pre_ms = percentile(&timings.pre_call_samples_ms, 95);
    if let Some(path) = &args.timings_json {
        let json = serde_json::to_string_pretty(&timings)?;
        let mut out_file = File::create(path)?;
        out_file.write_all(json.as_bytes())?;
    }
    save_object_cache(args.object_cache.as_ref(), &object_cache)?;
    eprintln!(
        "orbis-audit: PRE calls={} total_pre_ms={} avg_pre_ms={} p95_pre_ms={} object_cache_hits={} object_cache_misses={} object_cache_stale={}",
        timings.pre_calls,
        timings.total_pre_ms,
        timings.avg_pre_ms,
        timings.p95_pre_ms,
        timings.object_cache_hits,
        timings.object_cache_misses,
        timings.object_cache_stale
    );
    println!("Results saved to: {}", args.output.display());

    Ok(())
}

fn percentile(samples: &[u128], percentile: usize) -> u128 {
    if samples.is_empty() {
        return 0;
    }
    let mut values = samples.to_vec();
    values.sort_unstable();
    let index = ((values.len() - 1) * percentile) / 100;
    values[index]
}

fn parse_subjects(args: &Args, authority: AuditAuthority) -> Result<Vec<SubjectInput>> {
    if authority == AuditAuthority::Master {
        anyhow::ensure!(
            args.subject_addresses.is_empty(),
            "master audits do not accept --subject-address"
        );
        return Ok(Vec::new());
    }
    if args.subject_addresses.is_empty() {
        anyhow::bail!("user audits require at least one --subject-address");
    }

    let mut seen = HashSet::new();
    let mut subjects = Vec::new();
    for subject_address in &args.subject_addresses {
        let address: Address = subject_address
            .parse()
            .with_context(|| format!("failed to parse subject address {subject_address}"))?;
        let transmission_key_hex = hex::encode(address.transmission_key().0);
        if seen.insert(transmission_key_hex.clone()) {
            subjects.push(SubjectInput {
                address,
                transmission_key_hex,
            });
        }
    }
    Ok(subjects)
}

fn parse_fields(values: &[String]) -> Result<HashSet<DisclosureField>> {
    let values = if values.is_empty() {
        vec!["sender", "amount", "receiver"]
    } else {
        values.iter().map(String::as_str).collect()
    };
    values
        .into_iter()
        .map(|value| match value {
            "sender" => Ok(DisclosureField::Sender),
            "amount" => Ok(DisclosureField::Amount),
            "receiver" => Ok(DisclosureField::Receiver),
            other => anyhow::bail!("--field must be sender, amount, or receiver; got '{other}'"),
        })
        .collect()
}

fn matches_discovery_tag(tx_ref: &AuditDetectedRef, addresses: &[Address]) -> Result<bool> {
    let tags = tx_ref
        .discovery_tags
        .ok_or_else(|| anyhow!("private transfer is missing discovery tags"))?;
    Ok(addresses
        .iter()
        .any(|address| tags.tags.examine(address).any()))
}

#[derive(Clone, Debug, Default)]
struct ChainDiscoveryCandidates {
    examined: u64,
    transaction_ids: HashSet<(u64, String)>,
}

async fn fetch_user_transaction_candidates(
    channel: Channel,
    start_height: u64,
    end_height: u64,
    addresses: &[Address],
) -> Result<ChainDiscoveryCandidates> {
    use shieldd_sdk_proto::core::component::compact_block::v1::{
        query_service_client::QueryServiceClient as CompactBlockQueryServiceClient,
        DiscoveryBlockRangeRequest,
    };
    use shieldd_sdk_shielded_pool::discovery;
    use shieldd_sdk_txhash::TransactionId;

    const PAGE_BLOCKS: u64 = 10_000;

    let mut result = ChainDiscoveryCandidates::default();
    let mut page_start = start_height;
    while page_start <= end_height {
        let page_end = page_start.saturating_add(PAGE_BLOCKS - 1).min(end_height);
        let mut client = CompactBlockQueryServiceClient::new(channel.clone());
        let mut stream = client
            .discovery_block_range(DiscoveryBlockRangeRequest {
                start_height: page_start,
                end_height: page_end,
            })
            .await
            .context("failed to fetch transaction discovery blocks")?
            .into_inner();

        while let Some(response) = stream
            .message()
            .await
            .context("failed while streaming transaction discovery blocks")?
        {
            let block = response
                .discovery_block
                .ok_or_else(|| anyhow!("discovery block response is empty"))?;
            for transaction in block.transaction_discoveries {
                result.examined += 1;
                let sender: discovery::Tag = transaction
                    .sender
                    .ok_or_else(|| anyhow!("transaction discovery missing sender tag"))?
                    .try_into()?;
                let receiver: discovery::Tag = transaction
                    .receiver
                    .ok_or_else(|| anyhow!("transaction discovery missing receiver tag"))?
                    .try_into()?;
                let selected = addresses.iter().any(|address| {
                    discovery::Tag::for_address(address, sender.precision) == sender
                        || discovery::Tag::for_address(address, receiver.precision) == receiver
                });
                if !selected {
                    continue;
                }
                let transaction_id: TransactionId = transaction
                    .transaction_id
                    .ok_or_else(|| anyhow!("transaction discovery missing transaction ID"))?
                    .try_into()?;
                result
                    .transaction_ids
                    .insert((block.height, transaction_id.to_string()));
            }
        }

        let Some(next) = page_end.checked_add(1) else {
            break;
        };
        page_start = next;
    }

    if result.examined == 0 {
        eprintln!(
            "orbis-audit: No chain transaction-discovery records were available; using the scan export tags for compatibility."
        );
    }
    Ok(result)
}

async fn resolve_subject_public_keys(
    channel: Channel,
    subject_inputs: &[SubjectInput],
    scan: &AuditScanExport,
) -> Result<Vec<SubjectData>> {
    use shieldd_sdk_proto::core::component::compliance::v1::{
        query_service_client::QueryServiceClient as ComplianceQueryServiceClient,
        ComplianceUserLeafRequest,
    };

    const LOOKUP_CONCURRENCY: usize = 16;

    let mut asset_ids = scan
        .detected
        .iter()
        .map(|tx_ref| tx_ref.asset_id.clone())
        .collect::<Vec<_>>();
    asset_ids.sort();
    asset_ids.dedup();

    async fn collect_lookup(
        lookups: &mut tokio::task::JoinSet<Result<Option<SubjectData>>>,
        subjects: &mut Vec<SubjectData>,
    ) -> Result<()> {
        let result = lookups
            .join_next()
            .await
            .ok_or_else(|| anyhow!("subject lookup set unexpectedly empty"))?
            .context("subject compliance leaf lookup task failed")??;
        if let Some(subject) = result {
            subjects.push(subject);
        }
        Ok(())
    }

    let mut lookups = tokio::task::JoinSet::new();
    let mut subjects = Vec::new();
    for subject in subject_inputs {
        for asset_id_text in &asset_ids {
            let channel = channel.clone();
            let address = subject.address.clone();
            let transmission_key_hex = subject.transmission_key_hex.clone();
            let asset_id_text = asset_id_text.clone();
            lookups.spawn(async move {
                let asset_id: asset::Id = asset_id_text.parse().with_context(|| {
                    format!("failed to parse detected asset_id {asset_id_text}")
                })?;
                let mut client = ComplianceQueryServiceClient::new(channel);
                let response = client
                    .compliance_user_leaf(tonic::Request::new(ComplianceUserLeafRequest {
                        address: Some(address.into()),
                        asset_id: Some(asset_id.into()),
                    }))
                    .await
                    .with_context(|| {
                        format!(
                            "failed to fetch compliance leaf for subject {} and asset {}",
                            transmission_key_hex, asset_id_text
                        )
                    })?
                    .into_inner();

                if !response.is_registered {
                    return Ok(None);
                }

                let leaf_proto = response
                    .leaf
                    .ok_or_else(|| anyhow!("registered compliance leaf response missing leaf"))?;
                let leaf = ComplianceLeaf::try_from(leaf_proto).with_context(|| {
                    format!(
                        "invalid compliance leaf for subject {} and asset {}",
                        transmission_key_hex, asset_id_text
                    )
                })?;
                Ok(Some(SubjectData {
                    asset_id: asset_id_text,
                    transmission_key_hex,
                    user_public_key_bytes: leaf.user_public_key.vartime_compress().0,
                }))
            });

            if lookups.len() >= LOOKUP_CONCURRENCY {
                collect_lookup(&mut lookups, &mut subjects).await?;
            }
        }
    }
    while !lookups.is_empty() {
        collect_lookup(&mut lookups, &mut subjects).await?;
    }

    if subjects.is_empty() {
        anyhow::bail!("no subject has a registered compliance key for any detected asset");
    }

    Ok(subjects)
}

async fn audit_user_transfer(
    tx_ref: &AuditDetectedRef,
    ct: &TransferComplianceCiphertext,
    bundle: &TransferOrbisUploadBundle,
    subject: &SubjectData,
    ctx: &AuditContext<'_>,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<Option<OrbisAuditEntry>> {
    let role = if bundle.output_core.subject_user_public_key_bytes()
        == subject.user_public_key_bytes
    {
        TransferRole::Receiver
    } else if bundle.sender_core.subject_user_public_key_bytes() == subject.user_public_key_bytes {
        TransferRole::Sender
    } else {
        timings.subject_mismatch += 1;
        return Ok(None);
    };

    let mut disclosure = TransferDisclosure::default();
    if ctx.fields.contains(&DisclosureField::Sender) {
        disclosure.sender = Some(match role {
            TransferRole::Sender => subject.transmission_key_hex.clone(),
            TransferRole::Receiver => {
                decrypt_address_package(
                    ctx,
                    &bundle.output_ext,
                    ct.output_ext_c2,
                    &ct.encrypted_output_ext,
                    timings,
                    object_cache,
                )
                .await?
                .transmission_key_hex
            }
        });
    }
    if ctx.fields.contains(&DisclosureField::Amount) {
        let (package, c2, encrypted) = match role {
            TransferRole::Sender => (
                &bundle.sender_core,
                ct.sender_core_c2,
                ct.encrypted_sender_core.as_slice(),
            ),
            TransferRole::Receiver => (
                &bundle.output_core,
                ct.output_core_c2,
                ct.encrypted_output_core.as_slice(),
            ),
        };
        disclosure.amount = Some(
            decrypt_amount_package(ctx, package, c2, encrypted, timings, object_cache)
                .await?
                .value()
                .to_string(),
        );
    }
    if ctx.fields.contains(&DisclosureField::Receiver) {
        disclosure.receiver = Some(match role {
            TransferRole::Sender => {
                decrypt_address_package(
                    ctx,
                    &bundle.sender_ext,
                    ct.sender_ext_c2,
                    &ct.encrypted_sender_ext,
                    timings,
                    object_cache,
                )
                .await?
                .transmission_key_hex
            }
            TransferRole::Receiver => subject.transmission_key_hex.clone(),
        });
    }

    Ok(Some(entry(
        tx_ref,
        AuditAuthority::User,
        Some(role),
        Some(subject.transmission_key_hex.clone()),
        disclosure,
    )?))
}

async fn audit_master_transfer(
    tx_ref: &AuditDetectedRef,
    ct: &TransferComplianceCiphertext,
    bundle: &TransferOrbisUploadBundle,
    ctx: &AuditContext<'_>,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<OrbisAuditEntry> {
    let mut disclosure = TransferDisclosure::default();
    if ctx.fields.contains(&DisclosureField::Sender) {
        disclosure.sender = Some(
            decrypt_address_package(
                ctx,
                &bundle.output_ext,
                ct.output_ext_c2,
                &ct.encrypted_output_ext,
                timings,
                object_cache,
            )
            .await?
            .transmission_key_hex,
        );
    }
    if ctx.fields.contains(&DisclosureField::Amount) {
        disclosure.amount = Some(
            decrypt_amount_package(
                ctx,
                &bundle.sender_core,
                ct.sender_core_c2,
                &ct.encrypted_sender_core,
                timings,
                object_cache,
            )
            .await?
            .value()
            .to_string(),
        );
    }
    if ctx.fields.contains(&DisclosureField::Receiver) {
        disclosure.receiver = Some(
            decrypt_address_package(
                ctx,
                &bundle.sender_ext,
                ct.sender_ext_c2,
                &ct.encrypted_sender_ext,
                timings,
                object_cache,
            )
            .await?
            .transmission_key_hex,
        );
    }
    entry(tx_ref, AuditAuthority::Master, None, None, disclosure)
}

async fn prepare_user_transfer(
    bundle: &TransferOrbisUploadBundle,
    subject: &SubjectData,
    ctx: &AuditContext<'_>,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<()> {
    let packages = if bundle.output_core.subject_user_public_key_bytes()
        == subject.user_public_key_bytes
    {
        [
            ctx.fields
                .contains(&DisclosureField::Amount)
                .then_some(&bundle.output_core),
            ctx.fields
                .contains(&DisclosureField::Sender)
                .then_some(&bundle.output_ext),
        ]
    } else if bundle.sender_core.subject_user_public_key_bytes() == subject.user_public_key_bytes {
        [
            ctx.fields
                .contains(&DisclosureField::Amount)
                .then_some(&bundle.sender_core),
            ctx.fields
                .contains(&DisclosureField::Receiver)
                .then_some(&bundle.sender_ext),
        ]
    } else {
        timings.subject_mismatch += 1;
        return Ok(());
    };
    prepare_packages(packages.into_iter().flatten(), ctx, timings, object_cache).await
}

async fn prepare_master_transfer(
    bundle: &TransferOrbisUploadBundle,
    ctx: &AuditContext<'_>,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<()> {
    prepare_packages(
        [
            ctx.fields
                .contains(&DisclosureField::Sender)
                .then_some(&bundle.output_ext),
            ctx.fields
                .contains(&DisclosureField::Amount)
                .then_some(&bundle.sender_core),
            ctx.fields
                .contains(&DisclosureField::Receiver)
                .then_some(&bundle.sender_ext),
        ]
        .into_iter()
        .flatten(),
        ctx,
        timings,
        object_cache,
    )
    .await
}

async fn prepare_packages<'a>(
    packages: impl IntoIterator<Item = &'a OrbisEncryptedSeedUploadPackage>,
    ctx: &AuditContext<'_>,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<()> {
    for package in packages {
        ensure_package_object(
            ctx,
            &package.ring_id,
            package.clone(),
            timings,
            object_cache,
        )
        .await?;
    }
    Ok(())
}

async fn decrypt_amount_package(
    ctx: &AuditContext<'_>,
    package: &OrbisEncryptedSeedUploadPackage,
    c2: Fq,
    encrypted: &[u8],
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<Amount> {
    let seed = pre_package_seed(ctx, &package.ring_id, package, timings, object_cache).await?;
    package.validate_c2_seed(c2, seed)?;
    let started = Instant::now();
    let amount = decrypt_amount_with_seed(seed, encrypted)?;
    timings.amount_decrypt_ms += started.elapsed().as_millis();
    Ok(amount)
}

async fn decrypt_address_package(
    ctx: &AuditContext<'_>,
    package: &OrbisEncryptedSeedUploadPackage,
    c2: Fq,
    encrypted: &[u8],
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<AddressData> {
    let seed = pre_package_seed(ctx, &package.ring_id, package, timings, object_cache).await?;
    package.validate_c2_seed(c2, seed)?;
    let started = Instant::now();
    let address = decrypt_address_with_seed(seed, encrypted)?;
    timings.address_decrypt_ms += started.elapsed().as_millis();
    Ok(address)
}

fn decrypt_amount_with_seed(seed: Fq, encrypted: &[u8]) -> Result<Amount> {
    let plaintext = decrypt_tier_bytes(encrypted, seed, 16);
    let amount_bytes: [u8; 16] = plaintext[..16]
        .try_into()
        .context("transfer amount plaintext must be 16 bytes")?;
    Ok(Amount::from_le_bytes(amount_bytes))
}

fn decrypt_address_with_seed(seed: Fq, encrypted: &[u8]) -> Result<AddressData> {
    let plaintext = decrypt_tier_bytes(encrypted, seed, 64);
    let diversified_generator_bytes: [u8; 32] = plaintext[..32]
        .try_into()
        .context("transfer address diversified generator must be 32 bytes")?;
    let transmission_key: [u8; 32] = plaintext[32..64]
        .try_into()
        .context("transfer address transmission key must be 32 bytes")?;
    decaf377::Encoding(diversified_generator_bytes)
        .vartime_decompress()
        .map_err(|_| anyhow!("invalid transfer address diversified generator"))?;
    Ok(AddressData {
        transmission_key_hex: hex::encode(transmission_key),
    })
}

fn load_object_cache(path: Option<&PathBuf>) -> Result<ObjectCache> {
    let Some(path) = path else {
        return Ok(ObjectCache::default());
    };
    if !path.exists() {
        return Ok(ObjectCache::default());
    }
    let file = File::open(path)
        .with_context(|| format!("failed to open object cache {}", path.display()))?;
    serde_json::from_reader(BufReader::new(file))
        .with_context(|| format!("failed to parse object cache {}", path.display()))
}

fn save_object_cache(path: Option<&PathBuf>, cache: &ObjectCache) -> Result<()> {
    let Some(path) = path else {
        return Ok(());
    };
    if let Some(parent) = path.parent() {
        fs::create_dir_all(parent)
            .with_context(|| format!("failed to create object cache dir {}", parent.display()))?;
    }
    let json = serde_json::to_string_pretty(cache)?;
    let mut file = File::create(path)
        .with_context(|| format!("failed to write object cache {}", path.display()))?;
    file.write_all(json.as_bytes())?;
    Ok(())
}

fn package_cache_key(ring_id: &str, package: &OrbisEncryptedSeedUploadPackage) -> Result<String> {
    let mut hasher = Sha256::new();
    hasher.update(ring_id.as_bytes());
    hasher.update([0]);
    hasher.update(serde_json::to_vec(package)?);
    Ok(hex::encode(hasher.finalize()))
}

async fn ensure_package_object(
    ctx: &AuditContext<'_>,
    ring_id: &str,
    package: OrbisEncryptedSeedUploadPackage,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<PackageObjectContext> {
    package.validate()?;
    let cache_key = package_cache_key(ring_id, &package)?;
    if let Some(cached) = object_cache.objects.get(&cache_key) {
        timings.object_cache_hits += 1;
        return Ok(PackageObjectContext {
            object_id: cached.object_id.clone(),
            package,
            cache_key,
            from_cache: true,
        });
    }

    timings.object_cache_misses += 1;
    let sourcehub = ctx
        .sourcehub
        .ok_or_else(|| anyhow!("missing SourceHub client for Orbis object registration"))?;
    let jwt_signer = ctx
        .jwt_signer
        .ok_or_else(|| anyhow!("missing Orbis JWT signer for package storage"))?;
    let reader_did_uri = ctx
        .reader_did_uri
        .ok_or_else(|| anyhow!("missing reader DID URI for Orbis relationship setup"))?;
    let started = Instant::now();
    let stored = ctx
        .cli
        .store_encrypted_seed_package(ring_id, &package, jwt_signer)
        .await?;
    timings.package_store_ms += started.elapsed().as_millis();
    let started = Instant::now();
    OrbisClient::register_object(
        sourcehub,
        &package.policy_id,
        &package.resource,
        &stored.object_id,
    )
    .await?;
    timings.object_registration_ms += started.elapsed().as_millis();
    let started = Instant::now();
    OrbisClient::set_relationship(
        sourcehub,
        &package.policy_id,
        &package.resource,
        &stored.object_id,
        ORBIS_READER_RELATION,
        reader_did_uri,
    )
    .await?;
    timings.relationship_setup_ms += started.elapsed().as_millis();
    object_cache.objects.insert(
        cache_key.clone(),
        CachedObject {
            object_id: stored.object_id.clone(),
        },
    );
    Ok(PackageObjectContext {
        object_id: stored.object_id.clone(),
        package,
        cache_key: cache_key.clone(),
        from_cache: false,
    })
}

async fn pre_package_seed(
    ctx: &AuditContext<'_>,
    ring_id: &str,
    package: &OrbisEncryptedSeedUploadPackage,
    timings: &mut AuditTimings,
    object_cache: &mut ObjectCache,
) -> Result<Fq> {
    let mut object =
        ensure_package_object(ctx, ring_id, package.clone(), timings, object_cache).await?;
    let jwt_signer = ctx
        .jwt_signer
        .ok_or_else(|| anyhow!("missing Orbis JWT signer for PRE"))?;
    let derivation_hex = (!object.package.user_key_derivation.is_empty())
        .then(|| hex::encode(&object.package.user_key_derivation));
    let started = Instant::now();
    let mut pre_result = ctx
        .cli
        .start_pre(
            &hex::encode(ctx.dk_pub.vartime_compress().0),
            &object.object_id,
            derivation_hex.as_deref(),
            Some(&object.package.salt),
            Some(object.package.timestamp),
            jwt_signer,
        )
        .await;
    if pre_result.is_err() && object.from_cache {
        timings.object_cache_stale += 1;
        object_cache.objects.remove(&object.cache_key);
        object = ensure_package_object(ctx, ring_id, object.package.clone(), timings, object_cache)
            .await?;
        pre_result = ctx
            .cli
            .start_pre(
                &hex::encode(ctx.dk_pub.vartime_compress().0),
                &object.object_id,
                derivation_hex.as_deref(),
                Some(&object.package.salt),
                Some(object.package.timestamp),
                jwt_signer,
            )
            .await;
    }
    let pre = pre_result?;
    let pre_ms = started.elapsed().as_millis();
    timings.start_pre_ms += pre_ms;
    timings.pre_call_samples_ms.push(pre_ms);

    let started = Instant::now();
    let xnc_bytes = hex::decode(&pre.xnc_cmt_hex).context("invalid xnc_cmt hex from PRE")?;
    let xnc_arr: [u8; 32] = xnc_bytes
        .try_into()
        .map_err(|_| anyhow!("xnc_cmt should be 32 bytes"))?;
    let xnc_cmt = decaf377::Encoding(xnc_arr)
        .vartime_decompress()
        .map_err(|_| anyhow!("invalid xnc_cmt curve point"))?;
    let seed = decrypt_orbis_reencrypted_seed(&object.package, ctx.dk, &xnc_cmt, &pre.secret)?;
    timings.seed_decrypt_ms += started.elapsed().as_millis();
    Ok(seed)
}

fn parse_fr(hex_str: &str, label: &str) -> Result<Fr> {
    let bytes = hex::decode(hex_str).context(format!("invalid hex for {label}"))?;
    if bytes.len() != 32 {
        anyhow::bail!(
            "{label} must be 32 bytes (64 hex chars), got {}",
            bytes.len()
        );
    }
    let mut arr = [0u8; 32];
    arr.copy_from_slice(&bytes);
    Ok(Fr::from_le_bytes_mod_order(&arr))
}

async fn connect_to_node(node_url: &Url) -> Result<Channel> {
    let endpoint = tonic::transport::Endpoint::from_shared(node_url.to_string())
        .context("invalid node URL")?
        .timeout(std::time::Duration::from_secs(30));

    endpoint
        .connect()
        .await
        .context(format!("failed to connect to node at {node_url}"))
}

async fn fetch_transactions(
    channel: Channel,
    height: u64,
) -> Result<Vec<shieldd_sdk_proto::core::transaction::v1::Transaction>> {
    use shieldd_sdk_proto::core::app::v1::{
        query_service_client::QueryServiceClient as AppQueryServiceClient,
        TransactionsByHeightRequest,
    };

    let mut client = AppQueryServiceClient::new(channel);
    let request = TransactionsByHeightRequest {
        block_height: height,
    };
    let response = client
        .transactions_by_height(request)
        .await
        .context("failed to fetch transactions")?;
    Ok(response.into_inner().transactions)
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::extract::ExtractionSkip;
    use decaf377::{Element, Fr};
    use shieldd_sdk_asset::{asset, Value};
    use shieldd_sdk_compliance::transfer::encrypt_transfer;
    use shieldd_sdk_compliance::AuthorizationId;
    use shieldd_sdk_compliance::{
        issuer_keys::DetectionKey, AuditDiscoveryTags, TransferDiscoveryTags,
    };
    use shieldd_sdk_keys::{keys::AddressIndex, test_keys};
    use shieldd_sdk_num::Amount;
    use shieldd_sdk_proto::core::component::shielded_pool::v1::{
        NoteReshape, NoteReshapeBody, Transfer, TransferBody, TransferOutputBody,
    };
    use shieldd_sdk_proto::core::transaction::v1::action::Action;

    fn make_transfer_ciphertext_bytes() -> Vec<u8> {
        let dk = DetectionKey::new(Fr::from(5u64));
        let dk_pub = dk.public_key();
        let sender_public_key = Element::GENERATOR * Fr::from(11u64);
        let receiver_public_key = Element::GENERATOR * Fr::from(13u64);
        let sender = test_keys::ADDRESS_0.clone();
        let receiver = test_keys::FULL_VIEWING_KEY.payment_address(AddressIndex::from(1u32));
        encrypt_transfer(
            &mut rand_core::OsRng,
            &sender_public_key,
            &receiver_public_key,
            &dk_pub,
            &receiver,
            &sender,
            Value {
                amount: Amount::from(17u128),
                asset_id: asset::Id(decaf377::Fq::from(77u64)),
            },
            false,
            AuthorizationId::from_fq(decaf377::Fq::from(99u64)),
            0,
            16,
            decaf377::Fq::from(9u64),
        )
        .expect("transfer ciphertext should build")
        .ciphertext
        .to_bytes()
    }

    #[test]
    fn extract_transfer_data_ignores_non_transfer_actions() {
        let note_reshape_action = shieldd_sdk_proto::core::transaction::v1::Action {
            action: Some(Action::NoteReshape(NoteReshape {
                body: Some(NoteReshapeBody::default()),
                ..Default::default()
            })),
        };

        assert!(matches!(
            extract_transfer_data(&note_reshape_action, 0),
            TransferExtraction::Skipped(ExtractionSkip::NonTransferAction)
        ));
    }

    fn make_upload_bundle_bytes() -> Vec<u8> {
        let mut rng = rand_core::OsRng;
        let ring_sk = Fr::rand(&mut rng);
        let ring_pk = Element::GENERATOR * ring_sk;
        let sender_registration_id = [11u8; 32];
        let receiver_registration_id = [13u8; 32];
        let sender_public_key =
            shieldd_sdk_compliance::derive_orbis_user_public_key(&ring_pk, &sender_registration_id)
                .expect("sender child key should derive");
        let receiver_public_key = shieldd_sdk_compliance::derive_orbis_user_public_key(
            &ring_pk,
            &receiver_registration_id,
        )
        .expect("receiver child key should derive");
        let policy_id = "policy-id";
        let resource = "document";
        let permission = "read";
        let ring_id = "ring-id";
        let timestamp = 1_700_000_000;
        let authorization_id = AuthorizationId::from_fq(decaf377::Fq::from(99u64));
        let sender_core_salt = decaf377::Fq::from(11u64);
        let sender_ext_salt = decaf377::Fq::from(12u64);
        let output_core_salt = decaf377::Fq::from(13u64);
        let output_ext_salt = decaf377::Fq::from(14u64);

        let bundle = TransferOrbisUploadBundle {
            sender_core: shieldd_sdk_compliance::build_orbis_encrypted_seed_upload_package(
                &mut rng,
                &ring_pk,
                Some(&sender_registration_id),
                decaf377::Fq::from(21u64),
                shieldd_sdk_compliance::TransferTierMetadataStatement::from_identifiers(
                    sender_public_key,
                    ring_id,
                    policy_id,
                    resource,
                    permission,
                    shieldd_sdk_compliance::TransferTierKind::SenderCore,
                    timestamp,
                    authorization_id,
                    sender_core_salt,
                ),
                ring_id,
                policy_id,
                resource,
                permission,
                shieldd_sdk_compliance::TransferTierKind::SenderCore,
                timestamp,
                sender_core_salt,
            )
            .expect("sender_core package should build"),
            sender_ext: shieldd_sdk_compliance::build_orbis_encrypted_seed_upload_package(
                &mut rng,
                &ring_pk,
                Some(&sender_registration_id),
                decaf377::Fq::from(22u64),
                shieldd_sdk_compliance::TransferTierMetadataStatement::from_identifiers(
                    sender_public_key,
                    ring_id,
                    policy_id,
                    resource,
                    permission,
                    shieldd_sdk_compliance::TransferTierKind::SenderExt,
                    timestamp,
                    authorization_id,
                    sender_ext_salt,
                ),
                ring_id,
                policy_id,
                resource,
                permission,
                shieldd_sdk_compliance::TransferTierKind::SenderExt,
                timestamp,
                sender_ext_salt,
            )
            .expect("sender_ext package should build"),
            output_core: shieldd_sdk_compliance::build_orbis_encrypted_seed_upload_package(
                &mut rng,
                &ring_pk,
                Some(&receiver_registration_id),
                decaf377::Fq::from(23u64),
                shieldd_sdk_compliance::TransferTierMetadataStatement::from_identifiers(
                    receiver_public_key,
                    ring_id,
                    policy_id,
                    resource,
                    permission,
                    shieldd_sdk_compliance::TransferTierKind::OutputCore,
                    timestamp,
                    authorization_id,
                    output_core_salt,
                ),
                ring_id,
                policy_id,
                resource,
                permission,
                shieldd_sdk_compliance::TransferTierKind::OutputCore,
                timestamp,
                output_core_salt,
            )
            .expect("output_core package should build"),
            output_ext: shieldd_sdk_compliance::build_orbis_encrypted_seed_upload_package(
                &mut rng,
                &ring_pk,
                Some(&receiver_registration_id),
                decaf377::Fq::from(24u64),
                shieldd_sdk_compliance::TransferTierMetadataStatement::from_identifiers(
                    receiver_public_key,
                    ring_id,
                    policy_id,
                    resource,
                    permission,
                    shieldd_sdk_compliance::TransferTierKind::OutputExt,
                    timestamp,
                    authorization_id,
                    output_ext_salt,
                ),
                ring_id,
                policy_id,
                resource,
                permission,
                shieldd_sdk_compliance::TransferTierKind::OutputExt,
                timestamp,
                output_ext_salt,
            )
            .expect("output_ext package should build"),
        };
        bundle.to_bytes().expect("bundle should serialize")
    }

    #[test]
    fn extract_transfer_data_reads_requested_transfer_output() {
        let ciphertext_bytes = make_transfer_ciphertext_bytes();
        let bundle_bytes = make_upload_bundle_bytes();
        let transfer_action = shieldd_sdk_proto::core::transaction::v1::Action {
            action: Some(Action::Transfer(Transfer {
                body: Some(TransferBody {
                    outputs: vec![
                        TransferOutputBody::default(),
                        TransferOutputBody {
                            compliance_ciphertext: ciphertext_bytes.clone(),
                            orbis_upload_bundle: bundle_bytes.clone(),
                            ..Default::default()
                        },
                    ],
                    ..Default::default()
                }),
                ..Default::default()
            })),
        };

        let TransferExtraction::Found(extracted) = extract_transfer_data(&transfer_action, 1)
        else {
            panic!("transfer action should expose data");
        };
        assert_eq!(extracted.ciphertext.to_bytes(), ciphertext_bytes);
        assert_eq!(
            extracted
                .bundle
                .to_bytes()
                .expect("bundle should serialize"),
            bundle_bytes
        );
    }

    #[test]
    fn extract_transfer_data_classifies_malformed_ciphertext() {
        let transfer_action = shieldd_sdk_proto::core::transaction::v1::Action {
            action: Some(Action::Transfer(Transfer {
                body: Some(TransferBody {
                    outputs: vec![TransferOutputBody {
                        compliance_ciphertext: vec![1, 2, 3],
                        orbis_upload_bundle: Vec::new(),
                        ..Default::default()
                    }],
                    ..Default::default()
                }),
                ..Default::default()
            })),
        };

        assert!(matches!(
            extract_transfer_data(&transfer_action, 0),
            TransferExtraction::Skipped(ExtractionSkip::InvalidComplianceCiphertext { len: 3, .. })
        ));
    }

    #[test]
    fn entry_preserves_authorization_and_granular_disclosure() {
        let authorization_id = AuthorizationId::from_fq(Fq::from(99u64));
        let tx_ref = AuditDetectedRef {
            height: 290,
            tx_hash: "tx".to_string(),
            action_index: 1,
            output_index: 2,
            asset_id: "asset".to_string(),
            is_flagged: false,
            flow_type: shieldd_sdk_compliance::FlowType::PrivateTransfer,
            authorization_id: Some(authorization_id),
            authorization_timestamp: Some(1_700_000_000),
            discovery_tags: None,
        };
        let self_tk = "aa".repeat(32);
        let counterparty_tk = "bb".repeat(32);

        let result = entry(
            &tx_ref,
            AuditAuthority::Master,
            None,
            None,
            TransferDisclosure {
                sender: None,
                amount: Some("400".to_owned()),
                receiver: Some(counterparty_tk.clone()),
            },
        )
        .expect("entry should build");
        assert_eq!(result.authorization_id, authorization_id);
        assert_eq!(result.authorization_timestamp, 1_700_000_000);
        assert_eq!(result.sender_address, None);
        assert_eq!(result.amount.as_deref(), Some("400"));
        assert_eq!(
            result.receiver_address.as_deref(),
            Some(counterparty_tk.as_str())
        );
        assert_eq!(self_tk.len(), 64);
    }

    #[test]
    fn public_address_prefilters_matching_transfer() {
        let sender = shieldd_sdk_keys::test_keys::ADDRESS_0.clone();
        let receiver = shieldd_sdk_keys::test_keys::ADDRESS_1.clone();
        let asset_id = asset::Id(Fq::from(77u64));
        let authorization_id = AuthorizationId::from_fq(Fq::from(99u64));
        let authorization_timestamp = 1_700_000_000;
        let tx_ref = AuditDetectedRef {
            height: 290,
            tx_hash: "tx".to_string(),
            action_index: 1,
            output_index: 2,
            asset_id: asset_id.to_string(),
            is_flagged: false,
            flow_type: shieldd_sdk_compliance::FlowType::PrivateTransfer,
            authorization_id: Some(authorization_id),
            authorization_timestamp: Some(authorization_timestamp),
            discovery_tags: Some(AuditDiscoveryTags {
                tags: TransferDiscoveryTags::derive(&sender, &receiver, 16).unwrap(),
            }),
        };

        assert!(
            matches_discovery_tag(&tx_ref, std::slice::from_ref(&sender))
                .expect("tag should examine")
        );
        let unrelated = shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY.payment_address(2u32.into());
        assert!(!matches_discovery_tag(&tx_ref, &[unrelated]).expect("tag should examine"));
    }
}
