package circuits

import (
	"fmt"
	"math/big"
	"reflect"
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

func normalizedExpression(
	constant int64,
	coefficients map[int]int64,
) normalizedLinearExpression {
	result := normalizedLinearExpression{
		constant:     big.NewInt(constant),
		coefficients: make(map[int]*big.Int, len(coefficients)),
	}
	for wireID, coefficient := range coefficients {
		result.coefficients[wireID] = big.NewInt(coefficient)
	}
	return result
}

func TestR1CPolynomialInfluenceRejectsCanceledAppearances(t *testing.T) {
	modulus := big.NewInt(101)
	left := normalizedExpression(0, map[int]int64{1: 1})
	right := normalizedExpression(1, nil)
	output := normalizedExpression(0, map[int]int64{1: 1})
	if r1cPolynomialDependsOn(left, right, output, 1, modulus) {
		t.Fatal("x*1-x is a tautology, but x was reported as influential")
	}
}

func TestR1CPolynomialInfluenceKeepsNonlinearTerms(t *testing.T) {
	modulus := big.NewInt(101)
	left := normalizedExpression(0, map[int]int64{1: 1})
	right := normalizedExpression(0, map[int]int64{1: 1})
	output := normalizedExpression(0, nil)
	if !r1cPolynomialDependsOn(left, right, output, 1, modulus) {
		t.Fatal("x*x must report x as influential")
	}
}

const expectedNoteReshape2x1WiringTranscript = `schema shieldd.gnark.wiring.v1
circuit note_reshape2x1
shape n_in=2 n_out=1
0001 shared.bind shared.ak=auth.ak claimed.balance_commitment=balance_commitment shared.div_gen=witness.shared.div_gen shared.asset_id=witness.shared.asset_id shared.clue_key=witness.shared.clue_key
0002 decaf.assert_on_curve point=claimed.balance_commitment
0003 decaf.assert_on_curve point=shared.div_gen
0004 decaf.compress_to_field in=shared.div_gen out=shared.div_gen_fq
0005 decaf.diversified_transmission_key nk=auth.nk ak=shared.ak div_gen=shared.div_gen ivk_reduced=auth.ivk_reduced ivk_quotient_a=auth.ivk_quotient_a out=shared.transmission.computed
0006 decaf.compress_to_field in=shared.transmission.computed out=shared.transmission.fq
0007 spend.begin spend0
0008 gadget.note_commitment blinding=spend0.note.blinding amount=spend0.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq clue_key=shared.clue_key out=spend0.note.commitment.computed
0009 assert.eq lhs=spend0.note.commitment.computed rhs=spend0.state_proof.commitment
0010 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.computed
0011 assert.eq lhs=spend0.nullifier.computed rhs=spend0.nullifier
0012 gadget.state_commitment_path commitment=spend0.state_proof.commitment position=spend0.state_proof.position path=spend0.state_proof.path out=spend0.anchor.computed
0013 assert.eq lhs=spend0.anchor.computed rhs=anchor
0014 decaf.randomized_verification_key ak=shared.ak randomizer=spend0.auth_randomizer out=spend0.rk.computed
0015 decaf.assert_equivalent lhs=spend0.rk.computed rhs=spend0.rk.claimed
0016 decaf.compress_to_field in=spend0.rk.claimed out=spend0.rk.compressed
0017 spend.collect spend0 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0018 spend.begin spend1
0019 gadget.note_commitment blinding=spend1.note.blinding amount=spend1.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq clue_key=shared.clue_key out=spend1.note.commitment.computed
0020 assert.eq lhs=spend1.note.commitment.computed rhs=spend1.state_proof.commitment
0021 gadget.nullifier nk=auth.nk commitment=spend1.state_proof.commitment position=spend1.state_proof.position out=spend1.nullifier.computed
0022 assert.eq lhs=spend1.nullifier.computed rhs=spend1.nullifier
0023 gadget.state_commitment_path commitment=spend1.state_proof.commitment position=spend1.state_proof.position path=spend1.state_proof.path out=spend1.anchor.computed
0024 assert.eq lhs=spend1.anchor.computed rhs=anchor
0025 decaf.randomized_verification_key ak=shared.ak randomizer=spend1.auth_randomizer out=spend1.rk.computed
0026 decaf.assert_equivalent lhs=spend1.rk.computed rhs=spend1.rk.claimed
0027 decaf.compress_to_field in=spend1.rk.claimed out=spend1.rk.compressed
0028 spend.collect spend1 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0029 output.begin output0
0030 gadget.note_commitment blinding=output0.note.blinding amount=output0.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq clue_key=shared.clue_key out=output0.note.commitment.computed
0031 assert.eq lhs=output0.note.commitment.computed rhs=output0.note_commitment
0032 output.collect output0 amount->output_amounts commitment->statement.output_commitments
0033 decaf.conservation_net_balance_commitment inputs=input_amounts outputs=output_amounts blinding=action_balance_blinding out=balance_commitment.computed
0034 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment
0035 decaf.compress_to_field in=balance_commitment.computed out=balance_commitment.fq
0036 statement.append field=anchor
0037 statement.append_all fields=output_commitments
0038 statement.append field=balance_commitment.fq
0039 statement.append_all fields=nullifiers_and_rks
0040 statement.hash family=note_reshape2x1 fields=statement_fields out=statement_hash
0041 assert.eq lhs=statement_hash rhs=claimed_statement_hash
`

func TestNoteReshape2x1WiringTranscriptExact(t *testing.T) {
	got, err := ExportNoteReshape2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}
	if got != expectedNoteReshape2x1WiringTranscript {
		t.Fatalf("unexpected note_reshape2x1 wiring transcript:\n%s", got)
	}
}

