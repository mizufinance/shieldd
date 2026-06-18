package circuits

// C3.0 bridge-fidelity check. The axe-json export (artifacts.BuildAxeR1CS) is
// only trustworthy if its constraints are *exactly* gnark's R1CS: a converter
// bug would mean ACL2/Axe proves the wrong system. This test solves each gadget
// in gnark to obtain the full witness vector W (W such that Aw∘Bw - Cw = 0),
// then independently evaluates the exported constraints on that same W and
// asserts every constraint holds mod the field prime. Agreement = the bridge
// preserves gnark's constraint semantics and wire indexing.

import (
	"fmt"
	"math/big"
	"os"
	"path/filepath"
	"strconv"
	"strings"
	"testing"

	"github.com/consensys/gnark-crypto/ecc"
	"github.com/consensys/gnark/constraint"
	cs "github.com/consensys/gnark/constraint/bls12-377"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	gnarkte "github.com/consensys/gnark/std/algebra/native/twistededwards"
	"github.com/consensys/gnark/test"
	decaf377 "github.com/mizufinance/decaf377-go"
	decafgnark "github.com/mizufinance/decaf377-go/gnark"
	"github.com/mizufinance/shieldd/tools/gnark/internal/artifacts"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

type gadgetFidelityCase struct {
	name       string
	blank      frontend.Circuit
	assignment frontend.Circuit
}

func TestAxeExportFidelityPoseidon2(t *testing.T) {
	assertAxeCase(t, poseidon2FidelityCase(t))
}

func TestAxeExportFidelityPoseidonHash4(t *testing.T) {
	assertAxeCase(t, poseidonHash4FidelityCase(t))
}

func TestAxeExportFidelityNullifier(t *testing.T) {
	assertAxeCase(t, nullifierFidelityCase(t))
}

func TestAxeExportFidelityImtGap(t *testing.T) {
	assertAxeCase(t, imtGapFidelityCase())
}

func TestAxeExportFidelityExpandedGadgets(t *testing.T) {
	for _, build := range expandedAxeFidelityCases {
		build := build
		t.Run(build.name, func(t *testing.T) {
			assertAxeCase(t, build.fn(t))
		})
	}
}

func TestPicusExportFidelityAllGadgets(t *testing.T) {
	for _, build := range allPicusFidelityCases {
		build := build
		t.Run(build.name, func(t *testing.T) {
			assertPicusCase(t, build.fn(t))
		})
	}
}

// assertAxeExportMatchesSolvedWitness compiles the gadget, solves it on the
// assignment to get gnark's full witness W, exports the axe-json R1CS, and
// checks A(W)·B(W) == C(W) for every exported constraint.
func assertAxeExportMatchesSolvedWitness(t *testing.T, blank, assignment frontend.Circuit) {
	t.Helper()
	ccs, w := solveCircuit(t, blank, assignment)

	axe, err := artifacts.BuildAxeR1CS(ccs, blank)
	if err != nil {
		t.Fatalf("build axe r1cs: %v", err)
	}
	prime, _ := new(big.Int).SetString(axe.Prime, 10)
	if prime.Cmp(primitives.ScalarField()) != 0 {
		t.Fatalf("axe prime %s != gnark field %s", axe.Prime, primitives.ScalarField())
	}
	if axe.NbWires != len(w) {
		t.Fatalf("axe nb_wires %d != solved witness length %d", axe.NbWires, len(w))
	}
	if len(axe.Constraints) != ccs.GetNbConstraints() {
		t.Fatalf("axe exported %d constraints != gnark %d (dropped/added constraint)", len(axe.Constraints), ccs.GetNbConstraints())
	}

	dot := func(terms []artifacts.AxeTermJSON) *big.Int {
		acc := new(big.Int)
		for _, term := range terms {
			coeff, _ := new(big.Int).SetString(term.Coeff, 10)
			acc.Add(acc, new(big.Int).Mul(coeff, w[term.Wire]))
		}
		return acc.Mod(acc, prime)
	}
	for i, c := range axe.Constraints {
		lhs := new(big.Int).Mul(dot(c.A), dot(c.B))
		lhs.Mod(lhs, prime)
		rhs := dot(c.C)
		if lhs.Cmp(rhs) != 0 {
			t.Fatalf("constraint %d: A·B (%s) != C (%s) on gnark-solved witness", i, lhs, rhs)
		}
	}
}

func assertAxeCase(t *testing.T, tc gadgetFidelityCase) {
	t.Helper()
	assertAxeExportMatchesSolvedWitness(t, tc.blank, tc.assignment)
}

func assertPicusCase(t *testing.T, tc gadgetFidelityCase) {
	t.Helper()
	assertPicusExportMatchesSolvedWitness(t, tc.blank, tc.assignment)
}

// assertPicusExportMatchesSolvedWitness is the same bridge-fidelity check for
// the `.sr1cs` S-expression stream consumed by Picus.
func assertPicusExportMatchesSolvedWitness(t *testing.T, blank, assignment frontend.Circuit) {
	t.Helper()
	ccs, w := solveCircuit(t, blank, assignment)

	path := filepath.Join(t.TempDir(), "gadget.sr1cs")
	if err := artifacts.WriteConstraintSystem(path, ccs, blank); err != nil {
		t.Fatalf("write picus sr1cs: %v", err)
	}
	picus, err := parsePicusSR1CS(path)
	if err != nil {
		t.Fatalf("parse picus sr1cs: %v", err)
	}
	if picus.prime.Cmp(primitives.ScalarField()) != 0 {
		t.Fatalf("picus prime %s != gnark field %s", picus.prime, primitives.ScalarField())
	}
	if len(picus.constraints) != ccs.GetNbConstraints() {
		t.Fatalf("picus exported %d constraints != gnark %d (dropped/added constraint)", len(picus.constraints), ccs.GetNbConstraints())
	}
	assertPicusWireRoles(t, picus, ccs, blank)

	for i, c := range picus.constraints {
		a := dotPicusTerms(t, c.A, w, picus.prime)
		b := dotPicusTerms(t, c.B, w, picus.prime)
		lhs := new(big.Int).Mul(a, b)
		lhs.Mod(lhs, picus.prime)
		rhs := dotPicusTerms(t, c.C, w, picus.prime)
		if lhs.Cmp(rhs) != 0 {
			t.Fatalf("constraint %d: A·B (%s) != C (%s) on gnark-solved witness", i, lhs, rhs)
		}
	}
}

func solveCircuit(t *testing.T, blank, assignment frontend.Circuit) (constraint.ConstraintSystem, []*big.Int) {
	t.Helper()
	field := primitives.ScalarField()
	ccs, err := frontend.Compile(field, r1cs.NewBuilder, blank)
	if err != nil {
		t.Fatalf("compile: %v", err)
	}
	fullWitness, err := frontend.NewWitness(assignment, field)
	if err != nil {
		t.Fatalf("new witness: %v", err)
	}
	solRaw, err := ccs.Solve(fullWitness)
	if err != nil {
		t.Fatalf("solve: %v", err)
	}
	sol, ok := solRaw.(*cs.R1CSSolution)
	if !ok {
		t.Fatalf("unexpected solution type %T", solRaw)
	}
	w := make([]*big.Int, len(sol.W))
	for i := range sol.W {
		w[i] = new(big.Int)
		sol.W[i].BigInt(w[i])
	}
	return ccs, w
}

type picusTerm struct {
	coeff *big.Int
	wire  int
}

type picusConstraint struct {
	A []picusTerm
	B []picusTerm
	C []picusTerm
}

type picusR1CS struct {
	prime       *big.Int
	inputs      []int
	outputs     []int
	constraints []picusConstraint
}

func parsePicusSR1CS(path string) (picusR1CS, error) {
	data, err := os.ReadFile(path)
	if err != nil {
		return picusR1CS{}, err
	}
	var out picusR1CS
	for lineNo, raw := range strings.Split(string(data), "\n") {
		line := strings.TrimSpace(raw)
		if line == "" {
			continue
		}
		switch {
		case strings.HasPrefix(line, "(prime-number "):
			value := strings.TrimSuffix(strings.TrimPrefix(line, "(prime-number "), ")")
			prime, ok := new(big.Int).SetString(strings.TrimSpace(value), 10)
			if !ok {
				return picusR1CS{}, fmt.Errorf("%s:%d: invalid prime %q", path, lineNo+1, value)
			}
			out.prime = prime
		case strings.HasPrefix(line, "(in "):
			wire, err := parsePicusWireRole(line, "in")
			if err != nil {
				return picusR1CS{}, fmt.Errorf("%s:%d: %w", path, lineNo+1, err)
			}
			out.inputs = append(out.inputs, wire)
		case strings.HasPrefix(line, "(out "):
			wire, err := parsePicusWireRole(line, "out")
			if err != nil {
				return picusR1CS{}, fmt.Errorf("%s:%d: %w", path, lineNo+1, err)
			}
			out.outputs = append(out.outputs, wire)
		case strings.HasPrefix(line, "(constraint "):
			constraint, err := parsePicusConstraintLine(line)
			if err != nil {
				return picusR1CS{}, fmt.Errorf("%s:%d: %w", path, lineNo+1, err)
			}
			out.constraints = append(out.constraints, constraint)
		default:
			return picusR1CS{}, fmt.Errorf("%s:%d: unexpected line %q", path, lineNo+1, line)
		}
	}
	if out.prime == nil {
		return picusR1CS{}, fmt.Errorf("%s: missing prime-number header", path)
	}
	return out, nil
}

func parsePicusWireRole(line, role string) (int, error) {
	value := strings.TrimSuffix(strings.TrimPrefix(line, "("+role+" "), ")")
	wire, err := strconv.Atoi(strings.TrimSpace(value))
	if err != nil {
		return 0, fmt.Errorf("invalid %s wire %q: %w", role, value, err)
	}
	return wire, nil
}

func parsePicusConstraintLine(line string) (picusConstraint, error) {
	body := strings.TrimSpace(strings.TrimPrefix(line, "(constraint "))
	body = strings.TrimSpace(strings.TrimSuffix(body, ")"))
	a, rest, err := consumePicusLinearExpression(body)
	if err != nil {
		return picusConstraint{}, fmt.Errorf("A expression: %w", err)
	}
	b, rest, err := consumePicusLinearExpression(rest)
	if err != nil {
		return picusConstraint{}, fmt.Errorf("B expression: %w", err)
	}
	c, rest, err := consumePicusLinearExpression(rest)
	if err != nil {
		return picusConstraint{}, fmt.Errorf("C expression: %w", err)
	}
	if strings.TrimSpace(rest) != "" {
		return picusConstraint{}, fmt.Errorf("trailing data %q", rest)
	}
	return picusConstraint{A: a, B: b, C: c}, nil
}

func consumePicusLinearExpression(input string) ([]picusTerm, string, error) {
	input = strings.TrimSpace(input)
	if !strings.HasPrefix(input, "[") {
		return nil, "", fmt.Errorf("missing '[' in %q", input)
	}
	end := strings.IndexByte(input, ']')
	if end < 0 {
		return nil, "", fmt.Errorf("missing ']' in %q", input)
	}
	terms, err := parsePicusTerms(input[1:end])
	if err != nil {
		return nil, "", err
	}
	return terms, input[end+1:], nil
}

func parsePicusTerms(input string) ([]picusTerm, error) {
	var terms []picusTerm
	for {
		input = strings.TrimSpace(input)
		if input == "" {
			return terms, nil
		}
		if !strings.HasPrefix(input, "(") {
			return nil, fmt.Errorf("missing term '(' in %q", input)
		}
		end := strings.IndexByte(input, ')')
		if end < 0 {
			return nil, fmt.Errorf("missing term ')' in %q", input)
		}
		fields := strings.Fields(input[1:end])
		if len(fields) != 2 {
			return nil, fmt.Errorf("term %q has %d fields", input[:end+1], len(fields))
		}
		coeff, ok := new(big.Int).SetString(fields[0], 10)
		if !ok {
			return nil, fmt.Errorf("invalid coefficient %q", fields[0])
		}
		wire, err := strconv.Atoi(fields[1])
		if err != nil {
			return nil, fmt.Errorf("invalid wire %q: %w", fields[1], err)
		}
		terms = append(terms, picusTerm{coeff: coeff, wire: wire})
		input = input[end+1:]
	}
}

func dotPicusTerms(t *testing.T, terms []picusTerm, w []*big.Int, prime *big.Int) *big.Int {
	t.Helper()
	acc := new(big.Int)
	for _, term := range terms {
		if term.wire < 0 || term.wire >= len(w) {
			t.Fatalf("wire %d outside solved witness length %d", term.wire, len(w))
		}
		acc.Add(acc, new(big.Int).Mul(term.coeff, w[term.wire]))
	}
	return acc.Mod(acc, prime)
}

func assertPicusWireRoles(t *testing.T, picus picusR1CS, ccs constraint.ConstraintSystem, blank frontend.Circuit) {
	t.Helper()
	axe, err := artifacts.BuildAxeR1CS(ccs, blank)
	if err != nil {
		t.Fatalf("build axe manifest for Picus role check: %v", err)
	}
	inputSet := intSet(picus.inputs)
	outputSet := intSet(picus.outputs)
	for _, wire := range axe.Wires {
		switch wire.Visibility {
		case "public":
			if !inputSet[wire.Index] {
				t.Fatalf("public wire %s (%d) must be a Picus input", wire.Name, wire.Index)
			}
			if outputSet[wire.Index] {
				t.Fatalf("public wire %s (%d) must not be a Picus output", wire.Name, wire.Index)
			}
		case "secret":
			wantOutput := isPicusFidelityOutputName(wire.Name)
			if wantOutput && !outputSet[wire.Index] {
				t.Fatalf("claimed-output wire %s (%d) must be a Picus output", wire.Name, wire.Index)
			}
			if !wantOutput && !inputSet[wire.Index] {
				t.Fatalf("auxiliary witness wire %s (%d) must be a Picus input", wire.Name, wire.Index)
			}
		}
	}
}

func intSet(values []int) map[int]bool {
	out := make(map[int]bool, len(values))
	for _, value := range values {
		out[value] = true
	}
	return out
}

// isPicusFidelityOutputName is the test-side oracle for which secret wires must
// be emitted as Picus outputs. It is intentionally an independent reimplementation
// of artifacts.isPicusGadgetOutput (so the test is not tautological) but tracks
// the same rule: every `Out*` wire is a gadget output, plus the non-prefixed
// conventional outputs.
func isPicusFidelityOutputName(name string) bool {
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

type fidelityCaseBuilder struct {
	name string
	fn   func(*testing.T) gadgetFidelityCase
}

var expandedAxeFidelityCases = []fidelityCaseBuilder{
	{name: "gadget-poseidon-hash1", fn: poseidonHash1FidelityCase},
	{name: "gadget-poseidon-hash6", fn: poseidonHash6FidelityCase},
	{name: "gadget-poseidon-hash7", fn: poseidonHash7FidelityCase},
	{name: "gadget-iszero", fn: isZeroFidelityCase},
	{name: "gadget-quad-path-1", fn: quadPath1FidelityCase},
	{name: "gadget-quad-path-2", fn: quadPath2FidelityCase},
	{name: "gadget-quad-path-4", fn: quadPath4FidelityCase},
	{name: "gadget-quad-path-16", fn: quadPath16FidelityCase},
	{name: "gadget-quad-path-24", fn: quadPath24FidelityCase},
	{name: "gadget-decaf-assert-equivalent", fn: assertEquivalentFidelityCase},
	{name: "gadget-decaf-compress-to-field", fn: compressToFieldFidelityCase},
	{name: "gadget-decaf-encode-to-curve", fn: encodeToCurveFidelityCase},
	{name: "gadget-decaf-edwards-add", fn: edwardsAddFidelityCase},
	{name: "gadget-decaf-edwards-double", fn: edwardsDoubleFidelityCase},
	{name: "gadget-decaf-edwards-neg", fn: edwardsNegFidelityCase},
	{name: "gadget-canonical-fq-bits", fn: canonicalFqBitsFidelityCase},
	{name: "gadget-bool-select", fn: boolSelectFidelityCase},
	{name: "gadget-ivk-mod-r", fn: ivkModRFidelityCase},
	{name: "gadget-scalar-mul-le-251", fn: scalarMulLE251FidelityCase},
	{name: "gadget-scalar-mul-le-128", fn: scalarMulLE128FidelityCase},
	{name: "gadget-rvk", fn: decafRvkFidelityCase},
	{name: "gadget-dtk", fn: decafDtkFidelityCase},
	{name: "gadget-net-balance-commitment", fn: netBalanceCommitmentFidelityCase},
}

// newProbeFidelityCases covers the verification-only probe gadgets added for the
// transfer circuit (ladder rung/seam, ack/dleq non-constant-base, net-balance2,
// the encode/compress -core segments, and hash5). Their `Out*` wires must be
// labeled Picus outputs; this list guards that labeling and constraint fidelity.
var newProbeFidelityCases = []fidelityCaseBuilder{
	{name: "gadget-poseidon-hash5", fn: poseidonHash5FidelityCase},
	{name: "gadget-scalar-mul-step", fn: scalarMulStepFidelityCase},
	{name: "gadget-scalar-mul-two-step", fn: scalarMulTwoStepFidelityCase},
	{name: "gadget-ack-two-step", fn: ackTwoStepFidelityCase},
	{name: "gadget-dleq", fn: dleqFidelityCase},
	{name: "gadget-net-balance-commitment2", fn: netBalanceCommitment2FidelityCase},
	{name: "gadget-decaf-encode-to-curve-core", fn: encodeToCurveCoreFidelityCase},
	{name: "gadget-decaf-compress-to-field-core", fn: compressToFieldCoreFidelityCase},
}

var allPicusFidelityCases = append(append([]fidelityCaseBuilder{
	{name: "gadget-poseidon2", fn: poseidon2FidelityCase},
	{name: "gadget-poseidon-hash4", fn: poseidonHash4FidelityCase},
	{name: "gadget-nullifier", fn: nullifierFidelityCase},
	{name: "gadget-imt-gap", fn: func(*testing.T) gadgetFidelityCase { return imtGapFidelityCase() }},
}, expandedAxeFidelityCases...), newProbeFidelityCases...)

func poseidonHash1FidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in0 := big.NewInt(7)
	out, err := primitives.Poseidon377Hash1Native(domain, in0)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:       "gadget-poseidon-hash1",
		blank:      &PoseidonHash1Gadget{},
		assignment: &PoseidonHash1Gadget{Domain: domain, In0: in0, Out: out},
	}
}

