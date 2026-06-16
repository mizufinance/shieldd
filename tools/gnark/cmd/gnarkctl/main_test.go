package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
)

func TestRunExportWiringTranscript(t *testing.T) {
	outPath := filepath.Join(t.TempDir(), "consolidate2x1.wiring")
	if err := runExportWiringTranscript([]string{
		"--circuit", "consolidate2x1",
		"--out", outPath,
	}); err != nil {
		t.Fatalf("export wiring transcript: %v", err)
	}

	got, err := os.ReadFile(outPath)
	if err != nil {
		t.Fatalf("read transcript: %v", err)
	}
	want, err := circuits.ExportConsolidate2x1WiringTranscript()
	if err != nil {
		t.Fatalf("export expected transcript: %v", err)
	}
	if string(got) != want {
		t.Fatalf("exported transcript mismatch")
	}
}

func TestRunExportWiringTranscriptRejectsUnsupportedCircuit(t *testing.T) {
	err := runExportWiringTranscript([]string{
		"--circuit", "split1x4",
		"--out", filepath.Join(t.TempDir(), "split1x4.wiring"),
	})
	if err == nil {
		t.Fatalf("expected unsupported circuit error")
	}
	if !strings.Contains(err.Error(), "supported only for consolidate2x1") {
		t.Fatalf("unexpected error: %v", err)
	}
}
