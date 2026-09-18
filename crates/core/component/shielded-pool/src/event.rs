use anyhow::{anyhow, Context};
use prost::Name as _;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};
use shieldd_sdk_sct::Nullifier;

use crate::note::StateCommitment;

#[derive(Clone, Debug)]
pub struct EventNullifierSpent {
    pub nullifier: Nullifier,
}

impl TryFrom<pb::EventNullifierSpent> for EventNullifierSpent {
    type Error = anyhow::Error;

    fn try_from(value: pb::EventNullifierSpent) -> Result<Self, Self::Error> {
        fn inner(value: pb::EventNullifierSpent) -> anyhow::Result<EventNullifierSpent> {
            Ok(EventNullifierSpent {
                nullifier: value
                    .nullifier
                    .ok_or(anyhow!("missing `nullifier`"))?
                    .try_into()?,
            })
        }
        inner(value).context(format!("parsing {}", pb::EventNullifierSpent::NAME))
    }
}

impl From<EventNullifierSpent> for pb::EventNullifierSpent {
    fn from(value: EventNullifierSpent) -> Self {
        Self {
            nullifier: Some(value.nullifier.into()),
        }
    }
}

impl DomainType for EventNullifierSpent {
    type Proto = pb::EventNullifierSpent;
}

#[derive(Clone, Debug)]
pub struct EventNoteCreated {
    pub note_commitment: StateCommitment,
}

impl TryFrom<pb::EventNoteCreated> for EventNoteCreated {
    type Error = anyhow::Error;

    fn try_from(value: pb::EventNoteCreated) -> Result<Self, Self::Error> {
        fn inner(value: pb::EventNoteCreated) -> anyhow::Result<EventNoteCreated> {
            Ok(EventNoteCreated {
                note_commitment: value
                    .note_commitment
                    .ok_or(anyhow!("missing `note_commitment`"))?
                    .try_into()?,
            })
        }
        inner(value).context(format!("parsing {}", pb::EventNoteCreated::NAME))
    }
}

impl From<EventNoteCreated> for pb::EventNoteCreated {
    fn from(value: EventNoteCreated) -> Self {
        Self {
            note_commitment: Some(value.note_commitment.into()),
        }
    }
}

impl DomainType for EventNoteCreated {
    type Proto = pb::EventNoteCreated;
}
