//! Compliance extensions for ViewClient.
//!
//! This module provides compliance-related methods that wrap ViewClient calls
//! and provide convenient access to compliance registry state.
//!
//! # Architecture
//!
//! The compliance system has a layered architecture:
//!
//! ```text
//! ┌─────────────────────────────────────────────────────────────┐
//! │                    ViewClientComplianceExt                  │
//! │  High-level trait for compliance queries (is_asset_regulated│
//! │  get_compliance_data, etc.)                                 │
//! └─────────────────────────────────────────────────────────────┘
//!                              │
//!                              ▼
//! ┌─────────────────────────────────────────────────────────────┐
//! │                  ComplianceDataProvider                     │
//! │  Trait for fetching compliance data (proofs, anchors, etc.) │
//! │  Two implementations:                                       │
//! │    - GrpcComplianceProvider: Fetches from ViewService gRPC  │
//! │    - MockComplianceProvider: In-memory for testing          │
//! └─────────────────────────────────────────────────────────────┘
//!                              │
//!                              ▼
//! ┌─────────────────────────────────────────────────────────────┐
//! │                      ViewService RPC                        │
//! │  compliance_asset_status, compliance_merkle_proofs, etc.    │
//! │  Uses local trees with gRPC fallback to pd for user proofs  │
//! └─────────────────────────────────────────────────────────────┘
//!                              │
//!                              ▼
//! ┌─────────────────────────────────────────────────────────────┐
//! │                    Local Compliance Trees                   │
//! │  - compliance_user_tree (QuadTree): User registrations      │
//! │  - compliance_asset_tree (IMT): Asset registrations         │
//! │  Synced from chain via worker.rs                            │
//! └─────────────────────────────────────────────────────────────┘
//! ```
//!
//! ## Data Flow
//!
//! 1. **Asset proofs**: 100% local from `compliance_asset_tree` (IMT)
//!    - Regulated assets: membership proofs
//!    - Unregulated assets: non-membership proofs with protocol sink public keys
//!
//! 2. **User proofs**: Local storage + gRPC fallback
//!    - First checks `get_compliance_leaf_data()` in local storage
//!    - Falls back to pd gRPC if not found locally
//!
//! 3. **Counterparty tracking**: Enables offline user proofs
//!    - Recorded at TX build time (witness_and_build)
//!    - Backfilled during sync from historical TXs (worker.rs)

use anyhow::Result;
use futures::FutureExt;
use shieldd_sdk_asset::asset;
use shieldd_sdk_compliance::ComplianceLeaf;
use shieldd_sdk_keys::Address;
use shieldd_sdk_proto::view::v1 as view_pb;
use shieldd_sdk_tct::StateCommitment;
use std::{future::Future, pin::Pin};

use crate::ViewClient;

/// Convert a proto MerklePath to native MerklePath.
fn parse_proto_merkle_path(
    path: Option<shieldd_sdk_proto::core::component::compliance::v1::MerklePath>,
    label: &str,
) -> Result<shieldd_sdk_compliance::structs::MerklePath> {
    path.ok_or_else(|| anyhow::anyhow!("missing {label}"))?
        .try_into()
        .map_err(|error| anyhow::anyhow!("invalid {label}: {error}"))
}

/// Compliance extensions for ViewClient.
///
/// These methods provide convenient access to compliance registry state.
pub trait ViewClientComplianceExt: ViewClient {
    /// Check if an asset is regulated (requires compliance).
    ///
    /// # Implementation
    /// Queries the compliance registry (via ViewClient::compliance_asset_status)
    /// to check if the asset is regulated.
    ///
    /// Returns `true` if the asset is registered and regulated, `false` otherwise.
    fn is_asset_regulated(
        &mut self,
        asset_id: asset::Id,
    ) -> Pin<Box<dyn Future<Output = Result<bool>> + Send + 'static>> {
        let status_future = self.compliance_asset_status(asset_id);
        async move {
            let status = status_future.await?;
            // Return true only if the asset is explicitly regulated
            Ok(status.unwrap_or(false))
        }
        .boxed()
    }

    /// Get the compliance leaf for a specific address and asset.
    ///
    /// Fetches the registered ComplianceLeaf from the chain. This ensures
    /// the leaf used in proofs matches what was actually registered on-chain.
    ///
    /// # Returns
    /// The ComplianceLeaf if the user is registered, or an error if not registered.
    fn get_compliance_leaf(
        &mut self,
        address: Address,
        asset_id: asset::Id,
    ) -> Pin<Box<dyn Future<Output = Result<ComplianceLeaf>> + Send + 'static>> {
        let leaf_future = self.compliance_user_leaf(address.clone(), asset_id);
        async move {
            let response = leaf_future.await?;

            if !response.is_registered {
                anyhow::bail!(
                    "user not registered in compliance registry for asset {}",
                    asset_id
                );
            }

            let proto_leaf = response.leaf.ok_or_else(|| {
                anyhow::anyhow!(
                    "compliance leaf missing from response for asset {} (server returned is_registered=true but no leaf)",
                    asset_id
                )
            })?;

            ComplianceLeaf::try_from(proto_leaf)
        }
        .boxed()
    }

    /// Get the compliance tree anchors from the chain.
    ///
    /// Returns (compliance_anchor, asset_anchor) - the roots of the user tree
    /// and asset tree respectively.
    fn get_compliance_anchors(
        &mut self,
    ) -> Pin<Box<dyn Future<Output = Result<(StateCommitment, StateCommitment)>> + Send + 'static>>
    {
        let anchors_future = self.compliance_anchors();
        async move {
            let (compliance_anchor, asset_anchor) = anchors_future.await?;
            Ok((compliance_anchor, asset_anchor))
        }
        .boxed()
    }

    /// Get the Merkle proofs needed for compliance ZK proofs.
    ///
    /// This method queries the chain for:
    /// - User's Merkle path and position in the compliance tree
    /// - Asset's Merkle path and position in the asset tree
    /// - Both tree anchors (roots)
    ///
    /// Returns a `ComplianceMerkleProofsData` with all the data needed for plans.
    fn get_compliance_merkle_proofs(
        &mut self,
        wallet_id: Address,
        asset_id: asset::Id,
    ) -> Pin<Box<dyn Future<Output = Result<ComplianceMerkleProofsData>> + Send + 'static>> {
        let proofs_future = self.compliance_merkle_proofs(wallet_id, asset_id);
        async move {
            let response = proofs_future.await?;
            ComplianceMerkleProofsData::try_from_proto(response)
        }
        .boxed()
    }
}

