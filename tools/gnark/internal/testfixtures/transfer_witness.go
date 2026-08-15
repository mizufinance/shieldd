package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v18.bin
var embeddedTransferWitnessV18 []byte

//go:embed vectors/transfer_unregulated_witness_v18.bin
var embeddedUnregulatedTransferWitnessV18 []byte

//go:embed vectors/transfer_flagged_witness_v18.bin
var embeddedFlaggedTransferWitnessV18 []byte

//go:embed vectors/note_reshape1x8_witness_v5.bin
var embeddedNoteReshape1x8WitnessV5 []byte

//go:embed vectors/note_reshape8x1_witness_v5.bin
var embeddedNoteReshape8x1WitnessV5 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v10.bin
var embeddedShieldedIcs20WithdrawalWitnessV10 []byte

//go:embed vectors/shielded_ics20_withdrawal_unregulated_witness_v10.bin
var embeddedUnregulatedShieldedIcs20WithdrawalWitnessV10 []byte

func LoadTransferWitnessV18(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV18...)
	case "transfer_unregulated":
		return append([]byte(nil), embeddedUnregulatedTransferWitnessV18...)
	case "transfer_flagged":
		return append([]byte(nil), embeddedFlaggedTransferWitnessV18...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteReshapeWitnessV5(label string) []byte {
	switch label {
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8WitnessV5...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1WitnessV5...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitnessV10(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV10...)
	case "shielded_ics20_withdrawal_unregulated":
		return append([]byte(nil), embeddedUnregulatedShieldedIcs20WithdrawalWitnessV10...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
