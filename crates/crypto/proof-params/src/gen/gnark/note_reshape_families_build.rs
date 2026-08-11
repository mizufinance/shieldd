// Code generated from note_reshape_families.json. DO NOT EDIT.
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

pub struct GeneratedNoteReshapeFamily {
    pub id: u32,
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

pub const GENERATED_NOTE_RESHAPE_FAMILIES: &[GeneratedNoteReshapeFamily] = &[
    GeneratedNoteReshapeFamily {
        id: 2,
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
    GeneratedNoteReshapeFamily {
        id: 3,
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
