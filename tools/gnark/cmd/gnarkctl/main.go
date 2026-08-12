package main

import (
	"bytes"
	"crypto/sha256"
	"encoding/binary"
	"encoding/json"
	"flag"
	"fmt"
	"io"
	"math/big"
	"os"
	"path/filepath"
	"strings"
	"time"

	"github.com/consensys/gnark-crypto/ecc"
	curve "github.com/consensys/gnark-crypto/ecc/bls12-377"
	"github.com/consensys/gnark/backend/groth16"
	groth16bls "github.com/consensys/gnark/backend/groth16/bls12-377"
	backendwitness "github.com/consensys/gnark/backend/witness"
	"github.com/consensys/gnark/constraint"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"

	"github.com/mizufinance/shieldd/tools/gnark/internal/abi"
	"github.com/mizufinance/shieldd/tools/gnark/internal/artifacts"
	"github.com/mizufinance/shieldd/tools/gnark/internal/circuits"
	"github.com/mizufinance/shieldd/tools/gnark/internal/generated"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/reilabs/gnark-lean-extractor/v3/extractor"
)

func main() {
	if len(os.Args) < 2 {
		usage()
		os.Exit(2)
	}

	var err error
	switch os.Args[1] {
	case "setup":
		err = runSetup(os.Args[2:])
	case "export-r1cs":
		err = runExportR1CS(os.Args[2:])
	case "extract-bit-inputs":
		err = runExtractBitInputs(os.Args[2:])
	case "export-poseidon-acl2":
		err = runExportPoseidonACL2(os.Args[2:])
	case "export-poseidon-lean":
		err = runExportPoseidonLean(os.Args[2:])
	case "export-lean":
		err = runExportLean(os.Args[2:])
	case "export-wiring-transcript":
		err = runExportWiringTranscript(os.Args[2:])
	case "export-manifest":
		err = runExportManifest(os.Args[2:])
	case "export-fv":
		err = runExportFV(os.Args[2:])
	case "prove":
		err = runProve(os.Args[2:])
	case "replay":
		err = runReplay(os.Args[2:])
	case "verify-bench":
		err = runVerifyBench(os.Args[2:])
	case "check-vk-json":
		err = runCheckVKJSON(os.Args[2:])
	default:
		usage()
		os.Exit(2)
	}
	if err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func usage() {
	fmt.Fprintln(os.Stderr, "usage: gnarkctl <setup|export-r1cs|export-manifest|export-fv|extract-bit-inputs|export-poseidon-acl2|export-poseidon-lean|export-lean|export-wiring-transcript|prove|replay|verify-bench> [flags]")
}

// runExportFV emits the two deterministic source artifacts needed by the FV
// gate from one frontend compile. Keeping this operation in one process is
// important: export-r1cs followed by export-manifest would compile the same
// expensive family twice.
type fvProofReceipt struct {
	SchemaVersion               uint32 `json:"schema_version"`
	Circuit                     string `json:"circuit"`
	ProofCase                   string `json:"proof_case"`
	WitnessFormatVersion        uint32 `json:"witness_format_version"`
	WitnessSHA256Hex            string `json:"witness_sha256_hex"`
	SR1CSSHA256Hex              string `json:"sr1cs_sha256_hex"`
	ConstraintManifestSHA256Hex string `json:"constraint_manifest_sha256_hex"`
	CircuitMetadataSHA256Hex    string `json:"circuit_metadata_sha256_hex"`
	SetupProvenanceSHA256Hex    string `json:"setup_provenance_sha256_hex"`
	ProvingKeySHA256Hex         string `json:"proving_key_sha256_hex"`
	VerifyingKeyBinarySHA256Hex string `json:"verifying_key_binary_sha256_hex"`
	VerifyingKeyJSONSHA256Hex   string `json:"verifying_key_json_sha256_hex"`
	NbConstraints               int    `json:"nb_constraints"`
	NbPublicVariables           int    `json:"nb_public_variables"`
	NbSecretVariables           int    `json:"nb_secret_variables"`
	ProvedAndVerifiedInProcess  bool   `json:"proved_and_verified_in_process"`
}

const setupProvenanceSchema = "shieldd.gnark.setup_provenance.v2"

type setupGenerationSelfTest struct {
	ProofCase                  string `json:"proof_case"`
	WitnessFormatVersion       uint32 `json:"witness_format_version"`
	WitnessSHA256Hex           string `json:"witness_sha256_hex"`
	ProvedAndVerifiedInProcess bool   `json:"proved_and_verified_in_process"`
}

type setupProvenance struct {
	Schema                      string                    `json:"schema"`
	Curve                       string                    `json:"curve"`
	Circuit                     string                    `json:"circuit"`
	Mode                        string                    `json:"mode"`
	SR1CSSHA256Hex              string                    `json:"sr1cs_sha256_hex"`
	ProvingKeySHA256Hex         string                    `json:"proving_key_sha256_hex"`
	VerifyingKeyBinarySHA256Hex string                    `json:"verifying_key_binary_sha256_hex"`
	VerifyingKeyJSONSHA256Hex   string                    `json:"verifying_key_json_sha256_hex"`
	GenerationSelfTests         []setupGenerationSelfTest `json:"generation_self_tests"`
	SetupTranscript             string                    `json:"setup_transcript"`
	ToxicWasteErasure           string                    `json:"toxic_waste_erasure"`
}

type repeatedStringFlag []string

func (values *repeatedStringFlag) String() string {
	return strings.Join(*values, ",")
}

func (values *repeatedStringFlag) Set(value string) error {
	if value == "" {
		return fmt.Errorf("value must be nonempty")
	}
	*values = append(*values, value)
	return nil
}

func runExportFV(args []string) error {
	fs := flag.NewFlagSet("export-fv", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "registered circuit family label")
	sr1csPath := fs.String("sr1cs-out", "", "output .sr1cs path")
	manifestPath := fs.String("manifest-out", "", "output semantic manifest path")
	prove := fs.Bool("prove", false, "prove and verify with deployed keys in the same compiled process")
	artifactDir := fs.String("artifact-dir", "", "deployed key artifact directory for --prove")
	var proofCases repeatedStringFlag
	var witnessPaths repeatedStringFlag
	var proofReceiptPaths repeatedStringFlag
	fs.Var(&proofCases, "proof-case", "canonical proof case; repeat once per --witness")
	fs.Var(&witnessPaths, "witness", "witness binary path for --prove; repeatable")
	fs.Var(&proofReceiptPaths, "proof-receipt-out", "proof receipt path for --prove; repeat once per --witness")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *sr1csPath == "" || *manifestPath == "" {
		return fmt.Errorf("--circuit, --sr1cs-out, and --manifest-out are required")
	}
	if err := validateFVProofJobFlags(
		*prove,
		*artifactDir,
		proofCases,
		witnessPaths,
		proofReceiptPaths,
	); err != nil {
		return err
	}
	ccs, manifest, err := compileCircuitForFV(*circuit)
	if err != nil {
		return err
	}
	if err := os.MkdirAll(filepath.Dir(*sr1csPath), 0o755); err != nil {
		return fmt.Errorf("create SR1CS output dir: %w", err)
	}
	if err := os.MkdirAll(filepath.Dir(*manifestPath), 0o755); err != nil {
		return fmt.Errorf("create manifest output dir: %w", err)
	}
	if err := artifacts.WriteConstraintSystem(*sr1csPath, ccs); err != nil {
		return err
	}
	data, err := os.ReadFile(*sr1csPath)
	if err != nil {
		return fmt.Errorf("read emitted SR1CS: %w", err)
	}
	sum := sha256.Sum256(data)
	manifest.SR1CSSHA256Hex = fmt.Sprintf("%x", sum[:])
	if err := circuits.WriteConstraintManifest(*manifestPath, manifest); err != nil {
		return err
	}
	if *prove {
		pk, _, err := loadPK(filepath.Join(*artifactDir, "proving_key.bin"))
		if err != nil {
			return err
		}
		vk, _, err := loadVK(filepath.Join(*artifactDir, "verifying_key.bin"))
		if err != nil {
			return err
		}
		pkHash, err := sha256FileHex(filepath.Join(*artifactDir, "proving_key.bin"))
		if err != nil {
			return err
		}
		vkBinaryHash, err := sha256FileHex(filepath.Join(*artifactDir, "verifying_key.bin"))
		if err != nil {
			return err
		}
		vkJSONHash, err := sha256FileHex(filepath.Join(*artifactDir, "verifying_key.json"))
		if err != nil {
			return err
		}
		manifestHash, err := sha256FileHex(*manifestPath)
		if err != nil {
			return err
		}
		metadataPath := filepath.Join(*artifactDir, "circuit_metadata.json")
		metadata, err := artifacts.LoadCircuitMetadata(*artifactDir)
		if err != nil {
			return fmt.Errorf("load circuit metadata: %w", err)
		}
		if err := artifacts.ValidateCircuitMetadataForCircuit(metadata, *circuit, ccs); err != nil {
			return err
		}
		metadataHash, err := sha256FileHex(metadataPath)
		if err != nil {
			return err
		}
		setupProvenanceHash, err := sha256FileHex(
			filepath.Join(*artifactDir, "setup_provenance.json"),
		)
		if err != nil {
			return err
		}
		if metadata.SetupProvenanceSHA256Hex != setupProvenanceHash {
			return fmt.Errorf("circuit metadata does not bind setup_provenance.json")
		}
		if metadata.ProvingKeySHA256Hex != pkHash {
			return fmt.Errorf("circuit metadata does not bind proving_key.bin")
		}
		if metadata.VerifyingKeyBinarySHA256Hex != vkBinaryHash {
			return fmt.Errorf("circuit metadata does not bind verifying_key.bin")
		}
		if metadata.VerifyingKeyJSONSHA256Hex != vkJSONHash {
			return fmt.Errorf("circuit metadata does not bind verifying_key.json")
		}

		receipts := make([]fvProofReceipt, 0, len(witnessPaths))
		for index, witnessPath := range witnessPaths {
			proofCase := proofCases[index]
			payload, err := os.ReadFile(witnessPath)
			if err != nil {
				return fmt.Errorf("%s: read witness: %w", proofCase, err)
			}
			assignment, _, err := witnessAssignment(*circuit, payload)
			if err != nil {
				return fmt.Errorf("%s: %w", proofCase, err)
			}
			witnessVersion, err := witnessFormatVersion(payload)
			if err != nil {
				return fmt.Errorf("%s: %w", proofCase, err)
			}
			fullWitness, err := frontend.NewWitness(assignment, primitives.ScalarField())
			if err != nil {
				return fmt.Errorf("%s: full witness: %w", proofCase, err)
			}
			if err := ccs.IsSolved(fullWitness); err != nil {
				return fmt.Errorf("%s: solve failed: %w", proofCase, err)
			}
			publicWitness, err := fullWitness.Public()
			if err != nil {
				return fmt.Errorf("%s: public witness: %w", proofCase, err)
			}
			proof, err := groth16.Prove(ccs, pk, fullWitness)
			if err != nil {
				return fmt.Errorf("%s: prove: %w", proofCase, err)
			}
			if err := groth16.Verify(proof, vk, publicWitness); err != nil {
				return fmt.Errorf("%s: verify: %w", proofCase, err)
			}
			witnessHash := sha256.Sum256(payload)
			receipts = append(receipts, fvProofReceipt{
				SchemaVersion:               4,
				Circuit:                     *circuit,
				ProofCase:                   proofCase,
				WitnessFormatVersion:        witnessVersion,
				WitnessSHA256Hex:            fmt.Sprintf("%x", witnessHash[:]),
				SR1CSSHA256Hex:              fmt.Sprintf("%x", sum[:]),
				ConstraintManifestSHA256Hex: manifestHash,
				CircuitMetadataSHA256Hex:    metadataHash,
				SetupProvenanceSHA256Hex:    setupProvenanceHash,
				ProvingKeySHA256Hex:         pkHash,
				VerifyingKeyBinarySHA256Hex: vkBinaryHash,
				VerifyingKeyJSONSHA256Hex:   vkJSONHash,
				NbConstraints:               manifest.NbConstraints,
				NbPublicVariables:           manifest.NbPublic,
				NbSecretVariables:           manifest.NbSecret,
				ProvedAndVerifiedInProcess:  true,
			})
		}
		for index, receipt := range receipts {
			if err := writeJSONFile(proofReceiptPaths[index], receipt); err != nil {
				return fmt.Errorf("%s: write proof receipt: %w", receipt.ProofCase, err)
			}
			fmt.Fprintf(os.Stderr, "deployed keys prove-verify ok for %s/%s\n", *circuit, receipt.ProofCase)
		}
	}
	fmt.Fprintf(os.Stderr, "wrote FV artifacts for %s (constraints %d)\n", *circuit, manifest.NbConstraints)
	return nil
}

func validateFVProofJobFlags(
	prove bool,
	artifactDir string,
	proofCases []string,
	witnessPaths []string,
	proofReceiptPaths []string,
) error {
	if !prove {
		if artifactDir != "" || len(proofCases) != 0 || len(witnessPaths) != 0 || len(proofReceiptPaths) != 0 {
			return fmt.Errorf("--artifact-dir and proof-job flags require --prove")
		}
		return nil
	}
	if artifactDir == "" || len(witnessPaths) == 0 {
		return fmt.Errorf("--artifact-dir and at least one proof job are required with --prove")
	}
	if len(proofCases) != len(witnessPaths) || len(proofReceiptPaths) != len(witnessPaths) {
		return fmt.Errorf(
			"--proof-case, --witness, and --proof-receipt-out must have equal nonzero counts",
		)
	}
	seenCases := make(map[string]struct{}, len(proofCases))
	seenWitnesses := make(map[string]struct{}, len(witnessPaths))
	seenReceipts := make(map[string]struct{}, len(proofReceiptPaths))
	for index := range witnessPaths {
		if !isLowerSnakeIdentifier(proofCases[index]) {
			return fmt.Errorf("invalid proof case %q", proofCases[index])
		}
		if _, exists := seenCases[proofCases[index]]; exists {
			return fmt.Errorf("duplicate proof case %q", proofCases[index])
		}
		if _, exists := seenWitnesses[witnessPaths[index]]; exists {
			return fmt.Errorf("duplicate witness path %q", witnessPaths[index])
		}
		if _, exists := seenReceipts[proofReceiptPaths[index]]; exists {
			return fmt.Errorf("duplicate proof receipt path %q", proofReceiptPaths[index])
		}
		seenCases[proofCases[index]] = struct{}{}
		seenWitnesses[witnessPaths[index]] = struct{}{}
		seenReceipts[proofReceiptPaths[index]] = struct{}{}
	}
	return nil
}

func isLowerSnakeIdentifier(value string) bool {
	if value == "" {
		return false
	}
	for _, character := range value {
		if (character < 'a' || character > 'z') &&
			(character < '0' || character > '9') &&
			character != '_' {
			return false
		}
	}
	return true
}

func compileCircuitForFV(circuit string) (constraint.ConstraintSystem, *circuits.ConstraintManifest, error) {
	if family, ok := generated.NoteReshapeFamilyByLabel(circuit); ok {
		return circuits.CompileNoteReshapeForFV(family.Label, family.NIn, family.NOut)
	}
	if _, ok := generated.TransferFamilyByLabel(circuit); ok {
		return circuits.CompileTransferForFV()
	}
	if family, ok := generated.ShieldedIcs20WithdrawalFamilyByLabel(circuit); ok {
		return circuits.CompileShieldedIcs20WithdrawalForFV(family.Label, family.NIn)
	}
	return nil, nil, fmt.Errorf("unsupported FV circuit %q", circuit)
}

func witnessFormatVersion(payload []byte) (uint32, error) {
	const witnessHeaderLength = 8
	if len(payload) < witnessHeaderLength {
		return 0, fmt.Errorf(
			"witness payload is too short for magic and version: got %d bytes",
			len(payload),
		)
	}
	return binary.LittleEndian.Uint32(payload[4:witnessHeaderLength]), nil
}

func sha256FileHex(path string) (string, error) {
	file, err := os.Open(path)
	if err != nil {
		return "", fmt.Errorf("open %s for hashing: %w", path, err)
	}
	defer file.Close()
	hash := sha256.New()
	if _, err := io.Copy(hash, file); err != nil {
		return "", fmt.Errorf("hash %s: %w", path, err)
	}
	return fmt.Sprintf("%x", hash.Sum(nil)), nil
}

func writeJSONFile(path string, value any) error {
	if err := os.MkdirAll(filepath.Dir(path), 0o755); err != nil {
		return fmt.Errorf("create output directory: %w", err)
	}
	data, err := json.MarshalIndent(value, "", "  ")
	if err != nil {
		return fmt.Errorf("encode JSON: %w", err)
	}
	data = append(data, '\n')
	if err := os.WriteFile(path, data, 0o644); err != nil {
		return err
	}
	return nil
}

func runExportWiringTranscript(args []string) error {
	fs := flag.NewFlagSet("export-wiring-transcript", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "supported circuit label")
	outPath := fs.String("out", "", "output canonical wiring transcript path")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *outPath == "" {
		return fmt.Errorf("--circuit and --out are required")
	}
	var out string
	var err error
	if family, ok := generated.NoteReshapeFamilyByLabel(*circuit); ok {
		out, err = circuits.ExportNoteReshapeWiringTranscript(family.Label, family.NIn, family.NOut)
	} else if *circuit == "transfer" {
		out, err = circuits.ExportTransferWiringTranscript()
	} else {
		return fmt.Errorf("unsupported wiring transcript circuit %q", *circuit)
	}
	if err != nil {
		return err
	}
	if err := os.MkdirAll(filepath.Dir(*outPath), 0o755); err != nil {
		return fmt.Errorf("create output dir: %w", err)
	}
	if err := os.WriteFile(*outPath, []byte(out), 0o644); err != nil {
		return fmt.Errorf("write %s: %w", *outPath, err)
	}
	fmt.Fprintf(os.Stderr, "wrote %s\n", *outPath)
	return nil
}

func runExportManifest(args []string) error {
	fs := flag.NewFlagSet("export-manifest", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "supported circuit label")
	outPath := fs.String("out", "", "output constraint manifest path")
	sr1csPath := fs.String("sr1cs", "", "optional compiled .sr1cs path to hash into the manifest")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *outPath == "" {
		return fmt.Errorf("--circuit and --out are required")
	}
	var manifest *circuits.ConstraintManifest
	var err error
	if family, ok := generated.NoteReshapeFamilyByLabel(*circuit); ok {
		manifest, err = circuits.ExportNoteReshapeConstraintManifest(family.Label, family.NIn, family.NOut, *sr1csPath)
	} else if *circuit == "transfer" {
		manifest, err = circuits.ExportTransferConstraintManifest(*sr1csPath)
	} else if _, ok := generated.ShieldedIcs20WithdrawalFamilyByLabel(*circuit); ok {
		manifest, err = circuits.ExportShieldedIcs20WithdrawalConstraintManifest(*sr1csPath)
	} else {
		return fmt.Errorf("unsupported constraint manifest circuit %q", *circuit)
	}
	if err != nil {
		return err
	}
	if err := os.MkdirAll(filepath.Dir(*outPath), 0o755); err != nil {
		return fmt.Errorf("create output dir: %w", err)
	}
	if err := circuits.WriteConstraintManifest(*outPath, manifest); err != nil {
		return err
	}
	fmt.Fprintf(
		os.Stderr,
		"wrote %s (constraints=%d unclassified=%d)\n",
		*outPath,
		manifest.NbConstraints,
		manifest.Breakdown.UnclassifiedConstraints,
	)
	return nil
}

func runExportLean(args []string) error {
	fs := flag.NewFlagSet("export-lean", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "gadget-* label")
	namespace := fs.String("namespace", "Shieldd.GnarkFormal.Extracted", "Lean namespace")
	outPath := fs.String("out", "", "output Lean file")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *outPath == "" {
		return fmt.Errorf("--circuit and --out are required")
	}
	instance, ok := gadgetCircuit(*circuit)
	if !ok {
		return fmt.Errorf("Lean export is gadget-scope only; %q is not a gadget label", *circuit)
	}
	if err := os.MkdirAll(filepath.Dir(*outPath), 0o755); err != nil {
		return fmt.Errorf("create output dir: %w", err)
	}
	// The bare scalar-mul gadgets carry a 251/128-rung scalarMulStep ladder that
	// is intractable to cross as a flat continuation, so render it as a recursive
	// `scalarMulStep_ladder`. Composite circuits (rvk/dtk/net-balance/note reshape)
	// embed the same ladder but their bridge proofs already cross the flat form by
	// definitional unfolding, so they stay flat.
	var foldGadgets []string
	switch *circuit {
	case "gadget-scalar-mul-le-251", "gadget-scalar-mul-le-128",
		"gadget-conservation-net-balance-commitment":
		foldGadgets = []string{"scalarMulStep"}
	}
	out, err := extractor.CircuitToLeanWithFold(instance, ecc.BLS12_377, *namespace, foldGadgets)
	if err != nil {
		return fmt.Errorf("extract Lean for %s: %w", *circuit, err)
	}
	if err := os.WriteFile(*outPath, []byte(out+"\n"), 0o644); err != nil {
		return fmt.Errorf("write %s: %w", *outPath, err)
	}
	fmt.Fprintf(os.Stderr, "wrote %s\n", *outPath)
	return nil
}

func runExtractBitInputs(args []string) error {
	fs := flag.NewFlagSet("extract-bit-inputs", flag.ContinueOnError)
	label := fs.String("label", "", "gadget label used for generated ACL2 constants")
	inPath := fs.String("in", "", "input Axe Lisp R1CS file")
	outPath := fs.String("out", "", "output ACL2 bit-input constants file")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *label == "" || *inPath == "" || *outPath == "" {
		return fmt.Errorf("--label, --in, and --out are required")
	}
	data, err := os.ReadFile(*inPath)
	if err != nil {
		return fmt.Errorf("read %s: %w", *inPath, err)
	}
	symbols, err := artifacts.ExtractBooleanBitInputsFromAxeLisp(data)
	if err != nil {
		return err
	}
	runs, err := artifacts.ContiguousInternalRuns(symbols)
	if err != nil {
		return err
	}
	if err := os.MkdirAll(filepath.Dir(*outPath), 0o755); err != nil {
		return fmt.Errorf("create output dir: %w", err)
	}
	if err := artifacts.WriteAxeLispBitInputs(*outPath, *label, symbols, runs); err != nil {
		return err
	}
	fmt.Fprintln(os.Stderr, artifacts.FormatAxeBitInputsReport(symbols, runs))
	return nil
}

func runExportR1CS(args []string) error {
	fs := flag.NewFlagSet("export-r1cs", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "transferNxM, note reshape, shielded-ics20-withdrawal, or gadget-* label")
	outPath := fs.String("out", "", "output path")
	format := fs.String("format", "picus", "picus (.sr1cs sexpr), axe-json (named-wire R1CS), or axe-lisp (Kestrel sparse R1CS)")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *outPath == "" {
		return fmt.Errorf("--circuit and --out are required")
	}
	if err := os.MkdirAll(filepath.Dir(*outPath), 0o755); err != nil {
		return fmt.Errorf("create output dir: %w", err)
	}
	ccs, compileMS, err := compileCircuit(*circuit)
	if err != nil {
		return err
	}
	switch *format {
	case "picus":
		if instance, ok := gadgetCircuit(*circuit); ok {
			err = artifacts.WriteConstraintSystem(*outPath, ccs, instance)
		} else {
			err = artifacts.WriteConstraintSystem(*outPath, ccs)
		}
		if err != nil {
			return err
		}
	case "axe-json":
		instance, ok := gadgetCircuit(*circuit)
		if !ok {
			return fmt.Errorf("axe-json export is gadget-scope only; %q is not a gadget label", *circuit)
		}
		if err := artifacts.WriteAxeJSON(*outPath, ccs, instance); err != nil {
			return err
		}
	case "axe-lisp":
		instance, ok := gadgetCircuit(*circuit)
		if !ok {
			return fmt.Errorf("axe-lisp export is gadget-scope only; %q is not a gadget label", *circuit)
		}
		if err := artifacts.WriteAxeLisp(*outPath, *circuit, ccs, instance); err != nil {
			return err
		}
	default:
		return fmt.Errorf("unknown --format %q (want picus, axe-json, or axe-lisp)", *format)
	}
	fmt.Fprintf(os.Stderr, "wrote %s (compile %.2fms)\n", *outPath, compileMS)
	return nil
}

// gadgetCircuit returns the gadget circuit instance for schema-based wire
// naming (axe-json export). Family circuits are not gadget-scope and return
// false.
func gadgetCircuit(label string) (frontend.Circuit, bool) {
	switch label {
	case "gadget-poseidon-hash1":
		return &circuits.PoseidonHash1Gadget{}, true
	case "gadget-poseidon2":
		return &circuits.PoseidonHash2Gadget{}, true
	case "gadget-poseidon-hash4":
		return &circuits.PoseidonHash4Gadget{}, true
	case "gadget-poseidon-hash5":
		return &circuits.PoseidonHash5Gadget{}, true
	case "gadget-poseidon-hash6":
		return &circuits.PoseidonHash6Gadget{}, true
	case "gadget-poseidon-hash7":
		return &circuits.PoseidonHash7Gadget{}, true
	case "gadget-quad-path-round":
		return &circuits.QuadPathRoundGadget{}, true
	case "gadget-quad-path-two-round":
		return &circuits.QuadPathTwoRoundGadget{}, true
	case "gadget-quad-path-1":
		return &circuits.QuadPath1Gadget{}, true
	case "gadget-quad-path-2":
		return &circuits.QuadPath2Gadget{}, true
	case "gadget-quad-path-4":
		return &circuits.QuadPath4Gadget{}, true
	case "gadget-quad-path-16":
		return &circuits.QuadPath16Gadget{}, true
	case "gadget-quad-path-24":
		return &circuits.QuadPath24Gadget{}, true
	case "gadget-nullifier":
		return &circuits.NullifierGadget{}, true
	case "gadget-iszero":
		return &circuits.IsZeroGadget{}, true
	case "gadget-imt-gap":
		return &circuits.AssetRegistryGapGadget{}, true
	case "gadget-canonical-fq-bits":
		return &circuits.CanonicalFqBitsGadget{}, true
	case "gadget-bool-select":
		return &circuits.BoolSelectGadget{}, true
	case "gadget-decaf-assert-equivalent":
		return &circuits.AssertEquivalentGadget{}, true
	case "gadget-decaf-compress-to-field":
		return &circuits.CompressToFieldGadget{}, true
	case "gadget-decaf-compress-to-field-core":
		return &circuits.CompressToFieldCoreGadget{}, true
	case "gadget-decaf-encode-to-curve":
		return &circuits.EncodeToCurveGadget{}, true
	case "gadget-decaf-encode-to-curve-core":
		return &circuits.EncodeToCurveCoreGadget{}, true
	case "gadget-decaf-edwards-add":
		return &circuits.EdwardsAddGadget{}, true
	case "gadget-decaf-edwards-double":
		return &circuits.EdwardsDoubleGadget{}, true
	case "gadget-decaf-edwards-neg":
		return &circuits.EdwardsNegGadget{}, true
	case "gadget-ivk-mod-r":
		return &circuits.IvkModRGadget{}, true
	case "gadget-scalar-mul-step":
		return &circuits.ScalarMulStepGadget{}, true
	case "gadget-scalar-mul-two-step":
		return &circuits.ScalarMulTwoStepGadget{}, true
	case "gadget-ack-two-step":
		return &circuits.AckTwoStepGadget{}, true
	case "gadget-dleq":
		return &circuits.DLEQGadget{}, true
	case "gadget-scalar-mul-le-251":
		return &circuits.ScalarMulLE251Gadget{}, true
	case "gadget-scalar-mul-le-128":
		return &circuits.ScalarMulLE128Gadget{}, true
	case "gadget-rvk":
		return &circuits.DecafRvkGadget{}, true
	case "gadget-dtk":
		return &circuits.DecafDtkGadget{}, true
	case "gadget-net-balance-commitment":
		return &circuits.NetBalanceCommitmentGadget{}, true
	case "gadget-conservation-net-balance-commitment":
		return &circuits.ConservationNetBalanceCommitmentGadget{}, true
	case "gadget-net-balance-commitment2":
		return &circuits.NetBalanceCommitment2Gadget{}, true
	default:
		return nil, false
	}
}

func runSetup(args []string) error {
	fs := flag.NewFlagSet("setup", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "transferNxM, note reshape, or shielded-ics20-withdrawal family label")
	outDir := fs.String("out-dir", "", "output directory")
	reuseExistingKeys := fs.Bool(
		"reuse-existing-keys",
		false,
		"refresh metadata for a byte-identical SR1CS after proving with existing keys",
	)
	var proofCases repeatedStringFlag
	var witnessPaths repeatedStringFlag
	fs.Var(&proofCases, "proof-case", "canonical generation self-test case; repeat once per --witness")
	fs.Var(&witnessPaths, "witness", "canonical generation self-test witness; repeat once per --proof-case")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *outDir == "" {
		return fmt.Errorf("--circuit and --out-dir are required")
	}
	if err := validateSetupSelfTestFlags(proofCases, witnessPaths); err != nil {
		return err
	}
	if err := os.MkdirAll(*outDir, 0o755); err != nil {
		return fmt.Errorf("create output dir: %w", err)
	}
	stageDir, err := os.MkdirTemp(*outDir, ".setup-")
	if err != nil {
		return fmt.Errorf("create setup staging dir: %w", err)
	}
	defer os.RemoveAll(stageDir)

	ccs, compileMS, err := compileCircuit(*circuit)
	if err != nil {
		return err
	}

	sr1csPath := filepath.Join(stageDir, *circuit+".sr1cs")
	if instance, ok := gadgetCircuit(*circuit); ok {
		err = artifacts.WriteConstraintSystem(sr1csPath, ccs, instance)
	} else {
		err = artifacts.WriteConstraintSystem(sr1csPath, ccs)
	}
	if err != nil {
		return fmt.Errorf("write constraint system: %w", err)
	}

	var pk *groth16bls.ProvingKey
	var vk *groth16bls.VerifyingKey
	setupMS := 0.0
	mode := "fresh_setup"
	pkPath := filepath.Join(stageDir, "proving_key.bin")
	vkPath := filepath.Join(stageDir, "verifying_key.bin")
	vkJSONPath := filepath.Join(stageDir, "verifying_key.json")
	if *reuseExistingKeys {
		mode = "reused_existing_keys"
		deployedSR1CSPath := filepath.Join(*outDir, *circuit+".sr1cs")
		equal, err := filesEqual(sr1csPath, deployedSR1CSPath)
		if err != nil {
			return fmt.Errorf("compare compiled and deployed SR1CS: %w", err)
		}
		if !equal {
			return fmt.Errorf(
				"--reuse-existing-keys requires compiled SR1CS bytes to equal %s",
				deployedSR1CSPath,
			)
		}
		pkPath = filepath.Join(*outDir, "proving_key.bin")
		vkPath = filepath.Join(*outDir, "verifying_key.bin")
		vkJSONPath = filepath.Join(*outDir, "verifying_key.json")
		pk, _, err = loadPK(pkPath)
		if err != nil {
			return fmt.Errorf("load existing proving key: %w", err)
		}
		vk, _, err = loadVK(vkPath)
		if err != nil {
			return fmt.Errorf("load existing verifying key: %w", err)
		}
		if err := validateVerifyingKeyJSON(vkJSONPath, vk); err != nil {
			return fmt.Errorf("validate existing verifying key JSON: %w", err)
		}
	} else {
		setupStart := time.Now()
		pkIface, vkIface, err := groth16.Setup(ccs)
		if err != nil {
			return fmt.Errorf("setup: %w", err)
		}
		setupMS = time.Since(setupStart).Seconds() * 1000
		pk = pkIface.(*groth16bls.ProvingKey)
		vk = vkIface.(*groth16bls.VerifyingKey)
		if err := writePK(pkPath, pk); err != nil {
			return err
		}
		if err := writeVK(vkPath, vk); err != nil {
			return err
		}
		if err := artifacts.WriteJSON(
			vkJSONPath,
			artifacts.EncodeVerifyingKeyJSON(vk),
		); err != nil {
			return fmt.Errorf("write verifying key json: %w", err)
		}
	}

	generationSelfTests, err := runSetupSelfTests(
		ccs,
		pk,
		vk,
		*circuit,
		proofCases,
		witnessPaths,
	)
	if err != nil {
		return err
	}

	pkSize, err := artifacts.FileSize(pkPath)
	if err != nil {
		return fmt.Errorf("stat proving key: %w", err)
	}
	vkSize, err := artifacts.FileSize(vkPath)
	if err != nil {
		return fmt.Errorf("stat verifying key: %w", err)
	}

	sr1csHash, err := artifacts.SHA256HexFile(sr1csPath)
	if err != nil {
		return fmt.Errorf("hash constraint system: %w", err)
	}
	pkHash, err := artifacts.SHA256HexFile(pkPath)
	if err != nil {
		return fmt.Errorf("hash proving key: %w", err)
	}
	vkBinaryHash, err := artifacts.SHA256HexFile(vkPath)
	if err != nil {
		return fmt.Errorf("hash verifying key binary: %w", err)
	}
	vkJSONHash, err := artifacts.SHA256HexFile(vkJSONPath)
	if err != nil {
		return fmt.Errorf("hash verifying key json: %w", err)
	}

	provenance := setupProvenance{
		Schema:                      setupProvenanceSchema,
		Curve:                       "bls12-377",
		Circuit:                     *circuit,
		Mode:                        mode,
		SR1CSSHA256Hex:              sr1csHash,
		ProvingKeySHA256Hex:         pkHash,
		VerifyingKeyBinarySHA256Hex: vkBinaryHash,
		VerifyingKeyJSONSHA256Hex:   vkJSONHash,
		GenerationSelfTests:         generationSelfTests,
		SetupTranscript:             "not_recorded",
		ToxicWasteErasure:           "not_mechanically_verified",
	}
	provenancePath := filepath.Join(stageDir, "setup_provenance.json")
	if err := artifacts.WriteJSON(provenancePath, provenance); err != nil {
		return fmt.Errorf("write setup provenance: %w", err)
	}
	provenanceHash, err := artifacts.SHA256HexFile(provenancePath)
	if err != nil {
		return fmt.Errorf("hash setup provenance: %w", err)
	}

	metadata := artifacts.CircuitMetadataJSON{
		Schema:                      artifacts.CircuitMetadataSchema,
		Curve:                       "bls12-377",
		Circuit:                     *circuit,
		ProvingKeySize:              pkSize,
		VerifyingKeySize:            vkSize,
		SR1CSSHA256Hex:              sr1csHash,
		SetupProvenanceSHA256Hex:    provenanceHash,
		ProvingKeySHA256Hex:         pkHash,
		VerifyingKeyBinarySHA256Hex: vkBinaryHash,
		VerifyingKeyJSONSHA256Hex:   vkJSONHash,
	}
	artifacts.FillCircuitMetadataShape(&metadata, ccs)
	metadataPath := filepath.Join(stageDir, "circuit_metadata.json")
	if err := artifacts.WriteJSON(metadataPath, metadata); err != nil {
		return fmt.Errorf("write circuit metadata: %w", err)
	}

	// Metadata is the publication marker and is replaced last. Reuse mode
	// leaves the exact deployed SR1CS and key bytes untouched.
	publishNames := []string{"setup_provenance.json", "circuit_metadata.json"}
	if !*reuseExistingKeys {
		publishNames = []string{
			*circuit + ".sr1cs",
			"proving_key.bin",
			"verifying_key.bin",
			"verifying_key.json",
			"setup_provenance.json",
			"circuit_metadata.json",
		}
	}
	for _, name := range publishNames {
		if err := publishSetupArtifact(
			filepath.Join(stageDir, name),
			filepath.Join(*outDir, name),
		); err != nil {
			return fmt.Errorf("publish setup artifact %s: %w", name, err)
		}
	}

	fmt.Fprintf(
		os.Stderr,
		"wrote %s/%s (mode %s, compile %.2fms, setup %.2fms, generation self-tests %d, pk %d bytes, vk %d bytes)\n",
		*outDir,
		*circuit,
		mode,
		compileMS,
		setupMS,
		len(generationSelfTests),
		pkSize,
		vkSize,
	)
	return nil
}

func validateSetupSelfTestFlags(proofCases, witnessPaths []string) error {
	if len(proofCases) == 0 || len(proofCases) != len(witnessPaths) {
		return fmt.Errorf(
			"--proof-case and --witness must have equal nonzero counts",
		)
	}
	seenCases := make(map[string]struct{}, len(proofCases))
	seenWitnesses := make(map[string]struct{}, len(witnessPaths))
	for index := range proofCases {
		if !isLowerSnakeIdentifier(proofCases[index]) {
			return fmt.Errorf("invalid proof case %q", proofCases[index])
		}
		if _, exists := seenCases[proofCases[index]]; exists {
			return fmt.Errorf("duplicate proof case %q", proofCases[index])
		}
		if _, exists := seenWitnesses[witnessPaths[index]]; exists {
			return fmt.Errorf("duplicate witness path %q", witnessPaths[index])
		}
		seenCases[proofCases[index]] = struct{}{}
		seenWitnesses[witnessPaths[index]] = struct{}{}
	}
	return nil
}

func runSetupSelfTests(
	ccs constraint.ConstraintSystem,
	pk *groth16bls.ProvingKey,
	vk *groth16bls.VerifyingKey,
	circuit string,
	proofCases, witnessPaths []string,
) ([]setupGenerationSelfTest, error) {
	tests := make([]setupGenerationSelfTest, 0, len(proofCases))
	for index, proofCase := range proofCases {
		payload, err := os.ReadFile(witnessPaths[index])
		if err != nil {
			return nil, fmt.Errorf("%s: read setup witness: %w", proofCase, err)
		}
		assignment, _, err := witnessAssignment(circuit, payload)
		if err != nil {
			return nil, fmt.Errorf("%s: decode setup witness: %w", proofCase, err)
		}
		witnessVersion, err := witnessFormatVersion(payload)
		if err != nil {
			return nil, fmt.Errorf("%s: %w", proofCase, err)
		}
		fullWitness, err := frontend.NewWitness(assignment, primitives.ScalarField())
		if err != nil {
			return nil, fmt.Errorf("%s: construct setup witness: %w", proofCase, err)
		}
		if err := ccs.IsSolved(fullWitness); err != nil {
			return nil, fmt.Errorf("%s: setup witness is unsatisfied: %w", proofCase, err)
		}
		publicWitness, err := fullWitness.Public()
		if err != nil {
			return nil, fmt.Errorf("%s: public setup witness: %w", proofCase, err)
		}
		proof, err := groth16.Prove(ccs, pk, fullWitness)
		if err != nil {
			return nil, fmt.Errorf("%s: setup self-test prove: %w", proofCase, err)
		}
		if err := groth16.Verify(proof, vk, publicWitness); err != nil {
			return nil, fmt.Errorf("%s: setup self-test verify: %w", proofCase, err)
		}
		witnessHash := sha256.Sum256(payload)
		tests = append(tests, setupGenerationSelfTest{
			ProofCase:                  proofCase,
			WitnessFormatVersion:       witnessVersion,
			WitnessSHA256Hex:           fmt.Sprintf("%x", witnessHash[:]),
			ProvedAndVerifiedInProcess: true,
		})
	}
	return tests, nil
}

func filesEqual(first, second string) (bool, error) {
	firstBytes, err := os.ReadFile(first)
	if err != nil {
		return false, err
	}
	secondBytes, err := os.ReadFile(second)
	if err != nil {
		return false, err
	}
	return bytes.Equal(firstBytes, secondBytes), nil
}

func validateVerifyingKeyJSON(path string, vk *groth16bls.VerifyingKey) error {
	want, err := artifacts.EncodeCanonicalJSON(
		artifacts.EncodeVerifyingKeyJSON(vk),
	)
	if err != nil {
		return err
	}
	raw, err := os.ReadFile(path)
	if err != nil {
		return err
	}
	parsed, err := artifacts.DecodeCanonicalVerifyingKeyJSON(raw)
	if err != nil {
		return err
	}
	got, err := artifacts.EncodeCanonicalJSON(parsed)
	if err != nil {
		return err
	}
	if !bytes.Equal(want, got) {
		return fmt.Errorf(
			"verifying_key.json does not encode the same key as verifying_key.bin",
		)
	}
	return nil
}

func publishSetupArtifact(source, target string) error {
	return os.Rename(source, target)
}

func runProve(args []string) error {
	fs := flag.NewFlagSet("prove", flag.ContinueOnError)
	circuit := fs.String("circuit", "", "transferNxM, note reshape, or shielded-ics20-withdrawal family label")
	witnessPath := fs.String("witness", "", "witness binary path")
	artifactDir := fs.String("artifact-dir", "", "artifact directory")
	outPath := fs.String("out", "", "output artifacts JSON path")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *circuit == "" || *witnessPath == "" || *artifactDir == "" || *outPath == "" {
		return fmt.Errorf("--circuit, --witness, --artifact-dir, and --out are required")
	}

	witnessPayload, err := os.ReadFile(*witnessPath)
	if err != nil {
		return fmt.Errorf("read witness: %w", err)
	}

	ccs, compileMS, err := compileCircuit(*circuit)
	if err != nil {
		return err
	}
	metadata, err := artifacts.LoadCircuitMetadata(*artifactDir)
	if err != nil {
		return fmt.Errorf("load circuit metadata: %w", err)
	}
	if err := artifacts.ValidateCircuitMetadataForCircuit(metadata, *circuit, ccs); err != nil {
		return err
	}

	pk, loadPKMS, err := loadPK(filepath.Join(*artifactDir, "proving_key.bin"))
	if err != nil {
		return err
	}
	vk, loadVKMS, err := loadVK(filepath.Join(*artifactDir, "verifying_key.bin"))
	if err != nil {
		return err
	}

	assignment, witnessSummary, err := witnessAssignment(*circuit, witnessPayload)
	if err != nil {
		return err
	}
	fullWitness, err := frontend.NewWitness(assignment, primitives.ScalarField())
	if err != nil {
		return fmt.Errorf("full witness: %w", err)
	}
	publicWitness, err := fullWitness.Public()
	if err != nil {
		return fmt.Errorf("public witness: %w", err)
	}

	proveStart := time.Now()
	proofIface, err := groth16.Prove(ccs, pk, fullWitness)
	if err != nil {
		return fmt.Errorf("prove: %w", err)
	}
	proveMS := time.Since(proveStart).Seconds() * 1000

	verifyStart := time.Now()
	if err := groth16.Verify(proofIface, vk, publicWitness); err != nil {
		return fmt.Errorf("gnark verify: %w", err)
	}
	verifyMS := time.Since(verifyStart).Seconds() * 1000

	proof := proofIface.(*groth16bls.Proof)
	artifactJSON := artifacts.ArtifactJSON{
		Curve:                "bls12-377",
		Circuit:              *circuit,
		PublicInputs:         []string{witnessSummary.ClaimedStatementHash},
		StatementFields:      witnessSummary.StatementFields,
		ClaimedStatementHash: witnessSummary.ClaimedStatementHash,
		Proof:                artifacts.EncodeProofJSON(proof),
		VerifyingKey:         artifacts.EncodeVerifyingKeyJSON(vk),
		Timings: artifacts.TimingsJSON{
			CompileMS: compileMS,
			LoadPKMS:  loadPKMS,
			LoadVKMS:  loadVKMS,
			ProveMS:   proveMS,
			VerifyMS:  verifyMS,
		},
	}
	if err := artifacts.WriteJSON(*outPath, artifactJSON); err != nil {
		return fmt.Errorf("write artifacts: %w", err)
	}
	return nil
}

// runCheckVKJSON verifies verifying_key.json is a faithful re-encoding of
// verifying_key.bin, so the metadata pin over the JSON binds the deployed bytes.
func runCheckVKJSON(args []string) error {
	fs := flag.NewFlagSet("check-vk-json", flag.ContinueOnError)
	artifactDir := fs.String("artifact-dir", "", "artifact directory containing verifying_key.{bin,json}")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *artifactDir == "" {
		return fmt.Errorf("check-vk-json: --artifact-dir required")
	}
	vk, _, err := loadVK(filepath.Join(*artifactDir, "verifying_key.bin"))
	if err != nil {
		return err
	}
	want, err := artifacts.EncodeCanonicalJSON(artifacts.EncodeVerifyingKeyJSON(vk))
	if err != nil {
		return err
	}
	raw, err := os.ReadFile(filepath.Join(*artifactDir, "verifying_key.json"))
	if err != nil {
		return err
	}
	parsed, err := artifacts.DecodeCanonicalVerifyingKeyJSON(raw)
	if err != nil {
		return fmt.Errorf("parse verifying_key.json: %w", err)
	}
	got, err := artifacts.EncodeCanonicalJSON(parsed)
	if err != nil {
		return err
	}
	if !bytes.Equal(want, got) {
		return fmt.Errorf("verifying_key.json does not encode the same key as verifying_key.bin")
	}
	fmt.Println("verifying_key.json matches verifying_key.bin")
	return nil
}

func runReplay(args []string) error {
	fs := flag.NewFlagSet("replay", flag.ContinueOnError)
	circuit := fs.String("circuit", "transfer", "transfer, note reshape, or shielded-ics20-withdrawal family label")
	witnessPath := fs.String("witness", "", "witness binary path")
	artifactDir := fs.String("artifact-dir", "", "artifact directory for prove mode")
	mode := fs.String("mode", "decode", "decode, solve, or prove")
	rawOut := fs.String("raw-out", "", "optional file for raw dump")
	assignmentOut := fs.String("assignment-out", "", "optional file for assignment dump")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *witnessPath == "" {
		return fmt.Errorf("--witness is required")
	}

	payload, err := os.ReadFile(*witnessPath)
	if err != nil {
		return fmt.Errorf("read witness: %w", err)
	}
	switch *circuit {
	default:
		if _, ok := generated.TransferFamilyByLabel(*circuit); !ok {
			if _, ok := generated.NoteReshapeFamilyByLabel(*circuit); !ok {
				if _, ok := generated.ShieldedIcs20WithdrawalFamilyByLabel(*circuit); !ok {
					return fmt.Errorf("unsupported --circuit %q", *circuit)
				}
			}
		}
		if *rawOut != "" {
			return fmt.Errorf("--raw-out is not implemented yet for --circuit %s", *circuit)
		}
		assignment, _, err := witnessAssignment(*circuit, payload)
		if err != nil {
			return err
		}
		if err := writeOrStdout(*assignmentOut, fmt.Sprintf("%#v\n", assignment)); err != nil {
			return err
		}
	}
	if *mode == "decode" {
		return nil
	}
	if *mode != "solve" && *mode != "prove" {
		return fmt.Errorf("unsupported --mode %q", *mode)
	}

	compileStart := time.Now()
	var (
		assignment frontend.Circuit
		ccs        constraint.ConstraintSystem
	)
	switch *circuit {
	default:
		if _, ok := generated.TransferFamilyByLabel(*circuit); ok {
			assignment, _, err = abi.NewTransferCircuitAssignmentFromWitnessV17(payload)
			if err != nil {
				return err
			}
			ccs, err = frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewTransferCircuit())
			break
		}
		if family, ok := generated.NoteReshapeFamilyByLabel(*circuit); ok {
			assignment, _, err = abi.NewNoteReshapeCircuitAssignmentFromWitnessV4(payload)
			if err != nil {
				return err
			}
			ccs, err = frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewNoteReshapeCircuit(family.Label, family.NIn, family.NOut))
			break
		}
		if family, ok := generated.ShieldedIcs20WithdrawalFamilyByLabel(*circuit); ok {
			assignment, _, err = abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV9(payload)
			if err != nil {
				return err
			}
			ccs, err = frontend.Compile(
				primitives.ScalarField(),
				r1cs.NewBuilder,
				circuits.NewShieldedIcs20WithdrawalCircuit(family.NIn),
			)
			break
		}
		return fmt.Errorf("unsupported --circuit %q", *circuit)
	}
	if err != nil {
		return err
	}
	compileMS := time.Since(compileStart).Seconds() * 1000
	fullWitness, err := frontend.NewWitness(assignment, primitives.ScalarField())
	if err != nil {
		return err
	}
	solveStart := time.Now()
	if err := ccs.IsSolved(fullWitness); err != nil {
		return fmt.Errorf("solve failed after %.2fms: %w", time.Since(solveStart).Seconds()*1000, err)
	}
	if *mode == "solve" {
		fmt.Fprintf(os.Stderr, "solve ok (compile %.2fms, solve %.2fms)\n", compileMS, time.Since(solveStart).Seconds()*1000)
		return nil
	}
	if *artifactDir == "" {
		return fmt.Errorf("--artifact-dir is required for --mode prove")
	}

	pk, _, err := loadPK(filepath.Join(*artifactDir, "proving_key.bin"))
	if err != nil {
		return err
	}
	vk, _, err := loadVK(filepath.Join(*artifactDir, "verifying_key.bin"))
	if err != nil {
		return err
	}
	publicWitness, err := fullWitness.Public()
	if err != nil {
		return err
	}
	proofIface, err := groth16.Prove(ccs, pk, fullWitness)
	if err != nil {
		return err
	}
	if err := groth16.Verify(proofIface, vk, publicWitness); err != nil {
		return err
	}
	return nil
}

