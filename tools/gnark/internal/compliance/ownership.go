package compliance

import (
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"math/big"
)

var OwnershipDomain = transferSaltConstant("shieldd.audit.ownership.v1")

// VerifyOwnership binds full ElGamal encryption to the proof's actual address components.
func VerifyOwnership(api frontend.API, generator, transmission frontend.Variable, checking gnarkte.Point, randomness frontend.Variable, r, c gnarkte.Point) error {
	hashed, err := primitives.Poseidon377Hash2(api, OwnershipDomain, [2]frontend.Variable{generator, transmission})
	if err != nil {
		return err
	}
	fingerprint, err := decafgnark.EncodeToCurve(api, hashed)
	if err != nil {
		return err
	}
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return err
	}
	for _, p := range []gnarkte.Point{checking, r, c} {
		curve.AssertIsOnCurve(p)
	}
	g, err := decafGeneratorPoint()
	if err != nil {
		return err
	}
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	order := primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order)
	api.AssertIsDifferent(randomness, 0)
	api.AssertIsLessOrEqual(randomness, new(big.Int).Sub(order, big.NewInt(1)))
	bits := api.ToBinary(randomness, order.BitLen())
	decafgnark.AssertEquivalent(api, ScalarMulLEBits(api, curve, g, bits), r)
	shared := ScalarMulWindow2LEBits(api, curve, checking, bits)
	decafgnark.AssertEquivalent(api, curve.Add(fingerprint, shared), c)
	return nil
}
