package circuits

import (
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
)

const expectedConsolidate2x1WiringTranscript = `schema shieldd.gnark.wiring.v1
circuit consolidate2x1
shape n_in=2 n_out=1
0001 shared.bind shared.ak=auth.ak claimed.balance_commitment=balance_commitment shared.div_gen=spend0.note.div_gen shared.transmission=spend0.note.transmission shared.asset_id=spend0.note.asset_id
0002 decaf.assert_on_curve point=claimed.balance_commitment
0003 decaf.assert_on_curve point=shared.div_gen
0004 decaf.assert_on_curve point=shared.transmission
0005 spend.begin spend0
0006 decaf.compress_to_field in=spend0.note.div_gen out=spend0.note.div_gen_fq
0007 gadget.note_commitment blinding=spend0.note.blinding amount=spend0.note.amount asset_id=spend0.note.asset_id div_gen_fq=spend0.note.div_gen_fq transmission_key_s=spend0.note.transmission_key_s clue_key=spend0.note.clue_key out=spend0.note.commitment.computed
0008 assert.eq lhs=spend0.note.commitment.computed rhs=spend0.state_proof.commitment
0009 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.computed
0010 assert.eq lhs=spend0.nullifier.computed rhs=spend0.nullifier
0011 gadget.state_commitment_path commitment=spend0.state_proof.commitment position=spend0.state_proof.position path=spend0.state_proof.path out=spend0.anchor.computed
0012 assert.eq lhs=spend0.anchor.computed rhs=anchor
0013 decaf.randomized_verification_key ak=shared.ak randomizer=spend0.auth_randomizer out=spend0.rk.computed
0014 decaf.assert_equivalent lhs=spend0.rk.computed rhs=spend0.rk.claimed
0015 decaf.compress_to_field in=spend0.rk.claimed out=spend0.rk.compressed
0016 decaf.diversified_transmission_key nk=auth.nk ak=shared.ak div_gen=spend0.note.div_gen ivk_reduced=auth.ivk_reduced ivk_quotient_a=auth.ivk_quotient_a out=spend0.transmission.computed
0017 decaf.assert_on_curve point=spend0.note.transmission
0018 decaf.assert_equivalent lhs=spend0.transmission.computed rhs=spend0.note.transmission
0019 decaf.assert_equivalent lhs=spend0.note.div_gen rhs=shared.div_gen
0020 decaf.assert_equivalent lhs=spend0.note.transmission rhs=shared.transmission
0021 assert.eq lhs=spend0.note.asset_id rhs=shared.asset_id
0022 spend.collect spend0 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0023 spend.begin spend1
0024 decaf.compress_to_field in=spend1.note.div_gen out=spend1.note.div_gen_fq
0025 gadget.note_commitment blinding=spend1.note.blinding amount=spend1.note.amount asset_id=spend1.note.asset_id div_gen_fq=spend1.note.div_gen_fq transmission_key_s=spend1.note.transmission_key_s clue_key=spend1.note.clue_key out=spend1.note.commitment.computed
0026 assert.eq lhs=spend1.note.commitment.computed rhs=spend1.state_proof.commitment
0027 gadget.nullifier nk=auth.nk commitment=spend1.state_proof.commitment position=spend1.state_proof.position out=spend1.nullifier.computed
0028 assert.eq lhs=spend1.nullifier.computed rhs=spend1.nullifier
0029 gadget.state_commitment_path commitment=spend1.state_proof.commitment position=spend1.state_proof.position path=spend1.state_proof.path out=spend1.anchor.computed
0030 assert.eq lhs=spend1.anchor.computed rhs=anchor
0031 decaf.randomized_verification_key ak=shared.ak randomizer=spend1.auth_randomizer out=spend1.rk.computed
0032 decaf.assert_equivalent lhs=spend1.rk.computed rhs=spend1.rk.claimed
0033 decaf.compress_to_field in=spend1.rk.claimed out=spend1.rk.compressed
0034 decaf.diversified_transmission_key nk=auth.nk ak=shared.ak div_gen=spend1.note.div_gen ivk_reduced=auth.ivk_reduced ivk_quotient_a=auth.ivk_quotient_a out=spend1.transmission.computed
0035 decaf.assert_on_curve point=spend1.note.transmission
0036 decaf.assert_equivalent lhs=spend1.transmission.computed rhs=spend1.note.transmission
0037 decaf.assert_equivalent lhs=spend1.note.div_gen rhs=shared.div_gen
0038 decaf.assert_equivalent lhs=spend1.note.transmission rhs=shared.transmission
0039 assert.eq lhs=spend1.note.asset_id rhs=shared.asset_id
0040 spend.collect spend1 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0041 output.begin output0
0042 decaf.compress_to_field in=output0.note.div_gen out=output0.note.div_gen_fq
0043 gadget.note_commitment blinding=output0.note.blinding amount=output0.note.amount asset_id=output0.note.asset_id div_gen_fq=output0.note.div_gen_fq transmission_key_s=output0.note.transmission_key_s clue_key=output0.note.clue_key out=output0.note.commitment.computed
0044 assert.eq lhs=output0.note.commitment.computed rhs=output0.note_commitment
0045 decaf.diversified_transmission_key nk=auth.nk ak=shared.ak div_gen=output0.note.div_gen ivk_reduced=auth.ivk_reduced ivk_quotient_a=auth.ivk_quotient_a out=output0.transmission.computed
0046 decaf.assert_on_curve point=output0.note.transmission
0047 decaf.assert_equivalent lhs=output0.transmission.computed rhs=output0.note.transmission
0048 decaf.assert_equivalent lhs=output0.note.div_gen rhs=shared.div_gen
0049 decaf.assert_equivalent lhs=output0.note.transmission rhs=shared.transmission
0050 assert.eq lhs=output0.note.asset_id rhs=shared.asset_id
0051 output.collect output0 amount->output_amounts commitment->statement.output_commitments
0052 decaf.net_balance_commitment inputs=input_amounts outputs=output_amounts asset_id=shared.asset_id blinding=action_balance_blinding out=balance_commitment.computed
0053 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment
0054 decaf.compress_to_field in=balance_commitment.computed out=balance_commitment.fq
0055 statement.append field=anchor
0056 statement.append_all fields=output_commitments
0057 statement.append field=balance_commitment.fq
0058 statement.append_all fields=nullifiers_and_rks
0059 statement.hash family=consolidate2x1 fields=statement_fields out=statement_hash
0060 assert.eq lhs=statement_hash rhs=claimed_statement_hash
`

