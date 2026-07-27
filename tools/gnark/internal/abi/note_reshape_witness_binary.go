package abi

import (
	"bytes"
	"fmt"

	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
)

const (
	noteReshapeWitnessMagic   = "PNWG"
	noteReshapeWitnessVersion = 2
	maxNoteReshapeItems       = 8
)

type NoteReshapeSpendWitnessV2Binary struct {
	IsDummy                   bool
	Nullifier                 [32]byte
	DummyNullifierSeed        [32]byte
	SpentNoteBlinding         [32]byte
	SpentNoteAmount           [32]byte
	StateCommitmentCommitment [32]byte
	StateCommitmentPosition   uint64
	StateCommitmentAuthPath   [][3][32]byte
	SpendAuthRandomizer       [32]byte
	RKAffine                  PointAffineBinary
}

type NoteReshapeOutputWitnessV2Binary struct {
	NoteCommitment      [32]byte
	CreatedNoteBlinding [32]byte
	CreatedNoteAmount   [32]byte
}

type NoteReshapeSharedNoteContextWitnessV2Binary struct {
	AssetID [32]byte
	ClueKey [32]byte
	DivGen  PointAffineBinary
}

type NoteReshapeWitnessV2Binary struct {
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
	Shared                  NoteReshapeSharedNoteContextWitnessV2Binary
	Spends                  []NoteReshapeSpendWitnessV2Binary
	Outputs                 []NoteReshapeOutputWitnessV2Binary
	BalanceCommitmentAffine PointAffineBinary
	AKAffine                PointAffineBinary
}

func DecodeNoteReshapeWitnessV2(payload []byte) (*NoteReshapeWitnessV2Binary, generated.NoteReshapeFamilySpec, error) {
	witness, err := decodeNoteReshapeWitnessV2(payload)
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

func decodeNoteReshapeWitnessV2(payload []byte) (*NoteReshapeWitnessV2Binary, error) {
	reader := bytes.NewReader(payload)
	magic, err := readExact(reader, 4)
	if err != nil {
		return nil, err
	}
	if string(magic) != noteReshapeWitnessMagic {
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
	witness := &NoteReshapeWitnessV2Binary{TotalLength: totalLength}
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
	if witness.Shared.AssetID, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.Shared.ClueKey, err = read32(reader); err != nil {
		return nil, err
	}
	if witness.Shared.DivGen, err = readPointAffine(reader); err != nil {
		return nil, err
	}
	if witness.NIn > maxNoteReshapeItems || witness.NOut > maxNoteReshapeItems {
		return nil, fmt.Errorf("note reshape witness exceeds maximum item count")
	}
	witness.Spends = make([]NoteReshapeSpendWitnessV2Binary, witness.NIn)
	for i := range witness.Spends {
		if witness.Spends[i], err = readNoteReshapeSpend(reader, family.InputPadding == generated.InputPaddingSyntheticPrivate); err != nil {
			return nil, err
		}
	}
	witness.Outputs = make([]NoteReshapeOutputWitnessV2Binary, witness.NOut)
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

func readNoteReshapeSpend(reader *bytes.Reader, syntheticPrivatePadding bool) (NoteReshapeSpendWitnessV2Binary, error) {
	var out NoteReshapeSpendWitnessV2Binary
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
	return out, nil
}

func readNoteReshapeOutput(reader *bytes.Reader) (NoteReshapeOutputWitnessV2Binary, error) {
	var out NoteReshapeOutputWitnessV2Binary
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
