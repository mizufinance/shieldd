import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk104

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep105L (rho : Nat -> Seg6.F) (r2105 : Seg6.relationRow2105 rho) :
    rho 2506 = seg6RPe106 rho * (1 - rho 1995) := by
  unfold Seg6.relationRow2105 at r2105
  unfold seg6RPe106
  linear_combination -r2105

theorem seg6RStep105IlMul (rho : Nat -> Seg6.F) (r2106 : Seg6.relationRow2106 rho) :
    rho 2507 = seg6RIl106 rho * (rho 2506) := by
  unfold Seg6.relationRow2106 at r2106
  rw [seg6RStep105IlLc rho] at r2106
  linear_combination -r2106

theorem seg6RStep105Acc (rho : Nat -> Seg6.F) :
    seg6RIl105 rho = seg6RIl106 rho + (rho 2506) - (rho 2507) := by
  have hstate : seg6RIl105 rho = seg6RIl106 rho + seg6RIlAtom70 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom70
  ring

theorem seg6RStep105Pe (rho : Nat -> Seg6.F) (r2107 : Seg6.relationRow2107 rho) :
    seg6RPe105 rho = seg6RPe106 rho * rho 1995 := by
  unfold Seg6.relationRow2107 at r2107
  unfold seg6RPe105 seg6RPe106
  linear_combination -r2107

theorem seg6RStep105 (rho : Nat -> Seg6.F) (r2105 : Seg6.relationRow2105 rho) (r2106 : Seg6.relationRow2106 rho) (r2107 : Seg6.relationRow2107 rho) :
    seg6RPe105 rho = seg6RPe106 rho * rho 1995 ∧
    seg6RIl105 rho = seg6RIl106 rho + seg6RPe106 rho * (1 - rho 1995) -
      seg6RIl106 rho * (seg6RPe106 rho * (1 - rho 1995)) := by
  constructor
  · exact seg6RStep105Pe rho r2107
  · rw [seg6RStep105Acc rho, seg6RStep105L rho r2105, seg6RStep105IlMul rho r2106, seg6RStep105L rho r2105]

theorem seg6_r_chunk105 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 106 (seg6RPeState rho 106) (seg6RIlState rho 106) := by
  have htail := seg6_r_chunk104 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2105, r2106, r2107, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 105 ≤ n → n < 106 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 105 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep105 rho r2105 r2106 r2107
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 105 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
