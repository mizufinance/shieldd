use std::borrow::Cow;
use std::mem;

use blake2::{
    digest::{generic_array::GenericArray, FixedOutput, Reset, Update},
    Blake2b,
};
use shieldd_sdk_shielded_pool::{NoteReshapeFamilyId, ShieldedIcs20WithdrawalFamilyId};

use crate::ProofFamilyId;

pub fn transcript_family_domain(family_id: ProofFamilyId) -> Cow<'static, [u8]> {
    match family_id {
        ProofFamilyId::Transfer => Cow::Borrowed(b"shieldd.snarkpack.transfer.v1"),
        ProofFamilyId::NoteReshape(family_id) => {
            Cow::Owned(format!("shieldd.snarkpack.{}.v1", family_id.label()).into_bytes())
        }
        ProofFamilyId::ShieldedIcs20Withdrawal(family_id) => {
            Cow::Owned(format!("shieldd.snarkpack.{}.v1", family_id.label()).into_bytes())
        }
    }
}

macro_rules! define_family_digest {
    ($name:ident, $family:expr) => {
        #[derive(Clone)]
        pub(crate) struct $name(Blake2b);

        impl Default for $name {
            fn default() -> Self {
                let mut inner = Blake2b::default();
                inner.update(transcript_family_domain($family).as_ref());
                Self(inner)
            }
        }

        impl Update for $name {
            fn update(&mut self, data: impl AsRef<[u8]>) {
                self.0.update(data);
            }
        }

        impl Reset for $name {
            fn reset(&mut self) {
                *self = Self::default();
            }
        }

        impl FixedOutput for $name {
            type OutputSize = <Blake2b as FixedOutput>::OutputSize;

            fn finalize_into(self, out: &mut GenericArray<u8, Self::OutputSize>) {
                self.0.finalize_into(out);
            }

            fn finalize_into_reset(&mut self, out: &mut GenericArray<u8, Self::OutputSize>) {
                let inner = mem::take(&mut self.0);
                inner.finalize_into(out);
                self.reset();
            }
        }
    };
}

define_family_digest!(
    ShieldedIcs20WithdrawalTranscriptDigest,
    ProofFamilyId::ShieldedIcs20Withdrawal(ShieldedIcs20WithdrawalFamilyId::Canonical)
);

#[derive(Clone)]
pub(crate) struct TransferTranscriptDigest(Blake2b);

impl Default for TransferTranscriptDigest {
    fn default() -> Self {
        let mut inner = Blake2b::default();
        inner.update(transcript_family_domain(ProofFamilyId::Transfer).as_ref());
        Self(inner)
    }
}

impl Update for TransferTranscriptDigest {
    fn update(&mut self, data: impl AsRef<[u8]>) {
        self.0.update(data);
    }
}

impl Reset for TransferTranscriptDigest {
    fn reset(&mut self) {
        *self = Self::default();
    }
}

impl FixedOutput for TransferTranscriptDigest {
    type OutputSize = <Blake2b as FixedOutput>::OutputSize;

    fn finalize_into(self, out: &mut GenericArray<u8, Self::OutputSize>) {
        self.0.finalize_into(out);
    }

    fn finalize_into_reset(&mut self, out: &mut GenericArray<u8, Self::OutputSize>) {
        let inner = mem::take(&mut self.0);
        inner.finalize_into(out);
        self.reset();
    }
}

#[derive(Clone)]
pub(crate) struct NoteReshapeTranscriptDigest<const FAMILY_ID: u32>(Blake2b);

impl<const FAMILY_ID: u32> Default for NoteReshapeTranscriptDigest<FAMILY_ID> {
    fn default() -> Self {
        let mut inner = Blake2b::default();
        let family_id = NoteReshapeFamilyId::try_from(FAMILY_ID)
            .expect("NoteReshapeTranscriptDigest requires a registered family id");
        inner.update(transcript_family_domain(ProofFamilyId::NoteReshape(family_id)).as_ref());
        Self(inner)
    }
}

impl<const FAMILY_ID: u32> Update for NoteReshapeTranscriptDigest<FAMILY_ID> {
    fn update(&mut self, data: impl AsRef<[u8]>) {
        self.0.update(data);
    }
}

impl<const FAMILY_ID: u32> Reset for NoteReshapeTranscriptDigest<FAMILY_ID> {
    fn reset(&mut self) {
        *self = Self::default();
    }
}

impl<const FAMILY_ID: u32> FixedOutput for NoteReshapeTranscriptDigest<FAMILY_ID> {
    type OutputSize = <Blake2b as FixedOutput>::OutputSize;

    fn finalize_into(self, out: &mut GenericArray<u8, Self::OutputSize>) {
        self.0.finalize_into(out);
    }

    fn finalize_into_reset(&mut self, out: &mut GenericArray<u8, Self::OutputSize>) {
        let inner = mem::take(&mut self.0);
        inner.finalize_into(out);
        self.reset();
    }
}

#[cfg(test)]
mod tests {
    use std::collections::BTreeSet;

    use crate::ProofFamilyId;
    use shieldd_sdk_shielded_pool::NoteReshapeFamilyId;

    use super::transcript_family_domain;

    #[test]
    fn transcript_family_domains_are_unique() {
        let mut domains = BTreeSet::new();
        let mut families = vec![ProofFamilyId::Transfer];
        families.extend(
            NoteReshapeFamilyId::ALL
                .into_iter()
                .map(ProofFamilyId::NoteReshape),
        );
        for family in families {
            assert!(domains.insert(transcript_family_domain(family)));
        }
    }
}
