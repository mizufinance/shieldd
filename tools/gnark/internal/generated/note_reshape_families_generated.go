// Code generated from note_reshape_families.json. DO NOT EDIT.
package generated

type NoteReshapeFamilySpec struct {
	ID             uint32
	Label          string
	ArtifactName   string
	NIn            int
	NOut           int
	MinRealInputs  int
	MaxRealInputs  int
	MinRealOutputs int
	MaxRealOutputs int
}

var NoteReshapeFamilies = []NoteReshapeFamilySpec{
	{ID: 1, Label: "consolidate2x1", ArtifactName: "consolidate2x1", NIn: 2, NOut: 1, MinRealInputs: 2, MaxRealInputs: 2, MinRealOutputs: 1, MaxRealOutputs: 1},
	{ID: 2, Label: "split1x8", ArtifactName: "split1x8", NIn: 1, NOut: 8, MinRealInputs: 1, MaxRealInputs: 1, MinRealOutputs: 2, MaxRealOutputs: 8},
	{ID: 3, Label: "consolidate8x1", ArtifactName: "consolidate8x1", NIn: 8, NOut: 1, MinRealInputs: 5, MaxRealInputs: 8, MinRealOutputs: 1, MaxRealOutputs: 1},
	{ID: 4, Label: "consolidate4x1", ArtifactName: "consolidate4x1", NIn: 4, NOut: 1, MinRealInputs: 3, MaxRealInputs: 4, MinRealOutputs: 1, MaxRealOutputs: 1},
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
