package circuits_test

import (
	"fmt"
	"math/big"
	"reflect"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decaf377 "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
	"golang.org/x/crypto/blake2b"
)

type transferMutation struct {
	name                   string
	preserveStaleStatement bool
	mutate                 func(
		*testing.T,
		*abi.TransferWitnessV19Binary,
		*circuits.TransferCircuit,
	)
}

func loadTransferAssignment(
	t *testing.T,
) (*abi.TransferWitnessV19Binary, *circuits.TransferCircuit) {
	t.Helper()
	fixtureBytes := testfixtures.LoadTransferWitnessV19("transfer")
	witness, _, err := abi.DecodeTransferWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture binary: %v", err)
	}
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	validateTransferMutationFixture(t, assignment)
	return witness, assignment
}

func loadUnregulatedTransferV19(
	t *testing.T,
) (*abi.TransferWitnessV19Binary, *circuits.TransferCircuit) {
	t.Helper()
	fixtureBytes := testfixtures.LoadTransferWitnessV19("transfer_unregulated")
	witness, _, err := abi.DecodeTransferWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("decode unregulated transfer witness fixture: %v", err)
	}
	if witness.IsRegulated {
		t.Fatal("unregulated transfer witness fixture must use the unregulated branch")
	}
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("build unregulated transfer assignment: %v", err)
	}
	return witness, assignment
}

func setTransferStatementHashV19(
	t *testing.T,
	witness *abi.TransferWitnessV19Binary,
	assignment *circuits.TransferCircuit,
) {
	t.Helper()
	fields, err := abi.ReconstructedTransferStatementFieldsFromWitnessV19(witness)
	if err != nil {
		t.Fatalf("reconstruct transfer statement fields: %v", err)
	}
	statementHash, err := primitives.TransferStatementHashNativeForShape(
		fieldElementStrings(fields),
		circuits.TransferCircuitInputs,
		circuits.TransferCircuitOutputs,
	)
	if err != nil {
		t.Fatalf("compute transfer statement hash: %v", err)
	}
	assignment.ClaimedStatementHash = statementHash.String()
}

func validateTransferMutationFixture(t *testing.T, assignment *circuits.TransferCircuit) {
	t.Helper()
	if len(assignment.RequiredSpend.StateProof.Path) == 0 {
		t.Fatalf("transfer witness fixture required spend must contain a state path")
	}
}

func TestRegulatedTransferRejectsFrozenSenderAndRecipient(t *testing.T) {
	for _, mutate := range []struct {
		name  string
		apply func(*circuits.TransferCircuit)
	}{
		{name: "sender", apply: func(assignment *circuits.TransferCircuit) {
			assignment.Sender.Status = 2
		}},
		{name: "recipient", apply: func(assignment *circuits.TransferCircuit) {
			assignment.ReceiverOutput.Recipient.Status = 2
		}},
	} {
		t.Run(mutate.name, func(t *testing.T) {
			_, assignment := loadTransferAssignment(t)
			mutate.apply(assignment)
			if err := test.IsSolved(
				circuits.NewTransferCircuit(),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf("regulated transfer accepted a frozen %s", mutate.name)
			}
		})
	}
}

func assertTransferMutationRejected(t *testing.T, mutation transferMutation) {
	t.Helper()
	witness, assignment := loadTransferAssignment(t)
	mutation.mutate(t, witness, assignment)
	if !mutation.preserveStaleStatement {
		setTransferStatementHashV19(t, witness, assignment)
	}

	if err := test.IsSolved(circuits.NewTransferCircuit(), assignment, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatalf("expected transfer circuit to reject mutation %q", mutation.name)
	}
}

func le32FromBigInt(t *testing.T, value *big.Int) [32]byte {
	t.Helper()
	var out [32]byte
	if value.Sign() < 0 {
		t.Fatalf("negative field value %s", value.String())
	}
	bytes := value.Bytes()
	if len(bytes) > len(out) {
		t.Fatalf("field value %s exceeds 32 bytes", value.String())
	}
	for i := range bytes {
		out[i] = bytes[len(bytes)-1-i]
	}
	return out
}

func fieldElementStrings(fields [][32]byte) []*big.Int {
	out := make([]*big.Int, 0, len(fields))
	for i := range fields {
		out = append(out, primitives.LittleEndianBytesToBigInt(fields[i][:]))
	}
	return out
}

func addFieldElementBytes(
	t *testing.T,
	value [32]byte,
	delta *big.Int,
) [32]byte {
	t.Helper()
	updated := new(big.Int).Add(
		primitives.LittleEndianBytesToBigInt(value[:]),
		delta,
	)
	updated.Mod(updated, primitives.ScalarField())
	return le32FromBigInt(t, updated)
}

func addDecafScalarBytes(
	t *testing.T,
	value [32]byte,
	delta *big.Int,
) [32]byte {
	t.Helper()
	order := decaf377.ScalarOrder()
	original := primitives.LittleEndianBytesToBigInt(value[:])
	if original.Cmp(order) >= 0 {
		t.Fatalf(
			"fixture Decaf scalar is non-canonical: %s >= %s",
			original,
			order,
		)
	}
	updated := new(big.Int).Add(original, delta)
	updated.Mod(updated, order)
	if updated.Sign() < 0 || updated.Cmp(order) >= 0 {
		t.Fatalf("mutated Decaf scalar is non-canonical: %s", updated)
	}
	return le32FromBigInt(t, updated)
}

func compressedPointFromBinary(
	t *testing.T,
	point abi.PointAffineBinary,
) *big.Int {
	t.Helper()
	compressed, err := decafgnark.CompressToFieldNative(gnarkte.Point{
		X: primitives.LittleEndianBytesToBigInt(point.X[:]),
		Y: primitives.LittleEndianBytesToBigInt(point.Y[:]),
	})
	if err != nil {
		t.Fatalf("compress witness point: %v", err)
	}
	return compressed
}

func pointsHaveDistinctCompression(
	t *testing.T,
	left abi.PointAffineBinary,
	right abi.PointAffineBinary,
) bool {
	t.Helper()
	return compressedPointFromBinary(t, left).Cmp(
		compressedPointFromBinary(t, right),
	) != 0
}

func circuitPointFromBinary(point abi.PointAffineBinary) circuits.Point2D {
	return circuits.Point2D{
		X: primitives.LittleEndianBytesToBigInt(point.X[:]).String(),
		Y: primitives.LittleEndianBytesToBigInt(point.Y[:]).String(),
	}
}

func noteCommitmentNativeFromFields(
	t *testing.T,
	blinding [32]byte,
	amount [32]byte,
	assetID [32]byte,
	divGenFQ *big.Int,
	transmissionFQ *big.Int,
) *big.Int {
	t.Helper()
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatalf("load prototype vectors: %v", err)
	}
	commitment, err := primitives.Poseidon377Hash5Native(
		primitives.MustBigInt(vectors.Poseidon377.NoteCommitDomain),
		[5]*big.Int{
			primitives.LittleEndianBytesToBigInt(blinding[:]),
			primitives.LittleEndianBytesToBigInt(amount[:]),
			primitives.LittleEndianBytesToBigInt(assetID[:]),
			divGenFQ,
			transmissionFQ,
		},
	)
	if err != nil {
		t.Fatalf("compute native note commitment: %v", err)
	}
	return commitment
}

