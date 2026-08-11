package circuits

import (
	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
)

// AssertDecafNonIdentity excludes the Decaf identity class for an on-curve
// companion-Edwards point. Its two representatives are exactly the points
// with X = 0, so the quotient-level predicate is X != 0.
func AssertDecafNonIdentity(api frontend.API, point gnarkte.Point) {
	api.AssertIsDifferent(point.X, 0)
}
