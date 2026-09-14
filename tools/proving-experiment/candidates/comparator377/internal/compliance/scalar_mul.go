package compliance

import (
	"fmt"
	"math/big"

	"github.com/consensys/gnark/frontend"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func decafGeneratorPoint() (gnarkte.Point, error) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		return gnarkte.Point{}, err
	}
	x, ok := new(big.Int).SetString(vectors.Decaf377CompanionCurve.GeneratorX, 10)
	if !ok {
		return gnarkte.Point{}, fmt.Errorf("invalid decaf generator x %q", vectors.Decaf377CompanionCurve.GeneratorX)
	}
	y, ok := new(big.Int).SetString(vectors.Decaf377CompanionCurve.GeneratorY, 10)
	if !ok {
		return gnarkte.Point{}, fmt.Errorf("invalid decaf generator y %q", vectors.Decaf377CompanionCurve.GeneratorY)
	}
	return gnarkte.Point{X: x, Y: y}, nil
}

func ScalarMulLE(api frontend.API, curve gnarkte.Curve, base gnarkte.Point, scalar frontend.Variable, nBits int) gnarkte.Point {
	return ScalarMulLEBits(api, curve, base, api.ToBinary(scalar, nBits))
}

// ScalarMulLEBits evaluates a little-endian bit decomposition.
func ScalarMulLEBits(api frontend.API, curve gnarkte.Curve, base gnarkte.Point, bits []frontend.Variable) gnarkte.Point {
	result := gnarkte.Point{X: 0, Y: 1}
	current := base
	for _, bit := range bits {
		sum := curve.Add(result, current)
		result = gnarkte.Point{
			X: api.Select(bit, sum.X, result.X),
			Y: api.Select(bit, sum.Y, result.Y),
		}
		current = curve.Double(current)
	}
	return result
}

// ScalarMulWindow2LEBits evaluates a little-endian scalar with a radix-4 ladder.
func ScalarMulWindow2LEBits(api frontend.API, curve gnarkte.Curve, base gnarkte.Point, bits []frontend.Variable) gnarkte.Point {
	if len(bits) == 0 {
		return gnarkte.Point{X: 0, Y: 1}
	}
	if len(bits) == 1 {
		return gnarkte.Point{
			X: api.Select(bits[0], base.X, 0),
			Y: api.Select(bits[0], base.Y, 1),
		}
	}

	identity := gnarkte.Point{X: 0, Y: 1}
	double := curve.Double(base)
	triple := curve.Add(double, base)
	high := len(bits) - 1
	result := gnarkte.Point{
		X: api.Lookup2(bits[high], bits[high-1], identity.X, double.X, base.X, triple.X),
		Y: api.Lookup2(bits[high], bits[high-1], identity.Y, double.Y, base.Y, triple.Y),
	}
	for i := high - 2; i >= 1; i -= 2 {
		result = curve.Double(curve.Double(result))
		window := gnarkte.Point{
			X: api.Lookup2(bits[i], bits[i-1], identity.X, double.X, base.X, triple.X),
			Y: api.Lookup2(bits[i], bits[i-1], identity.Y, double.Y, base.Y, triple.Y),
		}
		result = curve.Add(result, window)
	}
	if high%2 == 0 {
		result = curve.Double(result)
		withLowBit := curve.Add(result, base)
		result = gnarkte.Point{
			X: api.Select(bits[0], withLowBit.X, result.X),
			Y: api.Select(bits[0], withLowBit.Y, result.Y),
		}
	}
	return result
}
