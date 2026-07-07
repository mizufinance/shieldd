import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk102

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep103L (rho : Nat -> Seg16.F) (r2111 : Seg16.relationRow2111 rho) :
    rho 14686 = seg16RPe104 rho * (1 - rho 14167) := by
  unfold Seg16.relationRow2111 at r2111
  unfold seg16RPe104
  linear_combination -r2111

theorem seg16RStep103IlMul (rho : Nat -> Seg16.F) (r2112 : Seg16.relationRow2112 rho) :
    rho 14687 = seg16RIl104 rho * (rho 14686) := by
  unfold Seg16.relationRow2112 at r2112
  rw [seg16RStep103IlLc rho] at r2112
  linear_combination -r2112

theorem seg16RStep103Acc (rho : Nat -> Seg16.F) :
    seg16RIl103 rho = seg16RIl104 rho + (rho 14686) - (rho 14687) := by
  have hstate : seg16RIl103 rho = seg16RIl104 rho + seg16RIlAtom72 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom72
  ring

theorem seg16RStep103Pe (rho : Nat -> Seg16.F) (r2113 : Seg16.relationRow2113 rho) :
    seg16RPe103 rho = seg16RPe104 rho * rho 14167 := by
  unfold Seg16.relationRow2113 at r2113
  unfold seg16RPe103 seg16RPe104
  linear_combination -r2113

theorem seg16RStep103 (rho : Nat -> Seg16.F) (r2111 : Seg16.relationRow2111 rho) (r2112 : Seg16.relationRow2112 rho) (r2113 : Seg16.relationRow2113 rho) :
    seg16RPe103 rho = seg16RPe104 rho * rho 14167 ∧
    seg16RIl103 rho = seg16RIl104 rho + seg16RPe104 rho * (1 - rho 14167) -
      seg16RIl104 rho * (seg16RPe104 rho * (1 - rho 14167)) := by
  constructor
  · exact seg16RStep103Pe rho r2113
  · rw [seg16RStep103Acc rho, seg16RStep103L rho r2111, seg16RStep103IlMul rho r2112, seg16RStep103L rho r2111]

theorem seg16_r_chunk103 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 104 (seg16RPeState rho 104) (seg16RIlState rho 104) := by
  have htail := seg16_r_chunk102 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2111, r2112, r2113, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 103 ≤ n → n < 104 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 103 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep103 rho r2111 r2112 r2113
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 103 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