/// Data structure containing parsed Merkle proofs for compliance.
/// This is the Rust-native equivalent of ComplianceMerkleProofsResponse.
#[derive(Debug, Clone)]
pub struct ComplianceMerkleProofsData {
    pub user_registered: bool,
    pub asset_registered: bool,
    pub is_regulated: bool,
    pub compliance_path: shieldd_sdk_compliance::structs::MerklePath,
    pub compliance_position: u64,
    pub asset_path: shieldd_sdk_compliance::structs::MerklePath,
    pub asset_position: u64,
    pub asset_indexed_leaf: shieldd_sdk_compliance::IndexedLeaf,
    pub compliance_anchor: StateCommitment,
    pub asset_anchor: StateCommitment,
}

impl ComplianceMerkleProofsData {
    /// Convert from the proto response to native types.
    pub fn try_from_proto(response: view_pb::ComplianceMerkleProofsResponse) -> Result<Self> {
        use decaf377::Fq;

        let compliance_path = parse_proto_merkle_path(response.compliance_path, "compliance_path")?;
        let asset_path = parse_proto_merkle_path(response.asset_path, "asset_path")?;

        // Parse anchors
        let compliance_anchor_bytes: [u8; 32] =
            response
                .compliance_anchor
                .try_into()
                .map_err(|v: Vec<u8>| {
                    anyhow::anyhow!("compliance_anchor must be 32 bytes, got {}", v.len())
                })?;
        let compliance_anchor = StateCommitment(
            Fq::from_bytes_checked(&compliance_anchor_bytes)
                .map_err(|e| anyhow::anyhow!("invalid compliance_anchor field element: {}", e))?,
        );

        let asset_anchor_bytes: [u8; 32] =
            response.asset_anchor.try_into().map_err(|v: Vec<u8>| {
                anyhow::anyhow!("asset_anchor must be 32 bytes, got {}", v.len())
            })?;
        let asset_anchor = StateCommitment(
            Fq::from_bytes_checked(&asset_anchor_bytes)
                .map_err(|e| anyhow::anyhow!("invalid asset_anchor field element: {}", e))?,
        );

        Ok(Self {
            user_registered: response.user_registered,
            asset_registered: response.asset_registered,
            is_regulated: response.is_regulated,
            compliance_path,
            compliance_position: response.compliance_position,
            asset_path,
            asset_position: response.asset_position,
            asset_indexed_leaf: response
                .asset_indexed_leaf
                .ok_or_else(|| {
                    anyhow::anyhow!("missing asset_indexed_leaf in compliance proofs response")
                })?
                .try_into()?,
            compliance_anchor,
            asset_anchor,
        })
    }
}

// Blanket implementation for all ViewClient implementors
impl<T: ViewClient + ?Sized> ViewClientComplianceExt for T {}

use decaf377::Fr;
use shieldd_sdk_compliance::{
    AssetPolicy, AssetProofData, ComplianceProofProvider, MerklePath, UserProofData,
};
use shieldd_sdk_transaction::plan::{ActionPlan, TransactionPlan};
use std::collections::{BTreeMap, BTreeSet};
use std::sync::Arc;
use tokio::sync::Mutex;

/// A compliance proof provider backed by ViewClient.
/// Used by Planner for production transaction enrichment.
///
/// This wraps a ViewClient in a way that implements ComplianceProofProvider,
/// allowing the same enrichment logic to be shared between production (Planner)
/// and tests (mock-client).
pub struct ViewClientComplianceProvider<'a, V: ?Sized> {
    view: Arc<Mutex<&'a mut V>>,
}

impl<'a, V: ?Sized> ViewClientComplianceProvider<'a, V> {
    pub fn new(view: &'a mut V) -> Self {
        Self {
            view: Arc::new(Mutex::new(view)),
        }
    }
}

