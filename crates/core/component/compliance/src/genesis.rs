//! Genesis configuration for the compliance component.
//!
//! This module defines the genesis content structure for configuring
//! compliance asset entries at chain initialization.
//!
//! The IMT always contains a structural sentinel leaf. Regulated assets may be
//! configured here; unregulated assets use IMT non-membership proofs.

use decaf377_rdsa::{SpendAuth, VerificationKey};
use serde::{Deserialize, Serialize};
use shieldd_sdk_asset::asset;
use shieldd_sdk_keys::ensure_nonidentity_spend_auth_key;
use shieldd_sdk_proto::{shieldd::core::component::compliance::v1 as pb, DomainType};

use crate::params::ComplianceParameters;

/// Genesis content for the compliance component.
///
/// This allows configuring additional compliance asset entries at genesis.
/// The IMT already contains a structural sentinel; entries listed here are
/// regulated additions on top of that baseline.
#[derive(Deserialize, Serialize, Debug, Clone, Default)]
pub struct Content {
    /// Compliance component parameters at genesis.
    #[serde(default)]
    pub compliance_params: ComplianceParameters,
    /// Native assets to register explicitly at genesis.
    pub native_assets: Vec<NativeAssetRegistration>,
    /// Compliance registrar keys authorized to register asset policies.
    pub compliance_registrar_vk: Vec<VerificationKey<SpendAuth>>,
}

impl Content {
    pub fn validate_authorization_keys(&self) -> anyhow::Result<()> {
        for registrar_vk in &self.compliance_registrar_vk {
            ensure_nonidentity_spend_auth_key(registrar_vk, "compliance registrar key")?;
        }
        for registration in &self.native_assets {
            registration.validate_authorization_keys()?;
        }
        Ok(())
    }
}

impl DomainType for Content {
    type Proto = pb::GenesisContent;
}

impl TryFrom<pb::GenesisContent> for Content {
    type Error = anyhow::Error;

    fn try_from(value: pb::GenesisContent) -> Result<Self, Self::Error> {
        let content = Self {
            compliance_params: value
                .compliance_params
                .map(TryInto::try_into)
                .transpose()?
                .unwrap_or_default(),
            native_assets: value
                .native_assets
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
            compliance_registrar_vk: value
                .compliance_registrar_vk
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<_, _>>()?,
        };
        content.validate_authorization_keys()?;
        Ok(content)
    }
}

impl From<Content> for pb::GenesisContent {
    fn from(value: Content) -> Self {
        Self {
            compliance_params: Some(value.compliance_params.into()),
            native_assets: value.native_assets.into_iter().map(Into::into).collect(),
            compliance_registrar_vk: value
                .compliance_registrar_vk
                .into_iter()
                .map(Into::into)
                .collect(),
        }
    }
}

/// Registration configuration for a native asset at genesis.
#[derive(Deserialize, Serialize, Debug, Clone)]
pub struct NativeAssetRegistration {
    /// The asset ID to register.
    pub asset_id: asset::Id,
    /// Whether this asset is regulated (requires compliance proofs).
    pub is_regulated: bool,
    /// Issuer detection key (required if is_regulated is true).
    /// Encoded as 32-byte compressed curve point.
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub dk_pub: Option<[u8; 32]>,
    /// Immutable authority key that signs user registration grants for this asset.
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub registration_authority_vk: Option<VerificationKey<SpendAuth>>,
    /// Immutable authority key that signs note seizures for this asset.
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub seizure_authority_vk: Option<VerificationKey<SpendAuth>>,
}

impl NativeAssetRegistration {
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

impl DomainType for NativeAssetRegistration {
    type Proto = pb::NativeAssetRegistration;
}

impl TryFrom<pb::NativeAssetRegistration> for NativeAssetRegistration {
    type Error = anyhow::Error;

    fn try_from(value: pb::NativeAssetRegistration) -> Result<Self, Self::Error> {
        let registration = Self {
            asset_id: value
                .asset_id
                .ok_or_else(|| anyhow::anyhow!("missing genesis native asset_id"))?
                .try_into()?,
            is_regulated: value.is_regulated,
            dk_pub: if value.dk_pub.is_empty() {
                None
            } else {
                Some(
                    value
                        .dk_pub
                        .as_slice()
                        .try_into()
                        .map_err(|e| anyhow::anyhow!("genesis dk_pub must be 32 bytes: {e}"))?,
                )
            },
            registration_authority_vk: value
                .registration_authority_vk
                .map(TryInto::try_into)
                .transpose()
                .map_err(|e| anyhow::anyhow!("invalid genesis registration_authority_vk: {e}"))?,
            seizure_authority_vk: value
                .seizure_authority_vk
                .map(TryInto::try_into)
                .transpose()
                .map_err(|e| anyhow::anyhow!("invalid genesis seizure_authority_vk: {e}"))?,
        };
        registration.validate_authorization_keys()?;
        Ok(registration)
    }
}

impl From<NativeAssetRegistration> for pb::NativeAssetRegistration {
    fn from(value: NativeAssetRegistration) -> Self {
        Self {
            asset_id: Some(value.asset_id.into()),
            is_regulated: value.is_regulated,
            dk_pub: value.dk_pub.map(Vec::from).unwrap_or_default(),
            registration_authority_vk: value.registration_authority_vk.map(Into::into),
            seizure_authority_vk: value.seizure_authority_vk.map(Into::into),
        }
    }
}

#[cfg(test)]
mod tests {
    use decaf377::Fr;
    use decaf377_rdsa::{SigningKey, SpendAuth, VerificationKey};

    use super::*;

    #[test]
    fn test_default_genesis() {
        let content = Content::default();
        assert!(content.native_assets.is_empty());
        assert_eq!(
            content.compliance_params.anchor_validation_window_blocks,
            crate::params::ComplianceParameters::default().anchor_validation_window_blocks
        );
    }

    #[test]
    fn test_serde_roundtrip() {
        let content = Content::default();
        let json = serde_json::to_string(&content).unwrap();
        let parsed: Content = serde_json::from_str(&json).unwrap();
        assert_eq!(content.native_assets.len(), parsed.native_assets.len());
    }

    #[test]
    fn genesis_rejects_identity_authorization_keys() {
        let identity = VerificationKey::from(&SigningKey::<SpendAuth>::from(Fr::from(0u64)));
        let registrar_content = Content {
            compliance_registrar_vk: vec![identity],
            ..Default::default()
        };
        let registrar_error = registrar_content
            .validate_authorization_keys()
            .expect_err("genesis registrar keys must be nonidentity");
        assert!(
            registrar_error
                .to_string()
                .contains("compliance registrar key must not be identity"),
            "unexpected rejection reason: {registrar_error:#}"
        );

        let authority_content = Content {
            native_assets: vec![NativeAssetRegistration {
                asset_id: asset::Id(decaf377::Fq::from(1u64)),
                is_regulated: false,
                dk_pub: None,
                registration_authority_vk: Some(identity),
                seizure_authority_vk: None,
            }],
            ..Default::default()
        };
        let authority_error = authority_content
            .validate_authorization_keys()
            .expect_err("genesis registration authority keys must be nonidentity");
        assert!(
            authority_error
                .to_string()
                .contains("compliance registration authority key must not be identity"),
            "unexpected rejection reason: {authority_error:#}"
        );
    }
}
