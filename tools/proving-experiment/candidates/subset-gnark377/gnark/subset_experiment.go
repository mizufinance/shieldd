package groth16

import (
	"fmt"
	"math/big"
	"math/bits"

	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr/fft"
	"github.com/consensys/gnark/internal/utils"
)

// SubsetExperiment is the fixed three-of-four-cosets QAP cost candidate.
type SubsetExperiment struct {
	domain       *fft.Domain
	n, s, m      int
	excluded     fr.Element
	weights      [4]fr.Element
	cosetInverse [4]fr.Element
}

func NewSubsetExperiment(n int) (*SubsetExperiment, error) {
	if n < 8 || n > 1<<20 || n&(n-1) != 0 {
		return nil, fmt.Errorf("invalid FFT size")
	}
	d := fft.NewDomain(uint64(n))
	e := &SubsetExperiment{domain: d, n: n, s: n / 4, m: 3 * n / 4}
	e.excluded.Exp(d.Generator, big.NewInt(int64(e.s)))
	w := fr.One()
	var gs, inverse, one fr.Element
	one.SetOne()
	gs.Exp(d.FrMultiplicativeGen, big.NewInt(int64(e.s)))
	inverse.Exp(d.FrMultiplicativeGen, big.NewInt(int64(n))).Sub(&inverse, &one).Inverse(&inverse)
	for i := 0; i < 4; i++ {
		e.weights[i].Sub(&w, &e.excluded)
		e.cosetInverse[i].Mul(&gs, &w).Sub(&e.cosetInverse[i], &e.excluded).Mul(&e.cosetInverse[i], &inverse)
		w.Mul(&w, &e.excluded)
	}
	return e, nil
}

func (e *SubsetExperiment) interpolate(values []fr.Element) ([]fr.Element, error) {
	if len(values) > e.m {
		return nil, fmt.Errorf("too many retained rows")
	}
	weighted := make([]fr.Element, e.n)
	for i, j := 0, 0; i < e.n && j < len(values); i++ {
		if i%4 == 1 {
			continue
		}
		weighted[i].Mul(&values[j], &e.weights[i%4])
		j++
	}
	e.domain.FFTInverse(weighted, fft.DIF)
	fft.BitReverse(weighted)
	result := make([]fr.Element, e.m)
	for i := e.n - 1; i >= e.s; i-- {
		result[i-e.s] = weighted[i]
		var term fr.Element
		term.Mul(&weighted[i], &e.excluded)
		weighted[i-e.s].Add(&weighted[i-e.s], &term)
	}
	for i := 0; i < e.s; i++ {
		if !weighted[i].IsZero() {
			return nil, fmt.Errorf("inexact excluded-coset division")
		}
	}
	return result, nil
}

func (e *SubsetExperiment) validate(a, b, c []fr.Element) error {
	if len(a) != len(b) || len(a) != len(c) || len(a) > e.m {
		return fmt.Errorf("invalid row dimensions")
	}
	for i := range a {
		var v fr.Element
		v.Mul(&a[i], &b[i])
		if !v.Equal(&c[i]) {
			return fmt.Errorf("invalid QAP row %d", i)
		}
	}
	return nil
}

// Polynomial returns H in the retained portion of gnark's bit-reversed query order.
func (e *SubsetExperiment) Polynomial(a, b, c []fr.Element) ([]fr.Element, error) {
	if err := e.validate(a, b, c); err != nil {
		return nil, err
	}
	ac, err := e.interpolate(a)
	if err != nil {
		return nil, err
	}
	bc, err := e.interpolate(b)
	if err != nil {
		return nil, err
	}
	cc, err := e.interpolate(c)
	if err != nil {
		return nil, err
	}
	return e.quotient(ac, bc, cc)
}

