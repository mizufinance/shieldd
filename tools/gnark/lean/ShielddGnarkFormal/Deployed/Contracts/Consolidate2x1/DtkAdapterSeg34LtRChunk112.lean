import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk111

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep112L (rho : Nat -> Seg34.F) (r2092 : Seg34.relationRow2092 rho) :
    rho 33367 = seg34RPe113 rho * (1 - rho 32876) := by
  unfold Seg34.relationRow2092 at r2092
  unfold seg34RPe113
  linear_combination -r2092

theorem seg34RStep112IlMul (rho : Nat -> Seg34.F) (r2093 : Seg34.relationRow2093 rho) :
    rho 33368 = seg34RIl113 rho * (rho 33367) := by
  unfold Seg34.relationRow2093 at r2093
  rw [seg34RStep112IlLc rho] at r2093
  linear_combination -r2093

theorem seg34RStep112Acc (rho : Nat -> Seg34.F) :
    seg34RIl112 rho = seg34RIl113 rho + (rho 33367) - (rho 33368) := by
  have hstate : seg34RIl112 rho = seg34RIl113 rho + seg34RIlAtom66 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom66
  ring

theorem seg34RStep112Pe (rho : Nat -> Seg34.F) (r2094 : Seg34.relationRow2094 rho) :
    seg34RPe112 rho = seg34RPe113 rho * rho 32876 := by
  unfold Seg34.relationRow2094 at r2094
  unfold seg34RPe112 seg34RPe113
  linear_combination -r2094

theorem seg34RStep112 (rho : Nat -> Seg34.F) (r2092 : Seg34.relationRow2092 rho) (r2093 : Seg34.relationRow2093 rho) (r2094 : Seg34.relationRow2094 rho) :
    seg34RPe112 rho = seg34RPe113 rho * rho 32876 ∧
    seg34RIl112 rho = seg34RIl113 rho + seg34RPe113 rho * (1 - rho 32876) -
      seg34RIl113 rho * (seg34RPe113 rho * (1 - rho 32876)) := by
  constructor
  · exact seg34RStep112Pe rho r2094
  · rw [seg34RStep112Acc rho, seg34RStep112L rho r2092, seg34RStep112IlMul rho r2093, seg34RStep112L rho r2092]

theorem seg34_r_chunk112 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 113 (seg34RPeState rho 113) (seg34RIlState rho 113) := by
  have htail := seg34_r_chunk111 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, r2092, r2093, r2094, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 112 ≤ n → n < 113 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 112 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep112 rho r2092 r2093 r2094
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 112 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
