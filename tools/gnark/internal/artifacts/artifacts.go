package artifacts

import (
	"bufio"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"os"
	"path/filepath"
	"reflect"
	"strings"

	groth16bls "github.com/consensys/gnark/backend/groth16/bls12-377"
	"github.com/consensys/gnark/constraint"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/schema"
)

type G1PointJSON struct {
	X string `json:"x"`
	Y string `json:"y"`
}

type Fq2JSON struct {
	A0 string `json:"a0"`
	A1 string `json:"a1"`
}

type G2PointJSON struct {
	X Fq2JSON `json:"x"`
	Y Fq2JSON `json:"y"`
}

type ProofJSON struct {
	A G1PointJSON `json:"a"`
	B G2PointJSON `json:"b"`
	C G1PointJSON `json:"c"`
}

type VerifyingKeyJSON struct {
	AlphaG1    G1PointJSON   `json:"alpha_g1"`
	BetaG2     G2PointJSON   `json:"beta_g2"`
	GammaG2    G2PointJSON   `json:"gamma_g2"`
	DeltaG2    G2PointJSON   `json:"delta_g2"`
	GammaABCG1 []G1PointJSON `json:"gamma_abc_g1"`
}

type TimingsJSON struct {
	CompileMS float64 `json:"compile_ms"`
	SetupMS   float64 `json:"setup_ms,omitempty"`
	LoadPKMS  float64 `json:"load_pk_ms,omitempty"`
	LoadVKMS  float64 `json:"load_vk_ms,omitempty"`
	ProveMS   float64 `json:"prove_ms"`
	VerifyMS  float64 `json:"verify_ms"`
}

type ArtifactJSON struct {
	Curve                string           `json:"curve"`
	Circuit              string           `json:"circuit"`
	PublicInputs         []string         `json:"public_inputs"`
	StatementFields      []string         `json:"statement_fields"`
	ClaimedStatementHash string           `json:"claimed_statement_hash"`
	Proof                ProofJSON        `json:"proof"`
	VerifyingKey         VerifyingKeyJSON `json:"verifying_key"`
	Timings              TimingsJSON      `json:"timings"`
}

type CircuitMetadataJSON struct {
	Schema                      string `json:"schema"`
	Curve                       string `json:"curve"`
	Circuit                     string `json:"circuit"`
	ProvingKeySize              int64  `json:"proving_key_size_bytes"`
	VerifyingKeySize            int64  `json:"verifying_key_size_bytes"`
	NbConstraints               int    `json:"nb_constraints"`
	NbPublic                    int    `json:"nb_public_variables"`
	NbSecret                    int    `json:"nb_secret_variables"`
	ProvingKeySHA256Hex         string `json:"proving_key_sha256_hex"`
	VerifyingKeyBinarySHA256Hex string `json:"verifying_key_binary_sha256_hex"`
	VerifyingKeyJSONSHA256Hex   string `json:"verifying_key_json_sha256_hex"`
}

const CircuitMetadataSchema = "shieldd.gnark.circuit_metadata.v1"

func EncodeProofJSON(proof *groth16bls.Proof) ProofJSON {
	return ProofJSON{
		A: G1PointJSON{X: proof.Ar.X.String(), Y: proof.Ar.Y.String()},
		B: G2PointJSON{
			X: Fq2JSON{A0: proof.Bs.X.A0.String(), A1: proof.Bs.X.A1.String()},
			Y: Fq2JSON{A0: proof.Bs.Y.A0.String(), A1: proof.Bs.Y.A1.String()},
		},
		C: G1PointJSON{X: proof.Krs.X.String(), Y: proof.Krs.Y.String()},
	}
}

