import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep45L (rho : Nat -> Seg6.F) (r2237 : Seg6.relationRow2237 rho) :
    rho 2638 = seg6RPe46 rho * (1 - rho 1935) := by
  unfold Seg6.relationRow2237 at r2237
  unfold seg6RPe46
  linear_combination -r2237

theorem seg6RStep45IlMul (rho : Nat -> Seg6.F) (r2238 : Seg6.relationRow2238 rho) :
    rho 2639 = seg6RIl46 rho * (rho 2638) := by
  unfold Seg6.relationRow2238 at r2238
  rw [seg6RStep45IlLc rho] at r2238
  linear_combination -r2238

theorem seg6RStep45Acc (rho : Nat -> Seg6.F) :
    seg6RIl45 rho = seg6RIl46 rho + (rho 2638) - (rho 2639) := by
  have hstate : seg6RIl45 rho = seg6RIl46 rho + seg6RIlAtom108 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom108
  ring

theorem seg6RStep45Pe (rho : Nat -> Seg6.F) (r2239 : Seg6.relationRow2239 rho) :
    seg6RPe45 rho = seg6RPe46 rho * rho 1935 := by
  unfold Seg6.relationRow2239 at r2239
  unfold seg6RPe45 seg6RPe46
  linear_combination -r2239

theorem seg6RStep45 (rho : Nat -> Seg6.F) (r2237 : Seg6.relationRow2237 rho) (r2238 : Seg6.relationRow2238 rho) (r2239 : Seg6.relationRow2239 rho) :
    seg6RPe45 rho = seg6RPe46 rho * rho 1935 ∧
    seg6RIl45 rho = seg6RIl46 rho + seg6RPe46 rho * (1 - rho 1935) -
      seg6RIl46 rho * (seg6RPe46 rho * (1 - rho 1935)) := by
  constructor
  · exact seg6RStep45Pe rho r2239
  · rw [seg6RStep45Acc rho, seg6RStep45L rho r2237, seg6RStep45IlMul rho r2238, seg6RStep45L rho r2237]

theorem seg6_r_chunk45 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 46 (seg6RPeState rho 46) (seg6RIlState rho 46) := by
  have htail := seg6_r_chunk44 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2237, r2238, r2239⟩
  have hsteps : ∀ n, 45 ≤ n → n < 46 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 45 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep45 rho r2237 r2238 r2239
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 45 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
