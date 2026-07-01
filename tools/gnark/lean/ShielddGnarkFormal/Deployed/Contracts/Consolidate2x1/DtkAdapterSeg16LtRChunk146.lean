import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk145

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep146L (rho : Nat -> Seg16.F) (r2032 : Seg16.relationRow2032 rho) :
    rho 14607 = seg16RPe147 rho * (1 - rho 14210) := by
  unfold Seg16.relationRow2032 at r2032
  unfold seg16RPe147
  linear_combination -r2032

theorem seg16RStep146IlMul (rho : Nat -> Seg16.F) (r2033 : Seg16.relationRow2033 rho) :
    rho 14608 = seg16RIl147 rho * (rho 14607) := by
  unfold Seg16.relationRow2033 at r2033
  rw [seg16RStep146IlLc rho] at r2033
  linear_combination -r2033

theorem seg16RStep146Acc (rho : Nat -> Seg16.F) :
    seg16RIl146 rho = seg16RIl147 rho + (rho 14607) - (rho 14608) := by
  have hstate : seg16RIl146 rho = seg16RIl147 rho + seg16RIlAtom53 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom53
  ring

theorem seg16RStep146Pe (rho : Nat -> Seg16.F) (r2034 : Seg16.relationRow2034 rho) :
    seg16RPe146 rho = seg16RPe147 rho * rho 14210 := by
  unfold Seg16.relationRow2034 at r2034
  unfold seg16RPe146 seg16RPe147
  linear_combination -r2034

theorem seg16RStep146 (rho : Nat -> Seg16.F) (r2032 : Seg16.relationRow2032 rho) (r2033 : Seg16.relationRow2033 rho) (r2034 : Seg16.relationRow2034 rho) :
    seg16RPe146 rho = seg16RPe147 rho * rho 14210 ∧
    seg16RIl146 rho = seg16RIl147 rho + seg16RPe147 rho * (1 - rho 14210) -
      seg16RIl147 rho * (seg16RPe147 rho * (1 - rho 14210)) := by
  constructor
  · exact seg16RStep146Pe rho r2034
  · rw [seg16RStep146Acc rho, seg16RStep146L rho r2032, seg16RStep146IlMul rho r2033, seg16RStep146L rho r2032]

theorem seg16_r_chunk146 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 147 (seg16RPeState rho 147) (seg16RIlState rho 147) := by
  have htail := seg16_r_chunk145 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2032, r2033, r2034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 146 ≤ n → n < 147 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 146 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep146 rho r2032 r2033 r2034
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 146 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