func EncodeVerifyingKeyJSON(vk *groth16bls.VerifyingKey) VerifyingKeyJSON {
	k := make([]G1PointJSON, len(vk.G1.K))
	for i := range vk.G1.K {
		k[i] = G1PointJSON{
			X: vk.G1.K[i].X.String(),
			Y: vk.G1.K[i].Y.String(),
		}
	}
	return VerifyingKeyJSON{
		AlphaG1: G1PointJSON{X: vk.G1.Alpha.X.String(), Y: vk.G1.Alpha.Y.String()},
		BetaG2: G2PointJSON{
			X: Fq2JSON{A0: vk.G2.Beta.X.A0.String(), A1: vk.G2.Beta.X.A1.String()},
			Y: Fq2JSON{A0: vk.G2.Beta.Y.A0.String(), A1: vk.G2.Beta.Y.A1.String()},
		},
		GammaG2: G2PointJSON{
			X: Fq2JSON{A0: vk.G2.Gamma.X.A0.String(), A1: vk.G2.Gamma.X.A1.String()},
			Y: Fq2JSON{A0: vk.G2.Gamma.Y.A0.String(), A1: vk.G2.Gamma.Y.A1.String()},
		},
		DeltaG2: G2PointJSON{
			X: Fq2JSON{A0: vk.G2.Delta.X.A0.String(), A1: vk.G2.Delta.X.A1.String()},
			Y: Fq2JSON{A0: vk.G2.Delta.Y.A0.String(), A1: vk.G2.Delta.Y.A1.String()},
		},
		GammaABCG1: k,
	}
}

func FileSize(path string) (int64, error) {
	info, err := os.Stat(path)
	if err != nil {
		return 0, err
	}
	return info.Size(), nil
}

func FillCircuitMetadataShape(metadata *CircuitMetadataJSON, ccs constraint.ConstraintSystem) {
	metadata.NbConstraints = ccs.GetNbConstraints()
	metadata.NbPublic = ccs.GetNbPublicVariables()
	metadata.NbSecret = ccs.GetNbSecretVariables()
}

func WriteConstraintSystem(path string, ccs constraint.ConstraintSystem, circuit ...frontend.Circuit) error {
	if ccs == nil {
		return fmt.Errorf("missing compiled constraint system")
	}
	r1cs, ok := ccs.(constraint.R1CS[constraint.U64])
	if !ok {
		return fmt.Errorf("constraint system is not a U64 R1CS")
	}
	file, err := os.Create(path)
	if err != nil {
		return fmt.Errorf("create constraint system file: %w", err)
	}
	defer file.Close()

	writer := bufio.NewWriter(file)
	defer writer.Flush()

	if _, err := fmt.Fprintf(writer, "(prime-number %s)\n", ccs.Field().String()); err != nil {
		return err
	}

	inputs, outputs, err := picusWireRoles(ccs, circuit...)
	if err != nil {
		return err
	}
	for _, wire := range inputs {
		if _, err := fmt.Fprintf(writer, "(in %d)\n", wire); err != nil {
			return err
		}
	}
	for _, wire := range outputs {
		if _, err := fmt.Fprintf(writer, "(out %d)\n", wire); err != nil {
			return err
		}
	}

	for _, r1c := range r1cs.GetR1Cs() {
		if _, err := fmt.Fprint(writer, "(constraint "); err != nil {
			return err
		}
		if err := writePicusLinearExpression(writer, ccs, r1c.L); err != nil {
			return err
		}
		if _, err := fmt.Fprint(writer, " "); err != nil {
			return err
		}
		if err := writePicusLinearExpression(writer, ccs, r1c.R); err != nil {
			return err
		}
		if _, err := fmt.Fprint(writer, " "); err != nil {
			return err
		}
		if err := writePicusLinearExpression(writer, ccs, r1c.O); err != nil {
			return err
		}
		if _, err := fmt.Fprintln(writer, ")"); err != nil {
			return err
		}
	}
	return nil
}

func picusWireRoles(ccs constraint.ConstraintSystem, circuit ...frontend.Circuit) ([]int, []int, error) {
	if len(circuit) == 0 || circuit[0] == nil {
		// Whole-circuit SR1CS files are consumed as exact row artifacts by the
		// extractor. Their historical role annotations are not a Picus
		// under-constraint claim: every secret is free. Only typed gadget
		// exports below classify derived secret outputs for Picus.
		nbPublic := ccs.GetNbPublicVariables()
		nbSecret := ccs.GetNbSecretVariables()
		inputs := make([]int, 0, nbSecret)
		outputs := make([]int, 0, nbPublic-1)
		for wire := nbPublic; wire < nbPublic+nbSecret; wire++ {
			inputs = append(inputs, wire)
		}
		for wire := 1; wire < nbPublic; wire++ {
			outputs = append(outputs, wire)
		}
		return inputs, outputs, nil
	}

	wires, err := axeWireManifest(ccs, circuit[0])
	if err != nil {
		return nil, nil, fmt.Errorf("build Picus wire roles: %w", err)
	}
	var inputs, outputs []int
	for _, wire := range wires {
		switch wire.Visibility {
		case "public":
			inputs = append(inputs, wire.Index)
		case "secret":
			if isPicusGadgetOutput(wire.Name) {
				outputs = append(outputs, wire.Index)
			} else {
				inputs = append(inputs, wire.Index)
			}
		}
	}
	return inputs, outputs, nil
}

