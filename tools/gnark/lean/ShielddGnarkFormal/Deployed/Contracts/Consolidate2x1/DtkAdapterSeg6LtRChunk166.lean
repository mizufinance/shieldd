import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk165

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep166L (rho : Nat -> Seg6.F) (r1992 : Seg6.relationRow1992 rho) :
    rho 2393 = seg6RPe167 rho * (1 - rho 2056) := by
  unfold Seg6.relationRow1992 at r1992
  unfold seg6RPe167
  linear_combination -r1992

theorem seg6RStep166IlMul (rho : Nat -> Seg6.F) (r1993 : Seg6.relationRow1993 rho) :
    rho 2394 = seg6RIl167 rho * (rho 2393) := by
  unfold Seg6.relationRow1993 at r1993
  rw [seg6RStep166IlLc rho] at r1993
  linear_combination -r1993

theorem seg6RStep166Acc (rho : Nat -> Seg6.F) :
    seg6RIl166 rho = seg6RIl167 rho + (rho 2393) - (rho 2394) := by
  have hstate : seg6RIl166 rho = seg6RIl167 rho + seg6RIlAtom42 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom42
  ring

theorem seg6RStep166Pe (rho : Nat -> Seg6.F) (r1994 : Seg6.relationRow1994 rho) :
    seg6RPe166 rho = seg6RPe167 rho * rho 2056 := by
  unfold Seg6.relationRow1994 at r1994
  unfold seg6RPe166 seg6RPe167
  linear_combination -r1994

theorem seg6RStep166 (rho : Nat -> Seg6.F) (r1992 : Seg6.relationRow1992 rho) (r1993 : Seg6.relationRow1993 rho) (r1994 : Seg6.relationRow1994 rho) :
    seg6RPe166 rho = seg6RPe167 rho * rho 2056 ∧
    seg6RIl166 rho = seg6RIl167 rho + seg6RPe167 rho * (1 - rho 2056) -
      seg6RIl167 rho * (seg6RPe167 rho * (1 - rho 2056)) := by
  constructor
  · exact seg6RStep166Pe rho r1994
  · rw [seg6RStep166Acc rho, seg6RStep166L rho r1992, seg6RStep166IlMul rho r1993, seg6RStep166L rho r1992]

theorem seg6_r_chunk166 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 167 (seg6RPeState rho 167) (seg6RIlState rho 167) := by
  have htail := seg6_r_chunk165 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1992, r1993, r1994, _, _, _, _, _⟩
  have hsteps : ∀ n, 166 ≤ n → n < 167 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 166 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep166 rho r1992 r1993 r1994
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 166 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
