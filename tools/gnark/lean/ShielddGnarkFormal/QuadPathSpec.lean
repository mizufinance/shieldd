import ShielddGnarkFormal.Extracted.QuadPath2
import ProvenZk.Gates
import ProvenZk.Ext.Vector

/-! Abstract specification and soundness bridge for the quad (4-ary) Merkle path.

The extracted `QuadPath2.circuit` is `to_binary` of the position into 2-bit
per-layer indices, a chain of `quadPathRound` calls, and a final `eq` to the
claimed root. Each `quadPathRound` is select-wiring that places `Current` among
its three siblings according to the two index bits, followed by one
`poseidonPerm4` call (the per-node hash).

This module mirrors `proven-zk`'s `Merkle.recover` at arity 4: the per-node hash
`H4` is kept abstract (a parameter), so this layer proves the *path composition*
independently of the Poseidon bridge (M4), which supplies the concrete `H4`. -/

namespace Shieldd.GnarkFormal.QuadPath

open Shieldd.GnarkFormal.Extracted.QuadPath2 (F Order quadPathRound circuit)

variable [Fact (Nat.Prime Order)]

/-- The four ordered children of a node, as the extracted select-wiring computes
them: `Current` is routed to the slot picked by `(b0,b1)`, the three siblings
fill the others. Matches the `Gates.select` value equations in `quadPathRound`. -/
def children (cur s0 s1 s2 b0 b1 : F) : F × F × F × F :=
  let i0 := (1 - b0) * (1 - b1)
  let i1 := b0 * (1 - b1)
  let i2 := (1 - b0) * b1
  let i3 := b0 * b1
  let c0 := s0 - i0 * (s0 - cur)
  let c1' := s1 - i0 * (s1 - s0)
  let c1 := c1' - i1 * (c1' - cur)
  let c2' := s1 - b1 * (s1 - s2)
  let c2 := c2' - i2 * (c2' - cur)
  let c3 := s2 - i3 * (s2 - cur)
  (c0, c1, c2, c3)

/-- One recover step against an abstract per-node hash `H4 domain c0 c1 c2 c3`. -/
def recoverStep (H4 : F → F → F → F → F → F) (domain cur s0 s1 s2 b0 b1 : F) : F :=
  let c := children cur s0 s1 s2 b0 b1
  H4 domain c.1 c.2.1 c.2.2.1 c.2.2.2

/-- A reduction hypothesis for the per-node hash gadget: `poseidonPerm4` computes
`H4`. Discharged in M4 by the concrete Poseidon bridge; abstract here. -/
def Perm4Computes (H4 : F → F → F → F → F → F) : Prop :=
  ∀ d a b c e (k : F → Prop),
    Extracted.QuadPath2.poseidonPerm4 d a b c e k ↔ k (H4 d a b c e)

/-- Soundness of one extracted layer: given the hash reduction, a satisfying
assignment of `quadPathRound` forces `k` of `recoverStep`. The select-wiring is
discharged structurally (only the select *value* equations are needed, not the
`is_bool` flags); the hash stays abstract. -/
theorem quadPathRound_sound
    {H4 : F → F → F → F → F → F} (hP : Perm4Computes H4)
    (domain cur s0 s1 s2 b0 b1 : F) (k : F → Prop) :
    quadPathRound domain cur s0 s1 s2 b0 b1 k
      → k (recoverStep H4 domain cur s0 s1 s2 b0 b1) := by
  unfold quadPathRound
  simp only [Extracted.QuadPath2.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.select, GatesDef.add]
  rintro ⟨g0, e0, g1, e1, g2, e2, g3, e3, g4, e4, g5, e5, g6, e6, g7, e7,
    g8, ⟨_, e8⟩, g9, ⟨_, e9⟩, g10, ⟨_, e10⟩, g11, ⟨_, e11⟩, g12, ⟨_, e12⟩, g13, ⟨_, e13⟩, hk⟩
  subst_vars
  exact (hP domain _ _ _ _ (fun g14 => k g14)).mp hk

/-- Abstract quaternary recover over the depth-2 path: fold `recoverStep` from the
leaf upward, one layer per 2-bit index slice. Mirrors `proven-zk`'s `Merkle.recover`
at arity 4 with the per-node hash `H4` abstract. -/
def recover2 (H4 : F → F → F → F → F → F) (domain leaf : F)
    (path : Vector (Vector F 3) 2) (bits : List.Vector F 4) : F :=
  let r1 := recoverStep H4 domain leaf path[0][0] path[0][1] path[0][2] bits[0] bits[1]
  recoverStep H4 domain r1 path[1][0] path[1][1] path[1][2] bits[2] bits[3]

/-- Whole-circuit soundness for the depth-2 quad path: any satisfying assignment of
the extracted `QuadPath2.circuit` forces the claimed `Root` to equal the abstract
`recover2` of the leaf along the position's index bits. Composes `quadPathRound_sound`
over both layers; the final `Gates.eq` pins the root. -/
theorem circuit_sound
    {H4 : F → F → F → F → F → F} (hP : Perm4Computes H4)
    (domain leaf position root : F) (path : Vector (Vector F 3) 2) :
    circuit domain leaf position path root
      → ∃ bits, Extracted.QuadPath2.Gates.to_binary position 4 bits
          ∧ root = recover2 H4 domain leaf path bits := by
  rintro ⟨bits, hbin, hround⟩
  refine ⟨bits, hbin, ?_⟩
  have h1 := quadPathRound_sound hP domain leaf path[0][0] path[0][1] path[0][2]
    bits[0] bits[1] _ hround
  have h2 := quadPathRound_sound hP domain
    (recoverStep H4 domain leaf path[0][0] path[0][1] path[0][2] bits[0] bits[1])
    path[1][0] path[1][1] path[1][2] bits[2] bits[3] _ h1
  obtain ⟨heq, _⟩ := h2
  simpa [recover2, Extracted.QuadPath2.Gates, GatesGnark9, GatesGnark8, GatesDef.eq,
    eq_comm] using heq

end Shieldd.GnarkFormal.QuadPath
