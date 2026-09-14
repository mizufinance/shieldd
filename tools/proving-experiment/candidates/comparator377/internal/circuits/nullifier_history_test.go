package circuits

import (
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
)

type nullifierHistoryCircuit struct {
	Position            frontend.Variable
	RecentPositionFloor frontend.Variable
	IsDummy             frontend.Variable
	Expected            frontend.Variable `gnark:",public"`
}

func (c *nullifierHistoryCircuit) Define(api frontend.API) error {
	api.AssertIsEqual(
		historyRequired(api, c.Position, c.RecentPositionFloor, c.IsDummy),
		c.Expected,
	)
	return nil
}

func TestHistoryRequiredBoundaryAndDummyGating(t *testing.T) {
	template := &nullifierHistoryCircuit{}
	for _, testCase := range []struct {
		name     string
		position uint64
		floor    uint64
		dummy    uint64
		expected uint64
	}{
		{name: "old real", position: 41, floor: 42, expected: 1},
		{name: "equal is recent", position: 42, floor: 42},
		{name: "newer is recent", position: 43, floor: 42},
		{name: "old dummy", position: 41, floor: 42, dummy: 1},
	} {
		t.Run(testCase.name, func(t *testing.T) {
			assignment := &nullifierHistoryCircuit{
				Position:            testCase.position,
				RecentPositionFloor: testCase.floor,
				IsDummy:             testCase.dummy,
				Expected:            testCase.expected,
			}
			if err := test.IsSolved(template, assignment, ecc.BLS12_377.ScalarField()); err != nil {
				t.Fatal(err)
			}
		})
	}
}

func TestHistoryRequiredRejectsMalformedInputs(t *testing.T) {
	for _, testCase := range []struct {
		name     string
		position frontend.Variable
		floor    frontend.Variable
		dummy    frontend.Variable
		expected frontend.Variable
	}{
		{
			name: "position outside 48 bits", position: uint64(1) << sctPositionBits,
			floor: 1, dummy: 0, expected: 0,
		},
		{
			name: "floor outside 48 bits", position: 1,
			floor: uint64(1) << sctPositionBits, dummy: 0, expected: 0,
		},
		{
			name: "nonboolean dummy", position: 0,
			floor: 1, dummy: 2, expected: 0,
		},
		{
			name: "nonboolean claimed result", position: 0,
			floor: 1, dummy: 0, expected: 2,
		},
	} {
		t.Run(testCase.name, func(t *testing.T) {
			assignment := &nullifierHistoryCircuit{
				Position:            testCase.position,
				RecentPositionFloor: testCase.floor,
				IsDummy:             testCase.dummy,
				Expected:            testCase.expected,
			}
			if err := test.IsSolved(
				&nullifierHistoryCircuit{},
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatal("malformed history classification input was accepted")
			}
		})
	}
}
