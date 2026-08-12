package circuits_test

import (
	"reflect"
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
		"gadget.note_commitment blinding=spend0.note.blinding amount=spend0.note.amount asset_id=shared.asset_id div_gen_fq=sender.div_gen_fq transmission_key_s=sender.transmission_fq out=spend0.note.commitment.computed",
		"gadget.state_commitment_path commitment=spend0.note.commitment.computed position=spend0.state_proof.position path=spend0.state_proof.path out=spend0.anchor.computed",
		"assert.eq lhs=spend0.nullifier rhs=spend0.nullifier.real",
		"assert.eq lhs=spend0.anchor.computed rhs=anchor",
		"decaf.assert_equivalent lhs=spend0.rk.computed rhs=spend0.rk.claimed",
		"assert.boolean var=spend1.is_dummy",
		"gadget.note_commitment blinding=spend1.note.blinding amount=spend1.note.amount asset_id=shared.asset_id div_gen_fq=sender.div_gen_fq transmission_key_s=sender.transmission_fq out=spend1.note.commitment.computed",
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

func TestTransferWiringRejectsTheIndexedTreeZeroSentinelAsAnAsset(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}
	const binding = "assert.ne lhs=shared.asset_id rhs=0"
	if got := strings.Count(transcript, binding); got != 1 {
		t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
	}
	for _, obsolete := range []string{
		"gadget.is_zero in=shared.asset_id",
		"shared.asset_id_is_zero",
	} {
		if strings.Contains(transcript, obsolete) {
			t.Fatalf("transfer wiring must not retain obsolete zero-test wiring %q", obsolete)
		}
	}
}

func TestTransferAssetSentinelRejectionIsOneExactRow(t *testing.T) {
	manifest, err := circuits.ExportTransferConstraintManifest("")
	if err != nil {
		t.Fatalf("export transfer constraint manifest: %v", err)
	}
	const role = "lhs=shared.asset_id rhs=0"
	matches := 0
	for _, segment := range manifest.Segments {
		if segment.Op != "assert.ne" ||
			strings.Join(segment.Args, " ") != role {
			continue
		}
		matches++
		if segment.Kind != "glue" ||
			segment.ConstraintCount != 1 ||
			segment.End != segment.Start+1 {
			t.Fatalf(
				"asset sentinel rejection must be one exact glue row: %+v",
				segment,
			)
		}
	}
	if matches != 1 {
		t.Fatalf(
			"Transfer manifest contains %d exact asset sentinel rows, want 1",
			matches,
		)
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
		"assert.decaf_non_identity point=auth.ak coordinate=x",
		"assert.decaf_non_identity point=sender.div_gen coordinate=x",
		"assert.decaf_non_identity point=sender.transmission coordinate=x",
		"assert.decaf_non_identity point=output0.recipient.div_gen coordinate=x",
		"assert.decaf_non_identity point=output0.recipient.transmission coordinate=x",
		"assert.ne lhs=auth.ivk_reduced rhs=0",
	} {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
		}
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

func TestTransferIdentityGuardsAreSixExactRows(t *testing.T) {
	manifest, err := circuits.ExportTransferConstraintManifest("")
	if err != nil {
		t.Fatalf("export transfer constraint manifest: %v", err)
	}
	var segments, constraints int
	var ivkSegments, ivkConstraints int
	for _, segment := range manifest.Segments {
		switch {
		case segment.Op == "assert.decaf_non_identity":
			segments++
			constraints += segment.ConstraintCount
			if segment.Kind != "glue" || segment.ConstraintCount != 1 {
				t.Fatalf(
					"Decaf non-identity segment must be one exact glue row: %+v",
					segment,
				)
			}
		case segment.Op == "assert.ne" &&
			reflect.DeepEqual(
				segment.Args,
				[]string{"lhs=auth.ivk_reduced", "rhs=0"},
			):
			ivkSegments++
			ivkConstraints += segment.ConstraintCount
			if segment.Kind != "glue" || segment.ConstraintCount != 1 {
				t.Fatalf(
					"reduced-IVK nonzero segment must be one exact glue row: %+v",
					segment,
				)
			}
		}
	}
	if segments != 5 || constraints != 5 ||
		ivkSegments != 1 || ivkConstraints != 1 {
		t.Fatalf(
			"Transfer identity guards = %d point segments/%d constraints and %d IVK segments/%d constraints, want 5/5 and 1/1",
			segments,
			constraints,
			ivkSegments,
			ivkConstraints,
		)
	}
}

func TestTransferWiringOmitsUnsafeComplianceProofPackages(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}
	for _, prohibited := range []string{
		".proof.",
		"gadget.dleq",
		"gadget.metadata_hash",
		"shared_point",
		"derived_pk",
		"enc_cmt",
	} {
		if strings.Contains(transcript, prohibited) {
			t.Fatalf("transfer wiring must not contain obsolete compliance proof material %q", prohibited)
		}
	}
	for _, binding := range []string{
		"compliance.metadata.begin metadata=compliance.metadata",
		"assert.eq lhs=compliance.metadata.sender_subject_derivation rhs=sender.slot_derivation",
		"assert.eq lhs=compliance.metadata.output_subject_derivation rhs=receiver.slot_derivation",
		"assert.eq lhs=compliance.metadata.ring_id_hash rhs=effective.ring_id_hash",
		"assert.eq lhs=compliance.metadata.policy_id_hash rhs=effective.policy_id_hash",
		"assert.eq lhs=compliance.metadata.resource_hash rhs=effective.resource_hash",
		"assert.eq lhs=compliance.metadata.permission_hash rhs=effective.permission_hash",
		"assert.eq lhs=compliance.metadata.target_timestamp rhs=target_timestamp",
		"assert.eq lhs=compliance.metadata.sender_core_salt rhs=salt1",
		"assert.eq lhs=compliance.metadata.sender_ext_salt rhs=salt2",
		"assert.eq lhs=compliance.metadata.output_core_salt rhs=salt3",
		"assert.eq lhs=compliance.metadata.output_ext_salt rhs=salt4",
	} {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
		}
	}
	if strings.Contains(transcript, "compliance.statement.begin") ||
		strings.Contains(transcript, ".statement.subject_derivation") {
		t.Fatal("transfer wiring must not retain per-tier metadata statements")
	}
	for _, selection := range []string{
		"select.field cond=is_regulated if_true=asset.leaf.ring_id_hash if_false=unregulated.policy_hash out=effective.ring_id_hash",
		"select.field cond=is_regulated if_true=asset.leaf.policy_id_hash if_false=unregulated.policy_hash out=effective.policy_id_hash",
		"select.field cond=is_regulated if_true=asset.leaf.resource_hash if_false=unregulated.policy_hash out=effective.resource_hash",
		"select.field cond=is_regulated if_true=asset.leaf.permission_hash if_false=unregulated.policy_hash out=effective.permission_hash",
		"threshold.flag regulated=is_regulated amount=receiver.amount threshold=asset.leaf.threshold out=is_flagged",
	} {
		if got := strings.Count(transcript, selection); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", selection, got)
		}
	}
	if strings.Contains(transcript, "effective.threshold") ||
		strings.Contains(transcript, "unregulated.threshold") {
		t.Fatal("regulation-gated threshold must not retain the redundant effective-threshold select")
	}
}

