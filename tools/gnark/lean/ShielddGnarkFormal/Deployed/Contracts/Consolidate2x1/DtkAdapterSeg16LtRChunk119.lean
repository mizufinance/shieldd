import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk118

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep119L (rho : Nat -> Seg16.F) (r2079 : Seg16.relationRow2079 rho) :
    rho 14654 = seg16RPe120 rho * (1 - rho 14183) := by
  unfold Seg16.relationRow2079 at r2079
  unfold seg16RPe120
  linear_combination -r2079

theorem seg16RStep119IlMul (rho : Nat -> Seg16.F) (r2080 : Seg16.relationRow2080 rho) :
    rho 14655 = seg16RIl120 rho * (rho 14654) := by
  unfold Seg16.relationRow2080 at r2080
  rw [seg16RStep119IlLc rho] at r2080
  linear_combination -r2080

theorem seg16RStep119Acc (rho : Nat -> Seg16.F) :
    seg16RIl119 rho = seg16RIl120 rho + (rho 14654) - (rho 14655) := by
  have hstate : seg16RIl119 rho = seg16RIl120 rho + seg16RIlAtom63 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom63
  ring

theorem seg16RStep119Pe (rho : Nat -> Seg16.F) (r2081 : Seg16.relationRow2081 rho) :
    seg16RPe119 rho = seg16RPe120 rho * rho 14183 := by
  unfold Seg16.relationRow2081 at r2081
  unfold seg16RPe119 seg16RPe120
  linear_combination -r2081

theorem seg16RStep119 (rho : Nat -> Seg16.F) (r2079 : Seg16.relationRow2079 rho) (r2080 : Seg16.relationRow2080 rho) (r2081 : Seg16.relationRow2081 rho) :
    seg16RPe119 rho = seg16RPe120 rho * rho 14183 ∧
    seg16RIl119 rho = seg16RIl120 rho + seg16RPe120 rho * (1 - rho 14183) -
      seg16RIl120 rho * (seg16RPe120 rho * (1 - rho 14183)) := by
  constructor
  · exact seg16RStep119Pe rho r2081
  · rw [seg16RStep119Acc rho, seg16RStep119L rho r2079, seg16RStep119IlMul rho r2080, seg16RStep119L rho r2079]

theorem seg16_r_chunk119 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 120 (seg16RPeState rho 120) (seg16RIlState rho 120) := by
  have htail := seg16_r_chunk118 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2079⟩
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨r2080, r2081, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 119 ≤ n → n < 120 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 119 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep119 rho r2079 r2080 r2081
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 119 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
