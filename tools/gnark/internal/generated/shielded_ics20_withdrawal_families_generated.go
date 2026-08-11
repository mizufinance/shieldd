// Code generated from shielded_ics20_withdrawal_families.json. DO NOT EDIT.
package generated

type ShieldedIcs20WithdrawalFamilySpec struct {
	ID                 uint32
	Label              string
	ArtifactName       string
	NIn                int
	NOut               int
	BundledLibBasename string
}

var ShieldedIcs20WithdrawalFamilies = []ShieldedIcs20WithdrawalFamilySpec{
	{
		ID:                 1,
		Label:              "shielded_ics20_withdrawal",
		ArtifactName:       "shielded_ics20_withdrawal",
		NIn:                2,
		NOut:               1,
		BundledLibBasename: "libshieldd_gnark_shielded_ics20_withdrawal",
	},
}

func ShieldedIcs20WithdrawalFamilyByID(id uint32) (ShieldedIcs20WithdrawalFamilySpec, bool) {
	for _, family := range ShieldedIcs20WithdrawalFamilies {
		if family.ID == id {
			return family, true
		}
	}
	return ShieldedIcs20WithdrawalFamilySpec{}, false
}

func ShieldedIcs20WithdrawalFamilyByLabel(label string) (ShieldedIcs20WithdrawalFamilySpec, bool) {
	for _, family := range ShieldedIcs20WithdrawalFamilies {
		if family.Label == label {
			return family, true
		}
	}
	return ShieldedIcs20WithdrawalFamilySpec{}, false
}
