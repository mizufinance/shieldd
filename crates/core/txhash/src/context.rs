use crate::EffectHash;
use shieldd_sdk_tct as tct;

/// Stateless verification context for a transaction.
///
/// TODO: this is located in this crate just for convenience (at the bottom of the dep tree).
#[derive(Clone, Debug)]
pub struct TransactionContext {
    /// The transaction's anchor.
    pub anchor: tct::Root,
    /// The transaction's effect hash.
    pub effect_hash: EffectHash,
    /// The authenticated SCT position floor for old/recent classification.
    pub recent_position_floor: u64,
}
