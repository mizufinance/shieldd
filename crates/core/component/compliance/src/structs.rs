use crate::AuditKeys;
use ff::Field;
use group::{Group, GroupEncoding};
use reddsa::{sapling::SpendAuth, Signature, VerificationKey};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::asset;
use shieldd_sdk_crypto::{audit::point_fields, domains, encoding, poseidon};
use shieldd_sdk_crypto::{Fq, Fr, SubgroupPoint};
use shieldd_sdk_keys::{
    ensure_nonidentity_spend_auth_key,
    keys::{IncomingViewingKey, NullifierKey},
    Address,
};
use shieldd_sdk_proto::shieldd::core::component::compliance::v1 as pb;
use shieldd_sdk_proto::DomainType;
use shieldd_sdk_tct::StateCommitment;

pub const AMOUNT_BYTES: usize = 16;
pub const ASSET_ID_BYTES: usize = 32;
pub const GENERATOR_BYTES: usize = 32;
pub const KEY_BYTES: usize = 32;
pub const ADDRESS_BYTES: usize = GENERATOR_BYTES + KEY_BYTES;
pub const EPK_BYTES: usize = 32;
pub const C2_BYTES: usize = 32;
pub const DETECTION_TAG_BYTES: usize = 128;

const ASSET_REGISTRATION_GRANT_DOMAIN: &[u8] = b"shieldd.compliance.asset_registration_grant";
const USER_REGISTRATION_GRANT_DOMAIN: &[u8] = b"shieldd.compliance.user_registration_grant";
const ORBIS_CAPABILITY_CERTIFICATE_DOMAIN: &[u8] =
    b"shieldd.compliance.orbis_capability_certificate";
pub const MAX_CERTIFICATE_TEXT_BYTES: usize = 256;

fn grant_signing_bytes(domain: &[u8], body_bytes: Vec<u8>) -> Vec<u8> {
    let mut bytes = Vec::with_capacity(domain.len() + 1 + body_bytes.len());
    bytes.extend_from_slice(domain);
    bytes.push(shieldd_sdk_crypto::SUITE);
    bytes.extend_from_slice(&body_bytes);
    bytes
}

pub const FQ_BYTES: usize = 32;

const LIFECYCLE_STATUS_BITS: u32 = 3;
const LIFECYCLE_GENERATION_BITS: u32 = 64;

/// Authorization state for one address and regulated asset.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
pub enum UserAssetStatus {
    Active,
    Frozen,
    Seized,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum UserAssetStatusAction {
    Freeze,
    Unfreeze,
}

impl UserAssetStatus {
    pub fn as_field(self) -> Fq {
        Fq::from(match self {
            Self::Active => 1u64,
            Self::Frozen => 2u64,
            Self::Seized => 3u64,
        })
    }

    pub fn validate_transition(self, next: Self) -> anyhow::Result<()> {
        anyhow::ensure!(
            matches!(
                (self, next),
                (Self::Active, Self::Frozen)
                    | (Self::Frozen, Self::Active)
                    | (Self::Frozen, Self::Seized)
            ),
            "illegal user asset status transition {self:?} -> {next:?}"
        );
        Ok(())
    }

    pub fn freeze(self) -> anyhow::Result<Self> {
        anyhow::ensure!(
            self == Self::Active,
            "only an active user asset can be frozen"
        );
        Ok(Self::Frozen)
    }

    pub fn unfreeze(self) -> anyhow::Result<Self> {
        anyhow::ensure!(
            self == Self::Frozen,
            "only a frozen user asset can be unfrozen"
        );
        Ok(Self::Active)
    }

    pub fn seize(self) -> anyhow::Result<Self> {
        anyhow::ensure!(
            self == Self::Frozen,
            "only a frozen user asset can be seized"
        );
        Ok(Self::Seized)
    }
}

impl UserAssetStatusAction {
    pub fn apply(self, current: UserAssetStatus) -> anyhow::Result<UserAssetStatus> {
        match self {
            Self::Freeze => current.freeze(),
            Self::Unfreeze => current.unfreeze(),
        }
    }
}

impl TryFrom<i32> for UserAssetStatus {
    type Error = anyhow::Error;

    fn try_from(value: i32) -> Result<Self, Self::Error> {
        match pb::UserAssetStatus::try_from(value) {
            Ok(pb::UserAssetStatus::Active) => Ok(Self::Active),
            Ok(pb::UserAssetStatus::Frozen) => Ok(Self::Frozen),
            Ok(pb::UserAssetStatus::Seized) => Ok(Self::Seized),
            Ok(pb::UserAssetStatus::Unspecified) => {
                anyhow::bail!("user asset status must be specified")
            }
            Err(_) => anyhow::bail!("unknown user asset status {value}"),
        }
    }
}

impl From<UserAssetStatus> for pb::UserAssetStatus {
    fn from(value: UserAssetStatus) -> Self {
        match value {
            UserAssetStatus::Active => Self::Active,
            UserAssetStatus::Frozen => Self::Frozen,
            UserAssetStatus::Seized => Self::Seized,
        }
    }
}

/// A compliance leaf in the public on-chain registry for regulated assets.
///
/// The leaf authenticates the diversified-DH ring key and
/// regulated nullifier-key commitment for one address and asset.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::ComplianceLeaf", into = "pb::ComplianceLeaf")]
pub struct ComplianceLeaf {
    /// The registered address for compliance.
    pub address: Address,
    /// The asset ID this compliance leaf applies to.
    pub asset_id: asset::Id,
    /// Orbis ring public key evaluated on this address's diversified generator.
    pub rnk_dh_pk: shieldd_sdk_crypto::SubgroupPoint,
    /// Commitment to the regulated nullifier key derivable by the wallet and the RNK derivation ring.
    pub rnk_commitment: Fq,
    /// Current authorization state for this address and asset.
    pub status: UserAssetStatus,
    /// Monotonic generation of the latest freeze.
    pub freeze_generation: u64,
    /// Height where the current freeze began, or zero while active.
    pub frozen_since_height: u64,
}

pub fn compliance_nullifier_key_commitment(rnk: Fq) -> Fq {
    poseidon::hash(domains::REGULATED_NULLIFIER_COMMITMENT, &[rnk])
}

/// Derive the canonical regulated nullifier key through wallet-Orbis static DH.
pub fn derive_regulated_nullifier_key(
    ivk: &IncomingViewingKey,
    address: &Address,
    asset_id: asset::Id,
    ring_pk: SubgroupPoint,
    rnk_dh_pk: SubgroupPoint,
) -> anyhow::Result<Fq> {
    anyhow::ensure!(ivk.views_address(address), "IVK does not view the address");
    anyhow::ensure!(
        !bool::from(ring_pk.is_identity()),
        "ring_pk must be nonidentity"
    );
    anyhow::ensure!(
        !bool::from(rnk_dh_pk.is_identity()),
        "rnk_dh_pk must be nonidentity"
    );
    let shared = ivk
        .key_agreement_with_element(rnk_dh_pk)
        .map_err(|_| anyhow::anyhow!("invalid regulated nullifier DH point"))?;
    let shared = encoding::nonidentity(&shared)?;
    let mut fields = point_fields(&shared).to_vec();
    fields.extend(point_fields(address.diversified_generator()));
    fields.extend(point_fields(address.transmission_point()));
    fields.push(asset_id.0);
    fields.extend(point_fields(&ring_pk));
    Ok(poseidon::hash(domains::REGULATED_NULLIFIER_KEY, &fields))
}

/// Select the wallet or address-and-asset scoped nullifier key for an asset.
pub fn effective_nullifier_key(
    wallet_nk: NullifierKey,
    ivk: &IncomingViewingKey,
    address: &Address,
    asset_id: asset::Id,
    ring_pk: SubgroupPoint,
    rnk_dh_pk: SubgroupPoint,
    is_regulated: bool,
) -> anyhow::Result<NullifierKey> {
    if is_regulated {
        Ok(NullifierKey(derive_regulated_nullifier_key(
            ivk, address, asset_id, ring_pk, rnk_dh_pk,
        )?))
    } else {
        Ok(wallet_nk)
    }
}

impl ComplianceLeaf {
    /// Create a registered leaf from its public cryptographic fields.
    pub fn registered(
        address: Address,
        asset_id: asset::Id,
        rnk_dh_pk: shieldd_sdk_crypto::SubgroupPoint,
        rnk_commitment: Fq,
    ) -> anyhow::Result<Self> {
        anyhow::ensure!(
            rnk_commitment != Fq::from(0u64),
            "rnk commitment must be nonzero"
        );
        anyhow::ensure!(
            !bool::from(rnk_dh_pk.is_identity()),
            "rnk_dh_pk must be nonidentity"
        );
        Ok(Self {
            address,
            asset_id,
            rnk_dh_pk,
            rnk_commitment,
            status: UserAssetStatus::Active,
            freeze_generation: 0,
            frozen_since_height: 0,
        })
    }

    /// Create a registered leaf by committing a locally derived RNK.
    pub fn registered_from_rnk(
        address: Address,
        asset_id: asset::Id,
        rnk_dh_pk: shieldd_sdk_crypto::SubgroupPoint,
        rnk: Fq,
    ) -> anyhow::Result<Self> {
        anyhow::ensure!(
            rnk != Fq::from(0u64),
            "regulated nullifier key must be nonzero"
        );
        Self::registered(
            address,
            asset_id,
            rnk_dh_pk,
            compliance_nullifier_key_commitment(rnk),
        )
    }

    #[cfg(any(test, feature = "test-helpers"))]
    pub fn registered_for_test(address: Address, asset_id: asset::Id) -> Self {
        Self::registered_from_rnk(
            address,
            asset_id,
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            Fq::from(1u64),
        )
        .expect("fixed test compliance keys are valid")
    }

    /// Create the explicit synthetic leaf used only for unregulated asset proofs.
    pub fn synthetic_unregulated(address: Address, asset_id: asset::Id) -> Self {
        Self {
            address,
            asset_id,
            rnk_dh_pk: *crate::UNREGULATED_RING,
            rnk_commitment: compliance_nullifier_key_commitment(Fq::ONE),
            status: UserAssetStatus::Active,
            freeze_generation: 0,
            frozen_since_height: 0,
        }
    }

    #[cfg(any(test, feature = "test-helpers"))]
    pub fn with_status_for_test(mut self, status: UserAssetStatus) -> Self {
        self.status = status;
        if matches!(status, UserAssetStatus::Frozen | UserAssetStatus::Seized) {
            self.freeze_generation = 1;
            self.frozen_since_height = 1;
        }
        self
    }

    pub fn validate_lifecycle(&self) -> anyhow::Result<()> {
        match self.status {
            UserAssetStatus::Active => anyhow::ensure!(
                self.frozen_since_height == 0,
                "active compliance leaf cannot have a frozen-since height"
            ),
            UserAssetStatus::Frozen | UserAssetStatus::Seized => {
                anyhow::ensure!(
                    self.freeze_generation > 0,
                    "frozen or seized compliance leaf must have a freeze generation"
                );
                anyhow::ensure!(
                    self.frozen_since_height > 0,
                    "frozen or seized compliance leaf must have a frozen-since height"
                );
            }
        }
        Ok(())
    }

    pub fn apply_status_action(
        &mut self,
        action: UserAssetStatusAction,
        source_height: u64,
    ) -> anyhow::Result<()> {
        let next = action.apply(self.status)?;
        match action {
            UserAssetStatusAction::Freeze => {
                anyhow::ensure!(source_height > 0, "freeze source height must be nonzero");
                self.freeze_generation = self
                    .freeze_generation
                    .checked_add(1)
                    .ok_or_else(|| anyhow::anyhow!("freeze generation overflow"))?;
                self.frozen_since_height = source_height;
            }
            UserAssetStatusAction::Unfreeze => {
                self.frozen_since_height = 0;
            }
        }
        self.status = next;
        self.validate_lifecycle()
    }

    /// Injective field encoding authenticated as the leaf's lifecycle value.
    pub fn lifecycle_field(&self) -> Fq {
        let generation_scale = Fq::from(2u64).pow(&[LIFECYCLE_STATUS_BITS as u64, 0, 0, 0]);
        let height_scale = Fq::from(2u64).pow(&[
            (LIFECYCLE_STATUS_BITS + LIFECYCLE_GENERATION_BITS) as u64,
            0,
            0,
            0,
        ]);
        self.status.as_field()
            + generation_scale * Fq::from(self.freeze_generation)
            + height_scale * Fq::from(self.frozen_since_height)
    }

