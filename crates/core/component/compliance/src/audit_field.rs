//! Payload field selection, independent of the owner's PET authorization.
use serde::{Deserialize, Serialize};
#[derive(Clone, Copy, Debug, PartialEq, Eq, Serialize, Deserialize)]
#[serde(rename_all = "snake_case")]
#[repr(u8)]
pub enum AuditField {
    Amount = 0,
    Sender = 1,
    Receiver = 2,
}
impl AuditField {
    pub const ALL: [Self; 3] = [Self::Amount, Self::Sender, Self::Receiver];
    pub fn tier(self) -> crate::transfer_audit::TransferTier {
        use crate::transfer_audit::TransferTier;
        match self {
            Self::Amount => TransferTier::OutputCore,
            Self::Sender => TransferTier::OutputExt,
            Self::Receiver => TransferTier::SenderExt,
        }
    }
}
