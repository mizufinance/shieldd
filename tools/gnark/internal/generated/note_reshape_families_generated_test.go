package generated

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"os"
	"path/filepath"
	"reflect"
	"runtime"
	"testing"
)

const noteReshapeManifestSHA256 = "51a6c52e7e2c2d3998e76ef1e78b2af7cdaaf5b522a14e029e7e35bd5bcad22e"

type noteReshapeManifest struct {
	Schema   string                      `json:"schema"`
	Families []noteReshapeManifestFamily `json:"families"`
}

type noteReshapeManifestFamily struct {
	ID             uint32 `json:"id"`
	Label          string `json:"label"`
	ArtifactName   string `json:"artifact_name"`
	NIn            int    `json:"n_in"`
	NOut           int    `json:"n_out"`
	MinRealInputs  int    `json:"min_real_inputs"`
	MaxRealInputs  int    `json:"max_real_inputs"`
	MinRealOutputs int    `json:"min_real_outputs"`
	MaxRealOutputs int    `json:"max_real_outputs"`
}

func TestNoteReshapeGeneratedRegistryMatchesManifest(t *testing.T) {
	_, sourceFile, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("locate generated registry test")
	}
	manifestPath := filepath.Join(filepath.Dir(sourceFile), "..", "..", "note_reshape_families.json")
	contents, err := os.ReadFile(manifestPath)
	if err != nil {
		t.Fatalf("read note reshape manifest: %v", err)
	}
	hash := sha256.Sum256(contents)
	if got := hex.EncodeToString(hash[:]); got != noteReshapeManifestSHA256 {
		t.Fatalf("note reshape manifest drifted: got %s, want %s", got, noteReshapeManifestSHA256)
	}

	var manifest noteReshapeManifest
	if err := json.Unmarshal(contents, &manifest); err != nil {
		t.Fatalf("decode note reshape manifest: %v", err)
	}
	if manifest.Schema != "shieldd.note_reshape_families.v1" {
		t.Fatalf("unexpected note reshape manifest schema %q", manifest.Schema)
	}
	generated := make([]NoteReshapeFamilySpec, len(manifest.Families))
	for index, family := range manifest.Families {
		generated[index] = NoteReshapeFamilySpec{
			ID:             family.ID,
			Label:          family.Label,
			ArtifactName:   family.ArtifactName,
			NIn:            family.NIn,
			NOut:           family.NOut,
			MinRealInputs:  family.MinRealInputs,
			MaxRealInputs:  family.MaxRealInputs,
			MinRealOutputs: family.MinRealOutputs,
			MaxRealOutputs: family.MaxRealOutputs,
		}
	}
	if !reflect.DeepEqual(generated, NoteReshapeFamilies) {
		t.Fatalf("generated note reshape registry does not match manifest")
	}
}
