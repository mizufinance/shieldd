import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep45L (rho : Nat -> Seg34.F) (r2237 : Seg34.relationRow2237 rho) :
    rho 33512 = seg34RPe46 rho * (1 - rho 32809) := by
  unfold Seg34.relationRow2237 at r2237
  unfold seg34RPe46
  linear_combination -r2237

theorem seg34RStep45IlMul (rho : Nat -> Seg34.F) (r2238 : Seg34.relationRow2238 rho) :
    rho 33513 = seg34RIl46 rho * (rho 33512) := by
  unfold Seg34.relationRow2238 at r2238
  rw [seg34RStep45IlLc rho] at r2238
  linear_combination -r2238

theorem seg34RStep45Acc (rho : Nat -> Seg34.F) :
    seg34RIl45 rho = seg34RIl46 rho + (rho 33512) - (rho 33513) := by
  have hstate : seg34RIl45 rho = seg34RIl46 rho + seg34RIlAtom108 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom108
  ring

theorem seg34RStep45Pe (rho : Nat -> Seg34.F) (r2239 : Seg34.relationRow2239 rho) :
    seg34RPe45 rho = seg34RPe46 rho * rho 32809 := by
  unfold Seg34.relationRow2239 at r2239
  unfold seg34RPe45 seg34RPe46
  linear_combination -r2239

theorem seg34RStep45 (rho : Nat -> Seg34.F) (r2237 : Seg34.relationRow2237 rho) (r2238 : Seg34.relationRow2238 rho) (r2239 : Seg34.relationRow2239 rho) :
    seg34RPe45 rho = seg34RPe46 rho * rho 32809 ∧
    seg34RIl45 rho = seg34RIl46 rho + seg34RPe46 rho * (1 - rho 32809) -
      seg34RIl46 rho * (seg34RPe46 rho * (1 - rho 32809)) := by
  constructor
  · exact seg34RStep45Pe rho r2239
  · rw [seg34RStep45Acc rho, seg34RStep45L rho r2237, seg34RStep45IlMul rho r2238, seg34RStep45L rho r2237]

theorem seg34_r_chunk45 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 46 (seg34RPeState rho 46) (seg34RIlState rho 46) := by
  have htail := seg34_r_chunk44 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2237, r2238, r2239⟩
  have hsteps : ∀ n, 45 ≤ n → n < 46 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 45 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep45 rho r2237 r2238 r2239
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 45 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
