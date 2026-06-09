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
	. "github.com/mizufinance/penumbra/tools/gnark/internal/compliance"
	. "github.com/mizufinance/penumbra/tools/gnark/internal/primitives"
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