func poseidon2FidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in0 := big.NewInt(7)
	in1 := big.NewInt(11)
	out, err := primitives.Poseidon377Hash2Native(domain, [2]*big.Int{in0, in1})
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:       "gadget-poseidon2",
		blank:      &PoseidonHash2Gadget{},
		assignment: &PoseidonHash2Gadget{Domain: domain, In0: in0, In1: in1, Out: out},
	}
}

func poseidonHash4FidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in := [4]*big.Int{big.NewInt(7), big.NewInt(11), big.NewInt(13), big.NewInt(17)}
	out, err := primitives.Poseidon377Hash4Native(domain, in)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:       "gadget-poseidon-hash4",
		blank:      &PoseidonHash4Gadget{},
		assignment: &PoseidonHash4Gadget{Domain: domain, In0: in[0], In1: in[1], In2: in[2], In3: in[3], Out: out},
	}
}

func poseidonHash6FidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in := [6]*big.Int{big.NewInt(7), big.NewInt(11), big.NewInt(13), big.NewInt(17), big.NewInt(19), big.NewInt(23)}
	out, err := primitives.Poseidon377Hash6Native(domain, in)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-poseidon-hash6",
		blank: &PoseidonHash6Gadget{},
		assignment: &PoseidonHash6Gadget{
			Domain: domain, In0: in[0], In1: in[1], In2: in[2], In3: in[3],
			In4: in[4], In5: in[5], Out: out,
		},
	}
}

