use anyhow::Result;
use rand::{CryptoRng, RngCore};

use shieldd_sdk_keys::keys::SpendKey;

use crate::{AuthorizationData, TransactionPlan};

impl TransactionPlan {
    /// Authorize this [`TransactionPlan`] with the provided [`SpendKey`].
    pub fn authorize<R: RngCore + CryptoRng>(
        &self,
        mut rng: R,
        sk: &SpendKey,
    ) -> Result<AuthorizationData> {
        let effect_hash = self.effect_hash(sk.full_viewing_key())?;
        let mut spend_auths = Vec::new();

        for randomizer in self.spend_auth_randomizers() {
            let rsk = sk.spend_auth_key().randomize(&randomizer);
            spend_auths.push(rsk.sign(&mut rng, effect_hash.as_ref()));
        }

        Ok(AuthorizationData {
            effect_hash: Some(effect_hash),
            spend_auths,
        })
    }
}
