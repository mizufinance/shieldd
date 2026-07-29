package abi

import (
	"math/big"
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

func TestRustGoStatementFieldDifferential(t *testing.T) {
	t.Run("transfer", func(t *testing.T) {
		witness, _, err := DecodeTransferWitnessV11(testfixtures.LoadTransferWitnessV11("transfer"))
		if err != nil {
			t.Fatalf("decode transfer witness: %v", err)
		}
		reconstructed, err := ReconstructedTransferStatementFieldsFromWitnessV11(witness)
		if err != nil {
			t.Fatalf("reconstruct transfer statement fields: %v", err)
		}
		nativeFields := make([]*big.Int, len(reconstructed))
		for i, field := range reconstructed {
			nativeFields[i] = primitives.LittleEndianBytesToBigInt(field[:])
		}
		hash, err := primitives.TransferStatementHashNativeForShape(nativeFields, 2, 2)
		if err != nil {
			t.Fatalf("hash reconstructed transfer statement fields: %v", err)
		}
		claimed := primitives.LittleEndianBytesToBigInt(witness.ClaimedStatementHash[:])
		if hash.Cmp(claimed) != 0 {
			t.Fatalf("transfer reconstructed statement hash mismatch:\ngot=%s\nwant=%s", hash, claimed)
		}
	})

	t.Run("shielded_ics20_withdrawal", func(t *testing.T) {
		witness, _, err := DecodeShieldedIcs20WithdrawalWitnessV6(
			testfixtures.LoadShieldedIcs20WithdrawalWitnessV6("shielded_ics20_withdrawal"),
		)
		if err != nil {
			t.Fatalf("decode shielded ICS-20 withdrawal witness: %v", err)
		}
		reconstructed, err := ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV6(witness)
		if err != nil {
			t.Fatalf("reconstruct shielded ICS-20 withdrawal statement fields: %v", err)
		}
		nativeFields := make([]*big.Int, len(reconstructed))
		for i, field := range reconstructed {
			nativeFields[i] = primitives.LittleEndianBytesToBigInt(field[:])
		}
		hash, err := primitives.ShieldedIcs20WithdrawalStatementHashNativeForShape(
			nativeFields,
			int(witness.NIn),
		)
		if err != nil {
			t.Fatalf("hash reconstructed shielded ICS-20 withdrawal statement fields: %v", err)
		}
		claimed := primitives.LittleEndianBytesToBigInt(witness.ClaimedStatementHash[:])
		if hash.Cmp(claimed) != 0 {
			t.Fatalf(
				"shielded ICS-20 withdrawal reconstructed statement hash mismatch:\ngot=%s\nwant=%s",
				hash,
				claimed,
			)
		}
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
			witness, _, err := DecodeNoteReshapeWitnessV3(
				testfixtures.LoadNoteReshapeWitnessV3(tc.label),
			)
			if err != nil {
				t.Fatalf("decode note reshape witness: %v", err)
			}
			reconstructed, err := ReconstructedNoteReshapeStatementFieldsFromWitnessV3(witness)
			if err != nil {
				t.Fatalf("reconstruct note reshape statement fields: %v", err)
			}
			nativeFields := make([]*big.Int, len(reconstructed))
			for i, field := range reconstructed {
				nativeFields[i] = primitives.LittleEndianBytesToBigInt(field[:])
			}
			hash, err := primitives.NoteReshapeStatementHashNativeForShape(
				nativeFields,
				tc.label,
				int(witness.NIn),
				int(witness.NOut),
			)
			if err != nil {
				t.Fatalf("hash reconstructed note reshape statement fields: %v", err)
			}
			claimed := primitives.LittleEndianBytesToBigInt(witness.ClaimedStatementHash[:])
			if hash.Cmp(claimed) != 0 {
				t.Fatalf("%s reconstructed statement hash mismatch:\ngot=%s\nwant=%s", tc.name, hash, claimed)
			}
		})
	}
}
