import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk5

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep6L (rho : Nat -> Seg16.F) (r2324 : Seg16.relationRow2324 rho) :
    rho 14899 = seg16RPe7 rho * (1 - rho 14070) := by
  unfold Seg16.relationRow2324 at r2324
  unfold seg16RPe7
  linear_combination -r2324

theorem seg16RStep6IlMul (rho : Nat -> Seg16.F) (r2325 : Seg16.relationRow2325 rho) :
    rho 14900 = seg16RIl7 rho * (rho 14899) := by
  unfold Seg16.relationRow2325 at r2325
  rw [seg16RStep6IlLc rho] at r2325
  linear_combination -r2325

theorem seg16RStep6Acc (rho : Nat -> Seg16.F) :
    seg16RIl6 rho = seg16RIl7 rho + (rho 14899) - (rho 14900) := by
  have hstate : seg16RIl6 rho = seg16RIl7 rho + seg16RIlAtom133 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom133
  ring

theorem seg16RStep6Pe (rho : Nat -> Seg16.F) (r2326 : Seg16.relationRow2326 rho) :
    seg16RPe6 rho = seg16RPe7 rho * rho 14070 := by
  unfold Seg16.relationRow2326 at r2326
  unfold seg16RPe6 seg16RPe7
  linear_combination -r2326

theorem seg16RStep6 (rho : Nat -> Seg16.F) (r2324 : Seg16.relationRow2324 rho) (r2325 : Seg16.relationRow2325 rho) (r2326 : Seg16.relationRow2326 rho) :
    seg16RPe6 rho = seg16RPe7 rho * rho 14070 ∧
    seg16RIl6 rho = seg16RIl7 rho + seg16RPe7 rho * (1 - rho 14070) -
      seg16RIl7 rho * (seg16RPe7 rho * (1 - rho 14070)) := by
  constructor
  · exact seg16RStep6Pe rho r2326
  · rw [seg16RStep6Acc rho, seg16RStep6L rho r2324, seg16RStep6IlMul rho r2325, seg16RStep6L rho r2324]

theorem seg16_r_chunk6 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 7 (seg16RPeState rho 7) (seg16RIlState rho 7) := by
  have htail := seg16_r_chunk5 rho h k hq4
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
  rcases p29 with ⟨_, _, _, _, r2324, r2325, r2326, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 6 ≤ n → n < 7 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 6 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep6 rho r2324 r2325 r2326
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 6 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
