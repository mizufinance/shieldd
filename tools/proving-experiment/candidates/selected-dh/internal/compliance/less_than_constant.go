package compliance

import (
	"math/big"

	"github.com/consensys/gnark/frontend"
)

// LessThanConstant253 returns 1 iff the value recovered from bits is < c.
// Bits must be a boolean little-endian decomposition.
func LessThanConstant253(api frontend.API, bits []frontend.Variable, c *big.Int) frontend.Variable {
	n := len(bits)
	prefixEqual := frontend.Variable(1)
	isLess := frontend.Variable(0)
	for i := n - 1; i >= 0; i-- {
		if c.Bit(i) == 1 {
			lessAtI := api.Mul(prefixEqual, api.Sub(1, bits[i]))
			isLess = api.Sub(api.Add(isLess, lessAtI), api.Mul(isLess, lessAtI))
			prefixEqual = api.Mul(prefixEqual, bits[i])
		} else {
			prefixEqual = api.Mul(prefixEqual, api.Sub(1, bits[i]))
		}
	}
	return isLess
}
