package compliance

import (
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/backend"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
)

type discoveryPrecisionCircuit struct {
	Precision       frontend.Variable
	TransmissionKey frontend.Variable
	ExpectedTag     frontend.Variable `gnark:",public"`
}

func (c *discoveryPrecisionCircuit) Define(api frontend.API) error {
	activeBits := discoveryPrecisionActiveBits(api, c.Precision)
	tag := truncateDiscoveryPrefix(api, c.TransmissionKey, activeBits)
	api.AssertIsEqual(tag, c.ExpectedTag)
	return nil
}

func TestDiscoveryPrecisionRangeAndMask(t *testing.T) {
	tests := []struct {
		name      string
		precision uint64
		expected  uint64
		valid     bool
	}{
		{name: "zero bits", precision: 0, expected: 0, valid: true},
		{name: "eight bits", precision: 8, expected: 0xff, valid: true},
		{name: "sixteen bits", precision: 16, expected: 0xfff, valid: true},
		{name: "maximum thirty two bits", precision: 32, expected: 0xfff, valid: true},
		{name: "above maximum", precision: 33, expected: 0xfff, valid: false},
		{name: "inactive high bit is rejected", precision: 8, expected: 0x1ff, valid: false},
	}

	assert := test.NewAssert(t)
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			assignment := &discoveryPrecisionCircuit{
				Precision:       tc.precision,
				TransmissionKey: 0xfff,
				ExpectedTag:     tc.expected,
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
			assert.CheckCircuit(&discoveryPrecisionCircuit{}, options...)
		})
	}
}
