package compliance

import (
	"math/big"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type nativeToBinaryAddressPackingCircuit struct {
	Div          frontend.Variable
	Transmission frontend.Variable
	Plaintext    [3]frontend.Variable
}

func (c *nativeToBinaryAddressPackingCircuit) Define(api frontend.API) error {
	bits := append(
		api.ToBinary(c.Div, 256),
		api.ToBinary(c.Transmission, 256)...,
	)
	for index, start := 0, 0; start < len(bits); index, start = index+1, start+31*8 {
		end := start + 31*8
		if end > len(bits) {
			end = len(bits)
		}
		api.AssertIsEqual(api.FromBinary(bits[start:end]...), c.Plaintext[index])
	}
	return nil
}

type canonicalAddressPackingCircuit struct {
	Div          frontend.Variable
	Transmission frontend.Variable
	Plaintext    [3]frontend.Variable
}

func (c *canonicalAddressPackingCircuit) Define(api frontend.API) error {
	plaintext := AddressPlaintextFQsFromCompressed(api, c.Div, c.Transmission)
	for index := range c.Plaintext {
		api.AssertIsEqual(plaintext[index], c.Plaintext[index])
	}
	return nil
}

func fixedLE32(value *big.Int) [32]byte {
	var out [32]byte
	bytes := value.Bytes()
	for index := range bytes {
		out[index] = bytes[len(bytes)-1-index]
	}
	return out
}

func addressPlaintextChunks(div, transmission *big.Int) [3]frontend.Variable {
	divBytes := fixedLE32(div)
	transmissionBytes := fixedLE32(transmission)
	bytes := append(divBytes[:], transmissionBytes[:]...)

	var out [3]frontend.Variable
	for index, start := 0, 0; start < len(bytes); index, start = index+1, start+31 {
		end := start + 31
		if end > len(bytes) {
			end = len(bytes)
		}
		chunk := make([]byte, end-start)
		for offset := range chunk {
			chunk[len(chunk)-1-offset] = bytes[start+offset]
		}
		out[index] = new(big.Int).SetBytes(chunk)
	}
	return out
}

func TestGnarkToBinary256RejectsNonCanonicalAddressPlaintextAlias(t *testing.T) {
	div := big.NewInt(1)
	transmission := big.NewInt(2)
	divAlias := new(big.Int).Add(div, primitives.ScalarField())
	if divAlias.BitLen() > 256 {
		t.Fatal("test alias does not fit the legacy 256-bit decomposition")
	}
	if new(big.Int).Mod(new(big.Int).Set(divAlias), primitives.ScalarField()).Cmp(div) != 0 {
		t.Fatal("test alias is not congruent to the canonical field element")
	}

	canonicalPlaintext := addressPlaintextChunks(div, transmission)
	aliasPlaintext := addressPlaintextChunks(divAlias, transmission)
	plaintextEqual := true
	for index := range canonicalPlaintext {
		if canonicalPlaintext[index].(*big.Int).Cmp(aliasPlaintext[index].(*big.Int)) != 0 {
			plaintextEqual = false
		}
	}
	if plaintextEqual {
		t.Fatal("non-canonical alias must change the encrypted address plaintext")
	}

	nativeCanonicalAssignment := &nativeToBinaryAddressPackingCircuit{
		Div:          div,
		Transmission: transmission,
		Plaintext:    canonicalPlaintext,
	}
	if err := test.IsSolved(
		&nativeToBinaryAddressPackingCircuit{},
		nativeCanonicalAssignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("gnark's canonical 256-bit Fq encoding must satisfy the circuit: %v", err)
	}

	nativeAliasAssignment := &nativeToBinaryAddressPackingCircuit{
		Div:          div,
		Transmission: transmission,
		Plaintext:    aliasPlaintext,
	}
	if err := test.IsSolved(
		&nativeToBinaryAddressPackingCircuit{},
		nativeAliasAssignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("gnark ToBinary(256) accepted an x+p address plaintext alias")
	}

	canonicalAssignment := &canonicalAddressPackingCircuit{
		Div:          div,
		Transmission: transmission,
		Plaintext:    canonicalPlaintext,
	}
	if err := test.IsSolved(
		&canonicalAddressPackingCircuit{},
		canonicalAssignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("canonical Rust-compatible address bytes must satisfy the circuit: %v", err)
	}

	aliasAssignment := &canonicalAddressPackingCircuit{
		Div:          div,
		Transmission: transmission,
		Plaintext:    aliasPlaintext,
	}
	if err := test.IsSolved(
		&canonicalAddressPackingCircuit{},
		aliasAssignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("canonical address packing accepted the legacy x+p plaintext alias")
	}
}
