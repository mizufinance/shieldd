package compliance

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
	"github.com/reilabs/gnark-lean-extractor/v3/abstractor"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

// Canonical field-element decomposition, native-ToBinary shape.
//
// CanonicalFqBits253 decomposes a field element into its 253 little-endian bits
// via gnark's api.ToBinary (extractor-native: emits Gates.to_binary, modelled in
// proven-zk as `recover_binary_zmod' bits = v ∧ is_vector_binary bits`) and then
// asserts the decomposition is *reduced* (packbv(bits) < p) with an explicit
// MSB-first lexicographic `<= p-1` comparator. The comparator is the Lean
// `LeLadder` shape (see RangeCheckLadder.lean): at each position the value bit
// must not exceed the bound bit, and equality defers to lower bits.
//
// The two tracks are independent provers of the shipped circuit: this gadget is
// the Lean-optimal shape (native ToBinary + ladder, no solver hint, no
// multi-arg-op shadowing). ACL2 re-proves whatever ships on its own path.
//
// Returns the 253 little-endian bit wires so a comparator can reuse them without
// re-decomposing (decompose-once).

// pMinusOneBits returns the little-endian bits of c = p-1 over n = field bit length.
func pMinusOneBits() []uint {
	c := new(big.Int).Sub(primitives.ScalarField(), big.NewInt(1))
	n := primitives.ScalarField().BitLen()
	bits := make([]uint, n)
	for i := 0; i < n; i++ {
		bits[i] = c.Bit(i)
	}
	return bits
}

// canonicalFqBitsGadget wraps the decomposition as an extractor gadget so the
// Lean export emits a single reusable `def` plus one call per use (three in
// AssetRegistryGap). During proving the call runs DefineGadget inline, so the
// constraint system is identical to the inlined form.
type canonicalFqBitsGadget struct {
	In frontend.Variable
}

func (g canonicalFqBitsGadget) DefineGadget(api frontend.API) interface{} {
	return canonicalFqBits253(api, g.In)
}

// CanonicalFqBits253 decomposes v and asserts the decomposition is reduced.
// The returned slice is little-endian (index 0 = LSB).
func CanonicalFqBits253(api frontend.API, v frontend.Variable) []frontend.Variable {
	return abstractor.Call1(api, canonicalFqBitsGadget{In: v})
}

func canonicalFqBits253(api frontend.API, v frontend.Variable) []frontend.Variable {
	cb := pMinusOneBits()
	n := len(cb)

	// Native binary decomposition: Gates.to_binary v n bits.
	bits := api.ToBinary(v, n)

	// Reduced check: bits <= p-1, MSB-first lexicographic ladder.
	// prefixEqual = 1 while every higher bit equals the bound's bit; it forces
	// value bit 0 at each bound zero-bit (LeLadder). Bits are already boolean
	// from ToBinary, so the steps carry no extra is_bool constraint.
	prefixEqual := frontend.Variable(1)
	for i := n - 1; i >= 0; i-- {
		if cb[i] == 1 {
			prefixEqual = abstractor.Call(api, reducedStepOne{
				PrefixEqual: prefixEqual,
				Bit:         bits[i],
			})
		} else {
			prefixEqual = abstractor.Call(api, reducedStepZero{
				PrefixEqual: prefixEqual,
				Bit:         bits[i],
			})
		}
	}

	return bits
}

// reducedStepOne is one MSB-first rung at a bound bit = 1: the value bit is
// unconstrained above (any bit <= 1), and prefix-equality continues iff the
// value bit is also 1. Returns the updated prefixEqual. 2-arg ops only.
type reducedStepOne struct {
	PrefixEqual frontend.Variable
	Bit         frontend.Variable
}

func (g reducedStepOne) DefineGadget(api frontend.API) interface{} {
	return api.Mul(g.PrefixEqual, g.Bit)
}

// reducedStepZero is one MSB-first rung at a bound bit = 0: while prefix-equal,
// the value bit must be 0 (PrefixEqual*Bit = 0); prefix-equality continues iff
// the value bit is 0. Returns the updated prefixEqual. 2-arg ops only.
type reducedStepZero struct {
	PrefixEqual frontend.Variable
	Bit         frontend.Variable
}

