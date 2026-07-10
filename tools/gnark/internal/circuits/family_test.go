package circuits_test

import (
	"math/big"
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/backend"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/consensys/gnark/test"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

type circuitFamily struct {
	name            string
	circuit         func() frontend.Circuit
	assignment      func(t *testing.T) frontend.Circuit
	mutateStatement func(frontend.Circuit)
	mutateSemantic  func(frontend.Circuit)
}

func mutateFieldByOne(value frontend.Variable) frontend.Variable {
	switch v := value.(type) {
	case string:
		n, ok := new(big.Int).SetString(v, 10)
		if !ok {
			panic("invalid decimal frontend.Variable string")
		}
		return new(big.Int).Add(n, big.NewInt(1)).String()
	case *big.Int:
		return new(big.Int).Add(v, big.NewInt(1))
	case big.Int:
		return new(big.Int).Add(&v, big.NewInt(1))
	case int:
		return v + 1
	case int64:
		return v + 1
	case uint64:
		return v + 1
	default:
		panic("unsupported frontend.Variable type for mutation")
	}
}

func variableIsOne(value frontend.Variable) bool {
	switch v := value.(type) {
	case string:
		return v == "1"
	case *big.Int:
		return v.Cmp(big.NewInt(1)) == 0
	case big.Int:
		return v.Cmp(big.NewInt(1)) == 0
	case int:
		return v == 1
	case int64:
		return v == 1
	case uint64:
		return v == 1
	default:
		return false
	}
}

func testCircuitFamilies() []circuitFamily {
	return []circuitFamily{
		{
			name:    "transfer",
			circuit: func() frontend.Circuit { return circuits.NewTransferCircuit() },
			assignment: func(t *testing.T) frontend.Circuit {
				t.Helper()
				fixtureBytes := testfixtures.LoadTransferWitnessV1("transfer")
				assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV1(fixtureBytes)
				if err != nil {
					t.Fatalf("decode transfer witness fixture: %v", err)
				}
				return assignment
			},
			mutateStatement: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.TransferCircuit)
				a.ClaimedStatementHash = mutateFieldByOne(a.ClaimedStatementHash)
			},
			mutateSemantic: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.TransferCircuit)
				a.Compliance.SenderCore.Proof.Challenge = mutateFieldByOne(a.Compliance.SenderCore.Proof.Challenge)
			},
		},
		{
			name:    "consolidate2x1",
			circuit: func() frontend.Circuit { return circuits.NewConsolidateCircuit(2) },
			assignment: func(t *testing.T) frontend.Circuit {
				t.Helper()
				fixtureBytes := testfixtures.LoadConsolidateWitnessV1("consolidate2x1")
				assignment, _, err := abi.NewConsolidateCircuitAssignmentFromWitnessV1(fixtureBytes)
				if err != nil {
					t.Fatalf("decode consolidate witness fixture: %v", err)
				}
				return assignment
			},
			mutateStatement: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.NoteReshapeCircuit)
				a.ClaimedStatementHash = mutateFieldByOne(a.ClaimedStatementHash)
			},
			mutateSemantic: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.NoteReshapeCircuit)
				a.Spends[0].Nullifier = mutateFieldByOne(a.Spends[0].Nullifier)
			},
		},
		{
			name:    "split1x4",
			circuit: func() frontend.Circuit { return circuits.NewSplitCircuit(4) },
			assignment: func(t *testing.T) frontend.Circuit {
				t.Helper()
				fixtureBytes := testfixtures.LoadSplitWitnessV1("split1x4")
				assignment, _, err := abi.NewSplitCircuitAssignmentFromWitnessV1(fixtureBytes)
				if err != nil {
					t.Fatalf("decode split witness fixture: %v", err)
				}
				return assignment
			},
			mutateStatement: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.NoteReshapeCircuit)
				a.ClaimedStatementHash = mutateFieldByOne(a.ClaimedStatementHash)
			},
			mutateSemantic: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.NoteReshapeCircuit)
				a.Outputs[0].NoteCommitment = mutateFieldByOne(a.Outputs[0].NoteCommitment)
			},
		},
		{
			name:    "shielded_ics20_withdrawal",
			circuit: func() frontend.Circuit { return circuits.NewShieldedIcs20WithdrawalCircuit(2) },
			assignment: func(t *testing.T) frontend.Circuit {
				t.Helper()
				fixtureBytes := testfixtures.LoadShieldedIcs20WithdrawalWitnessV1("shielded_ics20_withdrawal")
				assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV1(fixtureBytes)
				if err != nil {
					t.Fatalf("decode shielded ICS-20 withdrawal witness fixture: %v", err)
				}
				return assignment
			},
			mutateStatement: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.ShieldedIcs20WithdrawalCircuit)
				a.ClaimedStatementHash = mutateFieldByOne(a.ClaimedStatementHash)
			},
			mutateSemantic: func(assignment frontend.Circuit) {
				a := assignment.(*circuits.ShieldedIcs20WithdrawalCircuit)
				a.WithdrawalEffectHashLo = mutateFieldByOne(a.WithdrawalEffectHashLo)
			},
		},
	}
}

