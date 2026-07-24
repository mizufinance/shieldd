package extractor

import (
	"math/big"
	"strings"
	"testing"
)

func TestExportPreludeUsesFiniteHeartbeats(t *testing.T) {
	prelude := exportPrelude("Fixture", big.NewInt(17), true)

	if !strings.Contains(prelude, "set_option maxHeartbeats 50000000") {
		t.Fatal("extracted Lean prelude must set a finite heartbeat budget")
	}
	if strings.Contains(prelude, "set_option maxHeartbeats 0") {
		t.Fatal("extracted Lean prelude must not disable the heartbeat limit")
	}
}

func TestExportPreludeUsesChoiceFreeZModOperations(t *testing.T) {
	prelude := exportPrelude("Fixture", big.NewInt(17), true)

	for _, instance := range []string{
		"CommRing F := ZMod.commRing _",
		"Add F := (ZMod.commRing _).toAdd",
		"Mul F := (ZMod.commRing _).toMul",
		"NatCast F := (ZMod.commRing _).toNatCast",
		"Zero F := (ZMod.commRing _).toZero",
		"One F := (ZMod.commRing _).toOne",
		"Neg F := (ZMod.commRing _).toNeg",
		"Sub F := (ZMod.commRing _).toSub",
		"MulOneClass F := (ZMod.commRing _).toMulOneClass",
		"CommSemiring F := (ZMod.commRing _).toCommSemiring",
		"Ring F := (ZMod.commRing _).toRing",
	} {
		if !strings.Contains(prelude, instance) {
			t.Fatalf("extracted Lean prelude is missing choice-free instance %q", instance)
		}
	}
}

func TestHelperScopedChoiceFreeKeepsInstancesOutOfPrelude(t *testing.T) {
	prelude := exportPrelude("Fixture", big.NewInt(17), false)
	if strings.Contains(prelude, "CommRing F := ZMod.commRing _") {
		t.Fatal("helper-scoped export leaked choice-free instances into the namespace prelude")
	}
	section := choiceFreeSection("ChoiceFreeFixture", "def fixture : F := 1")
	if !strings.Contains(section, "CommRing F := ZMod.commRing _") {
		t.Fatal("helper-scoped export omitted choice-free instances")
	}
	if !strings.Contains(section, "end ChoiceFreeFixture") {
		t.Fatal("helper-scoped export did not close its instance scope")
	}
}
