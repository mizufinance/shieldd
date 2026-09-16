use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct RingState {
    pub ring_pk_hex: String,
    pub ring_id: String,
    pub policy_id: String,
    pub resource: String,
    pub permission: String,
}