    pub fn validate(&self) -> anyhow::Result<()> {
        anyhow::ensure!(
            !bool::from(self.rnk_dh_pk.is_identity()),
            "rnk_dh_pk must be nonidentity"
        );
        anyhow::ensure!(
            self.rnk_commitment != Fq::from(0u64),
            "rnk commitment must be nonzero"
        );
        self.validate_lifecycle()
    }

    /// Create the Poseidon commitment.
    pub fn commit(&self) -> StateCommitment {
        let mut fields = point_fields(self.address.diversified_generator()).to_vec();
        fields.extend(point_fields(self.address.transmission_point()));
        fields.push(self.asset_id.0);
        fields.extend(point_fields(&self.rnk_dh_pk));
        fields.extend([self.rnk_commitment, self.lifecycle_field()]);
        StateCommitment(poseidon::hash(domains::COMPLIANCE_LEAF, &fields))
    }
}

impl DomainType for ComplianceLeaf {
    type Proto = pb::ComplianceLeaf;
}

impl TryFrom<pb::ComplianceLeaf> for ComplianceLeaf {
    type Error = anyhow::Error;

    fn try_from(value: pb::ComplianceLeaf) -> Result<Self, Self::Error> {
        let rnk_dh_pk_bytes: [u8; 32] = value
            .rnk_dh_pk
            .try_into()
            .map_err(|_| anyhow::anyhow!("rnk_dh_pk must be 32 bytes"))?;
        let rnk_dh_pk = shieldd_sdk_crypto::encoding::point(&rnk_dh_pk_bytes)
            .map_err(|_| anyhow::anyhow!("invalid rnk_dh_pk encoding"))?;
        let rnk_commitment_bytes: [u8; 32] = value
            .rnk_commitment
            .try_into()
            .map_err(|_| anyhow::anyhow!("rnk_commitment must be 32 bytes"))?;
        let rnk_commitment = shieldd_sdk_crypto::encoding::field(&rnk_commitment_bytes)
            .map_err(|_| anyhow::anyhow!("invalid rnk_commitment field element"))?;
        let address = value
            .address
            .ok_or_else(|| anyhow::anyhow!("missing address"))?
            .try_into()?;
        let leaf = ComplianceLeaf {
            address,
            asset_id: value
                .asset_id
                .ok_or_else(|| anyhow::anyhow!("missing asset_id"))?
                .try_into()?,
            rnk_dh_pk,
            rnk_commitment,
            status: value.status.try_into()?,
            freeze_generation: value.freeze_generation,
            frozen_since_height: value.frozen_since_height,
        };
        leaf.validate()?;
        Ok(leaf)
    }
}

impl From<ComplianceLeaf> for pb::ComplianceLeaf {
    fn from(value: ComplianceLeaf) -> pb::ComplianceLeaf {
        pb::ComplianceLeaf {
            address: Some(value.address.into()),
            asset_id: Some(value.asset_id.into()),
            rnk_dh_pk: value.rnk_dh_pk.to_bytes().to_vec(),
            rnk_commitment: value.rnk_commitment.to_bytes().to_vec(),
            status: pb::UserAssetStatus::from(value.status) as i32,
            freeze_generation: value.freeze_generation,
            frozen_since_height: value.frozen_since_height,
        }
    }
}

/// Per-asset issuer parameters.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct AssetParams {
    /// Issuer's detection key public (curve point).
    pub dk_pub: shieldd_sdk_crypto::SubgroupPoint,
    /// Daily undisclosed-volume limit (u128 to cover the full amount range).
    pub daily_volume_limit: u128,
    /// Direct IBC routes allowed for this asset. Empty = IBC blocked.
    pub allowed_ibc_routes: Vec<IbcRoute>,
    /// External origin for regulated voucher assets.
    pub ibc_origin: Option<IbcAssetOrigin>,
}

/// A direct ICS-20 route bound to local committed IBC identifiers.
#[derive(Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Serialize, Deserialize)]
#[serde(try_from = "pb::IbcRoute", into = "pb::IbcRoute")]
pub struct IbcRoute {
    pub local_port: String,
    pub local_channel: String,
    pub connection_id: String,
    pub counterparty_port: String,
    pub counterparty_channel: String,
}

impl IbcRoute {
    pub fn transfer(
        local_channel: impl Into<String>,
        connection_id: impl Into<String>,
        counterparty_channel: impl Into<String>,
    ) -> Self {
        Self {
            local_port: "transfer".to_string(),
            local_channel: local_channel.into(),
            connection_id: connection_id.into(),
            counterparty_port: "transfer".to_string(),
            counterparty_channel: counterparty_channel.into(),
        }
    }

    pub fn canonical_key(&self) -> String {
        [
            self.local_port.as_str(),
            self.local_channel.as_str(),
            self.connection_id.as_str(),
            self.counterparty_port.as_str(),
            self.counterparty_channel.as_str(),
        ]
        .join("\0")
    }
}

impl DomainType for IbcRoute {
    type Proto = pb::IbcRoute;
}

impl TryFrom<pb::IbcRoute> for IbcRoute {
    type Error = anyhow::Error;

    fn try_from(value: pb::IbcRoute) -> Result<Self, Self::Error> {
        anyhow::ensure!(!value.local_port.is_empty(), "missing local_port");
        anyhow::ensure!(!value.local_channel.is_empty(), "missing local_channel");
        anyhow::ensure!(!value.connection_id.is_empty(), "missing connection_id");
        anyhow::ensure!(
            !value.counterparty_port.is_empty(),
            "missing counterparty_port"
        );
        anyhow::ensure!(
            !value.counterparty_channel.is_empty(),
            "missing counterparty_channel"
        );
        Ok(Self {
            local_port: value.local_port,
            local_channel: value.local_channel,
            connection_id: value.connection_id,
            counterparty_port: value.counterparty_port,
            counterparty_channel: value.counterparty_channel,
        })
    }
}

impl From<IbcRoute> for pb::IbcRoute {
    fn from(value: IbcRoute) -> Self {
        Self {
            local_port: value.local_port,
            local_channel: value.local_channel,
            connection_id: value.connection_id,
            counterparty_port: value.counterparty_port,
            counterparty_channel: value.counterparty_channel,
        }
    }
}

/// External origin for a regulated ICS-20 voucher asset.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::IbcAssetOrigin", into = "pb::IbcAssetOrigin")]
pub struct IbcAssetOrigin {
    pub route: IbcRoute,
    pub base_denom: String,
}

impl IbcAssetOrigin {
    pub fn canonical_key(&self) -> String {
        format!("{}\0{}", self.route.canonical_key(), self.base_denom)
    }
}

impl DomainType for IbcAssetOrigin {
    type Proto = pb::IbcAssetOrigin;
}

impl TryFrom<pb::IbcAssetOrigin> for IbcAssetOrigin {
    type Error = anyhow::Error;

    fn try_from(value: pb::IbcAssetOrigin) -> Result<Self, Self::Error> {
        anyhow::ensure!(!value.base_denom.is_empty(), "missing base_denom");
        Ok(Self {
            route: value
                .route
                .ok_or_else(|| anyhow::anyhow!("missing origin route"))?
                .try_into()?,
            base_denom: value.base_denom,
        })
    }
}

impl From<IbcAssetOrigin> for pb::IbcAssetOrigin {
    fn from(value: IbcAssetOrigin) -> Self {
        Self {
            route: Some(value.route.into()),
            base_denom: value.base_denom,
        }
    }
}

fn canonical_routes(mut routes: Vec<IbcRoute>) -> Vec<IbcRoute> {
    routes.sort();
    routes.dedup();
    routes
}

pub fn canonical_route_policy_string(
    origin: &Option<IbcAssetOrigin>,
    routes: &[IbcRoute],
) -> String {
    let mut sorted = routes.to_vec();
    sorted.sort();
    let route_part = sorted
        .iter()
        .map(IbcRoute::canonical_key)
        .collect::<Vec<_>>()
        .join("\0\0");
    let origin_part = origin
        .as_ref()
        .map(IbcAssetOrigin::canonical_key)
        .unwrap_or_default();
    format!("origin:{origin_part}\0routes:{route_part}")
}

/// Orbis ring binding data.
#[derive(Clone, Debug, PartialEq, Eq)]
pub struct RingData {
    pub audit_keys: AuditKeys,
    /// Orbis DKG ring identifier.
    pub ring_id: String,
    /// Aggregate ring public key (sk_ring × G).
    pub ring_pk: shieldd_sdk_crypto::SubgroupPoint,
    /// Vera policy ID.
    pub policy_id: String,
    /// ACP permission name.
    pub permission: String,
    /// ACP resource type.
    pub resource: String,
}

/// Asset-specific compliance policy stored on-chain.
///
/// Issuer parameters and ring data enter the IMT through `IndexedLeaf::from_policy`.
/// Registration and seizure authority keys are host-validated state, outside that leaf.
#[derive(Clone, Debug, PartialEq)]
pub struct AssetPolicy {
    pub params: AssetParams,
    pub ring: RingData,
    pub registration_authority_vk: Option<VerificationKey<SpendAuth>>,
    pub seizure_authority_vk: Option<VerificationKey<SpendAuth>>,
}

const ASSET_POLICY_STORAGE_MAGIC: &[u8; 4] = b"ASP5";

impl AssetPolicy {
    /// Create a new asset policy.
    pub fn new(
        dk_pub: shieldd_sdk_crypto::SubgroupPoint,
        daily_volume_limit: u128,
        allowed_ibc_routes: Vec<IbcRoute>,
        ibc_origin: Option<IbcAssetOrigin>,
        ring_id: String,
        ring_pk: shieldd_sdk_crypto::SubgroupPoint,
        policy_id: String,
        permission: String,
        resource: String,
        audit_keys: AuditKeys,
    ) -> Self {
        Self {
            params: AssetParams {
                dk_pub,
                daily_volume_limit,
                allowed_ibc_routes: canonical_routes(allowed_ibc_routes),
                ibc_origin,
            },
            ring: RingData {
                audit_keys,
                ring_id,
                ring_pk,
                policy_id,
                permission,
                resource,
            },
            registration_authority_vk: None,
            seizure_authority_vk: None,
        }
    }

    pub fn with_registration_authority(mut self, vk: VerificationKey<SpendAuth>) -> Self {
        self.registration_authority_vk = Some(vk);
        self
    }

    pub fn with_seizure_authority(mut self, vk: VerificationKey<SpendAuth>) -> Self {
        self.seizure_authority_vk = Some(vk);
        self
    }

    pub fn replace_allowed_ibc_routes(&mut self, routes: Vec<IbcRoute>) {
        self.params.allowed_ibc_routes = canonical_routes(routes);
    }

    pub fn validate_crypto_keys(&self) -> anyhow::Result<()> {
        self.ring.audit_keys.validate()?;
        anyhow::ensure!(
            !bool::from(self.params.dk_pub.is_identity()),
            "asset policy detection key must not be the identity"
        );
        anyhow::ensure!(
            !bool::from(self.ring.ring_pk.is_identity()),
            "asset policy ring key must not be the identity"
        );
        if let Some(registration_authority_vk) = &self.registration_authority_vk {
            ensure_nonidentity_spend_auth_key(
                registration_authority_vk,
                "compliance registration authority key",
            )?;
        }
        if let Some(seizure_authority_vk) = &self.seizure_authority_vk {
            ensure_nonidentity_spend_auth_key(
                seizure_authority_vk,
                "compliance seizure authority key",
            )?;
        }
        Ok(())
    }

    pub fn validate_regulated(&self) -> anyhow::Result<()> {
        self.ring.audit_keys.validate_registered()?;
        self.validate_crypto_keys()?;
        let keys = &self.ring.audit_keys;
        for key in [keys.payload, keys.checking] {
            anyhow::ensure!(
                key != self.ring.ring_pk && key != self.params.dk_pub,
                "audit encryption keys must be separate from issuer and ring identity keys"
            );
        }
        for (name, value) in [
            ("ring_id", self.ring.ring_id.as_str()),
            ("policy_id", self.ring.policy_id.as_str()),
            ("permission", self.ring.permission.as_str()),
            ("resource", self.ring.resource.as_str()),
        ] {
            anyhow::ensure!(
                !value.is_empty() && value.len() <= MAX_CERTIFICATE_TEXT_BYTES,
                "regulated asset {name} must contain 1 to {MAX_CERTIFICATE_TEXT_BYTES} bytes"
            );
        }
        anyhow::ensure!(
            self.registration_authority_vk.is_some(),
            "regulated asset requires a registration authority"
        );
        anyhow::ensure!(
            self.seizure_authority_vk.is_some(),
            "regulated asset requires a seizure authority"
        );
        Ok(())
    }

    pub fn permits_ibc_route(&self, route: &IbcRoute) -> bool {
        self.params.allowed_ibc_routes.binary_search(route).is_ok()
    }

