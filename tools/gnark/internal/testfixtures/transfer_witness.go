package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness.bin
var embeddedTransferWitness []byte

//go:embed vectors/transfer_unregulated_witness.bin
var embeddedUnregulatedTransferWitness []byte

//go:embed vectors/transfer_flagged_witness.bin
var embeddedFlaggedTransferWitness []byte

//go:embed vectors/note_reshape1x8_witness.bin
var embeddedNoteReshape1x8Witness []byte

//go:embed vectors/note_reshape8x1_witness.bin
var embeddedNoteReshape8x1Witness []byte

//go:embed vectors/shielded_ics20_withdrawal_witness.bin
var embeddedShieldedIcs20WithdrawalWitness []byte

//go:embed vectors/shielded_ics20_withdrawal_unregulated_witness.bin
var embeddedUnregulatedShieldedIcs20WithdrawalWitness []byte

//go:embed vectors/note_seizure_witness.bin
var embeddedNoteSeizureWitness []byte

func LoadTransferWitness(label string) []byte {
	switch label {
	case "transfer":
		return append([]byte(nil), embeddedTransferWitness...)
	case "transfer_unregulated":
		return append([]byte(nil), embeddedUnregulatedTransferWitness...)
	case "transfer_flagged":
		return append([]byte(nil), embeddedFlaggedTransferWitness...)
	default:
		panic("unknown transfer witness label: " + label)
	}
}

func LoadNoteSeizureWitness() []byte {
	return append([]byte(nil), embeddedNoteSeizureWitness...)
}

func LoadNoteReshapeWitness(label string) []byte {
	switch label {
	case "note_reshape1x8":
		return append([]byte(nil), embeddedNoteReshape1x8Witness...)
	case "note_reshape8x1":
		return append([]byte(nil), embeddedNoteReshape8x1Witness...)
	default:
		panic("unknown note reshape witness label: " + label)
	}
}

func LoadShieldedIcs20WithdrawalWitness(label string) []byte {
	switch label {
	case "shielded_ics20_withdrawal":
		return append([]byte(nil), embeddedShieldedIcs20WithdrawalWitness...)
	case "shielded_ics20_withdrawal_unregulated":
		return append([]byte(nil), embeddedUnregulatedShieldedIcs20WithdrawalWitness...)
	default:
		panic("unknown shielded ICS-20 withdrawal witness label: " + label)
	}
}
