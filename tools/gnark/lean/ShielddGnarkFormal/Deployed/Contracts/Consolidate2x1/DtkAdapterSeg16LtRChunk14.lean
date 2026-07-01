import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep14L (rho : Nat -> Seg16.F) (r2306 : Seg16.relationRow2306 rho) :
    rho 14881 = seg16RPe15 rho * (1 - rho 14078) := by
  unfold Seg16.relationRow2306 at r2306
  unfold seg16RPe15
  linear_combination -r2306

theorem seg16RStep14IlMul (rho : Nat -> Seg16.F) (r2307 : Seg16.relationRow2307 rho) :
    rho 14882 = seg16RIl15 rho * (rho 14881) := by
  unfold Seg16.relationRow2307 at r2307
  rw [seg16RStep14IlLc rho] at r2307
  linear_combination -r2307

theorem seg16RStep14Acc (rho : Nat -> Seg16.F) :
    seg16RIl14 rho = seg16RIl15 rho + (rho 14881) - (rho 14882) := by
  have hstate : seg16RIl14 rho = seg16RIl15 rho + seg16RIlAtom128 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom128
  ring

theorem seg16RStep14Pe (rho : Nat -> Seg16.F) (r2308 : Seg16.relationRow2308 rho) :
    seg16RPe14 rho = seg16RPe15 rho * rho 14078 := by
  unfold Seg16.relationRow2308 at r2308
  unfold seg16RPe14 seg16RPe15
  linear_combination -r2308

theorem seg16RStep14 (rho : Nat -> Seg16.F) (r2306 : Seg16.relationRow2306 rho) (r2307 : Seg16.relationRow2307 rho) (r2308 : Seg16.relationRow2308 rho) :
    seg16RPe14 rho = seg16RPe15 rho * rho 14078 ∧
    seg16RIl14 rho = seg16RIl15 rho + seg16RPe15 rho * (1 - rho 14078) -
      seg16RIl15 rho * (seg16RPe15 rho * (1 - rho 14078)) := by
  constructor
  · exact seg16RStep14Pe rho r2308
  · rw [seg16RStep14Acc rho, seg16RStep14L rho r2306, seg16RStep14IlMul rho r2307, seg16RStep14L rho r2306]

theorem seg16_r_chunk14 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 15 (seg16RPeState rho 15) (seg16RIlState rho 15) := by
  have htail := seg16_r_chunk13 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2306, r2307, r2308, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 14 ≤ n → n < 15 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 14 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep14 rho r2306 r2307 r2308
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 14 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
