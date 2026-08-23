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
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
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

func TestConstraintSegmentClassificationFailsClosedByExactOperation(t *testing.T) {
	for _, op := range []string{
		"assert.boolean",
		"assert.decaf_non_identity",
		"assert.eq",
		"assert.ne",
		"assert.eq_if",
		"assert.active_range",
		"assert.dummy_suffix",
		"select.field",
		"select.point",
		"dummy.mux",
		"routing.precision.select",
		"routing.parameters.bind",
		"routing.permutation.compose",
		"routing.tag.public_range",
		"routing.tag.route_bits",
		"routing.tag.compose",
	} {
		kind, _, _, _ := classifyConstraintSegment(op)
		if kind != "glue" {
			t.Fatalf("exact glue operation %q classified as %q", op, kind)
		}
	}
	for _, op := range []string{
		"assert.future_complex_gadget",
		"assert.eq.unreviewed_variant",
		"select.unreviewed_point_family",
	} {
		kind, gadget, theorem, _ := classifyConstraintSegment(op)
		if kind != "unclassified" || gadget != "" || theorem != "" {
			t.Fatalf(
				"unknown prefixed operation %q inherited classification: kind=%q gadget=%q theorem=%q",
				op,
				kind,
				gadget,
				theorem,
			)
		}
	}
}

func TestConservationNetBalanceTheoremMappingsAreArityDistinct(t *testing.T) {
	oneLabel, oneTheorem, oneOK := segmentGadget(
		"decaf.conservation_net_balance_commitment",
	)
	twoLabel, twoTheorem, twoOK := segmentGadget(
		"decaf.conservation_net_balance_commitment2",
	)
	if !oneOK || !twoOK {
		t.Fatal("conservation net-balance operations must both be classified")
	}
	if oneLabel != "gadget-conservation-net-balance-commitment" ||
		oneTheorem != "Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_sound" {
		t.Fatalf("unexpected 2-in/1-out mapping: %q %q", oneLabel, oneTheorem)
	}
	if twoLabel != "gadget-conservation-net-balance-commitment2" ||
		twoTheorem != "Shieldd.GnarkFormal.ConservationNetBalanceCommitment2Bridge.decaf377_conservationNetBalanceCommitment2_sound" {
		t.Fatalf("unexpected 2-in/2-out mapping: %q %q", twoLabel, twoTheorem)
	}
	if oneLabel == twoLabel || oneTheorem == twoTheorem {
		t.Fatal("2-in/1-out theorem metadata must not certify the 2-in/2-out segment")
	}
}