func transferAssignmentWithFalseRegulatedBranch(t *testing.T) *circuits.TransferCircuit {
	t.Helper()

	fixtureBytes := testfixtures.LoadTransferWitnessV19("transfer")
	witness, _, err := abi.DecodeTransferWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatalf("transfer fixture must start regulated for this regression")
	}

	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("build transfer assignment: %v", err)
	}

	assignment.IsRegulated = 0
	return assignment
}

func TestTransferCircuitRejectsRegulatedAssetRoutedAsUnregulated(t *testing.T) {
	assignment := transferAssignmentWithFalseRegulatedBranch(t)
	if err := test.IsSolved(circuits.NewTransferCircuit(), assignment, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatalf("expected transfer circuit to reject regulated asset routed through unregulated branch")
	}
}

func TestTransferCircuitRejectsNonBooleanRegulatedSelector(t *testing.T) {
	_, assignment := loadTransferAssignment(t)
	assignment.IsRegulated = 2
	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("transfer accepted is_regulated=2")
	}
}

func TestTransferCircuitAcceptsCanonicalUnregulatedBranch(t *testing.T) {
	witness, assignment := loadUnregulatedTransferV19(t)
	if got := primitives.LittleEndianBytesToBigInt(witness.AssetIndexedLeaf.Threshold[:]); got.Cmp(big.NewInt(1)) != 0 {
		t.Fatalf("unregulated regression fixture predecessor threshold = %s, want 1", got)
	}
	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("canonical unregulated transfer must satisfy the circuit: %v", err)
	}
}

func TestTransferCircuitAcceptsRegulatedFlaggedHiddenArity(t *testing.T) {
	fixtureBytes := testfixtures.LoadTransferWitnessV19("transfer_flagged")
	witness, _, err := abi.DecodeTransferWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("decode flagged transfer witness fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatal("flagged transfer witness must use the regulated branch")
	}
	if !witness.OptionalSpend.IsDummy {
		t.Fatal("flagged transfer witness must cover the dummy optional-spend branch")
	}
	if amount := primitives.LittleEndianBytesToBigInt(
		witness.ChangeOutput.CreatedNoteAmount[:],
	); amount.Sign() != 0 {
		t.Fatalf("flagged transfer witness change amount = %s, want dummy zero", amount)
	}
	threshold := primitives.LittleEndianBytesToBigInt(
		witness.AssetIndexedLeaf.Threshold[:],
	)
	receiverAmount := primitives.LittleEndianBytesToBigInt(
		witness.ReceiverOutput.CreatedNoteAmount[:],
	)
	if receiverAmount.Cmp(threshold) < 0 {
		t.Fatalf(
			"flagged transfer receiver amount %s is below threshold %s",
			receiverAmount,
			threshold,
		)
	}

	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("build flagged transfer assignment: %v", err)
	}
	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("canonical regulated flagged transfer must satisfy the circuit: %v", err)
	}
}

func TestTransferDetectionRejectsSlotIDsOutsideCanonicalU32Range(t *testing.T) {
	slotAliasDelta := new(big.Int).Lsh(big.NewInt(1), 32)
	tests := []struct {
		name   string
		mutate func(*abi.TransferWitnessV19Binary, *circuits.TransferCircuit)
	}{
		{
			name: "sender",
			mutate: func(
				witness *abi.TransferWitnessV19Binary,
				assignment *circuits.TransferCircuit,
			) {
				witness.SenderSlotID = addFieldElementBytes(
					t,
					witness.SenderSlotID,
					slotAliasDelta,
				)
				assignment.Sender.SlotID = primitives.LittleEndianBytesToBigInt(
					witness.SenderSlotID[:],
				).String()
				witness.DetectionCiphertext[2] = addFieldElementBytes(
					t,
					witness.DetectionCiphertext[2],
					slotAliasDelta,
				)
				assignment.Compliance.DetectionCiphertext[2] =
					primitives.LittleEndianBytesToBigInt(
						witness.DetectionCiphertext[2][:],
					).String()
			},
		},
		{
			name: "receiver",
			mutate: func(
				witness *abi.TransferWitnessV19Binary,
				assignment *circuits.TransferCircuit,
			) {
				witness.ReceiverOutput.RecipientSlotID = addFieldElementBytes(
					t,
					witness.ReceiverOutput.RecipientSlotID,
					slotAliasDelta,
				)
				assignment.ReceiverOutput.Recipient.SlotID =
					primitives.LittleEndianBytesToBigInt(
						witness.ReceiverOutput.RecipientSlotID[:],
					).String()
				witness.DetectionCiphertext[3] = addFieldElementBytes(
					t,
					witness.DetectionCiphertext[3],
					slotAliasDelta,
				)
				assignment.Compliance.DetectionCiphertext[3] =
					primitives.LittleEndianBytesToBigInt(
						witness.DetectionCiphertext[3][:],
					).String()
			},
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			witness, assignment := loadUnregulatedTransferV19(t)
			tc.mutate(witness, assignment)
			setTransferStatementHashV19(t, witness, assignment)
			if err := test.IsSolved(
				circuits.NewTransferCircuit(),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf("transfer accepted %s slot ID outside the u32 range", tc.name)
			}
		})
	}
}

func TestTransferCircuitBindsUnregulatedCiphertextAndCanonicalPolicy(t *testing.T) {
	tests := []struct {
		name   string
		mutate func(
			*testing.T,
			*abi.TransferWitnessV19Binary,
			*circuits.TransferCircuit,
		)
	}{
		{
			name: "detection ciphertext",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				a *circuits.TransferCircuit,
			) {
				w.DetectionCiphertext[0] = addFieldElementBytes(
					t,
					w.DetectionCiphertext[0],
					big.NewInt(1),
				)
				a.Compliance.DetectionCiphertext[0] =
					primitives.LittleEndianBytesToBigInt(
						w.DetectionCiphertext[0][:],
					).String()
			},
		},
		{
			name: "tier ciphertext",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				a *circuits.TransferCircuit,
			) {
				w.SenderCore.Ciphertext[0] = addFieldElementBytes(
					t,
					w.SenderCore.Ciphertext[0],
					big.NewInt(1),
				)
				a.Compliance.SenderCore.Ciphertext[0] =
					primitives.LittleEndianBytesToBigInt(
						w.SenderCore.Ciphertext[0][:],
					).String()
			},
		},
		{
			name: "policy hash",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				a *circuits.TransferCircuit,
			) {
				w.Metadata.PolicyIDHash = addFieldElementBytes(
					t,
					w.Metadata.PolicyIDHash,
					big.NewInt(1),
				)
				a.Compliance.Metadata.PolicyIDHash =
					primitives.LittleEndianBytesToBigInt(
						w.Metadata.PolicyIDHash[:],
					).String()
			},
		},
	}
	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			witness, assignment := loadUnregulatedTransferV19(t)
			tc.mutate(t, witness, assignment)
			setTransferStatementHashV19(t, witness, assignment)
			if err := test.IsSolved(
				circuits.NewTransferCircuit(),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf("unregulated transfer accepted mutated %s", tc.name)
			}
		})
	}
}