// isPicusGadgetOutput classifies a secret wire as a gadget output (Picus `out`)
// rather than a free input (Picus `in`). Mislabeling a true output as an input
// lets Picus treat it as a given and miss its under-determination, so the rule
// covers every `Out*` wire by prefix (OutX, OutAccX, OutRRecX, …) plus the
// outputs that are not `Out`-prefixed by convention.
func isPicusGadgetOutput(name string) bool {
	if strings.HasPrefix(name, "Out") {
		return true
	}
	switch name {
	case "Root", "Nullifier", "Valid", "IvkReduced":
		return true
	default:
		return false
	}
}

func writePicusLinearExpression(writer *bufio.Writer, resolver constraint.Resolver, expr constraint.LinearExpression) error {
	if _, err := fmt.Fprint(writer, "["); err != nil {
		return err
	}
	for _, term := range expr {
		wireID := term.WireID()
		if term.IsConstant() {
			wireID = 0
		}
		if _, err := fmt.Fprintf(writer, "(%s %d) ", resolver.CoeffToString(term.CoeffID()), wireID); err != nil {
			return err
		}
	}
	_, err := fmt.Fprint(writer, "]")
	return err
}

// AxeR1CSJSON is the Axe/ACL2-ingestible R1CS: the prime, an explicit wire
// manifest (so an ACL2 spec can name the Out/In wires), and the constraints as
// sparse (A,B,C) prime-field linear combinations. Unlike the Picus `.sr1cs`
// sexpr this carries wire *names* derived from the gnark circuit schema, which
// the gadget spec predicate references.
type AxeR1CSJSON struct {
	Prime       string              `json:"prime"`
	NbWires     int                 `json:"nb_wires"`
	Wires       []AxeWireJSON       `json:"wires"`
	Constraints []AxeConstraintJSON `json:"constraints"`
}

type AxeWireJSON struct {
	Index      int    `json:"index"`
	Name       string `json:"name"`
	ACL2Symbol string `json:"acl2_symbol,omitempty"`
	Visibility string `json:"visibility"` // one | public | secret
}

type AxeTermJSON struct {
	Coeff string `json:"coeff"`
	Wire  int    `json:"wire"`
}

type AxeConstraintJSON struct {
	A []AxeTermJSON `json:"a"`
	B []AxeTermJSON `json:"b"`
	C []AxeTermJSON `json:"c"`
}

// WriteAxeJSON exports an Axe-ingestible R1CS for a single gadget circuit. The
// circuit instance is required: its schema supplies ordered public/secret leaf
// names, which gnark assigns to wire indices public-first (after wire 0 = ONE).
func WriteAxeJSON(path string, ccs constraint.ConstraintSystem, circuit frontend.Circuit) error {
	out, err := BuildAxeR1CS(ccs, circuit)
	if err != nil {
		return err
	}
	return WriteJSON(path, out)
}

// WriteAxeLisp exports the named-wire R1CS as Kestrel sparse R1CS data for
// ACL2's lift-r1cs/verify-r1cs pipeline.
func WriteAxeLisp(path, label string, ccs constraint.ConstraintSystem, circuit frontend.Circuit) error {
	out, err := BuildAxeR1CS(ccs, circuit)
	if err != nil {
		return err
	}
	file, err := os.Create(path)
	if err != nil {
		return fmt.Errorf("create axe lisp file: %w", err)
	}
	defer file.Close()
	writer := bufio.NewWriter(file)
	if err := writeAxeLisp(writer, label, out); err != nil {
		return err
	}
	return writer.Flush()
}

