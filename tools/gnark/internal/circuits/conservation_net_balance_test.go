package circuits

import (
	"crypto/rand"
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
	decaf377 "github.com/mizufinance/decaf377-go"
)

// NB-1 parity: for a conservation-exact witness (Sigma(in) = Sigma(out)),
// computeConservationNetBalanceCommitment must equal
// computeTransferNetBalanceCommitment's output on the same inputs (the value
// terms cancel identically in both, leaving only the blinding ladder).
type conservationNetBalanceParityCircuit struct {
	Input0Amount    frontend.Variable
	Input1Amount    frontend.Variable
	OutputAmount    frontend.Variable
	AssetID         frontend.Variable
	BalanceBlinding frontend.Variable
}

func (c *conservationNetBalanceParityCircuit) Define(api frontend.API) error {
	inputs := []frontend.Variable{c.Input0Amount, c.Input1Amount}
	outputs := []frontend.Variable{c.OutputAmount}

	oldCommitment, err := computeTransferNetBalanceCommitment(api, inputs, outputs, c.AssetID, c.BalanceBlinding)
	if err != nil {
		return err
	}
	newCommitment, err := computeConservationNetBalanceCommitment(api, inputs, outputs, c.BalanceBlinding)
	if err != nil {
		return err
	}
	api.AssertIsEqual(oldCommitment.X, newCommitment.X)
	api.AssertIsEqual(oldCommitment.Y, newCommitment.Y)
	return nil
}

func TestConservationNetBalanceCommitmentParity(t *testing.T) {
	q := decaf377.FieldModulus()
	input0 := big.NewInt(700)
	input1 := big.NewInt(300)
	output := big.NewInt(1000) // Sigma(in) = 1000 = Sigma(out): conservation-exact.
	assetID, err := rand.Int(rand.Reader, q)
	if err != nil {
		t.Fatal(err)
	}
	blinding, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
	if err != nil {
		t.Fatal(err)
	}

	if err := test.IsSolved(
		&conservationNetBalanceParityCircuit{},
		&conservationNetBalanceParityCircuit{
			Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
			AssetID: assetID, BalanceBlinding: blinding,
		},
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("conservation-exact net-balance commitment disagrees with legacy computeTransferNetBalanceCommitment: %v", err)
	}
}

// Negative: Sigma(in) != Sigma(out) must be unsatisfiable under the new
// relation - this is the entire point of the NB-1 short-circuit (a single
// linear conservation assert replaces the per-amount ladders).
type conservationNetBalanceProbe struct {
	InputAmounts  []frontend.Variable
	OutputAmounts []frontend.Variable
	Blinding      frontend.Variable
}

func (c *conservationNetBalanceProbe) Define(api frontend.API) error {
	_, err := computeConservationNetBalanceCommitment(api, c.InputAmounts, c.OutputAmounts, c.Blinding)
	return err
}

func TestConservationNetBalanceCommitmentRejectsUnbalancedSums(t *testing.T) {
	blank := &conservationNetBalanceProbe{
		InputAmounts:  make([]frontend.Variable, 2),
		OutputAmounts: make([]frontend.Variable, 1),
	}
	unbalanced := &conservationNetBalanceProbe{
		InputAmounts:  []frontend.Variable{big.NewInt(700), big.NewInt(300)},
		OutputAmounts: []frontend.Variable{big.NewInt(999)}, // Sigma(in)=1000 != 999
		Blinding:      big.NewInt(0),
	}
	if err := test.IsSolved(blank, unbalanced, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatal("Sigma(in) != Sigma(out) must be unsatisfiable, but circuit was solved")
	}

	balanced := &conservationNetBalanceProbe{
		InputAmounts:  []frontend.Variable{big.NewInt(700), big.NewInt(300)},
		OutputAmounts: []frontend.Variable{big.NewInt(1000)},
		Blinding:      big.NewInt(0),
	}
	if err := test.IsSolved(blank, balanced, ecc.BLS12_377.ScalarField()); err != nil {
		t.Fatalf("Sigma(in) == Sigma(out) must be satisfiable, got: %v", err)
	}
}

func TestConservationNetBalanceCommitmentRejectsOversizedAmount(t *testing.T) {
	twoTo128 := new(big.Int).Lsh(big.NewInt(1), 128)
	blank := &conservationNetBalanceProbe{
		InputAmounts:  make([]frontend.Variable, 1),
		OutputAmounts: make([]frontend.Variable, 1),
	}
	oversized := &conservationNetBalanceProbe{
		InputAmounts:  []frontend.Variable{twoTo128},
		OutputAmounts: []frontend.Variable{twoTo128}, // balanced sums, still >= 2^128
		Blinding:      big.NewInt(0),
	}
	if err := test.IsSolved(blank, oversized, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatal("amount >= 2^128 must be unsatisfiable, but circuit was solved (ZK-ASSUME-AMOUNT-RANGE lost)")
	}
}
