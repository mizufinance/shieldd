package compliance

import (
	"encoding/hex"
	"encoding/json"
	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/test"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"math/big"
	"os"
	"testing"
)

type fingerprintCircuit struct{ Generator, Transmission, Expected frontend.Variable }

func (c *fingerprintCircuit) Define(api frontend.API) error {
	hashed, err := primitives.Poseidon377Hash2(api, OwnershipDomain, [2]frontend.Variable{c.Generator, c.Transmission})
	if err != nil {
		return err
	}
	fingerprint, err := decafgnark.EncodeToCurve(api, hashed)
	if err != nil {
		return err
	}
	encoded, err := decafgnark.CompressToField(api, fingerprint)
	if err != nil {
		return err
	}
	api.AssertIsEqual(encoded, c.Expected)
	return nil
}
func TestOwnershipRustNativeAndGnarkParity(t *testing.T) {
	data, err := os.ReadFile("ownership_vectors.json")
	if err != nil {
		t.Fatal(err)
	}
	var vectors []struct{ Generator, Transmission, Fingerprint string }
	if err := json.Unmarshal(data, &vectors); err != nil {
		t.Fatal(err)
	}
	fq := func(s string) *big.Int {
		b, err := hex.DecodeString(s)
		if err != nil || len(b) != 32 {
			t.Fatal("invalid canonical vector")
		}
		return primitives.LittleEndianBytesToBigInt(b)
	}
	for _, v := range vectors {
		g, tk, want := fq(v.Generator), fq(v.Transmission), fq(v.Fingerprint)
		hashed, err := primitives.Poseidon377Hash2Native(OwnershipDomain, [2]*big.Int{g, tk})
		if err != nil {
			t.Fatal(err)
		}
		p, err := decafgnark.EncodeToCurveNative(hashed)
		if err != nil {
			t.Fatal(err)
		}
		encoded, err := decafgnark.CompressToFieldNative(p)
		if err != nil || encoded.Cmp(want) != 0 {
			t.Fatal("Rust/Go ownership fingerprint mismatch")
		}
		assignment := fingerprintCircuit{g, tk, want}
		if err := test.IsSolved(&fingerprintCircuit{}, &assignment, ecc.BLS12_377.ScalarField()); err != nil {
			t.Fatal(err)
		}
		assignment.Transmission = new(big.Int).Add(tk, big.NewInt(1))
		if err := test.IsSolved(&fingerprintCircuit{}, &assignment, ecc.BLS12_377.ScalarField()); err == nil {
			t.Fatal("accepted changed ownership component")
		}
	}
}
