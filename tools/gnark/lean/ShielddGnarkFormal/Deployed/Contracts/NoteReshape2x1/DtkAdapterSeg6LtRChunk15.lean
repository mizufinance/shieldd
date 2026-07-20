import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk14

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep15L (rho : Nat -> Seg6.F) (r2303 : Seg6.relationRow2303 rho) :
    rho 2698 = seg6RPe16 rho * (1 - rho 1899) := by
  unfold Seg6.relationRow2303 at r2303
  unfold seg6RPe16
  linear_combination -r2303

theorem seg6RStep15IlMul (rho : Nat -> Seg6.F) (r2304 : Seg6.relationRow2304 rho) :
    rho 2699 = seg6RIl16 rho * (rho 2698) := by
  unfold Seg6.relationRow2304 at r2304
  rw [seg6RStep15IlLc rho] at r2304
  linear_combination -r2304

theorem seg6RStep15Acc (rho : Nat -> Seg6.F) :
    seg6RIl15 rho = seg6RIl16 rho + (rho 2698) - (rho 2699) := by
  have hstate : seg6RIl15 rho = seg6RIl16 rho + seg6RIlAtom127 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom127
  ring

theorem seg6RStep15Pe (rho : Nat -> Seg6.F) (r2305 : Seg6.relationRow2305 rho) :
    seg6RPe15 rho = seg6RPe16 rho * rho 1899 := by
  unfold Seg6.relationRow2305 at r2305
  unfold seg6RPe15 seg6RPe16
  linear_combination -r2305

theorem seg6RStep15 (rho : Nat -> Seg6.F) (r2303 : Seg6.relationRow2303 rho) (r2304 : Seg6.relationRow2304 rho) (r2305 : Seg6.relationRow2305 rho) :
    seg6RPe15 rho = seg6RPe16 rho * rho 1899 ∧
    seg6RIl15 rho = seg6RIl16 rho + seg6RPe16 rho * (1 - rho 1899) -
      seg6RIl16 rho * (seg6RPe16 rho * (1 - rho 1899)) := by
  constructor
  · exact seg6RStep15Pe rho r2305
  · rw [seg6RStep15Acc rho, seg6RStep15L rho r2303, seg6RStep15IlMul rho r2304, seg6RStep15L rho r2303]

theorem seg6_r_chunk15 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 16 (seg6RPeState rho 16) (seg6RIlState rho 16) := by
  have htail := seg6_r_chunk14 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2303, r2304, r2305, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 15 ≤ n → n < 16 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 15 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep15 rho r2303 r2304 r2305
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 15 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
