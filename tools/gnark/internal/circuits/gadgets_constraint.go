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

// ImtGapGadget isolates the asset-registry membership/non-membership comparator
// `Select(IsRegulated, exactMatch, inGap)` (the Phase-0 fix for
// REGULATED-STATUS-SOUNDNESS), apart from the 16-deep Merkle path. It asserts
// the comparator accepts (== 1) for the supplied wires.
type ImtGapGadget struct {
	NoteAssetID frontend.Variable `gnark:",public"`
	IsRegulated frontend.Variable `gnark:",public"`
	LeafValue   frontend.Variable `gnark:",public"`
	NextValue   frontend.Variable `gnark:",public"`
}

func (c *ImtGapGadget) Define(api frontend.API) error {
	api.AssertIsBoolean(c.IsRegulated)
	valid := AssetMembershipValid(api, c.NoteAssetID, c.IsRegulated, c.LeafValue, c.NextValue)
	api.AssertIsEqual(valid, 1)
	return nil
}

// FieldLessThanGadget isolates a single full-field `FieldLessThan` comparator —
// the 253-bit `to_bits_le` decomposition + MSB-first comparison ladder that is
// the algebraic core of REGULATED-STATUS-SOUNDNESS, apart from the IMT gap
// wiring, the IsZero exact-match, the Select, and the Merkle path. `Out` is the
// boolean comparator result, exposed as a witness wire so the `R1CS ⟹ spec`
// theorem can name it: any satisfying assignment has `Out = (A < B ? 1 : 0)`
// over canonical residues in `[0, p)`. This is the reusable comparator lemma the
// imt-gap proof (two calls) and the threshold check compose from.
type FieldLessThanGadget struct {
	A   frontend.Variable `gnark:",public"`
	B   frontend.Variable `gnark:",public"`
	Out frontend.Variable
}

func (c *FieldLessThanGadget) Define(api frontend.API) error {
	api.AssertIsEqual(c.Out, FieldLessThan(api, c.A, c.B))
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
