import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk227

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep228L (rho : Nat -> Seg5.F) (r1872 : Seg5.relationRow1872 rho) :
    rho 1570 = seg5RPe229 rho * (1 - rho 1415) := by
  unfold Seg5.relationRow1872 at r1872
  unfold seg5RPe229
  linear_combination -r1872

theorem seg5RStep228IlMul (rho : Nat -> Seg5.F) (r1873 : Seg5.relationRow1873 rho) :
    rho 1571 = seg5RIl229 rho * (rho 1570) := by
  unfold Seg5.relationRow1873 at r1873
  rw [seg5RIl229Atoms rho]
  unfold seg5RIlAtom0 seg5RIlAtom1 seg5RIlAtom10 seg5RIlAtom2 seg5RIlAtom3 seg5RIlAtom4 seg5RIlAtom5 seg5RIlAtom6 seg5RIlAtom7 seg5RIlAtom8 seg5RIlAtom9
  linear_combination -r1873

theorem seg5RStep228Acc (rho : Nat -> Seg5.F) :
    seg5RIl228 rho = seg5RIl229 rho + (rho 1570) - (rho 1571) := by
  have hstate : seg5RIl228 rho = seg5RIl229 rho + seg5RIlAtom11 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom11
  ring

theorem seg5RStep228Pe (rho : Nat -> Seg5.F) (r1874 : Seg5.relationRow1874 rho) :
    seg5RPe228 rho = seg5RPe229 rho * rho 1415 := by
  unfold Seg5.relationRow1874 at r1874
  unfold seg5RPe228 seg5RPe229
  linear_combination -r1874

theorem seg5RStep228 (rho : Nat -> Seg5.F) (r1872 : Seg5.relationRow1872 rho) (r1873 : Seg5.relationRow1873 rho) (r1874 : Seg5.relationRow1874 rho) :
    seg5RPe228 rho = seg5RPe229 rho * rho 1415 ∧
    seg5RIl228 rho = seg5RIl229 rho + seg5RPe229 rho * (1 - rho 1415) -
      seg5RIl229 rho * (seg5RPe229 rho * (1 - rho 1415)) := by
  constructor
  · exact seg5RStep228Pe rho r1874
  · rw [seg5RStep228Acc rho, seg5RStep228L rho r1872, seg5RStep228IlMul rho r1873, seg5RStep228L rho r1872]

theorem seg5_r_chunk228 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 229 (seg5RPeState rho 229) (seg5RIlState rho 229) := by
  have htail := seg5_r_chunk227 rho h k hq4
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1872, r1873, r1874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 228 ≤ n → n < 229 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 228 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep228 rho r1872 r1873 r1874
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 228 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
