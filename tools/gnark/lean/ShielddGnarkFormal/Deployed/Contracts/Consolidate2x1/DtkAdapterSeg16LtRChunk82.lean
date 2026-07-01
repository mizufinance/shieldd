import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk81

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep82L (rho : Nat -> Seg16.F) (r2156 : Seg16.relationRow2156 rho) :
    rho 14731 = seg16RPe83 rho * (1 - rho 14146) := by
  unfold Seg16.relationRow2156 at r2156
  unfold seg16RPe83
  linear_combination -r2156

theorem seg16RStep82IlMul (rho : Nat -> Seg16.F) (r2157 : Seg16.relationRow2157 rho) :
    rho 14732 = seg16RIl83 rho * (rho 14731) := by
  unfold Seg16.relationRow2157 at r2157
  rw [seg16RStep82IlLc rho] at r2157
  linear_combination -r2157

theorem seg16RStep82Acc (rho : Nat -> Seg16.F) :
    seg16RIl82 rho = seg16RIl83 rho + (rho 14731) - (rho 14732) := by
  have hstate : seg16RIl82 rho = seg16RIl83 rho + seg16RIlAtom84 rho + (-1 : Seg16.F) * seg16RIlAtom85 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom84 seg16RIlAtom85
  ring

theorem seg16RStep82Pe (rho : Nat -> Seg16.F) (r2158 : Seg16.relationRow2158 rho) :
    seg16RPe82 rho = seg16RPe83 rho * rho 14146 := by
  unfold Seg16.relationRow2158 at r2158
  unfold seg16RPe82 seg16RPe83
  linear_combination -r2158

theorem seg16RStep82 (rho : Nat -> Seg16.F) (r2156 : Seg16.relationRow2156 rho) (r2157 : Seg16.relationRow2157 rho) (r2158 : Seg16.relationRow2158 rho) :
    seg16RPe82 rho = seg16RPe83 rho * rho 14146 ∧
    seg16RIl82 rho = seg16RIl83 rho + seg16RPe83 rho * (1 - rho 14146) -
      seg16RIl83 rho * (seg16RPe83 rho * (1 - rho 14146)) := by
  constructor
  · exact seg16RStep82Pe rho r2158
  · rw [seg16RStep82Acc rho, seg16RStep82L rho r2156, seg16RStep82IlMul rho r2157, seg16RStep82L rho r2156]

theorem seg16_r_chunk82 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 83 (seg16RPeState rho 83) (seg16RIlState rho 83) := by
  have htail := seg16_r_chunk81 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2156, r2157, r2158, _⟩
  have hsteps : ∀ n, 82 ≤ n → n < 83 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 82 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep82 rho r2156 r2157 r2158
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 82 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