type circuitStats struct {
	constraints int
	public      int
	secret      int
	internal    int
}

func compileCircuitFamilies() []struct {
	name    string
	circuit func() frontend.Circuit
	stats   circuitStats
} {
	return []struct {
		name    string
		circuit func() frontend.Circuit
		stats   circuitStats
	}{
		{
			name:    "transfer",
			circuit: func() frontend.Circuit { return circuits.NewTransferCircuit() },
			stats:   circuitStats{constraints: 251973, public: 2, secret: 542, internal: 224963},
		},
		{
			name:    "consolidate2x1",
			circuit: func() frontend.Circuit { return circuits.NewConsolidateCircuit(2) },
			stats:   circuitStats{constraints: 44665, public: 2, secret: 199, internal: 41691},
		},
		{
			name:    "consolidate4x1",
			circuit: func() frontend.Circuit { return circuits.NewConsolidateCircuit(4) },
			stats:   circuitStats{constraints: 76063, public: 2, secret: 379, internal: 71503},
		},
		{
			name:    "consolidate8x1",
			circuit: func() frontend.Circuit { return circuits.NewConsolidateCircuit(8) },
			stats:   circuitStats{constraints: 138419, public: 2, secret: 739, internal: 130687},
		},
		{
			name:    "split1x4",
			circuit: func() frontend.Circuit { return circuits.NewSplitCircuit(4) },
			stats:   circuitStats{constraints: 39484, public: 2, secret: 139, internal: 36256},
		},
		{
			name:    "split1x8",
			circuit: func() frontend.Circuit { return circuits.NewSplitCircuit(8) },
			stats:   circuitStats{constraints: 52628, public: 2, secret: 179, internal: 48004},
		},
		{
			name:    "shielded_ics20_withdrawal",
			circuit: func() frontend.Circuit { return circuits.NewShieldedIcs20WithdrawalCircuit(2) },
			stats:   circuitStats{constraints: 90718, public: 2, secret: 327, internal: 84196},
		},
	}
}

func TestCircuitFamiliesCompile(t *testing.T) {
	for _, family := range compileCircuitFamilies() {
		t.Run(family.name, func(t *testing.T) {
			ccs, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, family.circuit())
			if err != nil {
				t.Fatalf("compile %s circuit: %v", family.name, err)
			}
			stats := circuitStats{
				constraints: ccs.GetNbConstraints(),
				public:      ccs.GetNbPublicVariables(),
				secret:      ccs.GetNbSecretVariables(),
				internal:    ccs.GetNbInternalVariables(),
			}
			if stats != family.stats {
				t.Fatalf("unexpected %s circuit stats: got %+v, want %+v", family.name, stats, family.stats)
			}
		})
	}
}

func TestCircuitFamiliesAcceptValidAssignment(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		t.Run(family.name, func(t *testing.T) {
			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithValidAssignment(family.assignment(t)),
			)
		})
	}
}