func runVerifyBench(args []string) error {
	fs := flag.NewFlagSet("verify-bench", flag.ContinueOnError)
	artifactPath := fs.String("artifacts", "", "path to proof artifact JSON")
	outPath := fs.String("out", "", "output verifier benchmark JSON path")
	warmupIterations := fs.Int("warmup-iterations", 3, "number of untimed verify warmup iterations")
	measuredIterations := fs.Int("measured-iterations", 20, "number of measured verify iterations")
	if err := fs.Parse(args); err != nil {
		return err
	}
	if *artifactPath == "" || *outPath == "" {
		return fmt.Errorf("--artifacts and --out are required")
	}
	if *warmupIterations < 0 || *measuredIterations <= 0 {
		return fmt.Errorf("--warmup-iterations must be >= 0 and --measured-iterations must be > 0")
	}

	loadStart := time.Now()
	artifactsJSON, err := artifacts.LoadArtifactJSON(*artifactPath)
	if err != nil {
		return err
	}
	if artifactsJSON.Curve != "bls12-377" {
		return fmt.Errorf("unexpected curve %q", artifactsJSON.Curve)
	}
	if len(artifactsJSON.PublicInputs) != 1 {
		return fmt.Errorf("expected exactly one public input, got %d", len(artifactsJSON.PublicInputs))
	}
	if artifactsJSON.PublicInputs[0] != artifactsJSON.ClaimedStatementHash {
		return fmt.Errorf("public input does not match claimed statement hash")
	}

	proof, err := decodeProof(artifactsJSON.Proof)
	if err != nil {
		return fmt.Errorf("decode proof: %w", err)
	}
	vk, err := decodeVerifyingKey(artifactsJSON.VerifyingKey)
	if err != nil {
		return fmt.Errorf("decode verifying key: %w", err)
	}
	publicWitness, err := buildPublicWitness(artifactsJSON.PublicInputs)
	if err != nil {
		return fmt.Errorf("build public witness: %w", err)
	}
	loadOrDecodeMS := time.Since(loadStart).Seconds() * 1000

	prepareStart := time.Now()
	if err := vk.Precompute(); err != nil {
		return fmt.Errorf("precompute verifying key: %w", err)
	}
	prepareMS := time.Since(prepareStart).Seconds() * 1000

	for i := 0; i < *warmupIterations; i++ {
		if err := groth16.Verify(proof, vk, publicWitness); err != nil {
			return fmt.Errorf("warmup verify %d failed: %w", i, err)
		}
	}

	verifySamples := make([]float64, 0, *measuredIterations)
	for i := 0; i < *measuredIterations; i++ {
		verifyStart := time.Now()
		if err := groth16.Verify(proof, vk, publicWitness); err != nil {
			return fmt.Errorf("measured verify %d failed: %w", i, err)
		}
		verifySamples = append(verifySamples, time.Since(verifyStart).Seconds()*1000)
	}
	verifyMeanMS, verifyMedianMS, verifyMinMS, verifyMaxMS := artifacts.ComputeDurationStats(verifySamples)

	report := artifacts.VerifyBenchResultJSON{
		Curve:                artifactsJSON.Curve,
		Circuit:              artifactsJSON.Circuit,
		ClaimedStatementHash: artifactsJSON.ClaimedStatementHash,
		LoadOrDecodeMS:       loadOrDecodeMS,
		PrepareMS:            prepareMS,
		VerifyWarmupIters:    *warmupIterations,
		VerifyMeasuredIters:  *measuredIterations,
		VerifyMeanMS:         verifyMeanMS,
		VerifyMedianMS:       verifyMedianMS,
		VerifyMinMS:          verifyMinMS,
		VerifyMaxMS:          verifyMaxMS,
	}
	return artifacts.WriteJSON(*outPath, &report)
}

