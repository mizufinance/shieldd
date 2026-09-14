package compliance

import (
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decaf "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"math/big"
	"testing"
)

type selectedParity struct {
	Esk, Flag        frontend.Variable
	Ack, Issuer, EPK gnarkte.Point
}

func (c *selectedParity) Define(api frontend.API) error {
	_, _, old, err := DeriveSharedSecretsSpend(api, c.Esk, c.Ack, c.Issuer, c.Flag, c.EPK)
	if err != nil {
		return err
	}
	selected, err := DeriveSelectedSharedSecretSpend(api, c.Esk, c.Ack, c.Issuer, c.Flag, c.EPK)
	if err != nil {
		return err
	}
	api.AssertIsEqual(old.X, selected.X)
	api.AssertIsEqual(old.Y, selected.Y)
	oldEncoded, err := decafgnark.CompressToField(api, old)
	if err != nil {
		return err
	}
	newEncoded, err := decafgnark.CompressToField(api, selected)
	if err != nil {
		return err
	}
	api.AssertIsEqual(oldEncoded, newEncoded)
	return nil
}
func TestSelectedSharedExactCoordinates(t *testing.T) {
	ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &selectedParity{})
	if err != nil {
		t.Fatal(err)
	}
	g, err := decaf.Generator()
	if err != nil {
		t.Fatal(err)
	}
	issuer, err := decaf.ScalarMul(g, big.NewInt(17))
	if err != nil {
		t.Fatal(err)
	}
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	order := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order)
	max := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), uint(order.BitLen())), big.NewInt(1))
	scalars := []*big.Int{big.NewInt(0), big.NewInt(1), big.NewInt(2), big.NewInt(3), new(big.Int).Sub(order, big.NewInt(1)), max}
	for _, scalar := range scalars {
		epk, err := decaf.ScalarMul(g, scalar)
		if err != nil {
			t.Fatal(err)
		}
		for _, flag := range []int{0, 1} {
			for _, identity := range []bool{false, true} {
				ack := gnarkte.Point{X: g.X, Y: g.Y}
				if identity {
					ack = gnarkte.Point{X: 0, Y: 1}
				}
				a := &selectedParity{Esk: scalar, Flag: flag, Ack: ack, Issuer: gnarkte.Point{X: issuer.X, Y: issuer.Y}, EPK: gnarkte.Point{X: epk.X, Y: epk.Y}}
				w, err := frontend.NewWitness(a, primitives.ScalarField())
				if err != nil {
					t.Fatal(err)
				}
				if _, err = ccs.Solve(w); err != nil {
					t.Fatalf("scalar=%s flag=%d identity=%v: %v", scalar, flag, identity, err)
				}
			}
		}
	}
	for _, bad := range []*selectedParity{
		{Esk: 1, Flag: 2, Ack: gnarkte.Point{X: g.X, Y: g.Y}, Issuer: gnarkte.Point{X: issuer.X, Y: issuer.Y}, EPK: gnarkte.Point{X: g.X, Y: g.Y}},
		{Esk: 1, Flag: 0, Ack: gnarkte.Point{X: g.X, Y: g.Y}, Issuer: gnarkte.Point{X: issuer.X, Y: issuer.Y}, EPK: gnarkte.Point{X: issuer.X, Y: issuer.Y}},
	} {
		w, err := frontend.NewWitness(bad, primitives.ScalarField())
		if err != nil {
			t.Fatal(err)
		}
		if _, err = ccs.Solve(w); err == nil {
			t.Fatal("invalid flag or EPK accepted")
		}
	}
}
