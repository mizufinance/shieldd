package circuits_test

import (
	"strings"
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
)

func TestTransferWiringSeparatesRequiredAndOptionalSpend(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}

	for _, prohibited := range []string{
		"spend0.is_dummy",
		"spend0.is_not_dummy",
		"spend0.dummy_nullifier_seed",
		"spend0.nullifier.synthetic",
		"spend0.state_proof.commitment",
		"spend1.state_proof.commitment",
		"spend0.note.div_gen",
		"spend1.note.div_gen",
		"spend0.note.transmission",
		"spend1.note.transmission",
	} {
		if strings.Contains(transcript, prohibited) {
			t.Fatalf("required transfer spend must not contain optional-spend wiring %q", prohibited)
		}
	}
	for _, binding := range []string{
		"gadget.note_commitment blinding=spend0.note.blinding amount=spend0.note.amount asset_id=shared.asset_id div_gen_fq=sender.div_gen_fq transmission_key_s=sender.transmission_fq clue_key=spend0.note.clue_key out=spend0.note.commitment.computed",
		"gadget.state_commitment_path commitment=spend0.note.commitment.computed position=spend0.state_proof.position path=spend0.state_proof.path out=spend0.anchor.computed",
		"assert.eq lhs=spend0.nullifier rhs=spend0.nullifier.real",
		"assert.eq lhs=spend0.anchor.computed rhs=anchor",
		"decaf.assert_equivalent lhs=spend0.rk.computed rhs=spend0.rk.claimed",
		"assert.boolean var=spend1.is_dummy",
		"gadget.note_commitment blinding=spend1.note.blinding amount=spend1.note.amount asset_id=shared.asset_id div_gen_fq=sender.div_gen_fq transmission_key_s=sender.transmission_fq clue_key=spend1.note.clue_key out=spend1.note.commitment.computed",
		"gadget.state_commitment_path commitment=spend1.note.commitment.computed position=spend1.state_proof.position path=spend1.state_proof.path out=spend1.anchor.computed",
		"gadget.synthetic_dummy_nullifier seed=spend1.dummy_nullifier_seed",
		"dummy.mux is_dummy=spend1.is_dummy",
		"decaf.assert_equivalent_if lhs=spend1.rk.computed rhs=spend1.rk.claimed cond=spend1.is_not_dummy",
	} {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
		}
	}
}

func TestTransferWiringOmitsDeadChangeIsZero(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}
	const receiverCheck = "gadget.is_zero in=output0.note.amount out=output0.is_dummy"
	if got := strings.Count(transcript, receiverCheck); got != 1 {
		t.Fatalf("transfer wiring must check the receiver amount exactly once, got %d", got)
	}
	if strings.Contains(transcript, "gadget.is_zero in=output1.note.amount") {
		t.Fatal("transfer wiring must not compute an unused change-output zero flag")
	}
}

func TestTransferWiringOmitsDerivedDummyAuthAndOutputRole(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}
	for _, obsolete := range []string{
		"dummy_spend_auth_key",
		"rk.dummy",
		"is_receiver",
	} {
		if strings.Contains(transcript, obsolete) {
			t.Fatalf("transfer wiring must not contain obsolete derived input %q", obsolete)
		}
	}
}

func TestTransferWiringUsesCanonicalRoleAddresses(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}
	for _, binding := range []string{
		"decaf.assert_equivalent lhs=sender.transmission.computed rhs=sender.transmission",
		"gadget.note_commitment blinding=output0.note.blinding amount=output0.note.amount asset_id=shared.asset_id div_gen_fq=output0.recipient.div_gen_fq transmission_key_s=output0.recipient.transmission_fq",
		"gadget.compliance_leaf div_gen_fq=output0.recipient.div_gen_fq transmission_fq=output0.recipient.transmission_fq asset_id=shared.asset_id",
		"gadget.note_commitment blinding=output1.note.blinding amount=output1.note.amount asset_id=shared.asset_id div_gen_fq=sender.div_gen_fq transmission_key_s=sender.transmission_fq",
	} {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
		}
	}
	for _, prohibited := range []string{
		"spend0.note.div_gen",
		"spend0.note.transmission",
		"spend1.note.div_gen",
		"spend1.note.transmission",
		"output0.note.div_gen",
		"output0.note.transmission",
		"output1.recipient",
		"output1.note.div_gen",
		"output1.note.transmission",
	} {
		if strings.Contains(transcript, prohibited) {
			t.Fatalf("transfer wiring must derive role data instead of carrying %q", prohibited)
		}
	}
	for _, binding := range []string{
		"decaf.assert_equivalent lhs=spend0.rk.computed rhs=spend0.rk.claimed",
		"decaf.assert_equivalent_if lhs=spend1.rk.computed rhs=spend1.rk.claimed cond=spend1.is_not_dummy",
	} {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain RK binding %q exactly once, got %d", binding, got)
		}
	}
	if got := strings.Count(transcript, "decaf.assert_equivalent_if"); got != 1 {
		t.Fatalf("transfer wiring must have exactly one conditional Decaf equivalence, got %d", got)
	}
}