func poseidonHash7FidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in := [7]*big.Int{big.NewInt(7), big.NewInt(11), big.NewInt(13), big.NewInt(17), big.NewInt(19), big.NewInt(23), big.NewInt(29)}
	out, err := primitives.Poseidon377Hash7Native(domain, in)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-poseidon-hash7",
		blank: &PoseidonHash7Gadget{},
		assignment: &PoseidonHash7Gadget{
			Domain: domain, In0: in[0], In1: in[1], In2: in[2], In3: in[3],
			In4: in[4], In5: in[5], In6: in[6], Out: out,
		},
	}
}

func nullifierFidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	domain := primitives.MustBigInt(vectors.Poseidon377.NullifierDomain)
	nk := big.NewInt(3)
	sc := big.NewInt(5)
	pos := big.NewInt(9)
	nf, err := primitives.Poseidon377Hash3Native(domain, [3]*big.Int{nk, sc, pos})
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:       "gadget-nullifier",
		blank:      &NullifierGadget{},
		assignment: &NullifierGadget{Nk: nk, StateCommitment: sc, Position: pos, Nullifier: nf},
	}
}

func imtGapFidelityCase() gadgetFidelityCase {
	return gadgetFidelityCase{
		name:  "gadget-imt-gap",
		blank: &AssetRegistryGapGadget{},
		assignment: &AssetRegistryGapGadget{
			NoteAssetID: big.NewInt(100),
			IsRegulated: big.NewInt(0),
			LeafValue:   big.NewInt(50),
			NextValue:   big.NewInt(150),
		},
	}
}

