package circuits_test

import (
	"math/big"
	"reflect"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
	"golang.org/x/crypto/blake2b"
)

type transferMutation struct {
	name   string
	mutate func(*circuits.TransferCircuit)
}

func loadTransferAssignment(t *testing.T) *circuits.TransferCircuit {
	t.Helper()
	fixtureBytes := testfixtures.LoadTransferWitnessV11("transfer")
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	validateTransferMutationFixture(t, assignment)
	return assignment
}

func validateTransferMutationFixture(t *testing.T, assignment *circuits.TransferCircuit) {
	t.Helper()
	if len(assignment.RequiredSpend.StateProof.Path) == 0 {
		t.Fatalf("transfer witness fixture required spend must contain a state path")
	}
}

func assertTransferMutationRejected(t *testing.T, mutation transferMutation) {
	t.Helper()
	assignment := loadTransferAssignment(t)
	mutation.mutate(assignment)

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

func pointFromNative(t *testing.T, x, y *big.Int) circuits.Point2D {
	t.Helper()
	return circuits.Point2D{X: x.String(), Y: y.String()}
}

func transferAssignmentWithFalseRegulatedBranch(t *testing.T) *circuits.TransferCircuit {
	t.Helper()

	fixtureBytes := testfixtures.LoadTransferWitnessV11("transfer")
	witness, _, err := abi.DecodeTransferWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatalf("transfer fixture must start regulated for this regression")
	}

	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("build transfer assignment: %v", err)
	}

	unregulatedRingPK, _, err := compliance.UnregulatedComplianceKeys()
	if err != nil {
		t.Fatalf("derive unregulated compliance keys: %v", err)
	}
	senderAck, err := compliance.DeriveACKFromLeafDNative(
		unregulatedRingPK,
		primitives.LittleEndianBytesToBigInt(witness.SenderD[:]),
	)
	if err != nil {
		t.Fatalf("derive unregulated sender ACK: %v", err)
	}
	receiverAck, err := compliance.DeriveACKFromLeafDNative(
		unregulatedRingPK,
		primitives.LittleEndianBytesToBigInt(witness.ReceiverOutput.RecipientD[:]),
	)
	if err != nil {
		t.Fatalf("derive unregulated receiver ACK: %v", err)
	}

	senderPoint := abi.PointAffineBinary{
		X: le32FromBigInt(t, senderAck.X.(*big.Int)),
		Y: le32FromBigInt(t, senderAck.Y.(*big.Int)),
	}
	receiverPoint := abi.PointAffineBinary{
		X: le32FromBigInt(t, receiverAck.X.(*big.Int)),
		Y: le32FromBigInt(t, receiverAck.Y.(*big.Int)),
	}
	witness.SenderCore.DerivedPKAffine = senderPoint
	witness.SenderExt.DerivedPKAffine = senderPoint
	witness.OutputCore.DerivedPKAffine = receiverPoint
	witness.OutputExt.DerivedPKAffine = receiverPoint

	fields, err := abi.ReconstructedTransferStatementFieldsFromWitnessV11(witness)
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

	assignment.IsRegulated = 0
	assignment.ClaimedStatementHash = statementHash.String()
	assignment.Compliance.SenderCore.Proof.DerivedPK = pointFromNative(t, senderAck.X.(*big.Int), senderAck.Y.(*big.Int))
	assignment.Compliance.SenderExt.Proof.DerivedPK = pointFromNative(t, senderAck.X.(*big.Int), senderAck.Y.(*big.Int))
	assignment.Compliance.OutputCore.Proof.DerivedPK = pointFromNative(t, receiverAck.X.(*big.Int), receiverAck.Y.(*big.Int))
	assignment.Compliance.OutputExt.Proof.DerivedPK = pointFromNative(t, receiverAck.X.(*big.Int), receiverAck.Y.(*big.Int))
	return assignment
}

