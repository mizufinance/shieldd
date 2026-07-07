import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk167

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep168L (rho : Nat -> Seg34.F) (r1988 : Seg34.relationRow1988 rho) :
    rho 33263 = seg34RPe169 rho * (1 - rho 32932) := by
  unfold Seg34.relationRow1988 at r1988
  unfold seg34RPe169
  linear_combination -r1988

theorem seg34RStep168IlMul (rho : Nat -> Seg34.F) (r1989 : Seg34.relationRow1989 rho) :
    rho 33264 = seg34RIl169 rho * (rho 33263) := by
  unfold Seg34.relationRow1989 at r1989
  rw [seg34RStep168IlLc rho] at r1989
  linear_combination -r1989

theorem seg34RStep168Acc (rho : Nat -> Seg34.F) :
    seg34RIl168 rho = seg34RIl169 rho + (rho 33263) - (rho 33264) := by
  have hstate : seg34RIl168 rho = seg34RIl169 rho + seg34RIlAtom41 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom41
  ring

theorem seg34RStep168Pe (rho : Nat -> Seg34.F) (r1990 : Seg34.relationRow1990 rho) :
    seg34RPe168 rho = seg34RPe169 rho * rho 32932 := by
  unfold Seg34.relationRow1990 at r1990
  unfold seg34RPe168 seg34RPe169
  linear_combination -r1990

theorem seg34RStep168 (rho : Nat -> Seg34.F) (r1988 : Seg34.relationRow1988 rho) (r1989 : Seg34.relationRow1989 rho) (r1990 : Seg34.relationRow1990 rho) :
    seg34RPe168 rho = seg34RPe169 rho * rho 32932 ∧
    seg34RIl168 rho = seg34RIl169 rho + seg34RPe169 rho * (1 - rho 32932) -
      seg34RIl169 rho * (seg34RPe169 rho * (1 - rho 32932)) := by
  constructor
  · exact seg34RStep168Pe rho r1990
  · rw [seg34RStep168Acc rho, seg34RStep168L rho r1988, seg34RStep168IlMul rho r1989, seg34RStep168L rho r1988]

theorem seg34_r_chunk168 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 169 (seg34RPeState rho 169) (seg34RIlState rho 169) := by
  have htail := seg34_r_chunk167 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 168 ≤ n → n < 169 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 168 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep168 rho r1988 r1989 r1990
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 168 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
