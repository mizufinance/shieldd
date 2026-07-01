import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk69

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep70L (rho : Nat -> Seg16.F) (r2178 : Seg16.relationRow2178 rho) :
    rho 14753 = seg16RPe71 rho * (1 - rho 14134) := by
  unfold Seg16.relationRow2178 at r2178
  unfold seg16RPe71
  linear_combination -r2178

theorem seg16RStep70IlMul (rho : Nat -> Seg16.F) (r2179 : Seg16.relationRow2179 rho) :
    rho 14754 = seg16RIl71 rho * (rho 14753) := by
  unfold Seg16.relationRow2179 at r2179
  rw [seg16RStep70IlLc rho] at r2179
  linear_combination -r2179

theorem seg16RStep70Acc (rho : Nat -> Seg16.F) :
    seg16RIl70 rho = seg16RIl71 rho + (rho 14753) - (rho 14754) := by
  have hstate : seg16RIl70 rho = seg16RIl71 rho + seg16RIlAtom90 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom90
  ring

theorem seg16RStep70Pe (rho : Nat -> Seg16.F) (r2180 : Seg16.relationRow2180 rho) :
    seg16RPe70 rho = seg16RPe71 rho * rho 14134 := by
  unfold Seg16.relationRow2180 at r2180
  unfold seg16RPe70 seg16RPe71
  linear_combination -r2180

theorem seg16RStep70 (rho : Nat -> Seg16.F) (r2178 : Seg16.relationRow2178 rho) (r2179 : Seg16.relationRow2179 rho) (r2180 : Seg16.relationRow2180 rho) :
    seg16RPe70 rho = seg16RPe71 rho * rho 14134 ∧
    seg16RIl70 rho = seg16RIl71 rho + seg16RPe71 rho * (1 - rho 14134) -
      seg16RIl71 rho * (seg16RPe71 rho * (1 - rho 14134)) := by
  constructor
  · exact seg16RStep70Pe rho r2180
  · rw [seg16RStep70Acc rho, seg16RStep70L rho r2178, seg16RStep70IlMul rho r2179, seg16RStep70L rho r2178]

theorem seg16_r_chunk70 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 71 (seg16RPeState rho 71) (seg16RIlState rho 71) := by
  have htail := seg16_r_chunk69 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2178, r2179, r2180, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 70 ≤ n → n < 71 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 70 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep70 rho r2178 r2179 r2180
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 70 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