func TestNoteReshapeFamilyManifestsPartitionEveryConstraint(t *testing.T) {
	for _, family := range generated.NoteReshapeFamilies {
		t.Run(family.Label, func(t *testing.T) {
			manifest, err := ExportNoteReshapeConstraintManifest(
				family.Label,
				family.NIn,
				family.NOut,
				"",
			)
			if err != nil {
				t.Fatalf("export manifest: %v", err)
			}
			covered := 0
			for _, segment := range manifest.Segments {
				covered += segment.ConstraintCount
				if segment.Kind == "marker" && segment.ConstraintCount != 0 {
					t.Fatalf(
						"structural marker %d %s contains %d constraints",
						segment.Index,
						segment.Op,
						segment.ConstraintCount,
					)
				}
			}
			if covered != manifest.NbConstraints {
				t.Fatalf("manifest covers %d of %d constraints", covered, manifest.NbConstraints)
			}
			if len(manifest.WitnessWires) !=
				manifest.NbPublic-1+manifest.NbSecret {
				t.Fatalf(
					"manifest witness role count %d does not match public+secret %d",
					len(manifest.WitnessWires),
					manifest.NbPublic-1+manifest.NbSecret,
				)
			}
			for wireIndex, wire := range manifest.WitnessWires {
				if wire.WireID != wireIndex+1 || wire.Path == "" {
					t.Fatalf("noncanonical witness wire %d: %#v", wireIndex, wire)
				}
				if wire.ConstraintRows == 0 {
					t.Fatalf("witness wire %d %q occurs in no R1CS row", wire.WireID, wire.Path)
				}
			}
			if len(manifest.Segments) == 0 || manifest.Segments[0].Start != 0 {
				t.Fatalf("manifest does not begin at row zero")
			}
		})
	}
}

func TestNoteReshapeSemanticBindingsUseCanonicalSharedContext(t *testing.T) {
	for _, family := range generated.NoteReshapeFamilies {
		t.Run(family.Label, func(t *testing.T) {
			manifest, err := ExportNoteReshapeConstraintManifest(
				family.Label,
				family.NIn,
				family.NOut,
				"",
			)
			if err != nil {
				t.Fatalf("export manifest: %v", err)
			}
			byName := make(map[string][]ConstraintLinearExpression)
			for _, binding := range manifest.SemanticBindings {
				if _, duplicate := byName[binding.Name]; duplicate {
					t.Fatalf("duplicate semantic binding %q", binding.Name)
				}
				byName[binding.Name] = binding.Expressions
			}
			requireBinding := func(name string, arity int) []ConstraintLinearExpression {
				t.Helper()
				expressions, ok := byName[name]
				if !ok {
					t.Fatalf("missing semantic binding %q", name)
				}
				if len(expressions) != arity {
					t.Fatalf(
						"semantic binding %q arity %d, want %d",
						name, len(expressions), arity,
					)
				}
				return expressions
			}
			sharedAsset := requireBinding("shared.asset_id", 1)[0]
			sharedDivGenFq := requireBinding("shared.div_gen_fq", 1)[0]
			sharedTransmissionFq := requireBinding("shared.transmission.fq", 1)[0]
			sharedClueKey := requireBinding("shared.clue_key", 1)[0]
			transmission := requireBinding("shared.transmission.computed", 2)
			for _, name := range []string{
				"shared.asset_id",
				"shared.div_gen",
				"shared.clue_key",
				"auth.ak",
				"auth.nk",
			} {
				arity := 1
				if name == "shared.div_gen" || name == "auth.ak" {
					arity = 2
				}
				for _, expression := range requireBinding(name, arity) {
					if expression.Constant != "0" ||
						len(expression.Terms) != 1 ||
						expression.Terms[0].Coefficient != "1" {
						t.Fatalf(
							"%s must be a direct compiler variable with coefficient 1: %+v",
							name, expression,
						)
					}
				}
			}
			for coordinate, expression := range transmission {
				if len(expression.Terms) < 200 {
					t.Fatalf(
						"transmission coordinate %d lost its exact computed LC: %d terms",
						coordinate, len(expression.Terms),
					)
				}
			}
			for index := 0; index < family.NIn; index++ {
				inputs := requireBinding(
					fmt.Sprintf("spend%d.note_commitment.inputs", index),
					6,
				)
				assertSameExpression(
					t, "spend asset", inputs[2], sharedAsset,
				)
				assertSameExpression(
					t, "spend diversified generator encoding",
					inputs[3], sharedDivGenFq,
				)
				assertSameExpression(
					t, "spend transmission encoding",
					inputs[4], sharedTransmissionFq,
				)
				assertSameExpression(
					t, "spend clue key", inputs[5], sharedClueKey,
				)
			}
			for index := 0; index < family.NOut; index++ {
				inputs := requireBinding(
					fmt.Sprintf("output%d.note_commitment.inputs", index),
					6,
				)
				assertSameExpression(t, "output asset", inputs[2], sharedAsset)
				assertSameExpression(
					t, "output diversified generator encoding",
					inputs[3], sharedDivGenFq,
				)
				assertSameExpression(
					t, "output transmission encoding",
					inputs[4], sharedTransmissionFq,
				)
				assertSameExpression(t, "output clue key", inputs[5], sharedClueKey)
			}
		})
	}
}

