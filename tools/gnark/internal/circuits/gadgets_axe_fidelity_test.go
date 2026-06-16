package circuits

// C3.0 bridge-fidelity check. The axe-json export (artifacts.BuildAxeR1CS) is
// only trustworthy if its constraints are *exactly* gnark's R1CS: a converter
// bug would mean ACL2/Axe proves the wrong system. This test solves each gadget
// in gnark to obtain the full witness vector W (W such that Aw∘Bw - Cw = 0),
// then independently evaluates the exported constraints on that same W and
// asserts every constraint holds mod the field prime. Agreement = the bridge
// preserves gnark's constraint semantics and wire indexing.

import (
	"math/big"
	"testing"

	cs "github.com/consensys/gnark/constraint/bls12-377"
	"github.com/consensys/gnark/frontend"
	"github.com/consensys/gnark/frontend/cs/r1cs"
	"github.com/mizufinance/shieldd/tools/gnark/internal/artifacts"
	"github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

func TestAxeExportFidelityPoseidon2(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in0 := big.NewInt(7)
	in1 := big.NewInt(11)
	out, err := primitives.Poseidon377Hash2Native(domain, [2]*big.Int{in0, in1})
	if err != nil {
		t.Fatal(err)
	}
	assignment := &PoseidonHash2Gadget{Domain: domain, In0: in0, In1: in1, Out: out}
	assertAxeExportMatchesSolvedWitness(t, &PoseidonHash2Gadget{}, assignment)
}

func TestAxeExportFidelityPoseidonHash4(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	domain := primitives.MustBigInt(vectors.Poseidon377.IVKDomain)
	in := [4]*big.Int{big.NewInt(7), big.NewInt(11), big.NewInt(13), big.NewInt(17)}
	out, err := primitives.Poseidon377Hash4Native(domain, in)
	if err != nil {
		t.Fatal(err)
	}
	assignment := &PoseidonHash4Gadget{Domain: domain, In0: in[0], In1: in[1], In2: in[2], In3: in[3], Out: out}
	assertAxeExportMatchesSolvedWitness(t, &PoseidonHash4Gadget{}, assignment)
}

func TestAxeExportFidelityNullifier(t *testing.T) {
	vectors, err := primitives.LoadPrototypeVectors()
	if err != nil {
		t.Fatal(err)
	}
	domain := primitives.MustBigInt(vectors.Poseidon377.NullifierDomain)
	nk := big.NewInt(3)
	sc := big.NewInt(5)
	pos := big.NewInt(9)
	nf, err := primitives.Poseidon377Hash3Native(domain, [3]*big.Int{nk, sc, pos})
	if err != nil {
		t.Fatal(err)
	}
	assignment := &NullifierGadget{Nk: nk, StateCommitment: sc, Position: pos, Nullifier: nf}
	assertAxeExportMatchesSolvedWitness(t, &NullifierGadget{}, assignment)
}

func TestAxeExportFidelityImtGap(t *testing.T) {
	// Unregulated non-membership: leafValue < noteAssetID < nextValue.
	assignment := &AssetRegistryGapGadget{
		NoteAssetID: big.NewInt(100),
		IsRegulated: big.NewInt(0),
		LeafValue:   big.NewInt(50),
		NextValue:   big.NewInt(150),
	}
	assertAxeExportMatchesSolvedWitness(t, &AssetRegistryGapGadget{}, assignment)
}

// assertAxeExportMatchesSolvedWitness compiles the gadget, solves it on the
// assignment to get gnark's full witness W, exports the axe-json R1CS, and
// checks A(W)·B(W) == C(W) for every exported constraint.
func assertAxeExportMatchesSolvedWitness(t *testing.T, blank, assignment frontend.Circuit) {
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

	axe, err := artifacts.BuildAxeR1CS(ccs, blank)
	if err != nil {
		t.Fatalf("build axe r1cs: %v", err)
	}
	prime, _ := new(big.Int).SetString(axe.Prime, 10)
	if prime.Cmp(field) != 0 {
		t.Fatalf("axe prime %s != gnark field %s", axe.Prime, field)
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
