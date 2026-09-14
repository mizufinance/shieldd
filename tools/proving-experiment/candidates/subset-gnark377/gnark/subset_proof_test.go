package groth16

import (
	"bytes"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	cs "github.com/consensys/gnark/constraint/bls12-377"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"testing"
)

type subsetSquareCircuit struct {
	X frontend.Variable
	Y frontend.Variable `gnark:",public"`
}

func (c *subsetSquareCircuit) Define(api frontend.API) error {
	api.AssertIsEqual(api.Mul(c.X, c.X), c.Y)
	return nil
}

func TestSubsetCompleteProofAndKey(t *testing.T) {
	compiled, err := frontend.Compile(fr.Modulus(), r1cs.NewBuilder, &subsetSquareCircuit{})
	if err != nil {
		t.Fatal(err)
	}
	relation := compiled.(*cs.R1CS)
	var pk ProvingKey
	var vk VerifyingKey
	if err := Setup(relation, &pk, &vk); err != nil {
		t.Fatal(err)
	}
	var encoded bytes.Buffer
	if _, err := pk.WriteTo(&encoded); err != nil {
		t.Fatal(err)
	}
	var decoded ProvingKey
	if _, err := decoded.ReadFrom(bytes.NewReader(encoded.Bytes())); err != nil {
		t.Fatal(err)
	}
	var again bytes.Buffer
	if _, err := decoded.WriteTo(&again); err != nil || !bytes.Equal(encoded.Bytes(), again.Bytes()) {
		t.Fatal("key roundtrip", err)
	}
	for _, index := range []int{0, 8, 16, 24, 32, 192} {
		bad := append([]byte(nil), encoded.Bytes()...)
		bad[index] ^= 1
		var k ProvingKey
		if _, err := k.ReadFrom(bytes.NewReader(bad)); err == nil {
			t.Fatalf("bad descriptor/domain %d", index)
		}
	}
	for _, length := range []int{0, 8, 24, 192, encoded.Len() - 1} {
		var k ProvingKey
		if _, err := k.ReadFrom(bytes.NewReader(encoded.Bytes()[:length])); err == nil {
			t.Fatal("truncated key")
		}
	}
	full, err := frontend.NewWitness(&subsetSquareCircuit{X: 7, Y: 49}, fr.Modulus())
	if err != nil {
		t.Fatal(err)
	}
	proof, err := Prove(relation, &decoded, full)
	if err != nil {
		t.Fatal(err)
	}
	public, _ := full.Public()
	if err := Verify(proof, &vk, public.Vector().(fr.Vector)); err != nil {
		t.Fatal(err)
	}
	var wrongPK ProvingKey
	var wrongVK VerifyingKey
	if err := Setup(relation, &wrongPK, &wrongVK); err != nil {
		t.Fatal(err)
	}
	if err := Verify(proof, &wrongVK, public.Vector().(fr.Vector)); err == nil {
		t.Fatal("wrong key accepted")
	}
	bad, _ := frontend.NewWitness(&subsetSquareCircuit{X: 7, Y: 50}, fr.Modulus())
	badPublic, _ := bad.Public()
	if err := Verify(proof, &vk, badPublic.Vector().(fr.Vector)); err == nil {
		t.Fatal("wrong statement")
	}
	if _, err := Prove(relation, &decoded, bad); err == nil {
		t.Fatal("invalid witness")
	}
	decoded.SubsetRemoved++
	if _, err := Prove(relation, &decoded, full); err == nil {
		t.Fatal("wrong domain")
	}
}

func TestSubsetSetupLagrangeAndQueries(t *testing.T) {
	e, _ := NewSubsetExperiment(32)
	var tau fr.Element
	tau.SetUint64(17)
	weights := subsetLagranges(e.domain, tau, e.m)
	evaluate := func(coefficients []fr.Element) fr.Element {
		var result fr.Element
		for i := len(coefficients) - 1; i >= 0; i-- {
			result.Mul(&result, &tau).Add(&result, &coefficients[i])
		}
		return result
	}
	for i := 0; i < e.m; i++ {
		basis := make([]fr.Element, e.m)
		basis[i].SetOne()
		coefficients, err := e.interpolate(basis)
		if err != nil {
			t.Fatal(err)
		}
		value := evaluate(coefficients)
		if !value.Equal(&weights[i]) {
			t.Fatalf("lagrange %d", i)
		}
	}
	expected := fr.One()
	root := fr.One()
	for i := 0; i < e.n; i++ {
		if i%4 != 1 {
			var term fr.Element
			term.Sub(&tau, &root)
			expected.Mul(&expected, &term)
		}
		root.Mul(&root, &e.domain.Generator)
	}
	actual := subsetVanishing(e.domain, tau)
	if !expected.Equal(&actual) {
		t.Fatal("vanishing")
	}
	query := e.natural(subsetQueries(e.domain, tau, fr.One()))
	for i := range query {
		if !query[i].Equal(&expected) {
			t.Fatalf("query degree %d", i)
		}
		expected.Mul(&expected, &tau)
	}
}
