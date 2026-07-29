package circuits_test

import (
	"fmt"
	"math/big"
	"os"
	"path/filepath"
	"reflect"
	"regexp"
	"runtime"
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/constraint"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
	"golang.org/x/crypto/blake2b"
)

func loadNoteReshapeRegressionAssignment(t *testing.T, label string) *circuits.NoteReshapeCircuit {
	t.Helper()
	assignment, _, err := abi.NewNoteReshapeCircuitAssignmentFromWitnessV3(
		testfixtures.LoadNoteReshapeWitnessV3(label),
	)
	if err != nil {
		t.Fatalf("decode %s witness fixture: %v", label, err)
	}
	return assignment
}

func compileNoteReshapeRegressionCircuit(t *testing.T, label string, nIn, nOut int) constraint.ConstraintSystem {
	t.Helper()
	ccs, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		circuits.NewNoteReshapeCircuit(label, nIn, nOut),
	)
	if err != nil {
		t.Fatalf("compile %s circuit: %v", label, err)
	}
	return ccs
}

func noteReshapeAssignmentSolved(t *testing.T, ccs constraint.ConstraintSystem, assignment *circuits.NoteReshapeCircuit) error {
	t.Helper()
	witness, err := frontend.NewWitness(assignment, ecc.BLS12_377.ScalarField())
	if err != nil {
		return fmt.Errorf("build witness: %w", err)
	}
	return ccs.IsSolved(witness)
}

func noteReshapeDomainHashNative(fields []*big.Int, label string) (*big.Int, error) {
	constant := func(suffix string) *big.Int {
		// Statement domains use BLAKE2b-512, and are reduced by the same
		// little-endian conversion as the production native helper.
		domain := fmt.Sprintf("shieldd.shielded_pool.%s.public_input_hash.%s", label, suffix)
		sum := blake2b.Sum512([]byte(domain))
		value := primitives.LittleEndianBytesToBigInt(sum[:])
		return value
	}
	if len(fields) == 0 {
		return nil, fmt.Errorf("empty statement field list")
	}

	pad0 := constant("pad0")
	pad1 := constant("pad1")
	domain := constant("v1")
	first := [7]*big.Int{pad0, pad1, pad0, pad1, pad0, pad1, pad0}
	for i := 0; i < len(first) && i < len(fields); i++ {
		first[i] = fields[i]
	}
	h, err := primitives.Poseidon377Hash7Native(domain, first)
	if err != nil {
		return nil, err
	}
	idx := len(first)
	for idx+6 <= len(fields) {
		h, err = primitives.Poseidon377Hash7Native(domain, [7]*big.Int{
			h,
			fields[idx],
			fields[idx+1],
			fields[idx+2],
			fields[idx+3],
			fields[idx+4],
			fields[idx+5],
		})
		if err != nil {
			return nil, err
		}
		idx += 6
	}
	if idx < len(fields) {
		tail := [6]*big.Int{pad0, pad1, pad0, pad1, pad0, pad1}
		for i, value := range fields[idx:] {
			tail[i] = value
		}
		return primitives.Poseidon377Hash7Native(domain, [7]*big.Int{
			h,
			tail[0],
			tail[1],
			tail[2],
			tail[3],
			tail[4],
			tail[5],
		})
	}
	return h, nil
}

func TestNoteReshape1x8BindsEveryOutputCommitment(t *testing.T) {
	ccs := compileNoteReshapeRegressionCircuit(t, "note_reshape1x8", 1, 8)
	for outputIndex := 0; outputIndex < 8; outputIndex++ {
		t.Run(fmt.Sprintf("output_%d", outputIndex), func(t *testing.T) {
			assignment := loadNoteReshapeRegressionAssignment(t, "note_reshape1x8")
			assignment.Outputs[outputIndex].NoteCommitment = mutateFieldByOne(
				assignment.Outputs[outputIndex].NoteCommitment,
			)
			if err := noteReshapeAssignmentSolved(t, ccs, assignment); err == nil {
				t.Fatalf("mutating output %d commitment must invalidate the 1x8 witness", outputIndex)
			}
		})
	}
}