func (g reducedStepZero) DefineGadget(api frontend.API) interface{} {
	api.AssertIsEqual(api.Mul(g.PrefixEqual, g.Bit), 0)
	return api.Mul(g.PrefixEqual, api.Sub(1, g.Bit))
}

// lexLess253 returns 1 iff A < B, where aBits/bBits are the little-endian
// canonical decompositions from CanonicalFqBits253 (already reduced and pinned).
// The MSB-first ladder is wrapped as an extractor gadget: AssetRegistryGap calls
// it twice, so it emits one `def` + calls instead of inlining both ladders.
type lexLess253Gadget struct {
	ABits []frontend.Variable
	BBits []frontend.Variable
}

func (g lexLess253Gadget) DefineGadget(api frontend.API) interface{} {
	return lexLess253Inline(api, g.ABits, g.BBits)
}

func lexLess253(api frontend.API, aBits, bBits []frontend.Variable) frontend.Variable {
	return abstractor.Call(api, lexLess253Gadget{ABits: aBits, BBits: bBits})
}

// lexLessStep is one MSB-first rung of the comparison ladder, wrapped as an
// extractor gadget so the 253-rung ladder emits 253 calls to one small `def`.
// Carries the (prefixEqual, isLess) accumulator. 2-arg ops only (no multi-arg
// shadowing), no solver hint.
type lexLessStep struct {
	PrefixEqual frontend.Variable
	IsLess      frontend.Variable
	ABit        frontend.Variable
	BBit        frontend.Variable
}

func (g lexLessStep) DefineGadget(api frontend.API) interface{} {
	// lessAtI = prefixEqual * (1 - aBit) * bBit  (a=0,b=1 while still equal)
	lessAtI := api.Mul(api.Mul(g.PrefixEqual, api.Sub(1, g.ABit)), g.BBit)
	isLess := api.Add(g.IsLess, lessAtI)
	// eqBit = 1 + 2*aBit*bBit - aBit - bBit  (XNOR of the two bits)
	ab := api.Mul(g.ABit, g.BBit)
	eqBit := api.Sub(api.Sub(api.Add(1, api.Mul(2, ab)), g.ABit), g.BBit)
	prefixEqual := api.Mul(g.PrefixEqual, eqBit)
	return []frontend.Variable{prefixEqual, isLess}
}

func lexLess253Inline(api frontend.API, aBits, bBits []frontend.Variable) frontend.Variable {
	n := len(aBits)
	prefixEqual := frontend.Variable(1)
	isLess := frontend.Variable(0)
	for i := n - 1; i >= 0; i-- {
		state := abstractor.Call1(api, lexLessStep{
			PrefixEqual: prefixEqual,
			IsLess:      isLess,
			ABit:        aBits[i],
			BBit:        bBits[i],
		})
		prefixEqual = state[0]
		isLess = state[1]
	}
	return isLess
}

// AssetRegistryGap is the decompose-once IMT membership / non-membership
// comparator: Select(isRegulated, exactMatch, inGap), matching Rust's
// `verify_asset_registry_imt`. Each of leaf/id/next is decomposed exactly once
// via CanonicalFqBits253, and the two comparisons reuse those bits.
func AssetRegistryGap(
	api frontend.API,
	noteAssetID frontend.Variable,
	isRegulated frontend.Variable,
	leafValue frontend.Variable,
	nextValue frontend.Variable,
) frontend.Variable {
	leafBits := CanonicalFqBits253(api, leafValue)
	idBits := CanonicalFqBits253(api, noteAssetID)
	nextBits := CanonicalFqBits253(api, nextValue)

	isExactMatch := api.IsZero(api.Sub(noteAssetID, leafValue))
	gtLow := lexLess253(api, leafBits, idBits)
	ltHigh := lexLess253(api, idBits, nextBits)
	isInGap := api.Mul(gtLow, ltHigh)
	return api.Select(isRegulated, isExactMatch, isInGap)
}
