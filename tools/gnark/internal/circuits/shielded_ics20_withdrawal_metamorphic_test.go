package circuits_test

import (
	"math/big"
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/test"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

func TestRegulatedWithdrawalRejectsFrozenSender(t *testing.T) {
	_, assignment, nIn := loadWithdrawalFixture(t)
	assignment.Sender.Status = 2

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("regulated withdrawal accepted a frozen sender")
	}
}

func TestShieldedIcs20WithdrawalBindsEveryEffectHashLimb(t *testing.T) {
	for limb, name := range []string{"0", "1", "2", "3"} {
		t.Run(name, func(t *testing.T) {
			fixture := testfixtures.LoadShieldedIcs20WithdrawalWitnessV12(
				"shielded_ics20_withdrawal",
			)
			assignment, family, err :=
				abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV12(fixture)
			if err != nil {
				t.Fatalf("decode withdrawal fixture: %v", err)
			}
			assignment.WithdrawalEffectHashLimbs[limb] =
				mutateFieldByOne(assignment.WithdrawalEffectHashLimbs[limb])

			if err := test.IsSolved(
				circuits.NewShieldedIcs20WithdrawalCircuit(family.NIn),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf("withdrawal accepted mutated effect-hash limb %d", limb)
			}
		})
	}
}

func TestShieldedIcs20WithdrawalRejectsNonBooleanRegulatedSelector(t *testing.T) {
	_, assignment, nIn := loadWithdrawalFixture(t)
	assignment.IsRegulated = 2
	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("shielded ICS-20 withdrawal accepted is_regulated=2")
	}
}

func TestShieldedIcs20WithdrawalRejectsEveryOwnedPublicFieldMutation(
	t *testing.T,
) {
	tests := []struct {
		name   string
		mutate func(
			*testing.T,
			*abi.ShieldedIcs20WithdrawalWitnessV12Binary,
			*circuits.ShieldedIcs20WithdrawalCircuit,
		)
	}{
		{
			name: "required spend nullifier",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				w.RequiredSpend.Nullifier = addFieldElementBytes(
					t,
					w.RequiredSpend.Nullifier,
					big.NewInt(1),
				)
				c.RequiredSpend.Nullifier = primitives.LittleEndianBytesToBigInt(
					w.RequiredSpend.Nullifier[:],
				).String()
			},
		},
		{
			name: "optional real spend nullifier",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				if w.OptionalSpend.IsDummy {
					t.Fatal("withdrawal mutation fixture must expose a real optional spend")
				}
				w.OptionalSpend.Nullifier = addFieldElementBytes(
					t,
					w.OptionalSpend.Nullifier,
					big.NewInt(1),
				)
				c.OptionalSpend.Nullifier = primitives.LittleEndianBytesToBigInt(
					w.OptionalSpend.Nullifier[:],
				).String()
			},
		},
		{
			name: "required randomized verification key",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				if !pointsHaveDistinctCompression(
					t,
					w.RequiredSpend.RKAffine,
					w.OptionalSpend.RKAffine,
				) {
					t.Fatal("withdrawal mutation fixture must expose distinct spend RKs")
				}
				w.RequiredSpend.RKAffine = w.OptionalSpend.RKAffine
				c.RequiredSpend.RK = c.OptionalSpend.RK
			},
		},
		{
			name: "optional real randomized verification key",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				if w.OptionalSpend.IsDummy {
					t.Fatal("withdrawal mutation fixture must expose a real optional spend")
				}
				if !pointsHaveDistinctCompression(
					t,
					w.RequiredSpend.RKAffine,
					w.OptionalSpend.RKAffine,
				) {
					t.Fatal("withdrawal mutation fixture must expose distinct spend RKs")
				}
				w.OptionalSpend.RKAffine = w.RequiredSpend.RKAffine
				c.OptionalSpend.RK = c.RequiredSpend.RK
			},
		},
		{
			name: "outbound asset id",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				w.OutboundAssetID = addFieldElementBytes(
					t,
					w.OutboundAssetID,
					big.NewInt(1),
				)
				c.OutboundAssetID = primitives.LittleEndianBytesToBigInt(
					w.OutboundAssetID[:],
				).String()
			},
		},
		{
			name: "outbound amount exact conservation",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				amount := primitives.LittleEndianBytesToBigInt(
					w.OutboundAmount[:],
				)
				amount.Add(amount, big.NewInt(1))
				if amount.BitLen() > 128 {
					t.Fatalf(
						"mutated withdrawal outbound amount exceeds the u128 range: %s",
						amount,
					)
				}
				w.OutboundAmount = le32FromBigInt(t, amount)
				c.OutboundAmount = amount.String()
			},
		},
		{
			name: "change note commitment",
			mutate: func(
				t *testing.T,
				w *abi.ShieldedIcs20WithdrawalWitnessV12Binary,
				c *circuits.ShieldedIcs20WithdrawalCircuit,
			) {
				w.ChangeOutput.NoteCommitment = addFieldElementBytes(
					t,
					w.ChangeOutput.NoteCommitment,
					big.NewInt(1),
				)
				c.ChangeOutput.NoteCommitment =
					primitives.LittleEndianBytesToBigInt(
						w.ChangeOutput.NoteCommitment[:],
					).String()
			},
		},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			witness, assignment, nIn := loadWithdrawalFixture(t)
			tc.mutate(t, witness, assignment)
			setWithdrawalStatementHash(t, witness, assignment, nIn)
			if err := test.IsSolved(
				circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf(
					"withdrawal accepted independently rebound %s",
					tc.name,
				)
			}
		})
	}
}

