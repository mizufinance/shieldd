package main

import (
	"encoding/hex"
	"math/big"
	"path/filepath"
	"testing"

	"github.com/consensys/gnark/frontend"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

func TestFullSolvedTransferAssignment(t *testing.T) {
	w := worker{dir: filepath.Join("..", "..", "artifacts", "transfer")}
	initialized, err := w.handle(request{Op: "init"})
	if err != nil {
		t.Fatal(err)
	}
	if initialized.Metadata.Public != 2 {
		t.Fatal("public shape changed")
	}
	for _, scenario := range []string{"transfer", "transfer_unregulated", "transfer_flagged", "transfer_accumulating", "transfer_accumulator_continuation"} {
		solved, err := w.handle(request{Op: "solve", Scenario: scenario})
		if err != nil {
			t.Fatalf("%s: %v", scenario, err)
		}
		bytes, err := hex.DecodeString(solved.Assignment)
		if err != nil {
			t.Fatal(err)
		}
		if len(bytes) != 32*(w.meta.Public+w.meta.Secret+w.meta.Internal) {
			t.Fatal("full wire count")
		}
		if primitives.LittleEndianBytesToBigInt(bytes[:32]).Cmp(big.NewInt(1)) != 0 {
			t.Fatal("constant wire")
		}
		if hex.EncodeToString(bytes[32:64]) != solved.Statement {
			t.Fatal("public statement ordering")
		}
	}
	if _, err := w.handle(request{Op: "solve", Scenario: "transfer_accumulator_over_limit"}); err == nil {
		t.Fatal("invalid accumulator accepted")
	}
	if _, err := w.handle(request{Op: "solve", Scenario: "unknown"}); err == nil {
		t.Fatal("unknown scenario accepted")
	}
	for _, mutate := range []func(*testing.T){
		func(t *testing.T) {
			assignment, _, err := abi.NewTransferCircuitAssignmentFromWitness(testfixtures.LoadTransferWitness("transfer"))
			if err != nil {
				t.Fatal(err)
			}
			assignment.ClaimedStatementHash = 0
			full, err := frontend.NewWitness(assignment, primitives.ScalarField())
			if err != nil {
				t.Fatal(err)
			}
			if _, err := w.ccs.Solve(full); err == nil {
				t.Fatal("altered constrained hash accepted")
			}
		},
	} {
		mutate(t)
	}
}

func TestWorkerRequiresInitialization(t *testing.T) {
	w := worker{}
	if _, err := w.handle(request{Op: "solve", Scenario: "transfer"}); err == nil {
		t.Fatal("uninitialized solve accepted")
	}
}
