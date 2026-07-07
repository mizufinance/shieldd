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
// ScalarMulLE(..., amount, 128), whose api.ToBinary(amount, 128) makes any
// amount >= 2^128 unsatisfiable. That bound is load-bearing for balance
// soundness (it prevents field-overflow value inflation) but is enforced only
// as a side effect of the 128-bit scalar-mul ladder, not an explicit
// AssertIsLessOrEqual. This test pins the bound across the shared amount
// surfaces so a future refactor of the ladder (e.g. a windowed scalar-mul or a
// wider decomposition) that silently drops it fails CI rather than opening an
// inflation vector.

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
		[]frontend.Variable{c.Amount},
		nil,
		7,
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