func compileCircuit(circuit string) (constraint.ConstraintSystem, float64, error) {
	compileStart := time.Now()
	switch circuit {
	case "gadget-poseidon-hash1":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.PoseidonHash1Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-poseidon2":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.PoseidonHash2Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-poseidon-hash4":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.PoseidonHash4Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-poseidon-hash5":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.PoseidonHash5Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-poseidon-hash6":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.PoseidonHash6Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-poseidon-hash7":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.PoseidonHash7Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-round":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPathRoundGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-two-round":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPathTwoRoundGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-1":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPath1Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-2":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPath2Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-4":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPath4Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-16":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPath16Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-nullifier":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.NullifierGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-iszero":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.IsZeroGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-imt-gap":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.AssetRegistryGapGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-canonical-fq-bits":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.CanonicalFqBitsGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-bool-select":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.BoolSelectGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-quad-path-24":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.QuadPath24Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-assert-equivalent":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.AssertEquivalentGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-compress-to-field":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.CompressToFieldGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-compress-to-field-core":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.CompressToFieldCoreGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-encode-to-curve":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.EncodeToCurveGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-encode-to-curve-core":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.EncodeToCurveCoreGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-edwards-add":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.EdwardsAddGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-edwards-double":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.EdwardsDoubleGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-decaf-edwards-neg":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.EdwardsNegGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-ivk-mod-r":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.IvkModRGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-scalar-mul-step":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.ScalarMulStepGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-scalar-mul-two-step":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.ScalarMulTwoStepGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-ack-two-step":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.AckTwoStepGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-dleq":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.DLEQGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-scalar-mul-le-251":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.ScalarMulLE251Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-scalar-mul-le-128":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.ScalarMulLE128Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-rvk":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.DecafRvkGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-dtk":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.DecafDtkGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-net-balance-commitment":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.NetBalanceCommitmentGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-conservation-net-balance-commitment":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.ConservationNetBalanceCommitmentGadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	case "gadget-net-balance-commitment2":
		ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, &circuits.NetBalanceCommitment2Gadget{})
		return ccs, time.Since(compileStart).Seconds() * 1000, err
	default:
		if _, ok := generated.TransferFamilyByLabel(circuit); ok {
			ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewTransferCircuit())
			return ccs, time.Since(compileStart).Seconds() * 1000, err
		}
		if family, ok := generated.NoteReshapeFamilyByLabel(circuit); ok {
			ccs, err := frontend.Compile(primitives.ScalarField(), r1cs.NewBuilder, circuits.NewNoteReshapeCircuit(family.Label, family.NIn, family.NOut))
			return ccs, time.Since(compileStart).Seconds() * 1000, err
		}
		if family, ok := generated.ShieldedIcs20WithdrawalFamilyByLabel(circuit); ok {
			ccs, err := frontend.Compile(
				primitives.ScalarField(),
				r1cs.NewBuilder,
				circuits.NewShieldedIcs20WithdrawalCircuit(family.NIn),
			)
			return ccs, time.Since(compileStart).Seconds() * 1000, err
		}
		return nil, 0, fmt.Errorf("unsupported circuit %q", circuit)
	}
}

