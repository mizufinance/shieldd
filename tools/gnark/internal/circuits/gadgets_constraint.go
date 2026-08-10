package circuits

// Gadget wrapper circuits for constraint-system (R1CS) verification at gadget
// scope (Phase C / Track C). Each wraps a single soundness-critical gadget in a
// minimal `frontend.Circuit` so an under-constraint checker (Picus/Ecne) can
// analyze it apart from the whole transaction circuit, where the Poseidon +
// Merkle + Decaf377 system is too large for SMT-based tools to discharge.
//
// These circuits carry no fixtures and prove no statement on their own; they
// exist purely as small, labelled R1CS export targets. Whole-circuit families
// remain out of reach by design — see docs/soundness and
// docs/soundness/fv.md.

import (
	"github.com/consensys/gnark/frontend"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
	"github.com/reilabs/gnark-lean-extractor/v3/abstractor"
)

// PoseidonHash1Gadget isolates the one-input Poseidon377 permutation used for
// TCT leaf hashing before the quad state-commitment path.
type PoseidonHash1Gadget struct {
	Domain frontend.Variable `gnark:",public"`
	In0    frontend.Variable `gnark:",public"`
	Out    frontend.Variable
}

func (c *PoseidonHash1Gadget) Define(api frontend.API) error {
	out, err := Poseidon377Hash1(api, c.Domain, c.In0)
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// PoseidonHash2Gadget isolates the two-input Poseidon377 permutation: given a
// domain separator and two field inputs, the claimed output must equal the
// hash. The domain is a public wire so the gadget needs no fixture state.
type PoseidonHash2Gadget struct {
	Domain frontend.Variable `gnark:",public"`
	In0    frontend.Variable `gnark:",public"`
	In1    frontend.Variable `gnark:",public"`
	Out    frontend.Variable
}

func (c *PoseidonHash2Gadget) Define(api frontend.API) error {
	out, err := Poseidon377Hash2(api, c.Domain, [2]frontend.Variable{c.In0, c.In1})
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// PoseidonHash4Gadget isolates the four-input Poseidon377 permutation (rate-4,
// t=5), the per-layer hash of the quad Merkle path (VerifyQuadPath). Same shape
// as PoseidonHash2Gadget, wider permutation.
type PoseidonHash4Gadget struct {
	Domain frontend.Variable `gnark:",public"`
	In0    frontend.Variable `gnark:",public"`
	In1    frontend.Variable `gnark:",public"`
	In2    frontend.Variable `gnark:",public"`
	In3    frontend.Variable `gnark:",public"`
	Out    frontend.Variable
}

func (c *PoseidonHash4Gadget) Define(api frontend.API) error {
	out, err := Poseidon377Hash4(api, c.Domain, [4]frontend.Variable{c.In0, c.In1, c.In2, c.In3})
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// PoseidonHash5Gadget isolates the five-input Poseidon377 permutation used by
// asset-registry ring and leaf commitments in the transfer compliance path.
type PoseidonHash5Gadget struct {
	Domain frontend.Variable `gnark:",public"`
	In0    frontend.Variable `gnark:",public"`
	In1    frontend.Variable `gnark:",public"`
	In2    frontend.Variable `gnark:",public"`
	In3    frontend.Variable `gnark:",public"`
	In4    frontend.Variable `gnark:",public"`
	Out    frontend.Variable
}

func (c *PoseidonHash5Gadget) Define(api frontend.API) error {
	out, err := Poseidon377Hash5(api, c.Domain, [5]frontend.Variable{c.In0, c.In1, c.In2, c.In3, c.In4})
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// PoseidonHash6Gadget isolates the six-input Poseidon377 permutation used by
// note commitments.
type PoseidonHash6Gadget struct {
	Domain frontend.Variable `gnark:",public"`
	In0    frontend.Variable `gnark:",public"`
	In1    frontend.Variable `gnark:",public"`
	In2    frontend.Variable `gnark:",public"`
	In3    frontend.Variable `gnark:",public"`
	In4    frontend.Variable `gnark:",public"`
	In5    frontend.Variable `gnark:",public"`
	Out    frontend.Variable
}

func (c *PoseidonHash6Gadget) Define(api frontend.API) error {
	out, err := Poseidon377Hash6(api, c.Domain, [6]frontend.Variable{c.In0, c.In1, c.In2, c.In3, c.In4, c.In5})
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// PoseidonHash7Gadget isolates the seven-input Poseidon377 permutation used by
// NoteReshape statement hashes.
type PoseidonHash7Gadget struct {
	Domain frontend.Variable `gnark:",public"`
	In0    frontend.Variable `gnark:",public"`
	In1    frontend.Variable `gnark:",public"`
	In2    frontend.Variable `gnark:",public"`
	In3    frontend.Variable `gnark:",public"`
	In4    frontend.Variable `gnark:",public"`
	In5    frontend.Variable `gnark:",public"`
	In6    frontend.Variable `gnark:",public"`
	Out    frontend.Variable
}

func (c *PoseidonHash7Gadget) Define(api frontend.API) error {
	out, err := Poseidon377Hash7(api, c.Domain, [7]frontend.Variable{c.In0, c.In1, c.In2, c.In3, c.In4, c.In5, c.In6})
	if err != nil {
		return err
	}
	api.AssertIsEqual(out, c.Out)
	return nil
}

// verifyQuadPathN runs the VerifyQuadPath layer loop over a depth-N slice. It
// mirrors compliance.VerifyQuadPath exactly (per-layer index decode, 4 Selects,
// Poseidon377Hash4) but with a parametric depth so the whole-path verify-r1cs
// scaling limit can be probed at depths 1/2/4/16 before authoring the full spec.
// Position bits use 2*depth (enough for the layers used).
//
// The hash domain is threaded as a wire (`domain`) rather than the literal 0 the
// shipped VerifyQuadPath uses, so gnark does not constant-fold the lane-0 S-box.
// That keeps each layer's Hash4 sub-block structurally identical to the proved
// standalone `gadget-poseidon-hash4` (71 S-boxes, same round-constant layout),
// which is what lets the per-layer chains in the ACL2 proof reuse
// `poseidon377-hash4-r1cs-axe` verbatim. The fixed domain value is supplied by
// the witness at proving time.
// quadPathRound is one VerifyQuadPath layer as an extractor gadget: index-decode
// from the two position bits, four Selects to place `Current` among its three
// siblings, then Poseidon377Hash4 of the ordered children. Calling it via
// abstractor.Call makes the extractor emit a single reusable Lean `def` and one
// call per depth, instead of inlining the whole layer N times — the latter does
// not elaborate past a few layers (depth-16 OOMs). During proving the call runs
// DefineGadget inline, so the constraint system is identical.
type quadPathRound struct {
	Domain  frontend.Variable
	Current frontend.Variable
	Sib0    frontend.Variable
	Sib1    frontend.Variable
	Sib2    frontend.Variable
	Bit0    frontend.Variable
	Bit1    frontend.Variable
}

func (g quadPathRound) DefineGadget(api frontend.API) interface{} {
	isIndex0 := api.Mul(api.Sub(1, g.Bit0), api.Sub(1, g.Bit1))
	isIndex1 := api.Mul(g.Bit0, api.Sub(1, g.Bit1))
	isIndex2 := api.Mul(api.Sub(1, g.Bit0), g.Bit1)
	isIndex3 := api.Mul(g.Bit0, g.Bit1)

	child0 := api.Select(isIndex0, g.Current, g.Sib0)
	child1Not1 := api.Select(isIndex0, g.Sib0, g.Sib1)
	child1 := api.Select(isIndex1, g.Current, child1Not1)
	child2Not2 := api.Select(g.Bit1, g.Sib2, g.Sib1)
	child2 := api.Select(isIndex2, g.Current, child2Not2)
	child3 := api.Select(isIndex3, g.Current, g.Sib2)

	parent, err := Poseidon377Hash4(api, g.Domain, [4]frontend.Variable{child0, child1, child2, child3})
	if err != nil {
		panic(err)
	}
	return parent
}

func verifyQuadPathN(api frontend.API, domain, leafHash frontend.Variable, path [][3]frontend.Variable, position frontend.Variable) (frontend.Variable, error) {
	current := leafHash
	posBits := api.ToBinary(position, 2*len(path))
	for layerIdx := 0; layerIdx < len(path); layerIdx++ {
		current = abstractor.Call(api, quadPathRound{
			Domain:  domain,
			Current: current,
			Sib0:    path[layerIdx][0],
			Sib1:    path[layerIdx][1],
			Sib2:    path[layerIdx][2],
			Bit0:    posBits[layerIdx*2],
			Bit1:    posBits[layerIdx*2+1],
		})
	}
	return current, nil
}

// QuadPathRoundGadget exposes one Merkle layer as a standalone circuit so Picus
// discharges quad-path determinism compositionally: a depth-N path is this round
// folded N times over a boolean position decomposition, so determinism of the
// round (plus the already-`safe` bit decomposition) implies determinism of every
// QuadPathNGadget. Picus cannot cross the unrolled depth-16/24 paths (per-signal
// SMT over thousands of signals does not scale); the round is small.
type QuadPathRoundGadget struct {
	Domain  frontend.Variable `gnark:",public"`
	Current frontend.Variable `gnark:",public"`
	Sib0    frontend.Variable `gnark:",public"`
	Sib1    frontend.Variable `gnark:",public"`
	Sib2    frontend.Variable `gnark:",public"`
	Bit0    frontend.Variable `gnark:",public"`
	Bit1    frontend.Variable `gnark:",public"`
	Parent  frontend.Variable
}

func (c *QuadPathRoundGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.Bit0)
	api.AssertIsBoolean(c.Bit1)
	parent := abstractor.Call(api, quadPathRound{
		Domain:  c.Domain,
		Current: c.Current,
		Sib0:    c.Sib0,
		Sib1:    c.Sib1,
		Sib2:    c.Sib2,
		Bit0:    c.Bit0,
		Bit1:    c.Bit1,
	})
	api.AssertIsEqual(parent, c.Parent)
	return nil
}

// QuadPathTwoRoundGadget chains two consecutive Merkle layers so Picus exercises
// the composition boundary: the join wire (parent of layer i becomes Current of
// layer i+1) plus the two independent position-bit pairs. A single
// QuadPathRoundGadget proves one layer deterministic in isolation; this probe
// confirms wiring two layers together adds no free signal at the seam — the
// empirical anchor for the `safe-by-composition` lift of every QuadPathNGadget.
type QuadPathTwoRoundGadget struct {
	Domain      frontend.Variable `gnark:",public"`
	Current     frontend.Variable `gnark:",public"`
	L0Sib0      frontend.Variable `gnark:",public"`
	L0Sib1      frontend.Variable `gnark:",public"`
	L0Sib2      frontend.Variable `gnark:",public"`
	L0Bit0      frontend.Variable `gnark:",public"`
	L0Bit1      frontend.Variable `gnark:",public"`
	L1Sib0      frontend.Variable `gnark:",public"`
	L1Sib1      frontend.Variable `gnark:",public"`
	L1Sib2      frontend.Variable `gnark:",public"`
	L1Bit0      frontend.Variable `gnark:",public"`
	L1Bit1      frontend.Variable `gnark:",public"`
	Grandparent frontend.Variable
}

func (c *QuadPathTwoRoundGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.L0Bit0)
	api.AssertIsBoolean(c.L0Bit1)
	api.AssertIsBoolean(c.L1Bit0)
	api.AssertIsBoolean(c.L1Bit1)
	parent := abstractor.Call(api, quadPathRound{
		Domain:  c.Domain,
		Current: c.Current,
		Sib0:    c.L0Sib0,
		Sib1:    c.L0Sib1,
		Sib2:    c.L0Sib2,
		Bit0:    c.L0Bit0,
		Bit1:    c.L0Bit1,
	})
	grandparent := abstractor.Call(api, quadPathRound{
		Domain:  c.Domain,
		Current: parent,
		Sib0:    c.L1Sib0,
		Sib1:    c.L1Sib1,
		Sib2:    c.L1Sib2,
		Bit0:    c.L1Bit0,
		Bit1:    c.L1Bit1,
	})
	api.AssertIsEqual(grandparent, c.Grandparent)
	return nil
}

// QuadPathNGadget probes the whole quad Merkle path at parametric depth N: given
// a leaf hash, N layers of 3 siblings each, and a position, the claimed Root must
// equal the iterated Hash4 path. Scope-only export target for verify-r1cs scaling.
type QuadPath1Gadget struct {
	Domain   frontend.Variable `gnark:",public"`
	LeafHash frontend.Variable `gnark:",public"`
	Position frontend.Variable `gnark:",public"`
	Path     [1][3]frontend.Variable
	Root     frontend.Variable
}

func (c *QuadPath1Gadget) Define(api frontend.API) error {
	root, err := verifyQuadPathN(api, c.Domain, c.LeafHash, c.Path[:], c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(root, c.Root)
	return nil
}

type QuadPath2Gadget struct {
	Domain   frontend.Variable `gnark:",public"`
	LeafHash frontend.Variable `gnark:",public"`
	Position frontend.Variable `gnark:",public"`
	Path     [2][3]frontend.Variable
	Root     frontend.Variable
}

func (c *QuadPath2Gadget) Define(api frontend.API) error {
	root, err := verifyQuadPathN(api, c.Domain, c.LeafHash, c.Path[:], c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(root, c.Root)
	return nil
}

type QuadPath4Gadget struct {
	Domain   frontend.Variable `gnark:",public"`
	LeafHash frontend.Variable `gnark:",public"`
	Position frontend.Variable `gnark:",public"`
	Path     [4][3]frontend.Variable
	Root     frontend.Variable
}

func (c *QuadPath4Gadget) Define(api frontend.API) error {
	root, err := verifyQuadPathN(api, c.Domain, c.LeafHash, c.Path[:], c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(root, c.Root)
	return nil
}

type QuadPath16Gadget struct {
	Domain   frontend.Variable `gnark:",public"`
	LeafHash frontend.Variable `gnark:",public"`
	Position frontend.Variable `gnark:",public"`
	Path     [16][3]frontend.Variable
	Root     frontend.Variable
}

func (c *QuadPath16Gadget) Define(api frontend.API) error {
	root, err := verifyQuadPathN(api, c.Domain, c.LeafHash, c.Path[:], c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(root, c.Root)
	return nil
}

type QuadPath24Gadget struct {
	Domain   frontend.Variable `gnark:",public"`
	LeafHash frontend.Variable `gnark:",public"`
	Position frontend.Variable `gnark:",public"`
	Path     [24][3]frontend.Variable
	Root     frontend.Variable
}

func (c *QuadPath24Gadget) Define(api frontend.API) error {
	root, err := verifyQuadPathN(api, c.Domain, c.LeafHash, c.Path[:], c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(root, c.Root)
	return nil
}

// NullifierGadget isolates nullifier derivation
// `Poseidon377(domain, nk, stateCommitment, position)`, the gadget gating
// NO-DOUBLE-SPEND. The claimed nullifier must equal the derived value.
type NullifierGadget struct {
	Nk              frontend.Variable `gnark:",public"`
	StateCommitment frontend.Variable `gnark:",public"`
	Position        frontend.Variable `gnark:",public"`
	Nullifier       frontend.Variable
}

func (c *NullifierGadget) Define(api frontend.API) error {
	nf, err := Nullifier(api, c.Nk, c.StateCommitment, c.Position)
	if err != nil {
		return err
	}
	api.AssertIsEqual(nf, c.Nullifier)
	return nil
}

// IsZeroGadget isolates gnark's zero-test primitive used by IMT exact-match
// checks. `Out` is 1 exactly when `In` is zero.
type IsZeroGadget struct {
	In  frontend.Variable `gnark:",public"`
	Out frontend.Variable
}

func (c *IsZeroGadget) Define(api frontend.API) error {
	api.AssertIsEqual(c.Out, api.IsZero(c.In))
	return nil
}

// CanonicalFqBitsGadget isolates the explicit 253-bit canonical decomposition
// consumed by the source-level extractor bridges for the Decaf gadgets. The
// AssetRegistryGap circuit deliberately uses a separate private native
// ToBinary relation whose backend rows are handled by its exact provider.
type CanonicalFqBitsGadget struct {
	In frontend.Variable `gnark:",public"`
}

func (c *CanonicalFqBitsGadget) Define(api frontend.API) error {
	CanonicalFqBits253(api, c.In)
	return nil
}

// AssetRegistryGapGadget isolates the shipped decompose-once IMT comparator:
// Select(IsRegulated, exactMatch, inGap) == 1. Each operand is decomposed once
// by gnark's native full-width ToBinary relation.
type AssetRegistryGapGadget struct {
	NoteAssetID frontend.Variable `gnark:",public"`
	IsRegulated frontend.Variable `gnark:",public"`
	LeafValue   frontend.Variable `gnark:",public"`
	NextValue   frontend.Variable `gnark:",public"`
}

func (c *AssetRegistryGapGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.IsRegulated)
	valid := AssetRegistryGap(api, c.NoteAssetID, c.IsRegulated, c.LeafValue, c.NextValue)
	api.AssertIsEqual(valid, 1)
	return nil
}

// BoolSelectGadget isolates the soundness decision primitive
// `Valid = Select(Cond, IfTrue, IfFalse)` with `Cond` boolean — the exact shape
// of Rust's `is_regulated.select(is_exact_match, is_in_gap)` that the Phase-0
// fix mirrors, stripped of the field comparators. It is small enough (a handful
// of constraints) that its exported R1CS is hand-modelled in ACL2 and the
// `R1CS ⟹ spec` theorem is discharged in base ACL2 (no Axe books) — the
// end-to-end certified anchor for the C3 methodology.
type BoolSelectGadget struct {
	Cond    frontend.Variable `gnark:",public"`
	IfTrue  frontend.Variable `gnark:",public"`
	IfFalse frontend.Variable `gnark:",public"`
	Valid   frontend.Variable
}

func (c *BoolSelectGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.Cond)
	api.AssertIsEqual(c.Valid, api.Select(c.Cond, c.IfTrue, c.IfFalse))
	return nil
}