func TestNoteReshape1x8PaddedOutputFieldsAreBound(t *testing.T) {
	ccs := compileNoteReshapeRegressionCircuit(t, "note_reshape1x8", 1, 8)
	base := loadNoteReshapeRegressionAssignment(t, "note_reshape1x8")
	paddedIndex := -1
	for index, output := range base.Outputs {
		if variableIsZero(output.Note.Amount) {
			paddedIndex = index
			break
		}
	}
	if paddedIndex < 0 {
		t.Fatal("note_reshape1x8 fixture must contain a padded output")
	}

	mutations := []struct {
		name   string
		mutate func(*circuits.NoteReshapeCircuit)
	}{
		{name: "amount", mutate: func(c *circuits.NoteReshapeCircuit) {
			c.Outputs[paddedIndex].Note.Amount = mutateFieldByOne(c.Outputs[paddedIndex].Note.Amount)
		}},
		{name: "blinding", mutate: func(c *circuits.NoteReshapeCircuit) {
			c.Outputs[paddedIndex].Note.Blinding = mutateFieldByOne(c.Outputs[paddedIndex].Note.Blinding)
		}},
		{name: "asset", mutate: func(c *circuits.NoteReshapeCircuit) {
			c.Shared.AssetID = mutateFieldByOne(c.Shared.AssetID)
		}},
		{name: "diversified_generator", mutate: func(c *circuits.NoteReshapeCircuit) {
			c.Shared.DivGen.X = mutateFieldByOne(c.Shared.DivGen.X)
		}},
		{name: "clue_key", mutate: func(c *circuits.NoteReshapeCircuit) {
			c.Shared.ClueKey = mutateFieldByOne(c.Shared.ClueKey)
		}},
	}

	for _, mutation := range mutations {
		t.Run(mutation.name, func(t *testing.T) {
			assignment := loadNoteReshapeRegressionAssignment(t, "note_reshape1x8")
			mutation.mutate(assignment)
			if err := noteReshapeAssignmentSolved(t, ccs, assignment); err == nil {
				t.Fatalf("mutating padded output %s must invalidate the witness", mutation.name)
			}
		})
	}
}

func TestNoteReshapePaddedSpendRegressions(t *testing.T) {
	for _, tc := range []struct {
		label string
		nIn   int
	}{
		{label: "note_reshape4x1", nIn: 4},
		{label: "note_reshape8x1", nIn: 8},
	} {
		t.Run(tc.label, func(t *testing.T) {
			ccs := compileNoteReshapeRegressionCircuit(t, tc.label, tc.nIn, 1)
			valid := loadNoteReshapeRegressionAssignment(t, tc.label)
			if err := noteReshapeAssignmentSolved(t, ccs, valid); err != nil {
				t.Fatalf("canonical synthetic-input fixture must solve: %v", err)
			}

			dummyIndex := -1
			for index, spend := range valid.SyntheticSpends {
				if variableIsOne(spend.IsDummy) {
					dummyIndex = index
					break
				}
			}
			if dummyIndex < 0 {
				t.Fatal("fixture must contain a dummy spend")
			}

			mutations := []struct {
				name   string
				mutate func(*circuits.NoteReshapeCircuit)
			}{
				{name: "real_invalid_membership", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[0].StateProof.Path[0][0] = mutateFieldByOne(c.SyntheticSpends[0].StateProof.Path[0][0])
				}},
				{name: "dummy_nonzero_amount", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[dummyIndex].Note.Amount = mutateFieldByOne(c.SyntheticSpends[dummyIndex].Note.Amount)
				}},
				{name: "dummy_nullifier_seed", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[dummyIndex].DummyNullifierSeed = mutateFieldByOne(c.SyntheticSpends[dummyIndex].DummyNullifierSeed)
				}},
				{name: "dummy_rk", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[dummyIndex].RK.X = mutateFieldByOne(c.SyntheticSpends[dummyIndex].RK.X)
				}},
				{name: "non_boolean_selector", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[dummyIndex].IsDummy = 2
				}},
				{name: "non_suffix_selector", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[dummyIndex-1].IsDummy = 1
					c.SyntheticSpends[dummyIndex].IsDummy = 0
				}},
				{name: "out_of_policy_active_count", mutate: func(c *circuits.NoteReshapeCircuit) {
					c.SyntheticSpends[dummyIndex-1].IsDummy = 1
				}},
			}

			for _, mutation := range mutations {
				t.Run(mutation.name, func(t *testing.T) {
					assignment := loadNoteReshapeRegressionAssignment(t, tc.label)
					mutation.mutate(assignment)
					if err := noteReshapeAssignmentSolved(t, ccs, assignment); err == nil {
						t.Fatalf("mutation %s must invalidate the %s witness", mutation.name, tc.label)
					}
				})
			}
		})
	}
}

func TestNoteReshapeFamiliesRejectWrongFamilyDomain(t *testing.T) {
	for _, family := range generated.NoteReshapeFamilies {
		t.Run(family.Label, func(t *testing.T) {
			assignment := loadNoteReshapeRegressionAssignment(t, family.Label)
			witness, _, err := abi.DecodeNoteReshapeWitnessV3(
				testfixtures.LoadNoteReshapeWitnessV3(family.Label),
			)
			if err != nil {
				t.Fatalf("decode %s fixture: %v", family.Label, err)
			}
			fields, err := abi.ReconstructedNoteReshapeStatementFieldsFromWitnessV3(witness)
			if err != nil {
				t.Fatalf("reconstruct %s statement fields: %v", family.Label, err)
			}
			wrongHash, err := noteReshapeDomainHashNative(
				fieldElementStrings(fields),
				"note_reshape_wrong_family",
			)
			if err != nil {
				t.Fatalf("compute wrong-family hash: %v", err)
			}
			assignment.ClaimedStatementHash = wrongHash.String()
			ccs := compileNoteReshapeRegressionCircuit(t, family.Label, family.NIn, family.NOut)
			if err := noteReshapeAssignmentSolved(t, ccs, assignment); err == nil {
				t.Fatalf("wrong family statement domain must invalidate %s", family.Label)
			}
		})
	}
}