#[async_trait::async_trait]
impl<'a, V: ViewClient + Send + ?Sized> ComplianceProofProvider
    for ViewClientComplianceProvider<'a, V>
{
    async fn get_compliance_anchor(&self) -> Result<StateCommitment> {
        let future = {
            let mut view = self.view.lock().await;
            view.get_compliance_anchors()
        };
        let (compliance_anchor, _) = future.await?;
        Ok(compliance_anchor)
    }

    async fn get_asset_anchor(&self) -> Result<StateCommitment> {
        let future = {
            let mut view = self.view.lock().await;
            view.get_compliance_anchors()
        };
        let (_, asset_anchor) = future.await?;
        Ok(asset_anchor)
    }

    async fn get_asset_proof(&self, asset_id: asset::Id) -> Result<AssetProofData> {
        // Use a dummy address - we only need asset info, not user-specific data
        let dummy_address = Address::dummy(&mut rand::thread_rng());
        let future = {
            let mut view = self.view.lock().await;
            view.get_compliance_merkle_proofs(dummy_address, asset_id)
        };
        let proofs = future.await?;

        Ok(AssetProofData {
            auth_path: proofs.asset_path,
            position: proofs.asset_position,
            indexed_leaf: proofs.asset_indexed_leaf,
            is_regulated: proofs.is_regulated,
        })
    }

    async fn get_asset_policy(&self, asset_id: asset::Id) -> Result<Option<AssetPolicy>> {
        let future = {
            let mut view = self.view.lock().await;
            view.compliance_asset_policy(asset_id)
        };
        let response = future.await?;
        response
            .asset_policy
            .map(AssetPolicy::try_from)
            .transpose()
            .map_err(Into::into)
    }

    async fn get_user_proof(
        &self,
        address: &Address,
        asset_id: asset::Id,
    ) -> Result<UserProofData> {
        let proofs_future = {
            let mut view = self.view.lock().await;
            view.get_compliance_merkle_proofs(address.clone(), asset_id)
        };
        let proofs = proofs_future.await?;

        if proofs.user_registered {
            let leaf_future = {
                let mut view = self.view.lock().await;
                view.get_compliance_leaf(address.clone(), asset_id)
            };
            let leaf = leaf_future.await?;
            return Ok(UserProofData {
                auth_path: proofs.compliance_path,
                position: proofs.compliance_position,
                leaf,
            });
        }

        if !proofs.is_regulated {
            let synthetic_leaf = ComplianceLeaf::synthetic_unregulated(address.clone(), asset_id);
            return Ok(UserProofData {
                auth_path: MerklePath::default(),
                position: 0,
                leaf: synthetic_leaf,
            });
        }

        anyhow::bail!(
            "user not registered in compliance tree for address {:?} and asset {:?}",
            address,
            asset_id
        );
    }

    async fn get_batch_proofs(
        &self,
        queries: &[(Address, asset::Id)],
    ) -> Result<shieldd_sdk_compliance::BatchComplianceData> {
        if queries.is_empty() {
            return Ok(shieldd_sdk_compliance::BatchComplianceData::default());
        }

        // Make a single batch gRPC call
        let batch_future = {
            let mut view = self.view.lock().await;
            view.compliance_batch_merkle_proofs(queries.to_vec())
        };
        let batch_response = batch_future.await?;
        anyhow::ensure!(
            batch_response.results.len() == queries.len(),
            "batch compliance response count {} does not match query count {}",
            batch_response.results.len(),
            queries.len()
        );

        // Parse anchors
        let compliance_anchor_bytes: [u8; 32] = batch_response
            .compliance_anchor
            .try_into()
            .map_err(|v: Vec<u8>| {
                anyhow::anyhow!(
                    "batch response: compliance_anchor must be 32 bytes, got {}",
                    v.len()
                )
            })?;
        let compliance_anchor = StateCommitment(
            decaf377::Fq::from_bytes_checked(&compliance_anchor_bytes)
                .map_err(|e| anyhow::anyhow!("batch response: invalid compliance_anchor: {}", e))?,
        );

        let asset_anchor_bytes: [u8; 32] =
            batch_response
                .asset_anchor
                .try_into()
                .map_err(|v: Vec<u8>| {
                    anyhow::anyhow!(
                        "batch response: asset_anchor must be 32 bytes, got {}",
                        v.len()
                    )
                })?;
        let asset_anchor = StateCommitment(
            decaf377::Fq::from_bytes_checked(&asset_anchor_bytes)
                .map_err(|e| anyhow::anyhow!("batch response: invalid asset_anchor: {}", e))?,
        );

        let mut asset_proofs: BTreeMap<asset::Id, AssetProofData> = BTreeMap::new();
        let mut asset_policies = BTreeMap::new();
        let mut user_proofs: BTreeMap<(Address, asset::Id), UserProofData> = BTreeMap::new();

        // Match results with queries - parse directly since individual results don't have anchors
        for (i, result) in batch_response.results.into_iter().enumerate() {
            let (address, asset_id) = &queries[i];

            let compliance_path =
                parse_proto_merkle_path(result.compliance_path, "batch compliance_path")?;
            let asset_path = parse_proto_merkle_path(result.asset_path, "batch asset_path")?;

            // Cache asset proof
            if !asset_proofs.contains_key(asset_id) {
                // Parse indexed_leaf from proto response using TryFrom
                let indexed_leaf = if let Some(leaf_data) = result.asset_indexed_leaf {
                    shieldd_sdk_compliance::IndexedLeaf::try_from(leaf_data).map_err(|e| {
                        anyhow::anyhow!("invalid indexed_leaf for asset {}: {}", asset_id, e)
                    })?
                } else {
                    anyhow::bail!(
                        "asset_indexed_leaf missing in batch response for asset {} \
                         (server returned incomplete data)",
                        asset_id
                    );
                };

                asset_proofs.insert(
                    *asset_id,
                    AssetProofData {
                        auth_path: asset_path.clone(),
                        position: result.asset_position,
                        indexed_leaf,
                        is_regulated: result.is_regulated,
                    },
                );
                if result.is_regulated {
                    let future = {
                        let mut view = self.view.lock().await;
                        view.compliance_asset_policy(*asset_id)
                    };
                    let response = future.await?;
                    let policy_proto = response.asset_policy.ok_or_else(|| {
                        anyhow::anyhow!("missing asset_policy for regulated asset {}", asset_id)
                    })?;
                    asset_policies.insert(*asset_id, AssetPolicy::try_from(policy_proto)?);
                }
            }

            // Build user proof with leaf
            let key = (address.clone(), *asset_id);
            if !user_proofs.contains_key(&key) {
                if result.user_registered {
                    let leaf = if let Some(leaf_proto) = result.compliance_leaf {
                        ComplianceLeaf::try_from(leaf_proto).map_err(|e| {
                            anyhow::anyhow!(
                                "invalid compliance_leaf for address {:?} asset {}: {}",
                                address,
                                asset_id,
                                e
                            )
                        })?
                    } else {
                        let leaf_future = {
                            let mut view = self.view.lock().await;
                            view.get_compliance_leaf(address.clone(), *asset_id)
                        };
                        leaf_future.await?
                    };
                    user_proofs.insert(
                        key,
                        UserProofData {
                            auth_path: compliance_path,
                            position: result.compliance_position,
                            leaf,
                        },
                    );
                } else if !result.is_regulated {
                    let synthetic_leaf =
                        ComplianceLeaf::synthetic_unregulated(address.clone(), *asset_id);
                    user_proofs.insert(
                        key,
                        UserProofData {
                            auth_path: MerklePath::default(),
                            position: 0,
                            leaf: synthetic_leaf,
                        },
                    );
                } else {
                    anyhow::bail!(
                        "user not registered in compliance tree for address {:?} and asset {:?}",
                        address,
                        asset_id
                    );
                }
            }
        }

        Ok(shieldd_sdk_compliance::BatchComplianceData {
            compliance_anchor,
            asset_anchor,
            asset_proofs,
            asset_policies,
            user_proofs,
        })
    }
}

