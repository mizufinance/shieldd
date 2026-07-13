import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk51

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep52L (rho : Nat -> Seg6.F) (r2220 : Seg6.relationRow2220 rho) :
    rho 2621 = seg6RPe53 rho * (1 - rho 1942) := by
  unfold Seg6.relationRow2220 at r2220
  unfold seg6RPe53
  linear_combination -r2220

theorem seg6RStep52IlMul (rho : Nat -> Seg6.F) (r2221 : Seg6.relationRow2221 rho) :
    rho 2622 = seg6RIl53 rho * (rho 2621) := by
  unfold Seg6.relationRow2221 at r2221
  rw [seg6RStep52IlLc rho] at r2221
  linear_combination -r2221

theorem seg6RStep52Acc (rho : Nat -> Seg6.F) :
    seg6RIl52 rho = seg6RIl53 rho + (rho 2621) - (rho 2622) := by
  have hstate : seg6RIl52 rho = seg6RIl53 rho + seg6RIlAtom103 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom103
  ring

theorem seg6RStep52Pe (rho : Nat -> Seg6.F) (r2222 : Seg6.relationRow2222 rho) :
    seg6RPe52 rho = seg6RPe53 rho * rho 1942 := by
  unfold Seg6.relationRow2222 at r2222
  unfold seg6RPe52 seg6RPe53
  linear_combination -r2222

theorem seg6RStep52 (rho : Nat -> Seg6.F) (r2220 : Seg6.relationRow2220 rho) (r2221 : Seg6.relationRow2221 rho) (r2222 : Seg6.relationRow2222 rho) :
    seg6RPe52 rho = seg6RPe53 rho * rho 1942 ∧
    seg6RIl52 rho = seg6RIl53 rho + seg6RPe53 rho * (1 - rho 1942) -
      seg6RIl53 rho * (seg6RPe53 rho * (1 - rho 1942)) := by
  constructor
  · exact seg6RStep52Pe rho r2222
  · rw [seg6RStep52Acc rho, seg6RStep52L rho r2220, seg6RStep52IlMul rho r2221, seg6RStep52L rho r2220]

theorem seg6_r_chunk52 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 53 (seg6RPeState rho 53) (seg6RIlState rho 53) := by
  have htail := seg6_r_chunk51 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2220, r2221, r2222, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 52 ≤ n → n < 53 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 52 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep52 rho r2220 r2221 r2222
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 52 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