    #[cfg(any(test, feature = "test-helpers"))]
    pub fn for_test(
        dk_pub: shieldd_sdk_crypto::SubgroupPoint,
        daily_volume_limit: u128,
        ring_pk: shieldd_sdk_crypto::SubgroupPoint,
    ) -> Self {
        let authority_sk =
            reddsa::SigningKey::<SpendAuth>::try_from(Fr::from(1u64).to_bytes()).unwrap();
        let authority_vk = VerificationKey::from(&authority_sk);
        Self::new(
            dk_pub,
            daily_volume_limit,
            vec![],
            None,
            "test-ring".to_owned(),
            ring_pk,
            "test-policy".to_owned(),
            "read".to_owned(),
            "document".to_owned(),
            crate::audit_keys::test_keys(),
        )
        .with_registration_authority(authority_vk)
        .with_seizure_authority(authority_vk)
    }

    /// Create a default policy for unregulated assets.
    ///
    /// Uses protocol sink keys for dk_pub/ring_pk and an unlimited daily volume.
    pub fn default_unregulated() -> Self {
        Self {
            params: AssetParams {
                dk_pub: *crate::crypto::UNREGULATED_DETECTION,
                daily_volume_limit: u128::MAX,
                allowed_ibc_routes: vec![],
                ibc_origin: None,
            },
            ring: RingData {
                ring_id: String::new(),
                ring_pk: *crate::crypto::UNREGULATED_RING,
                audit_keys: AuditKeys::unregulated(),
                policy_id: String::new(),
                permission: String::new(),
                resource: String::new(),
            },
            registration_authority_vk: None,
            seizure_authority_vk: None,
        }
    }

    /// Serialize to bytes for storage.
    ///
    /// Format starts with the asset-policy magic; any other prefix fails closed.
    ///         [ring_id_len: 2] [ring_id bytes]
    ///         [policy_id_len: 2] [policy_id bytes]
    ///         [permission_len: 2] [permission bytes]
    ///         [resource_len: 2] [resource bytes]
    pub fn to_bytes(&self) -> anyhow::Result<Vec<u8>> {
        self.validate_crypto_keys()?;
        let mut bytes = Vec::with_capacity(128);
        bytes.extend_from_slice(ASSET_POLICY_STORAGE_MAGIC);
        // AssetParams
        bytes.extend_from_slice(&self.params.dk_pub.to_bytes());
        bytes.extend_from_slice(&self.params.daily_volume_limit.to_le_bytes());
        // RingData - ring_pk
        bytes.extend_from_slice(&self.ring.ring_pk.to_bytes());
        bytes.extend_from_slice(&self.ring.audit_keys.to_bytes());
        fn write_string(bytes: &mut Vec<u8>, s: &str, field: &str) -> anyhow::Result<()> {
            let len = u16::try_from(s.len())
                .map_err(|_| anyhow::anyhow!("{field} too long: {} bytes", s.len()))?;
            bytes.extend_from_slice(&len.to_le_bytes());
            bytes.extend_from_slice(s.as_bytes());
            Ok(())
        }
        fn write_route(bytes: &mut Vec<u8>, route: &IbcRoute) -> anyhow::Result<()> {
            write_string(bytes, &route.local_port, "local_port")?;
            write_string(bytes, &route.local_channel, "local_channel")?;
            write_string(bytes, &route.connection_id, "connection_id")?;
            write_string(bytes, &route.counterparty_port, "counterparty_port")?;
            write_string(bytes, &route.counterparty_channel, "counterparty_channel")
        }
        let count = u16::try_from(self.params.allowed_ibc_routes.len()).map_err(|_| {
            anyhow::anyhow!(
                "too many allowed IBC routes: {}",
                self.params.allowed_ibc_routes.len()
            )
        })?;
        bytes.extend_from_slice(&count.to_le_bytes());
        for route in &self.params.allowed_ibc_routes {
            write_route(&mut bytes, route)?;
        }
        match &self.params.ibc_origin {
            Some(origin) => {
                bytes.push(1);
                write_route(&mut bytes, &origin.route)?;
                write_string(&mut bytes, &origin.base_denom, "base_denom")?;
            }
            None => bytes.push(0),
        }
        // String fields
        write_string(&mut bytes, &self.ring.ring_id, "ring_id")?;
        write_string(&mut bytes, &self.ring.policy_id, "policy_id")?;
        write_string(&mut bytes, &self.ring.permission, "permission")?;
        write_string(&mut bytes, &self.ring.resource, "resource")?;
        if let Some(vk) = &self.registration_authority_vk {
            bytes.push(1);
            bytes.extend_from_slice(&<[u8; 32]>::from(*vk));
        } else {
            bytes.push(0);
        }
        if let Some(vk) = &self.seizure_authority_vk {
            bytes.push(1);
            bytes.extend_from_slice(&<[u8; 32]>::from(*vk));
        } else {
            bytes.push(0);
        }
        Ok(bytes)
    }

    /// Deserialize from bytes.
    pub fn from_bytes(bytes: &[u8]) -> anyhow::Result<Self> {
        if bytes.len() < ASSET_POLICY_STORAGE_MAGIC.len() + 80 + AuditKeys::BYTES {
            anyhow::bail!(
                "invalid AssetPolicy length: expected asset-policy header and body, got {}",
                bytes.len()
            );
        }
        anyhow::ensure!(
            &bytes[..ASSET_POLICY_STORAGE_MAGIC.len()] == ASSET_POLICY_STORAGE_MAGIC,
            "unsupported AssetPolicy storage encoding"
        );
        let mut offset = ASSET_POLICY_STORAGE_MAGIC.len();
        let dk_pub_bytes: [u8; 32] = bytes[offset..offset + 32].try_into()?;
        offset += 32;
        let dk_pub = shieldd_sdk_crypto::encoding::point(&dk_pub_bytes)
            .map_err(|_| anyhow::anyhow!("invalid dk_pub encoding"))?;
        let daily_volume_limit = u128::from_le_bytes(bytes[offset..offset + 16].try_into()?);
        offset += 16;
        let ring_pk_bytes: [u8; 32] = bytes[offset..offset + 32].try_into()?;
        offset += 32;
        let ring_pk = shieldd_sdk_crypto::encoding::point(&ring_pk_bytes)
            .map_err(|_| anyhow::anyhow!("invalid ring_pk encoding"))?;

        let audit_keys = AuditKeys::from_bytes(&bytes[offset..offset + AuditKeys::BYTES])?;
        offset += AuditKeys::BYTES;

        fn read_string(bytes: &[u8], offset: &mut usize, field: &str) -> anyhow::Result<String> {
            if *offset + 2 > bytes.len() {
                anyhow::bail!("missing {field}");
            }
            let len = u16::from_le_bytes(bytes[*offset..*offset + 2].try_into()?) as usize;
            *offset += 2;
            if *offset + len > bytes.len() {
                anyhow::bail!("truncated {field}");
            }
            let s = std::str::from_utf8(&bytes[*offset..*offset + len])
                .map_err(|_| anyhow::anyhow!("invalid UTF-8 in {field}"))?;
            *offset += len;
            Ok(s.to_string())
        }
        fn read_route(bytes: &[u8], offset: &mut usize) -> anyhow::Result<IbcRoute> {
            Ok(IbcRoute {
                local_port: read_string(bytes, offset, "local_port")?,
                local_channel: read_string(bytes, offset, "local_channel")?,
                connection_id: read_string(bytes, offset, "connection_id")?,
                counterparty_port: read_string(bytes, offset, "counterparty_port")?,
                counterparty_channel: read_string(bytes, offset, "counterparty_channel")?,
            })
        }

        if offset + 2 > bytes.len() {
            anyhow::bail!("missing allowed_ibc_routes count");
        }
        let count = u16::from_le_bytes(bytes[offset..offset + 2].try_into()?) as usize;
        offset += 2;
        let mut allowed_ibc_routes = Vec::with_capacity(count);
        for _ in 0..count {
            allowed_ibc_routes.push(read_route(bytes, &mut offset)?);
        }
        allowed_ibc_routes = canonical_routes(allowed_ibc_routes);

        if offset >= bytes.len() {
            anyhow::bail!("missing ibc_origin flag");
        }
        let has_origin = bytes[offset];
        offset += 1;
        let ibc_origin = match has_origin {
            0 => None,
            1 => Some(IbcAssetOrigin {
                route: read_route(bytes, &mut offset)?,
                base_denom: read_string(bytes, &mut offset, "base_denom")?,
            }),
            _ => anyhow::bail!("invalid ibc_origin flag: {has_origin}"),
        };

        let ring_id = read_string(bytes, &mut offset, "ring_id")?;
        let policy_id = read_string(bytes, &mut offset, "policy_id")?;
        let permission = read_string(bytes, &mut offset, "permission")?;
        let resource = read_string(bytes, &mut offset, "resource")?;
        if offset >= bytes.len() {
            anyhow::bail!("missing registration_authority_vk flag");
        }
        let has_vk = bytes[offset];
        offset += 1;
        let registration_authority_vk = if has_vk == 0 {
            None
        } else if has_vk == 1 {
            if offset + 32 > bytes.len() {
                anyhow::bail!("truncated registration_authority_vk");
            }
            let vk = VerificationKey::<SpendAuth>::try_from(<[u8; 32]>::try_from(
                &bytes[offset..offset + 32],
            )?)
            .map_err(|_| anyhow::anyhow!("invalid registration_authority_vk"))?;
            offset += 32;
            Some(vk)
        } else {
            anyhow::bail!("invalid registration_authority_vk flag: {has_vk}");
        };
        if offset >= bytes.len() {
            anyhow::bail!("missing seizure_authority_vk flag");
        }
        let has_vk = bytes[offset];
        offset += 1;
        let seizure_authority_vk = if has_vk == 0 {
            None
        } else if has_vk == 1 {
            if offset + 32 > bytes.len() {
                anyhow::bail!("truncated seizure_authority_vk");
            }
            let vk = VerificationKey::<SpendAuth>::try_from(<[u8; 32]>::try_from(
                &bytes[offset..offset + 32],
            )?)
            .map_err(|_| anyhow::anyhow!("invalid seizure_authority_vk"))?;
            offset += 32;
            Some(vk)
        } else {
            anyhow::bail!("invalid seizure_authority_vk flag: {has_vk}");
        };
        if offset != bytes.len() {
            anyhow::bail!("trailing bytes after AssetPolicy");
        }

        let policy = Self {
            params: AssetParams {
                dk_pub,
                daily_volume_limit,
                allowed_ibc_routes,
                ibc_origin,
            },
            ring: RingData {
                ring_id,
                ring_pk,
                audit_keys,
                policy_id,
                permission,
                resource,
            },
            registration_authority_vk,
            seizure_authority_vk,
        };
        policy.validate_crypto_keys()?;
        Ok(policy)
    }
}

// Proto conversion for AssetPolicy
impl DomainType for AssetPolicy {
    type Proto = pb::AssetPolicy;
}

impl TryFrom<pb::AssetPolicy> for AssetPolicy {
    type Error = anyhow::Error;

    fn try_from(value: pb::AssetPolicy) -> Result<Self, Self::Error> {
        if value.dk_pub.is_empty() {
            anyhow::bail!("missing dk_pub");
        }
        let bytes: [u8; 32] = value
            .dk_pub
            .try_into()
            .map_err(|_| anyhow::anyhow!("dk_pub must be 32 bytes"))?;
        let dk_pub = shieldd_sdk_crypto::encoding::point(&bytes)
            .map_err(|_| anyhow::anyhow!("invalid dk_pub encoding"))?;

        if value.daily_volume_limit.is_empty() {
            anyhow::bail!("missing daily_volume_limit");
        }
        let bytes: [u8; 16] = value.daily_volume_limit.try_into().map_err(|v: Vec<u8>| {
            anyhow::anyhow!("daily_volume_limit must be 16 bytes, got {}", v.len())
        })?;
        let daily_volume_limit = u128::from_le_bytes(bytes);

        if value.ring_pk.is_empty() {
            anyhow::bail!("missing ring_pk");
        }
        let bytes: [u8; 32] = value
            .ring_pk
            .try_into()
            .map_err(|_| anyhow::anyhow!("ring_pk must be 32 bytes"))?;
        let ring_pk = shieldd_sdk_crypto::encoding::point(&bytes)
            .map_err(|_| anyhow::anyhow!("invalid ring_pk encoding"))?;
        let registration_authority_vk = value
            .registration_authority_vk
            .map(TryInto::try_into)
            .transpose()
            .map_err(|_| anyhow::anyhow!("invalid registration_authority_vk"))?;
        let seizure_authority_vk = value
            .seizure_authority_vk
            .map(TryInto::try_into)
            .transpose()
            .map_err(|_| anyhow::anyhow!("invalid seizure_authority_vk"))?;
        let allowed_ibc_routes = value
            .allowed_ibc_routes
            .into_iter()
            .map(TryInto::try_into)
            .collect::<anyhow::Result<Vec<_>>>()?;
        let ibc_origin = value.ibc_origin.map(TryInto::try_into).transpose()?;

        let policy = AssetPolicy {
            params: AssetParams {
                dk_pub,
                daily_volume_limit,
                allowed_ibc_routes: canonical_routes(allowed_ibc_routes),
                ibc_origin,
            },
            ring: RingData {
                ring_id: value.ring_id,
                audit_keys: AuditKeys::from_bytes(&value.audit_keys)?,
                ring_pk,
                policy_id: value.policy_id,
                permission: value.permission,
                resource: value.resource,
            },
            registration_authority_vk,
            seizure_authority_vk,
        };
        policy.validate_crypto_keys()?;
        Ok(policy)
    }
}

