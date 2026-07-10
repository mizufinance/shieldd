use anyhow::{anyhow, Result};
use serde::{Deserialize, Serialize};
use shieldd_sdk_proto::{core::transaction::v1 as pb, DomainType};
use shieldd_sdk_shielded_pool::{
    ConsolidateFamilyId, ShieldedIcs20WithdrawalFamilyId, SplitFamilyId,
};

const PROOF_FAMILY_TRANSFER: u32 = pb::ProofFamilyId::Transfer as u32;
const PROOF_FAMILY_CONSOLIDATE: u32 = pb::ProofFamilyId::Consolidate as u32;
const PROOF_FAMILY_SPLIT: u32 = pb::ProofFamilyId::Split as u32;
const PROOF_FAMILY_SHIELDED_ICS20_WITHDRAWAL: u32 =
    pb::ProofFamilyId::ShieldedIcs20Withdrawal as u32;

const CONSOLIDATE_TWO_BY_ONE: u32 = 1;
const CONSOLIDATE_FOUR_BY_ONE: u32 = 2;
const CONSOLIDATE_EIGHT_BY_ONE: u32 = 3;
const SPLIT_ONE_BY_FOUR: u32 = 1;
const SPLIT_ONE_BY_EIGHT: u32 = 2;
const SHIELDED_ICS20_WITHDRAWAL_CANONICAL: u32 = 1;

#[derive(Clone, Copy, Debug, Deserialize, Eq, Hash, Ord, PartialEq, PartialOrd, Serialize)]
pub enum ProofFamilyId {
    Transfer,
    Consolidate(ConsolidateFamilyId),
    Split(SplitFamilyId),
    ShieldedIcs20Withdrawal(ShieldedIcs20WithdrawalFamilyId),
}

#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
pub struct FamilyAggregate {
    pub family_id: ProofFamilyId,
    pub real_count: u32,
    pub padded_count: u32,
    pub aggregate_proof: Vec<u8>,
}