func TestTransferCircuitRejectsRegulatedAssetRoutedAsUnregulated(t *testing.T) {
	assignment := transferAssignmentWithFalseRegulatedBranch(t)
	if err := test.IsSolved(circuits.NewTransferCircuit(), assignment, ecc.BLS12_377.ScalarField()); err == nil {
		t.Fatalf("expected transfer circuit to reject regulated asset routed through unregulated branch")
	}
}

func TestShieldedIcs20WithdrawalCircuitRejectsRegulatedAssetRoutedAsUnregulated(t *testing.T) {
	fixtureBytes := testfixtures.LoadShieldedIcs20WithdrawalWitnessV6("shielded_ics20_withdrawal")
	witness, family, err := abi.DecodeShieldedIcs20WithdrawalWitnessV6(fixtureBytes)
	if err != nil {
		t.Fatalf("decode shielded ICS-20 withdrawal fixture: %v", err)
	}
	if !witness.IsRegulated {
		t.Fatalf("shielded ICS-20 withdrawal fixture must start regulated for this regression")
	}
	assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV6(fixtureBytes)
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

func withdrawalDummyNullifier(
	t *testing.T,
	spend abi.ShieldedIcs20WithdrawalOptionalSpendWitnessV6Binary,
) *big.Int {
	t.Helper()

	const slot = 1
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
	witness *abi.ShieldedIcs20WithdrawalWitnessV6Binary,
	assignment *circuits.ShieldedIcs20WithdrawalCircuit,
) {
	t.Helper()

	spend := &witness.OptionalSpend
	spend.IsDummy = true
	spend.SpentNoteAmount = [32]byte{}
	assignment.OptionalSpend.IsDummy = 1
	assignment.OptionalSpend.Note.Amount = 0

	dummyNullifier := withdrawalDummyNullifier(t, *spend)
	spend.Nullifier = le32FromBigInt(t, dummyNullifier)
	assignment.OptionalSpend.Nullifier = dummyNullifier.String()
}

func TestShieldedIcs20WithdrawalRequiredSpendOmitsDummyLayout(t *testing.T) {
	for label, typ := range map[string]reflect.Type{
		"binary required spend":  reflect.TypeOf(abi.ShieldedIcs20WithdrawalRequiredSpendWitnessV6Binary{}),
		"circuit required spend": reflect.TypeOf(circuits.ShieldedIcs20WithdrawalRequiredSpendCircuitFields{}),
	} {
		for _, prohibited := range []string{"IsDummy", "DummyNullifierSeed", "DummySpendAuthKey"} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must not carry %s", label, prohibited)
			}
		}
	}
	for label, typ := range map[string]reflect.Type{
		"binary optional spend":  reflect.TypeOf(abi.ShieldedIcs20WithdrawalOptionalSpendWitnessV6Binary{}),
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

func TestTransferV11UsesRoleSpecificSemanticLayout(t *testing.T) {
	for label, typ := range map[string]reflect.Type{
		"binary required spend":  reflect.TypeOf(abi.TransferRequiredSpendWitnessV11Binary{}),
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
			typ:      reflect.TypeOf(abi.TransferOptionalSpendWitnessV11Binary{}),
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
		"binary transfer witness": reflect.TypeOf(abi.TransferWitnessV11Binary{}),
		"transfer circuit":        reflect.TypeOf(circuits.TransferCircuit{}),
	} {
		for _, prohibited := range []string{"Spends", "Outputs"} {
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

	binaryWitness := reflect.TypeOf(abi.TransferWitnessV11Binary{})
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
		"binary required spend":  reflect.TypeOf(abi.TransferRequiredSpendWitnessV11Binary{}),
		"binary optional spend":  reflect.TypeOf(abi.TransferOptionalSpendWitnessV11Binary{}),
		"circuit required spend": reflect.TypeOf(circuits.TransferRequiredSpendCircuitFields{}),
		"circuit optional spend": reflect.TypeOf(circuits.TransferOptionalSpendCircuitFields{}),
	} {
		for _, prohibited := range []string{
			"StateCommitmentCommitment",
			"SpentNoteAddress",
			"SpentNoteDiversifiedGenerator",
			"SpentDiversifiedGenerator",
			"SpentTransmissionKey",
		} {
			if _, ok := typ.FieldByName(prohibited); ok {
				t.Fatalf("%s must derive shared sender data instead of carrying %s", label, prohibited)
			}
		}
	}

	for label, typ := range map[string]reflect.Type{
		"binary receiver output":  reflect.TypeOf(abi.TransferReceiverOutputWitnessV11Binary{}),
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
		"binary change output":  reflect.TypeOf(abi.TransferChangeOutputWitnessV11Binary{}),
		"circuit change output": reflect.TypeOf(circuits.TransferChangeOutputCircuitFields{}),
	} {
		for _, prohibited := range []string{
			"IsReceiver",
			"CreatedNoteAssetID",
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
}

func transferDummyNullifierForSlot(
	t *testing.T,
	optional abi.TransferOptionalSpendWitnessV11Binary,
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

func transferNetBalanceCommitment(
	t *testing.T,
	witness *abi.TransferWitnessV11Binary,
) gnarkte.Point {
	t.Helper()

	valueGenerator, err := circuits.ValueGeneratorNative(
		primitives.LittleEndianBytesToBigInt(witness.RequiredSpend.SpentNoteAssetID[:]),
	)
	if err != nil {
		t.Fatalf("derive transfer value generator: %v", err)
	}
	valueBlindingGenerator, err := circuits.ValueBlindingGeneratorNative()
	if err != nil {
		t.Fatalf("load transfer value blinding generator: %v", err)
	}

	sum, err := decafgnark.ScalarMulNative(valueGenerator, big.NewInt(0), 128)
	if err != nil {
		t.Fatalf("initialize transfer balance commitment: %v", err)
	}
	for index, amount := range [][32]byte{
		witness.RequiredSpend.SpentNoteAmount,
		witness.OptionalSpend.SpentNoteAmount,
	} {
		amountPoint, err := decafgnark.ScalarMulNative(
			valueGenerator,
			primitives.LittleEndianBytesToBigInt(amount[:]),
			128,
		)
		if err != nil {
			t.Fatalf("compute transfer input %d value point: %v", index, err)
		}
		sum, err = decafgnark.PointAddNative(sum, amountPoint)
		if err != nil {
			t.Fatalf("add transfer input %d value point: %v", index, err)
		}
	}
	for index, amount := range [][32]byte{
		witness.ReceiverOutput.CreatedNoteAmount,
		witness.ChangeOutput.CreatedNoteAmount,
	} {
		amountPoint, err := decafgnark.ScalarMulNative(
			valueGenerator,
			primitives.LittleEndianBytesToBigInt(amount[:]),
			128,
		)
		if err != nil {
			t.Fatalf("compute transfer output %d value point: %v", index, err)
		}
		negativeAmountPoint := gnarkte.Point{
			X: new(big.Int).Mod(
				new(big.Int).Neg(amountPoint.X.(*big.Int)),
				primitives.ScalarField(),
			),
			Y: new(big.Int).Set(amountPoint.Y.(*big.Int)),
		}
		sum, err = decafgnark.PointAddNative(sum, negativeAmountPoint)
		if err != nil {
			t.Fatalf("subtract transfer output %d value point: %v", index, err)
		}
	}

	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatalf("load prototype vectors: %v", err)
	}
	blindingPoint, err := decafgnark.ScalarMulNative(
		valueBlindingGenerator,
		primitives.LittleEndianBytesToBigInt(witness.ActionBalanceBlinding[:]),
		primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	)
	if err != nil {
		t.Fatalf("compute transfer balance blinding point: %v", err)
	}
	sum, err = decafgnark.PointAddNative(sum, blindingPoint)
	if err != nil {
		t.Fatalf("add transfer balance blinding point: %v", err)
	}
	return sum
}

func TestTransferDummySpendRKIsExternallyAuthorized(t *testing.T) {
	fixtureBytes := testfixtures.LoadTransferWitnessV11("transfer")
	witness, _, err := abi.DecodeTransferWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("decode transfer witness fixture: %v", err)
	}
	assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV11(fixtureBytes)
	if err != nil {
		t.Fatalf("build transfer assignment: %v", err)
	}
	if witness.RequiredSpend.RKAffine == witness.OptionalSpend.RKAffine {
		t.Fatal("transfer fixture must expose two distinct real spend RKs")
	}

	const dummySlot = 1
	optional := &witness.OptionalSpend
	optional.IsDummy = true
	optional.SpentNoteAmount = [32]byte{}
	optional.RKAffine = witness.RequiredSpend.RKAffine
	dummyNullifier := transferDummyNullifierForSlot(t, *optional, dummySlot)
	optional.Nullifier = le32FromBigInt(t, dummyNullifier)

	assignment.OptionalSpend.IsDummy = 1
	assignment.OptionalSpend.Note.Amount = 0
	assignment.OptionalSpend.RK = assignment.RequiredSpend.RK
	assignment.OptionalSpend.Nullifier = dummyNullifier.String()

	balanceCommitment := transferNetBalanceCommitment(t, witness)
	balanceX := balanceCommitment.X.(*big.Int)
	balanceY := balanceCommitment.Y.(*big.Int)
	witness.BalanceCommitmentAffine = abi.PointAffineBinary{
		X: le32FromBigInt(t, balanceX),
		Y: le32FromBigInt(t, balanceY),
	}
	assignment.BalanceCommitment = circuits.Point2D{
		X: balanceX.String(),
		Y: balanceY.String(),
	}

	fields, err := abi.ReconstructedTransferStatementFieldsFromWitnessV11(witness)
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
	witness *abi.ShieldedIcs20WithdrawalWitnessV6Binary,
	assignment *circuits.ShieldedIcs20WithdrawalCircuit,
	nIn int,
) {
	t.Helper()

	fields, err := abi.ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV6(witness)
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

func withdrawalNetBalanceCommitment(
	t *testing.T,
	witness *abi.ShieldedIcs20WithdrawalWitnessV6Binary,
) gnarkte.Point {
	t.Helper()

	valueGenerator, err := circuits.ValueGeneratorNative(
		primitives.LittleEndianBytesToBigInt(witness.OutboundAssetID[:]),
	)
	if err != nil {
		t.Fatalf("derive withdrawal value generator: %v", err)
	}
	valueBlindingGenerator, err := circuits.ValueBlindingGeneratorNative()
	if err != nil {
		t.Fatalf("load withdrawal value blinding generator: %v", err)
	}

	sum, err := decafgnark.ScalarMulNative(valueGenerator, big.NewInt(0), 128)
	if err != nil {
		t.Fatalf("initialize withdrawal balance commitment: %v", err)
	}
	for index, spend := range []abi.ShieldedIcs20WithdrawalRequiredSpendWitnessV6Binary{
		witness.RequiredSpend,
		witness.OptionalSpend.ShieldedIcs20WithdrawalRequiredSpendWitnessV6Binary,
	} {
		amountPoint, err := decafgnark.ScalarMulNative(
			valueGenerator,
			primitives.LittleEndianBytesToBigInt(spend.SpentNoteAmount[:]),
			128,
		)
		if err != nil {
			t.Fatalf("compute withdrawal input %d value point: %v", index, err)
		}
		sum, err = decafgnark.PointAddNative(sum, amountPoint)
		if err != nil {
			t.Fatalf("add withdrawal input %d value point: %v", index, err)
		}
	}
	for index, amount := range [][32]byte{
		witness.ChangeOutput.CreatedNoteAmount,
		witness.OutboundAmount,
	} {
		amountPoint, err := decafgnark.ScalarMulNative(
			valueGenerator,
			primitives.LittleEndianBytesToBigInt(amount[:]),
			128,
		)
		if err != nil {
			t.Fatalf("compute withdrawal output %d value point: %v", index, err)
		}
		negativeAmountPoint := gnarkte.Point{
			X: new(big.Int).Mod(
				new(big.Int).Neg(amountPoint.X.(*big.Int)),
				primitives.ScalarField(),
			),
			Y: new(big.Int).Set(amountPoint.Y.(*big.Int)),
		}
		sum, err = decafgnark.PointAddNative(sum, negativeAmountPoint)
		if err != nil {
			t.Fatalf("subtract withdrawal output %d value point: %v", index, err)
		}
	}

	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatalf("load prototype vectors: %v", err)
	}
	blindingPoint, err := decafgnark.ScalarMulNative(
		valueBlindingGenerator,
		primitives.LittleEndianBytesToBigInt(witness.ActionBalanceBlinding[:]),
		primitives.MustBigInt(vectors.Decaf377CompanionCurve.Order).BitLen(),
	)
	if err != nil {
		t.Fatalf("compute withdrawal balance blinding point: %v", err)
	}
	sum, err = decafgnark.PointAddNative(sum, blindingPoint)
	if err != nil {
		t.Fatalf("add withdrawal balance blinding point: %v", err)
	}
	return sum
}

func setWithdrawalBalanceCommitment(
	t *testing.T,
	witness *abi.ShieldedIcs20WithdrawalWitnessV6Binary,
	assignment *circuits.ShieldedIcs20WithdrawalCircuit,
) {
	t.Helper()

	balanceCommitment := withdrawalNetBalanceCommitment(t, witness)
	balanceX := balanceCommitment.X.(*big.Int)
	balanceY := balanceCommitment.Y.(*big.Int)
	witness.BalanceCommitmentAffine = abi.PointAffineBinary{
		X: le32FromBigInt(t, balanceX),
		Y: le32FromBigInt(t, balanceY),
	}
	assignment.BalanceCommitment = circuits.Point2D{
		X: balanceX.String(),
		Y: balanceY.String(),
	}
}

func loadWithdrawalFixture(
	t *testing.T,
) (
	*abi.ShieldedIcs20WithdrawalWitnessV6Binary,
	*circuits.ShieldedIcs20WithdrawalCircuit,
	int,
) {
	t.Helper()

	fixtureBytes := testfixtures.LoadShieldedIcs20WithdrawalWitnessV6(
		"shielded_ics20_withdrawal",
	)
	witness, family, err := abi.DecodeShieldedIcs20WithdrawalWitnessV6(fixtureBytes)
	if err != nil {
		t.Fatalf("decode shielded ICS-20 withdrawal fixture: %v", err)
	}
	assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV6(
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
	setWithdrawalBalanceCommitment(t, witness, assignment)
	setWithdrawalStatementHash(t, witness, assignment, nIn)

	if err := test.IsSolved(
		circuits.NewShieldedIcs20WithdrawalCircuit(nIn),
		assignment,
		ecc.BLS12_377.ScalarField(),
	); err != nil {
		t.Fatalf("withdrawal rejected an external padded RK: %v", err)
	}
}

func TestTransferCircuitRejectsTransferOwnedMutations(t *testing.T) {
	mutations := []transferMutation{
		{
			name: "statement hash",
			mutate: func(c *circuits.TransferCircuit) {
				c.ClaimedStatementHash = mutateFieldByOne(c.ClaimedStatementHash)
			},
		},
		{
			name: "spend nullifier",
			mutate: func(c *circuits.TransferCircuit) {
				c.RequiredSpend.Nullifier = mutateFieldByOne(c.RequiredSpend.Nullifier)
			},
		},
		{
			name: "randomized verification key",
			mutate: func(c *circuits.TransferCircuit) {
				c.RequiredSpend.RK.X = mutateFieldByOne(c.RequiredSpend.RK.X)
			},
		},
		{
			name: "state path",
			mutate: func(c *circuits.TransferCircuit) {
				c.RequiredSpend.StateProof.Path[0][0] =
					mutateFieldByOne(c.RequiredSpend.StateProof.Path[0][0])
			},
		},
		{
			name: "output note commitment",
			mutate: func(c *circuits.TransferCircuit) {
				c.ReceiverOutput.NoteCommitment = mutateFieldByOne(c.ReceiverOutput.NoteCommitment)
			},
		},
		{
			name: "balance commitment",
			mutate: func(c *circuits.TransferCircuit) {
				c.BalanceCommitment.X = mutateFieldByOne(c.BalanceCommitment.X)
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

func complianceTierMutations() []transferMutation {
	var mutations []transferMutation
	mutations = append(mutations, senderCoreMutations()...)
	mutations = append(mutations, senderExtMutations()...)
	mutations = append(mutations, outputCoreMutations()...)
	mutations = append(mutations, outputExtMutations()...)
	return mutations
}

func senderCoreMutations() []transferMutation {
	return []transferMutation{
		{name: "sender core ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Ciphertext[0] = mutateFieldByOne(c.Compliance.SenderCore.Ciphertext[0])
		}},
		{name: "sender core c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.C2 = mutateFieldByOne(c.Compliance.SenderCore.C2)
		}},
		{name: "sender core swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Proof.Statement = c.Compliance.SenderExt.Proof.Statement
		}},
		{name: "sender core swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Proof.Challenge = c.Compliance.SenderExt.Proof.Challenge
		}},
		{name: "sender core derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderCore.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.SenderCore.Proof.DerivedPK.X)
		}},
	}
}

func senderExtMutations() []transferMutation {
	return []transferMutation{
		{name: "sender ext ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Ciphertext[0] = mutateFieldByOne(c.Compliance.SenderExt.Ciphertext[0])
		}},
		{name: "sender ext c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.C2 = mutateFieldByOne(c.Compliance.SenderExt.C2)
		}},
		{name: "sender ext swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Proof.Statement = c.Compliance.SenderCore.Proof.Statement
		}},
		{name: "sender ext swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Proof.Challenge = c.Compliance.SenderCore.Proof.Challenge
		}},
		{name: "sender ext derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.SenderExt.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.SenderExt.Proof.DerivedPK.X)
		}},
	}
}

