import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk103

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep104L (rho : Nat -> Seg16.F) (r2108 : Seg16.relationRow2108 rho) :
    rho 14683 = seg16RPe105 rho * (1 - rho 14168) := by
  unfold Seg16.relationRow2108 at r2108
  unfold seg16RPe105
  linear_combination -r2108

theorem seg16RStep104IlMul (rho : Nat -> Seg16.F) (r2109 : Seg16.relationRow2109 rho) :
    rho 14684 = seg16RIl105 rho * (rho 14683) := by
  unfold Seg16.relationRow2109 at r2109
  rw [seg16RStep104IlLc rho] at r2109
  linear_combination -r2109

theorem seg16RStep104Acc (rho : Nat -> Seg16.F) :
    seg16RIl104 rho = seg16RIl105 rho + (rho 14683) - (rho 14684) := by
  have hstate : seg16RIl104 rho = seg16RIl105 rho + seg16RIlAtom71 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom71
  ring

theorem seg16RStep104Pe (rho : Nat -> Seg16.F) (r2110 : Seg16.relationRow2110 rho) :
    seg16RPe104 rho = seg16RPe105 rho * rho 14168 := by
  unfold Seg16.relationRow2110 at r2110
  unfold seg16RPe104 seg16RPe105
  linear_combination -r2110

theorem seg16RStep104 (rho : Nat -> Seg16.F) (r2108 : Seg16.relationRow2108 rho) (r2109 : Seg16.relationRow2109 rho) (r2110 : Seg16.relationRow2110 rho) :
    seg16RPe104 rho = seg16RPe105 rho * rho 14168 ∧
    seg16RIl104 rho = seg16RIl105 rho + seg16RPe105 rho * (1 - rho 14168) -
      seg16RIl105 rho * (seg16RPe105 rho * (1 - rho 14168)) := by
  constructor
  · exact seg16RStep104Pe rho r2110
  · rw [seg16RStep104Acc rho, seg16RStep104L rho r2108, seg16RStep104IlMul rho r2109, seg16RStep104L rho r2108]

theorem seg16_r_chunk104 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 105 (seg16RPeState rho 105) (seg16RIlState rho 105) := by
  have htail := seg16_r_chunk103 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2108, r2109, r2110, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 104 ≤ n → n < 105 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 104 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep104 rho r2108 r2109 r2110
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 104 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
