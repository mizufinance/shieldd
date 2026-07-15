package compliance

import (
	"math/big"
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	curves "github.com/consensys/gnark-crypto/ecc/twistededwards"
	"github.com/consensys/gnark/constraint/solver"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decaf377 "github.com/mizufinance/decaf377-go"
)

const (
	scalarMulProbeCurrent = iota
	scalarMulProbeWindow2
	scalarMulProbeFakeGLV
)

// ScalarMulWindow2LEBitsProbe is a test-only copy of gnark's generic two-bit
// twisted-Edwards ladder, adapted to an explicit little-endian bit slice.
func ScalarMulWindow2LEBitsProbe(
	api frontend.API,
	curve gnarkte.Curve,
	base gnarkte.Point,
	bits []frontend.Variable,
) gnarkte.Point {
	if len(bits) == 0 {
		return gnarkte.Point{X: 0, Y: 1}
	}
	if len(bits) == 1 {
		return gnarkte.Point{
			X: api.Select(bits[0], base.X, 0),
			Y: api.Select(bits[0], base.Y, 1),
		}
	}

	identity := gnarkte.Point{X: 0, Y: 1}
	double := curve.Double(base)
	triple := curve.Add(double, base)

	high := len(bits) - 1
	result := gnarkte.Point{
		X: api.Lookup2(bits[high], bits[high-1], identity.X, double.X, base.X, triple.X),
		Y: api.Lookup2(bits[high], bits[high-1], identity.Y, double.Y, base.Y, triple.Y),
	}

	for i := high - 2; i >= 1; i -= 2 {
		result = curve.Double(curve.Double(result))
		window := gnarkte.Point{
			X: api.Lookup2(bits[i], bits[i-1], identity.X, double.X, base.X, triple.X),
			Y: api.Lookup2(bits[i], bits[i-1], identity.Y, double.Y, base.Y, triple.Y),
		}
		result = curve.Add(result, window)
	}

	if high%2 == 0 {
		result = curve.Double(result)
		withLowBit := curve.Add(result, base)
		result = gnarkte.Point{
			X: api.Select(bits[0], withLowBit.X, result.X),
			Y: api.Select(bits[0], withLowBit.Y, result.Y),
		}
	}

	return result
}

type scalarMulProbeCircuit struct {
	BaseX  frontend.Variable `gnark:",public"`
	BaseY  frontend.Variable `gnark:",public"`
	Scalar frontend.Variable `gnark:",public"`
	OutX   frontend.Variable `gnark:",public"`
	OutY   frontend.Variable `gnark:",public"`

	NBits     int
	Algorithm int
	FixedBase bool
}

func (c *scalarMulProbeCircuit) Define(api frontend.API) error {
	curve, err := gnarkte.NewEdCurve(api, curves.BLS12_377)
	if err != nil {
		return err
	}
	base := gnarkte.Point{X: c.BaseX, Y: c.BaseY}
	if c.FixedBase {
		base, err = decafGeneratorPoint()
		if err != nil {
			return err
		}
	}

	var out gnarkte.Point
	switch c.Algorithm {
	case scalarMulProbeCurrent:
		out = ScalarMulLE(api, curve, base, c.Scalar, c.NBits)
	case scalarMulProbeWindow2:
		out = ScalarMulWindow2LEBitsProbe(api, curve, base, api.ToBinary(c.Scalar, c.NBits))
	case scalarMulProbeFakeGLV:
		// Keep the current helper's exact integer range semantics before calling
		// gnark's hint-based modular scalar multiplication.
		api.ToBinary(c.Scalar, c.NBits)
		out = curve.ScalarMul(base, c.Scalar)
	default:
		panic("unknown scalar-multiplication probe algorithm")
	}

	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	return nil
}

func compileScalarMulProbe(t *testing.T, nBits, algorithm int, fixedBase bool) int {
	t.Helper()
	ccs, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		&scalarMulProbeCircuit{NBits: nBits, Algorithm: algorithm, FixedBase: fixedBase},
	)
	if err != nil {
		t.Fatalf("compile nBits=%d algorithm=%d fixed=%t: %v", nBits, algorithm, fixedBase, err)
	}
	return ccs.GetNbConstraints()
}