// BuildAxeR1CS constructs the named-wire R1CS for a gadget circuit. Exposed so a
// fidelity test can evaluate the exported constraints on gnark's own solved
// witness vector and confirm the bridge is faithful.
func BuildAxeR1CS(ccs constraint.ConstraintSystem, circuit frontend.Circuit) (*AxeR1CSJSON, error) {
	if ccs == nil {
		return nil, fmt.Errorf("missing compiled constraint system")
	}
	r1cs, ok := ccs.(constraint.R1CS[constraint.U64])
	if !ok {
		return nil, fmt.Errorf("constraint system is not a U64 R1CS")
	}

	wires, err := axeWireManifest(ccs, circuit)
	if err != nil {
		return nil, err
	}

	out := AxeR1CSJSON{
		Prime:   ccs.Field().String(),
		NbWires: len(wires),
		Wires:   wires,
	}
	for _, r1c := range r1cs.GetR1Cs() {
		out.Constraints = append(out.Constraints, AxeConstraintJSON{
			A: axeTerms(ccs, r1c.L),
			B: axeTerms(ccs, r1c.R),
			C: axeTerms(ccs, r1c.O),
		})
	}
	return &out, nil
}

func writeAxeLisp(writer *bufio.Writer, label string, r1cs *AxeR1CSJSON) error {
	prefix := acl2ConstPrefix(label)
	if _, err := fmt.Fprintf(writer, "; Generated by gnarkctl export-r1cs --format axe-lisp.\n"); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "; This is Kestrel sparse R1CS data; do not edit by hand.\n\n"); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "(in-package \"R1CS\")\n\n"); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "(include-book \"kestrel/crypto/r1cs/sparse/r1cs\" :dir :system)\n\n"); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "(defconst *%s-prime*\n  %s)\n\n", prefix, r1cs.Prime); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "(defconst *%s-wire-manifest*\n  '(", prefix); err != nil {
		return err
	}
	for i, wire := range r1cs.Wires {
		if i > 0 {
			if _, err := fmt.Fprint(writer, "\n    "); err != nil {
				return err
			}
		}
		symbol := wire.ACL2Symbol
		if wire.Index == 0 {
			symbol = "1"
		}
		if _, err := fmt.Fprintf(writer, "(:index %d :name %q :symbol %s :visibility %q)",
			wire.Index, wire.Name, symbol, wire.Visibility); err != nil {
			return err
		}
	}
	if _, err := fmt.Fprintf(writer, "))\n\n"); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "(defconst *%s-vars*\n  '(", prefix); err != nil {
		return err
	}
	first := true
	for _, wire := range r1cs.Wires {
		if wire.Index == 0 {
			continue
		}
		if !first {
			if _, err := fmt.Fprint(writer, " "); err != nil {
				return err
			}
		}
		first = false
		if _, err := fmt.Fprint(writer, wire.ACL2Symbol); err != nil {
			return err
		}
	}
	if _, err := fmt.Fprintf(writer, "))\n\n"); err != nil {
		return err
	}
	if _, err := fmt.Fprintf(writer, "(defconst *%s-constraints*\n  (list\n", prefix); err != nil {
		return err
	}
	for i, constraint := range r1cs.Constraints {
		if _, err := fmt.Fprintf(writer, "   (make-r1cs-constraint\n    :a '%s\n    :b '%s\n    :c '%s)",
			acl2SparseVector(constraint.A, r1cs.Wires),
			acl2SparseVector(constraint.B, r1cs.Wires),
			acl2SparseVector(constraint.C, r1cs.Wires)); err != nil {
			return err
		}
		if i == len(r1cs.Constraints)-1 {
			if _, err := fmt.Fprint(writer, "\n"); err != nil {
				return err
			}
		} else if _, err := fmt.Fprint(writer, "\n"); err != nil {
			return err
		}
	}
	_, err := fmt.Fprintf(writer, "   ))\n")
	return err
}

func acl2SparseVector(terms []AxeTermJSON, wires []AxeWireJSON) string {
	var b strings.Builder
	b.WriteByte('(')
	for i, term := range terms {
		if i > 0 {
			b.WriteByte(' ')
		}
		pseudoVar := "1"
		if term.Wire != 0 {
			pseudoVar = wires[term.Wire].ACL2Symbol
		}
		fmt.Fprintf(&b, "(%s %s)", term.Coeff, pseudoVar)
	}
	b.WriteByte(')')
	return b.String()
}