/// Enriches a transaction plan with compliance data using a ComplianceProofProvider.
///
/// This is the canonical implementation for authenticated asset and user-tree
/// witnesses used by the transfer-level compliance proof.
///
/// # Parameters
/// - `plan`: The transaction plan to enrich
/// - `provider`: The compliance proof provider
/// - `rng`: Random number generator
pub async fn enrich_plan_with_compliance<P: ComplianceProofProvider>(
    plan: &mut TransactionPlan,
    provider: &P,
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
    target_timestamp_override: Option<u64>,
) -> Result<()> {
    // Unix UTC timestamp for proof-bound policy metadata.
    // In production, use SystemTime::now(). Tests with fake chain times pass an override.
    let target_timestamp = match target_timestamp_override {
        Some(ts) => ts,
        None => std::time::SystemTime::now()
            .duration_since(std::time::UNIX_EPOCH)
            .map_err(|e| anyhow::anyhow!("system clock before Unix epoch: {}", e))?
            .as_secs(),
    };

    // Compliance encryption expands this private nonce deterministically into
    // its tier seeds and ephemeral scalars. Sharing one nonce across actions
    // would therefore reuse EPKs and stream keys. Allocate and collision-check
    // one nonce for each Transfer action, including internal fee funding.
    let mut used_transfer_nonces = BTreeSet::new();
    let mut transfer_action_nonces = BTreeMap::new();
    for (action_index, action) in plan.actions.iter().enumerate() {
        match action {
            ActionPlan::Transfer(_) => {
                transfer_action_nonces.insert(
                    action_index,
                    fresh_transfer_nonce(rng, &mut used_transfer_nonces)?,
                );
            }
            ActionPlan::NoteReshape(_)
            | ActionPlan::ValidatorDefinition(_)
            | ActionPlan::IbcAction(_)
            | ActionPlan::ProposalSubmit(_)
            | ActionPlan::ValidatorVote(_)
            | ActionPlan::ShieldedHostWithdrawal(_)
            | ActionPlan::ShieldedIcs20Withdrawal(_)
            | ActionPlan::ComplianceRegisterAsset(_)
            | ActionPlan::ComplianceRegisterUser(_) => {}
        }
    }
    let fee_funding_nonce = plan
        .fee_funding
        .as_ref()
        .map(|_| fresh_transfer_nonce(rng, &mut used_transfer_nonces))
        .transpose()?;

    enrich_transfer_family_with_compliance(
        plan,
        provider,
        target_timestamp,
        &transfer_action_nonces,
    )
    .await?;
    enrich_shielded_withdrawals_with_compliance(plan, provider, target_timestamp).await?;
    if let Some(fee_funding_nonce) = fee_funding_nonce {
        enrich_internal_funding_with_compliance(
            plan,
            provider,
            target_timestamp,
            fee_funding_nonce,
        )
        .await?;
    }

    Ok(())
}

fn fresh_transfer_nonce(
    rng: &mut (impl rand_core::RngCore + rand_core::CryptoRng),
    used: &mut BTreeSet<[u8; 32]>,
) -> Result<Fr> {
    let nonce = Fr::rand(rng);
    anyhow::ensure!(
        used.insert(nonce.to_bytes()),
        "compliance RNG generated a duplicate Transfer action nonce"
    );
    Ok(nonce)
}

#[derive(Clone, Copy, Debug)]
enum TransferSpendLocation {
    Transfer {
        action_index: usize,
        spend_index: usize,
    },
}

#[derive(Clone, Copy, Debug)]
enum TransferOutputLocation {
    Transfer {
        action_index: usize,
        output_index: usize,
    },
}

#[derive(Clone, Copy, Debug)]
enum ShieldedWithdrawalSpendLocation {
    Ics20 {
        action_index: usize,
        spend_index: usize,
    },
    Host {
        action_index: usize,
        spend_index: usize,
    },
}

async fn fetch_batch_compliance_data<P: ComplianceProofProvider>(
    provider: &P,
    spend_identities: &[(asset::Id, Address)],
    output_identities: &[(asset::Id, Address)],
) -> Result<Option<shieldd_sdk_compliance::BatchComplianceData>> {
    use std::collections::BTreeSet;

    if spend_identities.is_empty() && output_identities.is_empty() {
        return Ok(None);
    }

    let mut queries: BTreeSet<(Address, asset::Id)> = BTreeSet::new();
    for (asset_id, address) in spend_identities {
        queries.insert((address.clone(), *asset_id));
    }
    for (asset_id, address) in output_identities {
        queries.insert((address.clone(), *asset_id));
    }

    let query_vec: Vec<_> = queries.into_iter().collect();
    let batch_data = provider.get_batch_proofs(&query_vec).await?;
    Ok(Some(batch_data))
}