func isZeroFidelityCase(*testing.T) gadgetFidelityCase {
	return gadgetFidelityCase{
		name:       "gadget-iszero",
		blank:      &IsZeroGadget{},
		assignment: &IsZeroGadget{In: big.NewInt(0), Out: big.NewInt(1)},
	}
}

func canonicalFqBitsFidelityCase(*testing.T) gadgetFidelityCase {
	return gadgetFidelityCase{
		name:       "gadget-canonical-fq-bits",
		blank:      &CanonicalFqBitsGadget{},
		assignment: &CanonicalFqBitsGadget{In: big.NewInt(123456789)},
	}
}

func boolSelectFidelityCase(*testing.T) gadgetFidelityCase {
	return gadgetFidelityCase{
		name:       "gadget-bool-select",
		blank:      &BoolSelectGadget{},
		assignment: &BoolSelectGadget{Cond: big.NewInt(1), IfTrue: big.NewInt(7), IfFalse: big.NewInt(11), Valid: big.NewInt(7)},
	}
}

func quadPath1FidelityCase(t *testing.T) gadgetFidelityCase {
	fixture := buildQuadPathFixture(t, 1)
	var path [1][3]frontend.Variable
	fillQuadPath(path[:], fixture.path)
	return gadgetFidelityCase{
		name:       "gadget-quad-path-1",
		blank:      &QuadPath1Gadget{},
		assignment: &QuadPath1Gadget{Domain: fixture.domain, LeafHash: fixture.leaf, Position: fixture.position, Path: path, Root: fixture.root},
	}
}

func quadPath2FidelityCase(t *testing.T) gadgetFidelityCase {
	fixture := buildQuadPathFixture(t, 2)
	var path [2][3]frontend.Variable
	fillQuadPath(path[:], fixture.path)
	return gadgetFidelityCase{
		name:       "gadget-quad-path-2",
		blank:      &QuadPath2Gadget{},
		assignment: &QuadPath2Gadget{Domain: fixture.domain, LeafHash: fixture.leaf, Position: fixture.position, Path: path, Root: fixture.root},
	}
}

func quadPath4FidelityCase(t *testing.T) gadgetFidelityCase {
	fixture := buildQuadPathFixture(t, 4)
	var path [4][3]frontend.Variable
	fillQuadPath(path[:], fixture.path)
	return gadgetFidelityCase{
		name:       "gadget-quad-path-4",
		blank:      &QuadPath4Gadget{},
		assignment: &QuadPath4Gadget{Domain: fixture.domain, LeafHash: fixture.leaf, Position: fixture.position, Path: path, Root: fixture.root},
	}
}

