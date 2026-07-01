import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk112

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep113L (rho : Nat -> Seg16.F) (r2089 : Seg16.relationRow2089 rho) :
    rho 14664 = seg16RPe114 rho * (1 - rho 14177) := by
  unfold Seg16.relationRow2089 at r2089
  unfold seg16RPe114
  linear_combination -r2089

theorem seg16RStep113IlMul (rho : Nat -> Seg16.F) (r2090 : Seg16.relationRow2090 rho) :
    rho 14665 = seg16RIl114 rho * (rho 14664) := by
  unfold Seg16.relationRow2090 at r2090
  rw [seg16RStep113IlLc rho] at r2090
  linear_combination -r2090

theorem seg16RStep113Acc (rho : Nat -> Seg16.F) :
    seg16RIl113 rho = seg16RIl114 rho + (rho 14664) - (rho 14665) := by
  have hstate : seg16RIl113 rho = seg16RIl114 rho + seg16RIlAtom65 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom65
  ring

theorem seg16RStep113Pe (rho : Nat -> Seg16.F) (r2091 : Seg16.relationRow2091 rho) :
    seg16RPe113 rho = seg16RPe114 rho * rho 14177 := by
  unfold Seg16.relationRow2091 at r2091
  unfold seg16RPe113 seg16RPe114
  linear_combination -r2091

theorem seg16RStep113 (rho : Nat -> Seg16.F) (r2089 : Seg16.relationRow2089 rho) (r2090 : Seg16.relationRow2090 rho) (r2091 : Seg16.relationRow2091 rho) :
    seg16RPe113 rho = seg16RPe114 rho * rho 14177 ∧
    seg16RIl113 rho = seg16RIl114 rho + seg16RPe114 rho * (1 - rho 14177) -
      seg16RIl114 rho * (seg16RPe114 rho * (1 - rho 14177)) := by
  constructor
  · exact seg16RStep113Pe rho r2091
  · rw [seg16RStep113Acc rho, seg16RStep113L rho r2089, seg16RStep113IlMul rho r2090, seg16RStep113L rho r2089]

theorem seg16_r_chunk113 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 114 (seg16RPeState rho 114) (seg16RIlState rho 114) := by
  have htail := seg16_r_chunk112 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, r2089, r2090, r2091, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 113 ≤ n → n < 114 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 113 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep113 rho r2089 r2090 r2091
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 113 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
