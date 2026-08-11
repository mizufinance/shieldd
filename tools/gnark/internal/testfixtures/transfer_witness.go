package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v16.bin
var embeddedTransferWitnessV16 []byte

//go:embed vectors/transfer_unregulated_witness_v16.bin
var embeddedUnregulatedTransferWitnessV16 []byte

//go:embed vectors/transfer_flagged_witness_v16.bin
var embeddedFlaggedTransferWitnessV16 []byte

//go:embed vectors/note_reshape1x8_witness_v3.bin
var embeddedNoteReshape1x8WitnessV3 []byte

//go:embed vectors/note_reshape8x1_witness_v3.bin
var embeddedNoteReshape8x1WitnessV3 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v8.bin
var embeddedShieldedIcs20WithdrawalWitnessV8 []byte

//go:embed vectors/shielded_ics20_withdrawal_unregulated_witness_v8.bin
var embeddedUnregulatedShieldedIcs20WithdrawalWitnessV8 []byte

func LoadTransferWitnessV16(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV16...)
	case "transfer_unregulated":
		return append([]byte(nil), embeddedUnregulatedTransferWitnessV16...)
	case "transfer_flagged":
		return append([]byte(nil), embeddedFlaggedTransferWitnessV16...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteReshapeWitnessV3(label string) []byte {
	switch label {
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8WitnessV3...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1WitnessV3...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitnessV8(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV8...)
	case "shielded_ics20_withdrawal_unregulated":
		return append([]byte(nil), embeddedUnregulatedShieldedIcs20WithdrawalWitnessV8...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