func TestNoteReshapeFamiliesRejectWrongShape(t *testing.T) {
	for _, family := range generated.NoteReshapeFamilies {
		t.Run(family.Label, func(t *testing.T) {
			wrongShape := circuits.NewNoteReshapeCircuit(family.Label, family.NIn+1, family.NOut)
			if _, err := frontend.Compile(
				ecc.BLS12_377.ScalarField(),
				r1cs.NewBuilder,
				wrongShape,
			); err == nil {
				t.Fatalf("wrong %s circuit shape must be rejected", family.Label)
			}
		})
	}
}

func TestNoteReshapeFamiliesRejectWrongStatementPreimage(t *testing.T) {
	for _, family := range generated.NoteReshapeFamilies {
		t.Run(family.Label, func(t *testing.T) {
			assignment := loadNoteReshapeRegressionAssignment(t, family.Label)
			if family.InputPadding == generated.InputPaddingSyntheticPrivate {
				assignment.SyntheticSpends[0].Nullifier = mutateFieldByOne(assignment.SyntheticSpends[0].Nullifier)
			} else {
				assignment.Spends[0].Nullifier = mutateFieldByOne(assignment.Spends[0].Nullifier)
			}
			ccs := compileNoteReshapeRegressionCircuit(t, family.Label, family.NIn, family.NOut)
			if err := noteReshapeAssignmentSolved(t, ccs, assignment); err == nil {
				t.Fatalf("mutating a statement-preimage nullifier must invalidate %s", family.Label)
			}
		})
	}
}

func TestNoteReshapeStatementsHaveNoActiveCountFieldsAfterRedesign(t *testing.T) {
	for _, family := range generated.NoteReshapeFamilies {
		want := primitives.NoteReshapeStatementBaseFields +
			primitives.NoteReshapeStatementFieldsPerInput*family.NIn +
			primitives.NoteReshapeStatementFieldsPerOutput*family.NOut
		if got := primitives.NoteReshapeStatementFieldCount(family.NIn, family.NOut); got != want {
			t.Fatalf("%s statement field count includes active-count fields: got %d, want %d", family.Label, got, want)
		}
	}
}

func TestNoteReshape1x8HasNoOutputDummyWitnessOrManifestOperationsAfterRedesign(t *testing.T) {
	if _, ok := reflect.TypeOf(abi.NoteReshapeOutputWitnessV3Binary{}).FieldByName("IsDummy"); ok {
		t.Fatal("1x8 witness still exposes an output dummy flag")
	}
	if _, ok := reflect.TypeOf(circuits.NoteReshapeSpendCircuitFields{}).FieldByName("IsDummy"); ok {
		t.Fatal("fixed-family spend witness still exposes synthetic padding fields")
	}
	if _, ok := reflect.TypeOf(circuits.NoteReshapeSyntheticSpendCircuitFields{}).FieldByName("IsDummy"); !ok {
		t.Fatal("synthetic-family spend witness lost its private selector")
	}
	for _, forbidden := range []string{"AssetID", "DivGen", "TransmissionKeyS", "Transmission", "ClueKey"} {
		if _, ok := reflect.TypeOf(circuits.NoteReshapeNoteCircuitFields{}).FieldByName(forbidden); ok {
			t.Fatalf("per-note reshape witness still exposes shared field %s", forbidden)
		}
	}
	if _, ok := reflect.TypeOf(circuits.NoteReshapeSyntheticSpendCircuitFields{}).FieldByName("DummySpendAuthKey"); ok {
		t.Fatal("synthetic reshape witness still exposes dummy spend authorization key")
	}

	_, sourceFile, _, ok := runtime.Caller(0)
	if !ok {
		t.Fatal("locate note reshape regression test")
	}
	manifestPath := filepath.Join(filepath.Dir(sourceFile), "..", "..", "artifacts", "note_reshape1x8", "note_reshape1x8-manifest.json")
	manifest, err := os.ReadFile(manifestPath)
	if err != nil {
		t.Fatalf("read 1x8 manifest: %v", err)
	}
	manifestText := string(manifest)
	if regexp.MustCompile(`output[0-9]+\.is_dummy`).MatchString(manifestText) {
		t.Fatal("1x8 manifest still contains an output dummy operation")
	}
	if strings.Contains(manifestText, "active_output_count") {
		t.Fatal("1x8 manifest still contains an active-output-count operation")
	}
	if strings.Contains(manifestText, "verifyPaddedNoteReshapeOutput") {
		t.Fatal("1x8 manifest still names a padded output verifier")
	}
}
