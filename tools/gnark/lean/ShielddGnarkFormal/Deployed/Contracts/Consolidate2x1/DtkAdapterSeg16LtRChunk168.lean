import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk167

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep168L (rho : Nat -> Seg16.F) (r1988 : Seg16.relationRow1988 rho) :
    rho 14563 = seg16RPe169 rho * (1 - rho 14232) := by
  unfold Seg16.relationRow1988 at r1988
  unfold seg16RPe169
  linear_combination -r1988

theorem seg16RStep168IlMul (rho : Nat -> Seg16.F) (r1989 : Seg16.relationRow1989 rho) :
    rho 14564 = seg16RIl169 rho * (rho 14563) := by
  unfold Seg16.relationRow1989 at r1989
  rw [seg16RStep168IlLc rho] at r1989
  linear_combination -r1989

theorem seg16RStep168Acc (rho : Nat -> Seg16.F) :
    seg16RIl168 rho = seg16RIl169 rho + (rho 14563) - (rho 14564) := by
  have hstate : seg16RIl168 rho = seg16RIl169 rho + seg16RIlAtom41 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom41
  ring

theorem seg16RStep168Pe (rho : Nat -> Seg16.F) (r1990 : Seg16.relationRow1990 rho) :
    seg16RPe168 rho = seg16RPe169 rho * rho 14232 := by
  unfold Seg16.relationRow1990 at r1990
  unfold seg16RPe168 seg16RPe169
  linear_combination -r1990

theorem seg16RStep168 (rho : Nat -> Seg16.F) (r1988 : Seg16.relationRow1988 rho) (r1989 : Seg16.relationRow1989 rho) (r1990 : Seg16.relationRow1990 rho) :
    seg16RPe168 rho = seg16RPe169 rho * rho 14232 ∧
    seg16RIl168 rho = seg16RIl169 rho + seg16RPe169 rho * (1 - rho 14232) -
      seg16RIl169 rho * (seg16RPe169 rho * (1 - rho 14232)) := by
  constructor
  · exact seg16RStep168Pe rho r1990
  · rw [seg16RStep168Acc rho, seg16RStep168L rho r1988, seg16RStep168IlMul rho r1989, seg16RStep168L rho r1988]

theorem seg16_r_chunk168 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 169 (seg16RPeState rho 169) (seg16RIlState rho 169) := by
  have htail := seg16_r_chunk167 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1988, r1989, r1990, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 168 ≤ n → n < 169 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 168 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep168 rho r1988 r1989 r1990
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 168 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