const expectedNoteReshape8x1WiringTranscript = `schema shieldd.gnark.wiring.v1
circuit note_reshape8x1
shape n_in=8 n_out=1
0001 assert.boolean value=spend0.is_dummy
0002 assert.boolean value=spend1.is_dummy
0003 assert.boolean value=spend2.is_dummy
0004 assert.boolean value=spend3.is_dummy
0005 assert.boolean value=spend4.is_dummy
0006 assert.boolean value=spend5.is_dummy
0007 assert.boolean value=spend6.is_dummy
0008 assert.boolean value=spend7.is_dummy
0009 assert.dummy_suffix flags=spends.is_dummy
0010 assert.active_range value=active_input_count min=2 max=8
0011 shared.bind shared.ak=auth.ak claimed.balance_commitment=balance_commitment shared.div_gen=witness.shared.div_gen shared.asset_id=witness.shared.asset_id
0012 assert.decaf_non_identity point=auth.ak coordinate=x
0013 assert.decaf_non_identity point=shared.div_gen coordinate=x
0014 decaf.assert_on_curve point=claimed.balance_commitment
0015 decaf.compress_to_field in=shared.div_gen out=shared.div_gen_fq
0016 assert.ne lhs=auth.ivk_reduced rhs=0
0017 decaf.diversified_transmission_key nk=auth.nk ak=shared.ak div_gen=shared.div_gen ivk_reduced=auth.ivk_reduced ivk_quotient_a=auth.ivk_quotient_a out=shared.transmission.computed
0018 assert.decaf_non_identity point=shared.transmission.computed coordinate=x
0019 decaf.compress_to_field in=shared.transmission.computed out=shared.transmission.fq
0020 assert.boolean var=is_regulated
0021 decaf.compress_to_field in=asset.leaf.dk_pub out=asset.leaf.dk_pub_fq
0022 gadget.asset_registry_params_hash dk_pub_fq=asset.leaf.dk_pub_fq threshold=asset.leaf.threshold channels_hash=asset.leaf.channels_hash out=asset.leaf.params_hash
0023 decaf.compress_to_field in=asset.leaf.ring_pk out=asset.leaf.ring_pk_fq
0024 gadget.asset_registry_ring_hash ring_pk_fq=asset.leaf.ring_pk_fq ring_id_hash=asset.leaf.ring_id_hash policy_id_hash=asset.leaf.policy_id_hash permission_hash=asset.leaf.permission_hash resource_hash=asset.leaf.resource_hash out=asset.leaf.ring_hash
0025 gadget.asset_registry_leaf_hash value=asset.leaf.value next_index=asset.leaf.next_index next_value=asset.leaf.next_value params_hash=asset.leaf.params_hash ring_hash=asset.leaf.ring_hash out=asset.leaf.commitment
0026 gadget.asset_registry_path leaf=asset.leaf.commitment path=asset.path position=asset.position out=asset.root.computed
0027 assert.eq lhs=asset.root.computed rhs=asset_anchor
0028 gadget.asset_registry_gap asset_id=shared.asset_id is_regulated=is_regulated value=asset.leaf.value next_value=asset.leaf.next_value out=asset.gap_valid
0029 assert.eq lhs=asset.gap_valid rhs=1
0030 gadget.compliance_leaf div_gen_fq=shared.div_gen_fq transmission_fq=shared.transmission.fq asset_id=shared.asset_id d=sender.d status=sender.status out=sender.leaf_commitment
0031 gadget.compliance_path leaf=sender.leaf_commitment path=sender.path position=sender.position out=sender.compliance_root
0032 assert.eq_if lhs=sender.compliance_root rhs=compliance_anchor cond=is_regulated
0033 assert.eq_if lhs=sender.status rhs=1 cond=is_regulated
0034 routing.precision.select regulated=regulated_precision unregulated=unregulated_precision selector=is_regulated
0035 routing.parameters.hash regulated=regulated_precision unregulated=unregulated_precision as_of=routing_as_of_height out=routing_parameter_set_id
0036 routing.parameters.bind expected=routing_parameter_set_id.computed public=routing_parameter_set_id
0037 routing.route_word transmission_key_s=owner.transmission_fq out=owner.route_word
0038 routing.tag.public_range slot=0 tag=routing_tag
0039 routing.tag.route_bits slot=0 in=route_word
0040 routing.tag.random_word slot=0 nonce=routing_nonce out=random_word
0041 routing.tag.compose slot=0 route_word=route_word random_word=random_word meaningful=meaningful out=expected_tag
0042 spend.begin spend0
0043 gadget.note_commitment blinding=spend0.note.blinding amount=spend0.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend0.note.commitment.computed
0044 assert.eq_if lhs=spend0.note.commitment.computed rhs=spend0.state_proof.commitment enabled=spend0.is_real
0045 gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment position=spend0.state_proof.position out=spend0.nullifier.real
0046 gadget.state_commitment_path commitment=spend0.state_proof.commitment position=spend0.state_proof.position path=spend0.state_proof.path out=spend0.anchor.computed
0047 assert.eq_if lhs=spend0.anchor.computed rhs=anchor enabled=spend0.is_real
0048 gadget.synthetic_dummy_nullifier seed=spend0.dummy_nullifier_seed randomizer=spend0.auth_randomizer slot=0 out=spend0.nullifier.dummy
0049 dummy.mux flag=spend0.is_dummy real=spend0.nullifier.real dummy=spend0.nullifier.dummy out=spend0.nullifier.selected
0050 assert.eq lhs=spend0.nullifier rhs=spend0.nullifier.selected
0051 decaf.randomized_verification_key ak=shared.ak randomizer=spend0.auth_randomizer out=spend0.rk.real
0052 decaf.assert_equivalent_if lhs=spend0.rk.real rhs=spend0.rk.claimed enabled=spend0.is_real
0053 assert.eq_if lhs=spend0.note.amount rhs=0 enabled=spend0.is_dummy
0054 decaf.compress_to_field in=spend0.rk.claimed out=spend0.rk.compressed
0055 history.classify position=spend0.state_proof.position floor=recent_position_floor is_dummy=spend0.is_dummy out=spend0.history_required
0056 spend.collect spend0 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0057 spend.begin spend1
0058 gadget.note_commitment blinding=spend1.note.blinding amount=spend1.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend1.note.commitment.computed
0059 assert.eq_if lhs=spend1.note.commitment.computed rhs=spend1.state_proof.commitment enabled=spend1.is_real
0060 gadget.nullifier nk=auth.nk commitment=spend1.state_proof.commitment position=spend1.state_proof.position out=spend1.nullifier.real
0061 gadget.state_commitment_path commitment=spend1.state_proof.commitment position=spend1.state_proof.position path=spend1.state_proof.path out=spend1.anchor.computed
0062 assert.eq_if lhs=spend1.anchor.computed rhs=anchor enabled=spend1.is_real
0063 gadget.synthetic_dummy_nullifier seed=spend1.dummy_nullifier_seed randomizer=spend1.auth_randomizer slot=1 out=spend1.nullifier.dummy
0064 dummy.mux flag=spend1.is_dummy real=spend1.nullifier.real dummy=spend1.nullifier.dummy out=spend1.nullifier.selected
0065 assert.eq lhs=spend1.nullifier rhs=spend1.nullifier.selected
0066 decaf.randomized_verification_key ak=shared.ak randomizer=spend1.auth_randomizer out=spend1.rk.real
0067 decaf.assert_equivalent_if lhs=spend1.rk.real rhs=spend1.rk.claimed enabled=spend1.is_real
0068 assert.eq_if lhs=spend1.note.amount rhs=0 enabled=spend1.is_dummy
0069 decaf.compress_to_field in=spend1.rk.claimed out=spend1.rk.compressed
0070 history.classify position=spend1.state_proof.position floor=recent_position_floor is_dummy=spend1.is_dummy out=spend1.history_required
0071 spend.collect spend1 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0072 spend.begin spend2
0073 gadget.note_commitment blinding=spend2.note.blinding amount=spend2.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend2.note.commitment.computed
0074 assert.eq_if lhs=spend2.note.commitment.computed rhs=spend2.state_proof.commitment enabled=spend2.is_real
0075 gadget.nullifier nk=auth.nk commitment=spend2.state_proof.commitment position=spend2.state_proof.position out=spend2.nullifier.real
0076 gadget.state_commitment_path commitment=spend2.state_proof.commitment position=spend2.state_proof.position path=spend2.state_proof.path out=spend2.anchor.computed
0077 assert.eq_if lhs=spend2.anchor.computed rhs=anchor enabled=spend2.is_real
0078 gadget.synthetic_dummy_nullifier seed=spend2.dummy_nullifier_seed randomizer=spend2.auth_randomizer slot=2 out=spend2.nullifier.dummy
0079 dummy.mux flag=spend2.is_dummy real=spend2.nullifier.real dummy=spend2.nullifier.dummy out=spend2.nullifier.selected
0080 assert.eq lhs=spend2.nullifier rhs=spend2.nullifier.selected
0081 decaf.randomized_verification_key ak=shared.ak randomizer=spend2.auth_randomizer out=spend2.rk.real
0082 decaf.assert_equivalent_if lhs=spend2.rk.real rhs=spend2.rk.claimed enabled=spend2.is_real
0083 assert.eq_if lhs=spend2.note.amount rhs=0 enabled=spend2.is_dummy
0084 decaf.compress_to_field in=spend2.rk.claimed out=spend2.rk.compressed
0085 history.classify position=spend2.state_proof.position floor=recent_position_floor is_dummy=spend2.is_dummy out=spend2.history_required
0086 spend.collect spend2 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0087 spend.begin spend3
0088 gadget.note_commitment blinding=spend3.note.blinding amount=spend3.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend3.note.commitment.computed
0089 assert.eq_if lhs=spend3.note.commitment.computed rhs=spend3.state_proof.commitment enabled=spend3.is_real
0090 gadget.nullifier nk=auth.nk commitment=spend3.state_proof.commitment position=spend3.state_proof.position out=spend3.nullifier.real
0091 gadget.state_commitment_path commitment=spend3.state_proof.commitment position=spend3.state_proof.position path=spend3.state_proof.path out=spend3.anchor.computed
0092 assert.eq_if lhs=spend3.anchor.computed rhs=anchor enabled=spend3.is_real
0093 gadget.synthetic_dummy_nullifier seed=spend3.dummy_nullifier_seed randomizer=spend3.auth_randomizer slot=3 out=spend3.nullifier.dummy
0094 dummy.mux flag=spend3.is_dummy real=spend3.nullifier.real dummy=spend3.nullifier.dummy out=spend3.nullifier.selected
0095 assert.eq lhs=spend3.nullifier rhs=spend3.nullifier.selected
0096 decaf.randomized_verification_key ak=shared.ak randomizer=spend3.auth_randomizer out=spend3.rk.real
0097 decaf.assert_equivalent_if lhs=spend3.rk.real rhs=spend3.rk.claimed enabled=spend3.is_real
0098 assert.eq_if lhs=spend3.note.amount rhs=0 enabled=spend3.is_dummy
0099 decaf.compress_to_field in=spend3.rk.claimed out=spend3.rk.compressed
0100 history.classify position=spend3.state_proof.position floor=recent_position_floor is_dummy=spend3.is_dummy out=spend3.history_required
0101 spend.collect spend3 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0102 spend.begin spend4
0103 gadget.note_commitment blinding=spend4.note.blinding amount=spend4.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend4.note.commitment.computed
0104 assert.eq_if lhs=spend4.note.commitment.computed rhs=spend4.state_proof.commitment enabled=spend4.is_real
0105 gadget.nullifier nk=auth.nk commitment=spend4.state_proof.commitment position=spend4.state_proof.position out=spend4.nullifier.real
0106 gadget.state_commitment_path commitment=spend4.state_proof.commitment position=spend4.state_proof.position path=spend4.state_proof.path out=spend4.anchor.computed
0107 assert.eq_if lhs=spend4.anchor.computed rhs=anchor enabled=spend4.is_real
0108 gadget.synthetic_dummy_nullifier seed=spend4.dummy_nullifier_seed randomizer=spend4.auth_randomizer slot=4 out=spend4.nullifier.dummy
0109 dummy.mux flag=spend4.is_dummy real=spend4.nullifier.real dummy=spend4.nullifier.dummy out=spend4.nullifier.selected
0110 assert.eq lhs=spend4.nullifier rhs=spend4.nullifier.selected
0111 decaf.randomized_verification_key ak=shared.ak randomizer=spend4.auth_randomizer out=spend4.rk.real
0112 decaf.assert_equivalent_if lhs=spend4.rk.real rhs=spend4.rk.claimed enabled=spend4.is_real
0113 assert.eq_if lhs=spend4.note.amount rhs=0 enabled=spend4.is_dummy
0114 decaf.compress_to_field in=spend4.rk.claimed out=spend4.rk.compressed
0115 history.classify position=spend4.state_proof.position floor=recent_position_floor is_dummy=spend4.is_dummy out=spend4.history_required
0116 spend.collect spend4 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0117 spend.begin spend5
0118 gadget.note_commitment blinding=spend5.note.blinding amount=spend5.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend5.note.commitment.computed
0119 assert.eq_if lhs=spend5.note.commitment.computed rhs=spend5.state_proof.commitment enabled=spend5.is_real
0120 gadget.nullifier nk=auth.nk commitment=spend5.state_proof.commitment position=spend5.state_proof.position out=spend5.nullifier.real
0121 gadget.state_commitment_path commitment=spend5.state_proof.commitment position=spend5.state_proof.position path=spend5.state_proof.path out=spend5.anchor.computed
0122 assert.eq_if lhs=spend5.anchor.computed rhs=anchor enabled=spend5.is_real
0123 gadget.synthetic_dummy_nullifier seed=spend5.dummy_nullifier_seed randomizer=spend5.auth_randomizer slot=5 out=spend5.nullifier.dummy
0124 dummy.mux flag=spend5.is_dummy real=spend5.nullifier.real dummy=spend5.nullifier.dummy out=spend5.nullifier.selected
0125 assert.eq lhs=spend5.nullifier rhs=spend5.nullifier.selected
0126 decaf.randomized_verification_key ak=shared.ak randomizer=spend5.auth_randomizer out=spend5.rk.real
0127 decaf.assert_equivalent_if lhs=spend5.rk.real rhs=spend5.rk.claimed enabled=spend5.is_real
0128 assert.eq_if lhs=spend5.note.amount rhs=0 enabled=spend5.is_dummy
0129 decaf.compress_to_field in=spend5.rk.claimed out=spend5.rk.compressed
0130 history.classify position=spend5.state_proof.position floor=recent_position_floor is_dummy=spend5.is_dummy out=spend5.history_required
0131 spend.collect spend5 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0132 spend.begin spend6
0133 gadget.note_commitment blinding=spend6.note.blinding amount=spend6.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend6.note.commitment.computed
0134 assert.eq_if lhs=spend6.note.commitment.computed rhs=spend6.state_proof.commitment enabled=spend6.is_real
0135 gadget.nullifier nk=auth.nk commitment=spend6.state_proof.commitment position=spend6.state_proof.position out=spend6.nullifier.real
0136 gadget.state_commitment_path commitment=spend6.state_proof.commitment position=spend6.state_proof.position path=spend6.state_proof.path out=spend6.anchor.computed
0137 assert.eq_if lhs=spend6.anchor.computed rhs=anchor enabled=spend6.is_real
0138 gadget.synthetic_dummy_nullifier seed=spend6.dummy_nullifier_seed randomizer=spend6.auth_randomizer slot=6 out=spend6.nullifier.dummy
0139 dummy.mux flag=spend6.is_dummy real=spend6.nullifier.real dummy=spend6.nullifier.dummy out=spend6.nullifier.selected
0140 assert.eq lhs=spend6.nullifier rhs=spend6.nullifier.selected
0141 decaf.randomized_verification_key ak=shared.ak randomizer=spend6.auth_randomizer out=spend6.rk.real
0142 decaf.assert_equivalent_if lhs=spend6.rk.real rhs=spend6.rk.claimed enabled=spend6.is_real
0143 assert.eq_if lhs=spend6.note.amount rhs=0 enabled=spend6.is_dummy
0144 decaf.compress_to_field in=spend6.rk.claimed out=spend6.rk.compressed
0145 history.classify position=spend6.state_proof.position floor=recent_position_floor is_dummy=spend6.is_dummy out=spend6.history_required
0146 spend.collect spend6 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0147 spend.begin spend7
0148 gadget.note_commitment blinding=spend7.note.blinding amount=spend7.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=spend7.note.commitment.computed
0149 assert.eq_if lhs=spend7.note.commitment.computed rhs=spend7.state_proof.commitment enabled=spend7.is_real
0150 gadget.nullifier nk=auth.nk commitment=spend7.state_proof.commitment position=spend7.state_proof.position out=spend7.nullifier.real
0151 gadget.state_commitment_path commitment=spend7.state_proof.commitment position=spend7.state_proof.position path=spend7.state_proof.path out=spend7.anchor.computed
0152 assert.eq_if lhs=spend7.anchor.computed rhs=anchor enabled=spend7.is_real
0153 gadget.synthetic_dummy_nullifier seed=spend7.dummy_nullifier_seed randomizer=spend7.auth_randomizer slot=7 out=spend7.nullifier.dummy
0154 dummy.mux flag=spend7.is_dummy real=spend7.nullifier.real dummy=spend7.nullifier.dummy out=spend7.nullifier.selected
0155 assert.eq lhs=spend7.nullifier rhs=spend7.nullifier.selected
0156 decaf.randomized_verification_key ak=shared.ak randomizer=spend7.auth_randomizer out=spend7.rk.real
0157 decaf.assert_equivalent_if lhs=spend7.rk.real rhs=spend7.rk.claimed enabled=spend7.is_real
0158 assert.eq_if lhs=spend7.note.amount rhs=0 enabled=spend7.is_dummy
0159 decaf.compress_to_field in=spend7.rk.claimed out=spend7.rk.compressed
0160 history.classify position=spend7.state_proof.position floor=recent_position_floor is_dummy=spend7.is_dummy out=spend7.history_required
0161 spend.collect spend7 amount->input_amounts nullifier->statement.nullifiers_and_rks rk_compressed->statement.nullifiers_and_rks
0162 output.begin output0
0163 gadget.note_commitment blinding=output0.note.blinding amount=output0.note.amount asset_id=shared.asset_id div_gen_fq=shared.div_gen_fq transmission_key_s=shared.transmission.fq out=output0.note.commitment.computed
0164 assert.eq lhs=output0.note.commitment.computed rhs=output0.note_commitment
0165 output.collect output0 amount->output_amounts commitment->statement.output_commitments
0166 decaf.conservation_net_balance_commitment inputs=input_amounts outputs=output_amounts blinding=action_balance_blinding out=balance_commitment.computed
0167 decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment
0168 decaf.compress_to_field in=balance_commitment.computed out=balance_commitment.fq
0169 statement.append field=anchor
0170 statement.append_all fields=output_commitments
0171 statement.append field=balance_commitment.fq
0172 statement.append_all fields=nullifiers_and_rks
0173 statement.hash family=note_reshape8x1 fields=statement_fields out=statement_hash
0174 assert.eq lhs=statement_hash rhs=claimed_statement_hash
`

