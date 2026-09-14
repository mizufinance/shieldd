package compliance

import (
	"github.com/consensys/gnark/frontend"
	"math/big"
)

// LessThanConstant253 compares Boolean little-endian bits with a nonnegative, width-bounded constant.
func LessThanConstant253(api frontend.API, bits []frontend.Variable, c *big.Int) frontend.Variable {
	if c == nil || c.Sign() < 0 || c.BitLen() > len(bits) {
		panic("comparison constant must fit the Boolean bit width")
	}
	less := frontend.Variable(0)
	for i, bit := range bits {
		if c.Bit(i) == 1 {
			less = api.Sub(1, api.Mul(bit, api.Sub(1, less)))
		} else {
			less = api.Mul(api.Sub(1, bit), less)
		}
	}
	api.AssertIsBoolean(less)
	return less
}
