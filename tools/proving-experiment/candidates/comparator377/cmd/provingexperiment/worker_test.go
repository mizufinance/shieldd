package main

import (
	"bytes"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"testing"

	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
)

func frame(header []byte, payload []byte) []byte {
	var data bytes.Buffer
	_ = binary.Write(&data, binary.BigEndian, uint32(len(header)))
	data.Write(header)
	data.Write(payload)
	return data.Bytes()
}
func TestWorkerFramesRejectMalformedAndOversizedInputs(t *testing.T) {
	header, _ := json.Marshal(WorkerRequest{Schema: workerSchema, Op: "solve", PayloadBytes: 3})
	valid := frame(header, []byte{1, 2, 3})
	q, payload, err := readRequest(bytes.NewReader(valid))
	if err != nil || q.Op != "solve" || !bytes.Equal(payload, []byte{1, 2, 3}) {
		t.Fatalf("valid frame: %v", err)
	}
	for _, data := range [][]byte{valid[:len(valid)-1], frame([]byte(`{"schema":"wrong","op":"solve","payload_bytes":0}`), nil), frame(append(append([]byte(nil), header...), []byte(` {}`)...), nil), frame([]byte(`{"schema":"shieldd.proving_experiment.gnark_worker.v1","op":"solve","payload_bytes":1048577}`), nil), frame([]byte(`{"schema":"shieldd.proving_experiment.gnark_worker.v1","op":"solve","payload_bytes":0,"extra":1}`), nil)} {
		if _, _, err := readRequest(bytes.NewReader(data)); err == nil {
			t.Fatal("malformed frame accepted")
		}
	}
	var oversized bytes.Buffer
	_ = binary.Write(&oversized, binary.BigEndian, uint32(4097))
	if _, _, err := readRequest(&oversized); err == nil {
		t.Fatal("oversized header accepted")
	}
}
func TestPackedProofRejectsNoncanonicalCoordinatesBeforeVerification(t *testing.T) {
	data := make([]byte, 436)
	copy(data, "PTPR")
	binary.LittleEndian.PutUint32(data[4:8], uint32(len(data)))
	expected := hex.EncodeToString(data[20:52])
	fp.Modulus().FillBytes(data[52:100])
	if err := verifyPacked(data, expected, nil); err == nil {
		t.Fatal("noncanonical coordinate accepted")
	}
	if err := verifyPacked(data[:435], expected, nil); err == nil {
		t.Fatal("truncated proof accepted")
	}
	data[20] = 1
	if err := verifyPacked(data, expected, nil); err == nil {
		t.Fatal("changed statement accepted")
	}
}
