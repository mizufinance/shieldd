import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk125

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep126L (rho : Nat -> Seg16.F) (r2066 : Seg16.relationRow2066 rho) :
    rho 14641 = seg16RPe127 rho * (1 - rho 14190) := by
  unfold Seg16.relationRow2066 at r2066
  unfold seg16RPe127
  linear_combination -r2066

theorem seg16RStep126IlMul (rho : Nat -> Seg16.F) (r2067 : Seg16.relationRow2067 rho) :
    rho 14642 = seg16RIl127 rho * (rho 14641) := by
  unfold Seg16.relationRow2067 at r2067
  rw [seg16RStep126IlLc rho] at r2067
  linear_combination -r2067

theorem seg16RStep126Acc (rho : Nat -> Seg16.F) :
    seg16RIl126 rho = seg16RIl127 rho + (rho 14641) - (rho 14642) := by
  have hstate : seg16RIl126 rho = seg16RIl127 rho + seg16RIlAtom60 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom60
  ring

theorem seg16RStep126Pe (rho : Nat -> Seg16.F) (r2068 : Seg16.relationRow2068 rho) :
    seg16RPe126 rho = seg16RPe127 rho * rho 14190 := by
  unfold Seg16.relationRow2068 at r2068
  unfold seg16RPe126 seg16RPe127
  linear_combination -r2068

theorem seg16RStep126 (rho : Nat -> Seg16.F) (r2066 : Seg16.relationRow2066 rho) (r2067 : Seg16.relationRow2067 rho) (r2068 : Seg16.relationRow2068 rho) :
    seg16RPe126 rho = seg16RPe127 rho * rho 14190 ∧
    seg16RIl126 rho = seg16RIl127 rho + seg16RPe127 rho * (1 - rho 14190) -
      seg16RIl127 rho * (seg16RPe127 rho * (1 - rho 14190)) := by
  constructor
  · exact seg16RStep126Pe rho r2068
  · rw [seg16RStep126Acc rho, seg16RStep126L rho r2066, seg16RStep126IlMul rho r2067, seg16RStep126L rho r2066]

theorem seg16_r_chunk126 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 127 (seg16RPeState rho 127) (seg16RIlState rho 127) := by
  have htail := seg16_r_chunk125 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 126 ≤ n → n < 127 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 126 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep126 rho r2066 r2067 r2068
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 126 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
