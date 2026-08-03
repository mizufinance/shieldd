#[cfg(feature = "component")]
use anyhow::{anyhow, Result};
#[cfg(feature = "component")]
use async_trait::async_trait;
#[cfg(feature = "component")]
use cnidarium::{StateRead, StateWrite};
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::shieldd::core::component::compliance::v1 as pb;
use shieldd_sdk_proto::DomainType;
#[cfg(feature = "component")]
use shieldd_sdk_proto::{StateReadProto, StateWriteProto};

use crate::FuzzyPrecision;

#[cfg(feature = "component")]
use crate::state_key;

/// Compliance component chain parameters.
#[derive(Clone, Debug, Serialize, Deserialize, PartialEq, Eq)]
#[serde(
    try_from = "pb::ComplianceParameters",
    into = "pb::ComplianceParameters"
)]
pub struct ComplianceParameters {
    /// Number of recent compliance anchors accepted for proof validation.
    pub anchor_validation_window_blocks: u64,
    /// Protocol-selected fuzzy clue precision.
    pub fuzzy_precision: FuzzyPrecision,
}

impl DomainType for ComplianceParameters {
    type Proto = pb::ComplianceParameters;
}

impl TryFrom<pb::ComplianceParameters> for ComplianceParameters {
    type Error = anyhow::Error;

    fn try_from(msg: pb::ComplianceParameters) -> anyhow::Result<Self> {
        Ok(Self {
            anchor_validation_window_blocks: msg.anchor_validation_window_blocks,
            fuzzy_precision: FuzzyPrecision::new(
                u8::try_from(msg.fuzzy_precision_bits)
                    .map_err(|_| anyhow::anyhow!("fuzzy precision does not fit in u8"))?,
            )?,
        })
    }
}

impl From<ComplianceParameters> for pb::ComplianceParameters {
    fn from(params: ComplianceParameters) -> Self {
        Self {
            anchor_validation_window_blocks: params.anchor_validation_window_blocks,
            fuzzy_precision_bits: u32::from(params.fuzzy_precision.bits()),
        }
    }
}

impl Default for ComplianceParameters {
    fn default() -> Self {
        Self {
            // 14 days at today's 5s target block time.
            anchor_validation_window_blocks: (14 * 24 * 3600) / 5,
            fuzzy_precision: FuzzyPrecision::default(),
        }
    }
}

/// Read access to compliance component parameters.
#[cfg(feature = "component")]
#[async_trait]
pub trait StateReadExt: StateRead {
    async fn get_compliance_params(&self) -> Result<ComplianceParameters> {
        self.get(state_key::config::compliance_params())
            .await?
            .ok_or_else(|| anyhow!("Missing ComplianceParameters"))
    }
}

#[cfg(feature = "component")]
impl<T: StateRead + ?Sized> StateReadExt for T {}

/// Write access to compliance component parameters.
#[cfg(feature = "component")]
#[async_trait]
pub trait StateWriteExt: StateWrite {
    fn put_compliance_params(&mut self, params: ComplianceParameters) {
        self.put(state_key::config::compliance_params().to_string(), params);
    }
}

#[cfg(feature = "component")]
impl<T: StateWrite + ?Sized> StateWriteExt for T {}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn protobuf_round_trip_preserves_precision() {
        let params = ComplianceParameters {
            anchor_validation_window_blocks: 42,
            fuzzy_precision: FuzzyPrecision::new(11).unwrap(),
        };
        let proto: pb::ComplianceParameters = params.clone().into();
        assert_eq!(proto.fuzzy_precision_bits, 11);
        assert_eq!(ComplianceParameters::try_from(proto).unwrap(), params);
    }

    #[test]
    fn protobuf_rejects_precision_outside_protocol_range() {
        for fuzzy_precision_bits in [0, 6, 13, u32::MAX] {
            let proto = pb::ComplianceParameters {
                anchor_validation_window_blocks: 42,
                fuzzy_precision_bits,
            };
            assert!(ComplianceParameters::try_from(proto).is_err());
        }
    }
}