func TestTransferWiringJoinsDerivedSharedSecretsToEncryption(t *testing.T) {
	transcript, err := circuits.ExportTransferWiringTranscript()
	if err != nil {
		t.Fatalf("export transfer wiring transcript: %v", err)
	}

	sharedSecretBindings := []string{
		"decaf.shared_secret tier=sender_core esk=compliance.sender_r_core ack=sender.ack dk_pub=effective.dk_pub flag=is_flagged epk=compliance.sender_core.epk issuer=sender_core.shared.issuer user=sender_core.shared.user selected=sender_core.shared.selected",
		"decaf.shared_secret tier=sender_ext esk=compliance.sender_r_ext ack=sender.ack dk_pub=effective.dk_pub flag=is_flagged epk=compliance.sender_ext.epk issuer=sender_ext.shared.issuer user=sender_ext.shared.user selected=sender_ext.shared.selected",
		"decaf.shared_secret tier=output_core esk=compliance.output_r_core ack=receiver.ack dk_pub=effective.dk_pub flag=is_flagged epk=compliance.output_core.epk issuer=output_core.shared.issuer user=output_core.shared.user selected=output_core.shared.selected",
		"decaf.shared_secret tier=output_ext esk=compliance.output_r_ext ack=receiver.ack dk_pub=effective.dk_pub flag=is_flagged epk=compliance.output_ext.epk issuer=output_ext.shared.issuer user=output_ext.shared.user selected=output_ext.shared.selected",
	}
	for _, binding := range sharedSecretBindings {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
		}
	}

	encryptionBindings := []string{
		"gadget.poseidon_encryption.detection flag=is_flagged ss=sender_core.shared.issuer epk_fq=compliance.sender_core.epk_fq salt=salt0 asset_id=shared.asset_id sender_slot=sender.slot_id:u32 receiver_slot=receiver.slot_id:u32 routing_roles_swapped=permutation_bit out=compliance.detection_ciphertext",
		"gadget.poseidon_encryption.amount tier=sender_core ss=sender_core.shared.selected c2=compliance.sender_core.c2 amount=receiver.amount out=compliance.sender_core.ciphertext",
		"gadget.poseidon_encryption.address tier=sender_ext ss=sender_ext.shared.selected c2=compliance.sender_ext.c2 div_gen_fq=receiver.div_gen_fq transmission_fq=receiver.transmission_fq out=compliance.sender_ext.ciphertext",
		"gadget.poseidon_encryption.amount tier=output_core ss=output_core.shared.selected c2=compliance.output_core.c2 amount=receiver.amount out=compliance.output_core.ciphertext",
		"gadget.poseidon_encryption.address tier=output_ext ss=output_ext.shared.selected c2=compliance.output_ext.c2 div_gen_fq=sender.div_gen_fq transmission_fq=sender.transmission_fq out=compliance.output_ext.ciphertext",
	}
	for _, binding := range encryptionBindings {
		if got := strings.Count(transcript, binding); got != 1 {
			t.Fatalf("transfer wiring must contain %q exactly once, got %d", binding, got)
		}
	}
	if got := strings.Count(transcript, "decaf.shared_secret "); got != len(sharedSecretBindings) {
		t.Fatalf("transfer wiring has %d shared-secret derivations, want %d", got, len(sharedSecretBindings))
	}
	if got := strings.Count(transcript, "gadget.poseidon_encryption."); got != len(encryptionBindings) {
		t.Fatalf("transfer wiring has %d encryption legs, want %d", got, len(encryptionBindings))
	}
}
