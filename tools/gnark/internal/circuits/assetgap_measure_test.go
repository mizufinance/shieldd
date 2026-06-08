package circuits

import (
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/consensys/gnark/test"
)

func TestAssetRegistryGapConstraintShape(t *testing.T) {
	newCS, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &AssetRegistryGapGadget{})
	if err != nil {
		t.Fatalf("compile AssetRegistryGapGadget: %v", err)
	}
	bitsCS, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &CanonicalFqBitsGadget{})
	if err != nil {
		t.Fatalf("compile CanonicalFqBitsGadget: %v", err)
	}
	newN := newCS.GetNbConstraints()
	t.Logf("gadget-imt-gap / AssetRegistryGap:     %d constraints", newN)
	t.Logf("CanonicalFqBits253 (single operand):   %d constraints", bitsCS.GetNbConstraints())
	// The Kestrel make-range-check-constraints constructor for c=p-1,n=253 has
	// 340 R1CS constraints (1 pack + 87 boolean + 166 zero-bit a + 86 pi).
	// gnark compiles each zero-bit a-constraint `(1-pi-a)*a=0` to TWO constraints
	// (a product wire + an `out=0` identity equality — confirmed: AssertIsEqual
	// of a Mul never folds to a single a*b=c), so the exported slice is
	//   1 pack + 87 boolean + 166*2 zero-bit + 86 pi = 506.
	// The 166 extra are trivial identity-wire equalities the Axe rewriter folds
	// automatically; the normalized form is the Kestrel constructor shape. See
	// circuit-gadget-proofs.md and the Part 2 hand-off.
	const wantBits = 1 + 87 + 166*2 + 86 // = 506
	if got := bitsCS.GetNbConstraints(); got != wantBits {
		t.Errorf("CanonicalFqBits253: expected %d, got %d", wantBits, got)
	}
	const wantAssetRegistryGap = 5568
	if got := newN; got != wantAssetRegistryGap {
		t.Errorf("AssetRegistryGap: expected %d constraints, got %d", wantAssetRegistryGap, got)
	}
}

func TestAssetRegistryGapSatisfiable(t *testing.T) {
	field := ecc.BLS12_377.ScalarField()
	// unregulated non-membership gap: leaf < id < next -> inGap=1, valid=1
	gap := &AssetRegistryGapGadget{NoteAssetID: 10, IsRegulated: 0, LeafValue: 5, NextValue: 20}
	if err := test.IsSolved(&AssetRegistryGapGadget{}, gap, field); err != nil {
		t.Fatalf("unregulated gap should satisfy: %v", err)
	}
	// regulated exact match: id == leaf -> exactMatch=1, valid=1
	exact := &AssetRegistryGapGadget{NoteAssetID: 10, IsRegulated: 1, LeafValue: 10, NextValue: 20}
	if err := test.IsSolved(&AssetRegistryGapGadget{}, exact, field); err != nil {
		t.Fatalf("regulated exact should satisfy: %v", err)
	}
	// unregulated, id NOT in gap (id > next) -> inGap=0, valid=0 -> assert valid==1 must FAIL
	bad := &AssetRegistryGapGadget{NoteAssetID: 25, IsRegulated: 0, LeafValue: 5, NextValue: 20}
	if err := test.IsSolved(&AssetRegistryGapGadget{}, bad, field); err == nil {
		t.Fatalf("id outside gap should NOT satisfy")
	}
	// regulated, id != leaf -> exactMatch=0, valid=0 -> must FAIL
	badExact := &AssetRegistryGapGadget{NoteAssetID: 11, IsRegulated: 1, LeafValue: 10, NextValue: 20}
	if err := test.IsSolved(&AssetRegistryGapGadget{}, badExact, field); err == nil {
		t.Fatalf("regulated non-match should NOT satisfy")
	}
}
