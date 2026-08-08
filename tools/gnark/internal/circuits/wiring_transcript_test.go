package circuits

import (
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

const expectedNoteReshape2x1WiringTranscript = `schema shieldd.gnark.wiring.v1
circuit note_reshape2x1
shape n_in=2 n_out=1
0001 shared.bind shared.ak=auth.ak claimed.balance_commitment=balance_commitment shared.div_gen=spend0.note.div_gen shared.transmission=spend0.note.transmission shared.asset_id=spend0.note.asset_id
0002 decaf.assert_on_curve point=claimed.balance_commitment
0003 decaf.assert_on_curve point=shared.div_gen
0004 decaf.assert_on_curve point=shared.transmission
0005 decaf.compress_to_field in=shared.div_gen out=shared.div_gen_fq
0006 decaf.compress_to_field in=shared.transmission out=shared.transmission_fq
0007 decaf.diversified_transmission_key nk=auth.nk ak=shared.ak div_gen=shared.div_gen ivk_reduced=auth.ivk_reduced ivk_quotient_a=auth.ivk_quotient_a out=shared.transmission.computed
0008 decaf.assert_equivalent lhs=shared.transmission.computed rhs=shared.transmission
0009 spend.begin spend0
0010 gadget.note_commitment blinding=spend0.note.blinding amount=spend0.note.amount asset_id=spend0.note.asset_id div_gen_fq=spend0.note.div_gen_fq transmission_key_s=spend0.note.transmission_key_s out=spend0.note.commitment.computed
0011 assert.eq lhs=spend0.note.commitment.computed rhs=spend0.state_proof.commitment
0012 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.computed
0013 assert.eq lhs=spend0.nullifier.computed rhs=spend0.nullifier
0014 gadget.state_commitment_path commitment=spend0.state_proof.commitment position=spend0.state_proof.position path=spend0.state_proof.path out=spend0.anchor.computed
0015 assert.eq lhs=spend0.anchor.computed rhs=anchor
0016 decaf.randomized_verification_key ak=shared.ak randomizer=spend0.auth_randomizer out=spend0.rk.computed
0017 decaf.assert_equivalent lhs=spend0.rk.computed rhs=spend0.rk.claimed
0018 decaf.compress_to_field in=spend0.rk.claimed out=spend0.rk.compressed
0019 decaf.assert_on_curve point=spend0.note.transmission
0020 decaf.assert_equivalent lhs=spend0.note.div_gen rhs=shared.div_gen
0021 decaf.assert_equivalent lhs=spend0.note.transmission rhs=shared.transmission
0022 assert.eq lhs=spend0.note.transmission_key_s rhs=shared.transmission_fq
0023 assert.eq lhs=spend0.note.asset_id rhs=shared.asset_id
0024 spend.collect spend0 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0025 spend.begin spend1
0026 gadget.note_commitment blinding=spend1.note.blinding amount=spend1.note.amount asset_id=spend1.note.asset_id div_gen_fq=spend1.note.div_gen_fq transmission_key_s=spend1.note.transmission_key_s out=spend1.note.commitment.computed
0027 assert.eq lhs=spend1.note.commitment.computed rhs=spend1.state_proof.commitment
0028 gadget.nullifier nk=auth.nk commitment=spend1.state_proof.commitment position=spend1.state_proof.position out=spend1.nullifier.computed
0029 assert.eq lhs=spend1.nullifier.computed rhs=spend1.nullifier
0030 gadget.state_commitment_path commitment=spend1.state_proof.commitment position=spend1.state_proof.position path=spend1.state_proof.path out=spend1.anchor.computed
0031 assert.eq lhs=spend1.anchor.computed rhs=anchor
0032 decaf.randomized_verification_key ak=shared.ak randomizer=spend1.auth_randomizer out=spend1.rk.computed
0033 decaf.assert_equivalent lhs=spend1.rk.computed rhs=spend1.rk.claimed
0034 decaf.compress_to_field in=spend1.rk.claimed out=spend1.rk.compressed
0035 decaf.assert_on_curve point=spend1.note.transmission
0036 decaf.assert_equivalent lhs=spend1.note.div_gen rhs=shared.div_gen
0037 decaf.assert_equivalent lhs=spend1.note.transmission rhs=shared.transmission
0038 assert.eq lhs=spend1.note.transmission_key_s rhs=shared.transmission_fq
0039 assert.eq lhs=spend1.note.asset_id rhs=shared.asset_id
0040 spend.collect spend1 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0041 output.begin output0
0042 gadget.note_commitment blinding=output0.note.blinding amount=output0.note.amount asset_id=output0.note.asset_id div_gen_fq=output0.note.div_gen_fq transmission_key_s=output0.note.transmission_key_s out=output0.note.commitment.computed
0043 assert.eq lhs=output0.note.commitment.computed rhs=output0.note_commitment
0044 decaf.assert_on_curve point=output0.note.transmission
0045 decaf.assert_equivalent lhs=output0.note.div_gen rhs=shared.div_gen
0046 decaf.assert_equivalent lhs=output0.note.transmission rhs=shared.transmission
0047 assert.eq lhs=output0.note.transmission_key_s rhs=shared.transmission_fq
0048 assert.eq lhs=output0.note.asset_id rhs=shared.asset_id
0049 output.collect output0 amount->output_amounts commitment->statement.output_commitments
0050 decaf.conservation_net_balance_commitment inputs=input_amounts outputs=output_amounts blinding=action_balance_blinding out=balance_commitment.computed
0051 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment
0052 decaf.compress_to_field in=balance_commitment.computed out=balance_commitment.fq
0053 statement.append field=anchor
0054 statement.append_all fields=output_commitments
0055 statement.append field=balance_commitment.fq
0056 statement.append_all fields=nullifiers_and_rks
0057 statement.hash family=note_reshape2x1 fields=statement_fields out=statement_hash
0058 assert.eq lhs=statement_hash rhs=claimed_statement_hash
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
			if len(manifest.Segments) == 0 || manifest.Segments[0].Start != 0 {
				t.Fatalf("manifest does not begin at row zero")
			}
		})
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

func TestNoteReshape2x1WiringTranscriptDetectsSemanticDrift(t *testing.T) {
	actual, err := ExportNoteReshape2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}

	mutations := map[string]string{
		"dropped gadget call": strings.Replace(actual, "0012 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.computed\n", "", 1),
		"swapped wiring":      strings.Replace(actual, "in=spend0.rk.claimed out=spend0.rk.compressed", "in=spend1.rk.claimed out=spend0.rk.compressed", 1),
		"missing equivalence": strings.Replace(actual, "0051 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment\n", "", 1),
		"statement order": strings.Replace(
			actual,
			"0053 statement.append field=anchor\n0054 statement.append_all fields=output_commitments\n0055 statement.append field=balance_commitment.fq\n0056 statement.append_all fields=nullifiers_and_rks\n",
			"0053 statement.append field=anchor\n0054 statement.append field=balance_commitment.fq\n0055 statement.append_all fields=output_commitments\n0056 statement.append_all fields=nullifiers_and_rks\n",
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
