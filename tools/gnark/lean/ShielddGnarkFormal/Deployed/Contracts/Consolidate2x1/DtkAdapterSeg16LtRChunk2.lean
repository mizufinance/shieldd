import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk1

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep2L (rho : Nat -> Seg16.F) (r2336 : Seg16.relationRow2336 rho) :
    rho 14911 = seg16RPe3 rho * (1 - rho 14066) := by
  unfold Seg16.relationRow2336 at r2336
  unfold seg16RPe3
  linear_combination -r2336

theorem seg16RStep2IlMul (rho : Nat -> Seg16.F) (r2337 : Seg16.relationRow2337 rho) :
    rho 14912 = seg16RIl3 rho * (rho 14911) := by
  unfold Seg16.relationRow2337 at r2337
  rw [seg16RStep2IlLc rho] at r2337
  linear_combination -r2337

theorem seg16RStep2Acc (rho : Nat -> Seg16.F) :
    seg16RIl2 rho = seg16RIl3 rho + (rho 14911) - (rho 14912) := by
  have hstate : seg16RIl2 rho = seg16RIl3 rho + seg16RIlAtom138 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom138
  ring

theorem seg16RStep2Pe (rho : Nat -> Seg16.F) (r2338 : Seg16.relationRow2338 rho) :
    seg16RPe2 rho = seg16RPe3 rho * rho 14066 := by
  unfold Seg16.relationRow2338 at r2338
  unfold seg16RPe2 seg16RPe3
  linear_combination -r2338

theorem seg16RStep2 (rho : Nat -> Seg16.F) (r2336 : Seg16.relationRow2336 rho) (r2337 : Seg16.relationRow2337 rho) (r2338 : Seg16.relationRow2338 rho) :
    seg16RPe2 rho = seg16RPe3 rho * rho 14066 ∧
    seg16RIl2 rho = seg16RIl3 rho + seg16RPe3 rho * (1 - rho 14066) -
      seg16RIl3 rho * (seg16RPe3 rho * (1 - rho 14066)) := by
  constructor
  · exact seg16RStep2Pe rho r2338
  · rw [seg16RStep2Acc rho, seg16RStep2L rho r2336, seg16RStep2IlMul rho r2337, seg16RStep2L rho r2336]

theorem seg16_r_chunk2 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 3 (seg16RPeState rho 3) (seg16RIlState rho 3) := by
  have htail := seg16_r_chunk1 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart29 at p29
  rcases p29 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2336, r2337, r2338, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 2 ≤ n → n < 3 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 2 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep2 rho r2336 r2337 r2338
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 2 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
