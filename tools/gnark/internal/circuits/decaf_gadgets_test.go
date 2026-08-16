package circuits

import (
	"crypto/rand"
	"math/big"
	"testing"

	decaf377 "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"

	"github.com/consensys/gnark-crypto/ecc"
	ecctw "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

// libraryCompressCircuit drives the shipped hint-based CompressToField.
type libraryCompressCircuit struct {
	X   frontend.Variable `gnark:",public"`
	Y   frontend.Variable `gnark:",public"`
	Out frontend.Variable
}

func (c *libraryCompressCircuit) Define(api frontend.API) error {
	out, err := decafgnark.CompressToField(api, gnarkte.Point{X: c.X, Y: c.Y})
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// sqrtRatioZetaWitness reproduces the library hint natively: given den, return
// (wasSquare, v) with v^2 = 1/den, v^2 = zeta/den, or v = 0 when den = 0.
func sqrtRatioZetaWitness(den *big.Int) (wasSquare bool, v *big.Int) {
	q := decaf377.FieldModulus()
	den = new(big.Int).Mod(den, q)
	if den.Sign() == 0 {
		return false, big.NewInt(0)
	}
	denInv := new(big.Int).ModInverse(den, q)
	v = new(big.Int).ModSqrt(denInv, q)
	if v != nil {
		return true, v
	}
	target := new(big.Int).Mul(decaf377.CurveZeta(), denInv)
	target.Mod(target, q)
	v = new(big.Int).ModSqrt(target, q)
	if v == nil {
		panic("neither 1/den nor zeta/den is a square")
	}
	return false, v
}

func compressDen(x, y *big.Int) *big.Int {
	q := decaf377.FieldModulus()
	t := new(big.Int).Mul(x, y)
	u1 := new(big.Int).Mul(new(big.Int).Add(x, t), new(big.Int).Sub(x, t))
	den := new(big.Int).Mul(u1, decaf377.CurveAMinusD())
	den.Mul(den, x).Mul(den, x)
	return den.Mod(den, q)
}

func encodeSqrtInput(r0 *big.Int) *big.Int {
	q := decaf377.FieldModulus()
	r := new(big.Int).Mul(r0, r0)
	r.Mod(r, q)
	r.Mul(r, decaf377.CurveZeta())
	r.Mod(r, q)

	dMinusA := new(big.Int).Sub(decaf377.CurveD(), decaf377.CurveA())
	dMinusA.Mod(dMinusA, q)
	first := new(big.Int).Mul(decaf377.CurveD(), r)
	first.Sub(first, dMinusA)
	first.Mod(first, q)
	second := new(big.Int).Mul(dMinusA, r)
	second.Sub(second, decaf377.CurveD())
	second.Mod(second, q)
	den := new(big.Int).Mul(first, second)
	den.Mod(den, q)

	aMinusTwoD := new(big.Int).Mul(big.NewInt(2), decaf377.CurveD())
	aMinusTwoD.Sub(decaf377.CurveA(), aMinusTwoD)
	aMinusTwoD.Mod(aMinusTwoD, q)
	num := new(big.Int).Add(r, big.NewInt(1))
	num.Mul(num, aMinusTwoD)
	num.Mod(num, q)

	x := new(big.Int).Mul(num, den)
	return x.Mod(x, q)
}

// ladderParityCircuit asserts the shieldd constant ladder agrees with the
// decaf377-go IsLessThanConstant comparator for Value against Bound.
type ladderParityCircuit struct {
	Bound *big.Int
	Value frontend.Variable `gnark:",public"`
}

func (c *ladderParityCircuit) Define(api frontend.API) error {
	bits := api.ToBinary(c.Value, 253)
	ours := compliance.LessThanConstant253(api, bits, c.Bound)
	theirs, err := decafgnark.IsLessThanConstant(api, c.Value, c.Bound)
	if err != nil {
		return err
	}
	api.AssertIsEqual(ours, theirs)
	return nil
}

func TestLessThanConstant253Parity(t *testing.T) {
	q := decaf377.FieldModulus()
	r := decaf377.ScalarOrder()
	bounds := []*big.Int{r, new(big.Int).Sub(q, new(big.Int).Mul(big.NewInt(4), r))}
	for _, bound := range bounds {
		values := []*big.Int{
			big.NewInt(0),
			big.NewInt(1),
			new(big.Int).Sub(bound, big.NewInt(1)),
			new(big.Int).Set(bound),
			new(big.Int).Add(bound, big.NewInt(1)),
			new(big.Int).Sub(q, big.NewInt(1)),
		}
		for i := 0; i < 8; i++ {
			v, err := rand.Int(rand.Reader, q)
			if err != nil {
				t.Fatal(err)
			}
			values = append(values, v)
		}
		for _, v := range values {
			if err := test.IsSolved(
				&ladderParityCircuit{Bound: bound},
				&ladderParityCircuit{Bound: bound, Value: v},
				ecc.BLS12_377.ScalarField(),
			); err != nil {
				t.Fatalf("ladder disagrees with decaf377-go at bound=%v value=%v: %v", bound, v, err)
			}
		}
	}
}

func TestIvkModRGadgetDecomposition(t *testing.T) {
	q := decaf377.FieldModulus()
	r := decaf377.ScalarOrder()
	for i := 0; i < 8; i++ {
		ivkModQ, err := rand.Int(rand.Reader, q)
		if err != nil {
			t.Fatal(err)
		}
		quotient := new(big.Int).Div(ivkModQ, r)
		reduced := new(big.Int).Mod(ivkModQ, r)
		if err := test.IsSolved(
			&IvkModRGadget{},
			&IvkModRGadget{IvkModQ: ivkModQ, QuotientA: quotient, IvkReduced: reduced},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("valid decomposition rejected: %v", err)
		}
		// ivkReduced >= r must be rejected even if the value equation holds.
		badQuotient := new(big.Int).Sub(quotient, big.NewInt(1))
		badReduced := new(big.Int).Add(reduced, r)
		if badQuotient.Sign() >= 0 {
			if err := test.IsSolved(
				&IvkModRGadget{},
				&IvkModRGadget{IvkModQ: ivkModQ, QuotientA: badQuotient, IvkReduced: badReduced},
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatal("non-reduced decomposition accepted")
			}
		}
	}
}

func TestCompressToFieldGadgetParity(t *testing.T) {
	q := decaf377.FieldModulus()
	for i := 0; i < 8; i++ {
		r0, err := rand.Int(rand.Reader, q)
		if err != nil {
			t.Fatal(err)
		}
		point, err := decafgnark.EncodeToCurveNative(r0)
		if err != nil {
			t.Fatal(err)
		}
		x := point.X.(*big.Int)
		y := point.Y.(*big.Int)
		expected, err := decafgnark.CompressToFieldNative(point)
		if err != nil {
			t.Fatal(err)
		}

		if err := test.IsSolved(
			&libraryCompressCircuit{},
			&libraryCompressCircuit{X: x, Y: y, Out: expected},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("library circuit unsatisfied: %v", err)
		}

		wasSquare, v := sqrtRatioZetaWitness(compressDen(x, y))
		ws := big.NewInt(0)
		if wasSquare {
			ws = big.NewInt(1)
		}
		if err := test.IsSolved(
			&CompressToFieldGadget{},
			&CompressToFieldGadget{X: x, Y: y, WasSquare: ws, SqrtRatio: v, Out: expected},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("mirror gadget unsatisfied: %v", err)
		}

		// Sign invariance: the opposite sqrt witness must yield the same output.
		negV := new(big.Int).Sub(q, v)
		negV.Mod(negV, q)
		if err := test.IsSolved(
			&CompressToFieldGadget{},
			&CompressToFieldGadget{X: x, Y: y, WasSquare: ws, SqrtRatio: negV, Out: expected},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("mirror gadget rejects negated sqrt witness: %v", err)
		}

		// Soundness probe: a wrong output must not satisfy the mirror.
		wrong := new(big.Int).Add(expected, big.NewInt(1))
		wrong.Mod(wrong, q)
		if err := test.IsSolved(
			&CompressToFieldGadget{},
			&CompressToFieldGadget{X: x, Y: y, WasSquare: ws, SqrtRatio: v, Out: wrong},
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatal("mirror gadget accepted a wrong output")
		}
	}
}

func TestEncodeToCurveGadgetParity(t *testing.T) {
	q := decaf377.FieldModulus()
	for i := 0; i < 8; i++ {
		r0, err := rand.Int(rand.Reader, q)
		if err != nil {
			t.Fatal(err)
		}
		expected, err := decafgnark.EncodeToCurveNative(r0)
		if err != nil {
			t.Fatal(err)
		}
		wasSquare, invSqrt := sqrtRatioZetaWitness(encodeSqrtInput(r0))
		ws := big.NewInt(0)
		if wasSquare {
			ws = big.NewInt(1)
		}
		roots := []*big.Int{invSqrt, new(big.Int).Mod(new(big.Int).Neg(invSqrt), q)}
		var acceptedRoot *big.Int
		for _, root := range roots {
			if err := test.IsSolved(
				&EncodeToCurveGadget{},
				&EncodeToCurveGadget{
					Input:     r0,
					WasSquare: ws,
					InvSqrt:   root,
					OutX:      expected.X,
					OutY:      expected.Y,
				},
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				acceptedRoot = root
				break
			}
		}
		if acceptedRoot == nil {
			t.Fatal("encode mirror rejected native output for both sqrt signs")
		}

		wrongX := new(big.Int).Add(expected.X.(*big.Int), big.NewInt(1))
		wrongX.Mod(wrongX, q)
		if err := test.IsSolved(
			&EncodeToCurveGadget{},
			&EncodeToCurveGadget{
				Input:     r0,
				WasSquare: ws,
				InvSqrt:   acceptedRoot,
				OutX:      wrongX,
				OutY:      expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatal("encode mirror accepted a wrong x-coordinate")
		}
	}
}

// scalarMulParityCircuit asserts the hint-free ladder mirror agrees with the
// shipped compliance.ScalarMulLE inside one constraint system.
type scalarMulParityCircuit struct {
	BaseX  frontend.Variable `gnark:",public"`
	BaseY  frontend.Variable `gnark:",public"`
	Scalar frontend.Variable `gnark:",public"`
	NBits  int
}

func (c *scalarMulParityCircuit) Define(api frontend.API) error {
	curve, err := gnarkte.NewEdCurve(api, ecctw.BLS12_377)
	if err != nil {
		return err
	}
	base := gnarkte.Point{X: c.BaseX, Y: c.BaseY}
	shipped := compliance.ScalarMulLE(api, curve, base, c.Scalar, c.NBits)
	mirror := scalarMulLEMirror(api, base, c.Scalar, c.NBits)
	api.AssertIsEqual(shipped.X, mirror.X)
	api.AssertIsEqual(shipped.Y, mirror.Y)
	return nil
}

func TestScalarMulLEGadgetParity(t *testing.T) {
	gen, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	for _, nBits := range []int{251, 128} {
		bound := new(big.Int).Lsh(big.NewInt(1), uint(nBits))
		if nBits == 251 {
			bound = decaf377.ScalarOrder()
		}
		for i := 0; i < 4; i++ {
			scalar, err := rand.Int(rand.Reader, bound)
			if err != nil {
				t.Fatal(err)
			}
			expected, err := decaf377.ScalarMul(gen, scalar)
			if err != nil {
				t.Fatal(err)
			}

			if err := test.IsSolved(
				&scalarMulParityCircuit{NBits: nBits},
				&scalarMulParityCircuit{BaseX: gen.X, BaseY: gen.Y, Scalar: scalar, NBits: nBits},
				ecc.BLS12_377.ScalarField(),
			); err != nil {
				t.Fatalf("nBits=%d: mirror disagrees with shipped ladder: %v", nBits, err)
			}

			assign := func(outX, outY *big.Int) frontend.Circuit {
				if nBits == 251 {
					return &ScalarMulLE251Gadget{BaseX: gen.X, BaseY: gen.Y, Scalar: scalar, OutX: outX, OutY: outY}
				}
				return &ScalarMulLE128Gadget{BaseX: gen.X, BaseY: gen.Y, Scalar: scalar, OutX: outX, OutY: outY}
			}
			empty := func() frontend.Circuit {
				if nBits == 251 {
					return &ScalarMulLE251Gadget{}
				}
				return &ScalarMulLE128Gadget{}
			}

			if err := test.IsSolved(
				empty(), assign(expected.X, expected.Y),
				ecc.BLS12_377.ScalarField(),
			); err != nil {
				t.Fatalf("nBits=%d: mirror gadget unsatisfied on native scalar mul: %v", nBits, err)
			}

			wrong := new(big.Int).Add(expected.X, big.NewInt(1))
			wrong.Mod(wrong, decaf377.FieldModulus())
			if err := test.IsSolved(
				empty(), assign(wrong, expected.Y),
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf("nBits=%d: mirror gadget accepted a wrong output", nBits)
			}
		}
	}
}

type rvkParityCircuit struct {
	AkX        frontend.Variable `gnark:",public"`
	AkY        frontend.Variable `gnark:",public"`
	Randomizer frontend.Variable `gnark:",public"`
}

func (c *rvkParityCircuit) Define(api frontend.API) error {
	shipped, err := RandomizedVerificationKey(api, gnarkte.Point{X: c.AkX, Y: c.AkY}, c.Randomizer)
	if err != nil {
		return err
	}
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	generator := gnarkte.Point{
		X: primitives.MustBigInt(vectors.Decaf377CompanionCurve.GeneratorX),
		Y: primitives.MustBigInt(vectors.Decaf377CompanionCurve.GeneratorY),
	}
	randomizedPart := scalarMulLEMirror(api, generator, c.Randomizer, 251)
	mirror := edwardsAddMirror(api, gnarkte.Point{X: c.AkX, Y: c.AkY}, randomizedPart)
	api.AssertIsEqual(shipped.X, mirror.X)
	api.AssertIsEqual(shipped.Y, mirror.Y)
	return nil
}

func TestDecafRvkGadgetParity(t *testing.T) {
	gen, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	for i := 0; i < 4; i++ {
		akScalar, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
		if err != nil {
			t.Fatal(err)
		}
		randomizer, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
		if err != nil {
			t.Fatal(err)
		}
		ak, err := decaf377.ScalarMul(gen, akScalar)
		if err != nil {
			t.Fatal(err)
		}
		randomizedPart, err := decaf377.ScalarMul(gen, randomizer)
		if err != nil {
			t.Fatal(err)
		}
		expected, err := decaf377.Add(ak, randomizedPart)
		if err != nil {
			t.Fatal(err)
		}
		if err := test.IsSolved(
			&rvkParityCircuit{},
			&rvkParityCircuit{AkX: ak.X, AkY: ak.Y, Randomizer: randomizer},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("rvk mirror disagrees with production helper: %v", err)
		}
		if err := test.IsSolved(
			&DecafRvkGadget{},
			&DecafRvkGadget{AkX: ak.X, AkY: ak.Y, Randomizer: randomizer, OutX: expected.X, OutY: expected.Y},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("rvk gadget rejected native output: %v", err)
		}
		wrong := new(big.Int).Add(expected.X, big.NewInt(1))
		wrong.Mod(wrong, decaf377.FieldModulus())
		if err := test.IsSolved(
			&DecafRvkGadget{},
			&DecafRvkGadget{AkX: ak.X, AkY: ak.Y, Randomizer: randomizer, OutX: wrong, OutY: expected.Y},
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatal("rvk gadget accepted a wrong output")
		}
	}
}

type dtkParityCircuit struct {
	Nk          frontend.Variable `gnark:",public"`
	AkX         frontend.Variable `gnark:",public"`
	AkY         frontend.Variable `gnark:",public"`
	DivGenX     frontend.Variable `gnark:",public"`
	DivGenY     frontend.Variable `gnark:",public"`
	WasSquare   frontend.Variable
	SqrtRatio   frontend.Variable
	IvkReduced  frontend.Variable
	IvkQuotient frontend.Variable
}

func (c *dtkParityCircuit) Define(api frontend.API) error {
	ak := gnarkte.Point{X: c.AkX, Y: c.AkY}
	divGen := gnarkte.Point{X: c.DivGenX, Y: c.DivGenY}
	shipped, err := DiversifiedTransmissionKey(api, c.Nk, ak, divGen, c.IvkReduced, c.IvkQuotient)
	if err != nil {
		return err
	}
	akCompressed := compressToFieldWithWitness(api, c.AkX, c.AkY, c.WasSquare, c.SqrtRatio)
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	ivkModQ, err := primitives.Poseidon377Hash2(
		api,
		primitives.MustBigInt(vectors.Poseidon377.IVKDomain),
		[2]frontend.Variable{c.Nk, akCompressed},
	)
	if err != nil {
		return err
	}
	if _, err := IVKModRDecomposition(api, ivkModQ, c.IvkQuotient, c.IvkReduced); err != nil {
		return err
	}
	mirror := scalarMulLEMirror(api, divGen, c.IvkReduced, 251)
	api.AssertIsEqual(shipped.X, mirror.X)
	api.AssertIsEqual(shipped.Y, mirror.Y)
	return nil
}

func TestDecafDtkGadgetParity(t *testing.T) {
	gen, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	for i := 0; i < 4; i++ {
		akScalar, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
		if err != nil {
			t.Fatal(err)
		}
		nk, err := rand.Int(rand.Reader, decaf377.FieldModulus())
		if err != nil {
			t.Fatal(err)
		}
		ak, err := decaf377.ScalarMul(gen, akScalar)
		if err != nil {
			t.Fatal(err)
		}
		akPoint := gnarkte.Point{X: ak.X, Y: ak.Y}
		akCompressed, err := decafgnark.CompressToFieldNative(akPoint)
		if err != nil {
			t.Fatal(err)
		}
		ivkModQ, err := primitives.Poseidon377Hash2Native(
			primitives.MustBigInt(vectors.Poseidon377.IVKDomain),
			[2]*big.Int{nk, akCompressed},
		)
		if err != nil {
			t.Fatal(err)
		}
		ivkQuotient := new(big.Int).Div(ivkModQ, decaf377.ScalarOrder())
		ivkReduced := new(big.Int).Mod(ivkModQ, decaf377.ScalarOrder())
		expected, err := decaf377.ScalarMul(gen, ivkReduced)
		if err != nil {
			t.Fatal(err)
		}
		wasSquare, sqrtRatio := sqrtRatioZetaWitness(compressDen(ak.X, ak.Y))
		ws := big.NewInt(0)
		if wasSquare {
			ws = big.NewInt(1)
		}
		if err := test.IsSolved(
			&dtkParityCircuit{},
			&dtkParityCircuit{
				Nk: nk, AkX: ak.X, AkY: ak.Y, DivGenX: gen.X, DivGenY: gen.Y,
				WasSquare: ws, SqrtRatio: sqrtRatio, IvkReduced: ivkReduced, IvkQuotient: ivkQuotient,
			},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("dtk mirror disagrees with production helper: %v", err)
		}
		if err := test.IsSolved(
			&DecafDtkGadget{},
			&DecafDtkGadget{
				Nk: nk, AkX: ak.X, AkY: ak.Y, DivGenX: gen.X, DivGenY: gen.Y,
				WasSquare: ws, SqrtRatio: sqrtRatio, IvkReduced: ivkReduced, IvkQuotient: ivkQuotient,
				OutX: expected.X, OutY: expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("dtk gadget rejected native output: %v", err)
		}
		wrong := new(big.Int).Add(expected.X, big.NewInt(1))
		wrong.Mod(wrong, decaf377.FieldModulus())
		if err := test.IsSolved(
			&DecafDtkGadget{},
			&DecafDtkGadget{
				Nk: nk, AkX: ak.X, AkY: ak.Y, DivGenX: gen.X, DivGenY: gen.Y,
				WasSquare: ws, SqrtRatio: sqrtRatio, IvkReduced: ivkReduced, IvkQuotient: ivkQuotient,
				OutX: wrong, OutY: expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatal("dtk gadget accepted a wrong output")
		}
	}
}

type netBalanceParityCircuit struct {
	Input0Amount    frontend.Variable `gnark:",public"`
	Input1Amount    frontend.Variable `gnark:",public"`
	OutputAmount    frontend.Variable `gnark:",public"`
	AssetID         frontend.Variable `gnark:",public"`
	BalanceBlinding frontend.Variable `gnark:",public"`
	EncodeWasSquare frontend.Variable
	EncodeInvSqrt   frontend.Variable
}

func (c *netBalanceParityCircuit) Define(api frontend.API) error {
	production, err := computeTransferNetBalanceCommitment(
		api,
		[]frontend.Variable{c.Input0Amount, c.Input1Amount},
		[]frontend.Variable{c.OutputAmount, 0},
		c.AssetID,
		c.BalanceBlinding,
	)
	if err != nil {
		return err
	}
	mirror, err := netBalanceCommitmentMirrorWithWitness(
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
	api.AssertIsEqual(production.X, mirror.X)
	api.AssertIsEqual(production.Y, mirror.Y)
	return nil
}

func decafNegNative(p gnarkte.Point) gnarkte.Point {
	q := decaf377.FieldModulus()
	x := new(big.Int).Neg(p.X.(*big.Int))
	x.Mod(x, q)
	return gnarkte.Point{X: x, Y: new(big.Int).Set(p.Y.(*big.Int))}
}

func netBalanceNativeForTest(input0, input1, output, assetID, blinding *big.Int) (gnarkte.Point, *big.Int, error) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	assetHash, err := primitives.Poseidon377Hash1Native(
		primitives.MustBigInt(vectors.Poseidon377.ValueGeneratorDomain),
		assetID,
	)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	valueGenerator, err := decafgnark.EncodeToCurveNative(assetHash)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	valueBlindingGenerator := gnarkte.Point{
		X: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}
	sum, err := decafgnark.ScalarMulNative(valueGenerator, big.NewInt(0), 128)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	input0Point, err := decafgnark.ScalarMulNative(valueGenerator, input0, 128)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	sum, err = decafgnark.PointAddNative(sum, input0Point)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	input1Point, err := decafgnark.ScalarMulNative(valueGenerator, input1, 128)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	sum, err = decafgnark.PointAddNative(sum, input1Point)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	outputPoint, err := decafgnark.ScalarMulNative(valueGenerator, output, 128)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	sum, err = decafgnark.PointAddNative(sum, decafNegNative(outputPoint))
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	blindingPoint, err := decafgnark.ScalarMulNative(valueBlindingGenerator, blinding, 251)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	sum, err = decafgnark.PointAddNative(sum, blindingPoint)
	if err != nil {
		return gnarkte.Point{}, nil, err
	}
	return sum, assetHash, nil
}

func TestNetBalanceCommitmentGadgetParity(t *testing.T) {
	q := decaf377.FieldModulus()
	for i := 0; i < 2; i++ {
		input0, err := rand.Int(rand.Reader, new(big.Int).Lsh(big.NewInt(1), 64))
		if err != nil {
			t.Fatal(err)
		}
		input1, err := rand.Int(rand.Reader, new(big.Int).Lsh(big.NewInt(1), 64))
		if err != nil {
			t.Fatal(err)
		}
		output, err := rand.Int(rand.Reader, new(big.Int).Lsh(big.NewInt(1), 64))
		if err != nil {
			t.Fatal(err)
		}
		assetID, err := rand.Int(rand.Reader, q)
		if err != nil {
			t.Fatal(err)
		}
		blinding, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
		if err != nil {
			t.Fatal(err)
		}
		expected, assetHash, err := netBalanceNativeForTest(input0, input1, output, assetID, blinding)
		if err != nil {
			t.Fatal(err)
		}
		wasSquare, invSqrt := sqrtRatioZetaWitness(encodeSqrtInput(assetHash))
		ws := big.NewInt(0)
		if wasSquare {
			ws = big.NewInt(1)
		}
		if err := test.IsSolved(
			&netBalanceParityCircuit{},
			&netBalanceParityCircuit{
				Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
				AssetID: assetID, BalanceBlinding: blinding,
				EncodeWasSquare: ws, EncodeInvSqrt: invSqrt,
			},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("net-balance mirror disagrees with production helper: %v", err)
		}
		if err := test.IsSolved(
			&NetBalanceCommitmentGadget{},
			&NetBalanceCommitmentGadget{
				Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
				AssetID: assetID, BalanceBlinding: blinding,
				EncodeWasSquare: ws, EncodeInvSqrt: invSqrt,
				OutX: expected.X, OutY: expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("net-balance gadget rejected native output: %v", err)
		}
		wrongX := new(big.Int).Add(expected.X.(*big.Int), big.NewInt(1))
		wrongX.Mod(wrongX, q)
		if err := test.IsSolved(
			&NetBalanceCommitmentGadget{},
			&NetBalanceCommitmentGadget{
				Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
				AssetID: assetID, BalanceBlinding: blinding,
				EncodeWasSquare: ws, EncodeInvSqrt: invSqrt,
				OutX: wrongX, OutY: expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatal("net-balance gadget accepted a wrong output")
		}
	}
}

type conservationNetBalanceGadgetParityCircuit struct {
	Input0Amount    frontend.Variable `gnark:",public"`
	Input1Amount    frontend.Variable `gnark:",public"`
	OutputAmount    frontend.Variable `gnark:",public"`
	BalanceBlinding frontend.Variable `gnark:",public"`
}

func (c *conservationNetBalanceGadgetParityCircuit) Define(api frontend.API) error {
	production, err := computeConservationNetBalanceCommitment(
		api,
		[]frontend.Variable{c.Input0Amount, c.Input1Amount},
		[]frontend.Variable{c.OutputAmount},
		c.BalanceBlinding,
	)
	if err != nil {
		return err
	}
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return err
	}
	blindingGen := gnarkte.Point{
		X: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}
	mirror := scalarMulLEMirror(api, blindingGen, c.BalanceBlinding, 251)
	api.AssertIsEqual(production.X, mirror.X)
	api.AssertIsEqual(production.Y, mirror.Y)
	return nil
}

func TestConservationNetBalanceCommitmentGadgetParity(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	blindingGen := gnarkte.Point{
		X: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}
	q := decaf377.FieldModulus()
	for i := 0; i < 2; i++ {
		input0, err := rand.Int(rand.Reader, new(big.Int).Lsh(big.NewInt(1), 64))
		if err != nil {
			t.Fatal(err)
		}
		input1, err := rand.Int(rand.Reader, new(big.Int).Lsh(big.NewInt(1), 64))
		if err != nil {
			t.Fatal(err)
		}
		output := new(big.Int).Add(input0, input1)
		blinding, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
		if err != nil {
			t.Fatal(err)
		}
		expected, err := decafgnark.ScalarMulNative(blindingGen, blinding, 251)
		if err != nil {
			t.Fatal(err)
		}
		if err := test.IsSolved(
			&conservationNetBalanceGadgetParityCircuit{},
			&conservationNetBalanceGadgetParityCircuit{
				Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
				BalanceBlinding: blinding,
			},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("conservation net-balance mirror disagrees with production helper: %v", err)
		}
		if err := test.IsSolved(
			&ConservationNetBalanceCommitmentGadget{},
			&ConservationNetBalanceCommitmentGadget{
				Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
				BalanceBlinding: blinding,
				OutX:            expected.X, OutY: expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err != nil {
			t.Fatalf("conservation net-balance gadget rejected native output: %v", err)
		}
		wrongX := new(big.Int).Add(expected.X.(*big.Int), big.NewInt(1))
		wrongX.Mod(wrongX, q)
		if err := test.IsSolved(
			&ConservationNetBalanceCommitmentGadget{},
			&ConservationNetBalanceCommitmentGadget{
				Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
				BalanceBlinding: blinding,
				OutX:            wrongX, OutY: expected.Y,
			},
			ecc.BLS12_377.ScalarField(),
		); err == nil {
			t.Fatal("conservation net-balance gadget accepted a wrong output")
		}
	}
}

type conservationNetBalance2GadgetParityCircuit struct {
	Input0Amount    frontend.Variable `gnark:",public"`
	Input1Amount    frontend.Variable `gnark:",public"`
	Output0Amount   frontend.Variable `gnark:",public"`
	Output1Amount   frontend.Variable `gnark:",public"`
	BalanceBlinding frontend.Variable `gnark:",public"`
}

func (c *conservationNetBalance2GadgetParityCircuit) Define(api frontend.API) error {
	production, err := computeConservationNetBalanceCommitment(
		api,
		[]frontend.Variable{c.Input0Amount, c.Input1Amount},
		[]frontend.Variable{c.Output0Amount, c.Output1Amount},
		c.BalanceBlinding,
	)
	if err != nil {
		return err
	}
	mirror, err := conservationNetBalanceCommitment2Mirror(
		api,
		c.Input0Amount,
		c.Input1Amount,
		c.Output0Amount,
		c.Output1Amount,
		c.BalanceBlinding,
	)
	if err != nil {
		return err
	}
	api.AssertIsEqual(production.X, mirror.X)
	api.AssertIsEqual(production.Y, mirror.Y)
	return nil
}

func TestConservationNetBalanceCommitment2GadgetParity(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	blindingGen := gnarkte.Point{
		X: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorX),
		Y: primitives.MustBigInt(vectors.Decaf377CompanionCurve.ValueBlindingGeneratorY),
	}
	input0 := big.NewInt(700)
	input1 := big.NewInt(300)
	output0 := big.NewInt(400)
	output1 := big.NewInt(600)
	blinding, err := rand.Int(rand.Reader, decaf377.ScalarOrder())
	if err != nil {
		t.Fatal(err)
	}
	expected, err := decafgnark.ScalarMulNative(blindingGen, blinding, 251)
	if err != nil {
		t.Fatal(err)
	}
	parity := &conservationNetBalance2GadgetParityCircuit{
		Input0Amount: input0, Input1Amount: input1,
		Output0Amount: output0, Output1Amount: output1,
		BalanceBlinding: blinding,
	}
	if err := test.IsSolved(
		&conservationNetBalance2GadgetParityCircuit{},
		parity,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("2-in/2-out conservation mirror disagrees with production helper: %v", err)
	}

	assignment := &ConservationNetBalanceCommitment2Gadget{
		Input0Amount: input0, Input1Amount: input1,
		Output0Amount: output0, Output1Amount: output1,
		BalanceBlinding: blinding,
		OutX:            expected.X, OutY: expected.Y,
	}
	if err := test.IsSolved(
		&ConservationNetBalanceCommitment2Gadget{},
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("2-in/2-out conservation gadget rejected native output: %v", err)
	}

	unbalanced := *assignment
	unbalanced.Output1Amount = big.NewInt(599)
	if err := test.IsSolved(
		&ConservationNetBalanceCommitment2Gadget{},
		&unbalanced,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("2-in/2-out conservation gadget accepted unequal input/output sums")
	}

	wrongOutput := *assignment
	wrongX := new(big.Int).Add(expected.X.(*big.Int), big.NewInt(1))
	wrongX.Mod(wrongX, decaf377.FieldModulus())
	wrongOutput.OutX = wrongX
	if err := test.IsSolved(
		&ConservationNetBalanceCommitment2Gadget{},
		&wrongOutput,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("2-in/2-out conservation gadget accepted a wrong commitment output")
	}

	oversized := *assignment
	twoTo128 := new(big.Int).Lsh(big.NewInt(1), 128)
	oversized.Input0Amount = twoTo128
	oversized.Output0Amount = twoTo128
	if err := test.IsSolved(
		&ConservationNetBalanceCommitment2Gadget{},
		&oversized,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("2-in/2-out conservation gadget accepted an amount outside 128 bits")
	}
}
