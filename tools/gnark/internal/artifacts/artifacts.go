package artifacts

import (
	"bufio"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"os"
	"path/filepath"
	"reflect"

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
	Curve                 string  `json:"curve"`
	Circuit               string  `json:"circuit"`
	CompileMS             float64 `json:"compile_ms"`
	SetupMS               float64 `json:"setup_ms"`
	ProvingKeySize        int64   `json:"proving_key_size_bytes"`
	VerifyingKeySize      int64   `json:"verifying_key_size_bytes"`
	NbConstraints         int     `json:"nb_constraints"`
	NbPublic              int     `json:"nb_public_variables"`
	NbSecret              int     `json:"nb_secret_variables"`
	ProvingKeySHA256Hex   string  `json:"proving_key_sha256_hex,omitempty"`
	VerifyingKeySHA256Hex string  `json:"verifying_key_sha256_hex,omitempty"`
	VerifyingKeyID        string  `json:"verifying_key_id,omitempty"`
}

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

func WriteConstraintSystem(path string, ccs constraint.ConstraintSystem) error {
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

	nbPublic := ccs.GetNbPublicVariables()
	nbSecret := ccs.GetNbSecretVariables()
	for wire := nbPublic; wire < nbPublic+nbSecret; wire++ {
		if _, err := fmt.Fprintf(writer, "(in %d)\n", wire); err != nil {
			return err
		}
	}
	for wire := 1; wire < nbPublic; wire++ {
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
	wires = append(wires, AxeWireJSON{Index: 0, Name: "ONE", Visibility: "one"})
	for i, name := range public {
		wires = append(wires, AxeWireJSON{Index: 1 + i, Name: name, Visibility: "public"})
	}
	for i, name := range secret {
		wires = append(wires, AxeWireJSON{Index: nbPublic + i, Name: name, Visibility: "secret"})
	}
	for i := 0; i < nbInternal; i++ {
		idx := nbPublic + nbSecret + i
		wires = append(wires, AxeWireJSON{Index: idx, Name: fmt.Sprintf("internal_%d", idx), Visibility: "internal"})
	}
	return wires, nil
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
	var metadata CircuitMetadataJSON
	if err := json.Unmarshal(data, &metadata); err != nil {
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
	if metadata.Curve != "bls12-377" {
		return fmt.Errorf("artifact curve %q does not match expected bls12-377", metadata.Curve)
	}
	if metadata.Circuit != expectedCircuit {
		return fmt.Errorf("artifact circuit %q does not match expected %s", metadata.Circuit, expectedCircuit)
	}
	if metadata.NbConstraints <= 0 || metadata.NbPublic <= 0 || metadata.NbSecret <= 0 {
		return fmt.Errorf("artifact metadata is missing circuit shape; rerun `gnarkctl setup`")
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

func SHA256HexFile(path string) (string, error) {
	bytes, err := os.ReadFile(path)
	if err != nil {
		return "", err
	}
	sum := sha256.Sum256(bytes)
	return hex.EncodeToString(sum[:]), nil
}