func outputCoreMutations() []transferMutation {
	return []transferMutation{
		{name: "output core ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Ciphertext[0] = mutateFieldByOne(c.Compliance.OutputCore.Ciphertext[0])
		}},
		{name: "output core c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.C2 = mutateFieldByOne(c.Compliance.OutputCore.C2)
		}},
		{name: "output core swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Proof.Statement = c.Compliance.OutputExt.Proof.Statement
		}},
		{name: "output core swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Proof.Challenge = c.Compliance.OutputExt.Proof.Challenge
		}},
		{name: "output core derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputCore.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.OutputCore.Proof.DerivedPK.X)
		}},
	}
}

func outputExtMutations() []transferMutation {
	return []transferMutation{
		{name: "output ext ciphertext", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Ciphertext[0] = mutateFieldByOne(c.Compliance.OutputExt.Ciphertext[0])
		}},
		{name: "output ext c2", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.C2 = mutateFieldByOne(c.Compliance.OutputExt.C2)
		}},
		{name: "output ext swapped statement", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Proof.Statement = c.Compliance.OutputCore.Proof.Statement
		}},
		{name: "output ext swapped challenge", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Proof.Challenge = c.Compliance.OutputCore.Proof.Challenge
		}},
		{name: "output ext derived pk", mutate: func(c *circuits.TransferCircuit) {
			c.Compliance.OutputExt.Proof.DerivedPK.X = mutateFieldByOne(c.Compliance.OutputExt.Proof.DerivedPK.X)
		}},
	}
}

