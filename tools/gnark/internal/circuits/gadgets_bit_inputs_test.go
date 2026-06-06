package circuits

import (
	"os"
	"path/filepath"
	"testing"

	"github.com/mizufinance/penumbra/tools/gnark/internal/artifacts"
)

func TestFieldLessThanAxeBitInputs(t *testing.T) {
	path := filepath.Join(
		"..", "..", "..", "..",
		"crates", "core", "component", "shielded-pool", "formal", "acl2",
		"generated", "gadget-field-less-than-r1cs.lisp",
	)
	data, err := os.ReadFile(path)
	if err != nil {
		t.Fatalf("read field-less-than Axe Lisp: %v", err)
	}

	symbols, err := artifacts.ExtractBooleanBitInputsFromAxeLisp(data)
	if err != nil {
		t.Fatalf("extract bit inputs: %v", err)
	}
	if got, want := len(symbols), 506; got != want {
		t.Fatalf("bit input count %d != %d", got, want)
	}

	runs, err := artifacts.ContiguousInternalRuns(symbols)
	if err != nil {
		t.Fatalf("extract contiguous runs: %v", err)
	}
	want := []artifacts.AxeSymbolRun{
		{Start: "INTERNAL-4", End: "INTERNAL-256", Count: 253},
		{Start: "INTERNAL-343", End: "INTERNAL-595", Count: 253},
	}
	if len(runs) != len(want) {
		t.Fatalf("runs %v != %v", runs, want)
	}
	for i := range want {
		if runs[i] != want[i] {
			t.Fatalf("run %d = %v, want %v", i, runs[i], want[i])
		}
	}
}
