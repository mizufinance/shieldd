package main

import (
	"bufio"
	"bytes"
	"crypto/sha256"
	"encoding/binary"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io"
	"os"
	"path/filepath"
	"time"

	"github.com/consensys/gnark-crypto/ecc/bls12-377/fp"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	"github.com/consensys/gnark/backend/groth16"
	g16 "github.com/consensys/gnark/backend/groth16/bls12-377"
	"github.com/consensys/gnark/constraint"
	csbls "github.com/consensys/gnark/constraint/bls12-377"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/consensys/gnark/logger"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/artifacts"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/cshared"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

const workerSchema = "shieldd.proving_experiment.gnark_worker.v1"

// A bounded JSON header frames canonical binary witness, assignment or proof bytes.
type WorkerRequest struct {
	Schema       string `json:"schema"`
	Op           string `json:"op"`
	PayloadBytes uint32 `json:"payload_bytes"`
	Statement    string `json:"statement,omitempty"`
}
type WorkerResponse struct {
	Schema        string `json:"schema"`
	Op            string `json:"op"`
	PayloadBytes  uint32 `json:"payload_bytes"`
	Error         string `json:"error,omitempty"`
	Statement     string `json:"statement,omitempty"`
	CircuitSHA256 string `json:"circuit_sha256,omitempty"`
	Wires         int    `json:"wires,omitempty"`
	CompileNS     int64  `json:"compile_ns,omitempty"`
	KeyLoadNS     int64  `json:"key_load_ns,omitempty"`
	WitnessNS     int64  `json:"witness_ns,omitempty"`
	SolveNS       int64  `json:"solve_ns,omitempty"`
	ProveNS       int64  `json:"prove_ns,omitempty"`
	EncodeNS      int64  `json:"encode_ns,omitempty"`
	RequestNS     int64  `json:"request_ns,omitempty"`
	Verified      bool   `json:"verified,omitempty"`
}

func readRequest(reader io.Reader) (WorkerRequest, []byte, error) {
	var q WorkerRequest
	var size uint32
	if err := binary.Read(reader, binary.BigEndian, &size); err != nil {
		return q, nil, err
	}
	if size == 0 || size > 4096 {
		return q, nil, fmt.Errorf("invalid request header length")
	}
	header := make([]byte, size)
	if _, err := io.ReadFull(reader, header); err != nil {
		return q, nil, err
	}
	decoder := json.NewDecoder(bytes.NewReader(header))
	decoder.DisallowUnknownFields()
	if err := decoder.Decode(&q); err != nil {
		return q, nil, err
	}
	var extra any
	if err := decoder.Decode(&extra); err != io.EOF {
		return q, nil, fmt.Errorf("trailing request header")
	}
	if q.Schema != workerSchema || q.PayloadBytes > 1024*1024 {
		return q, nil, fmt.Errorf("invalid request schema or payload length")
	}
	payload := make([]byte, q.PayloadBytes)
	_, err := io.ReadFull(reader, payload)
	return q, payload, err
}
func writeResponse(writer *bufio.Writer, r WorkerResponse, payload []byte) error {
	r.Schema = workerSchema
	r.PayloadBytes = uint32(len(payload))
	header, err := json.Marshal(r)
	if err != nil {
		return err
	}
	if err := binary.Write(writer, binary.BigEndian, uint32(len(header))); err != nil {
		return err
	}
	if _, err := writer.Write(header); err != nil {
		return err
	}
	if _, err := writer.Write(payload); err != nil {
		return err
	}
	return writer.Flush()
}

type proverWorker struct {
	ccs   constraint.ConstraintSystem
	pk    *g16.ProvingKey
	vk    *g16.VerifyingKey
	wires int
}

func newWorker(mode, dir string) (*proverWorker, WorkerResponse, error) {
	w := new(proverWorker)
	r := WorkerResponse{Op: "ready"}
	start := time.Now()
	var err error
	w.ccs, err = frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewTransferCircuit())
	if err != nil {
		return nil, r, err
	}
	metadata, err := artifacts.LoadCircuitMetadata(dir)
	if err != nil {
		return nil, r, err
	}
	if err := artifacts.ValidateCircuitMetadataForCircuit(metadata, "transfer", w.ccs); err != nil {
		return nil, r, err
	}
	r.CircuitSHA256, err = artifacts.ConstraintSystemSHA256Hex(w.ccs)
	if err != nil {
		return nil, r, err
	}
	w.wires = w.ccs.GetNbPublicVariables() + w.ccs.GetNbSecretVariables() + w.ccs.GetNbInternalVariables()
	r.Wires = w.wires
	r.CompileNS = time.Since(start).Nanoseconds()
	if mode == "A" {
		start = time.Now()
		keyPath := filepath.Join(dir, "proving_key.bin")
		data, err := os.ReadFile(keyPath)
		if err != nil {
			return nil, r, err
		}
		if err := artifacts.ValidateProvingKeyBytes(metadata, data); err != nil {
			return nil, r, err
		}
		w.pk, err = artifacts.ReadProvingKeyStrict(bytes.NewReader(data))
		if err != nil {
			return nil, r, err
		}
		verifyingBytes, err := os.ReadFile(filepath.Join(dir, "verifying_key.bin"))
		if err != nil {
			return nil, r, err
		}
		verifyingHash := sha256.Sum256(verifyingBytes)
		if int64(len(verifyingBytes)) != metadata.VerifyingKeySize || hex.EncodeToString(verifyingHash[:]) != metadata.VerifyingKeyBinarySHA256Hex {
			return nil, r, fmt.Errorf("verifying key differs from circuit metadata")
		}
		w.vk, err = artifacts.ReadVerifyingKeyStrict(bytes.NewReader(verifyingBytes))
		if err != nil {
			return nil, r, err
		}
		r.KeyLoadNS = time.Since(start).Nanoseconds()
	}
	return w, r, nil
}
func (w *proverWorker) handle(q WorkerRequest, payload []byte) (WorkerResponse, []byte, error) {
	r := WorkerResponse{Op: q.Op}
	total := time.Now()
	if q.Op == "verify" {
		if w.vk == nil {
			return r, nil, fmt.Errorf("Groth16 verifier not loaded")
		}
		err := verifyPacked(payload, q.Statement, w.vk)
		r.Verified = err == nil
		return r, nil, err
	}
	if q.Op != "prove" && q.Op != "solve" {
		return r, nil, fmt.Errorf("unknown operation")
	}
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitness(payload)
	if err != nil {
		return r, nil, err
	}
	full, err := frontend.NewWitness(assignment, primitives.ScalarField())
	if err != nil {
		return r, nil, err
	}
	decoded, _, err := abi.DecodeTransferWitness(payload)
	if err != nil {
		return r, nil, err
	}
	r.Statement = hex.EncodeToString(decoded.ClaimedStatementHash[:])
	r.WitnessNS = time.Since(total).Nanoseconds()
	start := time.Now()
	var output []byte
	if q.Op == "solve" {
		solved, err := w.ccs.Solve(full)
		if err != nil {
			return r, nil, err
		}
		r.SolveNS = time.Since(start).Nanoseconds()
		start = time.Now()
		values := solved.(*csbls.R1CSSolution).W
		if len(values) != w.wires {
			return r, nil, fmt.Errorf("solved wire count mismatch")
		}
		output = make([]byte, 32*len(values))
		for i := range values {
			be := values[i].Bytes()
			for j := range be {
				output[32*i+j] = be[31-j]
			}
		}
	} else {
		if w.pk == nil {
			return r, nil, fmt.Errorf("Groth16 key not loaded")
		}
		proof, err := groth16.Prove(w.ccs, w.pk, full)
		if err != nil {
			return r, nil, err
		}
		// The shipping gnark prover includes solving; there is no preceding Solve here.
		r.ProveNS = time.Since(start).Nanoseconds()
		start = time.Now()
		output, err = cshared.PackProofResult("PTPR", decoded.ClaimedStatementHash, proof.(*g16.Proof), 0)
		if err != nil {
			return r, nil, err
		}
	}
	r.EncodeNS = time.Since(start).Nanoseconds()
	r.RequestNS = time.Since(total).Nanoseconds()
	return r, output, nil
}

