import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk145

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep146L (rho : Nat -> Seg34.F) (r2032 : Seg34.relationRow2032 rho) :
    rho 33307 = seg34RPe147 rho * (1 - rho 32910) := by
  unfold Seg34.relationRow2032 at r2032
  unfold seg34RPe147
  linear_combination -r2032

theorem seg34RStep146IlMul (rho : Nat -> Seg34.F) (r2033 : Seg34.relationRow2033 rho) :
    rho 33308 = seg34RIl147 rho * (rho 33307) := by
  unfold Seg34.relationRow2033 at r2033
  rw [seg34RStep146IlLc rho] at r2033
  linear_combination -r2033

theorem seg34RStep146Acc (rho : Nat -> Seg34.F) :
    seg34RIl146 rho = seg34RIl147 rho + (rho 33307) - (rho 33308) := by
  have hstate : seg34RIl146 rho = seg34RIl147 rho + seg34RIlAtom53 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom53
  ring

theorem seg34RStep146Pe (rho : Nat -> Seg34.F) (r2034 : Seg34.relationRow2034 rho) :
    seg34RPe146 rho = seg34RPe147 rho * rho 32910 := by
  unfold Seg34.relationRow2034 at r2034
  unfold seg34RPe146 seg34RPe147
  linear_combination -r2034

theorem seg34RStep146 (rho : Nat -> Seg34.F) (r2032 : Seg34.relationRow2032 rho) (r2033 : Seg34.relationRow2033 rho) (r2034 : Seg34.relationRow2034 rho) :
    seg34RPe146 rho = seg34RPe147 rho * rho 32910 ∧
    seg34RIl146 rho = seg34RIl147 rho + seg34RPe147 rho * (1 - rho 32910) -
      seg34RIl147 rho * (seg34RPe147 rho * (1 - rho 32910)) := by
  constructor
  · exact seg34RStep146Pe rho r2034
  · rw [seg34RStep146Acc rho, seg34RStep146L rho r2032, seg34RStep146IlMul rho r2033, seg34RStep146L rho r2032]

theorem seg34_r_chunk146 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 147 (seg34RPeState rho 147) (seg34RIlState rho 147) := by
  have htail := seg34_r_chunk145 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2032, r2033, r2034, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 146 ≤ n → n < 147 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 146 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep146 rho r2032 r2033 r2034
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 146 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
