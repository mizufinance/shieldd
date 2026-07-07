import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk227

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep228L (rho : Nat -> Seg45.F) (r1872 : Seg45.relationRow1872 rho) :
    rho 40103 = seg45RPe229 rho * (1 - rho 39948) := by
  unfold Seg45.relationRow1872 at r1872
  unfold seg45RPe229
  linear_combination -r1872

theorem seg45RStep228IlMul (rho : Nat -> Seg45.F) (r1873 : Seg45.relationRow1873 rho) :
    rho 40104 = seg45RIl229 rho * (rho 40103) := by
  unfold Seg45.relationRow1873 at r1873
  rw [seg45RIl229Atoms rho]
  unfold seg45RIlAtom0 seg45RIlAtom1 seg45RIlAtom10 seg45RIlAtom2 seg45RIlAtom3 seg45RIlAtom4 seg45RIlAtom5 seg45RIlAtom6 seg45RIlAtom7 seg45RIlAtom8 seg45RIlAtom9
  linear_combination -r1873

theorem seg45RStep228Acc (rho : Nat -> Seg45.F) :
    seg45RIl228 rho = seg45RIl229 rho + (rho 40103) - (rho 40104) := by
  have hstate : seg45RIl228 rho = seg45RIl229 rho + seg45RIlAtom11 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom11
  ring

theorem seg45RStep228Pe (rho : Nat -> Seg45.F) (r1874 : Seg45.relationRow1874 rho) :
    seg45RPe228 rho = seg45RPe229 rho * rho 39948 := by
  unfold Seg45.relationRow1874 at r1874
  unfold seg45RPe228 seg45RPe229
  linear_combination -r1874

theorem seg45RStep228 (rho : Nat -> Seg45.F) (r1872 : Seg45.relationRow1872 rho) (r1873 : Seg45.relationRow1873 rho) (r1874 : Seg45.relationRow1874 rho) :
    seg45RPe228 rho = seg45RPe229 rho * rho 39948 ∧
    seg45RIl228 rho = seg45RIl229 rho + seg45RPe229 rho * (1 - rho 39948) -
      seg45RIl229 rho * (seg45RPe229 rho * (1 - rho 39948)) := by
  constructor
  · exact seg45RStep228Pe rho r1874
  · rw [seg45RStep228Acc rho, seg45RStep228L rho r1872, seg45RStep228IlMul rho r1873, seg45RStep228L rho r1872]

theorem seg45_r_chunk228 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 229 (seg45RPeState rho 229) (seg45RIlState rho 229) := by
  have htail := seg45_r_chunk227 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1872, r1873, r1874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 228 ≤ n → n < 229 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 228 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep228 rho r1872 r1873 r1874
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 228 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
