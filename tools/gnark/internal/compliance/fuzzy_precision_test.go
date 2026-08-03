package compliance

import (
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/backend"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
)

type fuzzyPrecisionCircuit struct {
	Precision   frontend.Variable
	Hash        frontend.Variable
	ExpectedTag frontend.Variable `gnark:",public"`
}

func (c *fuzzyPrecisionCircuit) Define(api frontend.API) error {
	activeBits := fuzzyPrecisionActiveBits(api, c.Precision)
	tag := truncateFuzzyHash(api, c.Hash, activeBits)
	api.AssertIsEqual(tag, c.ExpectedTag)
	return nil
}

func TestFuzzyPrecisionRangeAndMask(t *testing.T) {
	tests := []struct {
		name      string
		precision uint64
		expected  uint64
		valid     bool
	}{
		{name: "minimum seven bits", precision: 7, expected: 0x07f, valid: true},
		{name: "default eight bits", precision: 8, expected: 0x0ff, valid: true},
		{name: "nine bits", precision: 9, expected: 0x1ff, valid: true},
		{name: "ten bits", precision: 10, expected: 0x3ff, valid: true},
		{name: "eleven bits", precision: 11, expected: 0x7ff, valid: true},
		{name: "maximum twelve bits", precision: 12, expected: 0xfff, valid: true},
		{name: "below minimum", precision: 6, expected: 0x03f, valid: false},
		{name: "above maximum", precision: 13, expected: 0xfff, valid: false},
		{name: "inactive high bit is rejected", precision: 8, expected: 0x1ff, valid: false},
	}

	assert := test.NewAssert(t)
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			assignment := &fuzzyPrecisionCircuit{
				Precision:   tc.precision,
				Hash:        0xfff,
				ExpectedTag: tc.expected,
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
			assert.CheckCircuit(&fuzzyPrecisionCircuit{}, options...)
		})
	}
}
