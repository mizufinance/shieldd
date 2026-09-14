package artifacts

import (
	"bytes"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/backend/groth16"
	groth16bls "github.com/consensys/gnark/backend/groth16/bls12-377"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
)

type keyIOTestCircuit struct {
	Secret frontend.Variable
	Public frontend.Variable `gnark:",public"`
}

func (c *keyIOTestCircuit) Define(api frontend.API) error {
	api.AssertIsEqual(c.Secret, c.Public)
	return nil
}

type keyIOTestEncodings struct {
	provingKey      []byte
	rawProvingKey   []byte
	verifyingKey    []byte
	rawVerifyingKey []byte
}

func testGroth16KeyBytes(t *testing.T) keyIOTestEncodings {
	t.Helper()
	ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, &keyIOTestCircuit{})
	if err != nil {
		t.Fatalf("compile test circuit: %v", err)
	}
	pkI, vkI, err := groth16.Setup(ccs)
	if err != nil {
		t.Fatalf("setup test circuit: %v", err)
	}
	pk := pkI.(*groth16bls.ProvingKey)
	vk := vkI.(*groth16bls.VerifyingKey)

	var pkBytes bytes.Buffer
	if _, err := pk.WriteTo(&pkBytes); err != nil {
		t.Fatalf("encode proving key: %v", err)
	}
	var rawPKBytes bytes.Buffer
	if _, err := pk.WriteRawTo(&rawPKBytes); err != nil {
		t.Fatalf("encode raw proving key: %v", err)
	}
	var vkBytes bytes.Buffer
	if _, err := vk.WriteTo(&vkBytes); err != nil {
		t.Fatalf("encode verifying key: %v", err)
	}
	var rawVKBytes bytes.Buffer
	if _, err := vk.WriteRawTo(&rawVKBytes); err != nil {
		t.Fatalf("encode raw verifying key: %v", err)
	}
	return keyIOTestEncodings{
		provingKey:      pkBytes.Bytes(),
		rawProvingKey:   rawPKBytes.Bytes(),
		verifyingKey:    vkBytes.Bytes(),
		rawVerifyingKey: rawVKBytes.Bytes(),
	}
}

func TestStrictGroth16KeyReadersRejectTrailingBytes(t *testing.T) {
	encodings := testGroth16KeyBytes(t)
	if _, err := ReadProvingKeyStrict(bytes.NewReader(encodings.provingKey)); err != nil {
		t.Fatalf("read canonical proving key: %v", err)
	}
	if _, err := ReadVerifyingKeyStrict(bytes.NewReader(encodings.verifyingKey)); err != nil {
		t.Fatalf("read canonical verifying key: %v", err)
	}

	pkWithSuffix := append(append([]byte{}, encodings.provingKey...), 0x42)
	if _, err := ReadProvingKeyStrict(bytes.NewReader(pkWithSuffix)); err == nil {
		t.Fatal("proving key with trailing byte must fail")
	}
	vkWithSuffix := append(append([]byte{}, encodings.verifyingKey...), 0x42)
	if _, err := ReadVerifyingKeyStrict(bytes.NewReader(vkWithSuffix)); err == nil {
		t.Fatal("verifying key with trailing byte must fail")
	}
}

func TestStrictGroth16KeyReadersRejectRawEncoding(t *testing.T) {
	encodings := testGroth16KeyBytes(t)
	if bytes.Equal(encodings.provingKey, encodings.rawProvingKey) {
		t.Fatal("test proving-key encodings unexpectedly match")
	}
	if _, err := ReadProvingKeyStrict(bytes.NewReader(encodings.rawProvingKey)); err == nil {
		t.Fatal("raw proving key encoding must fail")
	}
	if bytes.Equal(encodings.verifyingKey, encodings.rawVerifyingKey) {
		t.Fatal("test verifying-key encodings unexpectedly match")
	}
	if _, err := ReadVerifyingKeyStrict(bytes.NewReader(encodings.rawVerifyingKey)); err == nil {
		t.Fatal("raw verifying key encoding must fail")
	}
}
