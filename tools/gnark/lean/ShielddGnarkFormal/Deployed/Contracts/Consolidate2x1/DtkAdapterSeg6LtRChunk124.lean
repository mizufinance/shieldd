import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk123

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep124L (rho : Nat -> Seg6.F) (r2070 : Seg6.relationRow2070 rho) :
    rho 2471 = seg6RPe125 rho * (1 - rho 2014) := by
  unfold Seg6.relationRow2070 at r2070
  unfold seg6RPe125
  linear_combination -r2070

theorem seg6RStep124IlMul (rho : Nat -> Seg6.F) (r2071 : Seg6.relationRow2071 rho) :
    rho 2472 = seg6RIl125 rho * (rho 2471) := by
  unfold Seg6.relationRow2071 at r2071
  rw [seg6RStep124IlLc rho] at r2071
  linear_combination -r2071

theorem seg6RStep124Acc (rho : Nat -> Seg6.F) :
    seg6RIl124 rho = seg6RIl125 rho + (rho 2471) - (rho 2472) := by
  have hstate : seg6RIl124 rho = seg6RIl125 rho + seg6RIlAtom61 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom61
  ring

theorem seg6RStep124Pe (rho : Nat -> Seg6.F) (r2072 : Seg6.relationRow2072 rho) :
    seg6RPe124 rho = seg6RPe125 rho * rho 2014 := by
  unfold Seg6.relationRow2072 at r2072
  unfold seg6RPe124 seg6RPe125
  linear_combination -r2072

theorem seg6RStep124 (rho : Nat -> Seg6.F) (r2070 : Seg6.relationRow2070 rho) (r2071 : Seg6.relationRow2071 rho) (r2072 : Seg6.relationRow2072 rho) :
    seg6RPe124 rho = seg6RPe125 rho * rho 2014 ∧
    seg6RIl124 rho = seg6RIl125 rho + seg6RPe125 rho * (1 - rho 2014) -
      seg6RIl125 rho * (seg6RPe125 rho * (1 - rho 2014)) := by
  constructor
  · exact seg6RStep124Pe rho r2072
  · rw [seg6RStep124Acc rho, seg6RStep124L rho r2070, seg6RStep124IlMul rho r2071, seg6RStep124L rho r2070]

theorem seg6_r_chunk124 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 125 (seg6RPeState rho 125) (seg6RIlState rho 125) := by
  have htail := seg6_r_chunk123 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2070, r2071, r2072, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 124 ≤ n → n < 125 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 124 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep124 rho r2070 r2071 r2072
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 124 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
