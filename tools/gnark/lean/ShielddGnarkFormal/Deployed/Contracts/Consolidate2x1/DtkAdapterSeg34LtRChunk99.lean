import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep99L (rho : Nat -> Seg34.F) (r2119 : Seg34.relationRow2119 rho) :
    rho 33394 = seg34RPe100 rho * (1 - rho 32863) := by
  unfold Seg34.relationRow2119 at r2119
  unfold seg34RPe100
  linear_combination -r2119

theorem seg34RStep99IlMul (rho : Nat -> Seg34.F) (r2120 : Seg34.relationRow2120 rho) :
    rho 33395 = seg34RIl100 rho * (rho 33394) := by
  unfold Seg34.relationRow2120 at r2120
  rw [seg34RStep99IlLc rho] at r2120
  linear_combination -r2120

theorem seg34RStep99Acc (rho : Nat -> Seg34.F) :
    seg34RIl99 rho = seg34RIl100 rho + (rho 33394) - (rho 33395) := by
  have hstate : seg34RIl99 rho = seg34RIl100 rho + seg34RIlAtom74 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom74
  ring

theorem seg34RStep99Pe (rho : Nat -> Seg34.F) (r2121 : Seg34.relationRow2121 rho) :
    seg34RPe99 rho = seg34RPe100 rho * rho 32863 := by
  unfold Seg34.relationRow2121 at r2121
  unfold seg34RPe99 seg34RPe100
  linear_combination -r2121

theorem seg34RStep99 (rho : Nat -> Seg34.F) (r2119 : Seg34.relationRow2119 rho) (r2120 : Seg34.relationRow2120 rho) (r2121 : Seg34.relationRow2121 rho) :
    seg34RPe99 rho = seg34RPe100 rho * rho 32863 ∧
    seg34RIl99 rho = seg34RIl100 rho + seg34RPe100 rho * (1 - rho 32863) -
      seg34RIl100 rho * (seg34RPe100 rho * (1 - rho 32863)) := by
  constructor
  · exact seg34RStep99Pe rho r2121
  · rw [seg34RStep99Acc rho, seg34RStep99L rho r2119, seg34RStep99IlMul rho r2120, seg34RStep99L rho r2119]

theorem seg34_r_chunk99 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 100 (seg34RPeState rho 100) (seg34RIlState rho 100) := by
  have htail := seg34_r_chunk98 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2119, r2120, r2121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep99 rho r2119 r2120 r2121
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