func witnessAssignment(circuit string, witnessPayload []byte) (frontend.Circuit, witnessSummary, error) {
	switch circuit {
	default:
		if _, ok := generated.TransferFamilyByLabel(circuit); ok {
			decoded, _, err := abi.DecodeTransferWitnessV17(witnessPayload)
			if err != nil {
				return nil, witnessSummary{}, err
			}
			statementFields, err := abi.ReconstructedTransferStatementFieldsFromWitnessV17(decoded)
			if err != nil {
				return nil, witnessSummary{}, err
			}
			assignment, _, err := abi.NewTransferCircuitAssignmentFromWitnessV17(witnessPayload)
			return assignment, witnessSummary{
				ClaimedStatementHash: primitives.LittleEndianBytesToBigInt(decoded.ClaimedStatementHash[:]).String(),
				StatementFields:      vec32Strings(statementFields),
			}, err
		}
		if _, ok := generated.NoteReshapeFamilyByLabel(circuit); ok {
			decoded, _, err := abi.DecodeNoteReshapeWitnessV4(witnessPayload)
			if err != nil {
				return nil, witnessSummary{}, err
			}
			statementFields, err := abi.ReconstructedNoteReshapeStatementFieldsFromWitnessV4(decoded)
			if err != nil {
				return nil, witnessSummary{}, err
			}
			assignment, _, err := abi.NewNoteReshapeCircuitAssignmentFromWitnessV4(witnessPayload)
			return assignment, witnessSummary{
				ClaimedStatementHash: primitives.LittleEndianBytesToBigInt(decoded.ClaimedStatementHash[:]).String(),
				StatementFields:      vec32Strings(statementFields),
			}, err
		}
		if _, ok := generated.ShieldedIcs20WithdrawalFamilyByLabel(circuit); ok {
			decoded, _, err := abi.DecodeShieldedIcs20WithdrawalWitnessV9(witnessPayload)
			if err != nil {
				return nil, witnessSummary{}, err
			}
			statementFields, err := abi.ReconstructedShieldedIcs20WithdrawalStatementFieldsFromWitnessV9(decoded)
			if err != nil {
				return nil, witnessSummary{}, err
			}
			assignment, _, err := abi.NewShieldedIcs20WithdrawalCircuitAssignmentFromWitnessV9(witnessPayload)
			return assignment, witnessSummary{
				ClaimedStatementHash: primitives.LittleEndianBytesToBigInt(decoded.ClaimedStatementHash[:]).String(),
				StatementFields:      vec32Strings(statementFields),
			}, err
		}
		return nil, witnessSummary{}, fmt.Errorf("unsupported circuit %q", circuit)
	}
}

