package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"

	"github.com/mizufinance/shieldd/tools/gnark/internal/artifacts"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type loadContextTestCircuit struct {
	Secret frontend.Variable
	Public frontend.Variable `gnark:",public"`
}

func (c *loadContextTestCircuit) Define(api frontend.API) error {
	api.AssertIsEqual(c.Secret, c.Public)
	return nil
}

func TestLoadContextRejectsTrailingProvingKeyBytes(t *testing.T) {
	ccs, err := frontend.Compile(
		primitives.ScalarField(),
		r1cs.NewBuilder,
		&loadContextTestCircuit{},
	)
	if err != nil {
		t.Fatalf("compile test circuit: %v", err)
	}
	source := filepath.Join("..", "..", "artifacts", "note_reshape1x8", "proving_key.bin")
	pkBytes, err := os.ReadFile(source)
	if err != nil {
		t.Fatalf("read committed proving key: %v", err)
	}

	dir := t.TempDir()
	pkPath := filepath.Join(dir, "proving_key.bin")
	if err := os.WriteFile(pkPath, pkBytes, 0o600); err != nil {
		t.Fatalf("write proving key: %v", err)
	}
	pkHash, err := artifacts.SHA256HexFile(pkPath)
	if err != nil {
		t.Fatalf("hash proving key: %v", err)
	}
	metadata := artifacts.CircuitMetadataJSON{
		Schema:                      artifacts.CircuitMetadataSchema,
		Curve:                       "bls12-377",
		Circuit:                     "test",
		ProvingKeySize:              int64(len(pkBytes)),
		VerifyingKeySize:            1,
		NbConstraints:               ccs.GetNbConstraints(),
		NbPublic:                    ccs.GetNbPublicVariables(),
		NbSecret:                    ccs.GetNbSecretVariables(),
		ProvingKeySHA256Hex:         pkHash,
		VerifyingKeyBinarySHA256Hex: strings.Repeat("2", 64),
		VerifyingKeyJSONSHA256Hex:   strings.Repeat("3", 64),
	}
	if err := artifacts.WriteJSON(filepath.Join(dir, "circuit_metadata.json"), metadata); err != nil {
		t.Fatalf("write circuit metadata: %v", err)
	}
	if _, _, err := loadContext(dir, "test", ccs); err != nil {
		t.Fatalf("load canonical context: %v", err)
	}

	if err := os.WriteFile(pkPath, append(pkBytes, 0x42), 0o600); err != nil {
		t.Fatalf("write suffixed proving key: %v", err)
	}
	if _, _, err := loadContext(dir, "test", ccs); err == nil {
		t.Fatal("prover daemon must reject proving key with trailing byte")
	}
}
