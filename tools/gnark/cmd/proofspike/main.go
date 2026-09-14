// Development-only JSONL worker for the real Transfer proof comparison.
package main

import (
	"bufio"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"syscall"
	"time"

	"github.com/consensys/gnark/backend/groth16"
	groth16bls "github.com/consensys/gnark/backend/groth16/bls12-377"
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
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

var scenarios = []string{"transfer", "transfer_unregulated", "transfer_flagged", "transfer_accumulating", "transfer_over_limit_disclosure", "transfer_accumulator_continuation", "transfer_accumulator_over_limit"}

type request struct {
	Op       string `json:"op"`
	Scenario string `json:"scenario"`
	Path     string `json:"path"`
}

type metadata struct {
	Schema        string `json:"schema"`
	Modulus       string `json:"modulus"`
	Constraints   int    `json:"constraints"`
	Public        int    `json:"public"`
	Secret        int    `json:"secret"`
	Internal      int    `json:"internal"`
	CircuitSHA256 string `json:"circuit_sha256"`
}

type response struct {
	PeakRSSBytes  int64     `json:"peak_rss_bytes"`
	Error         string    `json:"error,omitempty"`
	Metadata      *metadata `json:"metadata,omitempty"`
	Scenario      string    `json:"scenario,omitempty"`
	WitnessSHA256 string    `json:"witness_sha256,omitempty"`
	// Scalars are fixed-width canonical little-endian hex, in gnark wire order.
	Assignment string `json:"assignment,omitempty"`
	Statement  string `json:"statement,omitempty"`
	Proof      string `json:"proof,omitempty"`
	CompileNS  int64  `json:"compile_ns,omitempty"`
	KeyLoadNS  int64  `json:"key_load_ns,omitempty"`
	WitnessNS  int64  `json:"witness_ns,omitempty"`
	SolveNS    int64  `json:"solve_ns,omitempty"`
	ProveNS    int64  `json:"prove_ns,omitempty"`
	EncodeNS   int64  `json:"encode_ns,omitempty"`
}

type worker struct {
	ccs  constraint.ConstraintSystem
	pk   *groth16bls.ProvingKey
	dir  string
	meta *metadata
}

func (w *worker) handle(q request) (r response, err error) {
	if q.Op == "init" {
		start := time.Now()
		w.ccs, err = frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewTransferCircuit())
		if err != nil {
			return r, err
		}
		r.CompileNS = time.Since(start).Nanoseconds()
		md, err := artifacts.LoadCircuitMetadata(w.dir)
		if err != nil {
			return r, err
		}
		if err = artifacts.ValidateCircuitMetadataForCircuit(md, "transfer", w.ccs); err != nil {
			return r, err
		}
		hash, err := artifacts.ConstraintSystemSHA256Hex(w.ccs)
		if err != nil {
			return r, err
		}
		w.meta = &metadata{"shieldd.proof_spike.assignment.v1", w.ccs.Field().String(), w.ccs.GetNbConstraints(), w.ccs.GetNbPublicVariables(), w.ccs.GetNbSecretVariables(), w.ccs.GetNbInternalVariables(), hash}
		r.Metadata = w.meta
		return r, nil
	}
	if w.ccs == nil {
		return r, fmt.Errorf("init required")
	}
	if q.Op == "export" {
		if q.Path == "" {
			return r, fmt.Errorf("export path required")
		}
		err = artifacts.WriteConstraintSystem(q.Path, w.ccs)
		r.Metadata = w.meta
		return r, err
	}
	if q.Op == "load_key" {
		start := time.Now()
		data, err := os.ReadFile(filepath.Join(w.dir, "proving_key.bin"))
		if err != nil {
			return r, err
		}
		md, err := artifacts.LoadCircuitMetadata(w.dir)
		if err != nil {
			return r, err
		}
		if err = artifacts.ValidateProvingKeyBytes(md, data); err != nil {
			return r, err
		}
		w.pk, err = artifacts.LoadProvingKeyStrict(filepath.Join(w.dir, "proving_key.bin"))
		r.KeyLoadNS = time.Since(start).Nanoseconds()
		return r, err
	}
	if q.Op != "solve" && q.Op != "prove" {
		return r, fmt.Errorf("unknown op %q", q.Op)
	}
	if !validScenario(q.Scenario) {
		return r, fmt.Errorf("unknown scenario %q", q.Scenario)
	}
	start := time.Now()
	var payload []byte
	if q.Scenario == "transfer_over_limit_disclosure" {
		payload, err = os.ReadFile(q.Path)
		if err != nil {
			return r, err
		}
	} else {
		payload = testfixtures.LoadTransferWitness(q.Scenario)
	}
	digest := sha256.Sum256(payload)
	r.WitnessSHA256 = hex.EncodeToString(digest[:])
	r.Scenario = q.Scenario
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitness(payload)
	if err != nil {
		return r, err
	}
	full, err := frontend.NewWitness(assignment, primitives.ScalarField())
	if err != nil {
		return r, err
	}
	decoded, _, err := abi.DecodeTransferWitness(payload)
	if err != nil {
		return r, err
	}
	r.Statement = hex.EncodeToString(decoded.ClaimedStatementHash[:])
	r.WitnessNS = time.Since(start).Nanoseconds()
	start = time.Now()
	if q.Op == "solve" {
		solved, err := w.ccs.Solve(full)
		if err != nil {
			return r, err
		}
		r.SolveNS = time.Since(start).Nanoseconds()
		start = time.Now()
		values := solved.(*csbls.R1CSSolution).W
		if len(values) != w.meta.Public+w.meta.Secret+w.meta.Internal {
			return r, fmt.Errorf("assignment length mismatch")
		}
		canonical := make([]byte, 32*len(values))
		for i := range values {
			be := values[i].Bytes()
			for j := range be {
				canonical[32*i+j] = be[31-j]
			}
		}
		r.Assignment = hex.EncodeToString(canonical)
	} else {
		if w.pk == nil {
			return r, fmt.Errorf("load_key required")
		}
		proof, err := groth16.Prove(w.ccs, w.pk, full)
		if err != nil {
			return r, err
		}
		// gnark Prove includes solving; never add a second Solve to this path.
		r.ProveNS = time.Since(start).Nanoseconds()
		start = time.Now()
		packed, err := cshared.PackProofResult("PTPR", decoded.ClaimedStatementHash, proof.(*groth16bls.Proof), 0)
		if err != nil {
			return r, err
		}
		r.Proof = hex.EncodeToString(packed)
	}
	r.EncodeNS = time.Since(start).Nanoseconds()
	return r, nil
}

func validScenario(s string) bool {
	for _, known := range scenarios {
		if s == known {
			return true
		}
	}
	return false
}

func main() {
	logger.Disable()
	if len(os.Args) != 2 {
		fmt.Fprintln(os.Stderr, "usage: proofspike ARTIFACT_DIRECTORY")
		os.Exit(2)
	}
	w := worker{dir: os.Args[1]}
	scanner := bufio.NewScanner(os.Stdin)
	encoder := json.NewEncoder(os.Stdout)
	for scanner.Scan() {
		var q request
		var r response
		err := json.Unmarshal(scanner.Bytes(), &q)
		if err == nil {
			r, err = w.handle(q)
		}
		if err != nil {
			r = response{Error: err.Error()}
		}
		var usage syscall.Rusage
		if err := syscall.Getrusage(syscall.RUSAGE_SELF, &usage); err != nil {
			panic(err)
		}
		r.PeakRSSBytes = usage.Maxrss
		if err = encoder.Encode(r); err != nil {
			panic(err)
		}
	}
	if err := scanner.Err(); err != nil {
		panic(err)
	}
}
