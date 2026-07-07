import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk125

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep126L (rho : Nat -> Seg34.F) (r2066 : Seg34.relationRow2066 rho) :
    rho 33341 = seg34RPe127 rho * (1 - rho 32890) := by
  unfold Seg34.relationRow2066 at r2066
  unfold seg34RPe127
  linear_combination -r2066

theorem seg34RStep126IlMul (rho : Nat -> Seg34.F) (r2067 : Seg34.relationRow2067 rho) :
    rho 33342 = seg34RIl127 rho * (rho 33341) := by
  unfold Seg34.relationRow2067 at r2067
  rw [seg34RStep126IlLc rho] at r2067
  linear_combination -r2067

theorem seg34RStep126Acc (rho : Nat -> Seg34.F) :
    seg34RIl126 rho = seg34RIl127 rho + (rho 33341) - (rho 33342) := by
  have hstate : seg34RIl126 rho = seg34RIl127 rho + seg34RIlAtom60 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom60
  ring

theorem seg34RStep126Pe (rho : Nat -> Seg34.F) (r2068 : Seg34.relationRow2068 rho) :
    seg34RPe126 rho = seg34RPe127 rho * rho 32890 := by
  unfold Seg34.relationRow2068 at r2068
  unfold seg34RPe126 seg34RPe127
  linear_combination -r2068

theorem seg34RStep126 (rho : Nat -> Seg34.F) (r2066 : Seg34.relationRow2066 rho) (r2067 : Seg34.relationRow2067 rho) (r2068 : Seg34.relationRow2068 rho) :
    seg34RPe126 rho = seg34RPe127 rho * rho 32890 ∧
    seg34RIl126 rho = seg34RIl127 rho + seg34RPe127 rho * (1 - rho 32890) -
      seg34RIl127 rho * (seg34RPe127 rho * (1 - rho 32890)) := by
  constructor
  · exact seg34RStep126Pe rho r2068
  · rw [seg34RStep126Acc rho, seg34RStep126L rho r2066, seg34RStep126IlMul rho r2067, seg34RStep126L rho r2066]

theorem seg34_r_chunk126 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 127 (seg34RPeState rho 127) (seg34RIlState rho 127) := by
  have htail := seg34_r_chunk125 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2066, r2067, r2068, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 126 ≤ n → n < 127 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 126 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep126 rho r2066 r2067 r2068
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 126 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