func acl2ConstPrefix(label string) string {
	return strings.Trim(acl2Symbol(label), "-")
}

func axeTerms(resolver constraint.Resolver, expr constraint.LinearExpression) []AxeTermJSON {
	terms := make([]AxeTermJSON, 0, len(expr))
	for _, term := range expr {
		wireID := term.WireID()
		if term.IsConstant() {
			wireID = 0
		}
		terms = append(terms, AxeTermJSON{Coeff: resolver.CoeffToString(term.CoeffID()), Wire: wireID})
	}
	return terms
}

// axeWireManifest maps wire indices to schema leaf names. gnark layout: wire 0
// is the constant ONE; public user leaves follow (indices 1..nbPublic-1), then
// secret leaves. schema.Walk visits public leaves before secret, matching that
// ordering.
func axeWireManifest(ccs constraint.ConstraintSystem, circuit frontend.Circuit) ([]AxeWireJSON, error) {
	var public, secret []string
	tVariable := reflect.TypeOf((*frontend.Variable)(nil)).Elem()
	_, err := schema.Walk(ccs.Field(), circuit, tVariable, func(leaf schema.LeafInfo, _ reflect.Value) error {
		switch leaf.Visibility {
		case schema.Public:
			public = append(public, leaf.FullName())
		case schema.Secret:
			secret = append(secret, leaf.FullName())
		}
		return nil
	})
	if err != nil {
		return nil, fmt.Errorf("walk circuit schema: %w", err)
	}

	nbPublic := ccs.GetNbPublicVariables()
	nbSecret := ccs.GetNbSecretVariables()
	// nbPublic counts the ONE wire; user public leaves are nbPublic-1.
	if len(public) != nbPublic-1 {
		return nil, fmt.Errorf("schema public leaves %d != ccs public user wires %d", len(public), nbPublic-1)
	}
	if len(secret) != nbSecret {
		return nil, fmt.Errorf("schema secret leaves %d != ccs secret wires %d", len(secret), nbSecret)
	}

	// Internal wires are anonymous intermediates; named only by index. They
	// complete the R1CS variable space (gnark layout: ONE, public, secret,
	// internal) that Axe existentially quantifies over.
	nbInternal := internalVariableCount(ccs)

	wires := make([]AxeWireJSON, 0, nbPublic+nbSecret+nbInternal)
	usedSymbols := map[string]struct{}{}
	wires = append(wires, AxeWireJSON{Index: 0, Name: "ONE", ACL2Symbol: "1", Visibility: "one"})
	for i, name := range public {
		wires = append(wires, AxeWireJSON{
			Index:      1 + i,
			Name:       name,
			ACL2Symbol: uniqueACL2Symbol(name, usedSymbols),
			Visibility: "public",
		})
	}
	for i, name := range secret {
		wires = append(wires, AxeWireJSON{
			Index:      nbPublic + i,
			Name:       name,
			ACL2Symbol: uniqueACL2Symbol(name, usedSymbols),
			Visibility: "secret",
		})
	}
	for i := 0; i < nbInternal; i++ {
		idx := nbPublic + nbSecret + i
		name := fmt.Sprintf("internal_%d", idx)
		wires = append(wires, AxeWireJSON{
			Index:      idx,
			Name:       name,
			ACL2Symbol: uniqueACL2Symbol(name, usedSymbols),
			Visibility: "internal",
		})
	}
	return wires, nil
}

func uniqueACL2Symbol(name string, used map[string]struct{}) string {
	base := acl2Symbol(name)
	if base == "" {
		base = "WIRE"
	}
	symbol := base
	for n := 2; ; n++ {
		if _, ok := used[symbol]; !ok {
			used[symbol] = struct{}{}
			return symbol
		}
		symbol = fmt.Sprintf("%s-%d", base, n)
	}
}