func quadPath16FidelityCase(t *testing.T) gadgetFidelityCase {
	fixture := buildQuadPathFixture(t, 16)
	var path [16][3]frontend.Variable
	fillQuadPath(path[:], fixture.path)
	return gadgetFidelityCase{
		name:       "gadget-quad-path-16",
		blank:      &QuadPath16Gadget{},
		assignment: &QuadPath16Gadget{Domain: fixture.domain, LeafHash: fixture.leaf, Position: fixture.position, Path: path, Root: fixture.root},
	}
}

func quadPath24FidelityCase(t *testing.T) gadgetFidelityCase {
	fixture := buildQuadPathFixture(t, 24)
	var path [24][3]frontend.Variable
	fillQuadPath(path[:], fixture.path)
	return gadgetFidelityCase{
		name:       "gadget-quad-path-24",
		blank:      &QuadPath24Gadget{},
		assignment: &QuadPath24Gadget{Domain: fixture.domain, LeafHash: fixture.leaf, Position: fixture.position, Path: path, Root: fixture.root},
	}
}

func assertEquivalentFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	return gadgetFidelityCase{
		name:  "gadget-decaf-assert-equivalent",
		blank: &AssertEquivalentGadget{},
		assignment: &AssertEquivalentGadget{
			LX: gen.X, LY: gen.Y,
			RX: gen.X, RY: gen.Y,
		},
	}
}

func compressToFieldFidelityCase(t *testing.T) gadgetFidelityCase {
	point := encodedPoint(t, big.NewInt(42))
	expected, err := decafgnark.CompressToFieldNative(point)
	if err != nil {
		t.Fatal(err)
	}
	x := point.X.(*big.Int)
	y := point.Y.(*big.Int)
	wasSquare, sqrtRatio := sqrtRatioZetaWitness(compressDen(x, y))
	ws := boolBigInt(wasSquare)
	return gadgetFidelityCase{
		name:       "gadget-decaf-compress-to-field",
		blank:      &CompressToFieldGadget{},
		assignment: &CompressToFieldGadget{X: x, Y: y, WasSquare: ws, SqrtRatio: sqrtRatio, Out: expected},
	}
}

func encodeToCurveFidelityCase(t *testing.T) gadgetFidelityCase {
	input := big.NewInt(42)
	expected := encodedPoint(t, input)
	wasSquare, invSqrt := acceptedEncodeWitness(t, input, expected)
	return gadgetFidelityCase{
		name:  "gadget-decaf-encode-to-curve",
		blank: &EncodeToCurveGadget{},
		assignment: &EncodeToCurveGadget{
			Input: input, WasSquare: wasSquare, InvSqrt: invSqrt,
			OutX: expected.X, OutY: expected.Y,
		},
	}
}

func edwardsAddFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	right, err := decaf377.ScalarMul(gen, big.NewInt(5))
	if err != nil {
		t.Fatal(err)
	}
	out, err := decafgnark.PointAddNative(
		gnarkte.Point{X: gen.X, Y: gen.Y},
		gnarkte.Point{X: right.X, Y: right.Y},
	)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-decaf-edwards-add",
		blank: &EdwardsAddGadget{},
		assignment: &EdwardsAddGadget{
			LX: gen.X, LY: gen.Y, RX: right.X, RY: right.Y,
			OutX: out.X, OutY: out.Y,
		},
	}
}

func edwardsDoubleFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	out, err := decafgnark.PointAddNative(
		gnarkte.Point{X: gen.X, Y: gen.Y},
		gnarkte.Point{X: gen.X, Y: gen.Y},
	)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:       "gadget-decaf-edwards-double",
		blank:      &EdwardsDoubleGadget{},
		assignment: &EdwardsDoubleGadget{X: gen.X, Y: gen.Y, OutX: out.X, OutY: out.Y},
	}
}

func edwardsNegFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	out := decafNegNative(gnarkte.Point{X: gen.X, Y: gen.Y})
	return gadgetFidelityCase{
		name:       "gadget-decaf-edwards-neg",
		blank:      &EdwardsNegGadget{},
		assignment: &EdwardsNegGadget{X: gen.X, Y: gen.Y, OutX: out.X, OutY: out.Y},
	}
}

func ivkModRFidelityCase(*testing.T) gadgetFidelityCase {
	quotient := big.NewInt(3)
	reduced := big.NewInt(42)
	ivkModQ := new(big.Int).Mul(decaf377.ScalarOrder(), quotient)
	ivkModQ.Add(ivkModQ, reduced)
	return gadgetFidelityCase{
		name:       "gadget-ivk-mod-r",
		blank:      &IvkModRGadget{},
		assignment: &IvkModRGadget{IvkModQ: ivkModQ, QuotientA: quotient, IvkReduced: reduced},
	}
}

func scalarMulLE251FidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	scalar := big.NewInt(17)
	out, err := decaf377.ScalarMul(gen, scalar)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-scalar-mul-le-251",
		blank: &ScalarMulLE251Gadget{},
		assignment: &ScalarMulLE251Gadget{
			BaseX: gen.X, BaseY: gen.Y, Scalar: scalar,
			OutX: out.X, OutY: out.Y,
		},
	}
}

func scalarMulLE128FidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	scalar := big.NewInt(13)
	out, err := decaf377.ScalarMul(gen, scalar)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-scalar-mul-le-128",
		blank: &ScalarMulLE128Gadget{},
		assignment: &ScalarMulLE128Gadget{
			BaseX: gen.X, BaseY: gen.Y, Scalar: scalar,
			OutX: out.X, OutY: out.Y,
		},
	}
}

func decafRvkFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	ak, err := decaf377.ScalarMul(gen, big.NewInt(19))
	if err != nil {
		t.Fatal(err)
	}
	randomizer := big.NewInt(23)
	randomizedPart, err := decaf377.ScalarMul(gen, randomizer)
	if err != nil {
		t.Fatal(err)
	}
	out, err := decaf377.Add(ak, randomizedPart)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-rvk",
		blank: &DecafRvkGadget{},
		assignment: &DecafRvkGadget{
			AkX: ak.X, AkY: ak.Y, Randomizer: randomizer,
			OutX: out.X, OutY: out.Y,
		},
	}
}

