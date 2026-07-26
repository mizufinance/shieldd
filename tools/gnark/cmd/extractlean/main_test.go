package main

import (
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
)

func TestDecafDtkIsRegistered(t *testing.T) {
	spec, ok := artifacts["decaf-dtk"]
	if !ok {
		t.Fatal("decaf-dtk extracted Lean artifact is not registered")
	}
	if spec.namespace != "Shieldd.GnarkFormal.Extracted.DecafDtk" {
		t.Fatalf("unexpected decaf-dtk namespace %q", spec.namespace)
	}
	if spec.helperModule != "ShielddGnarkFormal.Extracted.DecafDtkHelpers" {
		t.Fatalf("unexpected decaf-dtk helper module %q", spec.helperModule)
	}
	if len(spec.foldGadgets) != 1 || spec.foldGadgets[0] != "scalarMulStep" {
		t.Fatalf("unexpected decaf-dtk folds %v", spec.foldGadgets)
	}
	if _, ok := spec.circuit().(*circuits.DecafDtkGadget); !ok {
		t.Fatalf("decaf-dtk registry returned %T", spec.circuit())
	}
}

func TestPoseidon2IsRegistered(t *testing.T) {
	spec, ok := artifacts["poseidon2"]
	if !ok {
		t.Fatal("poseidon2 extracted Lean artifact is not registered")
	}
	if spec.namespace != "Shieldd.GnarkFormal.Extracted.Poseidon2" {
		t.Fatalf("unexpected poseidon2 namespace %q", spec.namespace)
	}
	if _, ok := spec.circuit().(*circuits.PoseidonHash2Gadget); !ok {
		t.Fatalf("poseidon2 registry returned %T", spec.circuit())
	}
}
