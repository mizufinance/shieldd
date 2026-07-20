package abi

import (
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
)

type witnessFamily struct {
	name    string
	payload func(t *testing.T) []byte
	decode  func([]byte) error
}

func testWitnessFamilies() []witnessFamily {
	return []witnessFamily{
		{
			name:    "transfer",
			payload: func(t *testing.T) []byte { return testfixtures.LoadTransferWitnessV1("transfer") },
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV1(payload)
				return err
			},
		},
		{
			name: "shielded_ics20_withdrawal",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadShieldedIcs20WithdrawalWitnessV1("shielded_ics20_withdrawal")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeShieldedIcs20WithdrawalWitnessV1(payload)
				return err
			},
		},
		{
			name: "note_reshape2x1",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadNoteReshapeWitnessV1("note_reshape2x1")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeNoteReshapeWitnessV1(payload)
				return err
			},
		},
		{
			name: "note_reshape1x8",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadNoteReshapeWitnessV1("note_reshape1x8")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeNoteReshapeWitnessV1(payload)
				return err
			},
		},
	}
}

func TestWitnessFamiliesDecode(t *testing.T) {
	for _, family := range testWitnessFamilies() {
		t.Run(family.name, func(t *testing.T) {
			if err := family.decode(family.payload(t)); err != nil {
				t.Fatalf("decode %s witness: %v", family.name, err)
			}
		})
	}
}

func TestWitnessFamiliesRejectBadHeader(t *testing.T) {
	for _, family := range testWitnessFamilies() {
		t.Run(family.name, func(t *testing.T) {
			payload := append([]byte(nil), family.payload(t)...)
			payload[0] ^= 0xff
			if err := family.decode(payload); err == nil {
				t.Fatalf("expected %s witness to reject mutated header", family.name)
			}
		})
	}
}

func TestWitnessFamiliesRejectTruncatedPayload(t *testing.T) {
	for _, family := range testWitnessFamilies() {
		t.Run(family.name, func(t *testing.T) {
			payload := append([]byte(nil), family.payload(t)...)
			payload = payload[:len(payload)-1]
			if err := family.decode(payload); err == nil {
				t.Fatalf("expected %s witness to reject truncated payload", family.name)
			}
		})
	}
}

func TestNoteReshapeWitnessPaddingABI(t *testing.T) {
	fixedPayload := testfixtures.LoadNoteReshapeWitnessV1("note_reshape2x1")
	fixed, fixedFamily, err := DecodeNoteReshapeWitnessV1(fixedPayload)
	if err != nil {
		t.Fatalf("decode fixed-family witness: %v", err)
	}
	if fixedFamily.InputPadding != generated.InputPaddingFixed {
		t.Fatalf("2x1 input policy: got %v", fixedFamily.InputPadding)
	}
	for index, spend := range fixed.Spends {
		if spend.IsDummy || spend.DummyNullifierSeed != [32]byte{} || spend.DummySpendAuthKey != [32]byte{} {
			t.Fatalf("fixed input %d carries synthetic-padding ABI data", index)
		}
	}

	syntheticPayload := testfixtures.LoadNoteReshapeWitnessV1("note_reshape4x1")
	synthetic, syntheticFamily, err := DecodeNoteReshapeWitnessV1(syntheticPayload)
	if err != nil {
		t.Fatalf("decode synthetic-family witness: %v", err)
	}
	if syntheticFamily.InputPadding != generated.InputPaddingSyntheticPrivate {
		t.Fatalf("4x1 input policy: got %v", syntheticFamily.InputPadding)
	}
	if !synthetic.Spends[len(synthetic.Spends)-1].IsDummy {
		t.Fatal("4x1 fixture must carry a private dummy selector")
	}

	flagOffset := 24 + 3*32 + 4 +
		primitives.NoteReshapeStatementFieldCount(syntheticFamily.NIn, syntheticFamily.NOut)*32 + 3*32
	malformed := append([]byte(nil), syntheticPayload...)
	malformed[flagOffset] = 2
	if _, _, err := DecodeNoteReshapeWitnessV1(malformed); err == nil {
		t.Fatal("synthetic-family witness must reject a non-boolean private padding flag")
	}
}