func vec32Strings(fields [][32]byte) []string {
	values := make([]string, len(fields))
	for i := range fields {
		values[i] = primitives.LittleEndianBytesToBigInt(fields[i][:]).String()
	}
	return values
}

type witnessSummary struct {
	ClaimedStatementHash string
	StatementFields      []string
}

func writePK(path string, pk *groth16bls.ProvingKey) error {
	file, err := os.Create(path)
	if err != nil {
		return fmt.Errorf("create proving key file: %w", err)
	}
	defer file.Close()
	if _, err := pk.WriteTo(file); err != nil {
		return fmt.Errorf("write proving key: %w", err)
	}
	return nil
}

func writeVK(path string, vk *groth16bls.VerifyingKey) error {
	file, err := os.Create(path)
	if err != nil {
		return fmt.Errorf("create verifying key file: %w", err)
	}
	defer file.Close()
	if _, err := vk.WriteTo(file); err != nil {
		return fmt.Errorf("write verifying key: %w", err)
	}
	return nil
}

func loadPK(path string) (*groth16bls.ProvingKey, float64, error) {
	start := time.Now()
	pk, err := artifacts.LoadProvingKeyStrict(path)
	if err != nil {
		return nil, 0, err
	}
	return pk, time.Since(start).Seconds() * 1000, nil
}

