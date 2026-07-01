import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk18

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep19L (rho : Nat -> Seg16.F) (r2291 : Seg16.relationRow2291 rho) :
    rho 14866 = seg16RPe20 rho * (1 - rho 14083) := by
  unfold Seg16.relationRow2291 at r2291
  unfold seg16RPe20
  linear_combination -r2291

theorem seg16RStep19IlMul (rho : Nat -> Seg16.F) (r2292 : Seg16.relationRow2292 rho) :
    rho 14867 = seg16RIl20 rho * (rho 14866) := by
  unfold Seg16.relationRow2292 at r2292
  rw [seg16RStep19IlLc rho] at r2292
  linear_combination -r2292

theorem seg16RStep19Acc (rho : Nat -> Seg16.F) :
    seg16RIl19 rho = seg16RIl20 rho + (rho 14866) - (rho 14867) := by
  have hstate : seg16RIl19 rho = seg16RIl20 rho + seg16RIlAtom123 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom123
  ring

theorem seg16RStep19Pe (rho : Nat -> Seg16.F) (r2293 : Seg16.relationRow2293 rho) :
    seg16RPe19 rho = seg16RPe20 rho * rho 14083 := by
  unfold Seg16.relationRow2293 at r2293
  unfold seg16RPe19 seg16RPe20
  linear_combination -r2293

theorem seg16RStep19 (rho : Nat -> Seg16.F) (r2291 : Seg16.relationRow2291 rho) (r2292 : Seg16.relationRow2292 rho) (r2293 : Seg16.relationRow2293 rho) :
    seg16RPe19 rho = seg16RPe20 rho * rho 14083 ∧
    seg16RIl19 rho = seg16RIl20 rho + seg16RPe20 rho * (1 - rho 14083) -
      seg16RIl20 rho * (seg16RPe20 rho * (1 - rho 14083)) := by
  constructor
  · exact seg16RStep19Pe rho r2293
  · rw [seg16RStep19Acc rho, seg16RStep19L rho r2291, seg16RStep19IlMul rho r2292, seg16RStep19L rho r2291]

theorem seg16_r_chunk19 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 20 (seg16RPeState rho 20) (seg16RIlState rho 20) := by
  have htail := seg16_r_chunk18 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2291, r2292, r2293, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 19 ≤ n → n < 20 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 19 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep19 rho r2291 r2292 r2293
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 19 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
