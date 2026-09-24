pub mod config {
    pub fn compliance_params() -> &'static str {
        "compliance/config/params"
    }
}

/// State key for the user compliance tree root.
pub fn user_tree_root() -> &'static str {
    "compliance/user_tree_root"
}

/// State key for the asset IMT root.
pub fn asset_imt_root() -> &'static str {
    "compliance/asset_imt_root"
}

/// Nonverifiable tree node storage.
pub mod tree_storage {
    pub fn user_node_prefix() -> &'static str {
        "compliance/tree/user/node/"
    }

    pub fn user_node(level: u8, position: u64) -> String {
        format!("{}{:03}/{:020}", user_node_prefix(), level, position)
    }

    pub fn asset_node_prefix() -> &'static str {
        "compliance/tree/asset/node/"
    }

    pub fn asset_node(level: u8, position: u64) -> String {
        format!("{}{:03}/{:020}", asset_node_prefix(), level, position)
    }

    pub fn asset_leaf_prefix() -> &'static str {
        "compliance/tree/asset/leaf/"
    }

    pub fn asset_leaf(position: u64) -> String {
        format!("{}{:020}", asset_leaf_prefix(), position)
    }

    pub fn asset_value_desc_prefix() -> &'static str {
        "compliance/tree/asset/value_desc/"
    }

    pub fn asset_value_desc(descending_value_key: [u8; 32]) -> String {
        format!(
            "{}{}",
            asset_value_desc_prefix(),
            hex::encode(descending_value_key)
        )
    }
}

/// State key for the user count (number of registered users)
pub fn user_count() -> &'static str {
    "compliance/user_count"
}

/// State key for the asset count (number of registered assets)
pub fn asset_count() -> &'static str {
    "compliance/asset_count"
}

pub mod audit_log {
    pub fn state() -> &'static str {
        "compliance/audit_log/state"
    }

    pub fn record(index: u64) -> Vec<u8> {
        let mut key = b"compliance/audit_log/record/".to_vec();
        key.extend_from_slice(&index.to_be_bytes());
        key
    }
}

/// Prefix for compliance registrar verification keys.
pub fn compliance_registrar_vk_prefix() -> &'static str {
    "compliance/registrar/vk/"
}

/// State key for a compliance registrar verification key.
pub fn compliance_registrar_vk(vk: &reddsa::VerificationKey<reddsa::sapling::SpendAuth>) -> String {
    format!(
        "{}{}",
        compliance_registrar_vk_prefix(),
        hex::encode(<[u8; 32]>::from(*vk))
    )
}

/// Object-store keys for compliance in-block caches.
pub mod cache {
    /// Cached asset policies for this state delta.
    pub fn cached_asset_policies() -> &'static str {
        "compliance/cache/asset_policies"
    }
}

/// State key for asset-specific compliance policy (dk_pub, daily_volume_limit).
/// This stores issuer-defined policies for daily_volume_limit-based flagging.
pub fn asset_policy(asset_id: &shieldd_sdk_asset::asset::Id) -> String {
    format!("compliance/asset_policy/{}", asset_id)
}

/// State key for regulated external IBC origin lookup keyed by base denom.
pub fn ibc_origin_asset(base_denom: &str) -> String {
    let hash = blake2b_simd::Params::new()
        .hash_length(32)
        .personal(b"pen.ibc.origin")
        .hash(base_denom.as_bytes());
    format!("compliance/ibc_origin/{}", hex::encode(hash.as_bytes()))
}

/// Consensus key for a user's position and full compliance leaf.
pub fn user_leaf_record(
    address: &shieldd_sdk_keys::Address,
    asset_id: &shieldd_sdk_asset::asset::Id,
) -> String {
    format!(
        "compliance/user/record/{}/{}",
        hex::encode(address.to_vec()),
        hex::encode(asset_id.0.to_bytes())
    )
}

/// Consensus registration marker for one address and asset.
pub fn user_asset_position(
    address: &shieldd_sdk_keys::Address,
    asset_id: &shieldd_sdk_asset::asset::Id,
) -> String {
    format!(
        "compliance/user/asset_position/{}/{}",
        hex::encode(address.to_vec()),
        hex::encode(asset_id.0.to_bytes())
    )
}

/// State key for pending user registrations (buffered during block execution).
///
/// These are accumulated during transaction processing and drained when
/// building the CompactBlock, following the SCT pending_note_payloads pattern.
pub fn pending_user_registrations() -> &'static str {
    "compliance/pending_user_registrations"
}

pub fn pending_user_status_changes() -> &'static str {
    "compliance/pending_user_status_changes"
}

/// State key for pending asset registrations (buffered during block execution).
///
/// These are accumulated during transaction processing and drained when
/// building the CompactBlock, following the SCT pending_note_payloads pattern.
pub fn pending_asset_registrations() -> &'static str {
    "compliance/pending_asset_registrations"
}

/// Verifiable paired snapshot admission state.
pub mod admission {
    use crate::admission::ComplianceSnapshot;
    use shieldd_sdk_tct::StateCommitment;
    pub fn freeze_epoch() -> &'static str {
        "compliance/admission/freeze_epoch"
    }
    pub fn pending_genesis() -> &'static str {
        "compliance/admission/pending_genesis"
    }
    fn pair_bytes(user: &StateCommitment, asset: &StateCommitment) -> String {
        format!(
            "{}{}",
            hex::encode(user.0.to_bytes()),
            hex::encode(asset.0.to_bytes())
        )
    }
    pub fn pairs_prefix() -> &'static str {
        "compliance/admission/pairs/"
    }
    pub fn pair(user: &StateCommitment, asset: &StateCommitment) -> String {
        format!("{}{}", pairs_prefix(), pair_bytes(user, asset))
    }
    pub fn last_seen_prefix() -> &'static str {
        "compliance/admission/last_seen/"
    }
    pub fn last_seen(snapshot: &ComplianceSnapshot) -> String {
        format!(
            "{}{:016x}/{}",
            last_seen_prefix(),
            snapshot.observed_height,
            pair_bytes(&snapshot.user_root, &snapshot.asset_root)
        )
    }
}