func (e *SubsetExperiment) quotient(ac, bc, cc []fr.Element) ([]fr.Element, error) {
	coset := func(values []fr.Element) []fr.Element {
		out := make([]fr.Element, e.n)
		copy(out, values)
		fft.BitReverse(out)
		e.domain.FFT(out, fft.DIT, fft.OnCoset())
		return out
	}
	a, b, c := coset(ac), coset(bc), coset(cc)
	utils.Parallelize(e.n, func(start, end int) {
		for i := start; i < end; i++ {
			a[i].Mul(&a[i], &b[i]).Sub(&a[i], &c[i]).Mul(&a[i], &e.cosetInverse[i%4])
		}
	})
	e.domain.FFTInverse(a, fft.DIF, fft.OnCoset())
	h := make([]fr.Element, 0, e.m-1)
	shift := uint(bits.UintSize - bits.TrailingZeros(uint(e.n)))
	for i := 0; i < e.n; i++ {
		degree := int(bits.Reverse(uint(i)) >> shift)
		if degree < e.m-1 {
			h = append(h, a[i])
		} else if !a[i].IsZero() {
			return nil, fmt.Errorf("quotient degree exceeds M-2")
		}
	}
	return h, nil
}

// BaselinePolynomial calls the pinned gnark implementation, including input copies.
func (e *SubsetExperiment) BaselinePolynomial(a, b, c []fr.Element) []fr.Element {
	return computeH(append([]fr.Element(nil), a...), append([]fr.Element(nil), b...), append([]fr.Element(nil), c...), e.domain)
}

func (e *SubsetExperiment) natural(h []fr.Element) []fr.Element {
	result := make([]fr.Element, e.m-1)
	shift := uint(bits.UintSize - bits.TrailingZeros(uint(e.n)))
	for i, j := 0, 0; i < e.n; i++ {
		degree := int(bits.Reverse(uint(i)) >> shift)
		if degree < e.m-1 {
			result[degree] = h[j]
			j++
		}
	}
	return result
}

// Check uses an independent 2N product and sparse long division, outside timing.
func (e *SubsetExperiment) Check(a, b, c []fr.Element) error {
	if err := e.validate(a, b, c); err != nil {
		return err
	}
	ac, err := e.interpolate(a)
	if err != nil {
		return err
	}
	bc, err := e.interpolate(b)
	if err != nil {
		return err
	}
	cc, err := e.interpolate(c)
	if err != nil {
		return err
	}
	for _, pair := range []struct{ values, coefficients []fr.Element }{{a, ac}, {b, bc}, {c, cc}} {
		eval := make([]fr.Element, e.n)
		copy(eval, pair.coefficients)
		e.domain.FFT(eval, fft.DIF)
		fft.BitReverse(eval)
		for i, j := 0, 0; i < e.n; i++ {
			if i%4 == 1 {
				continue
			}
			var want fr.Element
			if j < len(pair.values) {
				want = pair.values[j]
			}
			if !eval[i].Equal(&want) {
				return fmt.Errorf("interpolation row %d", j)
			}
			j++
		}
	}
	h, err := e.quotient(ac, bc, cc)
	if err != nil {
		return err
	}
	h = e.natural(h)
	large := fft.NewDomain(uint64(2 * e.n))
	x, y := make([]fr.Element, 2*e.n), make([]fr.Element, 2*e.n)
	copy(x, ac)
	copy(y, bc)
	large.FFT(x, fft.DIF)
	large.FFT(y, fft.DIF)
	for i := range x {
		x[i].Mul(&x[i], &y[i])
	}
	large.FFTInverse(x, fft.DIT)
	for i := range cc {
		x[i].Sub(&x[i], &cc[i])
	}
	var z [4]fr.Element
	z[3].SetOne()
	for i := 2; i >= 0; i-- {
		z[i].Mul(&z[i+1], &e.excluded)
	}
	oracle := make([]fr.Element, e.m-1)
	for degree := len(x) - 1; degree >= e.m; degree-- {
		coefficient := x[degree]
		if degree-e.m >= len(oracle) {
			if !coefficient.IsZero() {
				return fmt.Errorf("oracle degree")
			}
			continue
		}
		oracle[degree-e.m] = coefficient
		for j := 0; j < 4; j++ {
			var term fr.Element
			term.Mul(&coefficient, &z[j])
			x[degree-e.m+j*e.s].Sub(&x[degree-e.m+j*e.s], &term)
		}
	}
	for i := 0; i < e.m; i++ {
		if !x[i].IsZero() {
			return fmt.Errorf("nonzero independent remainder")
		}
	}
	for i := range h {
		if !h[i].Equal(&oracle[i]) {
			return fmt.Errorf("quotient coefficient %d", i)
		}
	}
	return nil
}