func TestShieldedIcs20WithdrawalCircuitRejectsRegulatedAssetRoutedAsUnregulated(t *testing.T) {
	fixtureBytes := testfixtures.LoadShieldedIcs20WithdrawalWitnessV11("shielded_ics20_withdrawal")
	witness, family, err := abi.DecodeShieldedIcs20WithdrawalWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("decode shielded ICS-20 withdrawal fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatalf("shielded ICS-20 withdrawal fixture must start regulated for this regression")
	}
	assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("build shielded ICS-20 withdrawal assignment: %v", err)
	}
	assignment.IsRegulated = 0

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(family.NIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatalf("expected shielded ICS-20 withdrawal circuit to reject regulated asset routed through unregulated branch")
	}
}

func withdrawalDummyNullifierForSlot(
	t *testing.T,
	spend abi.ShieldedIcs20WithdrawalOptionalSpendWitnessV11Binary,
	slot int,
) *big.Int {
	t.Helper()

	domainBytes := blake2b.Sum512(
		[]byte("shieldd.shielded_ics20_withdrawal.synthetic_dummy.nullifier"),
	)
	nullifier, err := primitives.Poseidon377Hash3Native(
		primitives.LittleEndianBytesToBigInt(domainBytes[:]),
		[3]*big.Int{
			primitives.LittleEndianBytesToBigInt(spend.DummyNullifierSeed[:]),
			primitives.LittleEndianBytesToBigInt(spend.SpendAuthRandomizer[:]),
			big.NewInt(int64(slot)),
		},
	)
	if err != nil {
		t.Fatalf("compute synthetic withdrawal nullifier for slot %d: %v", slot, err)
	}
	return nullifier
}

func makeWithdrawalOptionalSpendDummy(
	t *testing.T,
	witness *abi.ShieldedIcs20WithdrawalWitnessV11Binary,
	assignment *circuits.ShieldedIcs20WithdrawalCircuit,
) {
	t.Helper()

	spend := &witness.OptionalSpend
	spend.IsDummy = true
	spend.SpentNoteAmount = [32]byte{}
	spend.HistoryRequired = false
	assignment.OptionalSpend.IsDummy = 1
	assignment.OptionalSpend.Note.Amount = 0
	assignment.OptionalSpend.HistoryRequired = 0

	const optionalSpendSlot = 1
	dummyNullifier := withdrawalDummyNullifierForSlot(
		t,
		*spend,
		optionalSpendSlot,
	)
	spend.Nullifier = le32FromBigInt(t, dummyNullifier)
	assignment.OptionalSpend.Nullifier = dummyNullifier.String()
}

func TestShieldedIcs20WithdrawalRequiredSpendOmitsDummyLayout(t *testing.T) {
	for label, typ := range map[string]reflect.Type{
		"binary required spend":  reflect.TypeOf(abi.ShieldedIcs20WithdrawalRequiredSpendWitnessV11Binary{}),
		"circuit required spend": reflect.TypeOf(circuits.ShieldedIcs20WithdrawalRequiredSpendCircuitFields{}),
	} {
		for _, prohibited := range []string{"IsDummy", "DummyNullifierSeed", "DummySpendAuthKey"} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must not carry %s", label, prohibited)
			}
		}
	}
	for label, typ := range map[string]reflect.Type{
		"binary optional spend":  reflect.TypeOf(abi.ShieldedIcs20WithdrawalOptionalSpendWitnessV11Binary{}),
		"circuit optional spend": reflect.TypeOf(circuits.ShieldedIcs20WithdrawalOptionalSpendCircuitFields{}),
	} {
		for _, required := range []string{"IsDummy", "DummyNullifierSeed"} {
			if _, ok := typ.FieldByName(required); !ok {
				t.Fatalf("%s must carry %s", label, required)
			}
		}
		if _, ok := typ.FieldByName("DummySpendAuthKey"); ok {
			t.Fatalf("%s must not carry a dummy spend authorization key", label)
		}
	}
}

