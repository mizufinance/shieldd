import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk59

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep60L (rho : Nat -> Seg6.F) (r2204 : Seg6.relationRow2204 rho) :
    rho 2605 = seg6RPe61 rho * (1 - rho 1950) := by
  unfold Seg6.relationRow2204 at r2204
  unfold seg6RPe61
  linear_combination -r2204

theorem seg6RStep60IlMul (rho : Nat -> Seg6.F) (r2205 : Seg6.relationRow2205 rho) :
    rho 2606 = seg6RIl61 rho * (rho 2605) := by
  unfold Seg6.relationRow2205 at r2205
  rw [seg6RStep60IlLc rho] at r2205
  linear_combination -r2205

theorem seg6RStep60Acc (rho : Nat -> Seg6.F) :
    seg6RIl60 rho = seg6RIl61 rho + (rho 2605) - (rho 2606) := by
  have hstate : seg6RIl60 rho = seg6RIl61 rho + seg6RIlAtom98 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom98
  ring

theorem seg6RStep60Pe (rho : Nat -> Seg6.F) (r2206 : Seg6.relationRow2206 rho) :
    seg6RPe60 rho = seg6RPe61 rho * rho 1950 := by
  unfold Seg6.relationRow2206 at r2206
  unfold seg6RPe60 seg6RPe61
  linear_combination -r2206

theorem seg6RStep60 (rho : Nat -> Seg6.F) (r2204 : Seg6.relationRow2204 rho) (r2205 : Seg6.relationRow2205 rho) (r2206 : Seg6.relationRow2206 rho) :
    seg6RPe60 rho = seg6RPe61 rho * rho 1950 ∧
    seg6RIl60 rho = seg6RIl61 rho + seg6RPe61 rho * (1 - rho 1950) -
      seg6RIl61 rho * (seg6RPe61 rho * (1 - rho 1950)) := by
  constructor
  · exact seg6RStep60Pe rho r2206
  · rw [seg6RStep60Acc rho, seg6RStep60L rho r2204, seg6RStep60IlMul rho r2205, seg6RStep60L rho r2204]

theorem seg6_r_chunk60 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 61 (seg6RPeState rho 61) (seg6RIlState rho 61) := by
  have htail := seg6_r_chunk59 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2204, r2205, r2206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 60 ≤ n → n < 61 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 60 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep60 rho r2204 r2205 r2206
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 60 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