impl From<AssetPolicy> for pb::AssetPolicy {
    fn from(value: AssetPolicy) -> pb::AssetPolicy {
        pb::AssetPolicy {
            dk_pub: value.params.dk_pub.to_bytes().to_vec(),
            daily_volume_limit: value.params.daily_volume_limit.to_le_bytes().to_vec(),
            allowed_ibc_routes: value
                .params
                .allowed_ibc_routes
                .into_iter()
                .map(Into::into)
                .collect(),
            ring_id: value.ring.ring_id,
            ring_pk: value.ring.ring_pk.to_bytes().to_vec(),
            audit_keys: value.ring.audit_keys.to_bytes().to_vec(),
            policy_id: value.ring.policy_id,
            permission: value.ring.permission,
            resource: value.ring.resource,
            registration_authority_vk: value.registration_authority_vk.map(Into::into),
            seizure_authority_vk: value.seizure_authority_vk.map(Into::into),
            ibc_origin: value.params.ibc_origin.map(Into::into),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
#[serde(
    try_from = "pb::AssetRegistrationGrantBody",
    into = "pb::AssetRegistrationGrantBody"
)]
pub struct AssetRegistrationGrantBody {
    pub audit_keys: Option<AuditKeys>,
    pub asset_id: asset::Id,
    pub is_regulated: bool,
    pub dk_pub: Option<shieldd_sdk_crypto::SubgroupPoint>,
    pub daily_volume_limit: Option<u128>,
    pub allowed_ibc_routes: Vec<IbcRoute>,
    pub ibc_origin: Option<IbcAssetOrigin>,
    pub ring_pk: Option<shieldd_sdk_crypto::SubgroupPoint>,
    pub ring_id: String,
    pub policy_id: String,
    pub permission: String,
    pub resource: String,
    pub registration_authority_vk: Option<VerificationKey<SpendAuth>>,
    pub seizure_authority_vk: Option<VerificationKey<SpendAuth>>,
    pub valid_until_unix: u64,
}

impl DomainType for AssetRegistrationGrantBody {
    type Proto = pb::AssetRegistrationGrantBody;
}

impl AssetRegistrationGrantBody {
    pub fn signing_bytes(&self) -> Vec<u8> {
        grant_signing_bytes(ASSET_REGISTRATION_GRANT_DOMAIN, self.encode_to_vec())
    }

    pub fn validate_authorization_keys(&self) -> anyhow::Result<()> {
        if let Some(registration_authority_vk) = &self.registration_authority_vk {
            ensure_nonidentity_spend_auth_key(
                registration_authority_vk,
                "compliance registration authority key",
            )?;
        }
        if let Some(seizure_authority_vk) = &self.seizure_authority_vk {
            ensure_nonidentity_spend_auth_key(
                seizure_authority_vk,
                "compliance seizure authority key",
            )?;
        }
        Ok(())
    }
}

impl TryFrom<pb::AssetRegistrationGrantBody> for AssetRegistrationGrantBody {
    type Error = anyhow::Error;

    fn try_from(value: pb::AssetRegistrationGrantBody) -> Result<Self, Self::Error> {
        let dk_pub = decode_optional_element(value.dk_pub, "dk_pub")?;
        let daily_volume_limit = if value.daily_volume_limit.is_empty() {
            None
        } else {
            let bytes: [u8; 16] = value.daily_volume_limit.try_into().map_err(|v: Vec<u8>| {
                anyhow::anyhow!("daily_volume_limit must be 16 bytes, got {}", v.len())
            })?;
            Some(u128::from_le_bytes(bytes))
        };
        let ring_pk = decode_optional_element(value.ring_pk, "ring_pk")?;
        let registration_authority_vk = value
            .registration_authority_vk
            .map(TryInto::try_into)
            .transpose()
            .map_err(|_| anyhow::anyhow!("invalid registration_authority_vk"))?;
        let seizure_authority_vk = value
            .seizure_authority_vk
            .map(TryInto::try_into)
            .transpose()
            .map_err(|_| anyhow::anyhow!("invalid seizure_authority_vk"))?;
        let allowed_ibc_routes = value
            .allowed_ibc_routes
            .into_iter()
            .map(TryInto::try_into)
            .collect::<anyhow::Result<Vec<_>>>()?;
        let ibc_origin = value.ibc_origin.map(TryInto::try_into).transpose()?;

        let body = Self {
            asset_id: value
                .asset_id
                .ok_or_else(|| anyhow::anyhow!("missing asset_id"))?
                .try_into()?,
            is_regulated: value.is_regulated,
            audit_keys: if value.audit_keys.is_empty() {
                None
            } else {
                Some(AuditKeys::from_bytes(&value.audit_keys)?)
            },
            dk_pub,
            daily_volume_limit,
            allowed_ibc_routes: canonical_routes(allowed_ibc_routes),
            ibc_origin,
            ring_pk,
            ring_id: value.ring_id,
            policy_id: value.policy_id,
            permission: value.permission,
            resource: value.resource,
            registration_authority_vk,
            seizure_authority_vk,
            valid_until_unix: value.valid_until_unix,
        };
        body.validate_authorization_keys()?;
        Ok(body)
    }
}

impl From<AssetRegistrationGrantBody> for pb::AssetRegistrationGrantBody {
    fn from(value: AssetRegistrationGrantBody) -> Self {
        Self {
            asset_id: Some(value.asset_id.into()),
            is_regulated: value.is_regulated,
            audit_keys: value
                .audit_keys
                .map(|keys| keys.to_bytes().to_vec())
                .unwrap_or_default(),
            dk_pub: value
                .dk_pub
                .map(|e| e.to_bytes().to_vec())
                .unwrap_or_default(),
            daily_volume_limit: value
                .daily_volume_limit
                .map(|t| t.to_le_bytes().to_vec())
                .unwrap_or_default(),
            allowed_ibc_routes: value
                .allowed_ibc_routes
                .into_iter()
                .map(Into::into)
                .collect(),
            ring_pk: value
                .ring_pk
                .map(|e| e.to_bytes().to_vec())
                .unwrap_or_default(),
            ring_id: value.ring_id,
            policy_id: value.policy_id,
            permission: value.permission,
            resource: value.resource,
            registration_authority_vk: value.registration_authority_vk.map(Into::into),
            seizure_authority_vk: value.seizure_authority_vk.map(Into::into),
            valid_until_unix: value.valid_until_unix,
            ibc_origin: value.ibc_origin.map(Into::into),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
#[serde(
    try_from = "pb::AssetRegistrationGrant",
    into = "pb::AssetRegistrationGrant"
)]
pub struct AssetRegistrationGrant {
    pub body: AssetRegistrationGrantBody,
    pub registrar_vk: VerificationKey<SpendAuth>,
    pub signature: Signature<SpendAuth>,
}

impl DomainType for AssetRegistrationGrant {
    type Proto = pb::AssetRegistrationGrant;
}

impl AssetRegistrationGrant {
    pub fn verify(&self) -> anyhow::Result<()> {
        self.body.validate_authorization_keys()?;
        ensure_nonidentity_spend_auth_key(&self.registrar_vk, "compliance registrar key")?;
        self.registrar_vk
            .verify(&self.body.signing_bytes(), &self.signature)
            .map_err(|_| anyhow::anyhow!("asset registration grant signature failed to verify"))
    }
}

impl TryFrom<pb::AssetRegistrationGrant> for AssetRegistrationGrant {
    type Error = anyhow::Error;

    fn try_from(value: pb::AssetRegistrationGrant) -> Result<Self, Self::Error> {
        let grant = Self {
            body: value
                .body
                .ok_or_else(|| anyhow::anyhow!("missing asset registration grant body"))?
                .try_into()?,
            registrar_vk: value
                .registrar_vk
                .ok_or_else(|| anyhow::anyhow!("missing asset registration registrar_vk"))?
                .try_into()?,
            signature: value
                .signature
                .ok_or_else(|| anyhow::anyhow!("missing asset registration grant signature"))?
                .try_into()?,
        };
        grant.body.validate_authorization_keys()?;
        ensure_nonidentity_spend_auth_key(&grant.registrar_vk, "compliance registrar key")?;
        Ok(grant)
    }
}

impl From<AssetRegistrationGrant> for pb::AssetRegistrationGrant {
    fn from(value: AssetRegistrationGrant) -> Self {
        Self {
            body: Some(value.body.into()),
            registrar_vk: Some(value.registrar_vk.into()),
            signature: Some(value.signature.into()),
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(
    try_from = "pb::UserRegistrationGrantBody",
    into = "pb::UserRegistrationGrantBody"
)]
pub struct UserRegistrationGrantBody {
    pub leaf: ComplianceLeaf,
    pub policy_id: String,
    pub valid_until_unix: u64,
    pub nonce: Vec<u8>,
}

impl DomainType for UserRegistrationGrantBody {
    type Proto = pb::UserRegistrationGrantBody;
}

impl UserRegistrationGrantBody {
    pub fn signing_bytes(&self) -> Vec<u8> {
        grant_signing_bytes(USER_REGISTRATION_GRANT_DOMAIN, self.encode_to_vec())
    }
}

impl TryFrom<pb::UserRegistrationGrantBody> for UserRegistrationGrantBody {
    type Error = anyhow::Error;

    fn try_from(value: pb::UserRegistrationGrantBody) -> Result<Self, Self::Error> {
        Ok(Self {
            leaf: value
                .leaf
                .ok_or_else(|| anyhow::anyhow!("missing user registration grant leaf"))?
                .try_into()?,
            policy_id: value.policy_id,
            valid_until_unix: value.valid_until_unix,
            nonce: value.nonce,
        })
    }
}

impl From<UserRegistrationGrantBody> for pb::UserRegistrationGrantBody {
    fn from(value: UserRegistrationGrantBody) -> Self {
        Self {
            leaf: Some(value.leaf.into()),
            policy_id: value.policy_id,
            valid_until_unix: value.valid_until_unix,
            nonce: value.nonce,
        }
    }
}

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(
    try_from = "pb::UserRegistrationGrant",
    into = "pb::UserRegistrationGrant"
)]
pub struct UserRegistrationGrant {
    pub body: UserRegistrationGrantBody,
    pub signature: Signature<SpendAuth>,
}

impl DomainType for UserRegistrationGrant {
    type Proto = pb::UserRegistrationGrant;
}

impl UserRegistrationGrant {
    pub fn verify(&self, vk: &VerificationKey<SpendAuth>) -> anyhow::Result<()> {
        ensure_nonidentity_spend_auth_key(vk, "compliance registration authority key")?;
        vk.verify(&self.body.signing_bytes(), &self.signature)
            .map_err(|_| anyhow::anyhow!("user registration grant signature failed to verify"))
    }
}

impl TryFrom<pb::UserRegistrationGrant> for UserRegistrationGrant {
    type Error = anyhow::Error;

