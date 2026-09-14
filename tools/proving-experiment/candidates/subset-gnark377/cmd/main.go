package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"math/bits"
	"os"
	"runtime"
	"time"

	"github.com/consensys/gnark-crypto/ecc"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark-crypto/ecc/bls12-377/fr"
	g16 "github.com/consensys/gnark/backend/groth16/bls12-377"
	cs "github.com/consensys/gnark/constraint/bls12-377"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/consensys/gnark/logger"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/artifacts"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type Fixture struct {
	Scenario string `json:"scenario"`
	Path     string `json:"path"`
	SHA256   string `json:"sha256"`
}
type Sample struct {
	Scenario  string `json:"scenario"`
	Stage     string `json:"stage"`
	Variant   string `json:"variant"`
	Iteration int    `json:"iteration"`
	Measured  bool   `json:"measured"`
	NS        int64  `json:"ns"`
}
type Result struct {
	Schema        string    `json:"schema"`
	CircuitSHA256 string    `json:"circuit_sha256"`
	KeySHA256     string    `json:"key_sha256"`
	Fixtures      []Fixture `json:"fixtures"`
	Rows          int       `json:"rows"`
	FFT           int       `json:"fft"`
	Retained      int       `json:"retained"`
	Gates         int       `json:"gates"`
	Samples       []Sample  `json:"samples"`
	MSMBoundary   string    `json:"msm_boundary"`
}

func hash(b []byte) string { v := sha256.Sum256(b); return hex.EncodeToString(v[:]) }
func run() error {
	if len(os.Args) != 4 {
		return fmt.Errorf("usage: subsetcost FIXTURES_JSON BASELINE_KEY NEW_OUTPUT_JSON")
	}
	logger.Disable()
	if os.Getenv("GOMAXPROCS") != "2" {
		return fmt.Errorf("two workers required")
	}
	payload, err := os.ReadFile(os.Args[1])
	if err != nil {
		return err
	}
	var fixtures []Fixture
	if err = json.Unmarshal(payload, &fixtures); err != nil {
		return err
	}
	if len(fixtures) != 6 {
		return fmt.Errorf("six fixtures required")
	}
	ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewTransferCircuit())
	if err != nil {
		return err
	}
	digest, err := artifacts.ConstraintSystemSHA256Hex(ccs)
	if err != nil {
		return err
	}
	if digest != "cc0dc2091c86777dfd21128b974d1a51f959ce0599211d90a022e5c3d9e27bde" || ccs.GetNbConstraints() != 155122 {
		return fmt.Errorf("unexpected Transfer relation")
	}
	key, err := os.ReadFile(os.Args[2])
	if err != nil {
		return err
	}
	pk, err := artifacts.ReadProvingKeyStrict(bytes.NewReader(key))
	if err != nil {
		return err
	}
	const n = 262144
	const m = 196608
	if pk.Domain.Cardinality != n || len(pk.G1.Z) != n-1 {
		return fmt.Errorf("unexpected baseline domain")
	}
	experiment, err := g16.NewSubsetExperiment(n)
	if err != nil {
		return err
	}
	result := Result{Schema: "shieldd.gnark_subset.cost.v1", CircuitSHA256: digest, KeySHA256: hash(key), Fixtures: fixtures, Rows: ccs.GetNbConstraints(), FFT: n, Retained: m,
		MSMBoundary: "Existing baseline Z query and actual baseline H scalars; filtered bit-reversed degrees<M-1 approximate the shorter query cost only. These are not subset setup points, a subset proof or a full API result."}
	for _, f := range fixtures {
		payload, err := os.ReadFile(f.Path)
		if err != nil {
			return err
		}
		if hash(payload) != f.SHA256 {
			return fmt.Errorf("witness identity")
		}
		assignment, _, err := abi.NewTransferCircuitAssignmentFromWitness(payload)
		if err != nil {
			return err
		}
		witness, err := frontend.NewWitness(assignment, primitives.ScalarField())
		if err != nil {
			return err
		}
		solved, err := ccs.Solve(witness)
		if err != nil {
			return err
		}
		s := solved.(*cs.R1CSSolution)
		if err := experiment.Check(s.A, s.B, s.C); err != nil {
			return fmt.Errorf("%s: %w", f.Scenario, err)
		}
		for _, i := range []int{0, len(s.C) - 1} {
			bad := append([]fr.Element(nil), s.C...)
			one := fr.One()
			bad[i].Add(&bad[i], &one)
			if _, err := experiment.Polynomial(s.A, s.B, bad); err == nil {
				return fmt.Errorf("altered boundary row accepted")
			}
		}
		result.Gates++
		var h []fr.Element
		for i := 0; i < 8; i++ {
			order := []string{"baseline", "subset"}
			if i%2 == 1 {
				order[0], order[1] = order[1], order[0]
			}
			for _, variant := range order {
				start := time.Now()
				if variant == "baseline" {
					h = experiment.BaselinePolynomial(s.A, s.B, s.C)
				} else {
					_, err = experiment.Polynomial(s.A, s.B, s.C)
				}
				elapsed := time.Since(start).Nanoseconds()
				if err != nil {
					return err
				}
				result.Samples = append(result.Samples, Sample{f.Scenario, "polynomial", variant, i, i >= 3, elapsed})
			}
		}
		if f.Scenario == "transfer" {
			shortBases := make([]curve.G1Affine, 0, m-1)
			shortScalars := make([]fr.Element, 0, m-1)
			shift := uint(bits.UintSize - bits.TrailingZeros(uint(n)))
			for i := range pk.G1.Z {
				if int(bits.Reverse(uint(i))>>shift) < m-1 {
					shortBases = append(shortBases, pk.G1.Z[i])
					shortScalars = append(shortScalars, h[i])
				}
			}
			for i := 0; i < 8; i++ {
				order := []string{"baseline", "subset_count_projection"}
				if i%2 == 1 {
					order[0], order[1] = order[1], order[0]
				}
				for _, variant := range order {
					bases, scalars := pk.G1.Z, h[:n-1]
					if variant != "baseline" {
						bases, scalars = shortBases, shortScalars
					}
					var point curve.G1Jac
					start := time.Now()
					_, err = point.MultiExp(bases, scalars, ecc.MultiExpConfig{NbTasks: runtime.NumCPU() / 2})
					elapsed := time.Since(start).Nanoseconds()
					if err != nil {
						return err
					}
					if point.Z.IsZero() {
						return fmt.Errorf("unexpected zero diagnostic MSM")
					}
					result.Samples = append(result.Samples, Sample{f.Scenario, "z_query_msm", variant, i, i >= 3, elapsed})
				}
			}
		}
		fmt.Printf("%s: exact quotient and boundary gates passed\n", f.Scenario)
	}
	file, err := os.OpenFile(os.Args[3], os.O_WRONLY|os.O_CREATE|os.O_EXCL, 0600)
	if err != nil {
		return err
	}
	defer file.Close()
	enc := json.NewEncoder(file)
	enc.SetIndent("", "  ")
	return enc.Encode(result)
}
func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}