func TestConsolidate2x1WiringTranscriptExact(t *testing.T) {
	got, err := ExportConsolidate2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}
	if got != expectedConsolidate2x1WiringTranscript {
		t.Fatalf("unexpected consolidate2x1 wiring transcript:\n%s", got)
	}
}

func TestConsolidate2x1WiringTranscriptDeterministic(t *testing.T) {
	first, err := ExportConsolidate2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export first transcript: %v", err)
	}
	second, err := ExportConsolidate2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export second transcript: %v", err)
	}
	if first != second {
		t.Fatalf("transcript export is not deterministic")
	}
}

func TestConsolidate2x1WiringTranscriptDetectsSemanticDrift(t *testing.T) {
	actual, err := ExportConsolidate2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}

	mutations := map[string]string{
		"dropped gadget call": strings.Replace(actual, "0009 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.computed\n", "", 1),
		"swapped wiring":      strings.Replace(actual, "in=spend0.note.div_gen out=spend0.note.div_gen_fq", "in=spend1.note.div_gen out=spend0.note.div_gen_fq", 1),
		"missing equivalence": strings.Replace(actual, "0053 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment\n", "", 1),
		"statement order": strings.Replace(
			actual,
			"0055 statement.append field=anchor\n0056 statement.append_all fields=output_commitments\n0057 statement.append field=balance_commitment.fq\n0058 statement.append_all fields=nullifiers_and_rks\n",
			"0055 statement.append field=anchor\n0056 statement.append field=balance_commitment.fq\n0057 statement.append_all fields=output_commitments\n0058 statement.append_all fields=nullifiers_and_rks\n",
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

func TestConsolidate2x1WiringTranscriptDoesNotChangeConstraintStats(t *testing.T) {
	untraced, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, NewConsolidateCircuit(2))
	if err != nil {
		t.Fatalf("compile untraced circuit: %v", err)
	}

	transcript := newWiringTranscript("consolidate2x1", 2, 1)
	traced, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, noteReshapeCircuitWithTranscript(2, transcript))
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
