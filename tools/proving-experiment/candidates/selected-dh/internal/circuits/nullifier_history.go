package circuits

import (
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/std/math/cmp"
)

const sctPositionBits = 48

// historyRequired classifies a proof-bound input from its authenticated SCT
// position. Equality with the generation floor is recent.
func historyRequired(
	api frontend.API,
	position frontend.Variable,
	recentPositionFloor frontend.Variable,
	isDummy frontend.Variable,
) frontend.Variable {
	api.AssertIsBoolean(isDummy)
	positionBits := api.ToBinary(position, sctPositionBits)
	floorBits := api.ToBinary(recentPositionFloor, sctPositionBits)
	isOld := cmp.IsLessBinary(api, positionBits, floorBits)
	return api.Mul(api.Sub(1, isDummy), isOld)
}
