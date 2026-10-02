//! Permanent spentness is one participant of the native manifest.
use crate::Nullifier;
use anyhow::{ensure, Context, Result};
use shieldd_sdk_storage::{nullifier_key, nullifier_shard, Manifest, StateProof, SPENT};

#[derive(Clone, Debug)]
pub struct Status {
    pub nullifier: Nullifier,
    pub spent: bool,
    pub proof: StateProof,
}
impl Status {
    pub fn verify(&self, sdk_anchor: [u8; 32]) -> Result<()> {
        let key = nullifier_key(&self.nullifier.to_bytes());
        self.proof
            .verify(sdk_anchor, 1 + u32::from(nullifier_shard(&key)), key)?;
        ensure!(
            self.proof.value.as_deref() == self.spent.then_some(SPENT),
            "spent marker mismatch"
        );
        Ok(())
    }
}

#[cfg(feature = "component")]
#[derive(Clone)]
pub struct Reader(pub shieldd_sdk_storage::Storage);
#[cfg(feature = "component")]
impl Reader {
    pub fn status(&self, nullifier: Nullifier, manifest: &Manifest) -> Result<Status> {
        let key = nullifier_key(&nullifier.to_bytes());
        let participant = 1 + u32::from(nullifier_shard(&key));
        let (value, path) = self
            .0
            .forest()
            .read()
            .authenticated_read(&manifest.participants[participant as usize], key)?;
        let status = Status {
            nullifier,
            spent: value.is_some(),
            proof: StateProof {
                manifest: manifest.clone(),
                participant,
                key,
                value,
                path,
            },
        };
        status.verify(manifest.digest()?)?;
        Ok(status)
    }
    pub async fn contains<S: shieldd_sdk_storage::StateRead + ?Sized>(
        &self,
        state: &S,
        values: &[Nullifier],
    ) -> Result<Vec<bool>> {
        let view = state
            .read_view()
            .context("native reads require an owned immutable view")?;
        let Some(manifest) = view.manifest else {
            ensure!(
                self.0.manifest().is_none(),
                "uninitialized read has a committed owner"
            );
            return Ok(vec![false; values.len()]);
        };
        let forest = self.0.forest().read();
        values
            .iter()
            .map(|value| forest.observe_permanent(&manifest, &value.to_bytes(), &view.observations))
            .collect()
    }
    pub fn volume_exists<S: shieldd_sdk_storage::StateRead + ?Sized>(
        &self,
        state: &S,
        day: shieldd_sdk_storage::Day,
        nullifier: Nullifier,
    ) -> Result<bool> {
        let view = state
            .read_view()
            .context("volume reads require an owned immutable view")?;
        let Some(manifest) = view.manifest else {
            ensure!(
                self.0.manifest().is_none(),
                "uninitialized read has a committed owner"
            );
            return Ok(false);
        };
        self.0.forest().read().observe_volume(
            &manifest,
            day,
            &nullifier.to_bytes(),
            &view.observations,
        )
    }
}

#[cfg(feature = "component")]
pub fn manifest<S: shieldd_sdk_storage::StateRead + ?Sized>(
    state: &S,
) -> Result<std::sync::Arc<Manifest>> {
    state
        .read_view()
        .context("native read view is missing")?
        .manifest
        .context("native boundary is not initialized")
}

impl TryFrom<shieldd_sdk_proto::core::component::sct::v1::NullifierResponse> for Status {
    type Error = anyhow::Error;
    fn try_from(
        value: shieldd_sdk_proto::core::component::sct::v1::NullifierResponse,
    ) -> Result<Self> {
        let status = Self {
            nullifier: value.nullifier.context("missing nullifier")?.try_into()?,
            spent: value.spent,
            proof: StateProof::decode(&value.proof)?,
        };
        status.verify(status.proof.manifest.digest()?)?;
        Ok(status)
    }
}
impl TryFrom<Status> for shieldd_sdk_proto::core::component::sct::v1::NullifierResponse {
    type Error = anyhow::Error;
    fn try_from(value: Status) -> Result<Self> {
        value.verify(value.proof.manifest.digest()?)?;
        Ok(Self {
            nullifier: Some(value.nullifier.into()),
            spent: value.spent,
            proof: value.proof.encode()?,
        })
    }
}
