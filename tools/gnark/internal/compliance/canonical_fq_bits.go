package compliance

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func pMinusOneBits() []uint {
	c := new(big.Int).Sub(primitives.ScalarField(), big.NewInt(1))
	n := primitives.ScalarField().BitLen()
	bits := make([]uint, n)
	for i := 0; i < n; i++ {
		bits[i] = c.Bit(i)
	}
	return bits
}

// CanonicalFqBits253 decomposes v and asserts the decomposition is reduced.
// The result is little-endian.
func CanonicalFqBits253(api frontend.API, v frontend.Variable) []frontend.Variable {
	return canonicalFqBits253(api, v)
}

func nativeCanonicalFqBits253(api frontend.API, v frontend.Variable) []frontend.Variable {
	return api.ToBinary(v, primitives.ScalarField().BitLen())
}

func canonicalFqBits253(api frontend.API, v frontend.Variable) []frontend.Variable {
	cb := pMinusOneBits()
	n := len(cb)

	bits := api.ToBinary(v, n)

	prefixEqual := frontend.Variable(1)
	for i := n - 1; i >= 0; i-- {
		if cb[i] == 1 {
			prefixEqual = api.Mul(prefixEqual, bits[i])
		} else {
			api.AssertIsEqual(api.Mul(prefixEqual, bits[i]), 0)
			prefixEqual = api.Mul(prefixEqual, api.Sub(1, bits[i]))
		}
	}

	return bits
}

func lexLess253(api frontend.API, aBits, bBits []frontend.Variable) frontend.Variable {
	return lexLess253Inline(api, aBits, bBits)
}

func lexLess253Inline(api frontend.API, aBits, bBits []frontend.Variable) frontend.Variable {
	n := len(aBits)
	prefixEqual := frontend.Variable(1)
	isLess := frontend.Variable(0)
	for i := n - 1; i >= 0; i-- {
		lessAtI := api.Mul(api.Mul(prefixEqual, api.Sub(1, aBits[i])), bBits[i])
		isLess = api.Add(isLess, lessAtI)
		ab := api.Mul(aBits[i], bBits[i])
		eqBit := api.Sub(api.Sub(api.Add(1, api.Mul(2, ab)), aBits[i]), bBits[i])
		prefixEqual = api.Mul(prefixEqual, eqBit)
	}
	return isLess
}

// AssetRegistryGap verifies exact membership for regulated assets and gap
// membership otherwise.
func AssetRegistryGap(
	api frontend.API,
	noteAssetID frontend.Variable,
	isRegulated frontend.Variable,
	leafValue frontend.Variable,
	nextValue frontend.Variable,
) frontend.Variable {
	leafBits := nativeCanonicalFqBits253(api, leafValue)
	idBits := nativeCanonicalFqBits253(api, noteAssetID)
	nextBits := nativeCanonicalFqBits253(api, nextValue)

	isExactMatch := api.IsZero(api.Sub(noteAssetID, leafValue))
	gtLow := lexLess253(api, leafBits, idBits)
	ltHigh := lexLess253(api, idBits, nextBits)
	isInGap := api.Mul(gtLow, ltHigh)
	return api.Select(isRegulated, isExactMatch, isInGap)
}

// CanonicalFqLess compares two canonical decaf377 field elements.
func CanonicalFqLess(api frontend.API, left, right frontend.Variable) frontend.Variable {
	return lexLess253(
		api,
		nativeCanonicalFqBits253(api, left),
		nativeCanonicalFqBits253(api, right),
	)
}