func TestTransferCircuitRejectsTierMetadataMutations(t *testing.T) {
	for _, mutation := range tierMetadataMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func tierMetadataMutations() []transferMutation {
	type tier struct {
		name  string
		apply func(*circuits.TransferCircuit, func(*circuits.TransferComplianceStatementFields))
	}
	tiers := []tier{
		{name: "sender core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.SenderCore.Proof.Statement)
		}},
		{name: "sender ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.SenderExt.Proof.Statement)
		}},
		{name: "output core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.OutputCore.Proof.Statement)
		}},
		{name: "output ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceStatementFields)) {
			mutate(&c.Compliance.OutputExt.Proof.Statement)
		}},
	}
	fields := []struct {
		name   string
		mutate func(*circuits.TransferComplianceStatementFields)
	}{
		{name: "tier label", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.Tier = mutateFieldByOne(s.Tier)
		}},
		{name: "policy hash", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.PolicyIDHash = mutateFieldByOne(s.PolicyIDHash)
		}},
		{name: "resource hash", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.ResourceHash = mutateFieldByOne(s.ResourceHash)
		}},
		{name: "permission hash", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.PermissionHash = mutateFieldByOne(s.PermissionHash)
		}},
		{name: "timestamp", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.TargetTimestamp = mutateFieldByOne(s.TargetTimestamp)
		}},
		{name: "salt", mutate: func(s *circuits.TransferComplianceStatementFields) {
			s.Salt = mutateFieldByOne(s.Salt)
		}},
	}

	var mutations []transferMutation
	for _, tier := range tiers {
		for _, field := range fields {
			tier := tier
			field := field
			mutations = append(mutations, transferMutation{
				name: tier.name + " " + field.name,
				mutate: func(c *circuits.TransferCircuit) {
					tier.apply(c, field.mutate)
				},
			})
		}
	}
	return mutations
}

