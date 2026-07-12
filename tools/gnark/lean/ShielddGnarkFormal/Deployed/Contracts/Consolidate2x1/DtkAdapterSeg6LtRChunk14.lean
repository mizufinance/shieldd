import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk13

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep14L (rho : Nat -> Seg6.F) (r2306 : Seg6.relationRow2306 rho) :
    rho 2707 = seg6RPe15 rho * (1 - rho 1904) := by
  unfold Seg6.relationRow2306 at r2306
  unfold seg6RPe15
  linear_combination -r2306

theorem seg6RStep14IlMul (rho : Nat -> Seg6.F) (r2307 : Seg6.relationRow2307 rho) :
    rho 2708 = seg6RIl15 rho * (rho 2707) := by
  unfold Seg6.relationRow2307 at r2307
  rw [seg6RStep14IlLc rho] at r2307
  linear_combination -r2307

theorem seg6RStep14Acc (rho : Nat -> Seg6.F) :
    seg6RIl14 rho = seg6RIl15 rho + (rho 2707) - (rho 2708) := by
  have hstate : seg6RIl14 rho = seg6RIl15 rho + seg6RIlAtom128 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom128
  ring

theorem seg6RStep14Pe (rho : Nat -> Seg6.F) (r2308 : Seg6.relationRow2308 rho) :
    seg6RPe14 rho = seg6RPe15 rho * rho 1904 := by
  unfold Seg6.relationRow2308 at r2308
  unfold seg6RPe14 seg6RPe15
  linear_combination -r2308

theorem seg6RStep14 (rho : Nat -> Seg6.F) (r2306 : Seg6.relationRow2306 rho) (r2307 : Seg6.relationRow2307 rho) (r2308 : Seg6.relationRow2308 rho) :
    seg6RPe14 rho = seg6RPe15 rho * rho 1904 ∧
    seg6RIl14 rho = seg6RIl15 rho + seg6RPe15 rho * (1 - rho 1904) -
      seg6RIl15 rho * (seg6RPe15 rho * (1 - rho 1904)) := by
  constructor
  · exact seg6RStep14Pe rho r2308
  · rw [seg6RStep14Acc rho, seg6RStep14L rho r2306, seg6RStep14IlMul rho r2307, seg6RStep14L rho r2306]

theorem seg6_r_chunk14 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 15 (seg6RPeState rho 15) (seg6RIlState rho 15) := by
  have htail := seg6_r_chunk13 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2306, r2307, r2308, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 14 ≤ n → n < 15 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 14 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep14 rho r2306 r2307 r2308
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 14 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