func acl2Symbol(name string) string {
	var b strings.Builder
	lastHyphen := false
	for _, r := range strings.ToUpper(name) {
		if (r >= 'A' && r <= 'Z') || (r >= '0' && r <= '9') {
			b.WriteRune(r)
			lastHyphen = false
			continue
		}
		if !lastHyphen {
			b.WriteByte('-')
			lastHyphen = true
		}
	}
	return strings.Trim(b.String(), "-")
}

func internalVariableCount(ccs constraint.ConstraintSystem) int {
	if s, ok := ccs.(interface{ GetNbInternalVariables() int }); ok {
		return s.GetNbInternalVariables()
	}
	return 0
}

func LoadCircuitMetadata(dir string) (*CircuitMetadataJSON, error) {
	path := filepath.Join(dir, "circuit_metadata.json")
	data, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	return LoadCircuitMetadataBytes(data, path)
}

func LoadCircuitMetadataBytes(data []byte, source string) (*CircuitMetadataJSON, error) {
	metadata, err := DecodeCanonicalCircuitMetadataJSON(data)
	if err != nil {
		return nil, fmt.Errorf("decode %s: %w", source, err)
	}
	return &metadata, nil
}

func ValidateCircuitMetadataForCircuit(metadata *CircuitMetadataJSON, expectedCircuit string, ccs constraint.ConstraintSystem) error {
	if metadata == nil {
		return fmt.Errorf("missing circuit metadata")
	}
	if ccs == nil {
		return fmt.Errorf("missing compiled constraint system")
	}
	if metadata.Schema != CircuitMetadataSchema {
		return fmt.Errorf("unsupported circuit metadata schema %q", metadata.Schema)
	}
	if metadata.Curve != "bls12-377" {
		return fmt.Errorf("artifact curve %q does not match expected bls12-377", metadata.Curve)
	}
	if metadata.Circuit != expectedCircuit {
		return fmt.Errorf("artifact circuit %q does not match expected %s", metadata.Circuit, expectedCircuit)
	}
	if metadata.NbConstraints <= 0 || metadata.NbPublic <= 0 || metadata.NbSecret <= 0 {
		return fmt.Errorf("artifact metadata is missing circuit shape; rerun `gnarkctl setup`")
	}
	if metadata.ProvingKeySize <= 0 || metadata.VerifyingKeySize <= 0 {
		return fmt.Errorf("artifact metadata is missing key sizes; rerun `gnarkctl setup`")
	}
	gotConstraints := ccs.GetNbConstraints()
	if metadata.NbConstraints != gotConstraints {
		return fmt.Errorf(
			"artifact mismatch: compiled circuit has %d constraints but metadata says %d; rerun `gnarkctl setup`",
			gotConstraints,
			metadata.NbConstraints,
		)
	}
	gotPublic := ccs.GetNbPublicVariables()
	if metadata.NbPublic != gotPublic {
		return fmt.Errorf(
			"artifact mismatch: compiled circuit has %d public variables but metadata says %d; rerun `gnarkctl setup`",
			gotPublic,
			metadata.NbPublic,
		)
	}
	gotSecret := ccs.GetNbSecretVariables()
	if metadata.NbSecret != gotSecret {
		return fmt.Errorf(
			"artifact mismatch: compiled circuit has %d secret variables but metadata says %d; rerun `gnarkctl setup`",
			gotSecret,
			metadata.NbSecret,
		)
	}
	return nil
}

func ValidateProvingKeyBytes(metadata *CircuitMetadataJSON, data []byte) error {
	if metadata == nil {
		return fmt.Errorf("missing circuit metadata")
	}
	if int64(len(data)) != metadata.ProvingKeySize {
		return fmt.Errorf(
			"proving key size mismatch: metadata says %d bytes, got %d",
			metadata.ProvingKeySize,
			len(data),
		)
	}
	sum := sha256.Sum256(data)
	actual := hex.EncodeToString(sum[:])
	if actual != metadata.ProvingKeySHA256Hex {
		return fmt.Errorf(
			"proving key hash mismatch: metadata says %s, got %s",
			metadata.ProvingKeySHA256Hex,
			actual,
		)
	}
	return nil
}

func SHA256HexFile(path string) (string, error) {
	bytes, err := os.ReadFile(path)
	if err != nil {
		return "", err
	}
	sum := sha256.Sum256(bytes)
	return hex.EncodeToString(sum[:]), nil
}
