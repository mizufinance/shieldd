import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtQ4Chunk117

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5Q4Step118L (rho : Nat -> Seg5.F) (r2486 : Seg5.relationRow2486 rho) :
    rho 2183 = seg5Q4Pe119 rho * (1 - rho 1305) := by
  unfold Seg5.relationRow2486 at r2486
  unfold seg5Q4Pe119
  linear_combination -r2486

theorem seg5Q4Step118IlMul (rho : Nat -> Seg5.F) (r2487 : Seg5.relationRow2487 rho) :
    rho 2184 = seg5Q4Il119 rho * (rho 2183) := by
  unfold Seg5.relationRow2487 at r2487
  rw [seg5Q4Il119Atoms rho]
  unfold seg5Q4IlAtom0 seg5Q4IlAtom1 seg5Q4IlAtom2 seg5Q4IlAtom3
  linear_combination -r2487

theorem seg5Q4Step118Acc (rho : Nat -> Seg5.F) :
    seg5Q4Il118 rho = seg5Q4Il119 rho + (rho 2183) - (rho 2184) := by
  have hstate : seg5Q4Il118 rho = seg5Q4Il119 rho + seg5Q4IlAtom4 rho := by rfl
  rw [hstate]
  unfold seg5Q4IlAtom4
  ring

theorem seg5Q4Step118Pe (rho : Nat -> Seg5.F) (r2488 : Seg5.relationRow2488 rho) :
    seg5Q4Pe118 rho = seg5Q4Pe119 rho * rho 1305 := by
  unfold Seg5.relationRow2488 at r2488
  unfold seg5Q4Pe118 seg5Q4Pe119
  linear_combination -r2488

theorem seg5Q4Step118 (rho : Nat -> Seg5.F) (r2486 : Seg5.relationRow2486 rho) (r2487 : Seg5.relationRow2487 rho) (r2488 : Seg5.relationRow2488 rho) :
    seg5Q4Pe118 rho = seg5Q4Pe119 rho * rho 1305 ∧
    seg5Q4Il118 rho = seg5Q4Il119 rho + seg5Q4Pe119 rho * (1 - rho 1305) -
      seg5Q4Il119 rho * (seg5Q4Pe119 rho * (1 - rho 1305)) := by
  constructor
  · exact seg5Q4Step118Pe rho r2488
  · rw [seg5Q4Step118Acc rho, seg5Q4Step118L rho r2486, seg5Q4Step118IlMul rho r2487, seg5Q4Step118L rho r2486]

theorem seg5_q4_chunk118 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 119 (seg5Q4PeState rho 119) (seg5Q4IlState rho 119) := by
  have htail := seg5_q4_chunk117 rho h k hk
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, r2486, r2487, r2488, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 118 ≤ n → n < 119 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * rho (1187 + n) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) + seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5Q4IlState rho (n + 1) * (seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5Q4PeState rho n = seg5Q4PeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5Q4IlState rho n = seg5Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 118 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5Q4Step118 rho r2486 r2487 r2488
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg5Q4PeState rho) (seg5Q4IlState rho) 118 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
