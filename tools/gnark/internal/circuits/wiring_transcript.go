package circuits

import (
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"reflect"
	"strings"
	"unsafe"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/constraint"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
)

const wiringTranscriptSchema = "shieldd.gnark.wiring.v1"

// WiringTranscript records the semantic call graph emitted by a circuit Define.
type WiringTranscript struct {
	circuit           string
	nIn               int
	nOut              int
	recordCounts      bool
	constraintCounter func() (int, bool)
	events            []wiringEvent
}

type wiringEvent struct {
	op         string
	args       []string
	constraint int
}

func newWiringTranscript(circuit string, nIn, nOut int) *WiringTranscript {
	return &WiringTranscript{circuit: circuit, nIn: nIn, nOut: nOut}
}

func (t *WiringTranscript) record(op string, args ...string) {
	if t == nil {
		return
	}
	constraint := -1
	if t.recordCounts && t.constraintCounter != nil {
		if count, ok := t.constraintCounter(); ok {
			constraint = count
		}
	}
	t.events = append(t.events, wiringEvent{op: op, args: args, constraint: constraint})
}

func (t *WiringTranscript) bindCompiler(compiler frontend.Compiler) {
	if t == nil || !t.recordCounts {
		return
	}
	t.constraintCounter = func() (int, bool) {
		return currentConstraintCount(compiler)
	}
}

func (t *WiringTranscript) canonical() (string, error) {
	var b strings.Builder
	fmt.Fprintf(&b, "schema %s\n", wiringTranscriptSchema)
	fmt.Fprintf(&b, "circuit %s\n", t.circuit)
	fmt.Fprintf(&b, "shape n_in=%d n_out=%d\n", t.nIn, t.nOut)
	for i, event := range t.events {
		if strings.ContainsAny(event.op, " \t\r\n") {
			return "", fmt.Errorf("wiring transcript op contains whitespace: %q", event.op)
		}
		fmt.Fprintf(&b, "%04d %s", i+1, event.op)
		for _, arg := range event.args {
			if strings.ContainsAny(arg, " \t\r\n") {
				return "", fmt.Errorf("wiring transcript arg contains whitespace: %q", arg)
			}
			b.WriteByte(' ')
			b.WriteString(arg)
		}
		b.WriteByte('\n')
	}
	return b.String(), nil
}

func (c *NoteReshapeCircuit) traceWiring(op string, args ...string) {
	if c.wiringTrace != nil {
		c.wiringTrace.record(op, args...)
	}
}

func (c *TransferCircuit) traceWiring(op string, args ...string) {
	if c.wiringTrace != nil {
		c.wiringTrace.record(op, args...)
	}
}

func (c *NoteReshapeCircuit) bindWiringTrace(api frontend.API) {
	if c.wiringTrace != nil {
		c.wiringTrace.bindCompiler(api.Compiler())
	}
}

func (c *TransferCircuit) bindWiringTrace(api frontend.API) {
	if c.wiringTrace != nil {
		c.wiringTrace.bindCompiler(api.Compiler())
	}
}

func noteReshapeCircuitWithTranscript(label string, nIn, nOut int, transcript *WiringTranscript) frontend.Circuit {
	circuit := NewNoteReshapeCircuit(label, nIn, nOut)
	circuit.wiringTrace = transcript
	return circuit
}

func transferCircuitWithTranscript(transcript *WiringTranscript) frontend.Circuit {
	circuit := NewTransferCircuit()
	circuit.wiringTrace = transcript
	return circuit
}

// ExportNoteReshapeWiringTranscript returns the canonical transcript for a
// registered NoteReshape family.
func ExportNoteReshapeWiringTranscript(label string, nIn, nOut int) (string, error) {
	transcript := newWiringTranscript(label, nIn, nOut)
	if _, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		noteReshapeCircuitWithTranscript(label, nIn, nOut, transcript),
	); err != nil {
		return "", fmt.Errorf("compile %s for wiring transcript: %w", label, err)
	}
	return transcript.canonical()
}

// ExportNoteReshape2x1WiringTranscript retains the focused test entry point.
func ExportNoteReshape2x1WiringTranscript() (string, error) {
	return ExportNoteReshapeWiringTranscript("note_reshape2x1", 2, 1)
}

// ExportTransferWiringTranscript returns the canonical transcript for the
// checked-in transfer Define path.
func ExportTransferWiringTranscript() (string, error) {
	transcript := newWiringTranscript("transfer", TransferCircuitInputs, TransferCircuitOutputs)
	if _, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		transferCircuitWithTranscript(transcript),
	); err != nil {
		return "", fmt.Errorf("compile transfer for wiring transcript: %w", err)
	}
	return transcript.canonical()
}

const constraintManifestSchema = "shieldd.gnark.constraint_manifest.v1"

