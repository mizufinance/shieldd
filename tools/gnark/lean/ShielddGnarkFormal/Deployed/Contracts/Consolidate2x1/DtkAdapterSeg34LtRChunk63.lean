import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk62

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep63L (rho : Nat -> Seg34.F) (r2197 : Seg34.relationRow2197 rho) :
    rho 33472 = seg34RPe64 rho * (1 - rho 32827) := by
  unfold Seg34.relationRow2197 at r2197
  unfold seg34RPe64
  linear_combination -r2197

theorem seg34RStep63IlMul (rho : Nat -> Seg34.F) (r2198 : Seg34.relationRow2198 rho) :
    rho 33473 = seg34RIl64 rho * (rho 33472) := by
  unfold Seg34.relationRow2198 at r2198
  rw [seg34RStep63IlLc rho] at r2198
  linear_combination -r2198

theorem seg34RStep63Acc (rho : Nat -> Seg34.F) :
    seg34RIl63 rho = seg34RIl64 rho + (rho 33472) - (rho 33473) := by
  have hstate : seg34RIl63 rho = seg34RIl64 rho + seg34RIlAtom96 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom96
  ring

theorem seg34RStep63Pe (rho : Nat -> Seg34.F) (r2199 : Seg34.relationRow2199 rho) :
    seg34RPe63 rho = seg34RPe64 rho * rho 32827 := by
  unfold Seg34.relationRow2199 at r2199
  unfold seg34RPe63 seg34RPe64
  linear_combination -r2199

theorem seg34RStep63 (rho : Nat -> Seg34.F) (r2197 : Seg34.relationRow2197 rho) (r2198 : Seg34.relationRow2198 rho) (r2199 : Seg34.relationRow2199 rho) :
    seg34RPe63 rho = seg34RPe64 rho * rho 32827 ∧
    seg34RIl63 rho = seg34RIl64 rho + seg34RPe64 rho * (1 - rho 32827) -
      seg34RIl64 rho * (seg34RPe64 rho * (1 - rho 32827)) := by
  constructor
  · exact seg34RStep63Pe rho r2199
  · rw [seg34RStep63Acc rho, seg34RStep63L rho r2197, seg34RStep63IlMul rho r2198, seg34RStep63L rho r2197]

theorem seg34_r_chunk63 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 64 (seg34RPeState rho 64) (seg34RIlState rho 64) := by
  have htail := seg34_r_chunk62 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2197, r2198, r2199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 63 ≤ n → n < 64 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 63 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep63 rho r2197 r2198 r2199
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 63 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