func TestScalarMulWindow2ConstraintProbe(t *testing.T) {
	for _, nBits := range []int{128, 251} {
		for _, fixedBase := range []bool{false, true} {
			current := compileScalarMulProbe(t, nBits, scalarMulProbeCurrent, fixedBase)
			window2 := compileScalarMulProbe(t, nBits, scalarMulProbeWindow2, fixedBase)
			fakeGLV := compileScalarMulProbe(t, nBits, scalarMulProbeFakeGLV, fixedBase)
			t.Logf(
				"nBits=%d fixed=%t current=%d window2=%d (save %d) fakeGLV+range=%d (save %d)",
				nBits, fixedBase, current, window2, current-window2, fakeGLV, current-fakeGLV,
			)
			if !fixedBase && window2 >= current {
				t.Fatalf("two-bit window did not improve nBits=%d fixed=%t", nBits, fixedBase)
			}
		}
	}
}

func TestScalarMulWindow2WitnessParity(t *testing.T) {
	gen, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	for _, nBits := range []int{128, 251} {
		max := new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), uint(nBits)), big.NewInt(1))
		scalars := []*big.Int{big.NewInt(0), big.NewInt(1), max}
		if nBits == 251 {
			scalars = append(scalars, new(big.Int).Sub(decaf377.ScalarOrder(), big.NewInt(1)))
		}
		for _, fixedBase := range []bool{false, true} {
			for _, scalar := range scalars {
				expected, err := decaf377.ScalarMul(gen, scalar)
				if err != nil {
					t.Fatal(err)
				}
				blank := &scalarMulProbeCircuit{
					NBits: nBits, Algorithm: scalarMulProbeWindow2, FixedBase: fixedBase,
				}
				assignment := &scalarMulProbeCircuit{
					BaseX: gen.X, BaseY: gen.Y, Scalar: scalar, OutX: expected.X, OutY: expected.Y,
					NBits: nBits, Algorithm: scalarMulProbeWindow2, FixedBase: fixedBase,
				}
				if err := test.IsSolved(blank, assignment, ecc.BLS12_377.ScalarField()); err != nil {
					t.Fatalf("nBits=%d fixed=%t scalar=%s: %v", nBits, fixedBase, scalar, err)
				}
			}
		}
	}
}

func registeredHintID(t *testing.T, suffix string) solver.HintID {
	t.Helper()
	for _, hint := range solver.GetRegisteredHints() {
		if strings.HasSuffix(solver.GetHintName(hint), suffix) {
			return solver.GetHintID(hint)
		}
	}
	t.Fatalf("registered hint with suffix %q not found", suffix)
	return 0
}

func TestScalarMulFakeGLVProbeIsUnderconstrained(t *testing.T) {
	gen, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	field := ecc.BLS12_377.ScalarField()
	ccs, err := frontend.Compile(
		field,
		r1cs.NewBuilder,
		&scalarMulProbeCircuit{NBits: 251, Algorithm: scalarMulProbeFakeGLV},
	)
	if err != nil {
		t.Fatal(err)
	}

	// Claim [2]G = G. Returning all-zero fake-GLV decomposition values makes
	// its checked relation and verification ladder vacuous, while the second
	// malicious hint chooses the claimed output point.
	assignment := &scalarMulProbeCircuit{
		BaseX: gen.X, BaseY: gen.Y, Scalar: 2, OutX: gen.X, OutY: gen.Y,
		NBits: 251, Algorithm: scalarMulProbeFakeGLV,
	}
	witness, err := frontend.NewWitness(assignment, field)
	if err != nil {
		t.Fatal(err)
	}
	zeroDecomposition := func(_ *big.Int, _ []*big.Int, outputs []*big.Int) error {
		for _, output := range outputs {
			output.SetUint64(0)
		}
		return nil
	}
	wrongPoint := func(_ *big.Int, _ []*big.Int, outputs []*big.Int) error {
		outputs[0].Set(gen.X)
		outputs[1].Set(gen.Y)
		return nil
	}
	if err := ccs.IsSolved(
		witness,
		solver.OverrideHint(registeredHintID(t, ".halfGCD"), zeroDecomposition),
		solver.OverrideHint(registeredHintID(t, ".scalarMulHint"), wrongPoint),
	); err != nil {
		t.Fatalf("expected malicious hint witness to satisfy fake GLV constraints: %v", err)
	}
}
