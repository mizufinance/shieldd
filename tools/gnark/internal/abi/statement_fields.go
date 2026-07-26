package abi

import (
	"fmt"
	"math/big"

	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func bigIntToLE32(value *big.Int) ([32]byte, error) {
	var out [32]byte
	if value.Sign() < 0 {
		return out, fmt.Errorf("negative field value %s", value.String())
	}
	bytes := value.Bytes()
	if len(bytes) > len(out) {
		return out, fmt.Errorf("field value %s exceeds 32 bytes", value.String())
	}
	for i := range bytes {
		out[i] = bytes[len(bytes)-1-i]
	}
	return out, nil
}

func uint64ToLE32(value uint64) [32]byte {
	out, err := bigIntToLE32(new(big.Int).SetUint64(value))
	if err != nil {
		panic(err)
	}
	return out
}

func pointAffineToField(point PointAffineBinary) ([32]byte, error) {
	compressed, err := decafgnark.CompressToFieldNative(
		circuits.PointAffineToNative(pointAffineBinaryToStrings(point)),
	)
	if err != nil {
		return [32]byte{}, err
	}
	return bigIntToLE32(compressed)
}

func ensureFieldCount(label string, fields [][32]byte, expected int) error {
	if len(fields) != expected {
		return fmt.Errorf("expected %d %s statement fields, got %d", expected, label, len(fields))
	}
	return nil
}

// ReconstructedTransferStatementFieldsFromWitnessV1 mirrors the Go transfer
// circuit's statement-field order using decoded witness fields, not the stored
// StatementFields vector.
func ReconstructedTransferStatementFieldsFromWitnessV1(
	witness *TransferWitnessV1Binary,
) ([][32]byte, error) {
	expected := expectedTransferStatementFieldCount()
	fields := make([][32]byte, 0, expected)
	fields = append(fields, witness.Anchor)
	for _, output := range witness.Outputs {
		fields = append(fields, output.NoteCommitment)
	}
	balanceCommitment, err := pointAffineToField(witness.BalanceCommitmentAffine)
	if err != nil {
		return nil, fmt.Errorf("compress transfer balance commitment: %w", err)
	}
	fields = append(fields, balanceCommitment)
	for index, spend := range witness.Spends {
		fields = append(fields, spend.Nullifier)
		rk, err := pointAffineToField(spend.RKAffine)
		if err != nil {
			return nil, fmt.Errorf("compress transfer rk_%d: %w", index, err)
		}
		fields = append(fields, rk)
	}
	fields = append(fields, witness.AssetAnchor, witness.ComplianceAnchor)
	if len(witness.DetectionCiphertext) != compliance.TransferDetectionFQCount {
		return nil, fmt.Errorf(
			"expected %d transfer detection ciphertext elements, got %d",
			compliance.TransferDetectionFQCount,
			len(witness.DetectionCiphertext),
		)
	}
	fields = append(fields, witness.DetectionCiphertext...)

	appendTier := func(label string, tier TransferComplianceCiphertextWitnessV1Binary, expectedCiphertext int) error {
		if len(tier.Ciphertext) != expectedCiphertext {
			return fmt.Errorf(
				"expected %d %s ciphertext elements, got %d",
				expectedCiphertext,
				label,
				len(tier.Ciphertext),
			)
		}
		epk, err := pointAffineToField(tier.EPKAffine)
		if err != nil {
			return fmt.Errorf("compress %s epk: %w", label, err)
		}
		fields = append(fields, epk, tier.C2)
		fields = append(fields, tier.Ciphertext...)
		return nil
	}

	for _, tier := range []struct {
		label              string
		value              TransferComplianceCiphertextWitnessV1Binary
		expectedCiphertext int
	}{
		{"sender_core", witness.SenderCore, compliance.TransferCoreCiphertextFQCount},
		{"sender_ext", witness.SenderExt, compliance.TransferExtCiphertextFQCount},
		{"output_core", witness.OutputCore, compliance.TransferCoreCiphertextFQCount},
		{"output_ext", witness.OutputExt, compliance.TransferExtCiphertextFQCount},
	} {
		if err := appendTier(tier.label, tier.value, tier.expectedCiphertext); err != nil {
			return nil, err
		}
	}

	fields = append(fields, witness.TargetTimestamp)

	appendProof := func(label string, tier TransferComplianceCiphertextWitnessV1Binary) error {
		derivedPK, err := pointAffineToField(tier.DerivedPKAffine)
		if err != nil {
			return fmt.Errorf("compress %s derived_pk: %w", label, err)
		}
		encCmt, err := pointAffineToField(tier.EncCmtAffine)
		if err != nil {
			return fmt.Errorf("compress %s enc_cmt: %w", label, err)
		}
		sharedPoint, err := pointAffineToField(tier.SharedPointAffine)
		if err != nil {
			return fmt.Errorf("compress %s shared_point: %w", label, err)
		}
		fields = append(
			fields,
			tier.SubjectDerivation,
			tier.RingIDHash,
			tier.PolicyIDHash,
			tier.ResourceHash,
			tier.PermissionHash,
			uint64ToLE32(tier.Tier),
			tier.StatementTimestamp,
			tier.Salt,
			derivedPK,
			encCmt,
			sharedPoint,
			tier.Challenge,
			tier.Response,
		)
		return nil
	}

	for _, tier := range []struct {
		label string
		value TransferComplianceCiphertextWitnessV1Binary
	}{
		{"sender_core", witness.SenderCore},
		{"sender_ext", witness.SenderExt},
		{"output_core", witness.OutputCore},
		{"output_ext", witness.OutputExt},
	} {
		if err := appendProof(tier.label, tier.value); err != nil {
			return nil, err
		}
	}

	if err := ensureFieldCount("transfer", fields, expected); err != nil {
		return nil, err
	}
	return fields, nil
}

func appendNoteReshapeStatementFields(
	label string,
	fields [][32]byte,
	anchor [32]byte,
	balanceCommitmentAffine PointAffineBinary,
	spends []NoteReshapeSpendWitnessV1Binary,
	outputs []NoteReshapeOutputWitnessV1Binary,
	expected int,
) ([][32]byte, error) {
	fields = append(fields, anchor)
	for _, output := range outputs {
		fields = append(fields, output.NoteCommitment)
	}
	balanceCommitment, err := pointAffineToField(balanceCommitmentAffine)
	if err != nil {
		return nil, fmt.Errorf("compress %s balance commitment: %w", label, err)
	}
	fields = append(fields, balanceCommitment)
	for index, spend := range spends {
		fields = append(fields, spend.Nullifier)
		rk, err := pointAffineToField(spend.RKAffine)
		if err != nil {
			return nil, fmt.Errorf("compress %s rk_%d: %w", label, index, err)
		}
		fields = append(fields, rk)
	}
	if err := ensureFieldCount(label, fields, expected); err != nil {
		return nil, err
	}
	return fields, nil
}

// ReconstructedNoteReshapeStatementFieldsFromWitnessV1 mirrors the unified
// note-reshape circuit's statement-field order using decoded witness fields.
func ReconstructedNoteReshapeStatementFieldsFromWitnessV1(
	witness *NoteReshapeWitnessV1Binary,
) ([][32]byte, error) {
	expected := primitives.NoteReshapeStatementFieldCount(int(witness.NIn), int(witness.NOut))
	fields, err := appendNoteReshapeStatementFields(
		"note reshape",
		make([][32]byte, 0, expected),
		witness.Anchor,
		witness.BalanceCommitmentAffine,
		witness.Spends,
		witness.Outputs,
		expected,
	)
	if err != nil {
		return nil, err
	}
	if err := ensureFieldCount("note reshape", fields, expected); err != nil {
		return nil, err
	}
	return fields, nil
}

// ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV1 mirrors the
// Go shielded ICS-20 withdrawal circuit's statement-field order using decoded
// witness fields.
func ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV1(
	witness *ShieldedIcs20WithdrawalWitnessV1Binary,
) ([][32]byte, error) {
	expected := primitives.ShieldedIcs20WithdrawalStatementFieldCount(int(witness.NIn))
	fields := make([][32]byte, 0, expected)
	fields = append(fields, witness.Anchor, witness.ChangeOutput.NoteCommitment)
	balanceCommitment, err := pointAffineToField(witness.BalanceCommitmentAffine)
	if err != nil {
		return nil, fmt.Errorf("compress shielded ICS-20 withdrawal balance commitment: %w", err)
	}
	fields = append(fields, balanceCommitment)
	for index, spend := range witness.Spends {
		fields = append(fields, spend.Nullifier)
		rk, err := pointAffineToField(spend.RKAffine)
		if err != nil {
			return nil, fmt.Errorf("compress shielded ICS-20 withdrawal rk_%d: %w", index, err)
		}
		fields = append(fields, rk)
	}
	fields = append(
		fields,
		witness.AssetAnchor,
		witness.ComplianceAnchor,
		witness.TargetTimestamp,
		witness.OutboundAssetID,
		witness.OutboundAmount,
		witness.WithdrawalEffectHashLo,
		witness.WithdrawalEffectHashHi,
	)
	if err := ensureFieldCount("shielded ICS-20 withdrawal", fields, expected); err != nil {
		return nil, err
	}
	return fields, nil
}
