import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk115

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep116L (rho : Nat -> Seg16.F) (r2084 : Seg16.relationRow2084 rho) :
    rho 14659 = seg16RPe117 rho * (1 - rho 14180) := by
  unfold Seg16.relationRow2084 at r2084
  unfold seg16RPe117
  linear_combination -r2084

theorem seg16RStep116IlMul (rho : Nat -> Seg16.F) (r2085 : Seg16.relationRow2085 rho) :
    rho 14660 = seg16RIl117 rho * (rho 14659) := by
  unfold Seg16.relationRow2085 at r2085
  rw [seg16RStep116IlLc rho] at r2085
  linear_combination -r2085

theorem seg16RStep116Acc (rho : Nat -> Seg16.F) :
    seg16RIl116 rho = seg16RIl117 rho + (rho 14659) - (rho 14660) := by
  have hstate : seg16RIl116 rho = seg16RIl117 rho + seg16RIlAtom64 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom64
  ring

theorem seg16RStep116Pe (rho : Nat -> Seg16.F) (r2086 : Seg16.relationRow2086 rho) :
    seg16RPe116 rho = seg16RPe117 rho * rho 14180 := by
  unfold Seg16.relationRow2086 at r2086
  unfold seg16RPe116 seg16RPe117
  linear_combination -r2086

theorem seg16RStep116 (rho : Nat -> Seg16.F) (r2084 : Seg16.relationRow2084 rho) (r2085 : Seg16.relationRow2085 rho) (r2086 : Seg16.relationRow2086 rho) :
    seg16RPe116 rho = seg16RPe117 rho * rho 14180 ∧
    seg16RIl116 rho = seg16RIl117 rho + seg16RPe117 rho * (1 - rho 14180) -
      seg16RIl117 rho * (seg16RPe117 rho * (1 - rho 14180)) := by
  constructor
  · exact seg16RStep116Pe rho r2086
  · rw [seg16RStep116Acc rho, seg16RStep116L rho r2084, seg16RStep116IlMul rho r2085, seg16RStep116L rho r2084]

theorem seg16_r_chunk116 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 117 (seg16RPeState rho 117) (seg16RIlState rho 117) := by
  have htail := seg16_r_chunk115 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, r2084, r2085, r2086, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 116 ≤ n → n < 117 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 116 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep116 rho r2084 r2085 r2086
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 116 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
