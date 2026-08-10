package circuits

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type transferBalanceConstraintProbe struct {
	Input0Amount  frontend.Variable
	Input1Amount  frontend.Variable
	Output0Amount frontend.Variable
	Output1Amount frontend.Variable
	AssetID       frontend.Variable
	Blinding      frontend.Variable

	Legacy bool
}

func computeTransferNetBalanceCommitmentLegacyForTest(
	api frontend.API,
	inputAmounts []frontend.Variable,
	outputAmounts []frontend.Variable,
	assetID frontend.Variable,
	blinding frontend.Variable,
) (gnarkte.Point, error) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	hashedAssetID, err := primitives.Poseidon377Hash1(
		api,
		primitives.MustBigInt(vectors.Poseidon377.ValueGeneratorDomain),
		assetID,
	)
	if err != nil {
		return gnarkte.Point{}, err
	}
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return gnarkte.Point{}, err
	}
	valueGenerator, err := decafgnark.EncodeToCurve(api, hashedAssetID)
	if err != nil {
		return gnarkte.Point{}, err
	}
	valueBlindingGenerator := gnarkte.Point{
		X: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}

	sum := gnarkte.Point{X: 0, Y: 1}
	for _, amount := range inputAmounts {
		sum = curve.Add(sum, compliance.ScalarMulLE(api, curve, valueGenerator, amount, 128))
	}
	for _, amount := range outputAmounts {
		sum = curve.Add(
			sum,
			curve.Neg(compliance.ScalarMulLE(api, curve, valueGenerator, amount, 128)),
		)
	}
	blindingPoint := compliance.ScalarMulLE(
		api,
		curve,
		valueBlindingGenerator,
		blinding,
		primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	)
	return curve.Add(sum, blindingPoint), nil
}

func (c *transferBalanceConstraintProbe) Define(api frontend.API) error {
	inputs := []frontend.Variable{c.Input0Amount, c.Input1Amount}
	outputs := []frontend.Variable{c.Output0Amount, c.Output1Amount}
	if c.Legacy {
		_, err := computeTransferNetBalanceCommitmentLegacyForTest(
			api, inputs, outputs, c.AssetID, c.Blinding,
		)
		return err
	}
	_, err := computeTransferNetBalanceCommitment(
		api, inputs, outputs, c.AssetID, c.Blinding,
	)
	return err
}

func compileTransferBalanceProbe(t *testing.T, legacy bool) int {
	t.Helper()
	ccs, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		&transferBalanceConstraintProbe{Legacy: legacy},
	)
	if err != nil {
		t.Fatal(err)
	}
	return ccs.GetNbConstraints()
}

func TestTransferBalanceUsesTwoSumLadders(t *testing.T) {
	legacy := compileTransferBalanceProbe(t, true)
	optimized := compileTransferBalanceProbe(t, false)
	saved := legacy - optimized
	t.Logf(
		"transfer balance constraints: legacy=%d optimized=%d saved=%d",
		legacy,
		optimized,
		saved,
	)
	if saved <= 0 {
		t.Fatalf("two sum ladders did not improve the legacy relation: saved %d", saved)
	}
}

type transferBalanceParityCircuit struct {
	Input0Amount  frontend.Variable
	Input1Amount  frontend.Variable
	Output0Amount frontend.Variable
	Output1Amount frontend.Variable
	AssetID       frontend.Variable
	Blinding      frontend.Variable
}

func (c *transferBalanceParityCircuit) Define(api frontend.API) error {
	inputs := []frontend.Variable{c.Input0Amount, c.Input1Amount}
	outputs := []frontend.Variable{c.Output0Amount, c.Output1Amount}
	optimized, err := computeTransferNetBalanceCommitment(
		api, inputs, outputs, c.AssetID, c.Blinding,
	)
	if err != nil {
		return err
	}
	legacy, err := computeTransferNetBalanceCommitmentLegacyForTest(
		api, inputs, outputs, c.AssetID, c.Blinding,
	)
	if err != nil {
		return err
	}
	decafgnark.AssertEquivalent(api, optimized, legacy)
	return nil
}

func TestTransferBalanceSumLadderWitnessParity(t *testing.T) {
	maxAmount := new(big.Int).Sub(
		new(big.Int).Lsh(big.NewInt(1), 128),
		big.NewInt(1),
	)
	assignment := &transferBalanceParityCircuit{
		Input0Amount: maxAmount,
		Input1Amount: 1,
		Output0Amount: new(big.Int).Sub(
			new(big.Int).Set(maxAmount),
			big.NewInt(1),
		),
		Output1Amount: 2,
		AssetID:       7,
		Blinding:      11,
	}
	if err := test.IsSolved(
		&transferBalanceParityCircuit{},
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("sum-ladder balance disagrees with four legacy ladders: %v", err)
	}
}

type transferAmountRangeProbe struct {
	Input0Amount  frontend.Variable
	Input1Amount  frontend.Variable
	Output0Amount frontend.Variable
	Output1Amount frontend.Variable
}

func (c *transferAmountRangeProbe) Define(api frontend.API) error {
	_, err := computeTransferNetBalanceCommitment(
		api,
		[]frontend.Variable{c.Input0Amount, c.Input1Amount},
		[]frontend.Variable{c.Output0Amount, c.Output1Amount},
		7,
		0,
	)
	return err
}

func TestTransferBalanceRangeChecksEveryAmount(t *testing.T) {
	twoTo128 := new(big.Int).Lsh(big.NewInt(1), 128)
	maxAmount := new(big.Int).Sub(new(big.Int).Set(twoTo128), big.NewInt(1))
	setSlot := func(assignment *transferAmountRangeProbe, slot string, amount *big.Int) {
		switch slot {
		case "input0":
			assignment.Input0Amount = amount
		case "input1":
			assignment.Input1Amount = amount
		case "output0":
			assignment.Output0Amount = amount
		case "output1":
			assignment.Output1Amount = amount
		}
	}
	for _, slot := range []string{"input0", "input1", "output0", "output1"} {
		valid := &transferAmountRangeProbe{
			Input0Amount:  0,
			Input1Amount:  0,
			Output0Amount: 0,
			Output1Amount: 0,
		}
		setSlot(valid, slot, maxAmount)
		if err := test.IsSolved(
			&transferAmountRangeProbe{},
			valid,
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("%s rejected the maximum 128-bit amount: %v", slot, err)
		}

		oversized := *valid
		setSlot(&oversized, slot, twoTo128)
		if err := test.IsSolved(
			&transferAmountRangeProbe{},
			&oversized,
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatalf("%s accepted an amount outside 128 bits", slot)
		}
	}
}
