use serde::{Deserialize, Serialize};
use shieldd_sdk_keys::PayloadKey;
use shieldd_sdk_proto::{core::component::shielded_pool::v1 as pb, DomainType};

use crate::{NoteReshape, NoteView};

#[derive(Clone, Debug, Serialize, Deserialize)]
#[serde(try_from = "pb::NoteReshapeView", into = "pb::NoteReshapeView")]
#[allow(clippy::large_enum_variant)]
pub enum NoteReshapeView {
    Visible {
        note_reshape: NoteReshape,
        spent_notes: Vec<NoteView>,
        created_notes: Vec<NoteView>,
        payload_key: PayloadKey,
    },
    Opaque {
        note_reshape: NoteReshape,
    },
}

impl DomainType for NoteReshapeView {
    type Proto = pb::NoteReshapeView;
}

impl TryFrom<pb::NoteReshapeView> for NoteReshapeView {
    type Error = anyhow::Error;

    fn try_from(v: pb::NoteReshapeView) -> Result<Self, Self::Error> {
        match v
            .note_reshape_view
            .ok_or_else(|| anyhow::anyhow!("missing note_reshape_view field"))?
        {
            pb::note_reshape_view::NoteReshapeView::Visible(x) => Ok(Self::Visible {
                note_reshape: x
                    .note_reshape
                    .ok_or_else(|| anyhow::anyhow!("missing note_reshape field"))?
                    .try_into()?,
                spent_notes: x
                    .spent_notes
                    .into_iter()
                    .map(TryInto::try_into)
                    .collect::<Result<Vec<_>, _>>()?,
                created_notes: x
                    .created_notes
                    .into_iter()
                    .map(TryInto::try_into)
                    .collect::<Result<Vec<_>, _>>()?,
                payload_key: x
                    .payload_key
                    .ok_or_else(|| anyhow::anyhow!("missing payload key"))?
                    .inner
                    .as_slice()
                    .try_into()?,
            }),
            pb::note_reshape_view::NoteReshapeView::Opaque(x) => Ok(Self::Opaque {
                note_reshape: x
                    .note_reshape
                    .ok_or_else(|| anyhow::anyhow!("missing note_reshape field"))?
                    .try_into()?,
            }),
        }
    }
}

impl From<NoteReshapeView> for pb::NoteReshapeView {
    fn from(v: NoteReshapeView) -> Self {
        use pb::note_reshape_view as cv;

        match v {
            NoteReshapeView::Visible {
                note_reshape,
                spent_notes,
                created_notes,
                payload_key,
            } => Self {
                note_reshape_view: Some(cv::NoteReshapeView::Visible(cv::Visible {
                    note_reshape: Some(note_reshape.into()),
                    spent_notes: spent_notes.into_iter().map(Into::into).collect(),
                    created_notes: created_notes.into_iter().map(Into::into).collect(),
                    payload_key: Some(payload_key.into()),
                })),
            },
            NoteReshapeView::Opaque { note_reshape } => Self {
                note_reshape_view: Some(cv::NoteReshapeView::Opaque(cv::Opaque {
                    note_reshape: Some(note_reshape.into()),
                })),
            },
        }
    }
}

impl From<NoteReshapeView> for NoteReshape {
    fn from(v: NoteReshapeView) -> Self {
        match v {
            NoteReshapeView::Visible { note_reshape, .. } => note_reshape,
            NoteReshapeView::Opaque { note_reshape } => note_reshape,
        }
    }
}
