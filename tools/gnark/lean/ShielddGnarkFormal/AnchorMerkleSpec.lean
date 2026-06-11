import ShielddGnarkFormal.Extracted.QuadPath24
import ShielddGnarkFormal.Poseidon4Bridge
import ProvenZk.Gates

set_option maxRecDepth 100000
set_option maxHeartbeats 1000000

/-! Production depth-24 anchor Merkle bridge.

This is the depth used by `StateCommitmentDepth`. It reuses the existing
quad-path round proof and concrete Poseidon rate-4 bridge, then iterates the
round soundness 24 times.
-/

namespace Shieldd.GnarkFormal.AnchorMerkle

open Shieldd.GnarkFormal.Extracted.QuadPath2 (F Order)

variable [Fact (Nat.Prime Order)]

theorem quadPathRound_sound24 [Fact (Nat.Prime Extracted.QuadPath24.Order)]
    {H4 : F → F → F → F → F → F} (hP : QuadPath.Perm4Computes H4)
    (domain cur s0 s1 s2 b0 b1 : F) (k : F → Prop) :
    Extracted.QuadPath24.quadPathRound domain cur s0 s1 s2 b0 b1 k
      → k (QuadPath.recoverStep H4 domain cur s0 s1 s2 b0 b1) := by
  unfold Extracted.QuadPath24.quadPathRound
  simp only [Extracted.QuadPath24.Gates, GatesGnark9, GatesGnark8,
    GatesDef.sub, GatesDef.mul, GatesDef.select, GatesDef.add]
  rintro ⟨g0, e0, g1, e1, g2, e2, g3, e3, g4, e4, g5, e5, g6, e6, g7, e7,
    g8, ⟨_, e8⟩, g9, ⟨_, e9⟩, g10, ⟨_, e10⟩, g11, ⟨_, e11⟩, g12, ⟨_, e12⟩,
    g13, ⟨_, e13⟩, hk⟩
  subst_vars
  exact (hP domain _ _ _ _ (fun g14 => k g14)).mp hk

def recover24 (H4 : F → F → F → F → F → F) (domain leaf : F)
    (path : List.Vector (List.Vector F 3) 24) (bits : List.Vector F 48) : F :=
  let r1 := QuadPath.recoverStep H4 domain leaf path[0][0] path[0][1] path[0][2] bits[0] bits[1]
  let r2 := QuadPath.recoverStep H4 domain r1 path[1][0] path[1][1] path[1][2] bits[2] bits[3]
  let r3 := QuadPath.recoverStep H4 domain r2 path[2][0] path[2][1] path[2][2] bits[4] bits[5]
  let r4 := QuadPath.recoverStep H4 domain r3 path[3][0] path[3][1] path[3][2] bits[6] bits[7]
  let r5 := QuadPath.recoverStep H4 domain r4 path[4][0] path[4][1] path[4][2] bits[8] bits[9]
  let r6 := QuadPath.recoverStep H4 domain r5 path[5][0] path[5][1] path[5][2] bits[10] bits[11]
  let r7 := QuadPath.recoverStep H4 domain r6 path[6][0] path[6][1] path[6][2] bits[12] bits[13]
  let r8 := QuadPath.recoverStep H4 domain r7 path[7][0] path[7][1] path[7][2] bits[14] bits[15]
  let r9 := QuadPath.recoverStep H4 domain r8 path[8][0] path[8][1] path[8][2] bits[16] bits[17]
  let r10 := QuadPath.recoverStep H4 domain r9 path[9][0] path[9][1] path[9][2] bits[18] bits[19]
  let r11 := QuadPath.recoverStep H4 domain r10 path[10][0] path[10][1] path[10][2] bits[20] bits[21]
  let r12 := QuadPath.recoverStep H4 domain r11 path[11][0] path[11][1] path[11][2] bits[22] bits[23]
  let r13 := QuadPath.recoverStep H4 domain r12 path[12][0] path[12][1] path[12][2] bits[24] bits[25]
  let r14 := QuadPath.recoverStep H4 domain r13 path[13][0] path[13][1] path[13][2] bits[26] bits[27]
  let r15 := QuadPath.recoverStep H4 domain r14 path[14][0] path[14][1] path[14][2] bits[28] bits[29]
  let r16 := QuadPath.recoverStep H4 domain r15 path[15][0] path[15][1] path[15][2] bits[30] bits[31]
  let r17 := QuadPath.recoverStep H4 domain r16 path[16][0] path[16][1] path[16][2] bits[32] bits[33]
  let r18 := QuadPath.recoverStep H4 domain r17 path[17][0] path[17][1] path[17][2] bits[34] bits[35]
  let r19 := QuadPath.recoverStep H4 domain r18 path[18][0] path[18][1] path[18][2] bits[36] bits[37]
  let r20 := QuadPath.recoverStep H4 domain r19 path[19][0] path[19][1] path[19][2] bits[38] bits[39]
  let r21 := QuadPath.recoverStep H4 domain r20 path[20][0] path[20][1] path[20][2] bits[40] bits[41]
  let r22 := QuadPath.recoverStep H4 domain r21 path[21][0] path[21][1] path[21][2] bits[42] bits[43]
  let r23 := QuadPath.recoverStep H4 domain r22 path[22][0] path[22][1] path[22][2] bits[44] bits[45]
  let r24 := QuadPath.recoverStep H4 domain r23 path[23][0] path[23][1] path[23][2] bits[46] bits[47]
  r24

theorem circuit_sound24 [Fact (Nat.Prime Extracted.QuadPath24.Order)]
    {H4 : F → F → F → F → F → F} (hP : QuadPath.Perm4Computes H4)
    (domain leaf position root : F) (path : List.Vector (List.Vector F 3) 24) :
    Extracted.QuadPath24.circuit domain leaf position path root
      → ∃ bits, Extracted.QuadPath24.Gates.to_binary position 48 bits
          ∧ root = recover24 H4 domain leaf path bits := by
  rintro ⟨bits, hbin, hround⟩
  refine ⟨bits, hbin, ?_⟩
  have h1 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ hround
  have h2 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h1
  have h3 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h2
  have h4 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h3
  have h5 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h4
  have h6 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h5
  have h7 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h6
  have h8 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h7
  have h9 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h8
  have h10 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h9
  have h11 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h10
  have h12 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h11
  have h13 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h12
  have h14 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h13
  have h15 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h14
  have h16 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h15
  have h17 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h16
  have h18 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h17
  have h19 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h18
  have h20 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h19
  have h21 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h20
  have h22 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h21
  have h23 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h22
  have h24 := quadPathRound_sound24 hP domain _ _ _ _ _ _ _ h23
  obtain ⟨heq, _⟩ := h24
  simpa [recover24, Extracted.QuadPath24.Gates, GatesGnark9, GatesGnark8, GatesDef.eq,
    eq_comm] using heq

theorem concrete_circuit_sound24 [Fact (Nat.Prime Extracted.QuadPath24.Order)]
    [Fact (Nat.Prime Extracted.PoseidonHash4.Order)]
    (domain leaf position root : F) (path : List.Vector (List.Vector F 3) 24) :
    Extracted.QuadPath24.circuit domain leaf position path root
      → ∃ bits, Extracted.QuadPath24.Gates.to_binary position 48 bits
          ∧ root = recover24 (fun d a b c e => Poseidon4Bridge.permSpec4 d a b c e)
              domain leaf path bits :=
  circuit_sound24 Poseidon4Bridge.perm4Computes domain leaf position root path

end Shieldd.GnarkFormal.AnchorMerkle
