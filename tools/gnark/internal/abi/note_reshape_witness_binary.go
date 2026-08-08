package abi

import (
	"bytes"
	"fmt"

	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

const (
	noteReshapeWitnessV1Magic = "PNWG"
	noteReshapeWitnessVersion = 2
	maxNoteReshapeItems       = 8
)

type NoteReshapeSpendWitnessV1Binary struct {
	IsDummy                   bool
	Nullifier                 [32]byte
	DummyNullifierSeed        [32]byte
	DummySpendAuthKey         [32]byte
	SpentNoteBlinding         [32]byte
	SpentNoteAmount           [32]byte
	SpentNoteAssetID          [32]byte
	SpentTransmissionKey      [32]byte
	StateCommitmentCommitment [32]byte
	StateCommitmentPosition   uint64
	StateCommitmentAuthPath   [][3][32]byte
	SpendAuthRandomizer       [32]byte
	RKAffine                  PointAffineBinary
	SpentDivGenAffine         PointAffineBinary
	SpentTransmissionAffine   PointAffineBinary
}

type NoteReshapeOutputWitnessV1Binary struct {
	NoteCommitment            [32]byte
	CreatedNoteBlinding       [32]byte
	CreatedNoteAmount         [32]byte
	CreatedNoteAssetID        [32]byte
	CreatedTransmissionKey    [32]byte
	CreatedDivGenAffine       PointAffineBinary
	CreatedTransmissionAffine PointAffineBinary
}

type NoteReshapeWitnessV1Binary struct {
	TotalLength             uint32
	FamilyID                uint32
	NIn                     uint32
	NOut                    uint32
	Anchor                  [32]byte
	BalanceCommitment       [32]byte
	ClaimedStatementHash    [32]byte
	StatementFields         [][32]byte
	ActionBalanceBlinding   [32]byte
	AK                      [32]byte
	NK                      [32]byte
	Spends                  []NoteReshapeSpendWitnessV1Binary
	Outputs                 []NoteReshapeOutputWitnessV1Binary
	BalanceCommitmentAffine PointAffineBinary
	AKAffine                PointAffineBinary
}

func DecodeNoteReshapeWitnessV1(payload []byte) (*NoteReshapeWitnessV1Binary, generated.NoteReshapeFamilySpec, error) {
	witness, err := decodeNoteReshapeWitnessV1(payload)
	if err != nil {
		return nil, generated.NoteReshapeFamilySpec{}, err
	}
	family, ok := generated.NoteReshapeFamilyByID(witness.FamilyID)
	if !ok {
		return nil, generated.NoteReshapeFamilySpec{}, fmt.Errorf("unknown note reshape family id %d", witness.FamilyID)
	}
	if int(witness.NIn) != family.NIn || int(witness.NOut) != family.NOut {
		return nil, generated.NoteReshapeFamilySpec{}, fmt.Errorf("note reshape witness shape mismatch: got %dx%d, expected %dx%d", witness.NIn, witness.NOut, family.NIn, family.NOut)
	}
	return witness, family, nil
}

func decodeNoteReshapeWitnessV1(payload []byte) (*NoteReshapeWitnessV1Binary, error) {
	reader := bytes.NewReader(payload)
	magic, err := readExact(reader, 4)
	if err != nil {
		return nil, err
	}
	if string(magic) != noteReshapeWitnessV1Magic {
		return nil, fmt.Errorf("invalid note reshape witness magic %q", string(magic))
	}
	version, err := readU32(reader)
	if err != nil {
		return nil, err
	}
	if version != noteReshapeWitnessVersion {
		return nil, fmt.Errorf("unsupported note reshape witness version %d", version)
	}
	totalLength, err := readU32(reader)
	if err != nil {
		return nil, err
	}
	if totalLength != uint32(len(payload)) {
		return nil, fmt.Errorf("payload length mismatch: header=%d actual=%d", totalLength, len(payload))
	}
	witness := &NoteReshapeWitnessV1Binary{TotalLength: totalLength}
	if witness.FamilyID, err = readU32(reader); err != nil {
		return nil, err
	}
	if witness.NIn, err = readU32(reader); err != nil {
		return nil, err
	}
	if witness.NOut, err = readU32(reader); err != nil {
		return nil, err
	}
	family, ok := generated.NoteReshapeFamilyByID(witness.FamilyID)
	if !ok {
		return nil, fmt.Errorf("unknown note reshape family id %d", witness.FamilyID)
	}
	if witness.Anchor, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.BalanceCommitment, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.ClaimedStatementHash, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.StatementFields, err = readVec32(reader); err != nil {
		return nil, err
	}
	if witness.ActionBalanceBlinding, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.AK, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.NK, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.NIn > maxNoteReshapeItems || witness.NOut > maxNoteReshapeItems {
		return nil, fmt.Errorf("note reshape witness exceeds maximum item count")
	}
	witness.Spends = make([]NoteReshapeSpendWitnessV1Binary, witness.NIn)
	for i := range witness.Spends {
		if witness.Spends[i], err = readNoteReshapeSpend(reader, family.InputPadding == generated.InputPaddingSyntheticPrivate); err != nil {
			return nil, err
		}
	}
	witness.Outputs = make([]NoteReshapeOutputWitnessV1Binary, witness.NOut)
	for i := range witness.Outputs {
		if witness.Outputs[i], err = readNoteReshapeOutput(reader); err != nil {
			return nil, err
		}
	}
	if witness.BalanceCommitmentAffine, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.AKAffine, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if reader.Len() != 0 {
		return nil, fmt.Errorf("trailing bytes in note reshape witness: %d", reader.Len())
	}
	return witness, nil
}

func readNoteReshapeSpend(reader *bytes.Reader, syntheticPrivatePadding bool) (NoteReshapeSpendWitnessV1Binary, error) {
	var out NoteReshapeSpendWitnessV1Binary
	var err error
	if syntheticPrivatePadding {
		flag, readErr := readU32(reader)
		if readErr != nil {
			return out, readErr
		}
		if flag > 1 {
			return out, fmt.Errorf("invalid note reshape input dummy flag %d", flag)
		}
		out.IsDummy = flag == 1
		if out.DummyNullifierSeed, err = read32(reader); err != nil {
			return out, err
		}
		if out.DummySpendAuthKey, err = read32(reader); err != nil {
			return out, err
		}
	}
	if out.Nullifier, err = read32(reader); err != nil {
		return out, err
	}
	if out.SpentNoteBlinding, err = read32(reader); err != nil {
		return out, err
	}
	if out.SpentNoteAmount, err = read32(reader); err != nil {
		return out, err
	}
	if out.SpentNoteAssetID, err = read32(reader); err != nil {
		return out, err
	}
	if out.SpentTransmissionKey, err = read32(reader); err != nil {
		return out, err
	}
	if out.StateCommitmentCommitment, err = read32(reader); err != nil {
		return out, err
	}
	if out.StateCommitmentPosition, err = readU64(reader); err != nil {
		return out, err
	}
	if out.StateCommitmentAuthPath, err = readTriplePath(reader); err != nil {
		return out, err
	}
	if out.SpendAuthRandomizer, err = read32(reader); err != nil {
		return out, err
	}
	if out.RKAffine, err = readPointAffine(reader); err != nil {
		return out, err
	}
	if out.SpentDivGenAffine, err = readPointAffine(reader); err != nil {
		return out, err
	}
	if out.SpentTransmissionAffine, err = readPointAffine(reader); err != nil {
		return out, err
	}
	return out, nil
}

func readNoteReshapeOutput(reader *bytes.Reader) (NoteReshapeOutputWitnessV1Binary, error) {
	var out NoteReshapeOutputWitnessV1Binary
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
	if out.CreatedNoteAssetID, err = read32(reader); err != nil {
		return out, err
	}
	if out.CreatedTransmissionKey, err = read32(reader); err != nil {
		return out, err
	}
	if out.CreatedDivGenAffine, err = readPointAffine(reader); err != nil {
		return out, err
	}
	if out.CreatedTransmissionAffine, err = readPointAffine(reader); err != nil {
		return out, err
	}
	return out, nil
}
