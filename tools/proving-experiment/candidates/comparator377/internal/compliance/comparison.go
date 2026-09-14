package compliance

import "github.com/consensys/gnark/frontend"

const AmountBits = 128

func FieldLessThan(api frontend.API, a, b frontend.Variable) frontend.Variable {
	aBits := api.ToBinary(a, AmountBits)
	bBits := api.ToBinary(b, AmountBits)
	less := frontend.Variable(0)
	for i := 0; i < AmountBits; i++ {
		x := api.Sub(1, aBits[i])
		y := bBits[i]
		both := api.Mul(x, y)
		equal := api.Sub(api.Add(x, y), api.Mul(2, both))
		less = api.Add(both, api.Mul(less, equal))
	}
	api.AssertIsBoolean(less)
	return less
}