func verifyPacked(payload []byte, expected string, vk *g16.VerifyingKey) error {
	const size = 52 + 8*48
	if len(payload) != size || string(payload[:4]) != "PTPR" || binary.LittleEndian.Uint32(payload[4:8]) != size || binary.LittleEndian.Uint32(payload[8:12]) != 0 || binary.LittleEndian.Uint64(payload[12:20]) != 0 {
		return fmt.Errorf("invalid packed proof framing")
	}
	statement, err := hex.DecodeString(expected)
	if err != nil || len(statement) != 32 || !bytes.Equal(statement, payload[20:52]) {
		return fmt.Errorf("proof statement differs from request")
	}
	var public fr.Element
	be := append([]byte(nil), statement...)
	for i := 0; i < 16; i++ {
		be[i], be[31-i] = be[31-i], be[i]
	}
	if err := public.SetBytesCanonical(be); err != nil {
		return err
	}
	proof := new(g16.Proof)
	coordinates := []*fp.Element{&proof.Ar.X, &proof.Ar.Y, &proof.Bs.X.A0, &proof.Bs.X.A1, &proof.Bs.Y.A0, &proof.Bs.Y.A1, &proof.Krs.X, &proof.Krs.Y}
	for i, coordinate := range coordinates {
		if err := coordinate.SetBytesCanonical(payload[52+48*i : 52+48*(i+1)]); err != nil {
			return err
		}
	}
	if !proof.Ar.IsInSubGroup() || !proof.Bs.IsInSubGroup() || !proof.Krs.IsInSubGroup() {
		return fmt.Errorf("invalid proof subgroup")
	}
	return g16.Verify(proof, vk, fr.Vector{public})
}

func serve(mode, dir string) error {
	if mode != "A" && mode != "B" {
		return fmt.Errorf("worker mode must be A or B")
	}
	logger.Disable()
	writer := bufio.NewWriter(os.Stdout)
	reader := bufio.NewReader(os.Stdin)
	w, ready, err := newWorker(mode, dir)
	if err != nil {
		ready.Error = err.Error()
		_ = writeResponse(writer, ready, nil)
		return err
	}
	if err := writeResponse(writer, ready, nil); err != nil {
		return err
	}
	for {
		q, payload, err := readRequest(reader)
		if err == io.EOF {
			return nil
		}
		if err != nil {
			return err
		}
		r, output, err := w.handle(q, payload)
		if err != nil {
			r.Error = err.Error()
			output = nil
		}
		if err := writeResponse(writer, r, output); err != nil {
			return err
		}
	}
}
