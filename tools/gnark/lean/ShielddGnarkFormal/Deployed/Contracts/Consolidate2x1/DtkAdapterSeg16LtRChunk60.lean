import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk59

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep60L (rho : Nat -> Seg16.F) (r2204 : Seg16.relationRow2204 rho) :
    rho 14779 = seg16RPe61 rho * (1 - rho 14124) := by
  unfold Seg16.relationRow2204 at r2204
  unfold seg16RPe61
  linear_combination -r2204

theorem seg16RStep60IlMul (rho : Nat -> Seg16.F) (r2205 : Seg16.relationRow2205 rho) :
    rho 14780 = seg16RIl61 rho * (rho 14779) := by
  unfold Seg16.relationRow2205 at r2205
  rw [seg16RStep60IlLc rho] at r2205
  linear_combination -r2205

theorem seg16RStep60Acc (rho : Nat -> Seg16.F) :
    seg16RIl60 rho = seg16RIl61 rho + (rho 14779) - (rho 14780) := by
  have hstate : seg16RIl60 rho = seg16RIl61 rho + seg16RIlAtom98 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom98
  ring

theorem seg16RStep60Pe (rho : Nat -> Seg16.F) (r2206 : Seg16.relationRow2206 rho) :
    seg16RPe60 rho = seg16RPe61 rho * rho 14124 := by
  unfold Seg16.relationRow2206 at r2206
  unfold seg16RPe60 seg16RPe61
  linear_combination -r2206

theorem seg16RStep60 (rho : Nat -> Seg16.F) (r2204 : Seg16.relationRow2204 rho) (r2205 : Seg16.relationRow2205 rho) (r2206 : Seg16.relationRow2206 rho) :
    seg16RPe60 rho = seg16RPe61 rho * rho 14124 ∧
    seg16RIl60 rho = seg16RIl61 rho + seg16RPe61 rho * (1 - rho 14124) -
      seg16RIl61 rho * (seg16RPe61 rho * (1 - rho 14124)) := by
  constructor
  · exact seg16RStep60Pe rho r2206
  · rw [seg16RStep60Acc rho, seg16RStep60L rho r2204, seg16RStep60IlMul rho r2205, seg16RStep60L rho r2204]

theorem seg16_r_chunk60 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 61 (seg16RPeState rho 61) (seg16RIlState rho 61) := by
  have htail := seg16_r_chunk59 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2204, r2205, r2206, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 60 ≤ n → n < 61 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 60 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep60 rho r2204 r2205 r2206
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 60 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