func decafDtkFidelityCase(t *testing.T) gadgetFidelityCase {
	vectors := loadVectors(t)
	gen := decafGenerator(t)
	nk := big.NewInt(29)
	ak, err := decaf377.ScalarMul(gen, big.NewInt(31))
	if err != nil {
		t.Fatal(err)
	}
	akPoint := gnarkte.Point{X: ak.X, Y: ak.Y}
	akCompressed, err := decafgnark.CompressToFieldNative(akPoint)
	if err != nil {
		t.Fatal(err)
	}
	ivkModQ, err := primitives.Poseidon377Hash2Native(
		primitives.MustBigInt(vectors.Poseidon377.IVKDomain),
		[2]*big.Int{nk, akCompressed},
	)
	if err != nil {
		t.Fatal(err)
	}
	ivkQuotient := new(big.Int).Div(ivkModQ, decaf377.ScalarOrder())
	ivkReduced := new(big.Int).Mod(ivkModQ, decaf377.ScalarOrder())
	out, err := decaf377.ScalarMul(gen, ivkReduced)
	if err != nil {
		t.Fatal(err)
	}
	wasSquare, sqrtRatio := sqrtRatioZetaWitness(compressDen(ak.X, ak.Y))
	return gadgetFidelityCase{
		name:  "gadget-dtk",
		blank: &DecafDtkGadget{},
		assignment: &DecafDtkGadget{
			Nk: nk, AkX: ak.X, AkY: ak.Y, DivGenX: gen.X, DivGenY: gen.Y,
			WasSquare: boolBigInt(wasSquare), SqrtRatio: sqrtRatio,
			IvkReduced: ivkReduced, IvkQuotient: ivkQuotient,
			OutX: out.X, OutY: out.Y,
		},
	}
}

func netBalanceCommitmentFidelityCase(t *testing.T) gadgetFidelityCase {
	input0 := big.NewInt(17)
	input1 := big.NewInt(19)
	output := big.NewInt(23)
	assetID := big.NewInt(41)
	blinding := big.NewInt(43)
	out, assetHash, err := netBalanceNativeForTest(input0, input1, output, assetID, blinding)
	if err != nil {
		t.Fatal(err)
	}
	wasSquare, invSqrt := sqrtRatioZetaWitness(encodeSqrtInput(assetHash))
	roots := []*big.Int{invSqrt, new(big.Int).Mod(new(big.Int).Neg(invSqrt), decaf377.FieldModulus())}
	for _, root := range roots {
		assignment := &NetBalanceCommitmentGadget{
			Input0Amount: input0, Input1Amount: input1, OutputAmount: output,
			AssetID: assetID, BalanceBlinding: blinding,
			EncodeWasSquare: boolBigInt(wasSquare), EncodeInvSqrt: root,
			OutX: out.X, OutY: out.Y,
		}
		if err := test.IsSolved(&NetBalanceCommitmentGadget{}, assignment, ecc.BLS12_377.ScalarField()); err == nil {
			return gadgetFidelityCase{name: "gadget-net-balance-commitment", blank: &NetBalanceCommitmentGadget{}, assignment: assignment}
		}
	}
	t.Fatal("net-balance gadget rejected native output for both encode sqrt signs")
	return gadgetFidelityCase{}
}

func loadVectors(t *testing.T) primitives.PrototypeVectors {
	t.Helper()
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	return vectors
}

func boolBigInt(value bool) *big.Int {
	if value {
		return big.NewInt(1)
	}
	return big.NewInt(0)
}

func decafGenerator(t *testing.T) decaf377.Point {
	t.Helper()
	gen, err := decaf377.Generator()
	if err != nil {
		t.Fatal(err)
	}
	return gen
}

func encodedPoint(t *testing.T, input *big.Int) gnarkte.Point {
	t.Helper()
	point, err := decafgnark.EncodeToCurveNative(input)
	if err != nil {
		t.Fatal(err)
	}
	return point
}

func acceptedEncodeWitness(t *testing.T, input *big.Int, expected gnarkte.Point) (*big.Int, *big.Int) {
	t.Helper()
	wasSquare, invSqrt := sqrtRatioZetaWitness(encodeSqrtInput(input))
	roots := []*big.Int{invSqrt, new(big.Int).Mod(new(big.Int).Neg(invSqrt), decaf377.FieldModulus())}
	for _, root := range roots {
		ws := boolBigInt(wasSquare)
		assignment := &EncodeToCurveGadget{
			Input: input, WasSquare: ws, InvSqrt: root,
			OutX: expected.X, OutY: expected.Y,
		}
		if err := test.IsSolved(&EncodeToCurveGadget{}, assignment, ecc.BLS12_377.ScalarField()); err == nil {
			return ws, root
		}
	}
	t.Fatal("encode mirror rejected native output for both sqrt signs")
	return nil, nil
}

type quadPathFixture struct {
	domain   *big.Int
	leaf     *big.Int
	position *big.Int
	path     [][3]*big.Int
	root     *big.Int
}

func buildQuadPathFixture(t *testing.T, depth int) quadPathFixture {
	t.Helper()
	domain := big.NewInt(0)
	leaf := big.NewInt(101)
	position := uint64(0x1d) & ((uint64(1) << uint(2*depth)) - 1)
	path := make([][3]*big.Int, depth)
	for layer := 0; layer < depth; layer++ {
		base := int64(1000 + 10*layer)
		path[layer] = [3]*big.Int{big.NewInt(base + 1), big.NewInt(base + 2), big.NewInt(base + 3)}
	}
	root := quadPathRoot(t, domain, leaf, path, position)
	return quadPathFixture{
		domain:   domain,
		leaf:     leaf,
		position: new(big.Int).SetUint64(position),
		path:     path,
		root:     root,
	}
}

