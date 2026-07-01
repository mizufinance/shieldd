import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk120

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep121L (rho : Nat -> Seg16.F) (r2075 : Seg16.relationRow2075 rho) :
    rho 14650 = seg16RPe122 rho * (1 - rho 14185) := by
  unfold Seg16.relationRow2075 at r2075
  unfold seg16RPe122
  linear_combination -r2075

theorem seg16RStep121IlMul (rho : Nat -> Seg16.F) (r2076 : Seg16.relationRow2076 rho) :
    rho 14651 = seg16RIl122 rho * (rho 14650) := by
  unfold Seg16.relationRow2076 at r2076
  rw [seg16RStep121IlLc rho] at r2076
  linear_combination -r2076

theorem seg16RStep121Acc (rho : Nat -> Seg16.F) :
    seg16RIl121 rho = seg16RIl122 rho + (rho 14650) - (rho 14651) := by
  have hstate : seg16RIl121 rho = seg16RIl122 rho + seg16RIlAtom62 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom62
  ring

theorem seg16RStep121Pe (rho : Nat -> Seg16.F) (r2077 : Seg16.relationRow2077 rho) :
    seg16RPe121 rho = seg16RPe122 rho * rho 14185 := by
  unfold Seg16.relationRow2077 at r2077
  unfold seg16RPe121 seg16RPe122
  linear_combination -r2077

theorem seg16RStep121 (rho : Nat -> Seg16.F) (r2075 : Seg16.relationRow2075 rho) (r2076 : Seg16.relationRow2076 rho) (r2077 : Seg16.relationRow2077 rho) :
    seg16RPe121 rho = seg16RPe122 rho * rho 14185 ∧
    seg16RIl121 rho = seg16RIl122 rho + seg16RPe122 rho * (1 - rho 14185) -
      seg16RIl122 rho * (seg16RPe122 rho * (1 - rho 14185)) := by
  constructor
  · exact seg16RStep121Pe rho r2077
  · rw [seg16RStep121Acc rho, seg16RStep121L rho r2075, seg16RStep121IlMul rho r2076, seg16RStep121L rho r2075]

theorem seg16_r_chunk121 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 122 (seg16RPeState rho 122) (seg16RIlState rho 122) := by
  have htail := seg16_r_chunk120 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2075, r2076, r2077, _, _⟩
  have hsteps : ∀ n, 121 ≤ n → n < 122 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 121 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep121 rho r2075 r2076 r2077
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 121 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