    fn try_from(value: pb::UserRegistrationGrant) -> Result<Self, Self::Error> {
        Ok(Self {
            body: value
                .body
                .ok_or_else(|| anyhow::anyhow!("missing user registration grant body"))?
                .try_into()?,
            signature: value
                .signature
                .ok_or_else(|| anyhow::anyhow!("missing user registration grant signature"))?
                .try_into()?,
        })
    }
}

impl From<UserRegistrationGrant> for pb::UserRegistrationGrant {
    fn from(value: UserRegistrationGrant) -> Self {
        Self {
            body: Some(value.body.into()),
            signature: Some(value.signature.into()),
        }
    }
}

fn decode_optional_element(
    bytes: Vec<u8>,
    field: &'static str,
) -> anyhow::Result<Option<shieldd_sdk_crypto::SubgroupPoint>> {
    if bytes.is_empty() {
        return Ok(None);
    }
    let bytes: [u8; 32] = bytes
        .try_into()
        .map_err(|_| anyhow::anyhow!("{field} must be exactly 32 bytes"))?;
    Ok(Some(shieldd_sdk_crypto::encoding::point(&bytes).map_err(
        |_| anyhow::anyhow!("invalid {field} encoding"),
    )?))
}

/// Message to register an asset as regulated or non-regulated.
#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
#[serde(try_from = "pb::MsgRegisterAsset", into = "pb::MsgRegisterAsset")]
pub struct MsgRegisterAsset {
    pub audit_certificate: Option<OrbisCapabilityCertificate>,
    pub audit_keys: Option<AuditKeys>,
    /// The asset ID to register.
    pub asset_id: asset::Id,
    /// Whether this asset is regulated (requires compliance).
    pub is_regulated: bool,
    /// Issuer's detection key public (optional).
    pub dk_pub: Option<shieldd_sdk_crypto::SubgroupPoint>,
    /// Daily undisclosed-volume limit (optional).
    pub daily_volume_limit: Option<u128>,
    /// Direct IBC routes allowed for this regulated asset. Empty = IBC blocked.
    pub allowed_ibc_routes: Vec<IbcRoute>,
    /// External IBC origin for regulated voucher assets.
    pub ibc_origin: Option<IbcAssetOrigin>,
    /// Orbis ring public key (optional).
    pub ring_pk: Option<shieldd_sdk_crypto::SubgroupPoint>,
    /// Orbis DKG ring identifier.
    pub ring_id: String,
    /// Vera policy ID.
    pub policy_id: String,
    /// ACP permission name.
    pub permission: String,
    /// ACP resource type.
    pub resource: String,
    /// Immutable authority key that signs user registration grants for this asset.
    pub registration_authority_vk: Option<VerificationKey<SpendAuth>>,
    /// Immutable authority key that signs exact note seizures for this asset.
    pub seizure_authority_vk: Option<VerificationKey<SpendAuth>>,
    /// Registrar authorization for this asset registration.
    pub asset_registration_grant: Option<AssetRegistrationGrant>,
}

impl DomainType for MsgRegisterAsset {
    type Proto = pb::MsgRegisterAsset;
}

impl TryFrom<pb::MsgRegisterAsset> for MsgRegisterAsset {
    type Error = anyhow::Error;

    fn try_from(value: pb::MsgRegisterAsset) -> Result<Self, Self::Error> {
        let dk_pub = decode_optional_element(value.dk_pub, "dk_pub")?;

        let daily_volume_limit = if value.daily_volume_limit.is_empty() {
            None
        } else {
            let daily_volume_limit_bytes: [u8; 16] =
                value.daily_volume_limit.try_into().map_err(|v: Vec<u8>| {
                    anyhow::anyhow!("daily_volume_limit must be 16 bytes, got {}", v.len())
                })?;
            Some(u128::from_le_bytes(daily_volume_limit_bytes))
        };

        let ring_pk = decode_optional_element(value.ring_pk, "ring_pk")?;
        let registration_authority_vk = value
            .registration_authority_vk
            .map(TryInto::try_into)
            .transpose()
            .map_err(|_| anyhow::anyhow!("invalid registration_authority_vk"))?;
        let seizure_authority_vk = value
            .seizure_authority_vk
            .map(TryInto::try_into)
            .transpose()
            .map_err(|_| anyhow::anyhow!("invalid seizure_authority_vk"))?;
        let asset_registration_grant = value
            .asset_registration_grant
            .map(TryInto::try_into)
            .transpose()?;
        let allowed_ibc_routes = value
            .allowed_ibc_routes
            .into_iter()
            .map(TryInto::try_into)
            .collect::<anyhow::Result<Vec<_>>>()?;
        let ibc_origin = value.ibc_origin.map(TryInto::try_into).transpose()?;

        let message = MsgRegisterAsset {
            audit_certificate: value.audit_certificate.map(TryInto::try_into).transpose()?,
            asset_id: value
                .asset_id
                .ok_or_else(|| anyhow::anyhow!("missing asset_id"))?
                .try_into()?,
            is_regulated: value.is_regulated,
            audit_keys: if value.audit_keys.is_empty() {
                None
            } else {
                Some(AuditKeys::from_bytes(&value.audit_keys)?)
            },
            dk_pub,
            daily_volume_limit,
            allowed_ibc_routes: canonical_routes(allowed_ibc_routes),
            ibc_origin,
            ring_pk,
            ring_id: value.ring_id,
            policy_id: value.policy_id,
            permission: value.permission,
            resource: value.resource,
            registration_authority_vk,
            seizure_authority_vk,
            asset_registration_grant,
        };
        message.validate_authorization_keys()?;
        Ok(message)
    }
}

impl From<MsgRegisterAsset> for pb::MsgRegisterAsset {
    fn from(value: MsgRegisterAsset) -> pb::MsgRegisterAsset {
        pb::MsgRegisterAsset {
            audit_certificate: value.audit_certificate.map(Into::into),
            asset_id: Some(value.asset_id.into()),
            is_regulated: value.is_regulated,
            audit_keys: value
                .audit_keys
                .map(|keys| keys.to_bytes().to_vec())
                .unwrap_or_default(),
            dk_pub: value
                .dk_pub
                .map(|e| e.to_bytes().to_vec())
                .unwrap_or_default(),
            daily_volume_limit: value
                .daily_volume_limit
                .map(|t| t.to_le_bytes().to_vec())
                .unwrap_or_default(),
            allowed_ibc_routes: value
                .allowed_ibc_routes
                .into_iter()
                .map(Into::into)
                .collect(),
            ring_pk: value
                .ring_pk
                .map(|e| e.to_bytes().to_vec())
                .unwrap_or_default(),
            ring_id: value.ring_id,
            policy_id: value.policy_id,
            permission: value.permission,
            resource: value.resource,
            registration_authority_vk: value.registration_authority_vk.map(Into::into),
            seizure_authority_vk: value.seizure_authority_vk.map(Into::into),
            asset_registration_grant: value.asset_registration_grant.map(Into::into),
            ibc_origin: value.ibc_origin.map(Into::into),
        }
    }
}

impl MsgRegisterAsset {
    pub fn validate_authorization_keys(&self) -> anyhow::Result<()> {
        if let Some(registration_authority_vk) = &self.registration_authority_vk {
            ensure_nonidentity_spend_auth_key(
                registration_authority_vk,
                "compliance registration authority key",
            )?;
        }
        if let Some(seizure_authority_vk) = &self.seizure_authority_vk {
            ensure_nonidentity_spend_auth_key(
                seizure_authority_vk,
                "compliance seizure authority key",
            )?;
        }
        if let Some(grant) = &self.asset_registration_grant {
            grant.body.validate_authorization_keys()?;
            ensure_nonidentity_spend_auth_key(&grant.registrar_vk, "compliance registrar key")?;
        }
        Ok(())
    }

    pub fn registration_grant_body(&self, valid_until_unix: u64) -> AssetRegistrationGrantBody {
        AssetRegistrationGrantBody {
            asset_id: self.asset_id,
            is_regulated: self.is_regulated,
            audit_keys: self.audit_keys.clone(),
            dk_pub: self.dk_pub,
            daily_volume_limit: self.daily_volume_limit,
            allowed_ibc_routes: self.allowed_ibc_routes.clone(),
            ibc_origin: self.ibc_origin.clone(),
            ring_pk: self.ring_pk,
            ring_id: self.ring_id.clone(),
            policy_id: self.policy_id.clone(),
            permission: self.permission.clone(),
            resource: self.resource.clone(),
            registration_authority_vk: self.registration_authority_vk,
            seizure_authority_vk: self.seizure_authority_vk,
            valid_until_unix,
        }
    }
}

impl shieldd_sdk_txhash::EffectingData for MsgRegisterAsset {
    fn effect_hash(&self) -> shieldd_sdk_txhash::EffectHash {
        shieldd_sdk_txhash::EffectHash::from_proto_effecting_data::<pb::MsgRegisterAsset>(
            &self.clone().into(),
        )
    }
}

/// Orbis threshold attestation for an address-diversified ring public key.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(
    try_from = "pb::OrbisCapabilityCertificate",
    into = "pb::OrbisCapabilityCertificate"
)]
pub struct OrbisCapabilityCertificate {
    pub chain_id: String,
    pub r_point: SubgroupPoint,
    pub response: Fr,
}

impl OrbisCapabilityCertificate {
    pub fn signing_bytes(
        chain_id: &str,
        leaf: &ComplianceLeaf,
        policy: &AssetPolicy,
    ) -> anyhow::Result<Vec<u8>> {
        anyhow::ensure!(
            !chain_id.is_empty() && chain_id.len() <= MAX_CERTIFICATE_TEXT_BYTES,
            "invalid certificate chain_id length"
        );
        let mut message = Vec::with_capacity(320);
        message.extend_from_slice(ORBIS_CAPABILITY_CERTIFICATE_DOMAIN);
        for value in [
            chain_id.as_bytes(),
            policy.ring.ring_id.as_bytes(),
            policy.ring.policy_id.as_bytes(),
        ] {
            anyhow::ensure!(
                !value.is_empty() && value.len() <= MAX_CERTIFICATE_TEXT_BYTES,
                "invalid certificate text field length"
            );
            let len = u32::try_from(value.len())
                .map_err(|_| anyhow::anyhow!("certificate field is too long"))?;
            message.extend_from_slice(&len.to_le_bytes());
            message.extend_from_slice(value);
        }
        message.extend_from_slice(&policy.ring.ring_pk.to_bytes());
        message.extend_from_slice(&leaf.asset_id.0.to_bytes());
        let address = leaf.address.to_vec();
        message.extend_from_slice(
            &u32::try_from(address.len())
                .map_err(|_| anyhow::anyhow!("address encoding is too long"))?
                .to_le_bytes(),
        );
        message.extend_from_slice(&address);
        message.extend_from_slice(&leaf.address.diversified_generator().to_bytes());
        message.extend_from_slice(&leaf.rnk_dh_pk.to_bytes());
        message.extend_from_slice(&leaf.rnk_commitment.to_bytes());
        Ok(message)
    }

    pub fn general_signing_bytes(
        chain_id: &str,
        asset_id: asset::Id,
        policy: &AssetPolicy,
    ) -> anyhow::Result<Vec<u8>> {
        anyhow::ensure!(
            !chain_id.is_empty() && chain_id.len() <= MAX_CERTIFICATE_TEXT_BYTES,
            "invalid certificate chain_id length"
        );
        policy.validate_regulated()?;
        let mut message = b"shieldd.orbis.general_audit_certificate.v1\0".to_vec();
        message.extend_from_slice(&(chain_id.len() as u32).to_le_bytes());
        message.extend_from_slice(chain_id.as_bytes());
        message.extend_from_slice(&asset_id.0.to_bytes());
        message.extend_from_slice(&policy.to_bytes()?);
        Ok(message)
    }

    pub fn verify_general(
        &self,
        asset_id: asset::Id,
        policy: &AssetPolicy,
        chain_id: &str,
    ) -> anyhow::Result<()> {
        anyhow::ensure!(
            self.chain_id == chain_id,
            "general certificate chain mismatch"
        );
        anyhow::ensure!(
            !bool::from(self.r_point.is_identity()),
            "certificate R must be nonidentity"
        );
        let message = Self::general_signing_bytes(chain_id, asset_id, policy)?;
        self.verify_signature(policy.ring.ring_pk, &message)?;
        Ok(())
    }

    fn verify_signature(&self, ring_pk: SubgroupPoint, message: &[u8]) -> anyhow::Result<()> {
        let key = VerificationKey::<SpendAuth>::try_from(ring_pk.to_bytes())?;
        ensure_nonidentity_spend_auth_key(&key, "Orbis ring authorization")?;
        let mut bytes = [0; 64];
        bytes[..32].copy_from_slice(&self.r_point.to_bytes());
        bytes[32..].copy_from_slice(&self.response.to_bytes());
        key.verify(message, &Signature::from(bytes))?;
        Ok(())
    }

    fn sign_message(
        chain_id: String,
        message: &[u8],
        ring_sk: Fr,
        rng: impl rand_core::RngCore + rand_core::CryptoRng,
    ) -> anyhow::Result<Self> {
        let key = reddsa::SigningKey::<SpendAuth>::try_from(ring_sk.to_bytes())?;
        let bytes: [u8; 64] = key.sign(rng, message).into();
        Ok(Self {
            chain_id,
            r_point: encoding::nonidentity(bytes[..32].try_into()?)?,
            response: encoding::scalar(bytes[32..].try_into()?)?,
        })
    }