async fn enrich_transfer_family_with_compliance<P: ComplianceProofProvider>(
    plan: &mut TransactionPlan,
    provider: &P,
    target_timestamp: u64,
    action_nonces: &BTreeMap<usize, Fr>,
) -> Result<()> {
    let mut spend_locations = Vec::new();
    let mut output_locations = Vec::new();

    for (action_index, action) in plan.actions.iter().enumerate() {
        match action {
            ActionPlan::Transfer(transfer) => {
                for spend_index in 0..transfer.spends.len() {
                    spend_locations.push(TransferSpendLocation::Transfer {
                        action_index,
                        spend_index,
                    });
                }
                for output_index in 0..transfer.outputs.len() {
                    output_locations.push(TransferOutputLocation::Transfer {
                        action_index,
                        output_index,
                    });
                }
            }
            ActionPlan::NoteReshape(_)
            | ActionPlan::ValidatorDefinition(_)
            | ActionPlan::IbcAction(_)
            | ActionPlan::ProposalSubmit(_)
            | ActionPlan::ValidatorVote(_)
            | ActionPlan::ShieldedHostWithdrawal(_)
            | ActionPlan::ShieldedIcs20Withdrawal(_)
            | ActionPlan::ComplianceRegisterAsset(_)
            | ActionPlan::ComplianceRegisterUser(_) => {}
        }
    }

    let spend_identities = spend_locations
        .iter()
        .map(|location| match *location {
            TransferSpendLocation::Transfer {
                action_index,
                spend_index,
            } => {
                let ActionPlan::Transfer(transfer) = &plan.actions[action_index] else {
                    unreachable!()
                };
                let spend = &transfer.spends[spend_index];
                (spend.note.asset_id(), spend.note.address())
            }
        })
        .collect::<Vec<_>>();
    let output_identities = output_locations
        .iter()
        .map(|location| match *location {
            TransferOutputLocation::Transfer {
                action_index,
                output_index,
            } => {
                let ActionPlan::Transfer(transfer) = &plan.actions[action_index] else {
                    unreachable!()
                };
                let output = &transfer.outputs[output_index];
                (output.value.asset_id, output.dest_address.clone())
            }
        })
        .collect::<Vec<_>>();

    let Some(batch_data) =
        fetch_batch_compliance_data(provider, &spend_identities, &output_identities).await?
    else {
        return Ok(());
    };
    let compliance_anchor = batch_data.compliance_anchor;
    let asset_anchor = batch_data.asset_anchor;

    for (spend_location, (spend_asset_id, spend_address)) in spend_locations
        .iter()
        .copied()
        .zip(spend_identities.iter().cloned())
    {
        let TransferSpendLocation::Transfer {
            action_index,
            spend_index,
        } = spend_location;

        let asset_proof = batch_data
            .asset_proofs
            .get(&spend_asset_id)
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "compliance provider omitted asset proof for transfer spend at action {} input {} (asset {})",
                    action_index,
                    spend_index,
                    spend_asset_id
                )
            })?;

        let sender_proof = batch_data
            .user_proofs
            .get(&(spend_address.clone(), spend_asset_id))
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "missing user proof for transfer spend at action {} input {}: \
                     user may not be registered for asset {} \
                     (check compliance registration status)",
                    action_index,
                    spend_index,
                    spend_asset_id
                )
            })?;

        let ActionPlan::Transfer(transfer) = &mut plan.actions[action_index] else {
            unreachable!()
        };
        let spend = &mut transfer.spends[spend_index];
        spend.asset_indexed_leaf = asset_proof.indexed_leaf;
        spend.asset_path = asset_proof.auth_path;
        spend.asset_position = asset_proof.position;
        spend.asset_anchor = asset_anchor;
        spend.compliance_anchor = compliance_anchor;
        spend.compliance_path = sender_proof.auth_path;
        spend.compliance_position = sender_proof.position;
        spend.compliance_leaf = Some(sender_proof.leaf.clone());
        spend.is_regulated = asset_proof.is_regulated;
        spend.target_timestamp = target_timestamp;
        spend.asset_policy = if asset_proof.is_regulated {
            Some(
                batch_data
                    .asset_policies
                    .get(&spend_asset_id)
                    .cloned()
                    .ok_or_else(|| {
                        anyhow::anyhow!(
                            "missing asset policy for regulated transfer spend asset {}",
                            spend_asset_id
                        )
                    })?,
            )
        } else {
            None
        };
        spend.set_compliance_details()?;
        spend.tx_blinding_nonce = *action_nonces.get(&action_index).ok_or_else(|| {
            anyhow::anyhow!("missing compliance nonce for Transfer action {action_index}")
        })?;
    }

    for (output_location, (output_asset_id, recipient_address)) in output_locations
        .iter()
        .copied()
        .zip(output_identities.iter().cloned())
    {
        let TransferOutputLocation::Transfer {
            action_index,
            output_index,
        } = output_location;

        let asset_proof = batch_data
            .asset_proofs
            .get(&output_asset_id)
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                        "compliance provider omitted asset proof for transfer output at action {} output {} (asset {})",
                        action_index,
                        output_index,
                        output_asset_id
                    )
            })?;

        let recipient_proof = batch_data
            .user_proofs
            .get(&(recipient_address.clone(), output_asset_id))
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "missing user proof for transfer output at action {} output {}: \
                         recipient may not be registered for asset {} \
                         (recipient must be registered for regulated assets)",
                    action_index,
                    output_index,
                    output_asset_id
                )
            })?;

        let ActionPlan::Transfer(transfer) = &mut plan.actions[action_index] else {
            unreachable!()
        };
        let output = &mut transfer.outputs[output_index];
        output.asset_indexed_leaf = asset_proof.indexed_leaf;
        output.asset_path = asset_proof.auth_path;
        output.asset_position = asset_proof.position;
        output.asset_anchor = asset_anchor;
        output.compliance_anchor = compliance_anchor;
        output.compliance_path = recipient_proof.auth_path;
        output.compliance_position = recipient_proof.position;
        output.is_regulated = asset_proof.is_regulated;
        output.target_timestamp = target_timestamp;
        output.asset_policy = if asset_proof.is_regulated {
            Some(
                batch_data
                    .asset_policies
                    .get(&output_asset_id)
                    .cloned()
                    .ok_or_else(|| {
                        anyhow::anyhow!(
                            "missing asset policy for regulated transfer output asset {}",
                            output_asset_id
                        )
                    })?,
            )
        } else {
            None
        };
        let nonce = *action_nonces.get(&action_index).ok_or_else(|| {
            anyhow::anyhow!("missing compliance nonce for Transfer action {action_index}")
        })?;
        output.set_compliance_details(&recipient_proof.leaf, nonce)?;
    }

    for action in &mut plan.actions {
        match action {
            ActionPlan::Transfer(transfer) => transfer.validate()?,
            ActionPlan::NoteReshape(_)
            | ActionPlan::ValidatorDefinition(_)
            | ActionPlan::IbcAction(_)
            | ActionPlan::ProposalSubmit(_)
            | ActionPlan::ValidatorVote(_)
            | ActionPlan::ShieldedHostWithdrawal(_)
            | ActionPlan::ShieldedIcs20Withdrawal(_)
            | ActionPlan::ComplianceRegisterAsset(_)
            | ActionPlan::ComplianceRegisterUser(_) => {}
        }
    }

    Ok(())
}

