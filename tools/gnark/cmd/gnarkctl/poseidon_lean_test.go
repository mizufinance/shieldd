package main

import (
	"bytes"
	"strings"
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func TestWritePoseidonLeanFixedOwnsEveryRoundConstant(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	rate := vectors.Poseidon377.Rate6
	var out bytes.Buffer
	if err := writePoseidonLeanFixed(&out, rate); err != nil {
		t.Fatal(err)
	}
	source := out.String()
	for _, want := range []string{
		"Generated canonical rate-6 Poseidon377 hash",
		"def fr7",
		"def pr7",
		"def hash (Domain In0 In1 In2 In3 In4 In5 : F)",
		"let gate_38 :=",
		rate.ARC[0],
		rate.ARC[len(rate.ARC)-1],
		rate.MDS[0],
		rate.MDS[len(rate.MDS)-1],
	} {
		if !strings.Contains(source, want) {
			t.Fatalf("generated fixed-rate module is missing %q", want)
		}
	}
	if got, want := strings.Count(source, "let gate_"), 39; got != want {
		t.Fatalf("generated %d rounds, want %d", got, want)
	}
}

func TestWritePoseidonLeanParityUsesCanonicalHashes(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	var out bytes.Buffer
	if err := writePoseidonLean(&out, vectors.Poseidon377); err != nil {
		t.Fatal(err)
	}
	source := out.String()
	for _, want := range []string{
		"import ShielddGnarkFormal.Poseidon377.Sponge",
		"#guard (hash2 ivkDomain 7 11)",
		"#guard (hash3 nullifierDomain 3 5 9)",
		"#guard (hash7 hash7Domain 1 2 3 4 5 6 7)",
	} {
		if !strings.Contains(source, want) {
			t.Fatalf("generated parity module is missing %q", want)
		}
	}
	if strings.Contains(source, "hashRate") {
		t.Fatal("generated parity module references the removed generic implementation")
	}
}
