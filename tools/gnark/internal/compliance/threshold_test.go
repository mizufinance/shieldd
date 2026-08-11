package compliance

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/backend"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
)

type thresholdFlagCircuit struct {
	Amount    frontend.Variable
	Threshold frontend.Variable
	IsFlagged frontend.Variable
}

func (c *thresholdFlagCircuit) Define(api frontend.API) error {
	VerifyThresholdFlagSimple(api, c.Amount, c.Threshold, c.IsFlagged)
	return nil
}

func TestThresholdFlagMatrix(t *testing.T) {
	tests := []struct {
		name      string
		amount    uint64
		threshold uint64
		flagged   uint64
		valid     bool
	}{
		{name: "below threshold", amount: 4, threshold: 5, flagged: 0, valid: true},
		{name: "equal threshold", amount: 5, threshold: 5, flagged: 1, valid: true},
		{name: "above threshold", amount: 6, threshold: 5, flagged: 1, valid: true},
		{name: "zero threshold flags zero amount", amount: 0, threshold: 0, flagged: 1, valid: true},
		{name: "below threshold cannot flag", amount: 4, threshold: 5, flagged: 1, valid: false},
		{name: "equal threshold must flag", amount: 5, threshold: 5, flagged: 0, valid: false},
		{name: "above threshold must flag", amount: 6, threshold: 5, flagged: 0, valid: false},
	}

	assert := test.NewAssert(t)
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			assignment := &thresholdFlagCircuit{
				Amount:    tc.amount,
				Threshold: tc.threshold,
				IsFlagged: tc.flagged,
			}
			options := []test.TestingOption{
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
			}
			if tc.valid {
				options = append(options, test.WithValidAssignment(assignment))
			} else {
				options = append(options, test.WithInvalidAssignment(assignment))
			}
			assert.CheckCircuit(&thresholdFlagCircuit{}, options...)
		})
	}
}

type regulatedThresholdFlagCircuit struct {
	IsRegulated frontend.Variable
	Amount      frontend.Variable
	Threshold   frontend.Variable
	IsFlagged   frontend.Variable
}

func (c *regulatedThresholdFlagCircuit) Define(api frontend.API) error {
	api.AssertIsBoolean(c.IsRegulated)
	api.AssertIsEqual(
		ThresholdFlag(api, c.IsRegulated, c.Amount, c.Threshold),
		c.IsFlagged,
	)
	return nil
}

func TestRegulatedThresholdFlagMatrix(t *testing.T) {
	maxAmount := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), ThresholdAmountBits), big.NewInt(1))
	tests := []struct {
		name        string
		isRegulated uint64
		amount      frontend.Variable
		threshold   frontend.Variable
		flagged     uint64
		valid       bool
	}{
		{name: "regulated below threshold", isRegulated: 1, amount: 4, threshold: 5, flagged: 0, valid: true},
		{name: "regulated at threshold", isRegulated: 1, amount: 5, threshold: 5, flagged: 1, valid: true},
		{name: "unregulated below predecessor threshold", isRegulated: 0, amount: 4, threshold: 5, flagged: 0, valid: true},
		{name: "unregulated above predecessor threshold remains unflagged", isRegulated: 0, amount: maxAmount, threshold: 1, flagged: 0, valid: true},
		{name: "unregulated above predecessor threshold cannot flag", isRegulated: 0, amount: maxAmount, threshold: 1, flagged: 1, valid: false},
	}

	assert := test.NewAssert(t)
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			assignment := &regulatedThresholdFlagCircuit{
				IsRegulated: tc.isRegulated,
				Amount:      tc.amount,
				Threshold:   tc.threshold,
				IsFlagged:   tc.flagged,
			}
			options := []test.TestingOption{
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
			}
			if tc.valid {
				options = append(options, test.WithValidAssignment(assignment))
			} else {
				options = append(options, test.WithInvalidAssignment(assignment))
			}
			assert.CheckCircuit(&regulatedThresholdFlagCircuit{}, options...)
		})
	}
}