func TestTransferCircuitRejectsTierProofPointMutations(t *testing.T) {
	for _, mutation := range tierProofPointMutations() {
		t.Run(mutation.name, func(t *testing.T) {
			assertTransferMutationRejected(t, mutation)
		})
	}
}

func tierProofPointMutations() []transferMutation {
	type tier struct {
		name  string
		apply func(*circuits.TransferCircuit, func(*circuits.TransferComplianceProofFields))
	}
	tiers := []tier{
		{name: "sender core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.SenderCore.Proof)
		}},
		{name: "sender ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.SenderExt.Proof)
		}},
		{name: "output core", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.OutputCore.Proof)
		}},
		{name: "output ext", apply: func(c *circuits.TransferCircuit, mutate func(*circuits.TransferComplianceProofFields)) {
			mutate(&c.Compliance.OutputExt.Proof)
		}},
	}
	fields := []struct {
		name   string
		mutate func(*circuits.TransferComplianceProofFields)
	}{
		{name: "shared point", mutate: func(p *circuits.TransferComplianceProofFields) {
			p.SharedPoint.X = mutateFieldByOne(p.SharedPoint.X)
		}},
		{name: "enc commitment", mutate: func(p *circuits.TransferComplianceProofFields) {
			p.EncCmt.X = mutateFieldByOne(p.EncCmt.X)
		}},
		{name: "response", mutate: func(p *circuits.TransferComplianceProofFields) {
			p.Response = mutateFieldByOne(p.Response)
		}},
	}

	var mutations []transferMutation
	for _, tier := range tiers {
		for _, field := range fields {
			tier := tier
			field := field
			mutations = append(mutations, transferMutation{
				name: tier.name + " " + field.name,
				mutate: func(c *circuits.TransferCircuit) {
					tier.apply(c, field.mutate)
				},
			})
		}
	}
	return mutations
}
