import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep97L (rho : Nat -> Seg45.F) (r2125 : Seg45.relationRow2125 rho) :
    rho 40356 = seg45RPe98 rho * (1 - rho 39817) := by
  unfold Seg45.relationRow2125 at r2125
  unfold seg45RPe98
  linear_combination -r2125

theorem seg45RStep97IlMul (rho : Nat -> Seg45.F) (r2126 : Seg45.relationRow2126 rho) :
    rho 40357 = seg45RIl98 rho * (rho 40356) := by
  unfold Seg45.relationRow2126 at r2126
  rw [seg45RStep97IlLc rho] at r2126
  linear_combination -r2126

theorem seg45RStep97Acc (rho : Nat -> Seg45.F) :
    seg45RIl97 rho = seg45RIl98 rho + (rho 40356) - (rho 40357) := by
  have hstate : seg45RIl97 rho = seg45RIl98 rho + seg45RIlAtom76 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom76
  ring

theorem seg45RStep97Pe (rho : Nat -> Seg45.F) (r2127 : Seg45.relationRow2127 rho) :
    seg45RPe97 rho = seg45RPe98 rho * rho 39817 := by
  unfold Seg45.relationRow2127 at r2127
  unfold seg45RPe97 seg45RPe98
  linear_combination -r2127

theorem seg45RStep97 (rho : Nat -> Seg45.F) (r2125 : Seg45.relationRow2125 rho) (r2126 : Seg45.relationRow2126 rho) (r2127 : Seg45.relationRow2127 rho) :
    seg45RPe97 rho = seg45RPe98 rho * rho 39817 ∧
    seg45RIl97 rho = seg45RIl98 rho + seg45RPe98 rho * (1 - rho 39817) -
      seg45RIl98 rho * (seg45RPe98 rho * (1 - rho 39817)) := by
  constructor
  · exact seg45RStep97Pe rho r2127
  · rw [seg45RStep97Acc rho, seg45RStep97L rho r2125, seg45RStep97IlMul rho r2126, seg45RStep97L rho r2125]

theorem seg45_r_chunk97 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 98 (seg45RPeState rho 98) (seg45RIlState rho 98) := by
  have htail := seg45_r_chunk96 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2125, r2126, r2127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep97 rho r2125 r2126 r2127
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
