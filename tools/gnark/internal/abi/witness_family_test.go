package abi

import (
	"encoding/binary"
	"testing"

	decaf377 "github.com/mizufinance/decaf377-go"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
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
			payload: func(t *testing.T) []byte { return testfixtures.LoadTransferWitnessV16("transfer") },
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV16(payload)
				return err
			},
		},
		{
			name: "transfer_flagged",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadTransferWitnessV16("transfer_flagged")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV16(payload)
				return err
			},
		},
		{
			name: "transfer_unregulated",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadTransferWitnessV16("transfer_unregulated")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV16(payload)
				return err
			},
		},
		{
			name: "shielded_ics20_withdrawal",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadShieldedIcs20WithdrawalWitnessV8("shielded_ics20_withdrawal")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(payload)
				return err
			},
		},
		{
			name: "shielded_ics20_withdrawal_unregulated",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadShieldedIcs20WithdrawalWitnessV8(
					"shielded_ics20_withdrawal_unregulated",
				)
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(payload)
				return err
			},
		},
		{
			name: "note_reshape8x1",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadNoteReshapeWitnessV3("note_reshape8x1")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeNoteReshapeWitnessV3(payload)
				return err
			},
		},
		{
			name: "note_reshape1x8",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadNoteReshapeWitnessV3("note_reshape1x8")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeNoteReshapeWitnessV3(payload)
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

func TestShieldedIcs20WithdrawalV8FixtureBranchMatrix(t *testing.T) {
	for _, tc := range []struct {
		label       string
		isRegulated bool
		isDummy     bool
	}{
		{
			label:       "shielded_ics20_withdrawal",
			isRegulated: true,
			isDummy:     false,
		},
		{
			label:       "shielded_ics20_withdrawal_unregulated",
			isRegulated: false,
			isDummy:     true,
		},
	} {
		t.Run(tc.label, func(t *testing.T) {
			witness, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(
				testfixtures.LoadShieldedIcs20WithdrawalWitnessV8(tc.label),
			)
			if err != nil {
				t.Fatalf("decode branch fixture: %v", err)
			}
			if witness.IsRegulated != tc.isRegulated {
				t.Fatalf("is_regulated=%v, want %v", witness.IsRegulated, tc.isRegulated)
			}
			if witness.OptionalSpend.IsDummy != tc.isDummy {
				t.Fatalf("optional is_dummy=%v, want %v", witness.OptionalSpend.IsDummy, tc.isDummy)
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

func TestNoteReshapeV3RejectsLegacyVersion(t *testing.T) {
	payload := testfixtures.LoadNoteReshapeWitnessV3("note_reshape8x1")
	binary.LittleEndian.PutUint32(payload[4:8], 2)
	if _, _, err := DecodeNoteReshapeWitnessV3(payload); err == nil {
		t.Fatal("V3 decoder must reject the obsolete V2 layout")
	}
}

func TestTransferV16RejectsLegacyVersion(t *testing.T) {
	payload := testfixtures.LoadTransferWitnessV16("transfer")
	binary.LittleEndian.PutUint32(payload[4:8], 15)
	if _, _, err := DecodeTransferWitnessV16(payload); err == nil {
		t.Fatal("V16 decoder must reject the obsolete V15 layout")
	}
}

func TestTransferV16AssignmentRejectsClaimedHashMismatch(t *testing.T) {
	payload := testfixtures.LoadTransferWitnessV16("transfer")
	const claimedStatementHashOffset = 12 + 4*32
	payload[claimedStatementHashOffset] ^= 1
	if _, _, err := NewTransferCircuitAssignmentFromWitnessV16(payload); err == nil {
		t.Fatal("V16 assignment must reject a claimed hash that disagrees with reconstructed fields")
	}
}

func TestTransferV16AssignmentRejectsSerializedSemanticMutation(t *testing.T) {
	payload := testfixtures.LoadTransferWitnessV16("transfer")
	const anchorOffset = 12
	payload[anchorOffset] ^= 1
	if _, _, err := NewTransferCircuitAssignmentFromWitnessV16(payload); err == nil {
		t.Fatal("V16 assignment must reject a serialized anchor mutation against the claimed hash")
	}
}

func TestShieldedIcs20WithdrawalV8RejectsLegacyVersion(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV8("shielded_ics20_withdrawal")
	binary.LittleEndian.PutUint32(payload[4:8], 7)
	if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(payload); err == nil {
		t.Fatal("V8 decoder must reject the obsolete V7 layout")
	}
}

func TestShieldedIcs20WithdrawalV8AssignmentRejectsClaimedHashMismatch(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV8("shielded_ics20_withdrawal")
	const claimedStatementHashOffset = 20 + 6*32 + 4*32
	payload[claimedStatementHashOffset] ^= 1
	if _, _, err := NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV8(payload); err == nil {
		t.Fatal("V8 assignment must reject a claimed hash that disagrees with reconstructed fields")
	}
}

func TestShieldedIcs20WithdrawalV8RejectsOversizedEffectHashLimb(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV8("shielded_ics20_withdrawal")
	const effectHashLimbsOffset = 20 + 6*32
	payload[effectHashLimbsOffset+16] = 1
	if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(payload); err == nil {
		t.Fatal("V8 decoder must reject effect-hash limbs wider than 128 bits")
	}
}

func TestShieldedIcs20WithdrawalV8RejectsNonCanonicalBalanceBlinding(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV8("shielded_ics20_withdrawal")
	const actionBalanceBlindingOffset = 20 + 6*32 + 4*32 + 32
	modulus, err := bigIntToLE32(decaf377.ScalarOrder())
	if err != nil {
		t.Fatalf("encode Decaf377 scalar modulus: %v", err)
	}
	copy(payload[actionBalanceBlindingOffset:], modulus[:])
	if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(payload); err == nil {
		t.Fatal("V8 decoder must reject a non-canonical action balance blinding")
	}
}

func TestShieldedIcs20WithdrawalV8RejectsNonCanonicalBooleanFlags(t *testing.T) {
	const (
		headerBytes            = 20
		topFieldsThroughNK     = 6*32 + 4*32 + 32 + 2*32
		merklePathBytes        = 4 + 16*(4+3*32)
		committedLeafBytes     = 32 + 8 + 3*32
		isRegulatedOffset      = headerBytes + topFieldsThroughNK + merklePathBytes + 8 + committedLeafBytes
		slimRequiredSpendBytes = 3*32 + 8 + 4 + 24*3*32 + 32 + 64
		optionalIsDummyOffset  = isRegulatedOffset + 1 + merklePathBytes + 8 + 4*32 + 2*slimRequiredSpendBytes
	)
	for name, offset := range map[string]int{
		"is_regulated":      isRegulatedOffset,
		"optional.is_dummy": optionalIsDummyOffset,
	} {
		t.Run(name, func(t *testing.T) {
			payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV8(
				"shielded_ics20_withdrawal",
			)
			payload[offset] = 2
			if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV8(payload); err == nil {
				t.Fatal("V8 decoder must reject non-canonical boolean flags")
			}
		})
	}
}

func TestNoteReshapeWitnessPaddingABI(t *testing.T) {
	fixedPayload := testfixtures.LoadNoteReshapeWitnessV3("note_reshape1x8")
	fixed, fixedFamily, err := DecodeNoteReshapeWitnessV3(fixedPayload)
	if err != nil {
		t.Fatalf("decode fixed-family witness: %v", err)
	}
	if fixedFamily.InputPadding != generated.InputPaddingFixed {
		t.Fatalf("1x8 input policy: got %v", fixedFamily.InputPadding)
	}
	for index, spend := range fixed.Spends {
		if spend.IsDummy || spend.DummyNullifierSeed != [32]byte{} {
			t.Fatalf("fixed input %d carries synthetic-padding ABI data", index)
		}
	}

	syntheticPayload := testfixtures.LoadNoteReshapeWitnessV3("note_reshape8x1")
	synthetic, syntheticFamily, err := DecodeNoteReshapeWitnessV3(syntheticPayload)
	if err != nil {
		t.Fatalf("decode synthetic-family witness: %v", err)
	}
	if syntheticFamily.InputPadding != generated.InputPaddingSyntheticPrivate {
		t.Fatalf("8x1 input policy: got %v", syntheticFamily.InputPadding)
	}
	if !synthetic.Spends[len(synthetic.Spends)-1].IsDummy {
		t.Fatal("8x1 fixture must carry a private dummy selector")
	}

	flagOffset := 24 + 8*32
	malformed := append([]byte(nil), syntheticPayload...)
	malformed[flagOffset] = 2
	if _, _, err := DecodeNoteReshapeWitnessV3(malformed); err == nil {
		t.Fatal("synthetic-family witness must reject a non-boolean private padding flag")
	}
}

func TestNoteReshapeV3RejectsSplitAddressRepresentationPayload(t *testing.T) {
	payload := append(
		[]byte(nil),
		testfixtures.LoadNoteReshapeWitnessV3("note_reshape8x1")...,
	)

	// Simulate the obsolete per-note asset, diversified generator, affine
	// transmission, transmission encoding, and clue-key fields. V3 has one
	// canonical shared context, so there is no position at which an independent
	// representation can be decoded.
	payload = append(payload, make([]byte, 32+64+64+32+32)...)
	binary.LittleEndian.PutUint32(payload[8:12], uint32(len(payload)))

	if _, _, err := DecodeNoteReshapeWitnessV3(payload); err == nil {
		t.Fatal("V3 must reject an appended split address representation")
	}
}