    pub fn verify(
        &self,
        leaf: &ComplianceLeaf,
        policy: &AssetPolicy,
        expected_chain_id: &str,
    ) -> anyhow::Result<()> {
        anyhow::ensure!(
            self.chain_id == expected_chain_id,
            "Orbis capability certificate chain_id mismatch"
        );
        anyhow::ensure!(
            !bool::from(self.r_point.is_identity()),
            "certificate R must be nonidentity"
        );
        leaf.validate()?;
        let message = Self::signing_bytes(&self.chain_id, leaf, policy)?;
        self.verify_signature(policy.ring.ring_pk, &message)?;
        Ok(())
    }

    /// Issue a certificate with a single ring secret and a fresh signing nonce.
    pub fn sign<R: rand_core::RngCore + rand_core::CryptoRng>(
        chain_id: impl Into<String>,
        leaf: &ComplianceLeaf,
        policy: &AssetPolicy,
        ring_sk: Fr,
        rng: R,
    ) -> anyhow::Result<Self> {
        anyhow::ensure!(
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * ring_sk == policy.ring.ring_pk,
            "ring secret does not match policy ring key"
        );
        leaf.validate()?;
        let chain_id = chain_id.into();
        let message = Self::signing_bytes(&chain_id, leaf, policy)?;
        Self::sign_message(chain_id, &message, ring_sk, rng)
    }

    #[cfg(any(test, feature = "test-helpers"))]
    pub fn sign_general_for_test(
        chain_id: impl Into<String>,
        asset_id: asset::Id,
        policy: &AssetPolicy,
        ring_sk: Fr,
    ) -> anyhow::Result<Self> {
        anyhow::ensure!(
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * ring_sk == policy.ring.ring_pk,
            "test ring key mismatch"
        );
        let chain_id = chain_id.into();
        let message = Self::general_signing_bytes(&chain_id, asset_id, policy)?;
        Self::sign_message(chain_id, &message, ring_sk, rand_core::OsRng)
    }

    #[cfg(any(test, feature = "test-helpers"))]
    pub fn sign_for_test(
        chain_id: impl Into<String>,
        leaf: &ComplianceLeaf,
        policy: &AssetPolicy,
        ring_sk: Fr,
    ) -> anyhow::Result<Self> {
        anyhow::ensure!(
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * ring_sk == policy.ring.ring_pk,
            "test ring secret does not match policy ring key"
        );
        let chain_id = chain_id.into();
        let message = Self::signing_bytes(&chain_id, leaf, policy)?;
        Self::sign_message(chain_id, &message, ring_sk, rand_core::OsRng)
    }
}

impl DomainType for OrbisCapabilityCertificate {
    type Proto = pb::OrbisCapabilityCertificate;
}

impl TryFrom<pb::OrbisCapabilityCertificate> for OrbisCapabilityCertificate {
    type Error = anyhow::Error;

    fn try_from(value: pb::OrbisCapabilityCertificate) -> Result<Self, Self::Error> {
        let r_point_bytes: [u8; 32] = value
            .r_point
            .try_into()
            .map_err(|_| anyhow::anyhow!("certificate r_point must be 32 bytes"))?;
        let response_bytes: [u8; 32] = value
            .response
            .try_into()
            .map_err(|_| anyhow::anyhow!("certificate response must be 32 bytes"))?;
        Ok(Self {
            chain_id: value.chain_id,
            r_point: shieldd_sdk_crypto::encoding::point(&r_point_bytes)
                .map_err(|_| anyhow::anyhow!("invalid certificate r_point encoding"))?,
            response: shieldd_sdk_crypto::encoding::scalar(&response_bytes)
                .map_err(|_| anyhow::anyhow!("invalid canonical certificate response"))?,
        })
    }
}

impl From<OrbisCapabilityCertificate> for pb::OrbisCapabilityCertificate {
    fn from(value: OrbisCapabilityCertificate) -> Self {
        Self {
            chain_id: value.chain_id,
            r_point: value.r_point.to_bytes().to_vec(),
            response: value.response.to_bytes().to_vec(),
        }
    }
}

/// Message to register a user's address for a regulated asset.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::MsgRegisterUser", into = "pb::MsgRegisterUser")]
pub struct MsgRegisterUser {
    /// The compliance leaf containing the user's registration information.
    pub leaf: ComplianceLeaf,
    /// Grant authorizing this registration.
    pub grant: Option<UserRegistrationGrant>,
    /// Orbis threshold certificate for the address-diversified ring public key.
    pub capability_certificate: Option<OrbisCapabilityCertificate>,
}

impl DomainType for MsgRegisterUser {
    type Proto = pb::MsgRegisterUser;
}

impl TryFrom<pb::MsgRegisterUser> for MsgRegisterUser {
    type Error = anyhow::Error;

