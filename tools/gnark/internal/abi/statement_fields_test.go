package abi

import (
	"bytes"
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

func assertStatementFieldsMatch(t *testing.T, label string, reconstructed, rust [][32]byte) {
	t.Helper()
	if len(reconstructed) != len(rust) {
		t.Fatalf("%s field count mismatch: reconstructed=%d rust=%d", label, len(reconstructed), len(rust))
	}
	for i := range reconstructed {
		if !bytes.Equal(reconstructed[i][:], rust[i][:]) {
			t.Fatalf("%s field %d mismatch:\nreconstructed=%x\nrust=%x", label, i, reconstructed[i], rust[i])
		}
	}
}

func TestRustGoStatementFieldDifferential(t *testing.T) {
	t.Run("transfer", func(t *testing.T) {
		witness, _, err := DecodeTransferWitnessV1(testfixtures.LoadTransferWitnessV1("transfer"))
		if err != nil {
			t.Fatalf("decode transfer witness: %v", err)
		}
		reconstructed, err := ReconstructedTransferStatementFieldsFromWitnessV1(witness)
		if err != nil {
			t.Fatalf("reconstruct transfer statement fields: %v", err)
		}
		assertStatementFieldsMatch(t, "transfer", reconstructed, witness.StatementFields)
	})

	t.Run("shielded_ics20_withdrawal", func(t *testing.T) {
		witness, _, err := DecodeShieldedIcs20WithdrawalWitnessV1(
			testfixtures.LoadShieldedIcs20WithdrawalWitnessV1("shielded_ics20_withdrawal"),
		)
		if err != nil {
			t.Fatalf("decode shielded ICS-20 withdrawal witness: %v", err)
		}
		reconstructed, err := ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV1(witness)
		if err != nil {
			t.Fatalf("reconstruct shielded ICS-20 withdrawal statement fields: %v", err)
		}
		assertStatementFieldsMatch(t, "shielded_ics20_withdrawal", reconstructed, witness.StatementFields)
	})

	for _, tc := range []struct {
		name  string
		label string
	}{
		{name: "note_reshape2x1", label: "note_reshape2x1"},
		{name: "note_reshape1x8", label: "note_reshape1x8"},
		{name: "note_reshape4x1", label: "note_reshape4x1"},
		{name: "note_reshape8x1", label: "note_reshape8x1"},
	} {
		t.Run(tc.name, func(t *testing.T) {
			witness, _, err := DecodeNoteReshapeWitnessV2(
				testfixtures.LoadNoteReshapeWitnessV2(tc.label),
			)
			if err != nil {
				t.Fatalf("decode note reshape witness: %v", err)
			}
			reconstructed, err := ReconstructedNoteReshapeStatementFieldsFromWitnessV2(witness)
			if err != nil {
				t.Fatalf("reconstruct note reshape statement fields: %v", err)
			}
			assertStatementFieldsMatch(t, tc.name, reconstructed, witness.StatementFields)
		})
	}
}

func TestRustGoStatementFieldDifferentialDoesNotTrustStoredVector(t *testing.T) {
	witness, _, err := DecodeTransferWitnessV1(testfixtures.LoadTransferWitnessV1("transfer"))
	if err != nil {
		t.Fatalf("decode transfer witness: %v", err)
	}
	reconstructed, err := ReconstructedTransferStatementFieldsFromWitnessV1(witness)
	if err != nil {
		t.Fatalf("reconstruct transfer statement fields: %v", err)
	}
	assertStatementFieldsMatch(t, "transfer", reconstructed, witness.StatementFields)

	witness.StatementFields[0][0] ^= 1
	if bytes.Equal(reconstructed[0][:], witness.StatementFields[0][:]) {
		t.Fatalf("stored statement field mutation was not detected")
	}
}