async fn enrich_internal_funding_with_compliance<P: ComplianceProofProvider>(
    plan: &mut TransactionPlan,
    provider: &P,
    target_timestamp: u64,
    transfer_nonce: Fr,
) -> Result<()> {
    let Some(fee_funding) = plan.fee_funding.as_mut() else {
        return Ok(());
    };

    let spend_identities = fee_funding
        .transfer
        .spends
        .iter()
        .map(|spend| (spend.note.asset_id(), spend.note.address()))
        .collect::<Vec<_>>();
    let output_identities = fee_funding
        .transfer
        .outputs
        .iter()
        .map(|output| (output.value.asset_id, output.dest_address.clone()))
        .collect::<Vec<_>>();

    let Some(batch_data) =
        fetch_batch_compliance_data(provider, &spend_identities, &output_identities).await?
    else {
        return Ok(());
    };
    let compliance_anchor = batch_data.compliance_anchor;
    let asset_anchor = batch_data.asset_anchor;

    for (spend, (spend_asset_id, spend_address)) in fee_funding
        .transfer
        .spends
        .iter_mut()
        .zip(spend_identities.iter().cloned())
    {
        let asset_proof = batch_data
            .asset_proofs
            .get(&spend_asset_id)
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "compliance provider omitted asset proof for fee-funding spend asset {}",
                    spend_asset_id
                )
            })?;

        let sender_proof = batch_data
            .user_proofs
            .get(&(spend_address.clone(), spend_asset_id))
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "missing user proof for fee funding spend: \
                     user may not be registered for asset {}",
                    spend_asset_id
                )
            })?;

        spend.asset_indexed_leaf = asset_proof.indexed_leaf;
        spend.asset_path = asset_proof.auth_path;
        spend.asset_position = asset_proof.position;
        spend.asset_anchor = asset_anchor;
        spend.compliance_anchor = compliance_anchor;
        spend.compliance_path = sender_proof.auth_path;
        spend.compliance_position = sender_proof.position;
        spend.compliance_leaf = Some(sender_proof.leaf.clone());
        spend.is_regulated = asset_proof.is_regulated;
        spend.target_timestamp = target_timestamp;
        spend.asset_policy = if asset_proof.is_regulated {
            Some(
                batch_data
                    .asset_policies
                    .get(&spend_asset_id)
                    .cloned()
                    .ok_or_else(|| {
                        anyhow::anyhow!(
                            "missing asset policy for regulated fee funding spend asset {}",
                            spend_asset_id
                        )
                    })?,
            )
        } else {
            None
        };
        spend.set_compliance_details()?;
        spend.tx_blinding_nonce = transfer_nonce;
    }

    if !fee_funding.transfer.outputs.is_empty() {
        for (output, (output_asset_id, recipient_address)) in fee_funding
            .transfer
            .outputs
            .iter_mut()
            .zip(output_identities.iter().cloned())
        {
            let asset_proof = batch_data
                .asset_proofs
                .get(&output_asset_id)
                .cloned()
                .ok_or_else(|| {
                    anyhow::anyhow!(
                        "compliance provider omitted asset proof for fee-funding output asset {}",
                        output_asset_id
                    )
                })?;

            let recipient_proof = batch_data
                .user_proofs
                .get(&(recipient_address.clone(), output_asset_id))
                .cloned()
                .ok_or_else(|| {
                    anyhow::anyhow!(
                        "missing user proof for fee funding output: \
                         recipient may not be registered for asset {}",
                        output_asset_id
                    )
                })?;

            output.asset_indexed_leaf = asset_proof.indexed_leaf;
            output.asset_path = asset_proof.auth_path;
            output.asset_position = asset_proof.position;
            output.asset_anchor = asset_anchor;
            output.compliance_anchor = compliance_anchor;
            output.compliance_path = recipient_proof.auth_path;
            output.compliance_position = recipient_proof.position;
            output.is_regulated = asset_proof.is_regulated;
            output.target_timestamp = target_timestamp;
            output.asset_policy = if asset_proof.is_regulated {
                Some(
                    batch_data
                        .asset_policies
                        .get(&output_asset_id)
                        .cloned()
                        .ok_or_else(|| {
                            anyhow::anyhow!(
                                "missing asset policy for regulated fee funding output asset {}",
                                output_asset_id
                            )
                        })?,
                )
            } else {
                None
            };
            output.set_compliance_details(&recipient_proof.leaf, transfer_nonce)?;
        }
    }

    fee_funding.transfer.validate()?;

    Ok(())
}

