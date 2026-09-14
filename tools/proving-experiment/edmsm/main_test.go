package main

import (
	"bytes"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"math/big"
	"shieldd.local/edmsm/edwards"
	"testing"
)

func TestWorkerCanonicalEncodingAndScalarBoundary(t *testing.T) {
	_, _, g, _ := curve.Generators()
	encoded := encode(&g)
	decoded, err := point(encoded)
	if err != nil || !decoded.Equal(&g) {
		t.Fatal("point roundtrip")
	}
	if _, err = point(encoded[:96]); err == nil {
		t.Fatal("truncated point")
	}
	bad := append([]byte(nil), encoded...)
	bad[0] = 2
	if _, err = point(bad); err == nil {
		t.Fatal("point tag")
	}
	bases, err := edwards.Prepare([]curve.G1Affine{g})
	if err != nil {
		t.Fatal(err)
	}
	var s fr.Element
	s.SetUint64(3)
	scalar := s.Bytes()
	var response response
	result, err := compute(bases, scalar[:], &response)
	if err != nil {
		t.Fatal(err)
	}
	actual, err := point(result)
	var expected curve.G1Affine
	expected.ScalarMultiplication(&g, big.NewInt(3))
	if err != nil || !actual.Equal(&expected) {
		t.Fatal("worker MSM mismatch")
	}
	if _, err = compute(bases, scalar[:31], &response); err == nil {
		t.Fatal("scalar count")
	}
	if _, err = compute(bases, bytes.Repeat([]byte{255}, 32), &response); err == nil {
		t.Fatal("noncanonical scalar")
	}
}
