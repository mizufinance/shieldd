import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep112L (rho : Nat -> Seg6.F) (r2092 : Seg6.relationRow2092 rho) :
    rho 2493 = seg6RPe113 rho * (1 - rho 2002) := by
  unfold Seg6.relationRow2092 at r2092
  unfold seg6RPe113
  linear_combination -r2092

theorem seg6RStep112IlMul (rho : Nat -> Seg6.F) (r2093 : Seg6.relationRow2093 rho) :
    rho 2494 = seg6RIl113 rho * (rho 2493) := by
  unfold Seg6.relationRow2093 at r2093
  rw [seg6RStep112IlLc rho] at r2093
  linear_combination -r2093

theorem seg6RStep112Acc (rho : Nat -> Seg6.F) :
    seg6RIl112 rho = seg6RIl113 rho + (rho 2493) - (rho 2494) := by
  have hstate : seg6RIl112 rho = seg6RIl113 rho + seg6RIlAtom66 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom66
  ring

theorem seg6RStep112Pe (rho : Nat -> Seg6.F) (r2094 : Seg6.relationRow2094 rho) :
    seg6RPe112 rho = seg6RPe113 rho * rho 2002 := by
  unfold Seg6.relationRow2094 at r2094
  unfold seg6RPe112 seg6RPe113
  linear_combination -r2094

theorem seg6RStep112 (rho : Nat -> Seg6.F) (r2092 : Seg6.relationRow2092 rho) (r2093 : Seg6.relationRow2093 rho) (r2094 : Seg6.relationRow2094 rho) :
    seg6RPe112 rho = seg6RPe113 rho * rho 2002 ∧
    seg6RIl112 rho = seg6RIl113 rho + seg6RPe113 rho * (1 - rho 2002) -
      seg6RIl113 rho * (seg6RPe113 rho * (1 - rho 2002)) := by
  constructor
  · exact seg6RStep112Pe rho r2094
  · rw [seg6RStep112Acc rho, seg6RStep112L rho r2092, seg6RStep112IlMul rho r2093, seg6RStep112L rho r2092]

theorem seg6_r_chunk112 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 113 (seg6RPeState rho 113) (seg6RIlState rho 113) := by
  have htail := seg6_r_chunk111 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep112 rho r2092 r2093 r2094
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