async fn enrich_shielded_withdrawals_with_compliance<P: ComplianceProofProvider>(
    plan: &mut TransactionPlan,
    provider: &P,
    target_timestamp: u64,
) -> Result<()> {
    let mut spend_locations = Vec::new();

    for (action_index, action) in plan.actions.iter().enumerate() {
        match action {
            ActionPlan::ShieldedIcs20Withdrawal(withdrawal) => {
                for spend_index in 0..withdrawal.spends.len() {
                    spend_locations.push(ShieldedWithdrawalSpendLocation::Ics20 {
                        action_index,
                        spend_index,
                    });
                }
            }
            ActionPlan::ShieldedHostWithdrawal(withdrawal) => {
                for spend_index in 0..withdrawal.spends.len() {
                    spend_locations.push(ShieldedWithdrawalSpendLocation::Host {
                        action_index,
                        spend_index,
                    });
                }
            }
            ActionPlan::Transfer(_)
            | ActionPlan::NoteReshape(_)
            | ActionPlan::ValidatorDefinition(_)
            | ActionPlan::IbcAction(_)
            | ActionPlan::ProposalSubmit(_)
            | ActionPlan::ValidatorVote(_)
            | ActionPlan::ComplianceRegisterAsset(_)
            | ActionPlan::ComplianceRegisterUser(_) => {}
        }
    }

    let spend_identities = spend_locations
        .iter()
        .map(|location| match *location {
            ShieldedWithdrawalSpendLocation::Ics20 {
                action_index,
                spend_index,
            } => {
                let ActionPlan::ShieldedIcs20Withdrawal(withdrawal) = &plan.actions[action_index]
                else {
                    unreachable!()
                };
                let spend = &withdrawal.spends[spend_index];
                (spend.note.asset_id(), spend.note.address())
            }
            ShieldedWithdrawalSpendLocation::Host {
                action_index,
                spend_index,
            } => {
                let ActionPlan::ShieldedHostWithdrawal(withdrawal) = &plan.actions[action_index]
                else {
                    unreachable!()
                };
                let spend = &withdrawal.spends[spend_index];
                (spend.note.asset_id(), spend.note.address())
            }
        })
        .collect::<Vec<_>>();

    let Some(batch_data) = fetch_batch_compliance_data(provider, &spend_identities, &[]).await?
    else {
        return Ok(());
    };
    let compliance_anchor = batch_data.compliance_anchor;
    let asset_anchor = batch_data.asset_anchor;

    for (spend_location, (spend_asset_id, spend_address)) in spend_locations
        .iter()
        .copied()
        .zip(spend_identities.iter().cloned())
    {
        let (action_index, spend_index, withdrawal_kind) = match spend_location {
            ShieldedWithdrawalSpendLocation::Ics20 {
                action_index,
                spend_index,
            } => (action_index, spend_index, "shielded ICS-20 withdrawal"),
            ShieldedWithdrawalSpendLocation::Host {
                action_index,
                spend_index,
            } => (action_index, spend_index, "shielded host withdrawal"),
        };

        let asset_proof = batch_data
            .asset_proofs
            .get(&spend_asset_id)
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "compliance provider omitted asset proof for {} at action {} input {} (asset {})",
                    withdrawal_kind,
                    action_index,
                    spend_index,
                    spend_asset_id
                )
            })?;

        let sender_proof = batch_data
            .user_proofs
            .get(&(spend_address.clone(), spend_asset_id))
            .cloned()
            .ok_or_else(|| {
                anyhow::anyhow!(
                    "missing user proof for {} spend at action {} input {}: \
                     user may not be registered for asset {} \
                     (check compliance registration status)",
                    withdrawal_kind,
                    action_index,
                    spend_index,
                    spend_asset_id
                )
            })?;

        let spend = match (&mut plan.actions[action_index], spend_location) {
            (
                ActionPlan::ShieldedIcs20Withdrawal(withdrawal),
                ShieldedWithdrawalSpendLocation::Ics20 { .. },
            ) => &mut withdrawal.spends[spend_index],
            (
                ActionPlan::ShieldedHostWithdrawal(withdrawal),
                ShieldedWithdrawalSpendLocation::Host { .. },
            ) => &mut withdrawal.spends[spend_index],
            _ => unreachable!(),
        };
        spend.asset_indexed_leaf = asset_proof.indexed_leaf;
        spend.asset_path = asset_proof.auth_path;
        spend.asset_position = asset_proof.position;
        spend.asset_anchor = asset_anchor;
        spend.compliance_anchor = compliance_anchor;
        spend.compliance_path = sender_proof.auth_path;
        spend.compliance_position = sender_proof.position;
        spend.compliance_leaf = Some(sender_proof.leaf.clone());
        spend.is_regulated = asset_proof.is_regulated;
        spend.target_timestamp = target_timestamp;
        spend.set_compliance_details()?;
    }

    for action in &mut plan.actions {
        match action {
            ActionPlan::ShieldedIcs20Withdrawal(withdrawal) => withdrawal.validate()?,
            ActionPlan::ShieldedHostWithdrawal(withdrawal) => withdrawal.validate()?,
            _ => {}
        }
    }

    Ok(())
}

#[cfg(test)]
mod tests {
    use super::{enrich_plan_with_compliance, fresh_transfer_nonce, parse_proto_merkle_path};
    use async_trait::async_trait;
    use decaf377::Fr;
    use rand::{rngs::StdRng, SeedableRng};
    use rand_core::{CryptoRng, Error as RandError, RngCore};
    use shieldd_sdk_asset::{asset, Value, BASE_ASSET_ID};
    use shieldd_sdk_compliance::{
        AssetPolicy, AssetProofData, ComplianceLeaf, ComplianceProofProvider, MerklePath,
        UserProofData,
    };
    use shieldd_sdk_keys::Address;
    use shieldd_sdk_proto::core::component::compliance::v1 as compliance_pb;
    use shieldd_sdk_shielded_pool::{Note, ShieldedInputPlan, ShieldedOutputPlan, TransferPlan};
    use shieldd_sdk_tct::StateCommitment;
    use shieldd_sdk_transaction::{
        plan::{ActionPlan, TransactionPlan},
        FeeFundingPlan,
    };
    use std::collections::BTreeSet;

    struct RepeatingRng;

    impl RngCore for RepeatingRng {
        fn next_u32(&mut self) -> u32 {
            0
        }

        fn next_u64(&mut self) -> u64 {
            0
        }

        fn fill_bytes(&mut self, destination: &mut [u8]) {
            destination.fill(0);
        }

        fn try_fill_bytes(&mut self, destination: &mut [u8]) -> Result<(), RandError> {
            self.fill_bytes(destination);
            Ok(())
        }
    }

    impl CryptoRng for RepeatingRng {}

    struct UnregulatedProofProvider;

    #[async_trait]
    impl ComplianceProofProvider for UnregulatedProofProvider {
        async fn get_compliance_anchor(&self) -> anyhow::Result<StateCommitment> {
            Ok(StateCommitment(decaf377::Fq::from(0u64)))
        }

