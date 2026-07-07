import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep46L (rho : Nat -> Seg16.F) (r2234 : Seg16.relationRow2234 rho) :
    rho 14809 = seg16RPe47 rho * (1 - rho 14110) := by
  unfold Seg16.relationRow2234 at r2234
  unfold seg16RPe47
  linear_combination -r2234

theorem seg16RStep46IlMul (rho : Nat -> Seg16.F) (r2235 : Seg16.relationRow2235 rho) :
    rho 14810 = seg16RIl47 rho * (rho 14809) := by
  unfold Seg16.relationRow2235 at r2235
  rw [seg16RStep46IlLc rho] at r2235
  linear_combination -r2235

theorem seg16RStep46Acc (rho : Nat -> Seg16.F) :
    seg16RIl46 rho = seg16RIl47 rho + (rho 14809) - (rho 14810) := by
  have hstate : seg16RIl46 rho = seg16RIl47 rho + seg16RIlAtom107 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom107
  ring

theorem seg16RStep46Pe (rho : Nat -> Seg16.F) (r2236 : Seg16.relationRow2236 rho) :
    seg16RPe46 rho = seg16RPe47 rho * rho 14110 := by
  unfold Seg16.relationRow2236 at r2236
  unfold seg16RPe46 seg16RPe47
  linear_combination -r2236

theorem seg16RStep46 (rho : Nat -> Seg16.F) (r2234 : Seg16.relationRow2234 rho) (r2235 : Seg16.relationRow2235 rho) (r2236 : Seg16.relationRow2236 rho) :
    seg16RPe46 rho = seg16RPe47 rho * rho 14110 ∧
    seg16RIl46 rho = seg16RIl47 rho + seg16RPe47 rho * (1 - rho 14110) -
      seg16RIl47 rho * (seg16RPe47 rho * (1 - rho 14110)) := by
  constructor
  · exact seg16RStep46Pe rho r2236
  · rw [seg16RStep46Acc rho, seg16RStep46L rho r2234, seg16RStep46IlMul rho r2235, seg16RStep46L rho r2234]

theorem seg16_r_chunk46 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 47 (seg16RPeState rho 47) (seg16RIlState rho 47) := by
  have htail := seg16_r_chunk45 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2234, r2235, r2236, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep46 rho r2234 r2235 r2236
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
