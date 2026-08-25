// Code generated from note_reshape_families.json. DO NOT EDIT.
use anyhow::Error;

#[derive(
    Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, serde::Deserialize, serde::Serialize,
)]
#[serde(try_from = "u32", into = "u32")]
pub struct NoteReshapeFamilyId(u32);

#[allow(non_upper_case_globals)]
impl NoteReshapeFamilyId {
    pub const OneByEight: Self = Self(2);
    pub const EightByOne: Self = Self(3);

    pub const ALL: [Self; 2] = [Self::OneByEight, Self::EightByOne];

    pub const fn get(self) -> u32 {
        self.0
    }

    pub fn label(self) -> &'static str {
        self.spec().label
    }
    pub fn input_count(self) -> usize {
        self.spec().n_in
    }
    pub fn output_count(self) -> usize {
        self.spec().n_out
    }
    pub fn min_real_inputs(self) -> usize {
        self.spec().min_real_inputs
    }
    pub fn max_real_inputs(self) -> usize {
        self.spec().max_real_inputs
    }
    pub fn min_real_outputs(self) -> usize {
        self.spec().min_real_outputs
    }
    pub fn max_real_outputs(self) -> usize {
        self.spec().max_real_outputs
    }
    pub fn auth_sig_count(self) -> usize {
        self.input_count()
    }
    pub fn is_many_to_one(self) -> bool {
        self.output_count() == 1
    }

    pub fn spec(self) -> &'static NoteReshapeFamilySpec {
        NOTE_RESHAPE_FAMILY_SPECS
            .iter()
            .find(|spec| spec.id == self)
            .expect("unknown note reshape family id")
    }

    pub fn supports_real_counts(self, real_inputs: usize, real_outputs: usize) -> bool {
        (self.min_real_inputs()..=self.max_real_inputs()).contains(&real_inputs)
            && (self.min_real_outputs()..=self.max_real_outputs()).contains(&real_outputs)
    }

    pub fn smallest_covering(real_inputs: usize, real_outputs: usize) -> Option<Self> {
        Self::ALL
            .into_iter()
            .filter(|family| family.supports_real_counts(real_inputs, real_outputs))
            .min_by_key(|family| (family.input_count(), family.output_count()))
    }

    pub fn validate_real_counts(
        self,
        real_inputs: usize,
        real_outputs: usize,
    ) -> anyhow::Result<()> {
        anyhow::ensure!(
            self.supports_real_counts(real_inputs, real_outputs),
            "{} does not support {} real inputs and {} real outputs",
            self.label(),
            real_inputs,
            real_outputs
        );
        Ok(())
    }
}

impl TryFrom<u32> for NoteReshapeFamilyId {
    type Error = Error;

    fn try_from(value: u32) -> Result<Self, Self::Error> {
        let family = Self(value);
        if NOTE_RESHAPE_FAMILY_SPECS
            .iter()
            .any(|spec| spec.id == family)
        {
            Ok(family)
        } else {
            Err(anyhow::anyhow!("unknown note reshape family id {value}"))
        }
    }
}

impl From<NoteReshapeFamilyId> for u32 {
    fn from(value: NoteReshapeFamilyId) -> Self {
        value.0
    }
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum InputPaddingPolicy {
    Fixed,
    SyntheticPrivate,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub enum OutputPaddingPolicy {
    Fixed,
    ZeroNote,
}

#[derive(Clone, Copy, Debug, Eq, PartialEq)]
pub struct NoteReshapeFamilySpec {
    pub id: NoteReshapeFamilyId,
    pub label: &'static str,
    pub artifact_name: &'static str,
    pub input_padding: InputPaddingPolicy,
    pub output_padding: OutputPaddingPolicy,
    pub n_in: usize,
    pub n_out: usize,
    pub min_real_inputs: usize,
    pub max_real_inputs: usize,
    pub min_real_outputs: usize,
    pub max_real_outputs: usize,
}

pub const NOTE_RESHAPE_FAMILY_SPECS: [NoteReshapeFamilySpec; 2] = [
    NoteReshapeFamilySpec {
        id: NoteReshapeFamilyId::OneByEight,
        label: "note_reshape1x8",
        artifact_name: "note_reshape1x8",
        input_padding: InputPaddingPolicy::Fixed,
        output_padding: OutputPaddingPolicy::ZeroNote,
        n_in: 1,
        n_out: 8,
        min_real_inputs: 1,
        max_real_inputs: 1,
        min_real_outputs: 2,
        max_real_outputs: 8,
    },
    NoteReshapeFamilySpec {
        id: NoteReshapeFamilyId::EightByOne,
        label: "note_reshape8x1",
        artifact_name: "note_reshape8x1",
        input_padding: InputPaddingPolicy::SyntheticPrivate,
        output_padding: OutputPaddingPolicy::Fixed,
        n_in: 8,
        n_out: 1,
        min_real_inputs: 2,
        max_real_inputs: 8,
        min_real_outputs: 1,
        max_real_outputs: 1,
    },
];

#[cfg(test)]
mod tests {
    use super::{InputPaddingPolicy, NoteReshapeFamilyId, OutputPaddingPolicy};

    #[test]
    fn registry_declares_the_two_padded_directions() {
        assert_eq!(NoteReshapeFamilyId::ALL.len(), 2);
        assert_eq!(
            NoteReshapeFamilyId::EightByOne.spec().input_padding,
            InputPaddingPolicy::SyntheticPrivate
        );
        assert_eq!(
            NoteReshapeFamilyId::EightByOne.spec().output_padding,
            OutputPaddingPolicy::Fixed
        );
        assert_eq!(
            NoteReshapeFamilyId::OneByEight.spec().input_padding,
            InputPaddingPolicy::Fixed
        );
        assert_eq!(
            NoteReshapeFamilyId::OneByEight.spec().output_padding,
            OutputPaddingPolicy::ZeroNote
        );
    }

    #[test]
    fn canonical_selection_is_directional_and_unique() {
        for real_inputs in 2..=8 {
            assert_eq!(
                NoteReshapeFamilyId::smallest_covering(real_inputs, 1),
                Some(NoteReshapeFamilyId::EightByOne)
            );
        }
        for real_outputs in 2..=8 {
            assert_eq!(
                NoteReshapeFamilyId::smallest_covering(1, real_outputs),
                Some(NoteReshapeFamilyId::OneByEight)
            );
        }
        assert_eq!(NoteReshapeFamilyId::smallest_covering(1, 1), None);
        assert_eq!(NoteReshapeFamilyId::smallest_covering(9, 1), None);
    }

    #[test]
    fn serde_rejects_unsupported_family_ids() {
        for id in [0, 1, 4, 99] {
            let error = serde_json::from_str::<NoteReshapeFamilyId>(&id.to_string())
                .expect_err("unknown family ids must fail closed");
            assert!(error.to_string().contains("unknown note reshape family id"));
        }
    }
}