func TestCircuitFamiliesRejectWrongStatementHash(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		t.Run(family.name, func(t *testing.T) {
			assignment := family.assignment(t)
			family.mutateStatement(assignment)

			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithInvalidAssignment(assignment),
			)
		})
	}
}

func TestCircuitFamiliesRejectMutatedComplianceField(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		t.Run(family.name, func(t *testing.T) {
			assignment := family.assignment(t)
			family.mutateSemantic(assignment)

			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithInvalidAssignment(assignment),
			)
		})
	}
}

func TestCircuitFamiliesRejectMutatedBalanceCommitment(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		t.Run(family.name, func(t *testing.T) {
			assignment := family.assignment(t)
			switch a := assignment.(type) {
			case *circuits.TransferCircuit:
				a.BalanceCommitment.X = mutateFieldByOne(a.BalanceCommitment.X)
			case *circuits.NoteReshapeCircuit:
				a.BalanceCommitment.X = mutateFieldByOne(a.BalanceCommitment.X)
			case *circuits.ShieldedIcs20WithdrawalCircuit:
				a.BalanceCommitment.X = mutateFieldByOne(a.BalanceCommitment.X)
			default:
				t.Fatalf("unsupported assignment type %T", assignment)
			}

			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithInvalidAssignment(assignment),
			)
		})
	}
}

func TestCircuitFamiliesRejectMutatedNullifier(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		t.Run(family.name, func(t *testing.T) {
			assignment := family.assignment(t)
			switch a := assignment.(type) {
			case *circuits.TransferCircuit:
				a.Spends[0].Nullifier = mutateFieldByOne(a.Spends[0].Nullifier)
			case *circuits.NoteReshapeCircuit:
				a.Spends[0].Nullifier = mutateFieldByOne(a.Spends[0].Nullifier)
			case *circuits.ShieldedIcs20WithdrawalCircuit:
				a.Spends[0].Nullifier = mutateFieldByOne(a.Spends[0].Nullifier)
			default:
				t.Fatalf("unsupported assignment type %T", assignment)
			}

			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithInvalidAssignment(assignment),
			)
		})
	}
}

func TestPaddedSpendCircuitsRejectMutatedDummyNullifierSeed(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		if family.name != "transfer" && family.name != "shielded_ics20_withdrawal" {
			continue
		}
		t.Run(family.name, func(t *testing.T) {
			assignment := family.assignment(t)
			mutated := false
			switch a := assignment.(type) {
			case *circuits.TransferCircuit:
				for i := range a.Spends {
					if variableIsOne(a.Spends[i].IsDummy) {
						a.Spends[i].DummyNullifierSeed = mutateFieldByOne(a.Spends[i].DummyNullifierSeed)
						mutated = true
						break
					}
				}
			case *circuits.ShieldedIcs20WithdrawalCircuit:
				for i := range a.Spends {
					if variableIsOne(a.Spends[i].IsDummy) {
						a.Spends[i].DummyNullifierSeed = mutateFieldByOne(a.Spends[i].DummyNullifierSeed)
						mutated = true
						break
					}
				}
			default:
				t.Fatalf("unsupported assignment type %T", assignment)
			}
			if !mutated {
				t.Skipf("%s fixture has no dummy spend to mutate", family.name)
			}

			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithInvalidAssignment(assignment),
			)
		})
	}
}

func TestTransferFamiliesRejectWrongReceiverOrdering(t *testing.T) {
	for _, family := range testCircuitFamilies() {
		if !strings.HasPrefix(family.name, "transfer") {
			continue
		}
		t.Run(family.name, func(t *testing.T) {
			assignment := family.assignment(t).(*circuits.TransferCircuit)
			assignment.Outputs[0].IsReceiver = 0
			if len(assignment.Outputs) > 1 {
				assignment.Outputs[1].IsReceiver = 1
			}

			assert := test.NewAssert(t)
			assert.CheckCircuit(
				family.circuit(),
				test.WithCurves(ecc.BLS12_377),
				test.WithBackends(backend.GROTH16),
				test.WithInvalidAssignment(assignment),
			)
		})
	}
}
