package extractor

import (
	"math/big"
	"strings"
	"testing"
)

func TestExportPreludeUsesFiniteHeartbeats(t *testing.T) {
	prelude := exportPrelude("Fixture", big.NewInt(17))

	if !strings.Contains(prelude, "set_option maxHeartbeats 50000000") {
		t.Fatal("extracted Lean prelude must set a finite heartbeat budget")
	}
	if strings.Contains(prelude, "set_option maxHeartbeats 0") {
		t.Fatal("extracted Lean prelude must not disable the heartbeat limit")
	}
}
