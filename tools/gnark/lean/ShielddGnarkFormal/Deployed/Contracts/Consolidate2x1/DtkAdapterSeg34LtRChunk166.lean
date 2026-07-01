import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk165

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep166L (rho : Nat -> Seg34.F) (r1992 : Seg34.relationRow1992 rho) :
    rho 33267 = seg34RPe167 rho * (1 - rho 32930) := by
  unfold Seg34.relationRow1992 at r1992
  unfold seg34RPe167
  linear_combination -r1992

theorem seg34RStep166IlMul (rho : Nat -> Seg34.F) (r1993 : Seg34.relationRow1993 rho) :
    rho 33268 = seg34RIl167 rho * (rho 33267) := by
  unfold Seg34.relationRow1993 at r1993
  rw [seg34RStep166IlLc rho] at r1993
  linear_combination -r1993

theorem seg34RStep166Acc (rho : Nat -> Seg34.F) :
    seg34RIl166 rho = seg34RIl167 rho + (rho 33267) - (rho 33268) := by
  have hstate : seg34RIl166 rho = seg34RIl167 rho + seg34RIlAtom42 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom42
  ring

theorem seg34RStep166Pe (rho : Nat -> Seg34.F) (r1994 : Seg34.relationRow1994 rho) :
    seg34RPe166 rho = seg34RPe167 rho * rho 32930 := by
  unfold Seg34.relationRow1994 at r1994
  unfold seg34RPe166 seg34RPe167
  linear_combination -r1994

theorem seg34RStep166 (rho : Nat -> Seg34.F) (r1992 : Seg34.relationRow1992 rho) (r1993 : Seg34.relationRow1993 rho) (r1994 : Seg34.relationRow1994 rho) :
    seg34RPe166 rho = seg34RPe167 rho * rho 32930 ∧
    seg34RIl166 rho = seg34RIl167 rho + seg34RPe167 rho * (1 - rho 32930) -
      seg34RIl167 rho * (seg34RPe167 rho * (1 - rho 32930)) := by
  constructor
  · exact seg34RStep166Pe rho r1994
  · rw [seg34RStep166Acc rho, seg34RStep166L rho r1992, seg34RStep166IlMul rho r1993, seg34RStep166L rho r1992]

theorem seg34_r_chunk166 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 167 (seg34RPeState rho 167) (seg34RIlState rho 167) := by
  have htail := seg34_r_chunk165 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1992, r1993, r1994, _, _, _, _, _⟩
  have hsteps : ∀ n, 166 ≤ n → n < 167 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 166 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep166 rho r1992 r1993 r1994
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 166 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
