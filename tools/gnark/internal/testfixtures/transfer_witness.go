package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v17.bin
var embeddedTransferWitnessV17 []byte

//go:embed vectors/transfer_unregulated_witness_v17.bin
var embeddedUnregulatedTransferWitnessV17 []byte

//go:embed vectors/transfer_flagged_witness_v17.bin
var embeddedFlaggedTransferWitnessV17 []byte

//go:embed vectors/note_reshape1x8_witness_v4.bin
var embeddedNoteReshape1x8WitnessV4 []byte

//go:embed vectors/note_reshape8x1_witness_v4.bin
var embeddedNoteReshape8x1WitnessV4 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v9.bin
var embeddedShieldedIcs20WithdrawalWitnessV9 []byte

//go:embed vectors/shielded_ics20_withdrawal_unregulated_witness_v9.bin
var embeddedUnregulatedShieldedIcs20WithdrawalWitnessV9 []byte

func LoadTransferWitnessV17(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV17...)
	case "transfer_unregulated":
		return append([]byte(nil), embeddedUnregulatedTransferWitnessV17...)
	case "transfer_flagged":
		return append([]byte(nil), embeddedFlaggedTransferWitnessV17...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteReshapeWitnessV4(label string) []byte {
	switch label {
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8WitnessV4...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1WitnessV4...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitnessV9(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV9...)
	case "shielded_ics20_withdrawal_unregulated":
		return append([]byte(nil), embeddedUnregulatedShieldedIcs20WithdrawalWitnessV9...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
