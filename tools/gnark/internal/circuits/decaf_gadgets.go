package circuits

// Extraction-scope gadgets for the decaf377 library boundary. AssertEquivalent
// and the IVK mod-r decomposition call the shipped code directly; the
// CompressToField gadget is a hint-free mirror (hint outputs become witness
// inputs, gnark's internal ToBinary reducedness check becomes the explicit
// CanonicalFqBits253 ladder) so the Lean extractor can consume it. Constraint
// parity with the shipped decafgnark.CompressToField is covered by
// TestCompressToFieldGadgetParity.

import (
	decaf377 "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"

	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

// AssertEquivalentGadget isolates the decaf377 coset-equivalence constraint
// x_l*y_r = x_r*y_l exactly as the shipped library emits it.
type AssertEquivalentGadget struct {
	LX frontend.Variable `gnark:",public"`
	LY frontend.Variable `gnark:",public"`
	RX frontend.Variable `gnark:",public"`
	RY frontend.Variable `gnark:",public"`
}

func (c *AssertEquivalentGadget) Define(api frontend.API) error {
	decafgnark.AssertEquivalent(api,
		gnarkte.Point{X: c.LX, Y: c.LY},
		gnarkte.Point{X: c.RX, Y: c.RY})
	return nil
}

// IvkModRGadget isolates the shipped IVK mod-r decomposition: ivkModQ is split
// as r*quotientA + ivkReduced with quotientA in {0..4}, ivkReduced < r, and the
// quotientA = 4 branch additionally bounded so the split cannot wrap mod q.
type IvkModRGadget struct {
	IvkModQ    frontend.Variable `gnark:",public"`
	QuotientA  frontend.Variable
	IvkReduced frontend.Variable
}

func (c *IvkModRGadget) Define(api frontend.API) error {
	return IVKModRDecomposition(api, c.IvkModQ, c.QuotientA, c.IvkReduced)
}

// CompressToFieldGadget is the hint-free extraction mirror of
// decafgnark.CompressToField: same on-curve check, sqrt-ratio-zeta case
// constraints, and sign-normalized output, with the solver hint outputs
// (WasSquare, SqrtRatio) supplied as witnesses.
type CompressToFieldGadget struct {
	X         frontend.Variable `gnark:",public"`
	Y         frontend.Variable `gnark:",public"`
	WasSquare frontend.Variable
	SqrtRatio frontend.Variable
	Out       frontend.Variable
}

// EncodeToCurveGadget is the hint-free extraction mirror of
// decafgnark.EncodeToCurve. The sqrt-ratio-zeta hint outputs are supplied as
// witnesses, the sign bit is constrained to the canonical field representative,
// and the affine output coordinates are asserted explicitly.
type EncodeToCurveGadget struct {
	Input     frontend.Variable `gnark:",public"`
	WasSquare frontend.Variable
	InvSqrt   frontend.Variable
	OutX      frontend.Variable
	OutY      frontend.Variable
}

type EdwardsAddGadget struct {
	LX   frontend.Variable `gnark:",public"`
	LY   frontend.Variable `gnark:",public"`
	RX   frontend.Variable `gnark:",public"`
	RY   frontend.Variable `gnark:",public"`
	OutX frontend.Variable
	OutY frontend.Variable
}

type EdwardsDoubleGadget struct {
	X    frontend.Variable `gnark:",public"`
	Y    frontend.Variable `gnark:",public"`
	OutX frontend.Variable
	OutY frontend.Variable
}

type EdwardsNegGadget struct {
	X    frontend.Variable `gnark:",public"`
	Y    frontend.Variable `gnark:",public"`
	OutX frontend.Variable
	OutY frontend.Variable
}

type DecafRvkGadget struct {
	AkX        frontend.Variable `gnark:",public"`
	AkY        frontend.Variable `gnark:",public"`
	Randomizer frontend.Variable `gnark:",public"`
	OutX       frontend.Variable
	OutY       frontend.Variable
}

type DecafDtkGadget struct {
	Nk          frontend.Variable `gnark:",public"`
	AkX         frontend.Variable `gnark:",public"`
	AkY         frontend.Variable `gnark:",public"`
	DivGenX     frontend.Variable `gnark:",public"`
	DivGenY     frontend.Variable `gnark:",public"`
	WasSquare   frontend.Variable
	SqrtRatio   frontend.Variable
	IvkReduced  frontend.Variable
	IvkQuotient frontend.Variable
	OutX        frontend.Variable
	OutY        frontend.Variable
}

type NetBalanceCommitmentGadget struct {
	Input0Amount    frontend.Variable `gnark:",public"`
	Input1Amount    frontend.Variable `gnark:",public"`
	OutputAmount    frontend.Variable `gnark:",public"`
	AssetID         frontend.Variable `gnark:",public"`
	BalanceBlinding frontend.Variable `gnark:",public"`
	EncodeWasSquare frontend.Variable
	EncodeInvSqrt   frontend.Variable
	OutX            frontend.Variable
	OutY            frontend.Variable
}

func (c *CompressToFieldGadget) Define(api frontend.API) error {
	out := compressToFieldWithWitness(api, c.X, c.Y, c.WasSquare, c.SqrtRatio)
	api.AssertIsEqual(out, c.Out)
	return nil
}

func (c *EncodeToCurveGadget) Define(api frontend.API) error {
	out := encodeToCurveWithWitness(api, c.Input, c.WasSquare, c.InvSqrt)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func (c *EdwardsAddGadget) Define(api frontend.API) error {
	out := edwardsAddMirror(
		api,
		gnarkte.Point{X: c.LX, Y: c.LY},
		gnarkte.Point{X: c.RX, Y: c.RY},
	)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func (c *EdwardsDoubleGadget) Define(api frontend.API) error {
	out := edwardsDoubleMirror(api, gnarkte.Point{X: c.X, Y: c.Y})
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func (c *EdwardsNegGadget) Define(api frontend.API) error {
	out := gnarkte.Point{X: api.Neg(c.X), Y: c.Y}
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func (c *DecafRvkGadget) Define(api frontend.API) error {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return err
	}
	generator := gnarkte.Point{
		X: MustBigInt(vectors.Decaf377CompanionCurve.GeneratorX),
		Y: MustBigInt(vectors.Decaf377CompanionCurve.GeneratorY),
	}
	randomizedPart := scalarMulLEMirror(api, generator, c.Randomizer, 251)
	out := edwardsAddMirror(api, gnarkte.Point{X: c.AkX, Y: c.AkY}, randomizedPart)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func (c *DecafDtkGadget) Define(api frontend.API) error {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return err
	}
	akCompressed := compressToFieldWithWitness(api, c.AkX, c.AkY, c.WasSquare, c.SqrtRatio)
	ivkModQ, err := Poseidon377Hash2(
		api,
		MustBigInt(vectors.Poseidon377.IVKDomain),
		[2]frontend.Variable{c.Nk, akCompressed},
	)
	if err != nil {
		return err
	}
	if err := IVKModRDecomposition(api, ivkModQ, c.IvkQuotient, c.IvkReduced); err != nil {
		return err
	}
	out := scalarMulLEMirror(
		api,
		gnarkte.Point{X: c.DivGenX, Y: c.DivGenY},
		c.IvkReduced,
		251,
	)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func (c *NetBalanceCommitmentGadget) Define(api frontend.API) error {
	out, err := netBalanceCommitmentMirrorWithWitness(
		api,
		c.Input0Amount,
		c.Input1Amount,
		c.OutputAmount,
		c.AssetID,
		c.BalanceBlinding,
		c.EncodeWasSquare,
		c.EncodeInvSqrt,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func netBalanceCommitmentMirrorWithWitness(
	api frontend.API,
	input0Amount, input1Amount, outputAmount, assetID, balanceBlinding frontend.Variable,
	encodeWasSquare, encodeInvSqrt frontend.Variable,
) (gnarkte.Point, error) {
	vectors, err := LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	hashedAssetID, err := Poseidon377Hash1(
		api,
		MustBigInt(vectors.Poseidon377.ValueGeneratorDomain),
		assetID,
	)
	if err != nil {
		return gnarkte.Point{}, err
	}
	valueGenerator := encodeToCurveWithWitness(api, hashedAssetID, encodeWasSquare, encodeInvSqrt)
	valueBlindingGenerator := gnarkte.Point{
		X: MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}

	sum := scalarMulLEMirror(api, valueGenerator, 0, 128)
	input0 := scalarMulLEMirror(api, valueGenerator, input0Amount, 128)
	input1 := scalarMulLEMirror(api, valueGenerator, input1Amount, 128)
	output := scalarMulLEMirror(api, valueGenerator, outputAmount, 128)
	sum = edwardsAddMirror(api, sum, input0)
	sum = edwardsAddMirror(api, sum, input1)
	sum = edwardsAddMirror(api, sum, gnarkte.Point{X: api.Neg(output.X), Y: output.Y})
	blindingPoint := scalarMulLEMirror(api, valueBlindingGenerator, balanceBlinding, 251)
	return edwardsAddMirror(api, sum, blindingPoint), nil
}

func edwardsAddMirror(api frontend.API, left, right gnarkte.Point) gnarkte.Point {
	a := decaf377.CurveA()
	d := decaf377.CurveD()

	u1a := api.Mul(left.X, a)
	u1 := api.Sub(left.Y, u1a)
	u2 := api.Add(right.X, right.Y)
	u := api.Mul(u1, u2)
	v0 := api.Mul(right.Y, left.X)
	v1 := api.Mul(right.X, left.Y)
	v2a := api.Mul(d, v0)
	v2 := api.Mul(v2a, v1)
	xNum := api.Add(v0, v1)
	xDen := api.Add(1, v2)
	y0 := api.Mul(a, v0)
	y1 := api.Sub(y0, v1)
	yNum := api.Add(y1, u)
	yDen := api.Sub(1, v2)
	return gnarkte.Point{
		X: api.DivUnchecked(xNum, xDen),
		Y: api.DivUnchecked(yNum, yDen),
	}
}

func edwardsDoubleMirror(api frontend.API, p gnarkte.Point) gnarkte.Point {
	a := decaf377.CurveA()

	u := api.Mul(p.X, p.Y)
	v := api.Mul(p.X, p.X)
	w := api.Mul(p.Y, p.Y)
	n1 := api.Mul(2, u)
	av := api.Mul(v, a)
	n2 := api.Sub(w, av)
	d1 := api.Add(w, av)
	d2 := api.Sub(2, d1)
	return gnarkte.Point{
		X: api.DivUnchecked(n1, d1),
		Y: api.DivUnchecked(n2, d2),
	}
}

// decafAbsCanonical mirrors decaf377's abs (pick the even representative) with
// the canonical decomposition made explicit via the CanonicalFqBits253 ladder.
func decafAbsCanonical(api frontend.API, value frontend.Variable) frontend.Variable {
	bits := CanonicalFqBits253(api, value)
	isNonnegative := api.Sub(1, bits[0])
	return api.Select(isNonnegative, value, api.Neg(value))
}

func compressToFieldWithWitness(
	api frontend.API,
	x, y, wasSquare, sqrtRatio frontend.Variable,
) frontend.Variable {
	d := decaf377.CurveD()
	aMinusD := decaf377.CurveAMinusD()
	// On-curve: -x^2 + y^2 = 1 + d*x^2*y^2 (a = -1 twisted Edwards).
	xx := api.Mul(x, x)
	yy := api.Mul(y, y)
	api.AssertIsEqual(api.Sub(yy, xx), api.Add(1, api.Mul(api.Mul(d, xx), yy)))

	t := api.Mul(x, y)
	u1 := api.Mul(api.Add(x, t), api.Sub(x, t))
	den := api.Mul(api.Mul(u1, aMinusD), xx)

	constrainSqrtRatioZeta(api, den, wasSquare, sqrtRatio)

	u2 := decafAbsCanonical(api, api.Mul(sqrtRatio, u1))
	u3 := api.Sub(u2, t)
	return decafAbsCanonical(api, api.Mul(api.Mul(api.Mul(aMinusD, sqrtRatio), u3), x))
}

func constrainSqrtRatioZeta(
	api frontend.API,
	den, wasSquare, sqrtRatio frontend.Variable,
) {
	zeta := decaf377.CurveZeta()

	api.AssertIsBoolean(wasSquare)
	denIsZero := api.IsZero(den)
	safeDen := api.Select(denIsZero, 1, den)
	safeDenInv := api.Inverse(safeDen)
	ySquared := api.Mul(sqrtRatio, sqrtRatio)
	api.AssertIsEqual(api.Mul(wasSquare, denIsZero), 0)

	notSquare := api.Sub(1, wasSquare)
	denNonZero := api.Sub(1, denIsZero)
	inCase3 := api.And(notSquare, denIsZero)
	inCase4 := api.And(notSquare, denNonZero)

	api.AssertIsEqual(api.Mul(wasSquare, api.Sub(ySquared, safeDenInv)), 0)
	api.AssertIsEqual(api.Mul(inCase3, ySquared), 0)
	api.AssertIsEqual(api.Mul(inCase4, api.Sub(ySquared, api.Mul(zeta, safeDenInv))), 0)
	api.AssertIsEqual(api.Add(api.Add(wasSquare, inCase3), inCase4), 1)
}

func encodeToCurveWithWitness(
	api frontend.API,
	r0, wasSquare, invSqrt frontend.Variable,
) gnarkte.Point {
	d := decaf377.CurveD()
	a := decaf377.CurveA()
	zeta := decaf377.CurveZeta()

	r := api.Mul(zeta, api.Mul(r0, r0))
	dMinusA := api.Sub(d, a)
	den := api.Mul(
		api.Sub(api.Mul(d, r), dMinusA),
		api.Sub(api.Mul(dMinusA, r), d),
	)
	num := api.Mul(api.Add(r, 1), api.Sub(a, api.Mul(2, d)))
	x := api.Mul(num, den)
	constrainSqrtRatioZeta(api, x, wasSquare, invSqrt)

	sgn := api.Select(wasSquare, 1, -1)
	twiddle := api.Select(wasSquare, 1, r0)
	isri := api.Mul(invSqrt, twiddle)

	s := api.Mul(isri, num)
	aMinusTwoD := api.Sub(a, api.Mul(2, d))
	tTerm := api.Mul(api.Neg(sgn), isri)
	tTerm = api.Mul(tTerm, s)
	tTerm = api.Mul(tTerm, api.Sub(r, 1))
	tTerm = api.Mul(tTerm, api.Mul(aMinusTwoD, aMinusTwoD))
	t := api.Sub(tTerm, 1)

	sBits := CanonicalFqBits253(api, s)
	isNegative := sBits[0]
	condNegate := api.IsZero(api.Sub(isNegative, wasSquare))
	s = api.Select(condNegate, api.Neg(s), s)

	sSquared := api.Mul(s, s)
	affineXNum := api.Mul(2, s)
	affineXDen := api.Add(1, api.Mul(a, sSquared))
	affineYNum := api.Sub(1, api.Mul(a, sSquared))
	out := gnarkte.Point{
		X: api.Mul(affineXNum, api.Inverse(affineXDen)),
		Y: api.Mul(affineYNum, api.Inverse(t)),
	}

	xx := api.Mul(out.X, out.X)
	yy := api.Mul(out.Y, out.Y)
	api.AssertIsEqual(api.Sub(yy, xx), api.Add(1, api.Mul(api.Mul(d, xx), yy)))
	return out
}
