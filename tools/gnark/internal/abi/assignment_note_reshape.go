package abi

import (
	"fmt"

	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func NewNoteReshapeCircuitAssignmentFromWitnessV1(payload []byte) (*circuits.NoteReshapeCircuit, generated.NoteReshapeFamilySpec, error) {
	witness, family, err := DecodeNoteReshapeWitnessV1(payload)
	if err != nil {
		return nil, generated.NoteReshapeFamilySpec{}, fmt.Errorf("decode NoteReshapeWitnessV1: %w", err)
	}
	if len(witness.StatementFields) != expectedNoteReshapeStatementFieldCount(family.NIn, family.NOut) {
		return nil, generated.NoteReshapeFamilySpec{}, fmt.Errorf("expected %d note reshape statement fields, got %d", expectedNoteReshapeStatementFieldCount(family.NIn, family.NOut), len(witness.StatementFields))
	}
	if len(witness.Spends) != family.NIn || len(witness.Outputs) != family.NOut {
		return nil, generated.NoteReshapeFamilySpec{}, fmt.Errorf("note reshape witness counts mismatch: spends=%d outputs=%d expected=%dx%d", len(witness.Spends), len(witness.Outputs), family.NIn, family.NOut)
	}
	auth, err := newNoteReshapeAuthSharedFields(witness.NK, witness.AK, witness.AKAffine)
	if err != nil {
		return nil, generated.NoteReshapeFamilySpec{}, err
	}
	assignment := circuits.NewNoteReshapeCircuit(family.Label, family.NIn, family.NOut)
	assignment.ClaimedStatementHash = fqString(witness.ClaimedStatementHash)
	assignment.Anchor = fqString(witness.Anchor)
	assignment.BalanceCommitment = point2DString(witness.BalanceCommitmentAffine)
	assignment.ActionBalanceBlinding = fqString(witness.ActionBalanceBlinding)
	assignment.Auth = auth
	for i := range witness.Spends {
		spend, err := newNoteReshapeSpendCircuitFields(&witness.Spends[i])
		if err != nil {
			return nil, generated.NoteReshapeFamilySpec{}, err
		}
		if family.InputPadding == generated.InputPaddingSyntheticPrivate {
			assignment.SyntheticSpends[i] = circuits.NoteReshapeSyntheticSpendCircuitFields{
				NoteReshapeSpendCircuitFields: spend,
				IsDummy:                       boolVariable(witness.Spends[i].IsDummy),
				DummyNullifierSeed:            fqString(witness.Spends[i].DummyNullifierSeed),
				DummySpendAuthKey:             fqString(witness.Spends[i].DummySpendAuthKey),
			}
		} else {
			assignment.Spends[i] = spend
		}
	}
	for i := range witness.Outputs {
		assignment.Outputs[i] = newNoteReshapeOutputCircuitFields(&witness.Outputs[i])
	}
	return assignment, family, nil
}

func expectedNoteReshapeStatementFieldCount(nIn, nOut int) int {
	return primitives.NoteReshapeStatementFieldCount(nIn, nOut)
}

func newNoteReshapeAuthSharedFields(nk [32]byte, akCompressed [32]byte, akAffine PointAffineBinary) (circuits.TransferAuthSharedFields, error) {
	ivkReduced, quotientA, err := incomingViewingKeyReductionFromBinary(nk, akCompressed)
	if err != nil {
		return circuits.TransferAuthSharedFields{}, fmt.Errorf("compute note reshape ivk reduction from binary witness: %w", err)
	}
	return circuits.TransferAuthSharedFields{
		AK:           point2DString(akAffine),
		NK:           primitives.LittleEndianBytesToBigInt(nk[:]).String(),
		IVKReduced:   ivkReduced.String(),
		IVKQuotientA: quotientA,
	}, nil
}

func newNoteReshapeSpendCircuitFields(witness *NoteReshapeSpendWitnessV1Binary) (circuits.NoteReshapeSpendCircuitFields, error) {
	statePath, err := statePathFromBinary(witness.StateCommitmentAuthPath)
	if err != nil {
		return circuits.NoteReshapeSpendCircuitFields{}, fmt.Errorf("decode note reshape spend state commitment auth path: %w", err)
	}
	return circuits.NoteReshapeSpendCircuitFields{
		Nullifier: fqString(witness.Nullifier),
		RK:        point2DString(witness.RKAffine),
		Note: noteFields(
			fqString(witness.SpentNoteBlinding), fqString(witness.SpentNoteAmount), fqString(witness.SpentNoteAssetID),
			fqString(witness.SpentDivGenAffine.X), fqString(witness.SpentDivGenAffine.Y), fqString(witness.SpentTransmissionKey),
			fqString(witness.SpentTransmissionAffine.X), fqString(witness.SpentTransmissionAffine.Y),
		),
		StateProof:     circuits.StateCommitmentFields{Commitment: fqString(witness.StateCommitmentCommitment), Position: witness.StateCommitmentPosition, Path: statePath},
		AuthRandomizer: fqString(witness.SpendAuthRandomizer),
	}, nil
}

func newNoteReshapeOutputCircuitFields(witness *NoteReshapeOutputWitnessV1Binary) circuits.NoteReshapeOutputCircuitFields {
	return circuits.NoteReshapeOutputCircuitFields{
		NoteCommitment: fqString(witness.NoteCommitment),
		Note: noteFields(
			fqString(witness.CreatedNoteBlinding), fqString(witness.CreatedNoteAmount), fqString(witness.CreatedNoteAssetID),
			fqString(witness.CreatedDivGenAffine.X), fqString(witness.CreatedDivGenAffine.Y), fqString(witness.CreatedTransmissionKey),
			fqString(witness.CreatedTransmissionAffine.X), fqString(witness.CreatedTransmissionAffine.Y),
		),
	}
}

func boolVariable(value bool) string {
	if value {
		return "1"
	}
	return "0"
}