func TestShieldedIcs20WithdrawalWiringBindsCompactLeafAndSentinel(t *testing.T) {
	transcript, err := circuits.ExportShieldedIcs20WithdrawalWiringTranscript(
		"shielded_ics20_withdrawal",
		2,
	)
	if err != nil {
		t.Fatalf("export withdrawal wiring transcript: %v", err)
	}

	for _, binding := range []string{
		"assert.ne lhs=shared.asset_id rhs=0",
		"gadget.asset_registry_leaf_hash value=asset.leaf.value next_index=asset.leaf.next_index next_value=asset.leaf.next_value params_hash=asset.leaf.params_hash ring_hash=asset.leaf.ring_hash out=asset.leaf.commitment",
		"gadget.compliance_leaf div_gen_fq=sender.div_gen_fq transmission_fq=sender.transmission_fq asset_id=shared.asset_id",
	} {
		if count := strings.Count(transcript, binding); count != 1 {
			t.Fatalf("withdrawal wiring must contain %q exactly once, got %d", binding, count)
		}
	}
	manifest, manifestErr := circuits.ExportShieldedIcs20WithdrawalConstraintManifest("")
	if manifestErr != nil {
		t.Fatalf("export withdrawal constraint manifest: %v", manifestErr)
	}
	for _, rk := range []string{"spend0.rk.claimed", "spend1.rk.claimed"} {
		count := 0
		for _, binding := range manifest.SemanticBindings {
			if binding.Name == rk {
				count++
			}
		}
		if count != 1 {
			t.Fatalf("withdrawal wiring must bind %s exactly once, got %d", rk, count)
		}
	}
}

func TestShieldedIcs20WithdrawalOptionalDummyBindsNullifierSeed(t *testing.T) {
	witness, assignment, nIn := loadWithdrawalFixture(t)
	makeWithdrawalOptionalSpendDummy(t, witness, assignment)
	balanceWithdrawalAfterOptionalDummy(t, witness, assignment)
	setWithdrawalStatementHash(t, witness, assignment, nIn)
	assignment.OptionalSpend.DummyNullifierSeed =
		mutateFieldByOne(assignment.OptionalSpend.DummyNullifierSeed)

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("withdrawal optional dummy accepted a mutated nullifier seed")
	}
}

func TestShieldedIcs20WithdrawalSyntheticDummyNullifierBindsFixedSlot(
	t *testing.T,
) {
	fixture := testfixtures.LoadShieldedIcs20WithdrawalWitnessV12(
		"shielded_ics20_withdrawal_unregulated",
	)
	witness, family, err := abi.DecodeShieldedIcs20WithdrawalWitnessV12(fixture)
	if err != nil {
		t.Fatalf("decode dummy withdrawal fixture: %v", err)
	}
	assignment, _, err :=
		abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV12(fixture)
	if err != nil {
		t.Fatalf("build dummy withdrawal assignment: %v", err)
	}
	if !witness.OptionalSpend.IsDummy {
		t.Fatal("unregulated withdrawal fixture must have a dummy optional spend")
	}

	const (
		wrongSlot     = 0
		canonicalSlot = 1
	)
	wrongNullifier := withdrawalDummyNullifierForSlot(
		t,
		witness.OptionalSpend,
		wrongSlot,
	)
	canonicalNullifier := withdrawalDummyNullifierForSlot(
		t,
		witness.OptionalSpend,
		canonicalSlot,
	)
	if wrongNullifier.Cmp(canonicalNullifier) == 0 {
		t.Fatal("wrong-slot withdrawal nullifier unexpectedly equals canonical")
	}
	witness.OptionalSpend.Nullifier = le32FromBigInt(t, wrongNullifier)
	assignment.OptionalSpend.Nullifier = wrongNullifier.String()
	setWithdrawalStatementHash(t, witness, assignment, family.NIn)

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(family.NIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("withdrawal accepted a slot-0 dummy nullifier in fixed slot 1")
	}
}