func TestTransferV19UsesRoleSpecificSemanticLayout(t *testing.T) {
	for label, typ := range map[string]reflect.Type{
		"binary required spend":  reflect.TypeOf(abi.TransferRequiredSpendWitnessV19Binary{}),
		"circuit required spend": reflect.TypeOf(circuits.TransferRequiredSpendCircuitFields{}),
	} {
		for _, prohibited := range []string{"IsDummy", "DummyNullifierSeed", "DummySpendAuthKey"} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must not carry %s", label, prohibited)
			}
		}
	}
	for label, entry := range map[string]struct {
		typ      reflect.Type
		required []string
	}{
		"binary optional spend": {
			typ:      reflect.TypeOf(abi.TransferOptionalSpendWitnessV19Binary{}),
			required: []string{"Nullifier", "RKAffine", "IsDummy", "DummyNullifierSeed"},
		},
		"circuit optional spend": {
			typ:      reflect.TypeOf(circuits.TransferOptionalSpendCircuitFields{}),
			required: []string{"Nullifier", "RK", "IsDummy", "DummyNullifierSeed"},
		},
	} {
		for _, required := range entry.required {
			if _, ok := entry.typ.FieldByName(required); !ok {
				t.Fatalf("%s must carry %s", label, required)
			}
		}
		for _, prohibited := range []string{"Spend", "SpentNoteAssetID", "DummySpendAuthKey"} {
			if _, ok := entry.typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must not carry %s", label, prohibited)
			}
		}
	}
	for label, typ := range map[string]reflect.Type{
		"binary transfer witness": reflect.TypeOf(abi.TransferWitnessV19Binary{}),
		"transfer circuit":        reflect.TypeOf(circuits.TransferCircuit{}),
	} {
		for _, prohibited := range []string{
			"Spends",
			"Outputs",
			"BalanceCommitment",
			"BalanceCommitmentAffine",
		} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must expose role-specific fields, not %s", label, prohibited)
			}
		}
		for _, required := range []string{
			"RequiredSpend",
			"OptionalSpend",
			"ReceiverOutput",
			"ChangeOutput",
		} {
			if _, ok := typ.FieldByName(required); !ok {
				t.Fatalf("%s must carry %s", label, required)
			}
		}
	}

	binaryWitness := reflect.TypeOf(abi.TransferWitnessV19Binary{})
	for _, prohibited := range []string{
		"NIn",
		"NOut",
		"StatementFields",
		"BalanceCommitment",
		"AK",
		"SenderAssetID",
	} {
		if _, ok := binaryWitness.FieldByName(prohibited); ok {
			t.Fatalf("binary transfer witness must not serialize derived or ignored field %s", prohibited)
		}
	}

	for label, typ := range map[string]reflect.Type{
		"binary required spend":  reflect.TypeOf(abi.TransferRequiredSpendWitnessV19Binary{}),
		"binary optional spend":  reflect.TypeOf(abi.TransferOptionalSpendWitnessV19Binary{}),
		"circuit required spend": reflect.TypeOf(circuits.TransferRequiredSpendCircuitFields{}),
		"circuit optional spend": reflect.TypeOf(circuits.TransferOptionalSpendCircuitFields{}),
	} {
		for _, prohibited := range []string{
			"StateCommitmentCommitment",
			"SpentNoteAddress",
			"SpentNoteDiversifiedGenerator",
			"SpentDiversifiedGenerator",
			"SpentTransmissionKey",
			"SpentClueKey",
		} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must derive shared sender data instead of carrying %s", label, prohibited)
			}
		}
	}

	for label, typ := range map[string]reflect.Type{
		"binary receiver output":  reflect.TypeOf(abi.TransferReceiverOutputWitnessV19Binary{}),
		"circuit receiver output": reflect.TypeOf(circuits.TransferReceiverOutputCircuitFields{}),
	} {
		for _, prohibited := range []string{
			"IsReceiver",
			"CreatedNoteAssetID",
			"CreatedNoteAddress",
			"CreatedNoteDiversifiedGenerator",
			"CreatedTransmissionKey",
		} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must use the canonical recipient and shared asset, not %s", label, prohibited)
			}
		}
	}

	for label, typ := range map[string]reflect.Type{
		"binary change output":  reflect.TypeOf(abi.TransferChangeOutputWitnessV19Binary{}),
		"circuit change output": reflect.TypeOf(circuits.TransferChangeOutputCircuitFields{}),
	} {
		for _, prohibited := range []string{
			"IsReceiver",
			"CreatedNoteAssetID",
			"CreatedClueKey",
			"Recipient",
			"RecipientD",
			"RecipientCompliancePath",
			"RecipientTransmissionKey",
		} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must derive sender change data instead of carrying %s", label, prohibited)
			}
		}
	}

	binaryTier := reflect.TypeOf(abi.TransferComplianceCiphertextWitnessV19Binary{})
	for _, required := range []string{
		"C2",
		"Ciphertext",
		"EPKAffine",
	} {
		if _, ok := binaryTier.FieldByName(required); !ok {
			t.Fatalf("binary compliance tier must carry %s", required)
		}
	}
	for _, prohibited := range []string{
		"SubjectDerivation",
		"RingIDHash",
		"PolicyIDHash",
		"ResourceHash",
		"PermissionHash",
		"Tier",
		"StatementTimestamp",
		"Salt",
		"Challenge",
		"Response",
		"DerivedPKAffine",
		"EncCmtAffine",
		"SharedPointAffine",
	} {
		if _, ok := binaryTier.FieldByName(prohibited); ok {
			t.Fatalf("binary compliance tier must not expose obsolete proof field %s", prohibited)
		}
	}
	for label, typ := range map[string]reflect.Type{
		"core": reflect.TypeOf(circuits.TransferComplianceCoreFields{}),
		"ext":  reflect.TypeOf(circuits.TransferComplianceExtFields{}),
	} {
		if _, ok := typ.FieldByName("Statement"); ok {
			t.Fatalf("%s compliance circuit tier must not duplicate metadata", label)
		}
		if _, ok := typ.FieldByName("Proof"); ok {
			t.Fatalf("%s compliance circuit tier must not carry an obsolete Proof package", label)
		}
	}
	binaryMetadata := reflect.TypeOf(abi.TransferComplianceMetadataWitnessV19Binary{})
	circuitMetadata := reflect.TypeOf(circuits.TransferComplianceMetadataFields{})
	for _, required := range []string{
		"SenderSubjectDerivation",
		"OutputSubjectDerivation",
		"RingIDHash",
		"PolicyIDHash",
		"ResourceHash",
		"PermissionHash",
		"TargetTimestamp",
		"SenderCoreSalt",
		"SenderExtSalt",
		"OutputCoreSalt",
		"OutputExtSalt",
	} {
		if _, ok := binaryMetadata.FieldByName(required); !ok {
			t.Fatalf("binary compliance metadata must carry %s", required)
		}
		if _, ok := circuitMetadata.FieldByName(required); !ok {
			t.Fatalf("circuit compliance metadata must carry %s", required)
		}
	}
}

func transferDummyNullifierForSlot(
	t *testing.T,
	optional abi.TransferOptionalSpendWitnessV19Binary,
	slot int,
) *big.Int {
	t.Helper()

	domainBytes := blake2b.Sum512([]byte("shieldd.transfer.synthetic_dummy.nullifier"))
	nullifier, err := primitives.Poseidon377Hash3Native(
		primitives.LittleEndianBytesToBigInt(domainBytes[:]),
		[3]*big.Int{
			primitives.LittleEndianBytesToBigInt(optional.DummyNullifierSeed[:]),
			primitives.LittleEndianBytesToBigInt(optional.SpendAuthRandomizer[:]),
			big.NewInt(int64(slot)),
		},
	)
	if err != nil {
		t.Fatalf("compute synthetic transfer nullifier for slot %d: %v", slot, err)
	}
	return nullifier
}

func TestTransferSyntheticDummyNullifierBindsFixedSlot(t *testing.T) {
	fixture := testfixtures.LoadTransferWitnessV19("transfer_flagged")
	witness, _, err := abi.DecodeTransferWitnessV19(fixture)
	if err != nil {
		t.Fatalf("decode flagged transfer fixture: %v", err)
	}
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV19(fixture)
	if err != nil {
		t.Fatalf("build flagged transfer assignment: %v", err)
	}
	if !witness.OptionalSpend.IsDummy {
		t.Fatal("flagged transfer fixture must have a dummy optional spend")
	}

	const (
		wrongSlot     = 0
		canonicalSlot = 1
	)
	wrongNullifier := transferDummyNullifierForSlot(
		t,
		witness.OptionalSpend,
		wrongSlot,
	)
	canonicalNullifier := transferDummyNullifierForSlot(
		t,
		witness.OptionalSpend,
		canonicalSlot,
	)
	if wrongNullifier.Cmp(canonicalNullifier) == 0 {
		t.Fatal("wrong-slot transfer nullifier unexpectedly equals canonical")
	}
	witness.OptionalSpend.Nullifier = le32FromBigInt(t, wrongNullifier)
	assignment.OptionalSpend.Nullifier = wrongNullifier.String()
	setTransferStatementHashV19(t, witness, assignment)

	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("transfer accepted a slot-0 dummy nullifier in fixed slot 1")
	}
}

func TestTransferDummySpendRKIsExternallyAuthorized(t *testing.T) {
	fixtureBytes := testfixtures.LoadTransferWitnessV19("transfer")
	witness, _, err := abi.DecodeTransferWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV19(fixtureBytes)
	if err != nil {
		t.Fatalf("build transfer assignment: %v", err)
	}
	if !pointsHaveDistinctCompression(
		t,
		witness.RequiredSpend.RKAffine,
		witness.OptionalSpend.RKAffine,
	) {
		t.Fatal("transfer fixture must expose two distinct real spend RKs")
	}

	const dummySlot = 1
	optional := &witness.OptionalSpend
	optional.IsDummy = true
	optional.SpentNoteAmount = [32]byte{}
	optional.HistoryRequired = false
	optional.RKAffine = witness.RequiredSpend.RKAffine
	dummyNullifier := transferDummyNullifierForSlot(t, *optional, dummySlot)
	optional.Nullifier = le32FromBigInt(t, dummyNullifier)

	assignment.OptionalSpend.IsDummy = 1
	assignment.OptionalSpend.Note.Amount = 0
	assignment.OptionalSpend.HistoryRequired = 0
	assignment.OptionalSpend.RK = assignment.RequiredSpend.RK
	assignment.OptionalSpend.Nullifier = dummyNullifier.String()

	fields, err := abi.ReconstructedTransferStatementFieldsFromWitnessV19(witness)
	if err != nil {
		t.Fatalf("reconstruct transfer statement fields: %v", err)
	}
	statementHash, err := primitives.TransferStatementHashNativeForShape(
		fieldElementStrings(fields),
		circuits.TransferCircuitInputs,
		circuits.TransferCircuitOutputs,
	)
	if err != nil {
		t.Fatalf("compute transfer statement hash: %v", err)
	}
	assignment.ClaimedStatementHash = statementHash.String()

	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("transfer circuit rejected externally authorized dummy RK: %v", err)
	}
}

