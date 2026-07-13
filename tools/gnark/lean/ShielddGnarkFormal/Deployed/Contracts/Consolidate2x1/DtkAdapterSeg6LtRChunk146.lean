import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk145

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep146L (rho : Nat -> Seg6.F) (r2032 : Seg6.relationRow2032 rho) :
    rho 2433 = seg6RPe147 rho * (1 - rho 2036) := by
  unfold Seg6.relationRow2032 at r2032
  unfold seg6RPe147
  linear_combination -r2032

theorem seg6RStep146IlMul (rho : Nat -> Seg6.F) (r2033 : Seg6.relationRow2033 rho) :
    rho 2434 = seg6RIl147 rho * (rho 2433) := by
  unfold Seg6.relationRow2033 at r2033
  rw [seg6RStep146IlLc rho] at r2033
  linear_combination -r2033

theorem seg6RStep146Acc (rho : Nat -> Seg6.F) :
    seg6RIl146 rho = seg6RIl147 rho + (rho 2433) - (rho 2434) := by
  have hstate : seg6RIl146 rho = seg6RIl147 rho + seg6RIlAtom53 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom53
  ring

theorem seg6RStep146Pe (rho : Nat -> Seg6.F) (r2034 : Seg6.relationRow2034 rho) :
    seg6RPe146 rho = seg6RPe147 rho * rho 2036 := by
  unfold Seg6.relationRow2034 at r2034
  unfold seg6RPe146 seg6RPe147
  linear_combination -r2034

theorem seg6RStep146 (rho : Nat -> Seg6.F) (r2032 : Seg6.relationRow2032 rho) (r2033 : Seg6.relationRow2033 rho) (r2034 : Seg6.relationRow2034 rho) :
    seg6RPe146 rho = seg6RPe147 rho * rho 2036 ∧
    seg6RIl146 rho = seg6RIl147 rho + seg6RPe147 rho * (1 - rho 2036) -
      seg6RIl147 rho * (seg6RPe147 rho * (1 - rho 2036)) := by
  constructor
  · exact seg6RStep146Pe rho r2034
  · rw [seg6RStep146Acc rho, seg6RStep146L rho r2032, seg6RStep146IlMul rho r2033, seg6RStep146L rho r2032]

theorem seg6_r_chunk146 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 147 (seg6RPeState rho 147) (seg6RIlState rho 147) := by
  have htail := seg6_r_chunk145 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2032, r2033, r2034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 146 ≤ n → n < 147 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 146 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep146 rho r2032 r2033 r2034
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 146 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
