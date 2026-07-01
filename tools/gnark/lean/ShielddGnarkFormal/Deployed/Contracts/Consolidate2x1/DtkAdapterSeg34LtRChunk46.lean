import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk45

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep46L (rho : Nat -> Seg34.F) (r2234 : Seg34.relationRow2234 rho) :
    rho 33509 = seg34RPe47 rho * (1 - rho 32810) := by
  unfold Seg34.relationRow2234 at r2234
  unfold seg34RPe47
  linear_combination -r2234

theorem seg34RStep46IlMul (rho : Nat -> Seg34.F) (r2235 : Seg34.relationRow2235 rho) :
    rho 33510 = seg34RIl47 rho * (rho 33509) := by
  unfold Seg34.relationRow2235 at r2235
  rw [seg34RStep46IlLc rho] at r2235
  linear_combination -r2235

theorem seg34RStep46Acc (rho : Nat -> Seg34.F) :
    seg34RIl46 rho = seg34RIl47 rho + (rho 33509) - (rho 33510) := by
  have hstate : seg34RIl46 rho = seg34RIl47 rho + seg34RIlAtom107 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom107
  ring

theorem seg34RStep46Pe (rho : Nat -> Seg34.F) (r2236 : Seg34.relationRow2236 rho) :
    seg34RPe46 rho = seg34RPe47 rho * rho 32810 := by
  unfold Seg34.relationRow2236 at r2236
  unfold seg34RPe46 seg34RPe47
  linear_combination -r2236

theorem seg34RStep46 (rho : Nat -> Seg34.F) (r2234 : Seg34.relationRow2234 rho) (r2235 : Seg34.relationRow2235 rho) (r2236 : Seg34.relationRow2236 rho) :
    seg34RPe46 rho = seg34RPe47 rho * rho 32810 ∧
    seg34RIl46 rho = seg34RIl47 rho + seg34RPe47 rho * (1 - rho 32810) -
      seg34RIl47 rho * (seg34RPe47 rho * (1 - rho 32810)) := by
  constructor
  · exact seg34RStep46Pe rho r2236
  · rw [seg34RStep46Acc rho, seg34RStep46L rho r2234, seg34RStep46IlMul rho r2235, seg34RStep46L rho r2234]

theorem seg34_r_chunk46 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 47 (seg34RPeState rho 47) (seg34RIlState rho 47) := by
  have htail := seg34_r_chunk45 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2234, r2235, r2236, _, _, _⟩
  have hsteps : ∀ n, 46 ≤ n → n < 47 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 46 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep46 rho r2234 r2235 r2236
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 46 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
