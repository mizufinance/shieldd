import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk142

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep143L (rho : Nat -> Seg16.F) (r2039 : Seg16.relationRow2039 rho) :
    rho 14614 = seg16RPe144 rho * (1 - rho 14207) := by
  unfold Seg16.relationRow2039 at r2039
  unfold seg16RPe144
  linear_combination -r2039

theorem seg16RStep143IlMul (rho : Nat -> Seg16.F) (r2040 : Seg16.relationRow2040 rho) :
    rho 14615 = seg16RIl144 rho * (rho 14614) := by
  unfold Seg16.relationRow2040 at r2040
  rw [seg16RStep143IlLc rho] at r2040
  linear_combination -r2040

theorem seg16RStep143Acc (rho : Nat -> Seg16.F) :
    seg16RIl143 rho = seg16RIl144 rho + (rho 14614) - (rho 14615) := by
  have hstate : seg16RIl143 rho = seg16RIl144 rho + seg16RIlAtom55 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom55
  ring

theorem seg16RStep143Pe (rho : Nat -> Seg16.F) (r2041 : Seg16.relationRow2041 rho) :
    seg16RPe143 rho = seg16RPe144 rho * rho 14207 := by
  unfold Seg16.relationRow2041 at r2041
  unfold seg16RPe143 seg16RPe144
  linear_combination -r2041

theorem seg16RStep143 (rho : Nat -> Seg16.F) (r2039 : Seg16.relationRow2039 rho) (r2040 : Seg16.relationRow2040 rho) (r2041 : Seg16.relationRow2041 rho) :
    seg16RPe143 rho = seg16RPe144 rho * rho 14207 ∧
    seg16RIl143 rho = seg16RIl144 rho + seg16RPe144 rho * (1 - rho 14207) -
      seg16RIl144 rho * (seg16RPe144 rho * (1 - rho 14207)) := by
  constructor
  · exact seg16RStep143Pe rho r2041
  · rw [seg16RStep143Acc rho, seg16RStep143L rho r2039, seg16RStep143IlMul rho r2040, seg16RStep143L rho r2039]

theorem seg16_r_chunk143 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 144 (seg16RPeState rho 144) (seg16RIlState rho 144) := by
  have htail := seg16_r_chunk142 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2039, r2040, r2041, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 143 ≤ n → n < 144 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 143 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep143 rho r2039 r2040 r2041
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 143 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
