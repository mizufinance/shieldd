package abi

import (
	"bytes"
	"fmt"

	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

const (
	shieldedIcs20WithdrawalWitnessMagic   = "PIWG"
	shieldedIcs20WithdrawalWitnessVersion = 8
	maxShieldedIcs20WithdrawalInputs      = 2
	minShieldedIcs20RequiredSpendBytes    = 32*3 + 8 + 4 + 32 + 64
	minShieldedIcs20OptionalSpendBytes    = minShieldedIcs20RequiredSpendBytes + 1 + 32
	minShieldedIcs20WithdrawalChangeBytes = 32 * 3
	minShieldedIcs20WithdrawalTailBytes   = 64 * 2
)

type ShieldedIcs20WithdrawalRequiredSpendWitnessV8Binary struct {
	Nullifier               [32]byte
	SpentNoteBlinding       [32]byte
	SpentNoteAmount         [32]byte
	StateCommitmentPosition uint64
	StateCommitmentAuthPath [][3][32]byte
	SpendAuthRandomizer     [32]byte
	RKAffine                PointAffineBinary
}

type ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary struct {
	ShieldedIcs20WithdrawalRequiredSpendWitnessV8Binary
	IsDummy            bool
	DummyNullifierSeed [32]byte
}

type ShieldedIcs20WithdrawalChangeWitnessV8Binary struct {
	NoteCommitment      [32]byte
	CreatedNoteBlinding [32]byte
	CreatedNoteAmount   [32]byte
}

type ShieldedIcs20WithdrawalAssetLeafWitnessV8Binary struct {
	Value      [32]byte
	NextIndex  uint64
	NextValue  [32]byte
	ParamsHash [32]byte
	RingHash   [32]byte
}

type ShieldedIcs20WithdrawalWitnessV8Binary struct {
	TotalLength uint32
	FamilyID    uint32
	NIn         uint32

	Anchor                    [32]byte
	AssetAnchor               [32]byte
	ComplianceAnchor          [32]byte
	TargetTimestamp           [32]byte
	OutboundAssetID           [32]byte
	OutboundAmount            [32]byte
	WithdrawalEffectHashLimbs [4][32]byte
	ClaimedStatementHash      [32]byte
	ActionBalanceBlinding     [32]byte
	NK                        [32]byte

	AssetPath                MerklePathBinary
	AssetPosition            uint64
	AssetIndexedLeaf         ShieldedIcs20WithdrawalAssetLeafWitnessV8Binary
	IsRegulated              bool
	SenderCompliancePath     MerklePathBinary
	SenderCompliancePosition uint64
	SenderSlotID             [32]byte
	SenderSlotDerivation     [32]byte
	SenderD                  [32]byte
	SenderClueKey            [32]byte

	RequiredSpend ShieldedIcs20WithdrawalRequiredSpendWitnessV8Binary
	OptionalSpend ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary
	ChangeOutput  ShieldedIcs20WithdrawalChangeWitnessV8Binary

	AKAffine                   PointAffineBinary
	SenderDiversifiedGenerator PointAffineBinary
}

func DecodeShieldedIcs20WithdrawalWitnessV8(payload []byte) (*ShieldedIcs20WithdrawalWitnessV8Binary, generated.ShieldedIcs20WithdrawalFamilySpec, error) {
	reader := bytes.NewReader(payload)

	magic, err := readExact(reader, 4)
	if err != nil {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, err
	}
	if string(magic) != shieldedIcs20WithdrawalWitnessMagic {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf("invalid shielded ICS-20 withdrawal witness magic %q", string(magic))
	}
	version, err := readU32(reader)
	if err != nil {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, err
	}
	if version != shieldedIcs20WithdrawalWitnessVersion {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf("unsupported shielded ICS-20 withdrawal witness version %d", version)
	}
	totalLength, err := readU32(reader)
	if err != nil {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, err
	}
	if totalLength != uint32(len(payload)) {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf("payload length mismatch: header=%d actual=%d", totalLength, len(payload))
	}
	familyID, err := readU32(reader)
	if err != nil {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, err
	}
	family, ok := generated.ShieldedIcs20WithdrawalFamilyByID(familyID)
	if !ok {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf("unknown shielded ICS-20 withdrawal family id %d", familyID)
	}
	nIn, err := readU32(reader)
	if err != nil {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, err
	}
	if int(nIn) != family.NIn {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf("shielded ICS-20 withdrawal witness shape mismatch: got %d inputs, expected %d", nIn, family.NIn)
	}
	if nIn > maxShieldedIcs20WithdrawalInputs {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf("shielded ICS-20 withdrawal witness nIn %d exceeds max %d", nIn, maxShieldedIcs20WithdrawalInputs)
	}
	minRemaining := minShieldedIcs20RequiredSpendBytes + minShieldedIcs20OptionalSpendBytes +
		minShieldedIcs20WithdrawalChangeBytes + minShieldedIcs20WithdrawalTailBytes
	if reader.Len() < minRemaining {
		return nil, generated.ShieldedIcs20WithdrawalFamilySpec{}, fmt.Errorf(
			"shielded ICS-20 withdrawal witness too short for %d spends: remaining=%d min=%d",
			nIn, reader.Len(), minRemaining,
		)
	}

	out := &ShieldedIcs20WithdrawalWitnessV8Binary{
		TotalLength: totalLength,
		FamilyID:    familyID,
		NIn:         nIn,
	}
	if out.Anchor, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.AssetAnchor, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.ComplianceAnchor, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.TargetTimestamp, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.OutboundAssetID, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.OutboundAmount, err = read32(reader); err != nil {
		return nil, family, err
	}
	for index := range out.WithdrawalEffectHashLimbs {
		if out.WithdrawalEffectHashLimbs[index], err = readU128Field(reader); err != nil {
			return nil, family, err
		}
	}
	if out.ClaimedStatementHash, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.ActionBalanceBlinding, err = readFr32(reader); err != nil {
		return nil, family, err
	}
	if out.NK, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.AssetPath, err = readMerklePath(reader); err != nil {
		return nil, family, err
	}
	if out.AssetPosition, err = readU64(reader); err != nil {
		return nil, family, err
	}
	if out.AssetIndexedLeaf, err = readShieldedIcs20WithdrawalAssetLeaf(reader); err != nil {
		return nil, family, err
	}
	isRegulated, err := readBool(reader)
	if err != nil {
		return nil, family, err
	}
	out.IsRegulated = isRegulated
	if out.SenderCompliancePath, err = readMerklePath(reader); err != nil {
		return nil, family, err
	}
	if out.SenderCompliancePosition, err = readU64(reader); err != nil {
		return nil, family, err
	}
	if out.SenderSlotID, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.SenderSlotDerivation, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.SenderD, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.SenderClueKey, err = read32(reader); err != nil {
		return nil, family, err
	}
	if out.RequiredSpend, err = readShieldedIcs20WithdrawalRequiredSpend(reader); err != nil {
		return nil, family, err
	}
	if out.OptionalSpend, err = readShieldedIcs20WithdrawalOptionalSpend(reader); err != nil {
		return nil, family, err
	}
	if out.ChangeOutput, err = readShieldedIcs20WithdrawalChange(reader); err != nil {
		return nil, family, err
	}
	if out.AKAffine, err = readPointAffine(reader); err != nil {
		return nil, family, err
	}
	if out.SenderDiversifiedGenerator, err = readPointAffine(reader); err != nil {
		return nil, family, err
	}
	if reader.Len() != 0 {
		return nil, family, fmt.Errorf("trailing bytes in shielded ICS-20 withdrawal witness: %d", reader.Len())
	}
	return out, family, nil
}

func readShieldedIcs20WithdrawalAssetLeaf(
	reader *bytes.Reader,
) (ShieldedIcs20WithdrawalAssetLeafWitnessV8Binary, error) {
	var out ShieldedIcs20WithdrawalAssetLeafWitnessV8Binary
	var err error
	if out.Value, err = read32(reader); err != nil {
		return out, err
	}
	if out.NextIndex, err = readU64(reader); err != nil {
		return out, err
	}
	if out.NextValue, err = read32(reader); err != nil {
		return out, err
	}
	if out.ParamsHash, err = read32(reader); err != nil {
		return out, err
	}
	if out.RingHash, err = read32(reader); err != nil {
		return out, err
	}
	return out, nil
}

func readShieldedIcs20WithdrawalRequiredSpend(reader *bytes.Reader) (ShieldedIcs20WithdrawalRequiredSpendWitnessV8Binary, error) {
	var out ShieldedIcs20WithdrawalRequiredSpendWitnessV8Binary
	var err error
	if out.Nullifier, err = read32(reader); err != nil {
		return out, err
	}
	if out.SpentNoteBlinding, err = read32(reader); err != nil {
		return out, err
	}
	if out.SpentNoteAmount, err = read32(reader); err != nil {
		return out, err
	}
	if out.StateCommitmentPosition, err = readU64(reader); err != nil {
		return out, err
	}
	if out.StateCommitmentAuthPath, err = readTriplePath(reader); err != nil {
		return out, err
	}
	if out.SpendAuthRandomizer, err = readFr32(reader); err != nil {
		return out, err
	}
	if out.RKAffine, err = readPointAffine(reader); err != nil {
		return out, err
	}
	return out, nil
}

func readShieldedIcs20WithdrawalOptionalSpend(reader *bytes.Reader) (ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary, error) {
	required, err := readShieldedIcs20WithdrawalRequiredSpend(reader)
	if err != nil {
		return ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary{}, err
	}
	isDummy, err := readBool(reader)
	if err != nil {
		return ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary{}, err
	}
	dummyNullifierSeed, err := read32(reader)
	if err != nil {
		return ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary{}, err
	}
	return ShieldedIcs20WithdrawalOptionalSpendWitnessV8Binary{
		ShieldedIcs20WithdrawalRequiredSpendWitnessV8Binary: required,
		IsDummy:            isDummy,
		DummyNullifierSeed: dummyNullifierSeed,
	}, nil
}

func readShieldedIcs20WithdrawalChange(reader *bytes.Reader) (ShieldedIcs20WithdrawalChangeWitnessV8Binary, error) {
	var out ShieldedIcs20WithdrawalChangeWitnessV8Binary
	var err error
	if out.NoteCommitment, err = read32(reader); err != nil {
		return out, err
	}
	if out.CreatedNoteBlinding, err = read32(reader); err != nil {
		return out, err
	}
	if out.CreatedNoteAmount, err = read32(reader); err != nil {
		return out, err
	}
	return out, nil
}