func setWithdrawalStatementHash(
	t *testing.T,
	witness *abi.ShieldedIcs20WithdrawalWitnessV11Binary,
	assignment *circuits.ShieldedIcs20WithdrawalCircuit,
	nIn int,
) {
	t.Helper()

	fields, err := abi.ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV11(witness)
	if err != nil {
		t.Fatalf("reconstruct withdrawal statement fields: %v", err)
	}
	statementHash, err := primitives.ShieldedIcs20WithdrawalStatementHashNativeForShape(
		fieldElementStrings(fields),
		nIn,
	)
	if err != nil {
		t.Fatalf("compute withdrawal statement hash: %v", err)
	}
	assignment.ClaimedStatementHash = statementHash.String()
}

func balanceWithdrawalAfterOptionalDummy(
	t *testing.T,
	witness *abi.ShieldedIcs20WithdrawalWitnessV11Binary,
	assignment *circuits.ShieldedIcs20WithdrawalCircuit,
) {
	t.Helper()

	requiredAmount := primitives.LittleEndianBytesToBigInt(
		witness.RequiredSpend.SpentNoteAmount[:],
	)
	changeAmount := primitives.LittleEndianBytesToBigInt(
		witness.ChangeOutput.CreatedNoteAmount[:],
	)
	if requiredAmount.Cmp(changeAmount) < 0 {
		t.Fatalf(
			"dummy withdrawal fixture cannot balance: required=%s change=%s",
			requiredAmount,
			changeAmount,
		)
	}
	outboundAmount := new(big.Int).Sub(requiredAmount, changeAmount)
	witness.OutboundAmount = le32FromBigInt(t, outboundAmount)
	assignment.OutboundAmount = outboundAmount.String()
}

func loadWithdrawalFixture(
	t *testing.T,
) (
	*abi.ShieldedIcs20WithdrawalWitnessV11Binary,
	*circuits.ShieldedIcs20WithdrawalCircuit,
	int,
) {
	t.Helper()

	fixtureBytes := testfixtures.LoadShieldedIcs20WithdrawalWitnessV11(
		"shielded_ics20_withdrawal",
	)
	witness, family, err := abi.DecodeShieldedIcs20WithdrawalWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("decode shielded ICS-20 withdrawal fixture: %v", err)
	}
	assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV11(
		fixtureBytes,
	)
	if err != nil {
		t.Fatalf("build shielded ICS-20 withdrawal assignment: %v", err)
	}
	if witness.OptionalSpend.IsDummy {
		t.Fatal("canonical withdrawal mutation fixture must start with a real optional input")
	}
	return witness, assignment, family.NIn
}

func TestShieldedIcs20WithdrawalAcceptsExternalPaddedRK(t *testing.T) {
	witness, assignment, nIn := loadWithdrawalFixture(t)

	makeWithdrawalOptionalSpendDummy(t, witness, assignment)
	// Dummy inputs authorize no state in the circuit. Their public RK is
	// authenticated by the transaction-layer spend signature, so use a
	// well-formed external key that deliberately does not match this slot's
	// in-circuit AK randomization.
	witness.OptionalSpend.RKAffine = witness.AKAffine
	assignment.OptionalSpend.RK = circuits.Point2D{
		X: primitives.LittleEndianBytesToBigInt(witness.AKAffine.X[:]).String(),
		Y: primitives.LittleEndianBytesToBigInt(witness.AKAffine.Y[:]).String(),
	}
	balanceWithdrawalAfterOptionalDummy(t, witness, assignment)
	setWithdrawalStatementHash(t, witness, assignment, nIn)

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("withdrawal rejected an external padded RK: %v", err)
	}
}

func TestShieldedIcs20WithdrawalRejectsUnbalancedAmounts(t *testing.T) {
	witness, assignment, nIn := loadWithdrawalFixture(t)

	outboundAmount := primitives.LittleEndianBytesToBigInt(witness.OutboundAmount[:])
	outboundAmount.Add(outboundAmount, big.NewInt(1))
	witness.OutboundAmount = le32FromBigInt(t, outboundAmount)
	assignment.OutboundAmount = outboundAmount.String()

	// Keep the claimed statement hash internally consistent. The hardened
	// withdrawal relation must still reject this witness because withdrawal
	// actions are required to conserve value internally.
	setWithdrawalStatementHash(t, witness, assignment, nIn)

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err == nil {
		t.Fatal("withdrawal accepted required + optional != change + outbound")
	}
}

func TestTransferCircuitAcceptsReboundNetValueAfterChangeAmountMutation(
	t *testing.T,
) {
	witness, assignment := loadTransferAssignment(t)
	originalStatementFields, err :=
		abi.ReconstructedTransferStatementFieldsFromWitnessV19(witness)
	if err != nil {
		t.Fatalf("reconstruct original transfer statement fields: %v", err)
	}

	changeAmount := primitives.LittleEndianBytesToBigInt(
		witness.ChangeOutput.CreatedNoteAmount[:],
	)
	changeAmount.Add(changeAmount, big.NewInt(1))
	if changeAmount.BitLen() > 128 {
		t.Fatalf("mutated transfer change amount exceeds the u128 range: %s", changeAmount)
	}
	witness.ChangeOutput.CreatedNoteAmount = le32FromBigInt(t, changeAmount)
	assignment.ChangeOutput.Note.Amount = changeAmount.String()

	commitment := noteCommitmentNativeFromFields(
		t,
		witness.ChangeOutput.CreatedNoteBlinding,
		witness.ChangeOutput.CreatedNoteAmount,
		witness.RequiredSpend.SpentNoteAssetID,
		compressedPointFromBinary(t, witness.SenderDiversifiedGenerator),
		compressedPointFromBinary(t, witness.SenderTransmissionKey),
	)
	if commitment.Cmp(
		primitives.LittleEndianBytesToBigInt(
			witness.ChangeOutput.NoteCommitment[:],
		),
	) == 0 {
		t.Fatal("mutated transfer change amount unexpectedly preserved its commitment")
	}
	witness.ChangeOutput.NoteCommitment = le32FromBigInt(t, commitment)
	assignment.ChangeOutput.NoteCommitment = commitment.String()
	mutatedStatementFields, err :=
		abi.ReconstructedTransferStatementFieldsFromWitnessV19(witness)
	if err != nil {
		t.Fatalf("reconstruct mutated transfer statement fields: %v", err)
	}
	const balanceCommitmentStatementField = 3
	if len(originalStatementFields) <= balanceCommitmentStatementField ||
		len(mutatedStatementFields) <= balanceCommitmentStatementField {
		t.Fatalf(
			"transfer statement lacks balance field %d",
			balanceCommitmentStatementField,
		)
	}
	if originalStatementFields[balanceCommitmentStatementField] ==
		mutatedStatementFields[balanceCommitmentStatementField] {
		t.Fatal("change-amount mutation did not alter the derived net balance commitment")
	}
	setTransferStatementHashV19(t, witness, assignment)

	// Transfer actions deliberately expose a derived net balance commitment;
	// they do not enforce zero net value inside this action circuit.
	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf(
			"transfer rejected a valid rebound net-value statement after changing the change amount: %v",
			err,
		)
	}
}

