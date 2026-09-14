package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-381"
	"github.com/consensys/gnark-crypto/ecc/bls12-381/fp"
	"github.com/consensys/gnark-crypto/ecc/bls12-381/fr"
	"math/big"
	"os"
	"path/filepath"
	"testing"
)

func TestCheckedCompressedCodecAndMSM(t *testing.T) {
	_, _, g, _ := curve.Generators()
	var zero, minus curve.G1Affine
	zero.SetInfinity()
	minus.Neg(&g)
	for _, p := range []curve.G1Affine{g, zero, minus} {
		b := encode(&p)
		q, err := point(b)
		if err != nil || !q.Equal(&p) {
			t.Fatal("roundtrip", err)
		}
	}
	bad := make([]byte, 48)
	bad[0] = 0xc0
	bad[47] = 1
	if _, err := point(bad); err == nil {
		t.Fatal("noncanonical infinity")
	}
	bad = make([]byte, 48)
	bad[0] = 0x80
	if _, err := point(bad); err == nil {
		t.Fatal("torsion point accepted")
	}
	fp.Modulus().FillBytes(bad)
	bad[0] |= 0x80
	if _, err := point(bad); err == nil {
		t.Fatal("noncanonical field")
	}
	if _, err := point(encode(&g)[:47]); err == nil {
		t.Fatal("truncated point")
	}
	payload := make([]byte, 96)
	payload[31] = 3
	payload[63] = 7
	payload[95] = 2
	var r response
	b, err := compute([]curve.G1Affine{g, zero, minus}, payload, &r)
	if err != nil {
		t.Fatal(err)
	}
	q, err := point(b)
	if err != nil || !q.Equal(&g) {
		t.Fatal("actual MSM", err)
	}
	fr.Modulus().FillBytes(payload[:32])
	if _, err := compute([]curve.G1Affine{g, zero, minus}, payload, &r); err == nil {
		t.Fatal("noncanonical scalar")
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
	m := manifest{Schema: "shieldd.native_experiment.gnark381_operands.v1", Workers: 2, Curve: "bls12_381"}
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
