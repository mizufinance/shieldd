package circuits

// Verification-only Picus probes. These gadgets are NOT used by any production
// circuit; they expose a sub-segment of an existing gadget as a standalone
// top-level circuit so Picus can discharge its determinism in isolation. The
// production circuits are unchanged, so extracted Lean and its FV stamps stay
// valid. Each probe is paired with a documented composition argument that lifts
// the segment's determinism to the full gadget.

import (
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decaf377 "github.com/mizufinance/decaf377-go"
)

// EncodeToCurveCoreGadget is encode-to-curve with the 253-bit sign decomposition
// factored out: the canonical sign bit is taken as a boolean input instead of
// derived via CanonicalFqBits253. This isolates the sqrt-ratio + inverse core so
// we can measure whether that algebra (not the bit count) is what blocks Picus.
// Composition: canonical-fq-bits (already `safe`) proves IsNegative is the unique
// decomposition sign of s, so core-safe + bits-safe => encode-to-curve safe.
type EncodeToCurveCoreGadget struct {
	Input      frontend.Variable `gnark:",public"`
	WasSquare  frontend.Variable
	InvSqrt    frontend.Variable
	IsNegative frontend.Variable
	OutX       frontend.Variable
	OutY       frontend.Variable
}

func (c *EncodeToCurveCoreGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.IsNegative)
	out := encodeToCurveCore(api, c.Input, c.WasSquare, c.InvSqrt, c.IsNegative)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

// CompressToFieldCoreGadget is compress-to-field with both decafAbsCanonical
// 253-bit decompositions factored out: the two canonical sign bits are taken as
// boolean inputs. Isolates the sqrt-ratio core. Composition: canonical-fq-bits
// (already `safe`) proves each sign bit is the unique decomposition sign of its
// pre-image, so core-safe + bits-safe => compress-to-field safe.
type CompressToFieldCoreGadget struct {
	X         frontend.Variable `gnark:",public"`
	Y         frontend.Variable `gnark:",public"`
	WasSquare frontend.Variable
	SqrtRatio frontend.Variable
	Sign1     frontend.Variable
	Sign2     frontend.Variable
	Out       frontend.Variable
}

func (c *CompressToFieldCoreGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.Sign1)
	api.AssertIsBoolean(c.Sign2)
	out := compressToFieldCore(api, c.X, c.Y, c.WasSquare, c.SqrtRatio, c.Sign1, c.Sign2)
	api.AssertIsEqual(out, c.Out)
	return nil
}

// compressToFieldCore mirrors compressToFieldWithWitness but injects the two
// canonical sign bits instead of computing them via decafAbsCanonical.
func compressToFieldCore(api frontend.API, x, y, wasSquare, sqrtRatio, sign1, sign2 frontend.Variable) frontend.Variable {
	d := decaf377.CurveD()
	aMinusD := decaf377.CurveAMinusD()
	xx := api.Mul(x, x)
	yy := api.Mul(y, y)
	api.AssertIsEqual(api.Sub(yy, xx), api.Add(1, api.Mul(api.Mul(d, xx), yy)))

	t := api.Mul(x, y)
	u1 := api.Mul(api.Add(x, t), api.Sub(x, t))
	den := api.Mul(api.Mul(u1, aMinusD), xx)

	constrainSqrtRatioZeta(api, den, wasSquare, sqrtRatio)

	v2 := api.Mul(sqrtRatio, u1)
	u2 := api.Select(api.Sub(1, sign1), v2, api.Neg(v2))
	u3 := api.Sub(u2, t)
	v3 := api.Mul(api.Mul(api.Mul(aMinusD, sqrtRatio), u3), x)
	return api.Select(api.Sub(1, sign2), v3, api.Neg(v3))
}

// encodeToCurveCore mirrors encodeToCurveWithWitness but injects the canonical
// sign bit instead of computing it via CanonicalFqBits253.
func encodeToCurveCore(api frontend.API, r0, wasSquare, invSqrt, isNegative frontend.Variable) gnarkte.Point {
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
