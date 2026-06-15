package compliance

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
	"github.com/reilabs/gnark-lean-extractor/v3/abstractor"
)

// Strict less-than-constant comparator over an existing 253-bit little-endian
// decomposition (decompose-once). MSB-first (prefixEqual, isLess) ladder with
// the bound's bits folded in as constants: at a bound 1-bit a value 0-bit
// proves less; at a bound 0-bit prefix-equality requires a value 0-bit. The
// rungs are extractor gadgets so Lean sees one small `def` per rung shape; the
// Bool kernel is LexLessLadder.ltAccum with the bound as a constant vector.

// LessThanConstant253 returns 1 iff the value recovered from bits is < c.
// bits must already be boolean (e.g. from api.ToBinary or CanonicalFqBits253).
func LessThanConstant253(api frontend.API, bits []frontend.Variable, c *big.Int) frontend.Variable {
	n := len(bits)
	prefixEqual := frontend.Variable(1)
	isLess := frontend.Variable(0)
	for i := n - 1; i >= 0; i-- {
		if c.Bit(i) == 1 {
			state := abstractor.Call1(api, ltConstStepOne{
				PrefixEqual: prefixEqual,
				IsLess:      isLess,
				Bit:         bits[i],
			})
			prefixEqual = state[0]
			isLess = state[1]
		} else {
			prefixEqual = abstractor.Call(api, ltConstStepZero{
				PrefixEqual: prefixEqual,
				Bit:         bits[i],
			})
		}
	}
	return isLess
}

// ltConstStepOne is one MSB-first rung at a bound bit = 1: a value 0-bit while
// prefix-equal proves less (OR-accumulated), prefix-equality continues iff the
// value bit is 1. Returns [prefixEqual', isLess']. 2-arg ops only.
type ltConstStepOne struct {
	PrefixEqual frontend.Variable
	IsLess      frontend.Variable
	Bit         frontend.Variable
}

func (g ltConstStepOne) DefineGadget(api frontend.API) interface{} {
	lessAtI := api.Mul(g.PrefixEqual, api.Sub(1, g.Bit))
	isLess := api.Sub(api.Add(g.IsLess, lessAtI), api.Mul(g.IsLess, lessAtI))
	prefixEqual := api.Mul(g.PrefixEqual, g.Bit)
	return []frontend.Variable{prefixEqual, isLess}
}

// ltConstStepZero is one MSB-first rung at a bound bit = 0: prefix-equality
// continues iff the value bit is 0; isLess is unchanged. 2-arg ops only.
type ltConstStepZero struct {
	PrefixEqual frontend.Variable
	Bit         frontend.Variable
}

func (g ltConstStepZero) DefineGadget(api frontend.API) interface{} {
	return api.Mul(g.PrefixEqual, api.Sub(1, g.Bit))
}
