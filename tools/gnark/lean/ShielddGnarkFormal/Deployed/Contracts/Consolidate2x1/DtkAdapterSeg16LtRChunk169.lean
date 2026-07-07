import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk168

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep169L (rho : Nat -> Seg16.F) (r1985 : Seg16.relationRow1985 rho) :
    rho 14560 = seg16RPe170 rho * (1 - rho 14233) := by
  unfold Seg16.relationRow1985 at r1985
  unfold seg16RPe170
  linear_combination -r1985

theorem seg16RStep169IlMul (rho : Nat -> Seg16.F) (r1986 : Seg16.relationRow1986 rho) :
    rho 14561 = seg16RIl170 rho * (rho 14560) := by
  unfold Seg16.relationRow1986 at r1986
  rw [seg16RStep169IlLc rho] at r1986
  linear_combination -r1986

theorem seg16RStep169Acc (rho : Nat -> Seg16.F) :
    seg16RIl169 rho = seg16RIl170 rho + (rho 14560) - (rho 14561) := by
  have hstate : seg16RIl169 rho = seg16RIl170 rho + seg16RIlAtom40 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom40
  ring

theorem seg16RStep169Pe (rho : Nat -> Seg16.F) (r1987 : Seg16.relationRow1987 rho) :
    seg16RPe169 rho = seg16RPe170 rho * rho 14233 := by
  unfold Seg16.relationRow1987 at r1987
  unfold seg16RPe169 seg16RPe170
  linear_combination -r1987

theorem seg16RStep169 (rho : Nat -> Seg16.F) (r1985 : Seg16.relationRow1985 rho) (r1986 : Seg16.relationRow1986 rho) (r1987 : Seg16.relationRow1987 rho) :
    seg16RPe169 rho = seg16RPe170 rho * rho 14233 ∧
    seg16RIl169 rho = seg16RIl170 rho + seg16RPe170 rho * (1 - rho 14233) -
      seg16RIl170 rho * (seg16RPe170 rho * (1 - rho 14233)) := by
  constructor
  · exact seg16RStep169Pe rho r1987
  · rw [seg16RStep169Acc rho, seg16RStep169L rho r1985, seg16RStep169IlMul rho r1986, seg16RStep169L rho r1985]

theorem seg16_r_chunk169 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 170 (seg16RPeState rho 170) (seg16RIlState rho 170) := by
  have htail := seg16_r_chunk168 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1985, r1986, r1987, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 169 ≤ n → n < 170 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 169 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep169 rho r1985 r1986 r1987
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 169 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
