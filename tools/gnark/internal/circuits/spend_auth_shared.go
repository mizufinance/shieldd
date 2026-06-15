package circuits

import (
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"math/big"

	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func Nullifier(
	api frontend.API,
	nk frontend.Variable,
	stateCommitment frontend.Variable,
	position frontend.Variable,
) (frontend.Variable, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return nil, err
	}

	return Poseidon377Hash3(
		api,
		MustBigInt(vectors.Poseidon377.NullifierDomain),
		[3]frontend.Variable{nk, stateCommitment, position},
	)
}

func IncomingViewingKey(
	api frontend.API,
	nk frontend.Variable,
	ak gnarkte.Point,
	ivkReduced frontend.Variable,
	quotientA frontend.Variable,
) (frontend.Variable, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return nil, err
	}

	akFq, err := decafgnark.CompressToField(api, ak)
	if err != nil {
		return nil, err
	}
	ivkModQ, err := Poseidon377Hash2(
		api,
		MustBigInt(vectors.Poseidon377.IVKDomain),
		[2]frontend.Variable{nk, akFq},
	)
	if err != nil {
		return nil, err
	}

	if err := IVKModRDecomposition(api, ivkModQ, quotientA, ivkReduced); err != nil {
		return nil, err
	}

	return ivkReduced, nil
}

// IVKModRDecomposition pins ivkModQ = r*quotientA + ivkReduced with
// quotientA in {0..4}, ivkReduced < r, and (when quotientA = 4)
// ivkReduced < q - 4r so the split cannot wrap mod q.
func IVKModRDecomposition(
	api frontend.API,
	ivkModQ frontend.Variable,
	quotientA frontend.Variable,
	ivkReduced frontend.Variable,
) error {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return err
	}

	rModulus := MustBigInt(vectors.Decaf377CompanionCurve.Order)
	api.AssertIsEqual(ivkModQ, api.Add(api.Mul(rModulus, quotientA), ivkReduced))

	poly := quotientA
	for i := 1; i <= 4; i++ {
		poly = api.Mul(poly, api.Sub(quotientA, i))
	}
	api.AssertIsEqual(poly, 0)

	bits := api.ToBinary(ivkReduced, 253)
	isLess := LessThanConstant253(api, bits, rModulus)
	api.AssertIsEqual(isLess, 1)

	qMinus4R := new(big.Int).Sub(ScalarField(), new(big.Int).Mul(big.NewInt(4), rModulus))
	isLessThanQMinus4R := LessThanConstant253(api, bits, qMinus4R)
	isA4 := api.IsZero(api.Sub(quotientA, 4))
	api.AssertIsEqual(api.Mul(isA4, api.Sub(1, isLessThanQMinus4R)), 0)

	return nil
}

func DiversifiedTransmissionKey(
	api frontend.API,
	nk frontend.Variable,
	ak gnarkte.Point,
	diversifiedGenerator gnarkte.Point,
	ivkReduced frontend.Variable,
	quotientA frontend.Variable,
) (gnarkte.Point, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return gnarkte.Point{}, err
	}
	ivk, err := IncomingViewingKey(api, nk, ak, ivkReduced, quotientA)
	if err != nil {
		return gnarkte.Point{}, err
	}
	return ScalarMulLE(
		api,
		curve,
		diversifiedGenerator,
		ivk,
		MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	), nil
}

func RandomizedVerificationKey(
	api frontend.API,
	ak gnarkte.Point,
	spendAuthRandomizer frontend.Variable,
) (gnarkte.Point, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return gnarkte.Point{}, err
	}
	generator := gnarkte.Point{
		X: MustBigInt(vectors.Decaf377CompanionCurve.GeneratorX),
		Y: MustBigInt(vectors.Decaf377CompanionCurve.GeneratorY),
	}
	randomizedPart := ScalarMulLE(
		api,
		curve,
		generator,
		spendAuthRandomizer,
		MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	)
	return curve.Add(ak, randomizedPart), nil
}
