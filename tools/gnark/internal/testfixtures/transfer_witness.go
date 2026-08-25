package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v20.bin
var embeddedTransferWitnessV20 []byte

//go:embed vectors/transfer_unregulated_witness_v20.bin
var embeddedUnregulatedTransferWitnessV20 []byte

//go:embed vectors/transfer_flagged_witness_v20.bin
var embeddedFlaggedTransferWitnessV20 []byte

//go:embed vectors/note_reshape1x8_witness_v6.bin
var embeddedNoteReshape1x8WitnessV6 []byte

//go:embed vectors/note_reshape8x1_witness_v6.bin
var embeddedNoteReshape8x1WitnessV6 []byte

//go:embed vectors/shielded_ics20_withdrawal_witness_v14.bin
var embeddedShieldedIcs20WithdrawalWitnessV14 []byte

//go:embed vectors/shielded_ics20_withdrawal_unregulated_witness_v14.bin
var embeddedUnregulatedShieldedIcs20WithdrawalWitnessV14 []byte

func LoadTransferWitnessV20(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitnessV20...)
	case "transfer_unregulated":
		return append([]byte(nil), embeddedUnregulatedTransferWitnessV20...)
	case "transfer_flagged":
		return append([]byte(nil), embeddedFlaggedTransferWitnessV20...)
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

func LoadShieldedIcs20WithdrawalWitnessV14(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitnessV14...)
	case "shielded_ics20_withdrawal_unregulated":
		return append([]byte(nil), embeddedUnregulatedShieldedIcs20WithdrawalWitnessV14...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
