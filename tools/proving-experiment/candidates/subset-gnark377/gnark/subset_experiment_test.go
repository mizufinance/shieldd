package groth16

import (
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"testing"
)

func TestSubsetExperimentIdentities(t *testing.T) {
	for _, n := range []int{8, 16, 32, 128} {
		e, err := NewSubsetExperiment(n)
		if err != nil {
			t.Fatal(err)
		}
		for _, size := range []int{1, e.m - 2, e.m} {
			a, b, c := make([]fr.Element, size), make([]fr.Element, size), make([]fr.Element, size)
			for i := range a {
				a[i].SetUint64(uint64(i*i + 11))
				b[i].SetUint64(uint64(i + 3))
				c[i].Mul(&a[i], &b[i])
			}
			if err := e.Check(a, b, c); err != nil {
				t.Fatalf("N%d rows%d: %v", n, size, err)
			}
			for i := range c {
				saved := c[i]
				one := fr.One()
				c[i].Add(&c[i], &one)
				if _, err := e.Polynomial(a, b, c); err == nil {
					t.Fatal("bad row accepted")
				}
				c[i] = saved
			}
		}
	}
}

func TestSubsetExperimentBoundaries(t *testing.T) {
	for _, n := range []int{0, 1, 7, 9, 1 << 21} {
		if _, err := NewSubsetExperiment(n); err == nil {
			t.Fatal("bad descriptor")
		}
	}
	e, _ := NewSubsetExperiment(8)
	if _, err := e.Polynomial(make([]fr.Element, 7), make([]fr.Element, 7), make([]fr.Element, 7)); err == nil {
		t.Fatal("too many rows")
	}
	if _, err := e.Polynomial(make([]fr.Element, 1), nil, nil); err == nil {
		t.Fatal("wrong dimensions")
	}
	a, b, c := make([]fr.Element, 6), make([]fr.Element, 6), make([]fr.Element, 6)
	for i := range c {
		c[i].SetOne()
	}
	if _, err := e.Polynomial(a, b, c); err == nil {
		t.Fatal("low-degree invalid coset relation accepted")
	}
}
