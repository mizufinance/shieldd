import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk97

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep98L (rho : Nat -> Seg16.F) (r2122 : Seg16.relationRow2122 rho) :
    rho 14697 = seg16RPe99 rho * (1 - rho 14162) := by
  unfold Seg16.relationRow2122 at r2122
  unfold seg16RPe99
  linear_combination -r2122

theorem seg16RStep98IlMul (rho : Nat -> Seg16.F) (r2123 : Seg16.relationRow2123 rho) :
    rho 14698 = seg16RIl99 rho * (rho 14697) := by
  unfold Seg16.relationRow2123 at r2123
  rw [seg16RStep98IlLc rho] at r2123
  linear_combination -r2123

theorem seg16RStep98Acc (rho : Nat -> Seg16.F) :
    seg16RIl98 rho = seg16RIl99 rho + (rho 14697) - (rho 14698) := by
  have hstate : seg16RIl98 rho = seg16RIl99 rho + seg16RIlAtom75 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom75
  ring

theorem seg16RStep98Pe (rho : Nat -> Seg16.F) (r2124 : Seg16.relationRow2124 rho) :
    seg16RPe98 rho = seg16RPe99 rho * rho 14162 := by
  unfold Seg16.relationRow2124 at r2124
  unfold seg16RPe98 seg16RPe99
  linear_combination -r2124

theorem seg16RStep98 (rho : Nat -> Seg16.F) (r2122 : Seg16.relationRow2122 rho) (r2123 : Seg16.relationRow2123 rho) (r2124 : Seg16.relationRow2124 rho) :
    seg16RPe98 rho = seg16RPe99 rho * rho 14162 ∧
    seg16RIl98 rho = seg16RIl99 rho + seg16RPe99 rho * (1 - rho 14162) -
      seg16RIl99 rho * (seg16RPe99 rho * (1 - rho 14162)) := by
  constructor
  · exact seg16RStep98Pe rho r2124
  · rw [seg16RStep98Acc rho, seg16RStep98L rho r2122, seg16RStep98IlMul rho r2123, seg16RStep98L rho r2122]

theorem seg16_r_chunk98 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 99 (seg16RPeState rho 99) (seg16RIlState rho 99) := by
  have htail := seg16_r_chunk97 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2122, r2123, r2124, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 98 ≤ n → n < 99 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 98 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep98 rho r2122 r2123 r2124
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 98 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
