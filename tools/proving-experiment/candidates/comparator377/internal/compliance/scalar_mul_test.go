package compliance

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decaf377 "github.com/mizufinance/decaf377-go"
)

type scalarMulCircuit struct {
	BaseX  frontend.Variable `gnark:",public"`
	BaseY  frontend.Variable `gnark:",public"`
	Scalar frontend.Variable `gnark:",public"`
	OutX   frontend.Variable `gnark:",public"`
	OutY   frontend.Variable `gnark:",public"`
	NBits  int
}

func (c *scalarMulCircuit) Define(api frontend.API) error {
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return err
	}
	out := ScalarMulWindow2LEBits(
		api,
		curve,
		gnarkte.Point{X: c.BaseX, Y: c.BaseY},
		api.ToBinary(c.Scalar, c.NBits),
	)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func TestScalarMulWindow2(t *testing.T) {
	generator, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	for _, nBits := range []int{128, 251} {
		max := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), uint(nBits)), big.NewInt(1))
		for _, scalar := range []*big.Int{big.NewInt(0), big.NewInt(1), max} {
			expected, err := decaf377.ScalarMul(generator, scalar)
			if err != nil {
				t.Fatal(err)
			}
			assignment := &scalarMulCircuit{
				BaseX: generator.X, BaseY: generator.Y, Scalar: scalar,
				OutX: expected.X, OutY: expected.Y, NBits: nBits,
			}
			if err := test.IsSolved(
				&scalarMulCircuit{NBits: nBits},
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err != nil {
				t.Fatalf("nBits=%d scalar=%s: %v", nBits, scalar, err)
			}
		}
	}
}