type ConstraintManifest struct {
	Schema         string                      `json:"schema"`
	Circuit        string                      `json:"circuit"`
	Shape          ConstraintManifestShape     `json:"shape"`
	NbConstraints  int                         `json:"nb_constraints"`
	NbPublic       int                         `json:"nb_public_variables"`
	NbSecret       int                         `json:"nb_secret_variables"`
	NbInternal     int                         `json:"nb_internal_variables"`
	SR1CSSHA256Hex string                      `json:"sr1cs_sha256_hex,omitempty"`
	Segments       []ConstraintManifestSegment `json:"segments"`
	Breakdown      ConstraintManifestBreakdown `json:"breakdown"`
}

type ConstraintManifestShape struct {
	NIn  int `json:"n_in"`
	NOut int `json:"n_out"`
}

type ConstraintManifestSegment struct {
	Index              int      `json:"index"`
	Op                 string   `json:"op"`
	Args               []string `json:"args,omitempty"`
	Kind               string   `json:"kind"`
	GadgetLabel        string   `json:"gadget_label,omitempty"`
	BridgeTheorem      string   `json:"bridge_theorem,omitempty"`
	Start              int      `json:"start"`
	End                int      `json:"end"`
	ConstraintCount    int      `json:"constraint_count"`
	InputWireIDs       []int    `json:"input_wire_ids,omitempty"`
	OutputWireIDs      []int    `json:"output_wire_ids,omitempty"`
	ClassificationNote string   `json:"classification_note,omitempty"`
}

type ConstraintManifestBreakdown struct {
	TotalConstraints        int            `json:"total_constraints"`
	ConstraintsByKind       map[string]int `json:"constraints_by_kind"`
	SegmentsByKind          map[string]int `json:"segments_by_kind"`
	UnclassifiedConstraints int            `json:"unclassified_constraints"`
	UnclassifiedSegments    int            `json:"unclassified_segments"`
}

func (m *ConstraintManifest) CanonicalJSON() ([]byte, error) {
	return json.MarshalIndent(m, "", "  ")
}

func WriteConstraintManifest(path string, manifest *ConstraintManifest) error {
	data, err := manifest.CanonicalJSON()
	if err != nil {
		return fmt.Errorf("marshal constraint manifest: %w", err)
	}
	data = append(data, '\n')
	if err := os.WriteFile(path, data, 0o644); err != nil {
		return fmt.Errorf("write %s: %w", path, err)
	}
	return nil
}

func ExportNoteReshapeConstraintManifest(label string, nIn, nOut int, sr1csPath string) (*ConstraintManifest, error) {
	_, manifest, err := CompileNoteReshapeForFV(label, nIn, nOut)
	if err != nil {
		return nil, err
	}
	if sr1csPath != "" {
		hash, err := sha256HexFile(sr1csPath)
		if err != nil {
			return nil, err
		}
		manifest.SR1CSSHA256Hex = hash
	}
	return manifest, nil
}

// CompileNoteReshapeForFV compiles one NoteReshape circuit once and returns
// both the compiled constraint system and its semantic manifest. The FV
// command uses this pair to emit SR1CS and manifest bytes without a second
// frontend compile.
func CompileNoteReshapeForFV(label string, nIn, nOut int) (constraint.ConstraintSystem, *ConstraintManifest, error) {
	transcript := newWiringTranscript(label, nIn, nOut)
	transcript.recordCounts = true
	ccs, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		noteReshapeCircuitWithTranscript(label, nIn, nOut, transcript),
	)
	if err != nil {
		return nil, nil, fmt.Errorf("compile %s for FV artifacts: %w", label, err)
	}
	manifest, err := transcript.constraintManifest(ccs, "")
	if err != nil {
		return nil, nil, fmt.Errorf("manifest %s for FV artifacts: %w", label, err)
	}
	return ccs, manifest, nil
}

func ExportNoteReshape2x1ConstraintManifest(sr1csPath string) (*ConstraintManifest, error) {
	return ExportNoteReshapeConstraintManifest("note_reshape2x1", 2, 1, sr1csPath)
}

func ExportTransferConstraintManifest(sr1csPath string) (*ConstraintManifest, error) {
	transcript := newWiringTranscript("transfer", TransferCircuitInputs, TransferCircuitOutputs)
	transcript.recordCounts = true
	ccs, err := frontend.Compile(
		ecc.BLS12_377.ScalarField(),
		r1cs.NewBuilder,
		transferCircuitWithTranscript(transcript),
	)
	if err != nil {
		return nil, fmt.Errorf("compile transfer for constraint manifest: %w", err)
	}
	return transcript.constraintManifest(ccs, sr1csPath)
}

