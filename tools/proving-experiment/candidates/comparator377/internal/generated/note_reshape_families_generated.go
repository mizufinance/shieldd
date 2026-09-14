// Code generated from note_reshape_families.json. DO NOT EDIT.
package generated

type NoteReshapeFamilySpec struct {
	ID             uint32
	Label          string
	ArtifactName   string
	InputPadding   InputPaddingPolicy
	OutputPadding  OutputPaddingPolicy
	NIn            int
	NOut           int
	MinRealInputs  int
	MaxRealInputs  int
	MinRealOutputs int
	MaxRealOutputs int
}

type InputPaddingPolicy uint8

const (
	InputPaddingFixed InputPaddingPolicy = iota
	InputPaddingSyntheticPrivate
)

type OutputPaddingPolicy uint8

const (
	OutputPaddingFixed OutputPaddingPolicy = iota
	OutputPaddingZeroNote
)

var NoteReshapeFamilies = []NoteReshapeFamilySpec{
	{ID: 2, Label: "note_reshape1x8", ArtifactName: "note_reshape1x8", InputPadding: InputPaddingFixed, OutputPadding: OutputPaddingZeroNote, NIn: 1, NOut: 8, MinRealInputs: 1, MaxRealInputs: 1, MinRealOutputs: 2, MaxRealOutputs: 8},
	{ID: 3, Label: "note_reshape8x1", ArtifactName: "note_reshape8x1", InputPadding: InputPaddingSyntheticPrivate, OutputPadding: OutputPaddingFixed, NIn: 8, NOut: 1, MinRealInputs: 2, MaxRealInputs: 8, MinRealOutputs: 1, MaxRealOutputs: 1},
}

func NoteReshapeFamilyByID(id uint32) (NoteReshapeFamilySpec, bool) {
	for _, family := range NoteReshapeFamilies {
		if family.ID == id {
			return family, true
		}
	}
	return NoteReshapeFamilySpec{}, false
}

func NoteReshapeFamilyByLabel(label string) (NoteReshapeFamilySpec, bool) {
	for _, family := range NoteReshapeFamilies {
		if family.Label == label {
			return family, true
		}
	}
	return NoteReshapeFamilySpec{}, false
}

func SmallestNoteReshapeFamily(realInputs, realOutputs int) (NoteReshapeFamilySpec, bool) {
	var selected NoteReshapeFamilySpec
	found := false
	for _, family := range NoteReshapeFamilies {
		if realInputs < family.MinRealInputs || realInputs > family.MaxRealInputs ||
			realOutputs < family.MinRealOutputs || realOutputs > family.MaxRealOutputs {
			continue
		}
		if !found || family.NIn < selected.NIn || (family.NIn == selected.NIn && family.NOut < selected.NOut) {
			selected = family
			found = true
		}
	}
	return selected, found
}
