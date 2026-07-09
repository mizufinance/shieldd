import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk29

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step30L (rho : Nat -> Seg5.F) (r2664 : Seg5.relationRow2664 rho) :
    rho 2361 = seg5Q4Pe31 rho * (1 - rho 1217) := by
  unfold Seg5.relationRow2664 at r2664
  unfold seg5Q4Pe31
  linear_combination -r2664

theorem seg5Q4Step30IlMul (rho : Nat -> Seg5.F) (r2665 : Seg5.relationRow2665 rho) :
    rho 2362 = seg5Q4Il31 rho * (rho 2361) := by
  unfold Seg5.relationRow2665 at r2665
  rw [seg5Q4Step30IlLc rho] at r2665
  linear_combination -r2665

theorem seg5Q4Step30Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il30 rho = seg5Q4Il31 rho + (rho 2361) - (rho 2362) := by
  have hstate : seg5Q4Il30 rho = seg5Q4Il31 rho + seg5Q4IlAtom52 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom52
  ring

theorem seg5Q4Step30Pe (rho : Nat -> Seg5.F) (r2666 : Seg5.relationRow2666 rho) :
    seg5Q4Pe30 rho = seg5Q4Pe31 rho * rho 1217 := by
  unfold Seg5.relationRow2666 at r2666
  unfold seg5Q4Pe30 seg5Q4Pe31
  linear_combination -r2666

theorem seg5Q4Step30 (rho : Nat -> Seg5.F) (r2664 : Seg5.relationRow2664 rho) (r2665 : Seg5.relationRow2665 rho) (r2666 : Seg5.relationRow2666 rho) :
    seg5Q4Pe30 rho = seg5Q4Pe31 rho * rho 1217 ∧
    seg5Q4Il30 rho = seg5Q4Il31 rho + seg5Q4Pe31 rho * (1 - rho 1217) -
      seg5Q4Il31 rho * (seg5Q4Pe31 rho * (1 - rho 1217)) := by
  constructor
  · exact seg5Q4Step30Pe rho r2666
  · rw [seg5Q4Step30Acc rho, seg5Q4Step30L rho r2664, seg5Q4Step30IlMul rho r2665, seg5Q4Step30L rho r2664]

theorem seg5_q4_chunk30 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 31 (seg5Q4PeState rho 31) (seg5Q4IlState rho 31) := by
  have htail := seg5_q4_chunk29 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p33, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart33 at p33
  rcases p33 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2664, r2665, r2666, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 30 ≤ n → n < 31 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 30 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step30 rho r2664 r2665 r2666
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 30 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
