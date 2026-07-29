package abi

import (
	"fmt"
	"math/big"

	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func NewTransferCircuitAssignmentFromWitnessV11(
	payload []byte,
) (*circuits.TransferCircuit, generated.TransferFamilySpec, error) {
	witness, family, err := DecodeTransferWitnessV11(payload)
	if err != nil {
		return nil, generated.TransferFamilySpec{}, fmt.Errorf("decode TransferWitnessV11: %w", err)
	}
	if err := validateTransferStatementHashV11(witness); err != nil {
		return nil, generated.TransferFamilySpec{}, err
	}
	assignment, err := newTransferCircuitAssignment(witness)
	if err != nil {
		return nil, generated.TransferFamilySpec{}, err
	}
	return assignment, family, nil
}

func fqString(value [32]byte) string {
	return primitives.LittleEndianBytesToBigInt(value[:]).String()
}

func point2DString(point PointAffineBinary) circuits.Point2D {
	return circuits.Point2D{
		X: fqString(point.X),
		Y: fqString(point.Y),
	}
}

func expectedTransferStatementFieldCount() int {
	return primitives.TransferStatementBaseFields +
		primitives.TransferStatementFieldsPerInput*circuits.TransferCircuitInputs +
		primitives.TransferStatementFieldsPerOutput*circuits.TransferCircuitOutputs
}

func validateTransferStatementHashV11(witness *TransferWitnessV11Binary) error {
	fields, err := ReconstructedTransferStatementFieldsFromWitnessV11(witness)
	if err != nil {
		return fmt.Errorf("reconstruct TransferWitnessV11 statement: %w", err)
	}
	fieldElements := make([]*big.Int, len(fields))
	for i := range fields {
		fieldElements[i] = primitives.LittleEndianBytesToBigInt(fields[i][:])
	}
	computed, err := primitives.TransferStatementHashNativeForShape(
		fieldElements,
		circuits.TransferCircuitInputs,
		circuits.TransferCircuitOutputs,
	)
	if err != nil {
		return fmt.Errorf("hash reconstructed TransferWitnessV11 statement: %w", err)
	}
	claimed := primitives.LittleEndianBytesToBigInt(witness.ClaimedStatementHash[:])
	if computed.Cmp(claimed) != 0 {
		return fmt.Errorf(
			"TransferWitnessV11 claimed statement hash mismatch: reconstructed=%s claimed=%s",
			computed,
			claimed,
		)
	}
	return nil
}

func newTransferSharedAssignmentParts(
	witness *TransferWitnessV11Binary,
) (
	circuits.Point2D,
	circuits.TransferAuthSharedFields,
	circuits.AssetTreeFields,
	circuits.TransferUserCircuitFields,
	error,
) {
	var zeroPoint circuits.Point2D
	var zeroAuth circuits.TransferAuthSharedFields
	var zeroAsset circuits.AssetTreeFields
	var zeroSender circuits.TransferUserCircuitFields

	assetPath, err := quadPathFromBinary(witness.AssetPath)
	if err != nil {
		return zeroPoint, zeroAuth, zeroAsset, zeroSender, fmt.Errorf("decode transfer asset path: %w", err)
	}
	senderPath, err := quadPathFromBinary(witness.SenderCompliancePath)
	if err != nil {
		return zeroPoint, zeroAuth, zeroAsset, zeroSender, fmt.Errorf("decode transfer sender compliance path: %w", err)
	}
	akCompressed, err := pointAffineToField(witness.AKAffine)
	if err != nil {
		return zeroPoint, zeroAuth, zeroAsset, zeroSender, fmt.Errorf("compress transfer ak: %w", err)
	}
	ivkReduced, quotientA, err := incomingViewingKeyReductionFromBinary(witness.NK, akCompressed)
	if err != nil {
		return zeroPoint, zeroAuth, zeroAsset, zeroSender, fmt.Errorf("compute transfer ivk reduction from affine ak: %w", err)
	}

	balanceCommitment := point2DString(witness.BalanceCommitmentAffine)
	auth := circuits.TransferAuthSharedFields{
		AK:           point2DString(witness.AKAffine),
		NK:           primitives.LittleEndianBytesToBigInt(witness.NK[:]).String(),
		IVKReduced:   ivkReduced.String(),
		IVKQuotientA: quotientA,
	}
	asset := circuits.AssetTreeFields{
		Leaf: indexedLeafFieldsFromIndexedLeafBinary(
			witness.AssetIndexedLeaf,
			witness.AssetIndexedLeafDKPub,
			witness.AssetIndexedLeafRingPK,
		),
		Path:     assetPath,
		Position: witness.AssetPosition,
	}
	sender := circuits.TransferUserCircuitFields{
		DivGen:         point2DString(witness.SenderDiversifiedGenerator),
		Transmission:   point2DString(witness.SenderTransmissionKey),
		SlotID:         fqString(witness.SenderSlotID),
		SlotDerivation: fqString(witness.SenderSlotDerivation),
		D:              fqString(witness.SenderD),
		Path:           senderPath,
		Position:       witness.SenderCompliancePosition,
	}
	return balanceCommitment, auth, asset, sender, nil
}

func transferCoreTierFields(
	tier *TransferComplianceCiphertextWitnessV11Binary,
) (circuits.TransferComplianceCoreFields, error) {
	var zero circuits.TransferComplianceCoreFields
	if len(tier.Ciphertext) != compliance.TransferCoreCiphertextFQCount {
		return zero, fmt.Errorf(
			"expected %d transfer core ciphertext elements, got %d",
			compliance.TransferCoreCiphertextFQCount,
			len(tier.Ciphertext),
		)
	}
	fields := circuits.TransferComplianceCoreFields{
		Epk:   point2DString(tier.EPKAffine),
		C2:    fqString(tier.C2),
		Proof: transferTierProofFields(tier),
	}
	for i := range tier.Ciphertext {
		fields.Ciphertext[i] = fqString(tier.Ciphertext[i])
	}
	return fields, nil
}

func transferExtTierFields(
	tier *TransferComplianceCiphertextWitnessV11Binary,
) (circuits.TransferComplianceExtFields, error) {
	var zero circuits.TransferComplianceExtFields
	if len(tier.Ciphertext) != compliance.TransferExtCiphertextFQCount {
		return zero, fmt.Errorf(
			"expected %d transfer ext ciphertext elements, got %d",
			compliance.TransferExtCiphertextFQCount,
			len(tier.Ciphertext),
		)
	}
	fields := circuits.TransferComplianceExtFields{
		Epk:   point2DString(tier.EPKAffine),
		C2:    fqString(tier.C2),
		Proof: transferTierProofFields(tier),
	}
	for i := range tier.Ciphertext {
		fields.Ciphertext[i] = fqString(tier.Ciphertext[i])
	}
	return fields, nil
}

func transferTierProofFields(
	tier *TransferComplianceCiphertextWitnessV11Binary,
) circuits.TransferComplianceProofFields {
	return circuits.TransferComplianceProofFields{
		Statement: circuits.TransferComplianceStatementFields{
			SubjectDerivation: fqString(tier.SubjectDerivation),
			RingIDHash:        fqString(tier.RingIDHash),
			PolicyIDHash:      fqString(tier.PolicyIDHash),
			ResourceHash:      fqString(tier.ResourceHash),
			PermissionHash:    fqString(tier.PermissionHash),
			Tier:              tier.Tier,
			TargetTimestamp:   fqString(tier.StatementTimestamp),
			Salt:              fqString(tier.Salt),
		},
		Challenge:   fqString(tier.Challenge),
		Response:    fqString(tier.Response),
		DerivedPK:   point2DString(tier.DerivedPKAffine),
		EncCmt:      point2DString(tier.EncCmtAffine),
		SharedPoint: point2DString(tier.SharedPointAffine),
	}
}

func newTransferComplianceFields(
	witness *TransferWitnessV11Binary,
) (circuits.TransferComplianceFields, error) {
	var zero circuits.TransferComplianceFields
	if len(witness.DetectionCiphertext) != compliance.TransferDetectionFQCount {
		return zero, fmt.Errorf(
			"expected %d transfer detection ciphertext elements, got %d",
			compliance.TransferDetectionFQCount,
			len(witness.DetectionCiphertext),
		)
	}

	senderCore, err := transferCoreTierFields(&witness.SenderCore)
	if err != nil {
		return zero, fmt.Errorf("decode transfer sender_core tier: %w", err)
	}
	senderExt, err := transferExtTierFields(&witness.SenderExt)
	if err != nil {
		return zero, fmt.Errorf("decode transfer sender_ext tier: %w", err)
	}
	outputCore, err := transferCoreTierFields(&witness.OutputCore)
	if err != nil {
		return zero, fmt.Errorf("decode transfer output_core tier: %w", err)
	}
	outputExt, err := transferExtTierFields(&witness.OutputExt)
	if err != nil {
		return zero, fmt.Errorf("decode transfer output_ext tier: %w", err)
	}

	fields := circuits.TransferComplianceFields{
		TransferNonceRoot: fqString(witness.TransferNonceRoot),
		SenderRCore:       fqString(witness.SenderRCore),
		SenderRExt:        fqString(witness.SenderRExt),
		OutputRCore:       fqString(witness.OutputRCore),
		OutputRExt:        fqString(witness.OutputRExt),
		SenderCore:        senderCore,
		SenderExt:         senderExt,
		OutputCore:        outputCore,
		OutputExt:         outputExt,
	}
	for i := range witness.DetectionCiphertext {
		fields.DetectionCiphertext[i] = fqString(witness.DetectionCiphertext[i])
	}
	return fields, nil
}

func transferNotePayloadFields(
	blinding [32]byte,
	amount [32]byte,
	clueKey [32]byte,
) circuits.TransferNotePayloadCircuitFields {
	return circuits.TransferNotePayloadCircuitFields{
		Blinding: fqString(blinding),
		Amount:   fqString(amount),
		ClueKey:  fqString(clueKey),
	}
}

func transferStatePathFields(
	position uint64,
	path [][3][32]byte,
) (circuits.TransferStatePathCircuitFields, error) {
	statePath, err := statePathFromBinary(path)
	if err != nil {
		return circuits.TransferStatePathCircuitFields{}, err
	}
	return circuits.TransferStatePathCircuitFields{
		Position: position,
		Path:     statePath,
	}, nil
}

func newTransferRequiredSpendCircuitFields(
	witness *TransferRequiredSpendWitnessV11Binary,
) (circuits.TransferRequiredSpendCircuitFields, error) {
	stateProof, err := transferStatePathFields(
		witness.StateCommitmentPosition,
		witness.StateCommitmentAuthPath,
	)
	if err != nil {
		return circuits.TransferRequiredSpendCircuitFields{}, fmt.Errorf(
			"decode required transfer spend state path: %w",
			err,
		)
	}
	return circuits.TransferRequiredSpendCircuitFields{
		Nullifier: fqString(witness.Nullifier),
		RK:        point2DString(witness.RKAffine),
		Note: circuits.TransferRequiredSpendNoteCircuitFields{
			TransferNotePayloadCircuitFields: transferNotePayloadFields(
				witness.SpentNoteBlinding,
				witness.SpentNoteAmount,
				witness.SpentClueKey,
			),
			AssetID: fqString(witness.SpentNoteAssetID),
		},
		StateProof:     stateProof,
		AuthRandomizer: fqString(witness.SpendAuthRandomizer),
	}, nil
}

func newTransferOptionalSpendCircuitFields(
	witness *TransferOptionalSpendWitnessV11Binary,
) (circuits.TransferOptionalSpendCircuitFields, error) {
	stateProof, err := transferStatePathFields(
		witness.StateCommitmentPosition,
		witness.StateCommitmentAuthPath,
	)
	if err != nil {
		return circuits.TransferOptionalSpendCircuitFields{}, fmt.Errorf(
			"decode optional transfer spend state path: %w",
			err,
		)
	}
	return circuits.TransferOptionalSpendCircuitFields{
		Nullifier: fqString(witness.Nullifier),
		RK:        point2DString(witness.RKAffine),
		Note: transferNotePayloadFields(
			witness.SpentNoteBlinding,
			witness.SpentNoteAmount,
			witness.SpentClueKey,
		),
		StateProof:         stateProof,
		AuthRandomizer:     fqString(witness.SpendAuthRandomizer),
		IsDummy:            boolToVariable(witness.IsDummy),
		DummyNullifierSeed: fqString(witness.DummyNullifierSeed),
	}, nil
}

func boolToVariable(value bool) int {
	if value {
		return 1
	}
	return 0
}

func newTransferReceiverOutputCircuitFields(
	witness *TransferReceiverOutputWitnessV11Binary,
) (circuits.TransferReceiverOutputCircuitFields, error) {
	recipientPath, err := quadPathFromBinary(witness.RecipientCompliancePath)
	if err != nil {
		return circuits.TransferReceiverOutputCircuitFields{}, fmt.Errorf(
			"decode transfer receiver compliance path: %w",
			err,
		)
	}
	return circuits.TransferReceiverOutputCircuitFields{
		NoteCommitment: fqString(witness.NoteCommitment),
		Note: transferNotePayloadFields(
			witness.CreatedNoteBlinding,
			witness.CreatedNoteAmount,
			witness.CreatedClueKey,
		),
		Recipient: circuits.TransferUserCircuitFields{
			DivGen:         point2DString(witness.RecipientDiversifiedGenerator),
			Transmission:   point2DString(witness.RecipientTransmissionKey),
			SlotID:         fqString(witness.RecipientSlotID),
			SlotDerivation: fqString(witness.RecipientSlotDerivation),
			D:              fqString(witness.RecipientD),
			Path:           recipientPath,
			Position:       witness.RecipientCompliancePosition,
		},
	}, nil
}

func newTransferChangeOutputCircuitFields(
	witness *TransferChangeOutputWitnessV11Binary,
) circuits.TransferChangeOutputCircuitFields {
	return circuits.TransferChangeOutputCircuitFields{
		NoteCommitment: fqString(witness.NoteCommitment),
		Note: transferNotePayloadFields(
			witness.CreatedNoteBlinding,
			witness.CreatedNoteAmount,
			witness.CreatedClueKey,
		),
	}
}

func newTransferCircuitAssignment(
	witness *TransferWitnessV11Binary,
) (*circuits.TransferCircuit, error) {
	balanceCommitment, auth, asset, sender, err := newTransferSharedAssignmentParts(witness)
	if err != nil {
		return nil, err
	}
	complianceFields, err := newTransferComplianceFields(witness)
	if err != nil {
		return nil, err
	}
	requiredSpend, err := newTransferRequiredSpendCircuitFields(&witness.RequiredSpend)
	if err != nil {
		return nil, err
	}
	optionalSpend, err := newTransferOptionalSpendCircuitFields(&witness.OptionalSpend)
	if err != nil {
		return nil, err
	}
	receiverOutput, err := newTransferReceiverOutputCircuitFields(&witness.ReceiverOutput)
	if err != nil {
		return nil, err
	}

	assignment := circuits.NewTransferCircuit()
	assignment.ClaimedStatementHash = fqString(witness.ClaimedStatementHash)
	assignment.Anchor = fqString(witness.Anchor)
	assignment.BalanceCommitment = balanceCommitment
	assignment.AssetAnchor = fqString(witness.AssetAnchor)
	assignment.ComplianceAnchor = fqString(witness.ComplianceAnchor)
	assignment.TargetTimestamp = fqString(witness.TargetTimestamp)
	assignment.ActionBalanceBlinding = fqString(witness.ActionBalanceBlinding)
	assignment.IsRegulated = circuits.BoolToField(witness.IsRegulated)
	assignment.Auth = auth
	assignment.Asset = asset
	assignment.Sender = sender
	assignment.Compliance = complianceFields
	assignment.RequiredSpend = requiredSpend
	assignment.OptionalSpend = optionalSpend
	assignment.ReceiverOutput = receiverOutput
	assignment.ChangeOutput = newTransferChangeOutputCircuitFields(&witness.ChangeOutput)
	return assignment, nil
}