func (t *WiringTranscript) constraintManifest(ccs constraint.ConstraintSystem, sr1csPath string) (*ConstraintManifest, error) {
	total := ccs.GetNbConstraints()
	segments := make([]ConstraintManifestSegment, 0, len(t.events))
	for i, event := range t.events {
		start := event.constraint
		if start < 0 {
			return nil, fmt.Errorf("missing constraint count for event %d %s", i+1, event.op)
		}
		end := total
		if i+1 < len(t.events) {
			end = t.events[i+1].constraint
		}
		if end < start {
			return nil, fmt.Errorf("constraint count regressed at event %d %s: start %d end %d", i+1, event.op, start, end)
		}
		kind, gadget, theorem, note := classifyConstraintSegment(event.op)
		segments = append(segments, ConstraintManifestSegment{
			Index:              i + 1,
			Op:                 event.op,
			Args:               append([]string(nil), event.args...),
			Kind:               kind,
			GadgetLabel:        gadget,
			BridgeTheorem:      theorem,
			Start:              start,
			End:                end,
			ConstraintCount:    end - start,
			ClassificationNote: note,
		})
	}

	breakdown := ConstraintManifestBreakdown{
		TotalConstraints:  total,
		ConstraintsByKind: make(map[string]int),
		SegmentsByKind:    make(map[string]int),
	}
	for _, segment := range segments {
		breakdown.ConstraintsByKind[segment.Kind] += segment.ConstraintCount
		breakdown.SegmentsByKind[segment.Kind]++
		if segment.Kind == "unclassified" {
			breakdown.UnclassifiedConstraints += segment.ConstraintCount
			breakdown.UnclassifiedSegments++
		}
	}

	var sr1csHash string
	if sr1csPath != "" {
		hash, err := sha256HexFile(sr1csPath)
		if err != nil {
			return nil, err
		}
		sr1csHash = hash
	}

	return &ConstraintManifest{
		Schema:         constraintManifestSchema,
		Circuit:        t.circuit,
		Shape:          ConstraintManifestShape{NIn: t.nIn, NOut: t.nOut},
		NbConstraints:  total,
		NbPublic:       ccs.GetNbPublicVariables(),
		NbSecret:       ccs.GetNbSecretVariables(),
		NbInternal:     ccs.GetNbInternalVariables(),
		SR1CSSHA256Hex: sr1csHash,
		Segments:       segments,
		Breakdown:      breakdown,
	}, nil
}

func classifyConstraintSegment(op string) (kind, gadgetLabel, bridgeTheorem, note string) {
	if gadget, theorem, ok := segmentGadget(op); ok {
		return "gadget", gadget, theorem, ""
	}
	switch {
	case op == "shared.bind" || strings.HasSuffix(op, ".begin") || strings.HasSuffix(op, ".collect"):
		return "marker", "", "", "semantic trace marker; expected to carry no constraints"
	case op == "statement.append" || op == "statement.append_all" || op == "statement.assemble":
		return "adapter", "", "", "statement vector assembly; expected to carry no constraints"
	case op == "decaf.assert_on_curve":
		return "glue", "", "", "allowed raw affine Decaf on-curve assertion"
	case strings.HasPrefix(op, "assert."):
		return "glue", "", "", "allowed assertion/copy constraint segment"
	case strings.HasPrefix(op, "select.") || op == "dummy.mux" || op == "threshold.flag":
		return "glue", "", "", "allowed selector/range glue segment"
	default:
		return "unclassified", "", "", "must be discharged by a gadget mapping or by re-authoring"
	}
}

