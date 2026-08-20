package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v19.bin
var embeddedTransferWitnessV19 []byte

//go:embed vectors/transfer_unregulated_witness_v19.bin
var embeddedUnregulatedTransferWitnessV19 []byte

//go:embed vectors/transfer_flagged_witness_v19.bin
var embeddedFlaggedTransferWitnessV19 []byte

//go:embed vectors/note_reshape1x8_witness_v6.bin
var embeddedNoteReshape1x8WitnessV6 []byte

//go:embed vectors/note_reshape8x1_witness_v6.bin
var embeddedNoteReshape8x1WitnessV6 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v11.bin
var embeddedShieldedIcs20WithdrawalWitnessV11 []byte

//go:embed vectors/shielded_ics20_withdrawal_unregulated_witness_v11.bin
var embeddedUnregulatedShieldedIcs20WithdrawalWitnessV11 []byte

func LoadTransferWitnessV19(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV19...)
	case "transfer_unregulated":
		return append([]byte(nil), embeddedUnregulatedTransferWitnessV19...)
	case "transfer_flagged":
		return append([]byte(nil), embeddedFlaggedTransferWitnessV19...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteReshapeWitnessV6(label string) []byte {
	switch label {
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8WitnessV6...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1WitnessV6...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitnessV11(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV11...)
	case "shielded_ics20_withdrawal_unregulated":
		return append([]byte(nil), embeddedUnregulatedShieldedIcs20WithdrawalWitnessV11...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
