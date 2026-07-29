package artifacts

import (
	"strings"
	"testing"
)

func testCircuitMetadata() CircuitMetadataJSON {
	return CircuitMetadataJSON{
		Schema:                      CircuitMetadataSchema,
		Curve:                       "bls12-377",
		Circuit:                     "output",
		ProvingKeySize:              3,
		VerifyingKeySize:            4,
		NbConstraints:               1,
		NbPublic:                    1,
		NbSecret:                    1,
		ProvingKeySHA256Hex:         strings.Repeat("1", 64),
		VerifyingKeyBinarySHA256Hex: strings.Repeat("2", 64),
		VerifyingKeyJSONSHA256Hex:   strings.Repeat("3", 64),
	}
}

func TestLoadCircuitMetadataBytesRoundTrip(t *testing.T) {
	encoded, err := EncodeCanonicalJSON(testCircuitMetadata())
	if err != nil {
		t.Fatalf("EncodeCanonicalJSON: %v", err)
	}
	metadata, err := LoadCircuitMetadataBytes(encoded, "test metadata")
	if err != nil {
		t.Fatalf("LoadCircuitMetadataBytes: %v", err)
	}
	if metadata.Circuit != "output" {
		t.Fatalf("unexpected circuit %q", metadata.Circuit)
	}
}

func TestValidateCircuitMetadataForCircuitRejectsNilCCS(t *testing.T) {
	metadata := testCircuitMetadata()
	if err := ValidateCircuitMetadataForCircuit(&metadata, "output", nil); err == nil {
		t.Fatalf("expected nil ccs to fail validation")
	}
}