func quadPathRoot(t *testing.T, domain, leaf *big.Int, path [][3]*big.Int, position uint64) *big.Int {
	t.Helper()
	current := new(big.Int).Set(leaf)
	for layerIdx := 0; layerIdx < len(path); layerIdx++ {
		bit0 := (position >> (layerIdx * 2)) & 1
		bit1 := (position >> (layerIdx*2 + 1)) & 1
		index := int(bit0 + 2*bit1)
		children := [4]*big.Int{}
		switch index {
		case 0:
			children = [4]*big.Int{current, path[layerIdx][0], path[layerIdx][1], path[layerIdx][2]}
		case 1:
			children = [4]*big.Int{path[layerIdx][0], current, path[layerIdx][1], path[layerIdx][2]}
		case 2:
			children = [4]*big.Int{path[layerIdx][0], path[layerIdx][1], current, path[layerIdx][2]}
		case 3:
			children = [4]*big.Int{path[layerIdx][0], path[layerIdx][1], path[layerIdx][2], current}
		}
		parent, err := primitives.Poseidon377Hash4Native(domain, children)
		if err != nil {
			t.Fatal(err)
		}
		current = parent
	}
	return current
}

func fillQuadPath(dst [][3]frontend.Variable, src [][3]*big.Int) {
	for i := range dst {
		for j := range dst[i] {
			dst[i][j] = src[i][j]
		}
	}
}

// --- new probe fidelity cases (transfer ladder/seam, ack/dleq, net-balance2,
// encode/compress -core, hash5) ---

func decafIdentityPoint() gnarkte.Point {
	return gnarkte.Point{X: big.NewInt(0), Y: big.NewInt(1)}
}

func decafDoubleNative(t *testing.T, p gnarkte.Point) gnarkte.Point {
	t.Helper()
	out, err := decafgnark.PointAddNative(p, p)
	if err != nil {
		t.Fatal(err)
	}
	return out
}

// scalarMulStepNative mirrors scalarMulStep: acc' = bit ? acc+cur : acc, cur' = 2·cur.
func scalarMulStepNative(t *testing.T, bit bool, acc, cur gnarkte.Point) (gnarkte.Point, gnarkte.Point) {
	t.Helper()
	nextCur := decafDoubleNative(t, cur)
	nextAcc := acc
	if bit {
		var err error
		nextAcc, err = decafgnark.PointAddNative(acc, cur)
		if err != nil {
			t.Fatal(err)
		}
	}
	return nextAcc, nextCur
}

// scalarMulPrefixAccNative mirrors scalarMulTwoStepPrefix from acc=identity, cur=base.
func scalarMulPrefixAccNative(t *testing.T, base gnarkte.Point, bit0, bit1 bool) gnarkte.Point {
	t.Helper()
	acc, cur := scalarMulStepNative(t, bit0, decafIdentityPoint(), base)
	acc, _ = scalarMulStepNative(t, bit1, acc, cur)
	return acc
}

func boolToVar(b bool) *big.Int { return boolBigInt(b) }

func poseidonHash5FidelityCase(t *testing.T) gadgetFidelityCase {
	domain := big.NewInt(7)
	in := [5]*big.Int{big.NewInt(11), big.NewInt(13), big.NewInt(17), big.NewInt(19), big.NewInt(23)}
	out, err := primitives.Poseidon377Hash5Native(domain, in)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-poseidon-hash5",
		blank: &PoseidonHash5Gadget{},
		assignment: &PoseidonHash5Gadget{
			Domain: domain, In0: in[0], In1: in[1], In2: in[2], In3: in[3], In4: in[4],
			Out: out,
		},
	}
}

func scalarMulStepFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	acc := gnarkte.Point{X: gen.X, Y: gen.Y}
	cur := decafDoubleNative(t, acc)
	outAcc, outCur := scalarMulStepNative(t, true, acc, cur)
	return gadgetFidelityCase{
		name:  "gadget-scalar-mul-step",
		blank: &ScalarMulStepGadget{},
		assignment: &ScalarMulStepGadget{
			Bit: big.NewInt(1), AccX: acc.X, AccY: acc.Y, CurX: cur.X, CurY: cur.Y,
			OutAccX: outAcc.X, OutAccY: outAcc.Y, OutCurX: outCur.X, OutCurY: outCur.Y,
		},
	}
}

func scalarMulTwoStepFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	acc := gnarkte.Point{X: gen.X, Y: gen.Y}
	cur := decafDoubleNative(t, acc)
	acc1, cur1 := scalarMulStepNative(t, true, acc, cur)
	outAcc, outCur := scalarMulStepNative(t, false, acc1, cur1)
	return gadgetFidelityCase{
		name:  "gadget-scalar-mul-two-step",
		blank: &ScalarMulTwoStepGadget{},
		assignment: &ScalarMulTwoStepGadget{
			Bit0: big.NewInt(1), Bit1: big.NewInt(0),
			AccX: acc.X, AccY: acc.Y, CurX: cur.X, CurY: cur.Y,
			OutAccX: outAcc.X, OutAccY: outAcc.Y, OutCurX: outCur.X, OutCurY: outCur.Y,
		},
	}
}

func ackTwoStepFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	base := gnarkte.Point{X: gen.X, Y: gen.Y}
	acc1, cur1 := scalarMulStepNative(t, true, decafIdentityPoint(), base)
	outAcc, outCur := scalarMulStepNative(t, true, acc1, cur1)
	return gadgetFidelityCase{
		name:  "gadget-ack-two-step",
		blank: &AckTwoStepGadget{},
		assignment: &AckTwoStepGadget{
			Bit0: big.NewInt(1), Bit1: big.NewInt(1),
			RingPKX: base.X, RingPKY: base.Y,
			OutAccX: outAcc.X, OutAccY: outAcc.Y, OutCurX: outCur.X, OutCurY: outCur.Y,
		},
	}
}

