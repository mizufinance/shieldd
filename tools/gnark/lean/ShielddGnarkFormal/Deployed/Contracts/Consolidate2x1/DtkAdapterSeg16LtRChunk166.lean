import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk165

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep166L (rho : Nat -> Seg16.F) (r1992 : Seg16.relationRow1992 rho) :
    rho 14567 = seg16RPe167 rho * (1 - rho 14230) := by
  unfold Seg16.relationRow1992 at r1992
  unfold seg16RPe167
  linear_combination -r1992

theorem seg16RStep166IlMul (rho : Nat -> Seg16.F) (r1993 : Seg16.relationRow1993 rho) :
    rho 14568 = seg16RIl167 rho * (rho 14567) := by
  unfold Seg16.relationRow1993 at r1993
  rw [seg16RStep166IlLc rho] at r1993
  linear_combination -r1993

theorem seg16RStep166Acc (rho : Nat -> Seg16.F) :
    seg16RIl166 rho = seg16RIl167 rho + (rho 14567) - (rho 14568) := by
  have hstate : seg16RIl166 rho = seg16RIl167 rho + seg16RIlAtom42 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom42
  ring

theorem seg16RStep166Pe (rho : Nat -> Seg16.F) (r1994 : Seg16.relationRow1994 rho) :
    seg16RPe166 rho = seg16RPe167 rho * rho 14230 := by
  unfold Seg16.relationRow1994 at r1994
  unfold seg16RPe166 seg16RPe167
  linear_combination -r1994

theorem seg16RStep166 (rho : Nat -> Seg16.F) (r1992 : Seg16.relationRow1992 rho) (r1993 : Seg16.relationRow1993 rho) (r1994 : Seg16.relationRow1994 rho) :
    seg16RPe166 rho = seg16RPe167 rho * rho 14230 ∧
    seg16RIl166 rho = seg16RIl167 rho + seg16RPe167 rho * (1 - rho 14230) -
      seg16RIl167 rho * (seg16RPe167 rho * (1 - rho 14230)) := by
  constructor
  · exact seg16RStep166Pe rho r1994
  · rw [seg16RStep166Acc rho, seg16RStep166L rho r1992, seg16RStep166IlMul rho r1993, seg16RStep166L rho r1992]

theorem seg16_r_chunk166 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 167 (seg16RPeState rho 167) (seg16RIlState rho 167) := by
  have htail := seg16_r_chunk165 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1992, r1993, r1994, _, _, _, _, _⟩
  have hsteps : ∀ n, 166 ≤ n → n < 167 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 166 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep166 rho r1992 r1993 r1994
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 166 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
