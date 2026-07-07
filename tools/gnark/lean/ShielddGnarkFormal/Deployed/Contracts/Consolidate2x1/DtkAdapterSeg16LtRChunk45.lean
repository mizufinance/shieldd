import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep45L (rho : Nat -> Seg16.F) (r2237 : Seg16.relationRow2237 rho) :
    rho 14812 = seg16RPe46 rho * (1 - rho 14109) := by
  unfold Seg16.relationRow2237 at r2237
  unfold seg16RPe46
  linear_combination -r2237

theorem seg16RStep45IlMul (rho : Nat -> Seg16.F) (r2238 : Seg16.relationRow2238 rho) :
    rho 14813 = seg16RIl46 rho * (rho 14812) := by
  unfold Seg16.relationRow2238 at r2238
  rw [seg16RStep45IlLc rho] at r2238
  linear_combination -r2238

theorem seg16RStep45Acc (rho : Nat -> Seg16.F) :
    seg16RIl45 rho = seg16RIl46 rho + (rho 14812) - (rho 14813) := by
  have hstate : seg16RIl45 rho = seg16RIl46 rho + seg16RIlAtom108 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom108
  ring

theorem seg16RStep45Pe (rho : Nat -> Seg16.F) (r2239 : Seg16.relationRow2239 rho) :
    seg16RPe45 rho = seg16RPe46 rho * rho 14109 := by
  unfold Seg16.relationRow2239 at r2239
  unfold seg16RPe45 seg16RPe46
  linear_combination -r2239

theorem seg16RStep45 (rho : Nat -> Seg16.F) (r2237 : Seg16.relationRow2237 rho) (r2238 : Seg16.relationRow2238 rho) (r2239 : Seg16.relationRow2239 rho) :
    seg16RPe45 rho = seg16RPe46 rho * rho 14109 ∧
    seg16RIl45 rho = seg16RIl46 rho + seg16RPe46 rho * (1 - rho 14109) -
      seg16RIl46 rho * (seg16RPe46 rho * (1 - rho 14109)) := by
  constructor
  · exact seg16RStep45Pe rho r2239
  · rw [seg16RStep45Acc rho, seg16RStep45L rho r2237, seg16RStep45IlMul rho r2238, seg16RStep45L rho r2237]

theorem seg16_r_chunk45 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 46 (seg16RPeState rho 46) (seg16RIlState rho 46) := by
  have htail := seg16_r_chunk44 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2237, r2238, r2239⟩
  have hsteps : ∀ n, 45 ≤ n → n < 46 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 45 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep45 rho r2237 r2238 r2239
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 45 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
