import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk100

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep101L (rho : Nat -> Seg16.F) (r2115 : Seg16.relationRow2115 rho) :
    rho 14690 = seg16RPe102 rho * (1 - rho 14165) := by
  unfold Seg16.relationRow2115 at r2115
  unfold seg16RPe102
  linear_combination -r2115

theorem seg16RStep101IlMul (rho : Nat -> Seg16.F) (r2116 : Seg16.relationRow2116 rho) :
    rho 14691 = seg16RIl102 rho * (rho 14690) := by
  unfold Seg16.relationRow2116 at r2116
  rw [seg16RStep101IlLc rho] at r2116
  linear_combination -r2116

theorem seg16RStep101Acc (rho : Nat -> Seg16.F) :
    seg16RIl101 rho = seg16RIl102 rho + (rho 14690) - (rho 14691) := by
  have hstate : seg16RIl101 rho = seg16RIl102 rho + seg16RIlAtom73 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom73
  ring

theorem seg16RStep101Pe (rho : Nat -> Seg16.F) (r2117 : Seg16.relationRow2117 rho) :
    seg16RPe101 rho = seg16RPe102 rho * rho 14165 := by
  unfold Seg16.relationRow2117 at r2117
  unfold seg16RPe101 seg16RPe102
  linear_combination -r2117

theorem seg16RStep101 (rho : Nat -> Seg16.F) (r2115 : Seg16.relationRow2115 rho) (r2116 : Seg16.relationRow2116 rho) (r2117 : Seg16.relationRow2117 rho) :
    seg16RPe101 rho = seg16RPe102 rho * rho 14165 ∧
    seg16RIl101 rho = seg16RIl102 rho + seg16RPe102 rho * (1 - rho 14165) -
      seg16RIl102 rho * (seg16RPe102 rho * (1 - rho 14165)) := by
  constructor
  · exact seg16RStep101Pe rho r2117
  · rw [seg16RStep101Acc rho, seg16RStep101L rho r2115, seg16RStep101IlMul rho r2116, seg16RStep101L rho r2115]

theorem seg16_r_chunk101 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 102 (seg16RPeState rho 102) (seg16RIlState rho 102) := by
  have htail := seg16_r_chunk100 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2115, r2116, r2117, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 101 ≤ n → n < 102 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 101 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep101 rho r2115 r2116 r2117
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 101 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
