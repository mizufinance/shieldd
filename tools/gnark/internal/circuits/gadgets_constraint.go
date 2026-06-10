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
// constraint-system-assurance.md.

import (
	"github.com/consensys/gnark/frontend"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/compliance"
	. "github.com/mizufinance/shieldd/tools/gnark/internal/primitives"
)

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
func verifyQuadPathN(api frontend.API, domain, leafHash frontend.Variable, path [][3]frontend.Variable, position frontend.Variable) (frontend.Variable, error) {
	current := leafHash
	posBits := api.ToBinary(position, 2*len(path))
	for layerIdx := 0; layerIdx < len(path); layerIdx++ {
		bit0 := posBits[layerIdx*2]
		bit1 := posBits[layerIdx*2+1]
		isIndex0 := api.Mul(api.Sub(1, bit0), api.Sub(1, bit1))
		isIndex1 := api.Mul(bit0, api.Sub(1, bit1))
		isIndex2 := api.Mul(api.Sub(1, bit0), bit1)
		isIndex3 := api.Mul(bit0, bit1)

		child0 := api.Select(isIndex0, current, path[layerIdx][0])
		child1Not1 := api.Select(isIndex0, path[layerIdx][0], path[layerIdx][1])
		child1 := api.Select(isIndex1, current, child1Not1)
		child2Not2 := api.Select(bit1, path[layerIdx][2], path[layerIdx][1])
		child2 := api.Select(isIndex2, current, child2Not2)
		child3 := api.Select(isIndex3, current, path[layerIdx][2])

		parent, err := Poseidon377Hash4(api, domain, [4]frontend.Variable{child0, child1, child2, child3})
		if err != nil {
			return nil, err
		}
		current = parent
	}
	return current, nil
}

// QuadPathNGadget probes the whole quad Merkle path at parametric depth N: given
// a leaf hash, N layers of 3 siblings each, and a position, the claimed Root must
// equal the iterated Hash4 path. Scope-only export target for verify-r1cs scaling.
type QuadPath1Gadget struct {
	Domain   frontend.Variable    `gnark:",public"`
	LeafHash frontend.Variable    `gnark:",public"`
	Position frontend.Variable    `gnark:",public"`
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
	Domain   frontend.Variable    `gnark:",public"`
	LeafHash frontend.Variable    `gnark:",public"`
	Position frontend.Variable    `gnark:",public"`
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
	Domain   frontend.Variable    `gnark:",public"`
	LeafHash frontend.Variable    `gnark:",public"`
	Position frontend.Variable    `gnark:",public"`
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
	Domain   frontend.Variable    `gnark:",public"`
	LeafHash frontend.Variable    `gnark:",public"`
	Position frontend.Variable    `gnark:",public"`
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

// CanonicalFqBitsGadget isolates a single Kestrel-shaped canonical
// decomposition: `In` is decomposed into 253 little-endian bits whose packing
// equals `In` and whose value is asserted reduced (`packbv <= p-1`) via the
// exact `make-range-check-constraints` shapes for `c = p-1, n = 253`. This is
// the reducedness keystone, isolated so the ACL2 proof
// (canonical-fq-bits-proof.lisp) lifts the slice and instantiates
// `make-range-check-constraints-correct` directly — no STP, no
// gnark-vs-Kestrel encoding-equivalence lemma. The bit wires are exposed so the
// `R1CS ⟹ spec` theorem can name them.
type CanonicalFqBitsGadget struct {
	In frontend.Variable `gnark:",public"`
}

func (c *CanonicalFqBitsGadget) Define(api frontend.API) error {
	CanonicalFqBits253(api, c.In)
	return nil
}

// AssetRegistryGapGadget isolates the shipped decompose-once IMT comparator:
// Select(IsRegulated, exactMatch, inGap) == 1. Each operand is decomposed
// exactly once via the Kestrel-shaped CanonicalFqBits253.
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