func TestNoteReshape8x1WiringTranscriptExact(t *testing.T) {
	got, err := ExportNoteReshape8x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}
	if err := validateNoteReshape8x1WiringTranscript(got); err != nil {
		t.Fatal(err)
	}
}

func validateNoteReshape8x1WiringTranscript(transcript string) error {
	if transcript != expectedNoteReshape8x1WiringTranscript {
		return fmt.Errorf(
			"unexpected note_reshape8x1 wiring transcript:\n%s",
			transcript,
		)
	}
	return nil
}

func requireNoteReshapeNonIdentitySeams(
	t *testing.T,
	manifest *ConstraintManifest,
) {
	t.Helper()
	expected := map[string]bool{
		"point=auth.ak coordinate=x":                      false,
		"point=shared.div_gen coordinate=x":               false,
		"point=shared.transmission.computed coordinate=x": false,
	}
	indices := make([]int, 0, len(expected))
	for _, segment := range manifest.Segments {
		if segment.Op != "assert.decaf_non_identity" {
			continue
		}
		role := strings.Join(segment.Args, " ")
		seen, ok := expected[role]
		if !ok {
			t.Fatalf("unexpected non-identity seam role %q", role)
		}
		if seen {
			t.Fatalf("duplicate non-identity seam role %q", role)
		}
		if segment.Kind != "glue" ||
			segment.ConstraintCount != 1 ||
			segment.End != segment.Start+1 {
			t.Fatalf(
				"non-identity seam %q is not one exact glue row: %+v",
				role,
				segment,
			)
		}
		expected[role] = true
		indices = append(indices, segment.Index)
	}
	for role, seen := range expected {
		if !seen {
			t.Fatalf("missing non-identity seam role %q", role)
		}
	}
	if len(indices) != 3 ||
		indices[1] != indices[0]+1 ||
		indices[2] <= indices[1] {
		t.Fatalf(
			"NoteReshape non-identity seams have unexpected order: %v",
			indices,
		)
	}
	var ivkRows int
	for _, segment := range manifest.Segments {
		if segment.Op != "assert.ne" ||
			!reflect.DeepEqual(
				segment.Args,
				[]string{"lhs=auth.ivk_reduced", "rhs=0"},
			) {
			continue
		}
		ivkRows++
		if segment.Kind != "glue" ||
			segment.ConstraintCount != 1 ||
			segment.End != segment.Start+1 {
			t.Fatalf(
				"reduced-IVK nonzero seam is not one exact glue row: %+v",
				segment,
			)
		}
	}
	if ivkRows != 1 {
		t.Fatalf("NoteReshape reduced-IVK nonzero row count %d, want 1", ivkRows)
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
			requireNoteReshapeNonIdentitySeams(t, manifest)
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
			transmission := requireBinding("shared.transmission.computed", 2)
			for _, name := range []string{
				"shared.asset_id",
				"shared.div_gen",
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
				if expression.Constant != "0" ||
					len(expression.Terms) != 2 ||
					expression.Terms[0].Coefficient != "1" ||
					expression.Terms[1].Coefficient != "1" ||
					expression.Terms[0].WireID == expression.Terms[1].WireID {
					t.Fatalf(
						"transmission coordinate %d is not the radix-4 final-add LC: %+v",
						coordinate, expression,
					)
				}
			}
			for index := 0; index < family.NIn; index++ {
				inputs := requireBinding(
					fmt.Sprintf("spend%d.note_commitment.inputs", index),
					5,
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
			}
			for index := 0; index < family.NOut; index++ {
				inputs := requireBinding(
					fmt.Sprintf("output%d.note_commitment.inputs", index),
					5,
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

func TestNoteReshape8x1WiringTranscriptDeterministic(t *testing.T) {
	first, err := ExportNoteReshape8x1WiringTranscript()
	if err != nil {
		t.Fatalf("export first transcript: %v", err)
	}
	second, err := ExportNoteReshape8x1WiringTranscript()
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

func TestTransferManifestUsesExactConstraintBoundaries(t *testing.T) {
	manifest, err := ExportTransferConstraintManifest("")
	if err != nil {
		t.Fatalf("export transfer manifest: %v", err)
	}
	requireExactAssetRegistryGapSeams(t, manifest)
	if manifest.Breakdown.UnclassifiedConstraints != 0 ||
		manifest.Breakdown.UnclassifiedSegments != 0 {
		t.Fatalf("transfer manifest has unclassified coverage: %+v", manifest.Breakdown)
	}

	equivalenceSegments := make([]ConstraintManifestSegment, 0, 2)
	for _, segment := range manifest.Segments {
		switch {
		case segment.Op == "gadget.metadata_hash" || segment.Op == "gadget.dleq":
			t.Fatalf("transfer manifest retained obsolete compliance proof segment %+v", segment)
		case segment.Op == "decaf.assert_equivalent":
			equivalenceSegments = append(equivalenceSegments, segment)
		default:
			for _, arg := range segment.Args {
				if strings.Contains(arg, ".proof.") ||
					strings.Contains(arg, "shared_point") ||
					strings.Contains(arg, "derived_pk") ||
					strings.Contains(arg, "enc_cmt") {
					t.Fatalf("transfer manifest retained obsolete proof argument %q", arg)
				}
			}
		}
		if segment.Kind == "gadget" && segment.ConstraintCount == 0 {
			t.Fatalf(
				"nonstructural gadget segment %d %s has no constraints",
				segment.Index,
				segment.Op,
			)
		}
	}

	if len(equivalenceSegments) != 2 {
		t.Fatalf(
			"unconditional equivalence segment count %d, want 2",
			len(equivalenceSegments),
		)
	}
	for _, segment := range equivalenceSegments {
		if segment.ConstraintCount != 3 {
			t.Fatalf(
				"equivalence segment %d has %d constraints, want 3",
				segment.Index,
				segment.ConstraintCount,
			)
		}
	}
}

func requireExactAssetRegistryGapSeams(t *testing.T, manifest *ConstraintManifest) {
	t.Helper()
	if len(manifest.Segments) < 2 {
		t.Fatalf("manifest has fewer than two segments")
	}

	boolean := manifest.Segments[0]
	if boolean.Op != "assert.boolean" ||
		!reflect.DeepEqual(boolean.Args, []string{"var=is_regulated"}) ||
		boolean.Start != 0 ||
		boolean.End != 1 ||
		boolean.ConstraintCount != 1 {
		t.Fatalf("is_regulated Booleanity must be the first exact row: %+v", boolean)
	}

	bodyIndex := -1
	for index, segment := range manifest.Segments {
		if segment.Op == "gadget.asset_registry_gap" {
			if bodyIndex != -1 {
				t.Fatalf("duplicate asset-registry gap body at segments %d and %d", bodyIndex, index)
			}
			bodyIndex = index
		}
	}
	if bodyIndex == -1 || bodyIndex+1 >= len(manifest.Segments) {
		t.Fatalf("missing asset-registry gap body or terminal row")
	}

	body := manifest.Segments[bodyIndex]
	if body.GadgetLabel != "gadget-imt-gap-body" ||
		body.BridgeTheorem != "Shieldd.GnarkFormal.Extracted.ImtGap.body_relation_sound" ||
		body.ConstraintCount != 3_542 ||
		!reflect.DeepEqual(body.Args, []string{
			"asset_id=shared.asset_id",
			"is_regulated=is_regulated",
			"value=asset.leaf.value",
			"next_value=asset.leaf.next_value",
			"out=asset.gap_valid",
		}) {
		t.Fatalf("unexpected exact asset-registry gap body: %+v", body)
	}

	accepted := manifest.Segments[bodyIndex+1]
	if accepted.Op != "assert.eq" ||
		!reflect.DeepEqual(accepted.Args, []string{
			"lhs=asset.gap_valid",
			"rhs=1",
		}) ||
		accepted.Start != body.End ||
		accepted.End != body.End+1 ||
		accepted.ConstraintCount != 1 {
		t.Fatalf("gap body is not immediately followed by its exact acceptance row: %+v", accepted)
	}
}

func TestTransferManifestClassifiesExactPathAndPoseidonShapes(t *testing.T) {
	manifest, err := ExportTransferConstraintManifest("")
	if err != nil {
		t.Fatalf("export transfer manifest: %v", err)
	}

	expectedLabels := map[string]string{
		"decaf.ack":                            "gadget-ack-derivation",
		"decaf.shared_secret":                  "gadget-shared-secrets",
		"threshold.flag":                       "gadget-threshold-regulated-flag",
		"gadget.asset_registry_params_hash":    "gadget-poseidon-hash3",
		"gadget.asset_registry_ring_hash":      "gadget-poseidon-hash5",
		"gadget.asset_registry_leaf_hash":      "gadget-poseidon-hash5",
		"gadget.asset_registry_path":           "gadget-quad-path-16",
		"gadget.compliance_leaf":               "gadget-poseidon-hash5",
		"gadget.compliance_path":               "gadget-quad-path-16",
		"gadget.state_commitment_path":         "gadget-quad-path-24",
		"gadget.poseidon_encryption.detection": "gadget-poseidon-encryption-detection-body",
		"gadget.poseidon_encryption.amount":    "gadget-poseidon-encryption-amount-body",
		"gadget.poseidon_encryption.address":   "gadget-poseidon-encryption-address-body",
	}
	expectedTheorems := map[string]string{
		"decaf.ack":                            "Shieldd.GnarkFormal.AckBridge.ack_sound",
		"decaf.shared_secret":                  "Shieldd.GnarkFormal.SharedSecretBridge.shared_secrets_sound",
		"threshold.flag":                       "Shieldd.GnarkFormal.ThresholdRegulatedBridge.threshold_flag_sound",
		"gadget.poseidon_encryption.detection": "Shieldd.GnarkFormal.PoseidonEncryptionBridge.detection_body_sound",
		"gadget.poseidon_encryption.amount":    "Shieldd.GnarkFormal.PoseidonEncryptionBridge.amount_body_sound",
		"gadget.poseidon_encryption.address":   "Shieldd.GnarkFormal.PoseidonEncryptionBridge.address_body_sound",
	}
	expectedCounts := map[string]int{
		"decaf.ack":                            2,
		"decaf.shared_secret":                  4,
		"threshold.flag":                       1,
		"gadget.poseidon_encryption.detection": 1,
		"gadget.poseidon_encryption.amount":    2,
		"gadget.poseidon_encryption.address":   2,
	}
	seen := make(map[string]int, len(expectedLabels))
	for _, segment := range manifest.Segments {
		for _, arg := range segment.Args {
			if strings.Contains(arg, "claimed.balance_commitment") {
				t.Fatalf(
					"transfer manifest reintroduced the redundant claimed balance point: %+v",
					segment,
				)
			}
		}
		expected, tracked := expectedLabels[segment.Op]
		if !tracked {
			continue
		}
		seen[segment.Op]++
		if segment.GadgetLabel != expected {
			t.Fatalf(
				"%s classified as %q, want %q",
				segment.Op,
				segment.GadgetLabel,
				expected,
			)
		}
		if theorem, pinned := expectedTheorems[segment.Op]; pinned &&
			segment.BridgeTheorem != theorem {
			t.Fatalf(
				"%s theorem %q, want %q",
				segment.Op,
				segment.BridgeTheorem,
				theorem,
			)
		}
		if segment.Op == "gadget.asset_registry_ring_hash" &&
			!reflect.DeepEqual(segment.Args, []string{
				"ring_pk_fq=asset.leaf.ring_pk_fq",
				"ring_id_hash=asset.leaf.ring_id_hash",
				"policy_id_hash=asset.leaf.policy_id_hash",
				"permission_hash=asset.leaf.permission_hash",
				"resource_hash=asset.leaf.resource_hash",
				"out=asset.leaf.ring_hash",
			}) {
			t.Fatalf(
				"asset registry ring hash does not bind its exact five-field tuple: %+v",
				segment,
			)
		}
	}
	for op := range expectedLabels {
		if seen[op] == 0 {
			t.Fatalf("transfer manifest has no %s segment", op)
		}
	}
	for op, count := range expectedCounts {
		if seen[op] != count {
			t.Fatalf("transfer manifest has %d %s segments, want %d", seen[op], op, count)
		}
	}

	if got := transferStatementFieldCount(); got != 47 {
		t.Fatalf("Transfer statement field count %d, want 47", got)
	}
	statementRows := make([]int, 0, 1)
	for _, segment := range manifest.Segments {
		if segment.Op != "statement.hash" {
			continue
		}
		if segment.GadgetLabel != "gadget-poseidon-hash7" {
			t.Fatalf(
				"Transfer statement block classified as %q",
				segment.GadgetLabel,
			)
		}
		statementRows = append(statementRows, segment.ConstraintCount)
	}
	expectedStatementRows := []int{3_750}
	if !reflect.DeepEqual(statementRows, expectedStatementRows) {
		t.Fatalf(
			"Transfer statement block rows %v, want %v",
			statementRows,
			expectedStatementRows,
		)
	}
}

func TestTransferManifestExportsSemanticBindings(t *testing.T) {
	manifest, err := ExportTransferConstraintManifest("")
	if err != nil {
		t.Fatalf("export transfer manifest: %v", err)
	}

	byName := make(map[string][]ConstraintLinearExpression)
	for _, binding := range manifest.SemanticBindings {
		if _, duplicate := byName[binding.Name]; duplicate {
			t.Fatalf("duplicate semantic binding %q", binding.Name)
		}
		byName[binding.Name] = binding.Expressions
	}
	requireArity := func(name string, arity int) []ConstraintLinearExpression {
		t.Helper()
		expressions, ok := byName[name]
		if !ok {
			t.Fatalf("missing semantic binding %q", name)
		}
		if len(expressions) != arity {
			t.Fatalf(
				"semantic binding %q arity %d, want %d",
				name,
				len(expressions),
				arity,
			)
		}
		return expressions
	}

	requireArity("claimed.statement_hash", 1)
	statementFields := requireArity(
		"statement.fields",
		transferStatementFieldCount(),
	)
	for index, field := range statementFields {
		indexed := requireArity(
			fmt.Sprintf("statement.field.%03d", index),
			1,
		)
		assertSameExpression(t, "indexed statement field", indexed[0], field)
	}
	requireArity("statement.hash", 1)
	requireArity("shared.asset_id", 1)
	requireArity("sender.transmission.computed", 2)
	requireArity("asset.root.computed", 1)
	requireArity("sender.compliance_root", 1)
	requireArity("spend0.note.commitment.computed", 1)
	requireArity("spend1.note.commitment.computed", 1)
	requireArity("output0.note.commitment.computed", 1)
	requireArity("output1.note.commitment.computed", 1)
	requireArity("balance_commitment.computed", 2)
	witnessPathByID := make(map[int]string, len(manifest.WitnessWires))
	for _, wire := range manifest.WitnessWires {
		witnessPathByID[wire.WireID] = wire.Path
	}
	metadataFieldOrder := []string{
		"RingIDHash",
		"PolicyIDHash",
		"ResourceHash",
		"PermissionHash",
		"TargetTimestamp",
		"SenderCoreSalt",
		"SenderExtSalt",
		"OutputCoreSalt",
		"OutputExtSalt",
	}
	metadata := requireArity(
		"compliance.metadata",
		len(metadataFieldOrder),
	)
	for index, field := range metadata {
		if field.Constant != "0" ||
			len(field.Terms) != 1 ||
			field.Terms[0].Coefficient != "1" {
			t.Fatalf(
				"metadata field %d is not a direct witness binding: %#v",
				index,
				field,
			)
		}
		gotPath := witnessPathByID[field.Terms[0].WireID]
		wantPath := "Compliance_Metadata_" + metadataFieldOrder[index]
		if gotPath != wantPath {
			t.Fatalf(
				"metadata field %d binds %q, want %q",
				index,
				gotPath,
				wantPath,
			)
		}
	}
	for _, tier := range []string{
		"sender_core",
		"sender_ext",
		"output_core",
		"output_ext",
	} {
		for _, role := range []string{"issuer", "user", "selected"} {
			requireArity(tier+".shared."+role, 2)
		}
	}
	for _, obsolete := range []string{
		"sender_core.metadata_hash",
		"sender_ext.metadata_hash",
		"output_core.metadata_hash",
		"output_ext.metadata_hash",
	} {
		if _, ok := byName[obsolete]; ok {
			t.Fatalf("transfer manifest must not retain obsolete semantic binding %q", obsolete)
		}
	}
	for name := range byName {
		if strings.Contains(name, ".proof.") ||
			strings.Contains(name, "shared_point") ||
			strings.Contains(name, "derived_pk") ||
			strings.Contains(name, "enc_cmt") {
			t.Fatalf("transfer manifest retained obsolete proof binding %q", name)
		}
	}

	boundWires := make(map[int]struct{}, len(manifest.WitnessWires))
	for _, binding := range manifest.SemanticBindings {
		for _, expression := range binding.Expressions {
			for _, term := range expression.Terms {
				boundWires[term.WireID] = struct{}{}
			}
		}
	}
	for _, wire := range manifest.WitnessWires {
		if _, ok := boundWires[wire.WireID]; !ok {
			t.Fatalf(
				"witness wire %d %q has no semantic binding",
				wire.WireID,
				wire.Path,
			)
		}
	}
}

func TestShieldedIcs20WithdrawalManifestIsExactAndFullyBound(t *testing.T) {
	manifest, err := ExportShieldedIcs20WithdrawalConstraintManifest("")
	if err != nil {
		t.Fatalf("export withdrawal manifest: %v", err)
	}
	requireExactAssetRegistryGapSeams(t, manifest)
	requireIdentityGuardRows(
		t,
		manifest,
		[]string{
			"point=auth.ak coordinate=x",
			"point=compliance.epk coordinate=x",
			"point=sender.div_gen coordinate=x",
			"point=sender.transmission.computed coordinate=x",
		},
	)

	if manifest.NbConstraints != 77_371 ||
		manifest.NbPublic != 2 ||
		manifest.NbSecret != 313 ||
		manifest.NbInternal != 71_822 {
		t.Fatalf(
			"unexpected withdrawal shape: constraints=%d public=%d secret=%d internal=%d",
			manifest.NbConstraints,
			manifest.NbPublic,
			manifest.NbSecret,
			manifest.NbInternal,
		)
	}
	if manifest.Breakdown.UnclassifiedConstraints != 0 ||
		manifest.Breakdown.UnclassifiedSegments != 0 {
		t.Fatalf("withdrawal manifest has unclassified coverage: %+v", manifest.Breakdown)
	}
	for _, segment := range manifest.Segments {
		if segment.ConstraintCount == 0 &&
			segment.Kind != "marker" &&
			segment.Kind != "adapter" {
			t.Fatalf(
				"nonstructural segment %d %s has no constraints",
				segment.Index,
				segment.Op,
			)
		}
		if (segment.Kind == "marker" || segment.Kind == "adapter") &&
			segment.ConstraintCount != 0 {
			t.Fatalf(
				"structural segment %d %s contains %d constraints",
				segment.Index,
				segment.Op,
				segment.ConstraintCount,
			)
		}
	}

	expectedGadgets := map[string]struct {
		label string
		count int
	}{
		"decaf.ack":                          {"gadget-ack-derivation", 1},
		"decaf.shared_secret":                {"gadget-shared-secrets", 1},
		"threshold.flag":                     {"gadget-threshold-regulated-flag", 1},
		"gadget.asset_registry_params_hash":  {"gadget-poseidon-hash3", 1},
		"gadget.asset_registry_ring_hash":    {"gadget-poseidon-hash5", 1},
		"gadget.asset_registry_leaf_hash":    {"gadget-poseidon-hash5", 1},
		"gadget.asset_registry_path":         {"gadget-quad-path-16", 1},
		"gadget.compliance_leaf":             {"gadget-poseidon-hash5", 1},
		"gadget.compliance_path":             {"gadget-quad-path-16", 1},
		"gadget.poseidon_hash2":              {"gadget-poseidon-hash2", 1},
		"gadget.poseidon_encryption.address": {"gadget-poseidon-encryption-address-body", 1},
		"gadget.note_commitment":             {"gadget-poseidon-hash6", 3},
		"gadget.nullifier":                   {"gadget-nullifier", 2},
		"gadget.state_commitment_path":       {"gadget-quad-path-24", 2},
		"decaf.randomized_verification_key":  {"gadget-rvk", 2},
		"gadget.synthetic_dummy_nullifier":   {"gadget-poseidon-hash3-specialized", 1},
		"decaf.conservation_net_balance_commitment2": {
			"gadget-conservation-net-balance-commitment2",
			1,
		},
		"statement.hash": {"gadget-poseidon-hash7", 5},
	}
	seen := make(map[string]int, len(expectedGadgets))
	for _, segment := range manifest.Segments {
		expected, tracked := expectedGadgets[segment.Op]
		if !tracked {
			continue
		}
		seen[segment.Op]++
		if segment.GadgetLabel != expected.label {
			t.Fatalf(
				"%s classified as %q, want %q",
				segment.Op,
				segment.GadgetLabel,
				expected.label,
			)
		}
		if segment.Op == "gadget.asset_registry_leaf_hash" {
			const exactPoseidon5 = "Shieldd.GnarkFormal.Poseidon5Bridge.circuit_sound_eq"
			if segment.BridgeTheorem != exactPoseidon5 {
				t.Fatalf(
					"%s theorem %q, want %q",
					segment.Op,
					segment.BridgeTheorem,
					exactPoseidon5,
				)
			}
		}
		if segment.Op == "decaf.conservation_net_balance_commitment2" {
			const exactConservation2 = "Shieldd.GnarkFormal.ConservationNetBalanceCommitment2Bridge.decaf377_conservationNetBalanceCommitment2_sound"
			if segment.BridgeTheorem != exactConservation2 {
				t.Fatalf(
					"2-in/2-out conservation theorem %q, want %q",
					segment.BridgeTheorem,
					exactConservation2,
				)
			}
		}
	}
	for op, expected := range expectedGadgets {
		if seen[op] != expected.count {
			t.Fatalf("%s segment count %d, want %d", op, seen[op], expected.count)
		}
	}

	byName := make(map[string][]ConstraintLinearExpression)
	boundWires := make(map[int]struct{}, len(manifest.WitnessWires))
	for _, binding := range manifest.SemanticBindings {
		if _, duplicate := byName[binding.Name]; duplicate {
			t.Fatalf("duplicate semantic binding %q", binding.Name)
		}
		byName[binding.Name] = binding.Expressions
		for _, expression := range binding.Expressions {
			for _, term := range expression.Terms {
				boundWires[term.WireID] = struct{}{}
			}
		}
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
				name,
				len(expressions),
				arity,
			)
		}
		return expressions
	}

	statementFields := requireBinding(
		"statement.fields",
		primitives.ShieldedIcs20WithdrawalStatementFieldCount(2),
	)
	for index, field := range statementFields {
		indexed := requireBinding(
			fmt.Sprintf("statement.field.%03d", index),
			1,
		)
		assertSameExpression(t, "withdrawal indexed statement field", indexed[0], field)
	}
	requireBinding("statement.hash", 1)
	requireBinding("statement.hash.block0", 1)
	requireBinding("statement.hash.block1", 1)
	requireBinding("statement.hash.block2", 1)
	requireBinding("statement.hash.block3", 1)
	sharedAsset := requireBinding("shared.asset_id", 1)[0]
	sharedDivGenFq := requireBinding("sender.div_gen_fq", 1)[0]
	sharedTransmissionFq := requireBinding("sender.transmission_fq", 1)[0]
	for _, name := range []string{"spend0", "spend1", "output0"} {
		inputs := requireBinding(name+".note_commitment.inputs", 5)
		assertSameExpression(t, name+" asset", inputs[2], sharedAsset)
		assertSameExpression(t, name+" diversified generator", inputs[3], sharedDivGenFq)
		assertSameExpression(t, name+" transmission key", inputs[4], sharedTransmissionFq)
	}
	for _, wire := range manifest.WitnessWires {
		if wire.ConstraintRows == 0 {
			t.Fatalf("witness wire %d %q influences no constraint", wire.WireID, wire.Path)
		}
		if _, ok := boundWires[wire.WireID]; !ok {
			t.Fatalf("witness wire %d %q has no semantic binding", wire.WireID, wire.Path)
		}
	}
}

func requireIdentityGuardRows(
	t *testing.T,
	manifest *ConstraintManifest,
	pointRoles []string,
) {
	t.Helper()
	expected := make(map[string]bool, len(pointRoles))
	for _, role := range pointRoles {
		expected[role] = false
	}
	var ivkRows int
	for _, segment := range manifest.Segments {
		if segment.Op == "assert.decaf_non_identity" {
			role := strings.Join(segment.Args, " ")
			seen, ok := expected[role]
			if !ok {
				t.Fatalf("unexpected Decaf nonidentity role %q", role)
			}
			if seen {
				t.Fatalf("duplicate Decaf nonidentity role %q", role)
			}
			if segment.Kind != "glue" || segment.ConstraintCount != 1 {
				t.Fatalf(
					"Decaf nonidentity role %q is not one exact row: %+v",
					role,
					segment,
				)
			}
			expected[role] = true
		}
		if segment.Op == "assert.ne" &&
			reflect.DeepEqual(
				segment.Args,
				[]string{"lhs=auth.ivk_reduced", "rhs=0"},
			) {
			ivkRows++
			if segment.Kind != "glue" || segment.ConstraintCount != 1 {
				t.Fatalf(
					"reduced-IVK nonzero seam is not one exact row: %+v",
					segment,
				)
			}
		}
	}
	for role, seen := range expected {
		if !seen {
			t.Fatalf("missing Decaf nonidentity role %q", role)
		}
	}
	if ivkRows != 1 {
		t.Fatalf("reduced-IVK nonzero row count %d, want 1", ivkRows)
	}
}

func removeTranscriptLineContaining(
	t *testing.T,
	transcript string,
	semanticRole string,
) string {
	t.Helper()
	lines := strings.Split(transcript, "\n")
	match := -1
	for index, line := range lines {
		if !strings.Contains(line, semanticRole) {
			continue
		}
		if match != -1 {
			t.Fatalf("transcript role %q is not unique", semanticRole)
		}
		match = index
	}
	if match == -1 {
		t.Fatalf("transcript role %q is missing", semanticRole)
	}
	return strings.Join(append(lines[:match], lines[match+1:]...), "\n")
}

func swapTranscriptLinesContaining(
	t *testing.T,
	transcript string,
	firstRole string,
	secondRole string,
) string {
	t.Helper()
	lines := strings.Split(transcript, "\n")
	findUnique := func(role string) int {
		t.Helper()
		match := -1
		for index, line := range lines {
			if !strings.Contains(line, role) {
				continue
			}
			if match != -1 {
				t.Fatalf("transcript role %q is not unique", role)
			}
			match = index
		}
		if match == -1 {
			t.Fatalf("transcript role %q is missing", role)
		}
		return match
	}
	first := findUnique(firstRole)
	second := findUnique(secondRole)
	lines[first], lines[second] = lines[second], lines[first]
	return strings.Join(lines, "\n")
}

func TestNoteReshape8x1WiringTranscriptDetectsSemanticDrift(t *testing.T) {
	actual, err := ExportNoteReshape8x1WiringTranscript()
	if err != nil {
		t.Fatalf("export transcript: %v", err)
	}

	mutations := map[string]string{
		"dropped gadget call": removeTranscriptLineContaining(
			t,
			actual,
			"gadget.nullifier nk=auth.nk commitment=spend0.state_proof.commitment",
		),
		"swapped wiring": strings.Replace(actual, "in=spend0.rk.claimed out=spend0.rk.compressed", "in=spend1.rk.claimed out=spend0.rk.compressed", 1),
		"missing equivalence": removeTranscriptLineContaining(
			t,
			actual,
			"decaf.assert_equivalent lhs=balance_commitment.computed rhs=claimed.balance_commitment",
		),
		"statement order": swapTranscriptLinesContaining(
			t,
			actual,
			"statement.append_all fields=output_commitments",
			"statement.append field=balance_commitment.fq",
		),
	}
	for name, mutated := range mutations {
		t.Run(name, func(t *testing.T) {
			if err := validateNoteReshape8x1WiringTranscript(mutated); err == nil {
				t.Fatalf(
					"exact transcript validator accepted %s mutation",
					name,
				)
			}
		})
	}
}

func TestNoteReshape8x1WiringTranscriptDoesNotChangeConstraintStats(t *testing.T) {
	untraced, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, NewNoteReshapeCircuit("note_reshape8x1", 8, 1))
	if err != nil {
		t.Fatalf("compile untraced circuit: %v", err)
	}

	transcript := newWiringTranscript("note_reshape8x1", 8, 1)
	traced, err := frontend.Compile(ecc.BLS12_377.ScalarField(), r1cs.NewBuilder, noteReshapeCircuitWithTranscript("note_reshape8x1", 8, 1, transcript))
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
