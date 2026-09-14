package compliance

import (
	"github.com/consensys/gnark/constraint"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"math/big"
	"testing"
)

type strictAmountCircuit struct{ A, B, Want frontend.Variable }

func (c *strictAmountCircuit) Define(api frontend.API) error {
	api.AssertIsEqual(FieldLessThan(api, c.A, c.B), c.Want)
	return nil
}

type strictConstantCircuit struct {
	A, Want frontend.Variable
	Width   int      `gnark:"-"`
	Bound   *big.Int `gnark:"-"`
}

func (c *strictConstantCircuit) Define(api frontend.API) error {
	bits := api.ToBinary(c.A, c.Width)
	api.AssertIsEqual(LessThanConstant253(api, bits, c.Bound), c.Want)
	return nil
}
func solved(t *testing.T, ccs constraint.ConstraintSystem, assignment frontend.Circuit, expected bool) {
	t.Helper()
	w, err := frontend.NewWitness(assignment, primitives.ScalarField())
	if err != nil {
		t.Fatal(err)
	}
	_, err = ccs.Solve(w)
	if (err == nil) != expected {
		t.Fatalf("satisfaction=%v want=%v: %v", err == nil, expected, err)
	}
}
func compile(t *testing.T, c frontend.Circuit) constraint.ConstraintSystem {
	t.Helper()
	ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, c)
	if err != nil {
		t.Fatal(err)
	}
	return ccs
}
func TestStrictComparatorScreenAmounts(t *testing.T) {
	ccs := compile(t, &strictAmountCircuit{})
	for a := int64(0); a < 16; a++ {
		for b := int64(0); b < 16; b++ {
			want := 0
			if a < b {
				want = 1
			}
			solved(t, ccs, &strictAmountCircuit{a, b, want}, true)
			solved(t, ccs, &strictAmountCircuit{a, b, 1 - want}, false)
		}
	}
	max := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), 128), big.NewInt(1))
	values := []*big.Int{big.NewInt(0), big.NewInt(1), new(big.Int).Sub(max, big.NewInt(1)), max}
	for _, a := range values {
		for _, b := range values {
			want := 0
			if a.Cmp(b) < 0 {
				want = 1
			}
			solved(t, ccs, &strictAmountCircuit{a, b, want}, true)
			solved(t, ccs, &strictAmountCircuit{a, b, 1 - want}, false)
		}
	}
	overflow := new(big.Int).Add(max, big.NewInt(1))
	solved(t, ccs, &strictAmountCircuit{overflow, 0, 0}, false)
	solved(t, ccs, &strictAmountCircuit{0, overflow, 1}, false)
}
func TestStrictComparatorScreenConstants(t *testing.T) {
	for bound := int64(0); bound < 16; bound++ {
		ccs := compile(t, &strictConstantCircuit{Width: 4, Bound: big.NewInt(bound)})
		for a := int64(0); a < 16; a++ {
			want := 0
			if a < bound {
				want = 1
			}
			solved(t, ccs, &strictConstantCircuit{A: a, Want: want}, true)
			solved(t, ccs, &strictConstantCircuit{A: a, Want: 1 - want}, false)
		}
	}
	// Covers the actual companion order and the q-4r quotient-bound constant.
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	order, ok := new(big.Int).SetString(vectors.Decaf377CompanionCurve.Order, 10)
	if !ok {
		t.Fatal("order")
	}
	small := new(big.Int).Sub(primitives.ScalarField(), new(big.Int).Mul(big.NewInt(4), order))
	for _, bound := range []*big.Int{order, small} {
		ccs := compile(t, &strictConstantCircuit{Width: 253, Bound: bound})
		for _, a := range []*big.Int{big.NewInt(0), new(big.Int).Sub(bound, big.NewInt(1)), bound, new(big.Int).Add(bound, big.NewInt(1))} {
			want := 0
			if a.Cmp(bound) < 0 {
				want = 1
			}
			solved(t, ccs, &strictConstantCircuit{A: a, Want: want}, true)
			solved(t, ccs, &strictConstantCircuit{A: a, Want: 1 - want}, false)
		}
	}
	for _, bound := range []*big.Int{big.NewInt(-1), big.NewInt(16)} {
		if _, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &strictConstantCircuit{Width: 4, Bound: bound}); err == nil {
			t.Fatal("invalid constant accepted")
		}
	}
}
