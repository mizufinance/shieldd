package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v1.bin
var embeddedTransferWitnessV1 []byte

//go:embed vectors/note_reshape2x1_witness_v2.bin
var embeddedNoteReshape2x1WitnessV2 []byte

//go:embed vectors/note_reshape1x8_witness_v2.bin
var embeddedNoteReshape1x8WitnessV2 []byte

//go:embed vectors/note_reshape4x1_witness_v2.bin
var embeddedNoteReshape4x1WitnessV2 []byte

//go:embed vectors/note_reshape8x1_witness_v2.bin
var embeddedNoteReshape8x1WitnessV2 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v1.bin
var embeddedShieldedIcs20WithdrawalWitnessV1 []byte

func LoadTransferWitnessV1(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV1...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteReshapeWitnessV2(label string) []byte {
	switch label {
	case "note_reshape2x1":
		return append([]byte(nil), embeddedNoteReshape2x1WitnessV2...)
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8WitnessV2...)
	case "note_reshape4x1":
		return append([]byte(nil), embeddedNoteReshape4x1WitnessV2...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1WitnessV2...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitnessV1(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV1...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
