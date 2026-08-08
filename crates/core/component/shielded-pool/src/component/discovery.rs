use cnidarium::StateWrite;

use crate::discovery::Transaction;

const PENDING_TRANSACTION_DISCOVERIES: &str = "shielded_pool/pending_transaction_discoveries";

/// Transient per-block storage for public transaction-discovery records.
///
/// Records are accumulated while transactions execute and drained into the
/// compact block at end-block. They are not consensus state and can be rebuilt
/// from the transaction bodies.
pub trait DiscoveryManager: StateWrite {
    fn record_transaction_discovery(&mut self, transaction: Transaction) {
        let mut pending: Vec<Transaction> = self
            .object_get(PENDING_TRANSACTION_DISCOVERIES)
            .unwrap_or_default();
        pending.push(transaction);
        self.object_put(PENDING_TRANSACTION_DISCOVERIES, pending);
    }

    fn pending_transaction_discoveries(&mut self) -> Vec<Transaction> {
        let pending = self
            .object_get(PENDING_TRANSACTION_DISCOVERIES)
            .unwrap_or_default();
        self.object_delete(PENDING_TRANSACTION_DISCOVERIES);
        pending
    }
}

impl<T: StateWrite + ?Sized> DiscoveryManager for T {}
