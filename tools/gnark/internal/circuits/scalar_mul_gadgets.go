package circuits

// Extraction-scope mirror of compliance.ScalarMulLE. Each ladder rung is an
// extractor gadget (one shared Lean `def`, n calls): conditional add of the
// current point into the accumulator, then a doubling, using the same
// hint-free Edwards mirrors as the standalone add/double gadgets. Constraint
// parity with the shipped ladder is covered by TestScalarMulLEGadgetParity.

import (
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/reilabs/gnark-lean-extractor/v3/abstractor"
)

// scalarMulStep is one little-endian rung: acc' = select(bit, acc+cur, acc),
// cur' = double(cur). Returns [accX', accY', curX', curY'].
type scalarMulStep struct {
	Bit  frontend.Variable
	AccX frontend.Variable
	AccY frontend.Variable
	CurX frontend.Variable
	CurY frontend.Variable
}

func (g scalarMulStep) DefineGadget(api frontend.API) interface{} {
	sum := edwardsAddMirror(api,
		gnarkte.Point{X: g.AccX, Y: g.AccY},
		gnarkte.Point{X: g.CurX, Y: g.CurY})
	accX := api.Select(g.Bit, sum.X, g.AccX)
	accY := api.Select(g.Bit, sum.Y, g.AccY)
	dbl := edwardsDoubleMirror(api, gnarkte.Point{X: g.CurX, Y: g.CurY})
	return []frontend.Variable{accX, accY, dbl.X, dbl.Y}
}

func scalarMulLEMirror(api frontend.API, base gnarkte.Point, scalar frontend.Variable, nBits int) gnarkte.Point {
	bits := api.ToBinary(scalar, nBits)
	acc := gnarkte.Point{X: 0, Y: 1}
	cur := base
	for i := 0; i < nBits; i++ {
		state := abstractor.Call1(api, scalarMulStep{
			Bit:  bits[i],
			AccX: acc.X,
			AccY: acc.Y,
			CurX: cur.X,
			CurY: cur.Y,
		})
		acc = gnarkte.Point{X: state[0], Y: state[1]}
		cur = gnarkte.Point{X: state[2], Y: state[3]}
	}
	return acc
}

// ScalarMulStepGadget exposes one ladder rung as a standalone circuit so Picus
// can discharge ladder determinism compositionally: the full ladder is this rung
// folded nBits times over a boolean decomposition, so determinism of the rung
// (plus the already-`safe` bit decomposition) implies determinism of the ladder.
// Picus cannot check the unrolled ladder (per-signal SMT over hundreds of rungs
// does not scale); the rung is small and discharges in seconds.
type ScalarMulStepGadget struct {
	Bit     frontend.Variable `gnark:",public"`
	AccX    frontend.Variable `gnark:",public"`
	AccY    frontend.Variable `gnark:",public"`
	CurX    frontend.Variable `gnark:",public"`
	CurY    frontend.Variable `gnark:",public"`
	OutAccX frontend.Variable
	OutAccY frontend.Variable
	OutCurX frontend.Variable
	OutCurY frontend.Variable
}

func (c *ScalarMulStepGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.Bit)
	state := abstractor.Call1(api, scalarMulStep{
		Bit:  c.Bit,
		AccX: c.AccX,
		AccY: c.AccY,
		CurX: c.CurX,
		CurY: c.CurY,
	})
	api.AssertIsEqual(state[0], c.OutAccX)
	api.AssertIsEqual(state[1], c.OutAccY)
	api.AssertIsEqual(state[2], c.OutCurX)
	api.AssertIsEqual(state[3], c.OutCurY)
	return nil
}

// ScalarMulTwoStepGadget chains two consecutive ladder rungs so Picus exercises
// the *composition boundary* itself: the join wires (intermediate acc/cur output
// of rung i fed as input to rung i+1) and the per-rung bit selectors. A single
// `ScalarMulStepGadget` proves one rung deterministic in isolation; this probe
// confirms that wiring two rungs together introduces no free signal at the seam,
// which is the empirical anchor for the `safe-by-composition` lift of the full
// ladder (rung folded n times). Two rungs suffice: every interior seam in the
// ladder is the same join shape.
type ScalarMulTwoStepGadget struct {
	Bit0    frontend.Variable `gnark:",public"`
	Bit1    frontend.Variable `gnark:",public"`
	AccX    frontend.Variable `gnark:",public"`
	AccY    frontend.Variable `gnark:",public"`
	CurX    frontend.Variable `gnark:",public"`
	CurY    frontend.Variable `gnark:",public"`
	OutAccX frontend.Variable
	OutAccY frontend.Variable
	OutCurX frontend.Variable
	OutCurY frontend.Variable
}

func (c *ScalarMulTwoStepGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.Bit0)
	api.AssertIsBoolean(c.Bit1)
	s0 := abstractor.Call1(api, scalarMulStep{
		Bit:  c.Bit0,
		AccX: c.AccX,
		AccY: c.AccY,
		CurX: c.CurX,
		CurY: c.CurY,
	})
	s1 := abstractor.Call1(api, scalarMulStep{
		Bit:  c.Bit1,
		AccX: s0[0],
		AccY: s0[1],
		CurX: s0[2],
		CurY: s0[3],
	})
	api.AssertIsEqual(s1[0], c.OutAccX)
	api.AssertIsEqual(s1[1], c.OutAccY)
	api.AssertIsEqual(s1[2], c.OutCurX)
	api.AssertIsEqual(s1[3], c.OutCurY)
	return nil
}

type ScalarMulLE251Gadget struct {
	BaseX  frontend.Variable `gnark:",public"`
	BaseY  frontend.Variable `gnark:",public"`
	Scalar frontend.Variable `gnark:",public"`
	OutX   frontend.Variable
	OutY   frontend.Variable
}

func (c *ScalarMulLE251Gadget) Define(api frontend.API) error {
	assertDecafPointOnCurve(api, gnarkte.Point{X: c.BaseX, Y: c.BaseY})
	out := scalarMulLEMirror(api, gnarkte.Point{X: c.BaseX, Y: c.BaseY}, c.Scalar, 251)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	assertDecafPointOnCurve(api, gnarkte.Point{X: c.OutX, Y: c.OutY})
	return nil
}

type ScalarMulLE128Gadget struct {
	BaseX  frontend.Variable `gnark:",public"`
	BaseY  frontend.Variable `gnark:",public"`
	Scalar frontend.Variable `gnark:",public"`
	OutX   frontend.Variable
	OutY   frontend.Variable
}

func (c *ScalarMulLE128Gadget) Define(api frontend.API) error {
	assertDecafPointOnCurve(api, gnarkte.Point{X: c.BaseX, Y: c.BaseY})
	out := scalarMulLEMirror(api, gnarkte.Point{X: c.BaseX, Y: c.BaseY}, c.Scalar, 128)
	api.AssertIsEqual(out.X, c.OutX)
	api.AssertIsEqual(out.Y, c.OutY)
	assertDecafPointOnCurve(api, gnarkte.Point{X: c.OutX, Y: c.OutY})
	return nil
}
