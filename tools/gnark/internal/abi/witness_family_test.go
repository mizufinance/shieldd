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
			payload: func(t *testing.T) []byte { return testfixtures.LoadTransferWitnessV18("transfer") },
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV18(payload)
				return err
			},
		},
		{
			name: "transfer_flagged",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadTransferWitnessV18("transfer_flagged")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV18(payload)
				return err
			},
		},
		{
			name: "transfer_unregulated",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadTransferWitnessV18("transfer_unregulated")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeTransferWitnessV18(payload)
				return err
			},
		},
		{
			name: "shielded_ics20_withdrawal",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadShieldedIcs20WithdrawalWitnessV10("shielded_ics20_withdrawal")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(payload)
				return err
			},
		},
		{
			name: "shielded_ics20_withdrawal_unregulated",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadShieldedIcs20WithdrawalWitnessV10(
					"shielded_ics20_withdrawal_unregulated",
				)
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(payload)
				return err
			},
		},
		{
			name: "note_reshape8x1",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadNoteReshapeWitnessV5("note_reshape8x1")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeNoteReshapeWitnessV5(payload)
				return err
			},
		},
		{
			name: "note_reshape1x8",
			payload: func(t *testing.T) []byte {
				return testfixtures.LoadNoteReshapeWitnessV5("note_reshape1x8")
			},
			decode: func(payload []byte) error {
				_, _, err := DecodeNoteReshapeWitnessV5(payload)
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

func TestShieldedIcs20WithdrawalV10FixtureBranchMatrix(t *testing.T) {
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
			witness, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(
				testfixtures.LoadShieldedIcs20WithdrawalWitnessV10(tc.label),
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

func TestNoteReshapeV5RejectsLegacyVersion(t *testing.T) {
	payload := testfixtures.LoadNoteReshapeWitnessV5("note_reshape8x1")
	binary.LittleEndian.PutUint32(payload[4:8], 3)
	if _, _, err := DecodeNoteReshapeWitnessV5(payload); err == nil {
		t.Fatal("V4 decoder must reject the obsolete V3 layout")
	}
}

func TestTransferV18RejectsLegacyVersion(t *testing.T) {
	payload := testfixtures.LoadTransferWitnessV18("transfer")
	binary.LittleEndian.PutUint32(payload[4:8], 16)
	if _, _, err := DecodeTransferWitnessV18(payload); err == nil {
		t.Fatal("V18 decoder must reject the obsolete V16 layout")
	}
}

func TestTransferV18AssignmentRejectsClaimedHashMismatch(t *testing.T) {
	payload := testfixtures.LoadTransferWitnessV18("transfer")
	const claimedStatementHashOffset = 12 + 4*32
	payload[claimedStatementHashOffset] ^= 1
	if _, _, err := NewTransferCircuitAssignmentFromWitnessV18(payload); err == nil {
		t.Fatal("V18 assignment must reject a claimed hash that disagrees with reconstructed fields")
	}
}

func TestTransferV18AssignmentRejectsSerializedSemanticMutation(t *testing.T) {
	payload := testfixtures.LoadTransferWitnessV18("transfer")
	const anchorOffset = 12
	payload[anchorOffset] ^= 1
	if _, _, err := NewTransferCircuitAssignmentFromWitnessV18(payload); err == nil {
		t.Fatal("V18 assignment must reject a serialized anchor mutation against the claimed hash")
	}
}

func TestShieldedIcs20WithdrawalV10RejectsLegacyVersion(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV10("shielded_ics20_withdrawal")
	binary.LittleEndian.PutUint32(payload[4:8], 8)
	if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(payload); err == nil {
		t.Fatal("V9 decoder must reject the obsolete V8 layout")
	}
}

func TestShieldedIcs20WithdrawalV10AssignmentRejectsClaimedHashMismatch(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV10("shielded_ics20_withdrawal")
	const claimedStatementHashOffset = 20 + 6*32 + 4*32
	payload[claimedStatementHashOffset] ^= 1
	if _, _, err := NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV10(payload); err == nil {
		t.Fatal("V9 assignment must reject a claimed hash that disagrees with reconstructed fields")
	}
}

func TestShieldedIcs20WithdrawalV10RejectsOversizedEffectHashLimb(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV10("shielded_ics20_withdrawal")
	const effectHashLimbsOffset = 20 + 6*32
	payload[effectHashLimbsOffset+16] = 1
	if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(payload); err == nil {
		t.Fatal("V9 decoder must reject effect-hash limbs wider than 128 bits")
	}
}

func TestShieldedIcs20WithdrawalV10RejectsNonCanonicalBalanceBlinding(t *testing.T) {
	payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV10("shielded_ics20_withdrawal")
	const actionBalanceBlindingOffset = 20 + 6*32 + 4*32 + 32 + 3*32
	modulus, err := bigIntToLE32(decaf377.ScalarOrder())
	if err != nil {
		t.Fatalf("encode Decaf377 scalar modulus: %v", err)
	}
	copy(payload[actionBalanceBlindingOffset:], modulus[:])
	if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(payload); err == nil {
		t.Fatal("V9 decoder must reject a non-canonical action balance blinding")
	}
}

func TestShieldedIcs20WithdrawalV10RejectsNonCanonicalBooleanFlags(t *testing.T) {
	const (
		headerBytes            = 20
		topFieldsThroughNK     = 6*32 + 4*32 + 32 + 3*32 + 2*32
		merklePathBytes        = 4 + 16*(4+3*32)
		committedLeafBytes     = 32 + 8 + 3*32
		isRegulatedOffset      = headerBytes + topFieldsThroughNK + merklePathBytes + 8 + committedLeafBytes
		slimRequiredSpendBytes = 3*32 + 8 + 4 + 24*3*32 + 32 + 64 + 1
		routingPrivateBytes    = 2 + 8 + 32
		optionalIsDummyOffset  = isRegulatedOffset + 1 + routingPrivateBytes + merklePathBytes + 8 + 4*32 + 2*slimRequiredSpendBytes
	)
	for name, offset := range map[string]int{
		"is_regulated":      isRegulatedOffset,
		"optional.is_dummy": optionalIsDummyOffset,
	} {
		t.Run(name, func(t *testing.T) {
			payload := testfixtures.LoadShieldedIcs20WithdrawalWitnessV10(
				"shielded_ics20_withdrawal",
			)
			payload[offset] = 2
			if _, _, err := DecodeShieldedIcs20WithdrawalWitnessV10(payload); err == nil {
				t.Fatal("withdrawal decoder must reject non-canonical boolean flags")
			}
		})
	}
}

func TestNoteReshapeWitnessPaddingABI(t *testing.T) {
	fixedPayload := testfixtures.LoadNoteReshapeWitnessV5("note_reshape1x8")
	fixed, fixedFamily, err := DecodeNoteReshapeWitnessV5(fixedPayload)
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

	syntheticPayload := testfixtures.LoadNoteReshapeWitnessV5("note_reshape8x1")
	synthetic, syntheticFamily, err := DecodeNoteReshapeWitnessV5(syntheticPayload)
	if err != nil {
		t.Fatalf("decode synthetic-family witness: %v", err)
	}
	if syntheticFamily.InputPadding != generated.InputPaddingSyntheticPrivate {
		t.Fatalf("8x1 input policy: got %v", syntheticFamily.InputPadding)
	}
	if !synthetic.Spends[len(synthetic.Spends)-1].IsDummy {
		t.Fatal("8x1 fixture must carry a private dummy selector")
	}

	const (
		headerBytes           = 24
		topFieldsThroughNK    = 9 * 32
		merklePathBytes       = 4 + 16*(4+3*32)
		indexedLeafBytes      = 32 + 8 + 32 + 16 + 6*32
		assetLeafPointBytes   = 2 * 64
		routingPrivateBytes   = 1 + 2 + 8 + 32
		sharedContextBytes    = 32 + 64
		senderComplianceBytes = merklePathBytes + 8 + 4*32
		flagOffset            = headerBytes + topFieldsThroughNK + merklePathBytes + 8 + indexedLeafBytes + assetLeafPointBytes + routingPrivateBytes + senderComplianceBytes + sharedContextBytes
	)
	malformed := append([]byte(nil), syntheticPayload...)
	malformed[flagOffset] = 2
	if _, _, err := DecodeNoteReshapeWitnessV5(malformed); err == nil {
		t.Fatal("synthetic-family witness must reject a non-boolean private padding flag")
	}
}

func TestNoteReshapeV5RejectsSplitAddressRepresentationPayload(t *testing.T) {
	payload := append(
		[]byte(nil),
		testfixtures.LoadNoteReshapeWitnessV5("note_reshape8x1")...,
	)

	// Simulate the obsolete per-note asset, diversified generator, affine
	// transmission, transmission encoding, and extra address field. V4 has one
	// canonical shared context, so there is no position at which an independent
	// representation can be decoded.
	payload = append(payload, make([]byte, 32+64+64+32+32)...)
	binary.LittleEndian.PutUint32(payload[8:12], uint32(len(payload)))

	if _, _, err := DecodeNoteReshapeWitnessV5(payload); err == nil {
		t.Fatal("V4 must reject an appended split address representation")
	}
}
