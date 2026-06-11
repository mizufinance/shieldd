import ShielddGnarkFormal.Extracted.QuadPath2
import ShielddGnarkFormal.Extracted.QuadPath16
import ProvenZk.Gates
import ProvenZk.Ext.Vector

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

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
    (path : List.Vector (List.Vector F 3) 2) (bits : List.Vector F 4) : F :=
  let r1 := recoverStep H4 domain leaf path[0][0] path[0][1] path[0][2] bits[0] bits[1]
  recoverStep H4 domain r1 path[1][0] path[1][1] path[1][2] bits[2] bits[3]

/-- Whole-circuit soundness for the depth-2 quad path: any satisfying assignment of
the extracted `QuadPath2.circuit` forces the claimed `Root` to equal the abstract
`recover2` of the leaf along the position's index bits. Composes `quadPathRound_sound`
over both layers; the final `Gates.eq` pins the root. -/
theorem circuit_sound
    {H4 : F → F → F → F → F → F} (hP : Perm4Computes H4)
    (domain leaf position root : F) (path : List.Vector (List.Vector F 3) 2) :
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

/-! Production depth: the anchor tree is 16 layers deep (`QuadPath16`). The round
gadget and per-node hash are byte-identical to `QuadPath2`'s, so `quadPathRound_sound`
applies layer-by-layer up to defeq; the proof is the depth-2 argument iterated 16×. -/

/-- Layer soundness for `QuadPath16`'s round. The round and per-node hash gadgets
are byte-identical to `QuadPath2`'s, so the proof is the same; `exact` closes the
final `poseidonPerm4` step up to defeq across the namespaces. -/
theorem quadPathRound_sound16 [Fact (Nat.Prime Extracted.QuadPath16.Order)]
    {H4 : F → F → F → F → F → F} (hP : Perm4Computes H4)
    (domain cur s0 s1 s2 b0 b1 : F) (k : F → Prop) :
    Extracted.QuadPath16.quadPathRound domain cur s0 s1 s2 b0 b1 k
      → k (recoverStep H4 domain cur s0 s1 s2 b0 b1) := by
  unfold Extracted.QuadPath16.quadPathRound
  simp only [Extracted.QuadPath16.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.select, GatesDef.add]
  rintro ⟨g0, e0, g1, e1, g2, e2, g3, e3, g4, e4, g5, e5, g6, e6, g7, e7,
    g8, ⟨_, e8⟩, g9, ⟨_, e9⟩, g10, ⟨_, e10⟩, g11, ⟨_, e11⟩, g12, ⟨_, e12⟩, g13, ⟨_, e13⟩, hk⟩
  subst_vars
  exact (hP domain _ _ _ _ (fun g14 => k g14)).mp hk

/-- Abstract quaternary recover over the depth-16 path. -/
def recover16 (H4 : F → F → F → F → F → F) (domain leaf : F)
    (path : List.Vector (List.Vector F 3) 16) (bits : List.Vector F 32) : F :=
  let r1 := recoverStep H4 domain leaf path[0][0] path[0][1] path[0][2] bits[0] bits[1]
  let r2 := recoverStep H4 domain r1 path[1][0] path[1][1] path[1][2] bits[2] bits[3]
  let r3 := recoverStep H4 domain r2 path[2][0] path[2][1] path[2][2] bits[4] bits[5]
  let r4 := recoverStep H4 domain r3 path[3][0] path[3][1] path[3][2] bits[6] bits[7]
  let r5 := recoverStep H4 domain r4 path[4][0] path[4][1] path[4][2] bits[8] bits[9]
  let r6 := recoverStep H4 domain r5 path[5][0] path[5][1] path[5][2] bits[10] bits[11]
  let r7 := recoverStep H4 domain r6 path[6][0] path[6][1] path[6][2] bits[12] bits[13]
  let r8 := recoverStep H4 domain r7 path[7][0] path[7][1] path[7][2] bits[14] bits[15]
  let r9 := recoverStep H4 domain r8 path[8][0] path[8][1] path[8][2] bits[16] bits[17]
  let r10 := recoverStep H4 domain r9 path[9][0] path[9][1] path[9][2] bits[18] bits[19]
  let r11 := recoverStep H4 domain r10 path[10][0] path[10][1] path[10][2] bits[20] bits[21]
  let r12 := recoverStep H4 domain r11 path[11][0] path[11][1] path[11][2] bits[22] bits[23]
  let r13 := recoverStep H4 domain r12 path[12][0] path[12][1] path[12][2] bits[24] bits[25]
  let r14 := recoverStep H4 domain r13 path[13][0] path[13][1] path[13][2] bits[26] bits[27]
  let r15 := recoverStep H4 domain r14 path[14][0] path[14][1] path[14][2] bits[28] bits[29]
  let r16 := recoverStep H4 domain r15 path[15][0] path[15][1] path[15][2] bits[30] bits[31]
  r16

/-- Whole-circuit soundness for the depth-16 quad path: any satisfying assignment of
`QuadPath16.circuit` forces `Root` to equal `recover16` of the leaf along the
position's index bits. The round gadget is defeq to `QuadPath2.quadPathRound`, so the
same `quadPathRound_sound` lemma discharges each of the 16 layers. -/
theorem circuit_sound16 [Fact (Nat.Prime Extracted.QuadPath16.Order)]
    {H4 : F → F → F → F → F → F} (hP : Perm4Computes H4)
    (domain leaf position root : F) (path : List.Vector (List.Vector F 3) 16) :
    Extracted.QuadPath16.circuit domain leaf position path root
      → ∃ bits, Extracted.QuadPath16.Gates.to_binary position 32 bits
          ∧ root = recover16 H4 domain leaf path bits := by
  rintro ⟨bits, hbin, hround⟩
  refine ⟨bits, hbin, ?_⟩
  have h1 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ hround
  have h2 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h1
  have h3 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h2
  have h4 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h3
  have h5 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h4
  have h6 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h5
  have h7 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h6
  have h8 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h7
  have h9 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h8
  have h10 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h9
  have h11 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h10
  have h12 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h11
  have h13 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h12
  have h14 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h13
  have h15 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h14
  have h16 := quadPathRound_sound16 hP domain _ _ _ _ _ _ _ h15
  obtain ⟨heq, _⟩ := h16
  simpa [recover16, Extracted.QuadPath16.Gates, GatesGnark9, GatesGnark8, GatesDef.eq,
    eq_comm] using heq

end Shieldd.GnarkFormal.QuadPath