func dleqFidelityCase(t *testing.T) gadgetFidelityCase {
	gen := decafGenerator(t)
	genPt := gnarkte.Point{X: gen.X, Y: gen.Y}
	ack := decafDoubleNative(t, genPt)
	negEPK := decafNegNative(genPt)
	negSPoint := decafNegNative(ack)
	sb0, sb1 := true, false
	cb0, cb1 := true, true
	rRec, err := decafgnark.PointAddNative(
		scalarMulPrefixAccNative(t, genPt, sb0, sb1),
		scalarMulPrefixAccNative(t, negEPK, cb0, cb1),
	)
	if err != nil {
		t.Fatal(err)
	}
	rpRec, err := decafgnark.PointAddNative(
		scalarMulPrefixAccNative(t, ack, sb0, sb1),
		scalarMulPrefixAccNative(t, negSPoint, cb0, cb1),
	)
	if err != nil {
		t.Fatal(err)
	}
	return gadgetFidelityCase{
		name:  "gadget-dleq",
		blank: &DLEQGadget{},
		assignment: &DLEQGadget{
			SBit0: boolToVar(sb0), SBit1: boolToVar(sb1), CBit0: boolToVar(cb0), CBit1: boolToVar(cb1),
			GeneratorX: genPt.X, GeneratorY: genPt.Y,
			AckX: ack.X, AckY: ack.Y,
			NegEPKX: negEPK.X, NegEPKY: negEPK.Y,
			NegSPointX: negSPoint.X, NegSPointY: negSPoint.Y,
			OutRRecX: rRec.X, OutRRecY: rRec.Y, OutRPRecX: rpRec.X, OutRPRecY: rpRec.Y,
		},
	}
}

func netBalanceCommitment2FidelityCase(t *testing.T) gadgetFidelityCase {
	input0 := big.NewInt(17)
	input1 := big.NewInt(19)
	output0 := big.NewInt(13)
	output1 := big.NewInt(10)
	assetID := big.NewInt(41)
	blinding := big.NewInt(43)

	// Reuse the 1-output native helper for in0+in1-output0+blinding, then
	// subtract output1·valueGenerator to obtain the 2-output net balance.
	sum, assetHash, err := netBalanceNativeForTest(input0, input1, output0, assetID, blinding)
	if err != nil {
		t.Fatal(err)
	}
	valueGenerator, err := decafgnark.EncodeToCurveNative(assetHash)
	if err != nil {
		t.Fatal(err)
	}
	output1Point, err := decafgnark.ScalarMulNative(valueGenerator, output1, 128)
	if err != nil {
		t.Fatal(err)
	}
	out, err := decafgnark.PointAddNative(sum, decafNegNative(output1Point))
	if err != nil {
		t.Fatal(err)
	}

	wasSquare, invSqrt := sqrtRatioZetaWitness(encodeSqrtInput(assetHash))
	roots := []*big.Int{invSqrt, new(big.Int).Mod(new(big.Int).Neg(invSqrt), decaf377.FieldModulus())}
	for _, root := range roots {
		assignment := &NetBalanceCommitment2Gadget{
			Input0Amount: input0, Input1Amount: input1,
			Output0Amount: output0, Output1Amount: output1,
			AssetID: assetID, BalanceBlinding: blinding,
			EncodeWasSquare: boolBigInt(wasSquare), EncodeInvSqrt: root,
			OutX: out.X, OutY: out.Y,
		}
		if err := test.IsSolved(&NetBalanceCommitment2Gadget{}, assignment, ecc.BLS12_377.ScalarField()); err == nil {
			return gadgetFidelityCase{name: "gadget-net-balance-commitment2", blank: &NetBalanceCommitment2Gadget{}, assignment: assignment}
		}
	}
	t.Fatal("net-balance2 gadget rejected native output for both encode sqrt signs")
	return gadgetFidelityCase{}
}

func encodeToCurveCoreFidelityCase(t *testing.T) gadgetFidelityCase {
	input := big.NewInt(42)
	expected := encodedPoint(t, input)
	wasSquare, invSqrt := sqrtRatioZetaWitness(encodeSqrtInput(input))
	ws := boolBigInt(wasSquare)
	roots := []*big.Int{invSqrt, new(big.Int).Mod(new(big.Int).Neg(invSqrt), decaf377.FieldModulus())}
	for _, root := range roots {
		for _, isNeg := range []*big.Int{big.NewInt(0), big.NewInt(1)} {
			assignment := &EncodeToCurveCoreGadget{
				Input: input, WasSquare: ws, InvSqrt: root, IsNegative: isNeg,
				OutX: expected.X, OutY: expected.Y,
			}
			if err := test.IsSolved(&EncodeToCurveCoreGadget{}, assignment, ecc.BLS12_377.ScalarField()); err == nil {
				return gadgetFidelityCase{name: "gadget-decaf-encode-to-curve-core", blank: &EncodeToCurveCoreGadget{}, assignment: assignment}
			}
		}
	}
	t.Fatal("encode-to-curve-core gadget rejected native output for all sign witnesses")
	return gadgetFidelityCase{}
}

func compressToFieldCoreFidelityCase(t *testing.T) gadgetFidelityCase {
	point := encodedPoint(t, big.NewInt(42))
	expected, err := decafgnark.CompressToFieldNative(point)
	if err != nil {
		t.Fatal(err)
	}
	x := point.X.(*big.Int)
	y := point.Y.(*big.Int)
	wasSquare, sqrtRatio := sqrtRatioZetaWitness(compressDen(x, y))
	ws := boolBigInt(wasSquare)
	roots := []*big.Int{sqrtRatio, new(big.Int).Mod(new(big.Int).Neg(sqrtRatio), decaf377.FieldModulus())}
	for _, root := range roots {
		for _, sign1 := range []*big.Int{big.NewInt(0), big.NewInt(1)} {
			for _, sign2 := range []*big.Int{big.NewInt(0), big.NewInt(1)} {
				assignment := &CompressToFieldCoreGadget{
					X: x, Y: y, WasSquare: ws, SqrtRatio: root, Sign1: sign1, Sign2: sign2,
					Out: expected,
				}
				if err := test.IsSolved(&CompressToFieldCoreGadget{}, assignment, ecc.BLS12_377.ScalarField()); err == nil {
					return gadgetFidelityCase{name: "gadget-decaf-compress-to-field-core", blank: &CompressToFieldCoreGadget{}, assignment: assignment}
				}
			}
		}
	}
	t.Fatal("compress-to-field-core gadget rejected native output for all sign witnesses")
	return gadgetFidelityCase{}
}
