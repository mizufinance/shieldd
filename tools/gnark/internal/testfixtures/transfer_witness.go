package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v11.bin
var embeddedTransferWitnessV11 []byte

//go:embed vectors/note_reshape2x1_witness_v3.bin
var embeddedNoteReshape2x1WitnessV3 []byte

//go:embed vectors/note_reshape1x8_witness_v3.bin
var embeddedNoteReshape1x8WitnessV3 []byte

//go:embed vectors/note_reshape4x1_witness_v3.bin
var embeddedNoteReshape4x1WitnessV3 []byte

//go:embed vectors/note_reshape8x1_witness_v3.bin
var embeddedNoteReshape8x1WitnessV3 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v6.bin
var embeddedShieldedIcs20WithdrawalWitnessV6 []byte

func LoadTransferWitnessV11(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV11...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteReshapeWitnessV3(label string) []byte {
	switch label {
	case "note_reshape2x1":
		return append([]byte(nil), embeddedNoteReshape2x1WitnessV3...)
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8WitnessV3...)
	case "note_reshape4x1":
		return append([]byte(nil), embeddedNoteReshape4x1WitnessV3...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1WitnessV3...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitnessV6(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV6...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
