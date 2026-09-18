package compliance

import (
	"encoding/hex"
	"encoding/json"
	"math/big"
	"os"
	"testing"

	decaf "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

// These vectors check the local canonical handoff; no distributed PET is simulated.
func TestCanonicalHandoffRustGoParity(t *testing.T) {
	data, err := os.ReadFile("handoff_vectors.json")
	if err != nil {
		t.Fatal(err)
	}
	var vectors []struct {
		Name                string `json:"name"`
		SyntheticAcceptance bool   `json:"synthetic_acceptance"`
		LivePET             bool   `json:"live_pet"`
		Generator           string `json:"generator"`
		Transmission        string `json:"transmission"`
		Fingerprint         string `json:"fingerprint"`
		R                   string `json:"ownership_r"`
		C                   string `json:"ownership_c"`
		Secret              string `json:"synthetic_checking_secret"`
		Match               bool   `json:"local_key_match"`
		Accepted            struct {
			Identity struct {
				Epoch uint64 `json:"epoch"`
				Field string `json:"field"`
			} `json:"identity"`
			Selection struct {
				Access struct {
					Tier string `json:"tier"`
				} `json:"access"`
			} `json:"selection"`
		} `json:"accepted"`
	}
	if err := json.Unmarshal(data, &vectors); err != nil {
		t.Fatal(err)
	}
	if len(vectors) != 36 {
		t.Fatalf("incomplete handoff suite: %d", len(vectors))
	}
	bytes := func(s string) []byte {
		b, e := hex.DecodeString(s)
		if e != nil || len(b) != 32 {
			t.Fatal("noncanonical vector")
		}
		return b
	}
	fq := func(s string) *big.Int { return primitives.LittleEndianBytesToBigInt(bytes(s)) }
	point := func(s string) decaf.Point {
		p, e := decaf.Decode(bytes(s))
		if e != nil {
			t.Fatal(e)
		}
		return p
	}
	for _, v := range vectors {
		if !v.SyntheticAcceptance || v.LivePET {
			t.Fatal("fixture misrepresents chain acceptance or live PET")
		}
		hashed, err := primitives.Poseidon377Hash2Native(OwnershipDomain, [2]*big.Int{fq(v.Generator), fq(v.Transmission)})
		if err != nil {
			t.Fatal(err)
		}
		fp, err := decafgnark.EncodeToCurveNative(hashed)
		if err != nil {
			t.Fatal(err)
		}
		encoded, err := decafgnark.CompressToFieldNative(fp)
		if err != nil || encoded.Cmp(fq(v.Fingerprint)) != 0 {
			t.Fatal("fingerprint parity")
		}
		shared, err := decaf.ScalarMul(point(v.R), fq(v.Secret))
		if err != nil {
			t.Fatal(err)
		}
		decrypted, err := decaf.Sub(point(v.C), shared)
		if err != nil {
			t.Fatal(err)
		}
		expected := decaf.NewPoint(fp.X.(*big.Int), fp.Y.(*big.Int))
		if decaf.Equivalent(decrypted, expected) != v.Match {
			t.Fatalf("role/owner mismatch: %s", v.Name)
		}
		fields := map[string]string{"sender_core": "amount", "output_core": "amount", "sender_ext": "receiver", "output_ext": "sender"}
		if v.Accepted.Identity.Epoch != 7 || fields[v.Accepted.Selection.Access.Tier] != v.Accepted.Identity.Field {
			t.Fatal("key family or epoch mismatch")
		}
	}
}
