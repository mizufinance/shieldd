import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk24

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep25L (rho : Nat -> Seg16.F) (r2277 : Seg16.relationRow2277 rho) :
    rho 14852 = seg16RPe26 rho * (1 - rho 14089) := by
  unfold Seg16.relationRow2277 at r2277
  unfold seg16RPe26
  linear_combination -r2277

theorem seg16RStep25IlMul (rho : Nat -> Seg16.F) (r2278 : Seg16.relationRow2278 rho) :
    rho 14853 = seg16RIl26 rho * (rho 14852) := by
  unfold Seg16.relationRow2278 at r2278
  rw [seg16RStep25IlLc rho] at r2278
  linear_combination -r2278

theorem seg16RStep25Acc (rho : Nat -> Seg16.F) :
    seg16RIl25 rho = seg16RIl26 rho + (rho 14852) - (rho 14853) := by
  have hstate : seg16RIl25 rho = seg16RIl26 rho + seg16RIlAtom118 rho + (-1 : Seg16.F) * seg16RIlAtom119 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom118 seg16RIlAtom119
  ring

theorem seg16RStep25Pe (rho : Nat -> Seg16.F) (r2279 : Seg16.relationRow2279 rho) :
    seg16RPe25 rho = seg16RPe26 rho * rho 14089 := by
  unfold Seg16.relationRow2279 at r2279
  unfold seg16RPe25 seg16RPe26
  linear_combination -r2279

theorem seg16RStep25 (rho : Nat -> Seg16.F) (r2277 : Seg16.relationRow2277 rho) (r2278 : Seg16.relationRow2278 rho) (r2279 : Seg16.relationRow2279 rho) :
    seg16RPe25 rho = seg16RPe26 rho * rho 14089 ∧
    seg16RIl25 rho = seg16RIl26 rho + seg16RPe26 rho * (1 - rho 14089) -
      seg16RIl26 rho * (seg16RPe26 rho * (1 - rho 14089)) := by
  constructor
  · exact seg16RStep25Pe rho r2279
  · rw [seg16RStep25Acc rho, seg16RStep25L rho r2277, seg16RStep25IlMul rho r2278, seg16RStep25L rho r2277]

theorem seg16_r_chunk25 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 26 (seg16RPeState rho 26) (seg16RIlState rho 26) := by
  have htail := seg16_r_chunk24 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2277, r2278, r2279, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 25 ≤ n → n < 26 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 25 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep25 rho r2277 r2278 r2279
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 25 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
