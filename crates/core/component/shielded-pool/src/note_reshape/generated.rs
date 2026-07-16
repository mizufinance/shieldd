use anyhow::Error;

#[derive(
    Clone, Copy, Debug, Eq, PartialEq, Ord, PartialOrd, Hash, serde::Deserialize, serde::Serialize,
)]
#[serde(try_from = "u32", into = "u32")]
pub struct NoteReshapeFamilyId(u32);

#[allow(non_upper_case_globals)]
impl NoteReshapeFamilyId {
    pub const TwoByOne: Self = Self(1);
    pub const OneByEight: Self = Self(2);
    pub const EightByOne: Self = Self(3);
    pub const FourByOne: Self = Self(4);

    pub const ALL: [Self; 4] = [
        Self::TwoByOne,
        Self::OneByEight,
        Self::EightByOne,
        Self::FourByOne,
    ];

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
pub struct NoteReshapeFamilySpec {
    pub id: NoteReshapeFamilyId,
    pub label: &'static str,
    pub artifact_name: &'static str,
    pub uses_dummy_slots: bool,
    pub n_in: usize,
    pub n_out: usize,
    pub min_real_inputs: usize,
    pub max_real_inputs: usize,
    pub min_real_outputs: usize,
    pub max_real_outputs: usize,
}

pub const NOTE_RESHAPE_FAMILY_SPECS: [NoteReshapeFamilySpec; 4] = [
    NoteReshapeFamilySpec {
        id: NoteReshapeFamilyId::TwoByOne,
        label: "note_reshape2x1",
        artifact_name: "note_reshape2x1",
        uses_dummy_slots: false,
        n_in: 2,
        n_out: 1,
        min_real_inputs: 2,
        max_real_inputs: 2,
        min_real_outputs: 1,
        max_real_outputs: 1,
    },
    NoteReshapeFamilySpec {
        id: NoteReshapeFamilyId::OneByEight,
        label: "note_reshape1x8",
        artifact_name: "note_reshape1x8",
        uses_dummy_slots: true,
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
        uses_dummy_slots: true,
        n_in: 8,
        n_out: 1,
        min_real_inputs: 5,
        max_real_inputs: 8,
        min_real_outputs: 1,
        max_real_outputs: 1,
    },
    NoteReshapeFamilySpec {
        id: NoteReshapeFamilyId::FourByOne,
        label: "note_reshape4x1",
        artifact_name: "note_reshape4x1",
        uses_dummy_slots: true,
        n_in: 4,
        n_out: 1,
        min_real_inputs: 3,
        max_real_inputs: 4,
        min_real_outputs: 1,
        max_real_outputs: 1,
    },
];

#[cfg(test)]
mod tests {
    use super::NoteReshapeFamilyId;

    #[test]
    fn canonical_selection_is_directional_and_unique() {
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(2, 1),
            Some(NoteReshapeFamilyId::TwoByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(3, 1),
            Some(NoteReshapeFamilyId::FourByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(4, 1),
            Some(NoteReshapeFamilyId::FourByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(5, 1),
            Some(NoteReshapeFamilyId::EightByOne)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(1, 2),
            Some(NoteReshapeFamilyId::OneByEight)
        );
        assert_eq!(
            NoteReshapeFamilyId::smallest_covering(1, 8),
            Some(NoteReshapeFamilyId::OneByEight)
        );
        assert!(NoteReshapeFamilyId::FourByOne
            .validate_real_counts(2, 1)
            .is_err());
        assert!(NoteReshapeFamilyId::EightByOne
            .validate_real_counts(4, 1)
            .is_err());
        assert_eq!(NoteReshapeFamilyId::smallest_covering(1, 1), None);
        assert_eq!(NoteReshapeFamilyId::smallest_covering(9, 1), None);
    }

    #[test]
    fn serde_rejects_unknown_family_id() {
        let error = serde_json::from_str::<NoteReshapeFamilyId>("99")
            .expect_err("unknown family ids must fail closed");
        assert!(error
            .to_string()
            .contains("unknown note reshape family id 99"));
    }
}
