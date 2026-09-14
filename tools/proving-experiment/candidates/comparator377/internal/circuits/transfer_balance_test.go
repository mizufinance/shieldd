package circuits

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
)

type transferAmountRangeCircuit struct {
	Input0Amount  frontend.Variable
	Input1Amount  frontend.Variable
	Output0Amount frontend.Variable
	Output1Amount frontend.Variable
}

func (c *transferAmountRangeCircuit) Define(api frontend.API) error {
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
	setAmount := func(assignment *transferAmountRangeCircuit, slot int, amount *big.Int) {
		switch slot {
		case 0:
			assignment.Input0Amount = amount
		case 1:
			assignment.Input1Amount = amount
		case 2:
			assignment.Output0Amount = amount
		case 3:
			assignment.Output1Amount = amount
		}
	}
	for slot := range 4 {
		valid := &transferAmountRangeCircuit{
			Input0Amount:  0,
			Input1Amount:  0,
			Output0Amount: 0,
			Output1Amount: 0,
		}
		setAmount(valid, slot, maxAmount)
		if err := test.IsSolved(
			&transferAmountRangeCircuit{},
			valid,
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("slot %d rejected the maximum amount: %v", slot, err)
		}

		oversized := *valid
		setAmount(&oversized, slot, twoTo128)
		if err := test.IsSolved(
			&transferAmountRangeCircuit{},
			&oversized,
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatalf("slot %d accepted an amount outside 128 bits", slot)
		}
	}
}
