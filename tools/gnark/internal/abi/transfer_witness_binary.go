package abi

import (
	"bytes"
	"fmt"

	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

const (
	transferWitnessV11Magic   = "PTWG"
	transferWitnessV11Version = 11
)

type TransferComplianceCiphertextWitnessV11Binary struct {
	C2                 [32]byte
	Ciphertext         [][32]byte
	SubjectDerivation  [32]byte
	RingIDHash         [32]byte
	PolicyIDHash       [32]byte
	ResourceHash       [32]byte
	PermissionHash     [32]byte
	Tier               uint64
	StatementTimestamp [32]byte
	Salt               [32]byte
	Challenge          [32]byte
	Response           [32]byte
	EPKAffine          PointAffineBinary
	DerivedPKAffine    PointAffineBinary
	EncCmtAffine       PointAffineBinary
	SharedPointAffine  PointAffineBinary
}

type TransferRequiredSpendWitnessV11Binary struct {
	Nullifier               [32]byte
	SpentNoteBlinding       [32]byte
	SpentNoteAmount         [32]byte
	SpentNoteAssetID        [32]byte
	SpentClueKey            [32]byte
	StateCommitmentPosition uint64
	StateCommitmentAuthPath [][3][32]byte
	SpendAuthRandomizer     [32]byte
	RKAffine                PointAffineBinary
}

type TransferOptionalSpendWitnessV11Binary struct {
	Nullifier               [32]byte
	SpentNoteBlinding       [32]byte
	SpentNoteAmount         [32]byte
	SpentClueKey            [32]byte
	StateCommitmentPosition uint64
	StateCommitmentAuthPath [][3][32]byte
	SpendAuthRandomizer     [32]byte
	RKAffine                PointAffineBinary
	IsDummy                 bool
	DummyNullifierSeed      [32]byte
}

type TransferReceiverOutputWitnessV11Binary struct {
	NoteCommitment                [32]byte
	CreatedNoteBlinding           [32]byte
	CreatedNoteAmount             [32]byte
	CreatedClueKey                [32]byte
	RecipientCompliancePath       MerklePathBinary
	RecipientCompliancePosition   uint64
	RecipientSlotID               [32]byte
	RecipientSlotDerivation       [32]byte
	RecipientD                    [32]byte
	RecipientDiversifiedGenerator PointAffineBinary
	RecipientTransmissionKey      PointAffineBinary
}

type TransferChangeOutputWitnessV11Binary struct {
	NoteCommitment      [32]byte
	CreatedNoteBlinding [32]byte
	CreatedNoteAmount   [32]byte
	CreatedClueKey      [32]byte
}

type TransferWitnessV11Binary struct {
	TotalLength uint32

	Anchor               [32]byte
	AssetAnchor          [32]byte
	ComplianceAnchor     [32]byte
	TargetTimestamp      [32]byte
	ClaimedStatementHash [32]byte

	ActionBalanceBlinding    [32]byte
	NK                       [32]byte
	AssetPath                MerklePathBinary
	AssetPosition            uint64
	AssetIndexedLeaf         IndexedLeafBinary
	IsRegulated              bool
	SenderCompliancePath     MerklePathBinary
	SenderCompliancePosition uint64
	SenderSlotID             [32]byte
	SenderSlotDerivation     [32]byte
	SenderD                  [32]byte
	TransferNonceRoot        [32]byte

	DetectionCiphertext [][32]byte
	SenderCore          TransferComplianceCiphertextWitnessV11Binary
	SenderExt           TransferComplianceCiphertextWitnessV11Binary
	OutputCore          TransferComplianceCiphertextWitnessV11Binary
	OutputExt           TransferComplianceCiphertextWitnessV11Binary
	SenderRCore         [32]byte
	SenderRExt          [32]byte
	OutputRCore         [32]byte
	OutputRExt          [32]byte

	RequiredSpend  TransferRequiredSpendWitnessV11Binary
	OptionalSpend  TransferOptionalSpendWitnessV11Binary
	ReceiverOutput TransferReceiverOutputWitnessV11Binary
	ChangeOutput   TransferChangeOutputWitnessV11Binary

	BalanceCommitmentAffine    PointAffineBinary
	AKAffine                   PointAffineBinary
	AssetIndexedLeafDKPub      PointAffineBinary
	AssetIndexedLeafRingPK     PointAffineBinary
	SenderDiversifiedGenerator PointAffineBinary
	SenderTransmissionKey      PointAffineBinary
}

func DecodeTransferWitnessV11(
	payload []byte,
) (*TransferWitnessV11Binary, generated.TransferFamilySpec, error) {
	family, ok := generated.TransferFamilyByLabel("transfer")
	if !ok {
		return nil, generated.TransferFamilySpec{}, fmt.Errorf("missing generated transfer spec")
	}
	witness, err := decodeTransferWitnessV11("Transfer", payload)
	if err != nil {
		return nil, generated.TransferFamilySpec{}, err
	}
	return witness, family, nil
}

func decodeTransferWitnessV11(
	label string,
	payload []byte,
) (*TransferWitnessV11Binary, error) {
	reader := bytes.NewReader(payload)

	magic, err := readExact(reader, 4)
	if err != nil {
		return nil, err
	}
	if string(magic) != transferWitnessV11Magic {
		return nil, fmt.Errorf("invalid %sWitnessV11 magic %q", label, string(magic))
	}
	version, err := readU32(reader)
	if err != nil {
		return nil, err
	}
	if version != transferWitnessV11Version {
		return nil, fmt.Errorf("unsupported %sWitnessV11 version %d", label, version)
	}
	totalLength, err := readU32(reader)
	if err != nil {
		return nil, err
	}
	if totalLength != uint32(len(payload)) {
		return nil, fmt.Errorf("payload length mismatch: header=%d actual=%d", totalLength, len(payload))
	}

	witness := &TransferWitnessV11Binary{TotalLength: totalLength}
	if witness.Anchor, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.AssetAnchor, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.ComplianceAnchor, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.TargetTimestamp, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.ClaimedStatementHash, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.ActionBalanceBlinding, err = readFr32(reader); err != nil {
		return nil, err
	}
	if witness.NK, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.AssetPath, err = readMerklePath(reader); err != nil {
		return nil, err
	}
	if witness.AssetPosition, err = readU64(reader); err != nil {
		return nil, err
	}
	if witness.AssetIndexedLeaf, err = readIndexedLeaf(reader); err != nil {
		return nil, err
	}
	if witness.IsRegulated, err = readBool(reader); err != nil {
		return nil, err
	}
	if witness.SenderCompliancePath, err = readMerklePath(reader); err != nil {
		return nil, err
	}
	if witness.SenderCompliancePosition, err = readU64(reader); err != nil {
		return nil, err
	}
	if witness.SenderSlotID, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.SenderSlotDerivation, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.SenderD, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.TransferNonceRoot, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.DetectionCiphertext, err = readVec32(reader); err != nil {
		return nil, err
	}
	if witness.SenderCore, err = readTransferComplianceTierV11(reader); err != nil {
		return nil, err
	}
	if witness.SenderExt, err = readTransferComplianceTierV11(reader); err != nil {
		return nil, err
	}
	if witness.OutputCore, err = readTransferComplianceTierV11(reader); err != nil {
		return nil, err
	}
	if witness.OutputExt, err = readTransferComplianceTierV11(reader); err != nil {
		return nil, err
	}
	if witness.SenderRCore, err = readFr32(reader); err != nil {
		return nil, err
	}
	if witness.SenderRExt, err = readFr32(reader); err != nil {
		return nil, err
	}
	if witness.OutputRCore, err = readFr32(reader); err != nil {
		return nil, err
	}
	if witness.OutputRExt, err = readFr32(reader); err != nil {
		return nil, err
	}

	if witness.RequiredSpend, err = readTransferRequiredSpendV11(reader); err != nil {
		return nil, fmt.Errorf("decode required transfer spend: %w", err)
	}
	if witness.OptionalSpend, err = readTransferOptionalSpendV11(reader); err != nil {
		return nil, fmt.Errorf("decode optional transfer spend: %w", err)
	}
	if witness.ReceiverOutput, err = readTransferReceiverOutputV11(reader); err != nil {
		return nil, fmt.Errorf("decode transfer receiver output: %w", err)
	}
	if witness.ChangeOutput, err = readTransferChangeOutputV11(reader); err != nil {
		return nil, fmt.Errorf("decode transfer change output: %w", err)
	}

	if witness.BalanceCommitmentAffine, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.AKAffine, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.AssetIndexedLeafDKPub, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.AssetIndexedLeafRingPK, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.SenderDiversifiedGenerator, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.SenderTransmissionKey, err = readPointAffine(reader); err != nil {
		return nil, err
	}

	if extra, err := readExact(reader, int(reader.Len())); err != nil {
		return nil, err
	} else if len(extra) != 0 {
		return nil, fmt.Errorf("%s witness has %d trailing bytes", label, len(extra))
	}

	return witness, nil
}

func readTransferRequiredSpendV11(
	reader *bytes.Reader,
) (TransferRequiredSpendWitnessV11Binary, error) {
	var spend TransferRequiredSpendWitnessV11Binary
	var err error
	if spend.Nullifier, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentNoteBlinding, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentNoteAmount, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentNoteAssetID, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentClueKey, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.StateCommitmentPosition, err = readU64(reader); err != nil {
		return spend, err
	}
	if spend.StateCommitmentAuthPath, err = readTriplePath(reader); err != nil {
		return spend, err
	}
	if spend.SpendAuthRandomizer, err = readFr32(reader); err != nil {
		return spend, err
	}
	if spend.RKAffine, err = readPointAffine(reader); err != nil {
		return spend, err
	}
	return spend, nil
}

func readTransferOptionalSpendV11(
	reader *bytes.Reader,
) (TransferOptionalSpendWitnessV11Binary, error) {
	var spend TransferOptionalSpendWitnessV11Binary
	var err error
	if spend.Nullifier, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentNoteBlinding, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentNoteAmount, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.SpentClueKey, err = read32(reader); err != nil {
		return spend, err
	}
	if spend.StateCommitmentPosition, err = readU64(reader); err != nil {
		return spend, err
	}
	if spend.StateCommitmentAuthPath, err = readTriplePath(reader); err != nil {
		return spend, err
	}
	if spend.SpendAuthRandomizer, err = readFr32(reader); err != nil {
		return spend, err
	}
	if spend.RKAffine, err = readPointAffine(reader); err != nil {
		return spend, err
	}
	if spend.IsDummy, err = readBool(reader); err != nil {
		return spend, err
	}
	if spend.DummyNullifierSeed, err = read32(reader); err != nil {
		return spend, err
	}
	return spend, nil
}

func readTransferReceiverOutputV11(
	reader *bytes.Reader,
) (TransferReceiverOutputWitnessV11Binary, error) {
	var output TransferReceiverOutputWitnessV11Binary
	var err error
	if output.NoteCommitment, err = read32(reader); err != nil {
		return output, err
	}
	if output.CreatedNoteBlinding, err = read32(reader); err != nil {
		return output, err
	}
	if output.CreatedNoteAmount, err = read32(reader); err != nil {
		return output, err
	}
	if output.CreatedClueKey, err = read32(reader); err != nil {
		return output, err
	}
	if output.RecipientCompliancePath, err = readMerklePath(reader); err != nil {
		return output, err
	}
	if output.RecipientCompliancePosition, err = readU64(reader); err != nil {
		return output, err
	}
	if output.RecipientSlotID, err = read32(reader); err != nil {
		return output, err
	}
	if output.RecipientSlotDerivation, err = read32(reader); err != nil {
		return output, err
	}
	if output.RecipientD, err = read32(reader); err != nil {
		return output, err
	}
	if output.RecipientDiversifiedGenerator, err = readPointAffine(reader); err != nil {
		return output, err
	}
	if output.RecipientTransmissionKey, err = readPointAffine(reader); err != nil {
		return output, err
	}
	return output, nil
}

func readTransferChangeOutputV11(
	reader *bytes.Reader,
) (TransferChangeOutputWitnessV11Binary, error) {
	var output TransferChangeOutputWitnessV11Binary
	var err error
	if output.NoteCommitment, err = read32(reader); err != nil {
		return output, err
	}
	if output.CreatedNoteBlinding, err = read32(reader); err != nil {
		return output, err
	}
	if output.CreatedNoteAmount, err = read32(reader); err != nil {
		return output, err
	}
	if output.CreatedClueKey, err = read32(reader); err != nil {
		return output, err
	}
	return output, nil
}

func readTransferComplianceTierV11(
	reader *bytes.Reader,
) (TransferComplianceCiphertextWitnessV11Binary, error) {
	var tier TransferComplianceCiphertextWitnessV11Binary
	var err error
	if tier.C2, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.Ciphertext, err = readVec32(reader); err != nil {
		return tier, err
	}
	if tier.SubjectDerivation, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.RingIDHash, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.PolicyIDHash, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.ResourceHash, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.PermissionHash, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.Tier, err = readU64(reader); err != nil {
		return tier, err
	}
	if tier.StatementTimestamp, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.Salt, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.Challenge, err = readFr32(reader); err != nil {
		return tier, err
	}
	if tier.Response, err = readFr32(reader); err != nil {
		return tier, err
	}
	if tier.EPKAffine, err = readPointAffine(reader); err != nil {
		return tier, err
	}
	if tier.DerivedPKAffine, err = readPointAffine(reader); err != nil {
		return tier, err
	}
	if tier.EncCmtAffine, err = readPointAffine(reader); err != nil {
		return tier, err
	}
	if tier.SharedPointAffine, err = readPointAffine(reader); err != nil {
		return tier, err
	}
	return tier, nil
}
