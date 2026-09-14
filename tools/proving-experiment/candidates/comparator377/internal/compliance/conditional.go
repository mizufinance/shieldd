package compliance

import "github.com/consensys/gnark/frontend"

func AssertEqualIf(api frontend.API, left, right, cond frontend.Variable) {
	api.AssertIsEqual(api.Mul(api.Sub(left, right), cond), 0)
}
