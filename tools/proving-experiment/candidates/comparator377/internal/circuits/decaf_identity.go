package circuits

import (
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	decaf377 "github.com/mizufinance/decaf377-go"
)

func assertDecafPointOnCurve(api frontend.API, point gnarkte.Point) {
	d := decaf377.CurveD()
	xx := api.Mul(point.X, point.X)
	yy := api.Mul(point.Y, point.Y)
	api.AssertIsEqual(api.Sub(yy, xx), api.Add(1, api.Mul(api.Mul(d, xx), yy)))
}

// AssertDecafNonIdentity excludes the Decaf identity class for an on-curve
// companion-Edwards point. Its two representatives are exactly the points
// with X = 0, so the quotient-level predicate is X != 0.
func AssertDecafNonIdentity(api frontend.API, point gnarkte.Point) {
	api.AssertIsDifferent(point.X, 0)
}
