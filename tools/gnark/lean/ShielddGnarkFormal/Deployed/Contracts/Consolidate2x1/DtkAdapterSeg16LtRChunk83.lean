import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk82

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep83L (rho : Nat -> Seg16.F) (r2153 : Seg16.relationRow2153 rho) :
    rho 14728 = seg16RPe84 rho * (1 - rho 14147) := by
  unfold Seg16.relationRow2153 at r2153
  unfold seg16RPe84
  linear_combination -r2153

theorem seg16RStep83IlMul (rho : Nat -> Seg16.F) (r2154 : Seg16.relationRow2154 rho) :
    rho 14729 = seg16RIl84 rho * (rho 14728) := by
  unfold Seg16.relationRow2154 at r2154
  rw [seg16RStep83IlLc rho] at r2154
  linear_combination -r2154

theorem seg16RStep83Acc (rho : Nat -> Seg16.F) :
    seg16RIl83 rho = seg16RIl84 rho + (rho 14728) - (rho 14729) := by
  have hstate : seg16RIl83 rho = seg16RIl84 rho + seg16RIlAtom83 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom83
  ring

theorem seg16RStep83Pe (rho : Nat -> Seg16.F) (r2155 : Seg16.relationRow2155 rho) :
    seg16RPe83 rho = seg16RPe84 rho * rho 14147 := by
  unfold Seg16.relationRow2155 at r2155
  unfold seg16RPe83 seg16RPe84
  linear_combination -r2155

theorem seg16RStep83 (rho : Nat -> Seg16.F) (r2153 : Seg16.relationRow2153 rho) (r2154 : Seg16.relationRow2154 rho) (r2155 : Seg16.relationRow2155 rho) :
    seg16RPe83 rho = seg16RPe84 rho * rho 14147 ∧
    seg16RIl83 rho = seg16RIl84 rho + seg16RPe84 rho * (1 - rho 14147) -
      seg16RIl84 rho * (seg16RPe84 rho * (1 - rho 14147)) := by
  constructor
  · exact seg16RStep83Pe rho r2155
  · rw [seg16RStep83Acc rho, seg16RStep83L rho r2153, seg16RStep83IlMul rho r2154, seg16RStep83L rho r2153]

theorem seg16_r_chunk83 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 84 (seg16RPeState rho 84) (seg16RIlState rho 84) := by
  have htail := seg16_r_chunk82 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2153, r2154, r2155, _, _, _, _⟩
  have hsteps : ∀ n, 83 ≤ n → n < 84 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 83 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep83 rho r2153 r2154 r2155
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 83 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
