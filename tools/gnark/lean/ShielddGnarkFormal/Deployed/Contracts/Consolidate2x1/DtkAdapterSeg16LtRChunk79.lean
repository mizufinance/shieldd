import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk78

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep79L (rho : Nat -> Seg16.F) (r2161 : Seg16.relationRow2161 rho) :
    rho 14736 = seg16RPe80 rho * (1 - rho 14143) := by
  unfold Seg16.relationRow2161 at r2161
  unfold seg16RPe80
  linear_combination -r2161

theorem seg16RStep79IlMul (rho : Nat -> Seg16.F) (r2162 : Seg16.relationRow2162 rho) :
    rho 14737 = seg16RIl80 rho * (rho 14736) := by
  unfold Seg16.relationRow2162 at r2162
  rw [seg16RStep79IlLc rho] at r2162
  linear_combination -r2162

theorem seg16RStep79Acc (rho : Nat -> Seg16.F) :
    seg16RIl79 rho = seg16RIl80 rho + (rho 14736) - (rho 14737) := by
  have hstate : seg16RIl79 rho = seg16RIl80 rho + seg16RIlAtom86 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom86
  ring

theorem seg16RStep79Pe (rho : Nat -> Seg16.F) (r2163 : Seg16.relationRow2163 rho) :
    seg16RPe79 rho = seg16RPe80 rho * rho 14143 := by
  unfold Seg16.relationRow2163 at r2163
  unfold seg16RPe79 seg16RPe80
  linear_combination -r2163

theorem seg16RStep79 (rho : Nat -> Seg16.F) (r2161 : Seg16.relationRow2161 rho) (r2162 : Seg16.relationRow2162 rho) (r2163 : Seg16.relationRow2163 rho) :
    seg16RPe79 rho = seg16RPe80 rho * rho 14143 ∧
    seg16RIl79 rho = seg16RIl80 rho + seg16RPe80 rho * (1 - rho 14143) -
      seg16RIl80 rho * (seg16RPe80 rho * (1 - rho 14143)) := by
  constructor
  · exact seg16RStep79Pe rho r2163
  · rw [seg16RStep79Acc rho, seg16RStep79L rho r2161, seg16RStep79IlMul rho r2162, seg16RStep79L rho r2161]

theorem seg16_r_chunk79 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 80 (seg16RPeState rho 80) (seg16RIlState rho 80) := by
  have htail := seg16_r_chunk78 rho h k hq4
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
  rcases p27 with ⟨_, r2161, r2162, r2163, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 79 ≤ n → n < 80 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 79 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep79 rho r2161 r2162 r2163
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 79 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
