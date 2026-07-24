package main

import (
	"bytes"
	"flag"
	"fmt"
	"os"
	"path/filepath"
	"strings"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/frontend"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/reilabs/gnark-lean-extractor/v3/extractor"
)

type artifact struct {
	namespace              string
	circuit                func() frontend.Circuit
	helperScopedChoiceFree bool
	helperModule           string
	foldGadgets            []string
}

var artifacts = map[string]artifact{
	"canonical-fq-bits": {
		namespace: "Shieldd.GnarkFormal.Extracted.CanonicalFqBits",
		circuit: func() frontend.Circuit {
			return &circuits.CanonicalFqBitsGadget{}
		},
	},
	"decaf-compress-to-field": {
		namespace: "Shieldd.GnarkFormal.Extracted.DecafCompressToField",
		circuit: func() frontend.Circuit {
			return &circuits.CompressToFieldGadget{}
		},
	},
	"decaf-dtk": {
		namespace:              "Shieldd.GnarkFormal.Extracted.DecafDtk",
		helperScopedChoiceFree: true,
		helperModule:           "ShielddGnarkFormal.Extracted.DecafDtkHelpers",
		foldGadgets:            []string{"scalarMulStep"},
		circuit: func() frontend.Circuit {
			return &circuits.DecafDtkGadget{}
		},
	},
	"ivk-mod-r": {
		namespace: "Shieldd.GnarkFormal.Extracted.IvkModR",
		circuit: func() frontend.Circuit {
			return &circuits.IvkModRGadget{}
		},
	},
	"poseidon2": {
		namespace: "Shieldd.GnarkFormal.Extracted.Poseidon2",
		circuit: func() frontend.Circuit {
			return &circuits.PoseidonHash2Gadget{}
		},
	},
}

func main() {
	var artifactName string
	var outputPath string
	var check bool
	flag.StringVar(&artifactName, "artifact", "", "registered extracted Lean artifact")
	flag.StringVar(&outputPath, "out", "", "output Lean file")
	flag.BoolVar(&check, "check", false, "fail if the output differs without writing")
	flag.Parse()

	if artifactName == "" || outputPath == "" || flag.NArg() != 0 {
		flag.Usage()
		os.Exit(2)
	}
	spec, ok := artifacts[artifactName]
	if !ok {
		fail("unknown artifact %q", artifactName)
	}

	outputs := map[string]string{}
	if spec.helperScopedChoiceFree {
		modules, err := extractor.CircuitToLeanModulesWithHelperScopedChoiceFree(
			spec.circuit(),
			ecc.BLS12_377,
			spec.namespace,
			spec.helperModule,
			spec.foldGadgets,
		)
		if err != nil {
			fail("extract %s: %v", artifactName, err)
		}
		helperPath := strings.TrimSuffix(outputPath, ".lean") + "Helpers.lean"
		outputs[helperPath] = modules.Helpers + "\n"
		outputs[outputPath] = modules.Top + "\n"
	} else {
		rendered, err := extractor.CircuitToLeanWithName(
			spec.circuit(),
			ecc.BLS12_377,
			spec.namespace,
		)
		if err != nil {
			fail("extract %s: %v", artifactName, err)
		}
		outputs[outputPath] = rendered + "\n"
	}
	for path, rendered := range outputs {
		writeOutput(path, rendered, check)
	}
}

func writeOutput(outputPath string, rendered string, check bool) {
	current, readErr := os.ReadFile(outputPath)
	if readErr == nil && bytes.Equal(current, []byte(rendered)) {
		return
	}
	if check {
		if readErr != nil && !os.IsNotExist(readErr) {
			fail("read %s: %v", outputPath, readErr)
		}
		fail("%s is stale; regenerate with the same command without --check", outputPath)
	}
	if readErr != nil && !os.IsNotExist(readErr) {
		fail("read %s: %v", outputPath, readErr)
	}
	if err := os.MkdirAll(filepath.Dir(outputPath), 0o755); err != nil {
		fail("create output directory: %v", err)
	}

	temp, err := os.CreateTemp(filepath.Dir(outputPath), ".extractlean-*")
	if err != nil {
		fail("create temporary output: %v", err)
	}
	tempPath := temp.Name()
	defer os.Remove(tempPath)
	if _, err := temp.WriteString(rendered); err != nil {
		temp.Close()
		fail("write temporary output: %v", err)
	}
	if err := temp.Chmod(0o644); err != nil {
		temp.Close()
		fail("set output permissions: %v", err)
	}
	if err := temp.Close(); err != nil {
		fail("close temporary output: %v", err)
	}
	if err := os.Rename(tempPath, outputPath); err != nil {
		fail("replace %s: %v", outputPath, err)
	}
}

func fail(format string, args ...any) {
	fmt.Fprintf(os.Stderr, "extractlean: "+format+"\n", args...)
	os.Exit(1)
}
