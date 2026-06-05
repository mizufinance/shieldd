package testfixtures

import _ "embed"

//go:embed vectors/transfer_witness_v1.bin
var embeddedTransferWitnessV1 []byte

//go:embed vectors/consolidate2x1_witness_v1.bin
var embeddedConsolidate2x1WitnessV1 []byte

//go:embed vectors/split1x4_witness_v1.bin
var embeddedSplit1x4WitnessV1 []byte

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

func LoadConsolidateWitnessV1(label string) []byte {
	switch label {
	case "consolidate2x1":
		return append([]byte(nil), embeddedConsolidate2x1WitnessV1...)
	default:
		panic("unknown consolidate witness label: " + label)
	}
}

func LoadSplitWitnessV1(label string) []byte {
	switch label {
	case "split1x4":
		return append([]byte(nil), embeddedSplit1x4WitnessV1...)
	default:
		panic("unknown split witness label: " + label)
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
