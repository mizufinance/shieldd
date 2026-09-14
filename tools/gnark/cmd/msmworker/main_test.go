package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"math/big"
	"os"
	"path/filepath"
	"testing"
)

func TestCanonicalBridgeAndActualMSM(t *testing.T) {
	_, _, g, _ := curve.Generators()
	var zero, minus curve.G1Affine
	zero.SetInfinity()
	minus.Neg(&g)
	for _, p := range []curve.G1Affine{g, minus, zero} {
		q, err := point(encode(&p))
		if err != nil || !q.Equal(&p) {
			t.Fatal("point roundtrip", err)
		}
	}
	bad := encode(&g)
	fp.Modulus().FillBytes(bad[1:49])
	if _, err := point(bad); err == nil {
		t.Fatal("noncanonical base field")
	}
	bad = make([]byte, 97)
	bad[96] = 1
	if _, err := point(bad); err == nil {
		t.Fatal("noncanonical infinity")
	}
	bad[0] = 1
	if _, err := point(bad); err == nil {
		t.Fatal("torsion accepted")
	}
	payload := make([]byte, 96)
	payload[31] = 3
	payload[63] = 7
	payload[95] = 2
	var r response
	encoded, err := compute([]curve.G1Affine{g, zero, minus}, payload, &r)
	if err != nil {
		t.Fatal(err)
	}
	result, err := point(encoded)
	if err != nil || !result.Equal(&g) {
		t.Fatal("MSM equality", err)
	}
	fr.Modulus().FillBytes(payload[:32])
	if _, err := compute([]curve.G1Affine{g, zero, minus}, payload, &r); err == nil {
		t.Fatal("noncanonical scalar accepted")
	}
	var expected curve.G1Affine
	expected.ScalarMultiplication(&g, big.NewInt(17))
	var scalar fr.Element
	scalar.SetUint64(17)
	b := scalar.Bytes()
	encoded, err = compute([]curve.G1Affine{g}, b[:], &r)
	if err != nil {
		t.Fatal(err)
	}
	result, err = point(encoded)
	if err != nil || !result.Equal(&expected) {
		t.Fatal("single MSM")
	}
}
func TestBoundedFrames(t *testing.T) {
	for _, body := range []string{`{"schema":"` + schema + `","op":"msm","name":"masks","payload_bytes":67108865}`, `{"schema":"` + schema + `","op":"msm","name":"masks","payload_bytes":1}`, `{"schema":"` + schema + `","op":"msm","name":"masks","payload_bytes":0,"extra":1}`} {
		var buffer bytes.Buffer
		binary.Write(&buffer, binary.BigEndian, uint32(len(body)))
		buffer.WriteString(body)
		if _, _, _, err := read(&buffer); err == nil {
			t.Fatal("bad frame accepted")
		}
	}
}

func TestResidentCombinedViewsShareCheckedBases(t *testing.T) {
	dir := t.TempDir()
	_, _, g, _ := curve.Generators()
	m := manifest{Schema: "shieldd.proving_experiment.msm_operands.v1", Workers: 2}
	for _, name := range []string{"witness", "masks", "quotient", "opening_a", "opening_r"} {
		path := filepath.Join(dir, name)
		data := encode(&g)
		digest := sha256.Sum256(data)
		if err := os.WriteFile(path, data, 0600); err != nil {
			t.Fatal(err)
		}
		m.Operations = append(m.Operations, operation{Name: name, Count: 1, Bases: fileIdentity{Path: path, SHA256: hex.EncodeToString(digest[:])}})
	}
	data, err := json.Marshal(m)
	if err != nil {
		t.Fatal(err)
	}
	if err = os.WriteFile(filepath.Join(dir, "manifest.json"), data, 0600); err != nil {
		t.Fatal(err)
	}
	bases, n, err := load(dir)
	if err != nil {
		t.Fatal(err)
	}
	if n != 5*96 || len(bases["commitment"]) != 2 || len(bases["opening"]) != 2 {
		t.Fatal("resident count")
	}
	if &bases["commitment"][0] != &bases["witness"][0] || &bases["commitment"][1] != &bases["quotient"][0] || &bases["opening"][0] != &bases["opening_a"][0] || &bases["opening"][1] != &bases["opening_r"][0] {
		t.Fatal("bases copied")
	}
	payload := make([]byte, 64)
	payload[31] = 3
	payload[63] = 7
	var r response
	output, err := compute(bases["opening"], payload, &r)
	if err != nil {
		t.Fatal(err)
	}
	p, err := point(output)
	if err != nil {
		t.Fatal(err)
	}
	var expected curve.G1Affine
	expected.ScalarMultiplication(&g, big.NewInt(10))
	if !p.Equal(&expected) {
		t.Fatal("combined result")
	}
}