func assertSameExpression(
	t *testing.T,
	label string,
	got, want ConstraintLinearExpression,
) {
	t.Helper()
	if !reflect.DeepEqual(got, want) {
		t.Fatalf("%s is not the canonical shared expression", label)
	}
}

func TestNoteReshape2x1WiringTranscriptDeterministic(t *testing.T) {
	first, err := ExportNoteReshape2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export first transcript: %v", err)
	}
	second, err := ExportNoteReshape2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export second transcript: %v", err)
	}
	if first != second {
		t.Fatalf("transcript export is not deterministic")
	}
}

func TestTransferDerivesSharedSenderTransmissionOnce(t *testing.T) {
	transcript, err := ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}
	const operation = "decaf.diversified_transmission_key "
	if got := strings.Count(transcript, operation); got != 1 {
		t.Fatalf("transfer must derive the shared sender transmission once, got %d derivations", got)
	}
}

func TestNoteReshape2x1WiringTranscriptDetectsSemanticDrift(t *testing.T) {
	actual, err := ExportNoteReshape2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}

	mutations := map[string]string{
		"dropped gadget call": strings.Replace(actual, "0010 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.computed\n", "", 1),
		"swapped wiring":      strings.Replace(actual, "in=spend0.rk.claimed out=spend0.rk.compressed", "in=spend1.rk.claimed out=spend0.rk.compressed", 1),
		"missing equivalence": strings.Replace(actual, "0034 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment\n", "", 1),
		"statement order": strings.Replace(
			actual,
			"0036 statement.append field=anchor\n0037 statement.append_all fields=output_commitments\n0038 statement.append field=balance_commitment.fq\n0039 statement.append_all fields=nullifiers_and_rks\n",
			"0036 statement.append field=anchor\n0037 statement.append field=balance_commitment.fq\n0038 statement.append_all fields=output_commitments\n0039 statement.append_all fields=nullifiers_and_rks\n",
			1,
		),
	}
	for name, mutated := range mutations {
		t.Run(name, func(t *testing.T) {
			if actual == mutated {
				t.Fatalf("mutation did not change transcript")
			}
		})
	}
}

func TestNoteReshape2x1WiringTranscriptDoesNotChangeConstraintStats(t *testing.T) {
	untraced, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, NewNoteReshapeCircuit("note_reshape2x1", 2, 1))
	if err != nil {
		t.Fatalf("compile untraced circuit: %v", err)
	}

	transcript := newWiringTranscript("note_reshape2x1", 2, 1)
	traced, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, noteReshapeCircuitWithTranscript("note_reshape2x1", 2, 1, transcript))
	if err != nil {
		t.Fatalf("compile traced circuit: %v", err)
	}

	got := []int{
		traced.GetNbConstraints(),
		traced.GetNbPublicVariables(),
		traced.GetNbSecretVariables(),
		traced.GetNbInternalVariables(),
	}
	want := []int{
		untraced.GetNbConstraints(),
		untraced.GetNbPublicVariables(),
		untraced.GetNbSecretVariables(),
		untraced.GetNbInternalVariables(),
	}
	for i := range got {
		if got[i] != want[i] {
			t.Fatalf("tracing changed circuit stats: got %v, want %v", got, want)
		}
	}
}
