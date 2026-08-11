package circuits

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/consensys/gnark/test"
)

type nativeCanonicalFqBitsProbe struct {
	In frontend.Variable `gnark:",public"`
}

func (c *nativeCanonicalFqBitsProbe) Define(api frontend.API) error {
	api.ToBinary(c.In, api.Compiler().FieldBitLen())
	return nil
}

func TestAssetRegistryGapConstraintShape(t *testing.T) {
	newCS, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &AssetRegistryGapGadget{})
	if err != nil {
		t.Fatalf("compile AssetRegistryGapGadget: %v", err)
	}
	bitsCS, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &CanonicalFqBitsGadget{})
	if err != nil {
		t.Fatalf("compile CanonicalFqBitsGadget: %v", err)
	}
	nativeBitsCS, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &nativeCanonicalFqBitsProbe{})
	if err != nil {
		t.Fatalf("compile NativeCanonicalFqBitsGadget: %v", err)
	}
	newN := newCS.GetNbConstraints()
	t.Logf("gadget-imt-gap / AssetRegistryGap:     %d constraints", newN)
	t.Logf("CanonicalFqBits253 (explicit bridge): %d constraints", bitsCS.GetNbConstraints())
	t.Logf("native full-width ToBinary block:     %d constraints", nativeBitsCS.GetNbConstraints())
	// The explicit bridge shape is native full-width ToBinary followed by the
	// source-level MSB-first `<= p-1` ladder. AssetRegistryGap uses only the
	// native 506-row relation because the exact provider consumes gnark's own
	// modulus-comparison rows directly. These pins prevent the two proof targets
	// from being conflated again.
	const wantBits = 1090
	if got := bitsCS.GetNbConstraints(); got != wantBits {
		t.Errorf("CanonicalFqBits253: expected %d, got %d", wantBits, got)
	}
	const wantNativeBits = 506
	if got := nativeBitsCS.GetNbConstraints(); got != wantNativeBits {
		t.Errorf("native full-width ToBinary: expected %d, got %d", wantNativeBits, got)
	}
	const wantAssetRegistryGap = 3544
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

	pMinusOne := new(big.Int).Sub(new(big.Int).Set(field), big.NewInt(1))
	pMinusTwo := new(big.Int).Sub(new(big.Int).Set(field), big.NewInt(2))
	boundaryGap := &AssetRegistryGapGadget{
		NoteAssetID: pMinusTwo,
		IsRegulated: 0,
		LeafValue:   0,
		NextValue:   pMinusOne,
	}
	if err := test.IsSolved(&AssetRegistryGapGadget{}, boundaryGap, field); err != nil {
		t.Fatalf("canonical p-2 < p-1 boundary gap should satisfy: %v", err)
	}
	boundaryExact := &AssetRegistryGapGadget{
		NoteAssetID: pMinusOne,
		IsRegulated: 1,
		LeafValue:   pMinusOne,
		NextValue:   pMinusOne,
	}
	if err := test.IsSolved(&AssetRegistryGapGadget{}, boundaryExact, field); err != nil {
		t.Fatalf("canonical p-1 exact match should satisfy: %v", err)
	}
	nonBooleanSelector := &AssetRegistryGapGadget{
		NoteAssetID: 10,
		IsRegulated: 2,
		LeafValue:   10,
		NextValue:   20,
	}
	if err := test.IsSolved(
		&AssetRegistryGapGadget{},
		nonBooleanSelector,
		field,
	); err == nil {
		t.Fatalf("non-Boolean selector should NOT satisfy")
	}
}