func segmentGadget(op string) (gadgetLabel, bridgeTheorem string, ok bool) {
	switch op {
	case "decaf.compress_to_field":
		return "gadget-decaf-compress-to-field", "Shieldd.GnarkFormal.Extracted.DecafCompressToField.circuit_sound", true
	case "decaf.assert_equivalent", "decaf.assert_equivalent_if":
		return "gadget-decaf-assert-equivalent", "Shieldd.GnarkFormal.Decaf377Assumptions.decaf377_assertEquivalent_sound", true
	case "decaf.randomized_verification_key", "decaf.randomized_verification_key.dummy":
		return "gadget-rvk", "Shieldd.GnarkFormal.RvkBridge.decaf377_randomizedVerificationKey_sound", true
	case "decaf.diversified_transmission_key":
		return "gadget-dtk", "Shieldd.GnarkFormal.DtkBridge.decaf377_diversifiedTransmissionKey_sound", true
	case "decaf.net_balance_commitment":
		return "gadget-net-balance-commitment2", "Shieldd.GnarkFormal.NetBalanceCommitment2Bridge.decaf377_netBalanceCommitment2_sound", true
	// NB-1 (Wave 2): conservation-exact note_reshape shapes no longer build
	// their balance commitment from computeTransferNetBalanceCommitment's
	// value ladders. Pending Phase 3 re-stamp: bridge theorem name below is
	// the Phase-3 target, not yet landed in lean/.
	case "decaf.conservation_net_balance_commitment":
		return "gadget-conservation-net-balance-commitment", "Shieldd.GnarkFormal.ConservationNetBalanceCommitmentBridge.decaf377_conservationNetBalanceCommitment_sound", true
	case "decaf.ack":
		return "gadget-ack-two-step", "Shieldd.GnarkFormal.AckBridge.ack_sound", true
	case "decaf.shared_secret":
		return "gadget-ack-two-step", "Shieldd.GnarkFormal.SharedSecretBridge.shared_secrets_sound", true
	case "decaf.fuzzy_scalar_mul":
		return "gadget-scalar-mul-step", "Shieldd.GnarkFormal.ScalarMulBridge.scalarMulLE251_sound", true
	case "gadget.nullifier":
		return "gadget-nullifier", "Shieldd.GnarkFormal.Poseidon3Bridge.circuit_sound", true
	case "gadget.synthetic_dummy_nullifier":
		return "gadget-poseidon-hash3-specialized", "Shieldd.GnarkFormal.Poseidon3Bridge.perm3_uncps", true
	case "gadget.is_zero":
		return "gadget-iszero", "Shieldd.GnarkFormal.isZeroExtracted_implies_is_zero", true
	case "gadget.state_commitment_path", "gadget.compliance_path":
		return "gadget-quad-path-24", "Shieldd.GnarkFormal.AnchorMerkle.concrete_circuit_sound24", true
	case "gadget.note_commitment":
		return "gadget-poseidon-hash6", "Shieldd.GnarkFormal.Poseidon6Bridge.circuit_sound", true
	case "gadget.asset_registry_imt":
		return "gadget-imt-gap", "Shieldd.GnarkFormal.Extracted.ImtGap.circuit_sound", true
	case "gadget.compliance_leaf":
		return "gadget-poseidon-hash5", "Shieldd.GnarkFormal.Poseidon5Bridge.circuit_sound", true
	case "gadget.transfer_salt":
		return "gadget-poseidon2", "Shieldd.GnarkFormal.TransferSaltBridge.transfer_salt_sound", true
	case "gadget.authorization_id":
		return "gadget-poseidon-hash1", "Shieldd.GnarkFormal.Poseidon1Bridge.circuit_sound", true
	case "gadget.fuzzy_poseidon":
		return "gadget-poseidon-hash5", "Shieldd.GnarkFormal.Poseidon5Bridge.circuit_sound", true
	case "gadget.canonical_fq_bits":
		return "gadget-canonical-fq-bits", "Shieldd.GnarkFormal.CanonicalFqBitsManifestBridge.canonical_sound", true
	case "gadget.poseidon_encryption.detection":
		return "gadget-poseidon-hash7", "Shieldd.GnarkFormal.PoseidonEncryptionBridge.detection_sound", true
	case "gadget.poseidon_encryption.amount":
		return "gadget-poseidon2", "Shieldd.GnarkFormal.PoseidonEncryptionBridge.amount_sound", true
	case "gadget.poseidon_encryption.address":
		return "gadget-poseidon-hash4", "Shieldd.GnarkFormal.PoseidonEncryptionBridge.address_sound", true
	case "gadget.metadata_hash":
		return "gadget-poseidon-hash7", "Shieldd.GnarkFormal.Poseidon7Bridge.circuit_sound", true
	case "gadget.dleq":
		return "gadget-dleq", "Shieldd.GnarkFormal.DleqBridge.dleq_sound", true
	case "statement.hash":
		return "gadget-poseidon-hash7", "Shieldd.GnarkFormal.Poseidon7Bridge.circuit_sound", true
	default:
		return "", "", false
	}
}

func currentConstraintCount(compiler frontend.Compiler) (int, bool) {
	if compiler == nil {
		return 0, false
	}
	if ccs, ok := compiler.(constraint.ConstraintSystem); ok {
		return ccs.GetNbConstraints(), true
	}
	v := reflect.ValueOf(compiler)
	if !v.IsValid() {
		return 0, false
	}
	if v.Kind() == reflect.Ptr {
		v = v.Elem()
	}
	if !v.IsValid() || v.Kind() != reflect.Struct {
		return 0, false
	}
	field := v.FieldByName("cs")
	if !field.IsValid() || field.IsNil() {
		return 0, false
	}
	field = reflect.NewAt(field.Type(), unsafe.Pointer(field.UnsafeAddr())).Elem()
	ccs, ok := field.Interface().(constraint.ConstraintSystem)
	if !ok {
		return 0, false
	}
	return ccs.GetNbConstraints(), true
}

func sha256HexFile(path string) (string, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return "", fmt.Errorf("read %s for sha256: %w", path, err)
	}
	sum := sha256.Sum256(data)
	return hex.EncodeToString(sum[:]), nil
}
