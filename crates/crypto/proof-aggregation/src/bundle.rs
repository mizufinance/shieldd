use anyhow::{anyhow, Result};
use prost::Message;
use serde::{Deserialize, Serialize};
use shieldd_sdk_shielded_pool::{NoteReshapeFamilyId, ShieldedIcs20WithdrawalFamilyId};

const PROOF_FAMILY_UNSPECIFIED: u32 = 0;
const PROOF_FAMILY_TRANSFER: u32 = 7;
const PROOF_FAMILY_NOTE_RESHAPE: u32 = 8;
const PROOF_FAMILY_SHIELDED_ICS20_WITHDRAWAL: u32 = 10;

#[derive(Clone, Copy, Debug, Deserialize, Eq, Hash, Ord, PartialEq, PartialOrd, Serialize)]
pub enum ProofFamilyId {
    Transfer,
    NoteReshape(NoteReshapeFamilyId),
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

#[derive(Clone, PartialEq, Message)]
struct WireFamilyAggregate {
    #[prost(uint32, tag = "1")]
    family_id: u32,
    #[prost(uint32, tag = "3")]
    real_count: u32,
    #[prost(uint32, tag = "4")]
    padded_count: u32,
    #[prost(bytes = "vec", tag = "5")]
    aggregate_proof: Vec<u8>,
    #[prost(uint32, tag = "6")]
    note_reshape_family_id: u32,
    #[prost(uint32, tag = "8")]
    shielded_ics20_withdrawal_family_id: u32,
}

#[derive(Clone, PartialEq, Message)]
struct WireAggregateBundle {
    #[prost(uint32, tag = "1")]
    version: u32,
    #[prost(bytes = "vec", tag = "2")]
    srs_id: Vec<u8>,
    #[prost(message, repeated, tag = "3")]
    families: Vec<WireFamilyAggregate>,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum FamilyRouteKind {
    Transfer,
    NoteReshape,
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
    note_reshape_family_id: u32,
    shielded_ics20_withdrawal_family_id: u32,
) -> Result<FamilyRoute, FamilyRouteError> {
    match family_id {
        PROOF_FAMILY_TRANSFER => {
            if note_reshape_family_id != 0 || shielded_ics20_withdrawal_family_id != 0 {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else {
                Ok(FamilyRoute {
                    kind: FamilyRouteKind::Transfer,
                    subfamily_id: 0,
                })
            }
        }
        PROOF_FAMILY_NOTE_RESHAPE => {
            if note_reshape_family_id == 0 {
                Err(FamilyRouteError::MissingSubfamily)
            } else if shielded_ics20_withdrawal_family_id != 0 {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else if NoteReshapeFamilyId::try_from(note_reshape_family_id).is_ok() {
                Ok(FamilyRoute {
                    kind: FamilyRouteKind::NoteReshape,
                    subfamily_id: note_reshape_family_id,
                })
            } else {
                Err(FamilyRouteError::UnknownSubfamily)
            }
        }
        PROOF_FAMILY_SHIELDED_ICS20_WITHDRAWAL => {
            if shielded_ics20_withdrawal_family_id == 0 {
                Err(FamilyRouteError::MissingSubfamily)
            } else if note_reshape_family_id != 0 {
                Err(FamilyRouteError::UnexpectedSubfamily)
            } else if ShieldedIcs20WithdrawalFamilyId::try_from(shielded_ics20_withdrawal_family_id)
                .is_ok()
            {
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

impl ProofFamilyId {
    pub(crate) fn try_from_proto_fields(
        family_id: i32,
        note_reshape_family_id: u32,
        shielded_ics20_withdrawal_family_id: u32,
    ) -> Result<Self> {
        let family_id_u32 =
            u32::try_from(family_id).map_err(|_| anyhow!("unknown proof family id {family_id}"))?;
        if family_id_u32 == PROOF_FAMILY_UNSPECIFIED {
            return Err(anyhow!("unspecified proof family id"));
        }
        let route = family_route_from_proto_fields(
            family_id_u32,
            note_reshape_family_id,
            shielded_ics20_withdrawal_family_id,
        )
        .map_err(|err| family_route_error_message(err, family_id))?;
        match route.kind {
            FamilyRouteKind::Transfer => Ok(Self::Transfer),
            FamilyRouteKind::NoteReshape => Ok(Self::NoteReshape(route.subfamily_id.try_into()?)),
            FamilyRouteKind::ShieldedIcs20Withdrawal => Ok(Self::ShieldedIcs20Withdrawal(
                route.subfamily_id.try_into()?,
            )),
        }
    }

    pub(crate) fn note_reshape_family_id(self) -> u32 {
        match self {
            ProofFamilyId::NoteReshape(family_id) => family_id.get(),
            _ => 0,
        }
    }

    pub(crate) fn shielded_ics20_withdrawal_family_id(self) -> u32 {
        match self {
            ProofFamilyId::ShieldedIcs20Withdrawal(family_id) => family_id.get(),
            _ => 0,
        }
    }

    pub(crate) fn wire_id(self) -> u32 {
        match self {
            Self::Transfer => PROOF_FAMILY_TRANSFER,
            Self::NoteReshape(_) => PROOF_FAMILY_NOTE_RESHAPE,
            Self::ShieldedIcs20Withdrawal(_) => PROOF_FAMILY_SHIELDED_ICS20_WITHDRAWAL,
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

impl AggregateBundle {
    pub fn encode_to_vec(&self) -> Vec<u8> {
        WireAggregateBundle::from(self.clone()).encode_to_vec()
    }

    pub fn decode(bytes: &[u8]) -> Result<Self> {
        WireAggregateBundle::decode(bytes)?.try_into()
    }
}

impl From<AggregateBundle> for WireAggregateBundle {
    fn from(value: AggregateBundle) -> Self {
        Self {
            version: value.version,
            srs_id: value.srs_id,
            families: value.families.into_iter().map(Into::into).collect(),
        }
    }
}

impl TryFrom<WireAggregateBundle> for AggregateBundle {
    type Error = anyhow::Error;

    fn try_from(value: WireAggregateBundle) -> Result<Self> {
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

impl From<FamilyAggregate> for WireFamilyAggregate {
    fn from(value: FamilyAggregate) -> Self {
        Self {
            family_id: value.family_id.wire_id(),
            note_reshape_family_id: value.family_id.note_reshape_family_id(),
            shielded_ics20_withdrawal_family_id: value
                .family_id
                .shielded_ics20_withdrawal_family_id(),
            real_count: value.real_count,
            padded_count: value.padded_count,
            aggregate_proof: value.aggregate_proof,
        }
    }
}

impl TryFrom<WireFamilyAggregate> for FamilyAggregate {
    type Error = anyhow::Error;

    fn try_from(value: WireFamilyAggregate) -> Result<Self> {
        Ok(Self {
            family_id: ProofFamilyId::try_from_proto_fields(
                i32::try_from(value.family_id)
                    .map_err(|_| anyhow!("unknown proof family id {}", value.family_id))?,
                value.note_reshape_family_id,
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
    use super::{
        AggregateBundle, FamilyAggregate, ProofFamilyId, WireAggregateBundle, WireFamilyAggregate,
        PROOF_FAMILY_UNSPECIFIED,
    };
    use prost::Message;
    use shieldd_sdk_shielded_pool::{NoteReshapeFamilyId, ShieldedIcs20WithdrawalFamilyId};

    #[test]
    fn aggregate_bundle_private_wire_round_trip() {
        let bundle = AggregateBundle {
            version: 7,
            srs_id: vec![1, 2, 3, 4],
            families: vec![
                FamilyAggregate {
                    family_id: ProofFamilyId::Transfer,
                    real_count: 1,
                    padded_count: 1,
                    aggregate_proof: vec![0],
                },
                FamilyAggregate {
                    family_id: ProofFamilyId::NoteReshape(NoteReshapeFamilyId::EightByOne),
                    real_count: 1,
                    padded_count: 1,
                    aggregate_proof: vec![1, 2, 3],
                },
                FamilyAggregate {
                    family_id: ProofFamilyId::NoteReshape(NoteReshapeFamilyId::OneByEight),
                    real_count: 2,
                    padded_count: 2,
                    aggregate_proof: vec![4, 5, 6],
                },
                FamilyAggregate {
                    family_id: ProofFamilyId::ShieldedIcs20Withdrawal(
                        ShieldedIcs20WithdrawalFamilyId::Canonical,
                    ),
                    real_count: 4,
                    padded_count: 4,
                    aggregate_proof: vec![7, 8, 9],
                },
            ],
        };

        let encoded = bundle.encode_to_vec();
        let decoded = AggregateBundle::decode(&encoded).expect("bundle round-trip");
        assert_eq!(decoded, bundle);
    }

    #[test]
    fn aggregate_bundle_decode_rejects_invalid_family_routes() {
        let cases = [
            (
                PROOF_FAMILY_UNSPECIFIED,
                0,
                0,
                "unspecified proof family id",
            ),
            (
                super::PROOF_FAMILY_NOTE_RESHAPE,
                0,
                0,
                "missing its required subfamily id",
            ),
            (
                super::PROOF_FAMILY_TRANSFER,
                NoteReshapeFamilyId::EightByOne.get(),
                0,
                "has subfamily ids for another family",
            ),
            (
                super::PROOF_FAMILY_SHIELDED_ICS20_WITHDRAWAL,
                0,
                u32::MAX,
                "has an unknown subfamily id",
            ),
        ];

        for (
            family_id,
            note_reshape_family_id,
            shielded_ics20_withdrawal_family_id,
            expected_error,
        ) in cases
        {
            let wire = WireAggregateBundle {
                version: 1,
                srs_id: vec![0; 32],
                families: vec![WireFamilyAggregate {
                    family_id,
                    note_reshape_family_id,
                    shielded_ics20_withdrawal_family_id,
                    real_count: 1,
                    padded_count: 1,
                    aggregate_proof: vec![1, 2, 3],
                }],
            };

            let err = AggregateBundle::decode(&wire.encode_to_vec())
                .expect_err("invalid aggregate family route should reject");
            assert!(
                err.to_string().contains(expected_error),
                "unexpected error for family {family_id}: {err}"
            );
        }
    }
}
