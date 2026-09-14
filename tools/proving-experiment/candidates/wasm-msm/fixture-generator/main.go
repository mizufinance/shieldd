package main

import (
	"encoding/json"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"math/big"
	"os"
)

type Point struct {
	X    string `json:"x"`
	Y    string `json:"y"`
	Zero bool   `json:"isZero"`
}
type Case struct {
	Name     string   `json:"name"`
	Points   []Point  `json:"points"`
	Scalars  []string `json:"scalars"`
	Expected Point    `json:"expected"`
}
type Report struct {
	Schema        string `json:"schema"`
	BaseModulus   string `json:"base_modulus"`
	ScalarModulus string `json:"scalar_modulus"`
	Cases         []Case `json:"cases"`
}

func point(p curve.G1Affine) Point {
	var x, y big.Int
	p.X.BigInt(&x)
	p.Y.BigInt(&y)
	return Point{x.String(), y.String(), p.IsInfinity()}
}
func main() {
	if len(os.Args) != 2 {
		panic("new output required")
	}
	_, _, g, _ := curve.Generators()
	q := fr.Modulus()
	qm1 := new(big.Int).Sub(q, big.NewInt(1))
	qm2 := new(big.Int).Sub(q, big.NewInt(2))
	report := Report{Schema: "shieldd.wasm_msm377_vectors.v1", BaseModulus: fp.Modulus().String(), ScalarModulus: q.String()}
	appendCase := func(name string, bases []int64, scalars []*big.Int) {
		c := Case{Name: name}
		var sum curve.G1Affine
		for i, b := range bases {
			var p, term curve.G1Affine
			p.ScalarMultiplication(&g, big.NewInt(abs(b)))
			if b < 0 {
				p.Neg(&p)
			}
			if !p.IsOnCurve() || !p.IsInSubGroup() || scalars[i].Sign() < 0 || scalars[i].Cmp(q) >= 0 {
				panic("bad fixture")
			}
			c.Points = append(c.Points, point(p))
			c.Scalars = append(c.Scalars, scalars[i].String())
			term.ScalarMultiplication(&p, scalars[i])
			sum.Add(&sum, &term)
		}
		c.Expected = point(sum)
		report.Cases = append(report.Cases, c)
	}
	ints := func(v ...int64) []*big.Int {
		out := make([]*big.Int, len(v))
		for i, n := range v {
			out[i] = big.NewInt(n)
		}
		return out
	}
	appendCase("mixed_zero_and_max", []int64{1, 1, 1, 1}, []*big.Int{big.NewInt(0), big.NewInt(1), big.NewInt(2), qm1})
	appendCase("duplicate_points", []int64{1, 2, 1, 2}, ints(3, 5, 7, 11))
	appendCase("inverse_cancellation", []int64{1, -1, 2, -2}, ints(1, 1, 1, 1))
	appendCase("identity_points", []int64{0, 0, 1, 1}, []*big.Int{big.NewInt(1), qm1, big.NewInt(0), big.NewInt(2)})
	appendCase("scalar_limb_boundaries", []int64{1, 2, 3, 4}, []*big.Int{qm1, qm2, new(big.Int).Add(new(big.Int).Lsh(big.NewInt(1), 128), big.NewInt(1)), new(big.Int).Sub(new(big.Int).Lsh(big.NewInt(1), 252), big.NewInt(1))})
	appendCase("odd_count", []int64{3, 5, 7}, ints(0x123456789, 0x987654321, 0x123456789abcdef))
	file, err := os.OpenFile(os.Args[1], os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
	if err != nil {
		panic(err)
	}
	encoder := json.NewEncoder(file)
	encoder.SetIndent("", "  ")
	if err = encoder.Encode(report); err != nil {
		panic(err)
	}
	if err = file.Close(); err != nil {
		panic(err)
	}
}
func abs(x int64) int64 {
	if x < 0 {
		return -x
	}
	return x
}