    fn try_from(value: pb::MsgRegisterUser) -> Result<Self, Self::Error> {
        Ok(MsgRegisterUser {
            leaf: value
                .leaf
                .ok_or_else(|| anyhow::anyhow!("missing leaf"))?
                .try_into()?,
            grant: value.grant.map(TryInto::try_into).transpose()?,
            capability_certificate: value
                .capability_certificate
                .map(TryInto::try_into)
                .transpose()?,
        })
    }
}

impl From<MsgRegisterUser> for pb::MsgRegisterUser {
    fn from(value: MsgRegisterUser) -> pb::MsgRegisterUser {
        pb::MsgRegisterUser {
            leaf: Some(value.leaf.into()),
            grant: value.grant.map(Into::into),
            capability_certificate: value.capability_certificate.map(Into::into),
        }
    }
}

impl shieldd_sdk_txhash::EffectingData for MsgRegisterUser {
    fn effect_hash(&self) -> shieldd_sdk_txhash::EffectHash {
        shieldd_sdk_txhash::EffectHash::from_proto_effecting_data::<pb::MsgRegisterUser>(
            &self.clone().into(),
        )
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn effective_nullifier_key_is_scoped_only_for_regulated_assets() {
        let fvk = &*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY;
        let wallet_nk = *fvk.nullifier_key();
        let address = fvk.payment_address(0u32.into());
        let asset_id = asset::Id(Fq::from(11u64));
        let ring_sk = Fr::from(13u64);
        let ring_pk = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * ring_sk;
        let rnk_dh_pk = address.diversified_generator() * ring_sk;

        assert_eq!(
            effective_nullifier_key(
                wallet_nk,
                fvk.incoming(),
                &address,
                asset_id,
                ring_pk,
                rnk_dh_pk,
                false
            )
            .unwrap(),
            wallet_nk
        );
        assert_eq!(
            effective_nullifier_key(
                wallet_nk,
                fvk.incoming(),
                &address,
                asset_id,
                ring_pk,
                rnk_dh_pk,
                true
            )
            .unwrap(),
            NullifierKey(
                derive_regulated_nullifier_key(
                    fvk.incoming(),
                    &address,
                    asset_id,
                    ring_pk,
                    rnk_dh_pk
                )
                .unwrap()
            )
        );
    }

    #[test]
    fn general_audit_certificate_binds_chain_asset_policy_and_keys() {
        let (leaf, policy, _, secret) = certified_leaf();
        let authority = reddsa::SigningKey::<SpendAuth>::new(rand_core::OsRng);
        let vk = VerificationKey::from(&authority);
        let policy = policy
            .with_registration_authority(vk)
            .with_seizure_authority(vk);
        let certificate = OrbisCapabilityCertificate::sign_general_for_test(
            "shieldd-test",
            leaf.asset_id,
            &policy,
            secret,
        )
        .unwrap();
        certificate
            .verify_general(leaf.asset_id, &policy, "shieldd-test")
            .unwrap();
        assert!(certificate
            .verify_general(leaf.asset_id, &policy, "other-chain")
            .is_err());
        assert!(certificate
            .verify_general(*shieldd_sdk_asset::BASE_ASSET_ID, &policy, "shieldd-test")
            .is_err());
        assert!(certificate.verify(&leaf, &policy, "shieldd-test").is_err());
        let mut changed = policy.clone();
        changed.ring.audit_keys.epoch += 1;
        assert!(certificate
            .verify_general(leaf.asset_id, &changed, "shieldd-test")
            .is_err());
        changed = policy.clone();
        changed.ring.audit_keys.payload += *shieldd_sdk_crypto::generators::SPEND_AUTH;
        assert!(certificate
            .verify_general(leaf.asset_id, &changed, "shieldd-test")
            .is_err());
        changed = policy.clone();
        changed.ring.policy_id.push('x');
        assert!(certificate
            .verify_general(leaf.asset_id, &changed, "shieldd-test")
            .is_err());
    }

    fn certified_leaf() -> (ComplianceLeaf, AssetPolicy, OrbisCapabilityCertificate, Fr) {
        let fvk = &*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY;
        let address = fvk.payment_address(0u32.into());
        let asset_id = asset::Id(Fq::from(77u64));
        let ring_sk = Fr::from(19u64);
        let ring_pk = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * ring_sk;
        let rnk_dh_pk = address.diversified_generator() * ring_sk;
        let rnk =
            derive_regulated_nullifier_key(fvk.incoming(), &address, asset_id, ring_pk, rnk_dh_pk)
                .unwrap();
        let leaf = ComplianceLeaf::registered_from_rnk(address, asset_id, rnk_dh_pk, rnk).unwrap();
        let policy = AssetPolicy::new(
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            u128::MAX,
            vec![],
            None,
            "ring-77".to_owned(),
            ring_pk,
            "policy-77".to_owned(),
            "read".to_owned(),
            "document".to_owned(),
            crate::audit_keys::test_keys(),
        );
        let certificate =
            OrbisCapabilityCertificate::sign_for_test("shieldd-test", &leaf, &policy, ring_sk)
                .unwrap();
        (leaf, policy, certificate, ring_sk)
    }

    #[test]
    fn issued_capability_certificate_verifies_and_uses_fresh_nonces() {
        let (leaf, policy, _, ring_sk) = certified_leaf();
        let first = OrbisCapabilityCertificate::sign(
            "shieldd-test",
            &leaf,
            &policy,
            ring_sk,
            rand_core::OsRng,
        )
        .unwrap();
        let second = OrbisCapabilityCertificate::sign(
            "shieldd-test",
            &leaf,
            &policy,
            ring_sk,
            rand_core::OsRng,
        )
        .unwrap();
        first.verify(&leaf, &policy, "shieldd-test").unwrap();
        second.verify(&leaf, &policy, "shieldd-test").unwrap();
        assert_ne!(first.r_point, second.r_point);
        assert!(OrbisCapabilityCertificate::sign(
            "shieldd-test",
            &leaf,
            &policy,
            Fr::from(1u64),
            rand_core::OsRng
        )
        .is_err());
    }

    #[test]
    fn orbis_capability_certificate_binds_the_complete_registration() {
        let (leaf, policy, certificate, _) = certified_leaf();
        certificate.verify(&leaf, &policy, "shieldd-test").unwrap();

        assert!(certificate.verify(&leaf, &policy, "other-chain").is_err());

        let mut wrong_leaf = leaf.clone();
        wrong_leaf.asset_id = asset::Id(Fq::from(78u64));
        assert!(certificate
            .verify(&wrong_leaf, &policy, "shieldd-test")
            .is_err());

        let mut wrong_dh = leaf.clone();
        wrong_dh.rnk_dh_pk += *shieldd_sdk_crypto::generators::SPEND_AUTH;
        assert!(certificate
            .verify(&wrong_dh, &policy, "shieldd-test")
            .is_err());

        let mut wrong_rnk = leaf.clone();
        wrong_rnk.rnk_commitment += Fq::from(1u64);
        assert!(certificate
            .verify(&wrong_rnk, &policy, "shieldd-test")
            .is_err());

        let mut wrong_policy = policy.clone();
        wrong_policy.ring.policy_id = "other-policy".to_owned();
        assert!(certificate
            .verify(&leaf, &wrong_policy, "shieldd-test")
            .is_err());

        let mut mutated = certificate;
        mutated.response += Fr::from(1u64);
        assert!(mutated.verify(&leaf, &policy, "shieldd-test").is_err());
    }

    #[test]
    fn diversified_dh_derivation_changes_with_every_scope_input() {
        let (leaf, policy, _, ring_sk) = certified_leaf();
        let fvk = &*shieldd_sdk_keys::test_keys::FULL_VIEWING_KEY;
        let original = derive_regulated_nullifier_key(
            fvk.incoming(),
            &leaf.address,
            leaf.asset_id,
            policy.ring.ring_pk,
            leaf.rnk_dh_pk,
        )
        .unwrap();

        let other_asset = derive_regulated_nullifier_key(
            fvk.incoming(),
            &leaf.address,
            asset::Id(leaf.asset_id.0 + Fq::from(1u64)),
            policy.ring.ring_pk,
            leaf.rnk_dh_pk,
        )
        .unwrap();
        let other_ring = derive_regulated_nullifier_key(
            fvk.incoming(),
            &leaf.address,
            leaf.asset_id,
            policy.ring.ring_pk + (*shieldd_sdk_crypto::generators::SPEND_AUTH),
            leaf.rnk_dh_pk,
        )
        .unwrap();
        assert_ne!(original, other_asset);
        assert_ne!(original, other_ring);

        let other_address = fvk.payment_address(1u32.into());
        let other_dh = other_address.diversified_generator() * ring_sk;
        let other_address_key = derive_regulated_nullifier_key(
            fvk.incoming(),
            &other_address,
            leaf.asset_id,
            policy.ring.ring_pk,
            other_dh,
        )
        .unwrap();
        assert_ne!(original, other_address_key);

        let mut frozen = leaf;
        frozen
            .apply_status_action(UserAssetStatusAction::Freeze, 10)
            .unwrap();
        let after_freeze = derive_regulated_nullifier_key(
            fvk.incoming(),
            &frozen.address,
            frozen.asset_id,
            policy.ring.ring_pk,
            frozen.rnk_dh_pk,
        )
        .unwrap();
        assert_eq!(original, after_freeze);
    }

    #[test]
    fn seized_is_a_terminal_user_asset_status() {
        assert_eq!(
            UserAssetStatus::Frozen
                .seize()
                .expect("frozen account can be seized"),
            UserAssetStatus::Seized
        );
        assert!(UserAssetStatus::Active.seize().is_err());
        assert!(UserAssetStatus::Seized.seize().is_err());

        for next in [
            UserAssetStatus::Active,
            UserAssetStatus::Frozen,
            UserAssetStatus::Seized,
        ] {
            assert!(
                UserAssetStatus::Seized.validate_transition(next).is_err(),
                "Seized must reject transition to {next:?}"
            );
        }
    }

    #[test]
    fn synthetic_compliance_leaf_is_valid() {
        let mut rng = rand::thread_rng();
        let address = Address::dummy(&mut rng);
        let asset_id = asset::Id(shieldd_sdk_crypto::Fq::from(100u64));
        let leaf = ComplianceLeaf::synthetic_unregulated(address.clone(), asset_id);

        assert_eq!(leaf.address, address);
        assert_eq!(leaf.asset_id, asset_id);
        leaf.validate().unwrap();
        assert_ne!(
            leaf.rnk_dh_pk,
            shieldd_sdk_crypto::SubgroupPoint::identity()
        );
        assert_ne!(leaf.rnk_commitment, Fq::from(0u64));
    }

    #[test]
    fn test_compliance_leaf_different_addresses_different_commits() {
        let mut rng = rand::thread_rng();
        let asset_id = asset::Id(shieldd_sdk_crypto::Fq::from(100u64));
        let address1 = Address::dummy(&mut rng);
        let address2 = Address::dummy(&mut rng);

        let leaf1 = ComplianceLeaf::synthetic_unregulated(address1, asset_id);
        let leaf2 = ComplianceLeaf::synthetic_unregulated(address2, asset_id);

        assert_ne!(
            leaf1.commit(),
            leaf2.commit(),
            "leaf commitments bind different owners"
        );
    }

    #[test]
    fn test_compliance_leaf_proto_roundtrip() {
        let mut rng = rand::thread_rng();
        let wallet = Address::dummy(&mut rng);
        let asset_id = asset::Id(shieldd_sdk_crypto::Fq::from(999u64));
        let original = ComplianceLeaf::synthetic_unregulated(wallet, asset_id);

        let proto: pb::ComplianceLeaf = original.clone().into();
        let recovered: ComplianceLeaf = proto.try_into().expect("should parse");

        assert_eq!(original, recovered);
    }

    #[test]
    fn compliance_leaf_authenticates_freeze_generation_and_height() {
        let mut rng = rand::thread_rng();
        let mut leaf = ComplianceLeaf::synthetic_unregulated(
            Address::dummy(&mut rng),
            asset::Id(shieldd_sdk_crypto::Fq::from(999u64)),
        );
        let active_commitment = leaf.commit();

        leaf.apply_status_action(UserAssetStatusAction::Freeze, 40)
            .unwrap();
        let first_freeze = leaf.commit();
        assert_eq!(leaf.freeze_generation, 1);
        assert_eq!(leaf.frozen_since_height, 40);
        assert_ne!(first_freeze, active_commitment);

        leaf.apply_status_action(UserAssetStatusAction::Unfreeze, 41)
            .unwrap();
        assert_ne!(leaf.commit(), active_commitment);
        leaf.apply_status_action(UserAssetStatusAction::Freeze, 50)
            .unwrap();
        assert_eq!(leaf.freeze_generation, 2);
        assert_eq!(leaf.frozen_since_height, 50);
        assert_ne!(leaf.commit(), first_freeze);
    }

    #[test]
    fn compliance_leaf_rejects_incoherent_lifecycle() {
        let mut rng = rand::thread_rng();
        let mut leaf = ComplianceLeaf::synthetic_unregulated(
            Address::dummy(&mut rng),
            asset::Id(shieldd_sdk_crypto::Fq::from(999u64)),
        );
        leaf.status = UserAssetStatus::Frozen;
        assert!(leaf.validate_lifecycle().is_err());
        assert!(leaf
            .apply_status_action(UserAssetStatusAction::Freeze, 0)
            .is_err());
    }

    #[test]
    fn test_compliance_leaf_proto_rejects_invalid_rnk_commitment() {
        let mut rng = rand::thread_rng();
        let address = Address::dummy(&mut rng);
        let proto = pb::ComplianceLeaf {
            address: Some(address.into()),
            asset_id: Some(asset::Id(shieldd_sdk_crypto::Fq::from(999u64)).into()),
            rnk_dh_pk: (*shieldd_sdk_crypto::generators::SPEND_AUTH)
                .to_bytes()
                .to_vec(),
            rnk_commitment: vec![0xff; 32],
            status: pb::UserAssetStatus::Active as i32,
            freeze_generation: 0,
            frozen_since_height: 0,
        };

        let err = ComplianceLeaf::try_from(proto).expect_err("invalid rnk commitment should fail");

        assert!(
            err.to_string().contains("invalid rnk_commitment"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn test_asset_policy_bytes_roundtrip() {
        let dk = shieldd_sdk_crypto::Fr::from(42u64);
        let dk_pub = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * dk;
        let rk = shieldd_sdk_crypto::Fr::from(999u64);
        let ring_pk = (*shieldd_sdk_crypto::generators::SPEND_AUTH) * rk;

        let policy = AssetPolicy::new(
            dk_pub,
            1000,
            vec![IbcRoute::transfer("channel-0", "connection-0", "channel-7")],
            Some(IbcAssetOrigin {
                route: IbcRoute::transfer("channel-0", "connection-0", "channel-7"),
                base_denom: "uusd".to_string(),
            }),
            "ring-123".to_string(),
            ring_pk,
            "policy-abc".to_string(),
            "reader".to_string(),
            "document".to_string(),
            crate::audit_keys::test_keys(),
        );

        let bytes = policy.to_bytes().unwrap();
        let recovered = AssetPolicy::from_bytes(&bytes).unwrap();
        let mut stale = bytes.clone();
        stale[..4].copy_from_slice(b"ASP4");
        assert!(AssetPolicy::from_bytes(&stale).is_err());

        assert_eq!(policy.params.dk_pub, recovered.params.dk_pub);
        assert_eq!(
            policy.params.daily_volume_limit,
            recovered.params.daily_volume_limit
        );
        assert_eq!(
            policy.params.allowed_ibc_routes,
            recovered.params.allowed_ibc_routes
        );
        assert_eq!(policy.params.ibc_origin, recovered.params.ibc_origin);
        assert_eq!(policy.ring.ring_id, recovered.ring.ring_id);
        assert_eq!(policy.ring.ring_pk, recovered.ring.ring_pk);
        assert_eq!(policy.ring.policy_id, recovered.ring.policy_id);
        assert_eq!(policy.ring.permission, recovered.ring.permission);
        assert_eq!(policy.ring.resource, recovered.ring.resource);
    }

    #[test]
    fn regulated_policy_rejects_issuer_or_ring_encryption_key_reuse() {
        let baseline = AssetPolicy::for_test(
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * Fr::from(37u64),
            100,
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * Fr::from(29u64),
        );
        for reused in [baseline.params.dk_pub, baseline.ring.ring_pk] {
            for field in 0..2 {
                let mut policy = baseline.clone();
                match field {
                    0 => policy.ring.audit_keys.payload = reused,
                    _ => policy.ring.audit_keys.checking = reused,
                }
                assert!(policy.validate_regulated().is_err());
            }
        }
    }

    #[test]
    fn asset_policy_rejects_identity_crypto_keys() {
        let identity = shieldd_sdk_crypto::SubgroupPoint::identity();
        let generator = *shieldd_sdk_crypto::generators::SPEND_AUTH;

        let identity_dk = AssetPolicy::for_test(identity, 1, generator);
        assert!(identity_dk.validate_crypto_keys().is_err());
        assert!(identity_dk.to_bytes().is_err());

        let identity_ring = AssetPolicy::for_test(generator, 1, identity);
        assert!(identity_ring.validate_crypto_keys().is_err());
        assert!(identity_ring.to_bytes().is_err());

        let valid = AssetPolicy::for_test(generator, 1, generator);
        let mut identity_dk_proto: pb::AssetPolicy = valid.clone().into();
        identity_dk_proto.dk_pub = identity.to_bytes().to_vec();
        assert!(AssetPolicy::try_from(identity_dk_proto).is_err());

        let mut identity_ring_proto: pb::AssetPolicy = valid.into();
        identity_ring_proto.ring_pk = identity.to_bytes().to_vec();
        assert!(AssetPolicy::try_from(identity_ring_proto).is_err());
    }

    #[test]
    fn regulated_policy_requires_complete_orbis_and_authority_configuration() {
        let authority_sk =
            reddsa::SigningKey::<SpendAuth>::try_from(Fr::from(9u64).to_bytes()).unwrap();
        let authority_vk = VerificationKey::from(&authority_sk);
        let valid = AssetPolicy::new(
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            1,
            Vec::new(),
            None,
            "ring".to_owned(),
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            "policy".to_owned(),
            "read".to_owned(),
            "document".to_owned(),
            crate::audit_keys::test_keys(),
        )
        .with_registration_authority(authority_vk)
        .with_seizure_authority(authority_vk);
        valid.validate_regulated().unwrap();

        for clear in [
            |policy: &mut AssetPolicy| policy.ring.ring_id.clear(),
            |policy: &mut AssetPolicy| policy.ring.policy_id.clear(),
            |policy: &mut AssetPolicy| policy.ring.permission.clear(),
            |policy: &mut AssetPolicy| policy.ring.resource.clear(),
        ] {
            let mut incomplete = valid.clone();
            clear(&mut incomplete);
            assert!(incomplete.validate_regulated().is_err());
        }

        let mut missing_registration_authority = valid.clone();
        missing_registration_authority.registration_authority_vk = None;
        assert!(missing_registration_authority.validate_regulated().is_err());

        let mut missing_seizure_authority = valid;
        missing_seizure_authority.seizure_authority_vk = None;
        assert!(missing_seizure_authority.validate_regulated().is_err());
    }

    #[test]
    fn asset_policy_rejects_identity_registration_authority_key() {
        let identity_signing_key = reddsa::SigningKey::<SpendAuth>::try_from(
            shieldd_sdk_crypto::Fr::from(0u64).to_bytes(),
        )
        .unwrap();
        let identity = VerificationKey::from(&identity_signing_key);
        let policy = AssetPolicy::for_test(
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
            1,
            *shieldd_sdk_crypto::generators::SPEND_AUTH,
        )
        .with_registration_authority(identity);

        let error = policy
            .validate_crypto_keys()
            .expect_err("asset policies must reject identity registration authorities");
        assert!(
            format!("{error:#}").contains("identity"),
            "unexpected rejection reason: {error:#}"
        );

        let proto: pb::AssetPolicy = policy.into();
        assert!(
            AssetPolicy::try_from(proto).is_err(),
            "typed policy decode must reject identity registration authorities"
        );
    }

    #[test]
    fn asset_registration_grant_rejects_identity_registrar_key() {
        let signing_key = reddsa::SigningKey::<SpendAuth>::try_from(
            shieldd_sdk_crypto::Fr::from(0u64).to_bytes(),
        )
        .unwrap();
        let registrar_vk = VerificationKey::from(&signing_key);
        let body = AssetRegistrationGrantBody {
            audit_keys: None,
            asset_id: asset::Id(shieldd_sdk_crypto::Fq::from(1u64)),
            is_regulated: false,
            dk_pub: None,
            daily_volume_limit: None,
            allowed_ibc_routes: Vec::new(),
            ibc_origin: None,
            ring_pk: None,
            ring_id: String::new(),
            policy_id: String::new(),
            permission: String::new(),
            resource: String::new(),
            registration_authority_vk: None,
            seizure_authority_vk: None,
            valid_until_unix: 1,
        };
        let signature = signing_key.sign(rand_core::OsRng, &body.signing_bytes());
        let grant = AssetRegistrationGrant {
            body,
            registrar_vk,
            signature,
        };

        let error = grant
            .verify()
            .expect_err("asset registration grants must reject identity registrar keys");
        assert!(
            format!("{error:#}").contains("identity"),
            "unexpected rejection reason: {error:#}"
        );

        let proto: pb::AssetRegistrationGrant = grant.into();
        assert!(
            AssetRegistrationGrant::try_from(proto).is_err(),
            "typed grant decode must reject identity registrar keys"
        );
    }

    #[test]
    fn user_registration_grant_rejects_identity_registration_authority() {
        let signing_key = reddsa::SigningKey::<SpendAuth>::try_from(
            shieldd_sdk_crypto::Fr::from(0u64).to_bytes(),
        )
        .unwrap();
        let registration_authority_vk = VerificationKey::from(&signing_key);
        let body = UserRegistrationGrantBody {
            leaf: ComplianceLeaf::synthetic_unregulated(
                Address::dummy(&mut rand::thread_rng()),
                asset::Id(shieldd_sdk_crypto::Fq::from(1u64)),
            ),
            policy_id: "policy".to_owned(),
            valid_until_unix: 1,
            nonce: vec![1],
        };
        let signature = signing_key.sign(rand_core::OsRng, &body.signing_bytes());
        let grant = UserRegistrationGrant { body, signature };

        let error = grant
            .verify(&registration_authority_vk)
            .expect_err("user registration grants must reject identity authorities");
        assert!(
            format!("{error:#}").contains("identity"),
            "unexpected rejection reason: {error:#}"
        );
    }

    #[test]
    fn test_asset_policy_proto_roundtrip() {
        let dk_pub =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(42u64);
        let ring_pk =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(999u64);

        let policy = AssetPolicy::new(
            dk_pub,
            500,
            vec![
                IbcRoute::transfer("channel-1", "connection-0", "channel-7"),
                IbcRoute::transfer("channel-2", "connection-1", "channel-8"),
            ],
            None,
            "ring-id".to_string(),
            ring_pk,
            "pol-id".to_string(),
            "perm".to_string(),
            "res".to_string(),
            crate::audit_keys::test_keys(),
        );

        let proto: pb::AssetPolicy = policy.clone().into();
        let recovered = AssetPolicy::try_from(proto).unwrap();

        assert_eq!(policy, recovered);
    }

    #[test]
    fn test_asset_policy_to_bytes_rejects_overlong_route_field() {
        let dk_pub =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(42u64);
        let ring_pk =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(999u64);
        let policy = AssetPolicy::new(
            dk_pub,
            500,
            vec![IbcRoute::transfer(
                "x".repeat(usize::from(u16::MAX) + 1),
                "connection-0",
                "channel-7",
            )],
            None,
            "ring-id".to_string(),
            ring_pk,
            "pol-id".to_string(),
            "perm".to_string(),
            "res".to_string(),
            crate::audit_keys::test_keys(),
        );

        let err = policy.to_bytes().expect_err("overlong route should fail");

        assert!(
            err.to_string().contains("local_channel too long"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn test_asset_policy_to_bytes_rejects_overlong_string() {
        let dk_pub =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(42u64);
        let ring_pk =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(999u64);
        let policy = AssetPolicy::new(
            dk_pub,
            500,
            vec![],
            None,
            "r".repeat(usize::from(u16::MAX) + 1),
            ring_pk,
            "pol-id".to_string(),
            "perm".to_string(),
            "res".to_string(),
            crate::audit_keys::test_keys(),
        );

        let err = policy.to_bytes().expect_err("overlong ring_id should fail");

        assert!(
            err.to_string().contains("ring_id too long"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn test_asset_policy_from_bytes_rejects_missing_storage_fields() {
        let dk_pub =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(42u64);
        let ring_pk =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(999u64);
        let policy = AssetPolicy::new(
            dk_pub,
            500,
            vec![],
            None,
            "ring-id".to_string(),
            ring_pk,
            "pol-id".to_string(),
            "perm".to_string(),
            "res".to_string(),
            crate::audit_keys::test_keys(),
        );
        let bytes = policy.to_bytes().unwrap();

        let err = AssetPolicy::from_bytes(&bytes[..80]).expect_err("truncated policy should fail");

        assert!(
            err.to_string().contains("invalid AssetPolicy length")
                || err.to_string().contains("missing allowed_ibc_routes count"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn test_asset_policy_proto_rejects_missing_required_fields() {
        let dk_pub =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(42u64);
        let ring_pk =
            (*shieldd_sdk_crypto::generators::SPEND_AUTH) * shieldd_sdk_crypto::Fr::from(999u64);
        let mut proto: pb::AssetPolicy = AssetPolicy::new(
            dk_pub,
            500,
            vec![],
            None,
            "ring-id".to_string(),
            ring_pk,
            "pol-id".to_string(),
            "perm".to_string(),
            "res".to_string(),
            crate::audit_keys::test_keys(),
        )
        .into();

        proto.dk_pub.clear();
        let err = AssetPolicy::try_from(proto.clone()).expect_err("missing dk_pub should fail");
        assert!(
            err.to_string().contains("missing dk_pub"),
            "unexpected error: {err:#}"
        );

        proto.dk_pub = dk_pub.to_bytes().to_vec();
        proto.daily_volume_limit.clear();
        let err = AssetPolicy::try_from(proto.clone())
            .expect_err("missing daily_volume_limit should fail");
        assert!(
            err.to_string().contains("missing daily_volume_limit"),
            "unexpected error: {err:#}"
        );

        proto.daily_volume_limit = 500u128.to_le_bytes().to_vec();
        proto.ring_pk.clear();
        let err = AssetPolicy::try_from(proto).expect_err("missing ring_pk should fail");
        assert!(
            err.to_string().contains("missing ring_pk"),
            "unexpected error: {err:#}"
        );
    }

    #[test]
    fn test_default_unregulated_policy_uses_sink_keys() {
        let policy = AssetPolicy::default_unregulated();

        assert_eq!(policy.params.dk_pub, *crate::crypto::UNREGULATED_DETECTION);
        assert_eq!(policy.ring.ring_pk, *crate::crypto::UNREGULATED_RING);
        assert_eq!(policy.params.daily_volume_limit, u128::MAX);
    }

    #[test]
    fn merkle_path_default_is_fixed_width_and_canonical() {
        let path = MerklePath::default();
        path.validate().expect("default path is canonical");
        assert_eq!(path.layers.len(), usize::from(crate::tree::DEFAULT_DEPTH));
        assert!(path.layers.iter().all(|layer| {
            layer.siblings.len() == 3 && layer.siblings.iter().all(|sibling| sibling == &[0u8; 32])
        }));

        let proto: pb::MerklePath = path.clone().into();
        assert_eq!(
            MerklePath::try_from(proto).expect("canonical path roundtrip"),
            path
        );
    }

    #[test]
    fn merkle_path_proto_rejects_noncanonical_shape_and_fields() {
        let canonical: pb::MerklePath = MerklePath::default().into();

        let mut short = canonical.clone();
        short.layers.pop();
        MerklePath::try_from(short).expect_err("short path must fail");

        let mut wrong_arity = canonical.clone();
        wrong_arity.layers[0].siblings.pop();
        MerklePath::try_from(wrong_arity).expect_err("wrong sibling arity must fail");

        let mut wrong_length = canonical.clone();
        wrong_length.layers[0].siblings[0].pop();
        MerklePath::try_from(wrong_length).expect_err("short sibling must fail");

        let mut noncanonical = canonical;
        noncanonical.layers[0].siblings[0] = vec![0xff; 32];
        MerklePath::try_from(noncanonical).expect_err("noncanonical sibling must fail");
    }
}

/// A Merkle path in the Quad Merkle Tree (arity 4).
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::MerklePath", into = "pb::MerklePath")]
pub struct MerklePath {
    /// The layers of the Merkle path, from leaf to root.
    pub layers: Vec<MerklePathLayer>,
}

impl MerklePath {
    /// Fixed-width zero path for a conditionally disabled membership branch.
    pub fn zeroed() -> Self {
        Self {
            layers: (0..crate::tree::DEFAULT_DEPTH)
                .map(|_| MerklePathLayer {
                    siblings: vec![vec![0u8; 32]; 3],
                })
                .collect(),
        }
    }

    /// Create a MerklePath from the output of registry auth_path functions.
    pub fn from_auth_path(auth_path: Vec<[StateCommitment; 3]>) -> Self {
        let layers = auth_path
            .into_iter()
            .map(|siblings_array| {
                let siblings = siblings_array
                    .iter()
                    .map(|commitment| commitment.0.to_bytes().to_vec())
                    .collect();
                MerklePathLayer { siblings }
            })
            .collect();
        MerklePath { layers }
    }

    pub fn validate(&self) -> anyhow::Result<()> {
        anyhow::ensure!(
            self.layers.len() == usize::from(crate::tree::DEFAULT_DEPTH),
            "Merkle path must have exactly {} layers, got {}",
            crate::tree::DEFAULT_DEPTH,
            self.layers.len()
        );
        for (layer_index, layer) in self.layers.iter().enumerate() {
            anyhow::ensure!(
                layer.siblings.len() == 3,
                "Merkle path layer {layer_index} must have exactly 3 siblings, got {}",
                layer.siblings.len()
            );
            for (sibling_index, sibling) in layer.siblings.iter().enumerate() {
                let bytes: [u8; 32] = sibling.as_slice().try_into().map_err(|_| {
                    anyhow::anyhow!(
                        "Merkle path layer {layer_index} sibling {sibling_index} must be 32 bytes"
                    )
                })?;
                shieldd_sdk_crypto::encoding::field(&bytes).map_err(|_| {
                    anyhow::anyhow!(
                        "Merkle path layer {layer_index} sibling {sibling_index} is not canonical"
                    )
                })?;
            }
        }
        Ok(())
    }
}

impl Default for MerklePath {
    fn default() -> Self {
        Self::zeroed()
    }
}

impl From<Vec<[StateCommitment; 3]>> for MerklePath {
    fn from(auth_path: Vec<[StateCommitment; 3]>) -> Self {
        Self::from_auth_path(auth_path)
    }
}

impl DomainType for MerklePath {
    type Proto = pb::MerklePath;
}

impl TryFrom<pb::MerklePath> for MerklePath {
    type Error = anyhow::Error;

    fn try_from(value: pb::MerklePath) -> Result<Self, Self::Error> {
        let layers = value
            .layers
            .into_iter()
            .map(|l| l.try_into())
            .collect::<Result<Vec<_>, _>>()?;
        let path = MerklePath { layers };
        path.validate()?;
        Ok(path)
    }
}

impl From<MerklePath> for pb::MerklePath {
    fn from(value: MerklePath) -> pb::MerklePath {
        pb::MerklePath {
            layers: value.layers.into_iter().map(|l| l.into()).collect(),
        }
    }
}

/// A single layer in the Quad Merkle Tree path.
#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(try_from = "pb::MerklePathLayer", into = "pb::MerklePathLayer")]
pub struct MerklePathLayer {
    pub siblings: Vec<Vec<u8>>,
}

impl DomainType for MerklePathLayer {
    type Proto = pb::MerklePathLayer;
}

impl TryFrom<pb::MerklePathLayer> for MerklePathLayer {
    type Error = anyhow::Error;

    fn try_from(value: pb::MerklePathLayer) -> Result<Self, Self::Error> {
        Ok(MerklePathLayer {
            siblings: value.siblings,
        })
    }
}

impl From<MerklePathLayer> for pb::MerklePathLayer {
    fn from(value: MerklePathLayer) -> pb::MerklePathLayer {
        pb::MerklePathLayer {
            siblings: value.siblings,
        }
    }
}

impl Eq for AssetPolicy {}

impl Eq for AssetRegistrationGrantBody {}

impl Eq for AssetRegistrationGrant {}

impl Eq for MsgRegisterAsset {}
