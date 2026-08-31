package circuits

import (
	"bytes"
	"os"
	"runtime"
	"testing"
	"time"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/backend/groth16"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
)

func profileSeizureGroth16(
	t *testing.T,
	name string,
	template frontend.Circuit,
	assignment frontend.Circuit,
) {
	t.Helper()

	started := time.Now()
	ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, template)
	if err != nil {
		t.Fatalf("compile %s: %v", name, err)
	}
	compileDuration := time.Since(started)

	started = time.Now()
	pk, vk, err := groth16.Setup(ccs)
	if err != nil {
		t.Fatalf("setup %s: %v", name, err)
	}
	setupDuration := time.Since(started)

	witness, err := frontend.NewWitness(assignment, ecc.BLS12_377.ScalarField())
	if err != nil {
		t.Fatalf("build %s witness: %v", name, err)
	}
	publicWitness, err := witness.Public()
	if err != nil {
		t.Fatalf("build %s public witness: %v", name, err)
	}

	runtime.GC()
	var before runtime.MemStats
	runtime.ReadMemStats(&before)
	started = time.Now()
	proof, err := groth16.Prove(ccs, pk, witness)
	if err != nil {
		t.Fatalf("prove %s: %v", name, err)
	}
	proveDuration := time.Since(started)
	var after runtime.MemStats
	runtime.ReadMemStats(&after)

	started = time.Now()
	if err := groth16.Verify(proof, vk, publicWitness); err != nil {
		t.Fatalf("verify %s: %v", name, err)
	}
	verifyDuration := time.Since(started)

	var encoded bytes.Buffer
	if _, err := proof.WriteTo(&encoded); err != nil {
		t.Fatalf("encode %s proof: %v", name, err)
	}
	t.Logf(
		"%s constraints=%d compile=%s setup=%s prove=%s verify=%s proof_bytes=%d prove_total_alloc_bytes=%d",
		name,
		ccs.GetNbConstraints(),
		compileDuration,
		setupDuration,
		proveDuration,
		verifyDuration,
		encoded.Len(),
		after.TotalAlloc-before.TotalAlloc,
	)
}

func TestSeizureGroth16Profile(t *testing.T) {
	if os.Getenv("SHIELDD_SEIZURE_BENCH") != "1" {
		t.Skip("set SHIELDD_SEIZURE_BENCH=1 to run seizure Groth16 profiling")
	}

	t.Run("scan_16_records", func(t *testing.T) {
		profileSeizureGroth16(t, "scan_16_records", &SeizureScanCircuit{}, seizureScanAssignment(t))
	})
	t.Run("classify_one_candidate", func(t *testing.T) {
		profileSeizureGroth16(
			t,
			"classify_one_candidate",
			&SeizureClassifyCircuit{},
			seizureClassifyAssignment(t, true),
		)
	})
}
