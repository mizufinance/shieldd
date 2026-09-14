package main

import (
	"github.com/mizufinance/shieldd/tools/gnark/internal/testfixtures"
	"testing"
)

func TestFactsUseCheckedWitnessDecoder(t *testing.T) {
	data := testfixtures.LoadTransferWitness("transfer")
	f, err := facts("transfer", data)
	if err != nil {
		t.Fatal(err)
	}
	if f.Inputs != [2]string{"100", "100"} || f.Outputs != [2]string{"90", "90"} || f.OptionalDummy || !f.SameAffineAddress {
		t.Fatalf("unexpected standard facts: %+v", f)
	}
	if _, err = facts("transfer", data[:len(data)-1]); err == nil {
		t.Fatal("truncated witness accepted")
	}
	bad := append([]byte(nil), data...)
	bad[0] ^= 1
	if _, err = facts("transfer", bad); err == nil {
		t.Fatal("wrong witness header accepted")
	}
}