        async fn get_asset_anchor(&self) -> anyhow::Result<StateCommitment> {
            let (root, _, _, _) = shieldd_sdk_compliance::create_default_imt_proof(BASE_ASSET_ID.0);
            Ok(root)
        }

        async fn get_asset_proof(&self, asset_id: asset::Id) -> anyhow::Result<AssetProofData> {
            let (_, indexed_leaf, auth_path, position) =
                shieldd_sdk_compliance::create_default_imt_proof(asset_id.0);
            Ok(AssetProofData {
                auth_path,
                position,
                indexed_leaf,
                is_regulated: false,
            })
        }

        async fn get_asset_policy(
            &self,
            _asset_id: asset::Id,
        ) -> anyhow::Result<Option<AssetPolicy>> {
            Ok(None)
        }

        async fn get_user_proof(
            &self,
            address: &Address,
            asset_id: asset::Id,
        ) -> anyhow::Result<UserProofData> {
            Ok(UserProofData {
                auth_path: MerklePath::default(),
                position: 0,
                leaf: ComplianceLeaf::synthetic_unregulated(address.clone(), asset_id),
            })
        }
    }

    fn self_transfer_plan(rng: &mut StdRng) -> TransferPlan {
        let sender = Address::dummy(rng);
        let value = Value {
            amount: 100u64.into(),
            asset_id: *BASE_ASSET_ID,
        };
        let note = Note::generate(rng, &sender, value);
        let spend = ShieldedInputPlan::new(rng, note, 0u64.into());
        let mut output = ShieldedOutputPlan::new(rng, value, sender);
        output.compliance_path = spend.compliance_path.clone();
        output.compliance_leaf = spend.compliance_leaf.clone();
        output.is_regulated = spend.is_regulated;
        output.tx_blinding_nonce = spend.tx_blinding_nonce;
        output.compliance_anchor = spend.compliance_anchor;
        output.asset_anchor = spend.asset_anchor;
        output.asset_path = spend.asset_path.clone();
        output.asset_position = spend.asset_position;
        output.asset_indexed_leaf = spend.asset_indexed_leaf.clone();
        output.compliance_position = spend.compliance_position;
        output.target_timestamp = spend.target_timestamp;
        output.asset_policy = spend.asset_policy.clone();
        TransferPlan::from_spend_output(spend, output, Fr::rand(rng))
            .expect("self-transfer plan must be valid")
    }

    #[test]
    fn rpc_merkle_path_parser_requires_canonical_fixed_shape() {
        parse_proto_merkle_path(Some(MerklePath::default().into()), "test_path")
            .expect("canonical fixed-width path");

        parse_proto_merkle_path(None, "test_path").expect_err("missing path must fail");

        let mut short: compliance_pb::MerklePath = MerklePath::default().into();
        short.layers.pop();
        parse_proto_merkle_path(Some(short), "test_path").expect_err("short path must fail");

        let mut noncanonical: compliance_pb::MerklePath = MerklePath::default().into();
        noncanonical.layers[0].siblings[0] = vec![0xff; 32];
        parse_proto_merkle_path(Some(noncanonical), "test_path")
            .expect_err("noncanonical field must fail");
    }

    #[test]
    fn transfer_compliance_nonce_allocator_rejects_cross_action_reuse() {
        let mut used = BTreeSet::new();
        let mut repeating = RepeatingRng;
        fresh_transfer_nonce(&mut repeating, &mut used).expect("first nonce is unused");
        fresh_transfer_nonce(&mut repeating, &mut used)
            .expect_err("a repeated action nonce must fail closed");

        let mut seeded = StdRng::seed_from_u64(0x7368_6965_6c64_645f);
        let mut used = BTreeSet::new();
        for _ in 0..8 {
            fresh_transfer_nonce(&mut seeded, &mut used)
                .expect("independent CSPRNG draws must produce distinct action nonces");
        }
        assert_eq!(used.len(), 8);
    }

    #[tokio::test]
    async fn compliance_enrichment_uses_one_fresh_nonce_per_transfer_action() {
        let mut construction_rng = StdRng::seed_from_u64(7);
        let first = self_transfer_plan(&mut construction_rng);
        let second = self_transfer_plan(&mut construction_rng);
        let fee_funding = self_transfer_plan(&mut construction_rng);
        let mut plan = TransactionPlan {
            actions: vec![ActionPlan::Transfer(first), ActionPlan::Transfer(second)],
            transaction_parameters: Default::default(),
            fee_funding: Some(FeeFundingPlan {
                transfer: fee_funding,
            }),
            memo: None,
            nullifier_window: None,
        };
        let mut enrichment_rng = StdRng::seed_from_u64(11);

        enrich_plan_with_compliance(
            &mut plan,
            &UnregulatedProofProvider,
            &mut enrichment_rng,
            Some(1_700_000_000),
        )
        .await
        .expect("unregulated enrichment must succeed");

        let nonces = plan
            .actions
            .iter()
            .map(|action| {
                let ActionPlan::Transfer(transfer) = action else {
                    panic!("test plan contains only Transfer actions")
                };
                let nonce = transfer.spends[0].tx_blinding_nonce;
                assert_eq!(transfer.outputs[0].tx_blinding_nonce, nonce);
                nonce
            })
            .collect::<Vec<_>>();
        assert_ne!(
            nonces[0], nonces[1],
            "sibling Transfer actions must not reuse compliance encryption randomness"
        );
        let fee_nonce = plan
            .fee_funding
            .as_ref()
            .expect("test plan contains fee funding")
            .transfer
            .spends[0]
            .tx_blinding_nonce;
        assert_eq!(
            plan.fee_funding
                .as_ref()
                .expect("test plan contains fee funding")
                .transfer
                .outputs[0]
                .tx_blinding_nonce,
            fee_nonce,
            "fee-funding spends and outputs must share exactly one action nonce"
        );
        assert!(
            nonces.iter().all(|action_nonce| *action_nonce != fee_nonce),
            "fee funding must not reuse an ordinary Transfer action nonce"
        );
    }
}
