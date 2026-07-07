import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep112L (rho : Nat -> Seg16.F) (r2092 : Seg16.relationRow2092 rho) :
    rho 14667 = seg16RPe113 rho * (1 - rho 14176) := by
  unfold Seg16.relationRow2092 at r2092
  unfold seg16RPe113
  linear_combination -r2092

theorem seg16RStep112IlMul (rho : Nat -> Seg16.F) (r2093 : Seg16.relationRow2093 rho) :
    rho 14668 = seg16RIl113 rho * (rho 14667) := by
  unfold Seg16.relationRow2093 at r2093
  rw [seg16RStep112IlLc rho] at r2093
  linear_combination -r2093

theorem seg16RStep112Acc (rho : Nat -> Seg16.F) :
    seg16RIl112 rho = seg16RIl113 rho + (rho 14667) - (rho 14668) := by
  have hstate : seg16RIl112 rho = seg16RIl113 rho + seg16RIlAtom66 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom66
  ring

theorem seg16RStep112Pe (rho : Nat -> Seg16.F) (r2094 : Seg16.relationRow2094 rho) :
    seg16RPe112 rho = seg16RPe113 rho * rho 14176 := by
  unfold Seg16.relationRow2094 at r2094
  unfold seg16RPe112 seg16RPe113
  linear_combination -r2094

theorem seg16RStep112 (rho : Nat -> Seg16.F) (r2092 : Seg16.relationRow2092 rho) (r2093 : Seg16.relationRow2093 rho) (r2094 : Seg16.relationRow2094 rho) :
    seg16RPe112 rho = seg16RPe113 rho * rho 14176 ∧
    seg16RIl112 rho = seg16RIl113 rho + seg16RPe113 rho * (1 - rho 14176) -
      seg16RIl113 rho * (seg16RPe113 rho * (1 - rho 14176)) := by
  constructor
  · exact seg16RStep112Pe rho r2094
  · rw [seg16RStep112Acc rho, seg16RStep112L rho r2092, seg16RStep112IlMul rho r2093, seg16RStep112L rho r2092]

theorem seg16_r_chunk112 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 113 (seg16RPeState rho 113) (seg16RIlState rho 113) := by
  have htail := seg16_r_chunk111 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep112 rho r2092 r2093 r2094
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
