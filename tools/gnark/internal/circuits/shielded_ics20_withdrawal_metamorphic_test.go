package circuits_test

import (
	"reflect"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/test"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

func TestShieldedIcs20WithdrawalUsesExplicitRequiredOptionalLayout(t *testing.T) {
	for label, typ := range map[string]reflect.Type{
		"binary witness": reflect.TypeOf(abi.ShieldedIcs20WithdrawalWitnessV6Binary{}),
		"circuit":        reflect.TypeOf(circuits.ShieldedIcs20WithdrawalCircuit{}),
	} {
		for _, required := range []string{"RequiredSpend", "OptionalSpend"} {
			if _, ok := typ.FieldByName(required); !ok {
				t.Fatalf("%s must carry explicit %s", label, required)
			}
		}
		if _, ok := typ.FieldByName("Spends"); ok {
			t.Fatalf("%s must not carry an ambiguous spend slice", label)
		}
	}
}

func TestShieldedIcs20WithdrawalV6OmitsRedundantSerializedFields(t *testing.T) {
	for label, tc := range map[string]struct {
		typ        reflect.Type
		prohibited []string
	}{
		"top-level witness": {
			typ: reflect.TypeOf(abi.ShieldedIcs20WithdrawalWitnessV6Binary{}),
			prohibited: []string{
				"BalanceCommitment",
				"StatementFields",
				"AK",
				"SenderAssetID",
				"SenderTransmissionKey",
			},
		},
		"required spend": {
			typ: reflect.TypeOf(abi.ShieldedIcs20WithdrawalRequiredSpendWitnessV6Binary{}),
			prohibited: []string{
				"SpentTransmissionKey",
				"SpentDivGenAffine",
				"SpentTransmissionAffine",
				"SpentNoteAssetID",
				"StateCommitmentCommitment",
			},
		},
		"change output": {
			typ: reflect.TypeOf(abi.ShieldedIcs20WithdrawalChangeWitnessV6Binary{}),
			prohibited: []string{
				"CreatedTransmissionKey",
				"CreatedDivGenAffine",
				"CreatedTransmissionAffine",
				"CreatedNoteAssetID",
			},
		},
		"indexed leaf": {
			typ:        reflect.TypeOf(abi.IndexedLeafBinary{}),
			prohibited: []string{"DKPub", "RingPK"},
		},
		"circuit note": {
			typ: reflect.TypeOf(circuits.ShieldedIcs20WithdrawalNoteCircuitFields{}),
			prohibited: []string{
				"DivGen",
				"TransmissionKeyS",
				"Transmission",
				"AssetID",
			},
		},
		"circuit state path": {
			typ:        reflect.TypeOf(circuits.ShieldedIcs20WithdrawalStatePathCircuitFields{}),
			prohibited: []string{"Commitment"},
		},
		"circuit sender": {
			typ: reflect.TypeOf(circuits.ShieldedIcs20WithdrawalSenderCircuitFields{}),
			prohibited: []string{
				"Transmission",
				"AssetID",
			},
		},
	} {
		for _, field := range tc.prohibited {
			if _, ok := tc.typ.FieldByName(field); ok {
				t.Fatalf("%s must not carry redundant field %s", label, field)
			}
		}
	}
}

func TestShieldedIcs20WithdrawalBindsEveryEffectHashLimb(t *testing.T) {
	for limb, name := range []string{"0", "1", "2", "3"} {
		t.Run(name, func(t *testing.T) {
			fixture := testfixtures.LoadShieldedIcs20WithdrawalWitnessV6(
				"shielded_ics20_withdrawal",
			)
			assignment, family, err :=
				abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV6(fixture)
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

func TestShieldedIcs20WithdrawalOptionalDummyBindsNullifierSeed(t *testing.T) {
	witness, assignment, nIn := loadWithdrawalFixture(t)
	makeWithdrawalOptionalSpendDummy(t, witness, assignment)
	setWithdrawalBalanceCommitment(t, witness, assignment)
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
