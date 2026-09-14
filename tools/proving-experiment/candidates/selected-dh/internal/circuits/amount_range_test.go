package circuits

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
)

// Regression guard for the note-amount range bound (assumption-ledger
// ZK-ASSUME-AMOUNT-RANGE). Every amount enters the value commitment through
// api.ToBinary(amount, 128), which makes any amount >= 2^128 unsatisfiable.
// Transfer retains this decomposition for each amount before aggregating each
// pair into a 129-bit sum ladder. The bound is load-bearing for balance
// soundness because it prevents field-overflow value inflation. This test pins
// the bound across the shared amount surfaces so a future scalar-mul refactor
// that silently drops it fails CI rather than opening an inflation vector.

type probeBalanceCommitmentAmount struct {
	Amount frontend.Variable
}

func (c *probeBalanceCommitmentAmount) Define(api frontend.API) error {
	// assetID and blinding are arbitrary valid constants; only the amount width
	// is under test.
	_, err := BalanceCommitment(api, c.Amount, 7, 0)
	return err
}

type probeNetBalanceAmount struct {
	Amount frontend.Variable
}

func (c *probeNetBalanceAmount) Define(api frontend.API) error {
	_, err := computeTransferNetBalanceCommitment(
		api,
		[]frontend.Variable{c.Amount, 0},
		[]frontend.Variable{0, 0},
		7,
		0,
	)
	return err
}

type probeConservationNetBalanceAmount struct {
	Amount frontend.Variable
}

func (c *probeConservationNetBalanceAmount) Define(api frontend.API) error {
	// Same amount on both sides so Sigma(in)=Sigma(out) holds regardless of
	// amount value; only the 128-bit range bound is under test here.
	_, err := computeConservationNetBalanceCommitment(
		api,
		[]frontend.Variable{c.Amount},
		[]frontend.Variable{c.Amount},
		0,
	)
	return err
}

func TestAmountRangeBoundIs128Bits(t *testing.T) {
	twoTo128 := new(big.Int).Lsh(big.NewInt(1), 128)
	maxAmount := new(big.Int).Sub(twoTo128, big.NewInt(1)) // 2^128 - 1
	field := ecc.BLS12_377.ScalarField()

	cases := []struct {
		name  string
		blank frontend.Circuit
		valid func(amount *big.Int) frontend.Circuit
	}{
		{
			name:  "BalanceCommitment",
			blank: &probeBalanceCommitmentAmount{},
			valid: func(a *big.Int) frontend.Circuit {
				return &probeBalanceCommitmentAmount{Amount: a}
			},
		},
		{
			name:  "computeTransferNetBalanceCommitment",
			blank: &probeNetBalanceAmount{},
			valid: func(a *big.Int) frontend.Circuit {
				return &probeNetBalanceAmount{Amount: a}
			},
		},
		{
			name:  "computeConservationNetBalanceCommitment",
			blank: &probeConservationNetBalanceAmount{},
			valid: func(a *big.Int) frontend.Circuit {
				return &probeConservationNetBalanceAmount{Amount: a}
			},
		},
	}

	for _, tc := range cases {
		t.Run(tc.name, func(t *testing.T) {
			if err := test.IsSolved(tc.blank, tc.valid(maxAmount), field); err != nil {
				t.Fatalf("amount 2^128-1 must be in range, got unsatisfiable: %v", err)
			}
			if err := test.IsSolved(tc.blank, tc.valid(twoTo128), field); err == nil {
				t.Fatalf("amount 2^128 must be out of range, but circuit was satisfiable " +
					"(the 128-bit amount bound has been lost)")
			}
		})
	}
}