func TestTransferCircuitRejectsTransferOwnedMutations(t *testing.T) {
	mutations := []transferMutation{
		{
			name:                   "statement hash",
			preserveStaleStatement: true,
			mutate: func(
				_ *testing.T,
				_ *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				c.ClaimedStatementHash = mutateFieldByOne(c.ClaimedStatementHash)
			},
		},
		{
			name: "routing tag meaningful prefix",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				w.RoutingTags[0] = addFieldElementBytes(t, w.RoutingTags[0], big.NewInt(1))
				c.RoutingTags[0] = primitives.LittleEndianBytesToBigInt(
					w.RoutingTags[0][:],
				).String()
			},
		},
		{
			name: "routing parameter set identifier",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				w.RoutingParameterSetID = addFieldElementBytes(
					t,
					w.RoutingParameterSetID,
					big.NewInt(1),
				)
				c.RoutingParameterSetID = primitives.LittleEndianBytesToBigInt(
					w.RoutingParameterSetID[:],
				).String()
			},
		},
		{
			name: "required spend nullifier",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
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
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				if w.OptionalSpend.IsDummy {
					t.Fatal("transfer mutation fixture must expose a real optional spend")
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
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				if !pointsHaveDistinctCompression(
					t,
					w.RequiredSpend.RKAffine,
					w.OptionalSpend.RKAffine,
				) {
					t.Fatal("transfer mutation fixture must expose distinct spend RKs")
				}
				w.RequiredSpend.RKAffine = w.OptionalSpend.RKAffine
				c.RequiredSpend.RK = c.OptionalSpend.RK
			},
		},
		{
			name: "optional real randomized verification key",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				if w.OptionalSpend.IsDummy {
					t.Fatal("transfer mutation fixture must expose a real optional spend")
				}
				if !pointsHaveDistinctCompression(
					t,
					w.RequiredSpend.RKAffine,
					w.OptionalSpend.RKAffine,
				) {
					t.Fatal("transfer mutation fixture must expose distinct spend RKs")
				}
				w.OptionalSpend.RKAffine = w.RequiredSpend.RKAffine
				c.OptionalSpend.RK = c.RequiredSpend.RK
			},
		},
		{
			name: "state path",
			mutate: func(
				_ *testing.T,
				_ *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				c.RequiredSpend.StateProof.Path[0][0] =
					mutateFieldByOne(c.RequiredSpend.StateProof.Path[0][0])
			},
		},
		{
			name: "receiver output note commitment",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
			) {
				w.ReceiverOutput.NoteCommitment = addFieldElementBytes(
					t,
					w.ReceiverOutput.NoteCommitment,
					big.NewInt(1),
				)
				c.ReceiverOutput.NoteCommitment =
					primitives.LittleEndianBytesToBigInt(
						w.ReceiverOutput.NoteCommitment[:],
					).String()
			},
		},
		{
			name: "change output note commitment",
			mutate: func(
				t *testing.T,
				w *abi.TransferWitnessV19Binary,
				c *circuits.TransferCircuit,
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

	for _, mutation := range mutations {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func TestTransferCircuitRejectsComplianceTierMutations(t *testing.T) {
	for _, mutation := range complianceTierMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func TestTransferCircuitRejectsEveryDetectionCiphertextMutation(t *testing.T) {
	for ciphertextIndex := 0; ciphertextIndex < compliance.TransferDetectionFQCount; ciphertextIndex++ {
		ciphertextIndex := ciphertextIndex
		t.Run(fmt.Sprintf("ciphertext[%d]", ciphertextIndex), func(t *testing.T) {
			assertTransferMutationRejected(t, transferMutation{
				name: fmt.Sprintf("detection ciphertext[%d]", ciphertextIndex),
				mutate: func(
					t *testing.T,
					w *abi.TransferWitnessV19Binary,
					c *circuits.TransferCircuit,
				) {
					if len(w.DetectionCiphertext) != compliance.TransferDetectionFQCount {
						t.Fatalf(
							"detection fixture ciphertext length = %d, want %d",
							len(w.DetectionCiphertext),
							compliance.TransferDetectionFQCount,
						)
					}
					w.DetectionCiphertext[ciphertextIndex] = addFieldElementBytes(
						t,
						w.DetectionCiphertext[ciphertextIndex],
						big.NewInt(1),
					)
					c.Compliance.DetectionCiphertext[ciphertextIndex] =
						primitives.LittleEndianBytesToBigInt(
							w.DetectionCiphertext[ciphertextIndex][:],
						).String()
				},
			})
		})
	}
}

func TestTransferCircuitRejectsEveryTierEPKSubstitution(t *testing.T) {
	baseWitness, baseAssignment := loadTransferAssignment(t)
	if err := test.IsSolved(
		circuits.NewTransferCircuit(),
		baseAssignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("canonical transfer EPK fixture must solve: %v", err)
	}
	uniqueEPKs := map[string]struct{}{
		compressedPointFromBinary(t, baseWitness.SenderCore.EPKAffine).String(): {},
		compressedPointFromBinary(t, baseWitness.SenderExt.EPKAffine).String():  {},
		compressedPointFromBinary(t, baseWitness.OutputCore.EPKAffine).String(): {},
		compressedPointFromBinary(t, baseWitness.OutputExt.EPKAffine).String():  {},
	}
	if len(uniqueEPKs) < 2 {
		t.Fatal("transfer fixture must expose at least two distinct valid tier EPKs")
	}

	tests := []struct {
		name   string
		target func(*abi.TransferWitnessV19Binary) *abi.PointAffineBinary
		assign func(*circuits.TransferCircuit, circuits.Point2D)
	}{
		{
			name: "sender core",
			target: func(w *abi.TransferWitnessV19Binary) *abi.PointAffineBinary {
				return &w.SenderCore.EPKAffine
			},
			assign: func(c *circuits.TransferCircuit, point circuits.Point2D) {
				c.Compliance.SenderCore.Epk = point
			},
		},
		{
			name: "sender ext",
			target: func(w *abi.TransferWitnessV19Binary) *abi.PointAffineBinary {
				return &w.SenderExt.EPKAffine
			},
			assign: func(c *circuits.TransferCircuit, point circuits.Point2D) {
				c.Compliance.SenderExt.Epk = point
			},
		},
		{
			name: "output core",
			target: func(w *abi.TransferWitnessV19Binary) *abi.PointAffineBinary {
				return &w.OutputCore.EPKAffine
			},
			assign: func(c *circuits.TransferCircuit, point circuits.Point2D) {
				c.Compliance.OutputCore.Epk = point
			},
		},
		{
			name: "output ext",
			target: func(w *abi.TransferWitnessV19Binary) *abi.PointAffineBinary {
				return &w.OutputExt.EPKAffine
			},
			assign: func(c *circuits.TransferCircuit, point circuits.Point2D) {
				c.Compliance.OutputExt.Epk = point
			},
		},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			witness, assignment := loadTransferAssignment(t)
			target := tc.target(witness)
			candidates := []abi.PointAffineBinary{
				witness.SenderCore.EPKAffine,
				witness.SenderExt.EPKAffine,
				witness.OutputCore.EPKAffine,
				witness.OutputExt.EPKAffine,
			}
			var (
				replacement abi.PointAffineBinary
				found       bool
			)
			for _, candidate := range candidates {
				if pointsHaveDistinctCompression(t, candidate, *target) {
					replacement = candidate
					found = true
					break
				}
			}
			if !found {
				t.Fatalf(
					"transfer fixture must expose an EPK distinct from %s",
					tc.name,
				)
			}
			// The canonical solve above establishes point validity. Keep the
			// replacement in the same compressed public-field representation.
			compressedPointFromBinary(t, replacement)
			*target = replacement
			tc.assign(assignment, circuitPointFromBinary(replacement))
			setTransferStatementHashV19(t, witness, assignment)

			if err := test.IsSolved(
				circuits.NewTransferCircuit(),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf(
					"transfer accepted a distinct valid %s EPK without its scalar derivation",
					tc.name,
				)
			}
		})
	}
}

func TestTransferCircuitRejectsNonceRootAndEveryTierScalarMutation(t *testing.T) {
	tests := []struct {
		name        string
		decafScalar bool
		target      func(*abi.TransferWitnessV19Binary) *[32]byte
		assign      func(*circuits.TransferCircuit, string)
	}{
		{
			name: "transfer nonce root",
			target: func(w *abi.TransferWitnessV19Binary) *[32]byte {
				return &w.TransferNonceRoot
			},
			assign: func(c *circuits.TransferCircuit, value string) {
				c.Compliance.TransferNonceRoot = value
			},
		},
		{
			name:        "sender core scalar",
			decafScalar: true,
			target: func(w *abi.TransferWitnessV19Binary) *[32]byte {
				return &w.SenderRCore
			},
			assign: func(c *circuits.TransferCircuit, value string) {
				c.Compliance.SenderRCore = value
			},
		},
		{
			name:        "sender ext scalar",
			decafScalar: true,
			target: func(w *abi.TransferWitnessV19Binary) *[32]byte {
				return &w.SenderRExt
			},
			assign: func(c *circuits.TransferCircuit, value string) {
				c.Compliance.SenderRExt = value
			},
		},
		{
			name:        "output core scalar",
			decafScalar: true,
			target: func(w *abi.TransferWitnessV19Binary) *[32]byte {
				return &w.OutputRCore
			},
			assign: func(c *circuits.TransferCircuit, value string) {
				c.Compliance.OutputRCore = value
			},
		},
		{
			name:        "output ext scalar",
			decafScalar: true,
			target: func(w *abi.TransferWitnessV19Binary) *[32]byte {
				return &w.OutputRExt
			},
			assign: func(c *circuits.TransferCircuit, value string) {
				c.Compliance.OutputRExt = value
			},
		},
	}

	for _, tc := range tests {
		tc := tc
		t.Run(tc.name, func(t *testing.T) {
			witness, assignment := loadTransferAssignment(t)
			target := tc.target(witness)
			original := *target
			if tc.decafScalar {
				*target = addDecafScalarBytes(t, original, big.NewInt(1))
			} else {
				*target = addFieldElementBytes(t, original, big.NewInt(1))
			}
			if *target == original {
				t.Fatalf("%s mutation did not change the scalar", tc.name)
			}
			tc.assign(
				assignment,
				primitives.LittleEndianBytesToBigInt(target[:]).String(),
			)
			setTransferStatementHashV19(t, witness, assignment)

			if err := test.IsSolved(
				circuits.NewTransferCircuit(),
				assignment,
				ecc.BLS12_377.ScalarField(),
			); err == nil {
				t.Fatalf("transfer accepted mutated private %s", tc.name)
			}
		})
	}
}

func complianceTierMutations() []transferMutation {
	var mutations []transferMutation
	mutations = append(mutations, senderCoreMutations()...)
	mutations = append(mutations, senderExtMutations()...)
	mutations = append(mutations, outputCoreMutations()...)
	mutations = append(mutations, outputExtMutations()...)
	return mutations
}

func senderCoreMutations() []transferMutation {
	mutations := make([]transferMutation, 0, compliance.TransferCoreCiphertextFQCount+1)
	for ciphertextIndex := 0; ciphertextIndex < compliance.TransferCoreCiphertextFQCount; ciphertextIndex++ {
		ciphertextIndex := ciphertextIndex
		mutations = append(mutations, transferMutation{
			name: fmt.Sprintf("sender core ciphertext[%d]", ciphertextIndex),
			mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
				if len(w.SenderCore.Ciphertext) != compliance.TransferCoreCiphertextFQCount {
					t.Fatalf(
						"sender core fixture ciphertext length = %d, want %d",
						len(w.SenderCore.Ciphertext),
						compliance.TransferCoreCiphertextFQCount,
					)
				}
				w.SenderCore.Ciphertext[ciphertextIndex] = addFieldElementBytes(
					t,
					w.SenderCore.Ciphertext[ciphertextIndex],
					big.NewInt(1),
				)
				c.Compliance.SenderCore.Ciphertext[ciphertextIndex] =
					primitives.LittleEndianBytesToBigInt(
						w.SenderCore.Ciphertext[ciphertextIndex][:],
					).String()
			},
		})
	}
	mutations = append(mutations,
		transferMutation{name: "sender core c2", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.SenderCore.C2 = addFieldElementBytes(t, w.SenderCore.C2, big.NewInt(1))
			c.Compliance.SenderCore.C2 = primitives.LittleEndianBytesToBigInt(w.SenderCore.C2[:]).String()
		}},
	)
	return mutations
}

