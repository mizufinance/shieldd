import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk98

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep99L (rho : Nat -> Seg16.F) (r2119 : Seg16.relationRow2119 rho) :
    rho 14694 = seg16RPe100 rho * (1 - rho 14163) := by
  unfold Seg16.relationRow2119 at r2119
  unfold seg16RPe100
  linear_combination -r2119

theorem seg16RStep99IlMul (rho : Nat -> Seg16.F) (r2120 : Seg16.relationRow2120 rho) :
    rho 14695 = seg16RIl100 rho * (rho 14694) := by
  unfold Seg16.relationRow2120 at r2120
  rw [seg16RStep99IlLc rho] at r2120
  linear_combination -r2120

theorem seg16RStep99Acc (rho : Nat -> Seg16.F) :
    seg16RIl99 rho = seg16RIl100 rho + (rho 14694) - (rho 14695) := by
  have hstate : seg16RIl99 rho = seg16RIl100 rho + seg16RIlAtom74 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom74
  ring

theorem seg16RStep99Pe (rho : Nat -> Seg16.F) (r2121 : Seg16.relationRow2121 rho) :
    seg16RPe99 rho = seg16RPe100 rho * rho 14163 := by
  unfold Seg16.relationRow2121 at r2121
  unfold seg16RPe99 seg16RPe100
  linear_combination -r2121

theorem seg16RStep99 (rho : Nat -> Seg16.F) (r2119 : Seg16.relationRow2119 rho) (r2120 : Seg16.relationRow2120 rho) (r2121 : Seg16.relationRow2121 rho) :
    seg16RPe99 rho = seg16RPe100 rho * rho 14163 ∧
    seg16RIl99 rho = seg16RIl100 rho + seg16RPe100 rho * (1 - rho 14163) -
      seg16RIl100 rho * (seg16RPe100 rho * (1 - rho 14163)) := by
  constructor
  · exact seg16RStep99Pe rho r2121
  · rw [seg16RStep99Acc rho, seg16RStep99L rho r2119, seg16RStep99IlMul rho r2120, seg16RStep99L rho r2119]

theorem seg16_r_chunk99 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 100 (seg16RPeState rho 100) (seg16RIlState rho 100) := by
  have htail := seg16_r_chunk98 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2119, r2120, r2121, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 99 ≤ n → n < 100 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 99 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep99 rho r2119 r2120 r2121
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 99 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
