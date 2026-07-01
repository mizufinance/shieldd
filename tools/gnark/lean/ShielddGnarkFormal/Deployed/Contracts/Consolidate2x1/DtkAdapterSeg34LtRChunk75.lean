import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk74

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep75L (rho : Nat -> Seg34.F) (r2167 : Seg34.relationRow2167 rho) :
    rho 33442 = seg34RPe76 rho * (1 - rho 32839) := by
  unfold Seg34.relationRow2167 at r2167
  unfold seg34RPe76
  linear_combination -r2167

theorem seg34RStep75IlMul (rho : Nat -> Seg34.F) (r2168 : Seg34.relationRow2168 rho) :
    rho 33443 = seg34RIl76 rho * (rho 33442) := by
  unfold Seg34.relationRow2168 at r2168
  rw [seg34RStep75IlLc rho] at r2168
  linear_combination -r2168

theorem seg34RStep75Acc (rho : Nat -> Seg34.F) :
    seg34RIl75 rho = seg34RIl76 rho + (rho 33442) - (rho 33443) := by
  have hstate : seg34RIl75 rho = seg34RIl76 rho + seg34RIlAtom87 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom87
  ring

theorem seg34RStep75Pe (rho : Nat -> Seg34.F) (r2169 : Seg34.relationRow2169 rho) :
    seg34RPe75 rho = seg34RPe76 rho * rho 32839 := by
  unfold Seg34.relationRow2169 at r2169
  unfold seg34RPe75 seg34RPe76
  linear_combination -r2169

theorem seg34RStep75 (rho : Nat -> Seg34.F) (r2167 : Seg34.relationRow2167 rho) (r2168 : Seg34.relationRow2168 rho) (r2169 : Seg34.relationRow2169 rho) :
    seg34RPe75 rho = seg34RPe76 rho * rho 32839 ∧
    seg34RIl75 rho = seg34RIl76 rho + seg34RPe76 rho * (1 - rho 32839) -
      seg34RIl76 rho * (seg34RPe76 rho * (1 - rho 32839)) := by
  constructor
  · exact seg34RStep75Pe rho r2169
  · rw [seg34RStep75Acc rho, seg34RStep75L rho r2167, seg34RStep75IlMul rho r2168, seg34RStep75L rho r2167]

theorem seg34_r_chunk75 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 76 (seg34RPeState rho 76) (seg34RIlState rho 76) := by
  have htail := seg34_r_chunk74 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, r2167, r2168, r2169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 75 ≤ n → n < 76 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 75 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep75 rho r2167 r2168 r2169
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 75 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
