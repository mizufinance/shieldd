import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk60

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep61L (rho : Nat -> Seg16.F) (r2201 : Seg16.relationRow2201 rho) :
    rho 14776 = seg16RPe62 rho * (1 - rho 14125) := by
  unfold Seg16.relationRow2201 at r2201
  unfold seg16RPe62
  linear_combination -r2201

theorem seg16RStep61IlMul (rho : Nat -> Seg16.F) (r2202 : Seg16.relationRow2202 rho) :
    rho 14777 = seg16RIl62 rho * (rho 14776) := by
  unfold Seg16.relationRow2202 at r2202
  rw [seg16RStep61IlLc rho] at r2202
  linear_combination -r2202

theorem seg16RStep61Acc (rho : Nat -> Seg16.F) :
    seg16RIl61 rho = seg16RIl62 rho + (rho 14776) - (rho 14777) := by
  have hstate : seg16RIl61 rho = seg16RIl62 rho + seg16RIlAtom97 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom97
  ring

theorem seg16RStep61Pe (rho : Nat -> Seg16.F) (r2203 : Seg16.relationRow2203 rho) :
    seg16RPe61 rho = seg16RPe62 rho * rho 14125 := by
  unfold Seg16.relationRow2203 at r2203
  unfold seg16RPe61 seg16RPe62
  linear_combination -r2203

theorem seg16RStep61 (rho : Nat -> Seg16.F) (r2201 : Seg16.relationRow2201 rho) (r2202 : Seg16.relationRow2202 rho) (r2203 : Seg16.relationRow2203 rho) :
    seg16RPe61 rho = seg16RPe62 rho * rho 14125 ∧
    seg16RIl61 rho = seg16RIl62 rho + seg16RPe62 rho * (1 - rho 14125) -
      seg16RIl62 rho * (seg16RPe62 rho * (1 - rho 14125)) := by
  constructor
  · exact seg16RStep61Pe rho r2203
  · rw [seg16RStep61Acc rho, seg16RStep61L rho r2201, seg16RStep61IlMul rho r2202, seg16RStep61L rho r2201]

theorem seg16_r_chunk61 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 62 (seg16RPeState rho 62) (seg16RIlState rho 62) := by
  have htail := seg16_r_chunk60 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2201, r2202, r2203, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 61 ≤ n → n < 62 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 61 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep61 rho r2201 r2202 r2203
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 61 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
