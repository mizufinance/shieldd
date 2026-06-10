package compliance

import (
	"math/big"

	"github.com/consensys/gnark/constraint/solver"
	"github.com/consensys/gnark/frontend"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

// Kestrel-shaped canonical field-element decomposition.
//
// CanonicalFqBits253 decomposes a field element into its 253 little-endian bits
// and asserts the decomposition is *reduced* (packbv(bits) <= p-1) using the
// exact constraint shapes emitted by Kestrel's
// `make-range-check-constraints` constructor (range-check.lisp) for the constant
// c = p-1, n = 253. Emitting the constructor shape directly lets the ACL2 proof
// instantiate `make-range-check-constraints-correct` with no gnark-vs-Kestrel
// encoding-equivalence lemma — this is the whole point of the gadget. We do NOT
// use api.ToBinary / MustBeLessOrEqCst, whose optimized encoding diverges from
// the constructor.
//
// Constraint layout for c = p-1 (87 one-bits, 166 zero-bits, leading bit 252,
// index-of-lowest-0 = 0), matching the constructor's `(append a-constraints
// pi-constraints)`:
//   - packing: 1 constraint  Sum(bit_i * 2^i) = v
//   - a-constraints (i = 252..0): c_i=1 -> boolean bit_i*(bit_i-1)=0 (87);
//     c_i=0 -> (1 - pi_{i+1} - bit_i)*bit_i = 0 (166)
//   - pi-constraints (i = 251..0, c_i=1): pi_{i+1}*bit_i = pi_i (86)
// with pi_252 := bit_252 and, for each zero bit i, pi_i := pi_{i+1} (aliases,
// no constraint).
//
// Returns the 253 little-endian bit wires so a comparator can reuse them without
// re-decomposing (decompose-once).

func init() {
	solver.RegisterHint(fqBitsHint)
}

// fqBitsHint materializes the little-endian bits of inputs[0]. Witness-only; the
// reducedness and packing constraints below pin the result.
func fqBitsHint(_ *big.Int, inputs []*big.Int, outputs []*big.Int) error {
	v := inputs[0]
	for i := range outputs {
		outputs[i].SetUint64(uint64(v.Bit(i)))
	}
	return nil
}

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

// CanonicalFqBits253 decomposes v and emits the Kestrel-shaped reducedness
// constraints. The returned slice is little-endian (index 0 = LSB).
func CanonicalFqBits253(api frontend.API, v frontend.Variable) []frontend.Variable {
	cb := pMinusOneBits()
	n := len(cb)

	rawBits, err := api.Compiler().NewHint(fqBitsHint, n, v)
	if err != nil {
		panic(err)
	}

	// Packing: Sum(bit_i * 2^i) = v.  Separate from the range-check constructor
	// (which works purely on bits); pairs with the ACL2 pack proof's
	// `A = (mod (packbv bits) p)`.
	acc := frontend.Variable(0)
	coeff := new(big.Int).SetUint64(1)
	for i := 0; i < n; i++ {
		acc = api.Add(acc, api.Mul(rawBits[i], new(big.Int).Set(coeff)))
		coeff.Lsh(coeff, 1)
	}
	api.AssertIsEqual(acc, v)

	// pi-vars, built MSB-first.  pi_{n-1} := a_{n-1}; zero bits alias pi_i :=
	// pi_{i+1}; one bits (i < n-1) get pi_i = pi_{i+1} * bit_i (the bitand
	// constraint).  Index by absolute bit position.
	pi := make([]frontend.Variable, n)
	pi[n-1] = rawBits[n-1]
	for i := n - 2; i >= 0; i-- {
		if cb[i] == 1 {
			// pi-constraint: pi_{i+1} * bit_i = pi_i
			pi[i] = api.Mul(pi[i+1], rawBits[i])
		} else {
			// alias, no constraint
			pi[i] = pi[i+1]
		}
	}

	// a-constraints, MSB-first (i = n-1 .. 0).  Mirrors
	// make-range-check-a-constraints descending order.
	for i := n - 1; i >= 0; i-- {
		if cb[i] == 1 {
			api.AssertIsBoolean(rawBits[i])
		} else {
			// (1 - pi_{i+1} - bit_i) * bit_i = 0
			lhs := api.Sub(1, pi[i+1], rawBits[i])
			api.AssertIsEqual(api.Mul(lhs, rawBits[i]), 0)
		}
	}

	return rawBits
}

// lexLess253 returns 1 iff A < B, where aBits/bBits are the little-endian
// canonical decompositions from CanonicalFqBits253 (already reduced and pinned).
// The MSB-first ladder body is identical to the certified ladder in
// field-less-than-ladder-proof.lisp; it consumes the supplied bits instead of
// re-decomposing, which is the decompose-once saving.
func lexLess253(api frontend.API, aBits, bBits []frontend.Variable) frontend.Variable {
	n := len(aBits)
	prefixEqual := frontend.Variable(1)
	isLess := frontend.Variable(0)
	for i := n - 1; i >= 0; i-- {
		ai := aBits[i]
		bi := bBits[i]
		lessAtI := api.Mul(prefixEqual, api.Sub(1, ai), bi)
		isLess = materialize(api, api.Add(isLess, lessAtI))
		eqBit := api.Add(1, api.Mul(2, ai, bi), api.Mul(-1, ai), api.Mul(-1, bi))
		prefixEqual = materialize(api, api.Mul(prefixEqual, eqBit))
		api.AssertIsBoolean(prefixEqual)
		api.AssertIsBoolean(isLess)
	}
	return isLess
}

// AssetRegistryGap is the decompose-once IMT membership / non-membership
// comparator: Select(isRegulated, exactMatch, inGap), matching Rust's
// `verify_asset_registry_imt`. Each of leaf/id/next is decomposed exactly once
// via the Kestrel-shaped CanonicalFqBits253, and the two comparisons reuse those
// bits.
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