#[derive(Clone, Debug, Deserialize, Eq, PartialEq, Serialize)]
pub struct AggregateBundle {
    pub version: u32,
    pub srs_id: Vec<u8>,
    pub families: Vec<FamilyAggregate>,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum FamilyRouteKind {
    Transfer,
    Consolidate,
    Split,
    ShieldedIcs20Withdrawal,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct FamilyRoute {
    pub kind: FamilyRouteKind,
    pub subfamily_id: u32,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum FamilyRouteError {
    UnknownProofFamily,
    MissingSubfamily,
    UnexpectedSubfamily,
    UnknownSubfamily,
}

pub fn family_route_from_proto_fields(
    family_id: u32,
    consolidate_family_id: u32,
    split_family_id: u32,
    shielded_ics20_withdrawal_family_id: u32,
) -> Result<FamilyRoute, FamilyRouteError> {
    match family_id {
        PROOF_FAMILY_TRANSFER => {
            if consolidate_family_id != 0
                || split_family_id != 0
                || shielded_ics20_withdrawal_family_id != 0
            {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else {
                Ok(FamilyRoute {
                    kind: FamilyRouteKind::Transfer,
                    subfamily_id: 0,
                })
            }
        }
        PROOF_FAMILY_CONSOLIDATE => {
            if consolidate_family_id == 0 {
                Err(FamilyRouteError::MissingSubfamily)
            } else if split_family_id != 0 || shielded_ics20_withdrawal_family_id != 0 {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else if consolidate_family_id == CONSOLIDATE_TWO_BY_ONE
                || consolidate_family_id == CONSOLIDATE_FOUR_BY_ONE
                || consolidate_family_id == CONSOLIDATE_EIGHT_BY_ONE
            {
                Ok(FamilyRoute {
                    kind: FamilyRouteKind::Consolidate,
                    subfamily_id: consolidate_family_id,
                })
            } else {
                Err(FamilyRouteError::UnknownSubfamily)
            }
        }
        PROOF_FAMILY_SPLIT => {
            if split_family_id == 0 {
                Err(FamilyRouteError::MissingSubfamily)
            } else if consolidate_family_id != 0 || shielded_ics20_withdrawal_family_id != 0 {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else if split_family_id == SPLIT_ONE_BY_FOUR || split_family_id == SPLIT_ONE_BY_EIGHT
            {
                Ok(FamilyRoute {
                    kind: FamilyRouteKind::Split,
                    subfamily_id: split_family_id,
                })
            } else {
                Err(FamilyRouteError::UnknownSubfamily)
            }
        }
        PROOF_FAMILY_SHIELDED_ICS20_WITHDRAWAL => {
            if shielded_ics20_withdrawal_family_id == 0 {
                Err(FamilyRouteError::MissingSubfamily)
            } else if consolidate_family_id != 0 || split_family_id != 0 {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else if shielded_ics20_withdrawal_family_id == SHIELDED_ICS20_WITHDRAWAL_CANONICAL {
                Ok(FamilyRoute {
                    kind: FamilyRouteKind::ShieldedIcs20Withdrawal,
                    subfamily_id: shielded_ics20_withdrawal_family_id,
                })
            } else {
                Err(FamilyRouteError::UnknownSubfamily)
            }
        }
        _ => Err(FamilyRouteError::UnknownProofFamily),
    }
}

impl From<ProofFamilyId> for pb::ProofFamilyId {
    fn from(value: ProofFamilyId) -> Self {
        match value {
            ProofFamilyId::Transfer => Self::Transfer,
            ProofFamilyId::Consolidate(_) => Self::Consolidate,
            ProofFamilyId::Split(_) => Self::Split,
            ProofFamilyId::ShieldedIcs20Withdrawal(_) => Self::ShieldedIcs20Withdrawal,
        }
    }
}

impl ProofFamilyId {
    pub(crate) fn try_from_proto_fields(
        family_id: i32,
        consolidate_family_id: u32,
        split_family_id: u32,
        shielded_ics20_withdrawal_family_id: u32,
    ) -> Result<Self> {
        let family_id_u32 =
            u32::try_from(family_id).map_err(|_| anyhow!("unknown proof family id {family_id}"))?;
        if family_id_u32 == pb::ProofFamilyId::Unspecified as u32 {
            return Err(anyhow!("unspecified proof family id"));
        }
        let route = family_route_from_proto_fields(
            family_id_u32,
            consolidate_family_id,
            split_family_id,
            shielded_ics20_withdrawal_family_id,
        )
        .map_err(|err| family_route_error_message(err, family_id))?;
        match route.kind {
            FamilyRouteKind::Transfer => Ok(Self::Transfer),
            FamilyRouteKind::Consolidate => Ok(Self::Consolidate(route.subfamily_id.try_into()?)),
            FamilyRouteKind::Split => Ok(Self::Split(route.subfamily_id.try_into()?)),
            FamilyRouteKind::ShieldedIcs20Withdrawal => Ok(Self::ShieldedIcs20Withdrawal(
                route.subfamily_id.try_into()?,
            )),
        }
    }

    pub(crate) fn consolidate_family_id(self) -> u32 {
        match self {
            ProofFamilyId::Consolidate(family_id) => family_id.get(),
            _ => 0,
        }
    }

    pub(crate) fn split_family_id(self) -> u32 {
        match self {
            ProofFamilyId::Split(family_id) => family_id.get(),
            _ => 0,
        }
    }

    pub(crate) fn shielded_ics20_withdrawal_family_id(self) -> u32 {
        match self {
            ProofFamilyId::ShieldedIcs20Withdrawal(family_id) => family_id.get(),
            _ => 0,
        }
    }
}

fn family_route_error_message(err: FamilyRouteError, family_id: i32) -> anyhow::Error {
    match err {
        FamilyRouteError::UnknownProofFamily => anyhow!("unknown proof family id {family_id}"),
        FamilyRouteError::MissingSubfamily => {
            anyhow!("aggregate family {family_id} is missing its required subfamily id")
        }
        FamilyRouteError::UnexpectedSubfamily => {
            anyhow!("aggregate family {family_id} has subfamily ids for another family")
        }
        FamilyRouteError::UnknownSubfamily => {
            anyhow!("aggregate family {family_id} has an unknown subfamily id")
        }
    }
}

impl TryFrom<i32> for ProofFamilyId {
    type Error = anyhow::Error;

    fn try_from(value: i32) -> Result<Self> {
        Self::try_from_proto_fields(value, 0, 0, 0)
    }
}

impl DomainType for AggregateBundle {
    type Proto = pb::AggregateBundle;
}

impl From<AggregateBundle> for pb::AggregateBundle {
    fn from(value: AggregateBundle) -> Self {
        Self {
            version: value.version,
            srs_id: value.srs_id,
            families: value.families.into_iter().map(Into::into).collect(),
        }
    }
}

impl TryFrom<pb::AggregateBundle> for AggregateBundle {
    type Error = anyhow::Error;

    fn try_from(value: pb::AggregateBundle) -> Result<Self> {
        Ok(Self {
            version: value.version,
            srs_id: value.srs_id,
            families: value
                .families
                .into_iter()
                .map(TryInto::try_into)
                .collect::<Result<Vec<_>>>()?,
        })
    }
}

impl DomainType for FamilyAggregate {
    type Proto = pb::FamilyAggregate;
}

impl From<FamilyAggregate> for pb::FamilyAggregate {
    fn from(value: FamilyAggregate) -> Self {
        Self {
            family_id: pb::ProofFamilyId::from(value.family_id) as i32,
            consolidate_family_id: value.family_id.consolidate_family_id(),
            split_family_id: value.family_id.split_family_id(),
            shielded_ics20_withdrawal_family_id: value
                .family_id
                .shielded_ics20_withdrawal_family_id(),
            real_count: value.real_count,
            padded_count: value.padded_count,
            aggregate_proof: value.aggregate_proof,
        }
    }
}

impl TryFrom<pb::FamilyAggregate> for FamilyAggregate {
    type Error = anyhow::Error;

    fn try_from(value: pb::FamilyAggregate) -> Result<Self> {
        Ok(Self {
            family_id: ProofFamilyId::try_from_proto_fields(
                value.family_id,
                value.consolidate_family_id,
                value.split_family_id,
                value.shielded_ics20_withdrawal_family_id,
            )?,
            real_count: value.real_count,
            padded_count: value.padded_count,
            aggregate_proof: value.aggregate_proof,
        })
    }
}

#[cfg(test)]
mod tests {
    use super::{AggregateBundle, FamilyAggregate, ProofFamilyId};
    use shieldd_sdk_proto::DomainType;
    use shieldd_sdk_shielded_pool::{ConsolidateFamilyId, SplitFamilyId};

    #[test]
    fn aggregate_bundle_proto_round_trip() {
        let bundle = AggregateBundle {
            version: 7,
            srs_id: vec![1, 2, 3, 4],
            families: vec![
                FamilyAggregate {
                    family_id: ProofFamilyId::Consolidate(ConsolidateFamilyId::TwoByOne),
                    real_count: 1,
                    padded_count: 1,
                    aggregate_proof: vec![1, 2, 3],
                },
                FamilyAggregate {
                    family_id: ProofFamilyId::Split(SplitFamilyId::OneByEight),
                    real_count: 2,
                    padded_count: 2,
                    aggregate_proof: vec![4, 5, 6],
                },
            ],
        };

        let proto = bundle.to_proto();
        let decoded = AggregateBundle::try_from(proto).expect("bundle round-trip");
        assert_eq!(decoded, bundle);
    }

    #[test]
    fn aggregate_bundle_decode_rejects_unspecified_family() {
        let proto = shieldd_sdk_proto::core::transaction::v1::AggregateBundle {
            version: 1,
            srs_id: vec![0; 32],
            families: vec![shieldd_sdk_proto::core::transaction::v1::FamilyAggregate {
                family_id: shieldd_sdk_proto::core::transaction::v1::ProofFamilyId::Unspecified
                    as i32,
                consolidate_family_id: 0,
                split_family_id: 0,
                shielded_ics20_withdrawal_family_id: 0,
                real_count: 1,
                padded_count: 1,
                aggregate_proof: vec![1, 2, 3],
            }],
        };

        let err = AggregateBundle::try_from(proto)
            .expect_err("unspecified aggregate family should reject");

        assert!(err.to_string().contains("unspecified proof family id"));
    }
}
