package abi

import (
	"bytes"
	"fmt"

	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

const (
	transferWitnessV16Magic   = "PTWG"
	transferWitnessV16Version = 16
)

type TransferComplianceCiphertextWitnessV16Binary struct {
	C2         [32]byte
	Ciphertext [][32]byte
	EPKAffine  PointAffineBinary
}

type TransferComplianceMetadataWitnessV16Binary struct {
	SenderSubjectDerivation [32]byte
	OutputSubjectDerivation [32]byte
	RingIDHash              [32]byte
	PolicyIDHash            [32]byte
	ResourceHash            [32]byte
	PermissionHash          [32]byte
	TargetTimestamp         [32]byte
	SenderCoreSalt          [32]byte
	SenderExtSalt           [32]byte
	OutputCoreSalt          [32]byte
	OutputExtSalt           [32]byte
}

type TransferRequiredSpendWitnessV16Binary struct {
	Nullifier               [32]byte
	SpentNoteBlinding       [32]byte
	SpentNoteAmount         [32]byte
	SpentNoteAssetID        [32]byte
	StateCommitmentPosition uint64
	StateCommitmentAuthPath [][3][32]byte
	SpendAuthRandomizer     [32]byte
	RKAffine                PointAffineBinary
}

type TransferOptionalSpendWitnessV16Binary struct {
	Nullifier               [32]byte
	SpentNoteBlinding       [32]byte
	SpentNoteAmount         [32]byte
	StateCommitmentPosition uint64
	StateCommitmentAuthPath [][3][32]byte
	SpendAuthRandomizer     [32]byte
	RKAffine                PointAffineBinary
	IsDummy                 bool
	DummyNullifierSeed      [32]byte
}

type TransferReceiverOutputWitnessV16Binary struct {
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

type TransferChangeOutputWitnessV16Binary struct {
	NoteCommitment      [32]byte
	CreatedNoteBlinding [32]byte
	CreatedNoteAmount   [32]byte
}

type TransferWitnessV16Binary struct {
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
	SenderClueKey            [32]byte
	TransferNonceRoot        [32]byte

	DetectionCiphertext [][32]byte
	Metadata            TransferComplianceMetadataWitnessV16Binary
	SenderCore          TransferComplianceCiphertextWitnessV16Binary
	SenderExt           TransferComplianceCiphertextWitnessV16Binary
	OutputCore          TransferComplianceCiphertextWitnessV16Binary
	OutputExt           TransferComplianceCiphertextWitnessV16Binary
	SenderRCore         [32]byte
	SenderRExt          [32]byte
	OutputRCore         [32]byte
	OutputRExt          [32]byte

	RequiredSpend  TransferRequiredSpendWitnessV16Binary
	OptionalSpend  TransferOptionalSpendWitnessV16Binary
	ReceiverOutput TransferReceiverOutputWitnessV16Binary
	ChangeOutput   TransferChangeOutputWitnessV16Binary

	AKAffine                   PointAffineBinary
	AssetIndexedLeafDKPub      PointAffineBinary
	AssetIndexedLeafRingPK     PointAffineBinary
	SenderDiversifiedGenerator PointAffineBinary
	SenderTransmissionKey      PointAffineBinary
}

func DecodeTransferWitnessV16(
	payload []byte,
) (*TransferWitnessV16Binary, generated.TransferFamilySpec, error) {
	family, ok := generated.TransferFamilyByLabel("transfer")
	if !ok {
		return nil, generated.TransferFamilySpec{}, fmt.Errorf("missing generated transfer spec")
	}
	witness, err := decodeTransferWitnessV16("Transfer", payload)
	if err != nil {
		return nil, generated.TransferFamilySpec{}, err
	}
	return witness, family, nil
}

func decodeTransferWitnessV16(
	label string,
	payload []byte,
) (*TransferWitnessV16Binary, error) {
	reader := bytes.NewReader(payload)

	magic, err := readExact(reader, 4)
	if err != nil {
		return nil, err
	}
	if string(magic) != transferWitnessV16Magic {
		return nil, fmt.Errorf("invalid %sWitnessV16 magic %q", label, string(magic))
	}
	version, err := readU32(reader)
	if err != nil {
		return nil, err
	}
	if version != transferWitnessV16Version {
		return nil, fmt.Errorf("unsupported %sWitnessV16 version %d", label, version)
	}
	totalLength, err := readU32(reader)
	if err != nil {
		return nil, err
	}
	if totalLength != uint32(len(payload)) {
		return nil, fmt.Errorf("payload length mismatch: header=%d actual=%d", totalLength, len(payload))
	}

	witness := &TransferWitnessV16Binary{TotalLength: totalLength}
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
	if witness.SenderClueKey, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.TransferNonceRoot, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.DetectionCiphertext, err = readVec32(reader); err != nil {
		return nil, err
	}
	if witness.Metadata, err = readTransferComplianceMetadataV16(reader); err != nil {
		return nil, err
	}
	if witness.SenderCore, err = readTransferComplianceTierV16(reader); err != nil {
		return nil, err
	}
	if witness.SenderExt, err = readTransferComplianceTierV16(reader); err != nil {
		return nil, err
	}
	if witness.OutputCore, err = readTransferComplianceTierV16(reader); err != nil {
		return nil, err
	}
	if witness.OutputExt, err = readTransferComplianceTierV16(reader); err != nil {
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

	if witness.RequiredSpend, err = readTransferRequiredSpendV16(reader); err != nil {
		return nil, fmt.Errorf("decode required transfer spend: %w", err)
	}
	if witness.OptionalSpend, err = readTransferOptionalSpendV16(reader); err != nil {
		return nil, fmt.Errorf("decode optional transfer spend: %w", err)
	}
	if witness.ReceiverOutput, err = readTransferReceiverOutputV16(reader); err != nil {
		return nil, fmt.Errorf("decode transfer receiver output: %w", err)
	}
	if witness.ChangeOutput, err = readTransferChangeOutputV16(reader); err != nil {
		return nil, fmt.Errorf("decode transfer change output: %w", err)
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

func readTransferRequiredSpendV16(
	reader *bytes.Reader,
) (TransferRequiredSpendWitnessV16Binary, error) {
	var spend TransferRequiredSpendWitnessV16Binary
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

func readTransferOptionalSpendV16(
	reader *bytes.Reader,
) (TransferOptionalSpendWitnessV16Binary, error) {
	var spend TransferOptionalSpendWitnessV16Binary
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

func readTransferReceiverOutputV16(
	reader *bytes.Reader,
) (TransferReceiverOutputWitnessV16Binary, error) {
	var output TransferReceiverOutputWitnessV16Binary
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

func readTransferChangeOutputV16(
	reader *bytes.Reader,
) (TransferChangeOutputWitnessV16Binary, error) {
	var output TransferChangeOutputWitnessV16Binary
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
	return output, nil
}

func readTransferComplianceTierV16(
	reader *bytes.Reader,
) (TransferComplianceCiphertextWitnessV16Binary, error) {
	var tier TransferComplianceCiphertextWitnessV16Binary
	var err error
	if tier.C2, err = read32(reader); err != nil {
		return tier, err
	}
	if tier.Ciphertext, err = readVec32(reader); err != nil {
		return tier, err
	}
	if tier.EPKAffine, err = readPointAffine(reader); err != nil {
		return tier, err
	}
	return tier, nil
}

func readTransferComplianceMetadataV16(
	reader *bytes.Reader,
) (TransferComplianceMetadataWitnessV16Binary, error) {
	var metadata TransferComplianceMetadataWitnessV16Binary
	var err error
	if metadata.SenderSubjectDerivation, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.OutputSubjectDerivation, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.RingIDHash, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.PolicyIDHash, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.ResourceHash, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.PermissionHash, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.TargetTimestamp, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.SenderCoreSalt, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.SenderExtSalt, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.OutputCoreSalt, err = read32(reader); err != nil {
		return metadata, err
	}
	if metadata.OutputExtSalt, err = read32(reader); err != nil {
		return metadata, err
	}
	return metadata, nil
}