func loadVK(path string) (*groth16bls.VerifyingKey, float64, error) {
	start := time.Now()
	vk, err := artifacts.LoadVerifyingKeyStrict(path)
	if err != nil {
		return nil, 0, err
	}
	return vk, time.Since(start).Seconds() * 1000, nil
}

func writeOrStdout(path string, contents string) error {
	if path == "" {
		fmt.Print(contents)
		return nil
	}
	return os.WriteFile(path, []byte(contents), 0o644)
}

func buildPublicWitness(publicInputs []string) (backendwitness.Witness, error) {
	publicWitness, err := backendwitness.New(primitives.ScalarField())
	if err != nil {
		return nil, err
	}
	values := make(chan any, len(publicInputs))
	for _, input := range publicInputs {
		value, ok := new(big.Int).SetString(input, 10)
		if !ok {
			return nil, fmt.Errorf("invalid public input %q", input)
		}
		values <- value
	}
	close(values)
	if err := publicWitness.Fill(len(publicInputs), 0, values); err != nil {
		return nil, err
	}
	return publicWitness, nil
}

func decodeProof(proofJSON artifacts.ProofJSON) (*groth16bls.Proof, error) {
	proof := new(groth16bls.Proof)
	if err := setG1Affine(&proof.Ar, proofJSON.A); err != nil {
		return nil, fmt.Errorf("proof.a: %w", err)
	}
	if err := setG2Affine(&proof.Bs, proofJSON.B); err != nil {
		return nil, fmt.Errorf("proof.b: %w", err)
	}
	if err := setG1Affine(&proof.Krs, proofJSON.C); err != nil {
		return nil, fmt.Errorf("proof.c: %w", err)
	}
	if !proof.Ar.IsOnCurve() || !proof.Ar.IsInSubGroup() {
		return nil, fmt.Errorf("proof.a is invalid")
	}
	if !proof.Bs.IsOnCurve() || !proof.Bs.IsInSubGroup() {
		return nil, fmt.Errorf("proof.b is invalid")
	}
	if !proof.Krs.IsOnCurve() || !proof.Krs.IsInSubGroup() {
		return nil, fmt.Errorf("proof.c is invalid")
	}
	return proof, nil
}

