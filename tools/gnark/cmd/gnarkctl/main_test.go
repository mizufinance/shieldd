package main

import (
	"os"
	"path/filepath"
	"strings"
	"testing"

	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
)

func TestRunExportWiringTranscript(t *testing.T) {
	cases := []struct {
		label string
		want  func() (string, error)
	}{
		{"consolidate2x1", circuits.ExportConsolidate2x1WiringTranscript},
		{"transfer", circuits.ExportTransferWiringTranscript},
	}

	for _, tc := range cases {
		t.Run(tc.label, func(t *testing.T) {
			outPath := filepath.Join(t.TempDir(), tc.label+".wiring")
			if err := runExportWiringTranscript([]string{
				"--circuit", tc.label,
				"--out", outPath,
			}); err != nil {
				t.Fatalf("export wiring transcript: %v", err)
			}

			got, err := os.ReadFile(outPath)
			if err != nil {
				t.Fatalf("read transcript: %v", err)
			}
			want, err := tc.want()
			if err != nil {
				t.Fatalf("export expected transcript: %v", err)
			}
			if string(got) != want {
				t.Fatalf("exported transcript mismatch")
			}
		})
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
	if !strings.Contains(err.Error(), "unsupported wiring transcript circuit") {
		t.Fatalf("unexpected error: %v", err)
	}
}
