import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep42L (rho : Nat -> Seg34.F) (r2244 : Seg34.relationRow2244 rho) :
    rho 33519 = seg34RPe43 rho * (1 - rho 32806) := by
  unfold Seg34.relationRow2244 at r2244
  unfold seg34RPe43
  linear_combination -r2244

theorem seg34RStep42IlMul (rho : Nat -> Seg34.F) (r2245 : Seg34.relationRow2245 rho) :
    rho 33520 = seg34RIl43 rho * (rho 33519) := by
  unfold Seg34.relationRow2245 at r2245
  rw [seg34RStep42IlLc rho] at r2245
  linear_combination -r2245

theorem seg34RStep42Acc (rho : Nat -> Seg34.F) :
    seg34RIl42 rho = seg34RIl43 rho + (rho 33519) - (rho 33520) := by
  have hstate : seg34RIl42 rho = seg34RIl43 rho + seg34RIlAtom110 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom110
  ring

theorem seg34RStep42Pe (rho : Nat -> Seg34.F) (r2246 : Seg34.relationRow2246 rho) :
    seg34RPe42 rho = seg34RPe43 rho * rho 32806 := by
  unfold Seg34.relationRow2246 at r2246
  unfold seg34RPe42 seg34RPe43
  linear_combination -r2246

theorem seg34RStep42 (rho : Nat -> Seg34.F) (r2244 : Seg34.relationRow2244 rho) (r2245 : Seg34.relationRow2245 rho) (r2246 : Seg34.relationRow2246 rho) :
    seg34RPe42 rho = seg34RPe43 rho * rho 32806 ∧
    seg34RIl42 rho = seg34RIl43 rho + seg34RPe43 rho * (1 - rho 32806) -
      seg34RIl43 rho * (seg34RPe43 rho * (1 - rho 32806)) := by
  constructor
  · exact seg34RStep42Pe rho r2246
  · rw [seg34RStep42Acc rho, seg34RStep42L rho r2244, seg34RStep42IlMul rho r2245, seg34RStep42L rho r2244]

theorem seg34_r_chunk42 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 43 (seg34RPeState rho 43) (seg34RIlState rho 43) := by
  have htail := seg34_r_chunk41 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, r2244, r2245, r2246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep42 rho r2244 r2245 r2246
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