func senderExtMutations() []transferMutation {
	mutations := make([]transferMutation, 0, compliance.TransferExtCiphertextFQCount+1)
	for ciphertextIndex := 0; ciphertextIndex < compliance.TransferExtCiphertextFQCount; ciphertextIndex++ {
		ciphertextIndex := ciphertextIndex
		mutations = append(mutations, transferMutation{
			name: fmt.Sprintf("sender ext ciphertext[%d]", ciphertextIndex),
			mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
				if len(w.SenderExt.Ciphertext) != compliance.TransferExtCiphertextFQCount {
					t.Fatalf(
						"sender ext fixture ciphertext length = %d, want %d",
						len(w.SenderExt.Ciphertext),
						compliance.TransferExtCiphertextFQCount,
					)
				}
				w.SenderExt.Ciphertext[ciphertextIndex] = addFieldElementBytes(
					t,
					w.SenderExt.Ciphertext[ciphertextIndex],
					big.NewInt(1),
				)
				c.Compliance.SenderExt.Ciphertext[ciphertextIndex] =
					primitives.LittleEndianBytesToBigInt(
						w.SenderExt.Ciphertext[ciphertextIndex][:],
					).String()
			},
		})
	}
	mutations = append(mutations,
		transferMutation{name: "sender ext c2", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.SenderExt.C2 = addFieldElementBytes(t, w.SenderExt.C2, big.NewInt(1))
			c.Compliance.SenderExt.C2 = primitives.LittleEndianBytesToBigInt(w.SenderExt.C2[:]).String()
		}},
	)
	return mutations
}