func decodeVerifyingKey(vkJSON artifacts.VerifyingKeyJSON) (*groth16bls.VerifyingKey, error) {
	vk := new(groth16bls.VerifyingKey)
	if err := setG1Affine(&vk.G1.Alpha, vkJSON.AlphaG1); err != nil {
		return nil, fmt.Errorf("alpha_g1: %w", err)
	}
	if err := setG2Affine(&vk.G2.Beta, vkJSON.BetaG2); err != nil {
		return nil, fmt.Errorf("beta_g2: %w", err)
	}
	if err := setG2Affine(&vk.G2.Gamma, vkJSON.GammaG2); err != nil {
		return nil, fmt.Errorf("gamma_g2: %w", err)
	}
	if err := setG2Affine(&vk.G2.Delta, vkJSON.DeltaG2); err != nil {
		return nil, fmt.Errorf("delta_g2: %w", err)
	}
	vk.G1.K = make([]curve.G1Affine, len(vkJSON.GammaABCG1))
	for i := range vkJSON.GammaABCG1 {
		if err := setG1Affine(&vk.G1.K[i], vkJSON.GammaABCG1[i]); err != nil {
			return nil, fmt.Errorf("gamma_abc_g1[%d]: %w", i, err)
		}
	}
	return vk, nil
}

func setG1Affine(dst *curve.G1Affine, point artifacts.G1PointJSON) error {
	if _, err := dst.X.SetString(point.X); err != nil {
		return err
	}
	if _, err := dst.Y.SetString(point.Y); err != nil {
		return err
	}
	return nil
}

func setG2Affine(dst *curve.G2Affine, point artifacts.G2PointJSON) error {
	if _, err := dst.X.A0.SetString(point.X.A0); err != nil {
		return fmt.Errorf("x.a0: %w", err)
	}
	if _, err := dst.X.A1.SetString(point.X.A1); err != nil {
		return fmt.Errorf("x.a1: %w", err)
	}
	if _, err := dst.Y.A0.SetString(point.Y.A0); err != nil {
		return fmt.Errorf("y.a0: %w", err)
	}
	if _, err := dst.Y.A1.SetString(point.Y.A1); err != nil {
		return fmt.Errorf("y.a1: %w", err)
	}
	return nil
}