func outputCoreMutations() []transferMutation {
	mutations := make([]transferMutation, 0, compliance.TransferCoreCiphertextFQCount+1)
	for ciphertextIndex := 0; ciphertextIndex < compliance.TransferCoreCiphertextFQCount; ciphertextIndex++ {
		ciphertextIndex := ciphertextIndex
		mutations = append(mutations, transferMutation{
			name: fmt.Sprintf("output core ciphertext[%d]", ciphertextIndex),
			mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
				if len(w.OutputCore.Ciphertext) != compliance.TransferCoreCiphertextFQCount {
					t.Fatalf(
						"output core fixture ciphertext length = %d, want %d",
						len(w.OutputCore.Ciphertext),
						compliance.TransferCoreCiphertextFQCount,
					)
				}
				w.OutputCore.Ciphertext[ciphertextIndex] = addFieldElementBytes(
					t,
					w.OutputCore.Ciphertext[ciphertextIndex],
					big.NewInt(1),
				)
				c.Compliance.OutputCore.Ciphertext[ciphertextIndex] =
					primitives.LittleEndianBytesToBigInt(
						w.OutputCore.Ciphertext[ciphertextIndex][:],
					).String()
			},
		})
	}
	mutations = append(mutations,
		transferMutation{name: "output core c2", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.OutputCore.C2 = addFieldElementBytes(t, w.OutputCore.C2, big.NewInt(1))
			c.Compliance.OutputCore.C2 = primitives.LittleEndianBytesToBigInt(w.OutputCore.C2[:]).String()
		}},
	)
	return mutations
}

func outputExtMutations() []transferMutation {
	mutations := make([]transferMutation, 0, compliance.TransferExtCiphertextFQCount+1)
	for ciphertextIndex := 0; ciphertextIndex < compliance.TransferExtCiphertextFQCount; ciphertextIndex++ {
		ciphertextIndex := ciphertextIndex
		mutations = append(mutations, transferMutation{
			name: fmt.Sprintf("output ext ciphertext[%d]", ciphertextIndex),
			mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
				if len(w.OutputExt.Ciphertext) != compliance.TransferExtCiphertextFQCount {
					t.Fatalf(
						"output ext fixture ciphertext length = %d, want %d",
						len(w.OutputExt.Ciphertext),
						compliance.TransferExtCiphertextFQCount,
					)
				}
				w.OutputExt.Ciphertext[ciphertextIndex] = addFieldElementBytes(
					t,
					w.OutputExt.Ciphertext[ciphertextIndex],
					big.NewInt(1),
				)
				c.Compliance.OutputExt.Ciphertext[ciphertextIndex] =
					primitives.LittleEndianBytesToBigInt(
						w.OutputExt.Ciphertext[ciphertextIndex][:],
					).String()
			},
		})
	}
	mutations = append(mutations,
		transferMutation{name: "output ext c2", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.OutputExt.C2 = addFieldElementBytes(t, w.OutputExt.C2, big.NewInt(1))
			c.Compliance.OutputExt.C2 = primitives.LittleEndianBytesToBigInt(w.OutputExt.C2[:]).String()
		}},
	)
	return mutations
}

func TestTransferCircuitRejectsMetadataMutations(t *testing.T) {
	for _, mutation := range transferMetadataMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func transferMetadataMutations() []transferMutation {
	return []transferMutation{
		{name: "sender subject derivation", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.SenderSubjectDerivation = addFieldElementBytes(t, w.Metadata.SenderSubjectDerivation, big.NewInt(1))
			c.Compliance.Metadata.SenderSubjectDerivation =
				primitives.LittleEndianBytesToBigInt(w.Metadata.SenderSubjectDerivation[:]).String()
		}},
		{name: "output subject derivation", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.OutputSubjectDerivation = addFieldElementBytes(t, w.Metadata.OutputSubjectDerivation, big.NewInt(1))
			c.Compliance.Metadata.OutputSubjectDerivation =
				primitives.LittleEndianBytesToBigInt(w.Metadata.OutputSubjectDerivation[:]).String()
		}},
		{name: "ring id hash", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.RingIDHash = addFieldElementBytes(t, w.Metadata.RingIDHash, big.NewInt(1))
			c.Compliance.Metadata.RingIDHash =
				primitives.LittleEndianBytesToBigInt(w.Metadata.RingIDHash[:]).String()
		}},
		{name: "policy hash", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.PolicyIDHash = addFieldElementBytes(t, w.Metadata.PolicyIDHash, big.NewInt(1))
			c.Compliance.Metadata.PolicyIDHash =
				primitives.LittleEndianBytesToBigInt(w.Metadata.PolicyIDHash[:]).String()
		}},
		{name: "resource hash", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.ResourceHash = addFieldElementBytes(t, w.Metadata.ResourceHash, big.NewInt(1))
			c.Compliance.Metadata.ResourceHash =
				primitives.LittleEndianBytesToBigInt(w.Metadata.ResourceHash[:]).String()
		}},
		{name: "permission hash", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.PermissionHash = addFieldElementBytes(t, w.Metadata.PermissionHash, big.NewInt(1))
			c.Compliance.Metadata.PermissionHash =
				primitives.LittleEndianBytesToBigInt(w.Metadata.PermissionHash[:]).String()
		}},
		{name: "timestamp", mutate: func(_ *testing.T, _ *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			c.Compliance.Metadata.TargetTimestamp =
				mutateFieldByOne(c.Compliance.Metadata.TargetTimestamp)
		}},
		{name: "sender core salt", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.SenderCoreSalt = addFieldElementBytes(t, w.Metadata.SenderCoreSalt, big.NewInt(1))
			c.Compliance.Metadata.SenderCoreSalt =
				primitives.LittleEndianBytesToBigInt(w.Metadata.SenderCoreSalt[:]).String()
		}},
		{name: "sender ext salt", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.SenderExtSalt = addFieldElementBytes(t, w.Metadata.SenderExtSalt, big.NewInt(1))
			c.Compliance.Metadata.SenderExtSalt =
				primitives.LittleEndianBytesToBigInt(w.Metadata.SenderExtSalt[:]).String()
		}},
		{name: "output core salt", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.OutputCoreSalt = addFieldElementBytes(t, w.Metadata.OutputCoreSalt, big.NewInt(1))
			c.Compliance.Metadata.OutputCoreSalt =
				primitives.LittleEndianBytesToBigInt(w.Metadata.OutputCoreSalt[:]).String()
		}},
		{name: "output ext salt", mutate: func(t *testing.T, w *abi.TransferWitnessV19Binary, c *circuits.TransferCircuit) {
			w.Metadata.OutputExtSalt = addFieldElementBytes(t, w.Metadata.OutputExtSalt, big.NewInt(1))
			c.Compliance.Metadata.OutputExtSalt =
				primitives.LittleEndianBytesToBigInt(w.Metadata.OutputExtSalt[:]).String()
		}},
	}
}
