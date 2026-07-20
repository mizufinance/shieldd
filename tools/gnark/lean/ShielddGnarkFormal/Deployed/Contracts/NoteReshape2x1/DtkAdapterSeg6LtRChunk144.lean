import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk143

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep144L (rho : Nat -> Seg6.F) (r2036 : Seg6.relationRow2036 rho) :
    rho 2431 = seg6RPe145 rho * (1 - rho 2028) := by
  unfold Seg6.relationRow2036 at r2036
  unfold seg6RPe145
  linear_combination -r2036

theorem seg6RStep144IlMul (rho : Nat -> Seg6.F) (r2037 : Seg6.relationRow2037 rho) :
    rho 2432 = seg6RIl145 rho * (rho 2431) := by
  unfold Seg6.relationRow2037 at r2037
  rw [seg6RStep144IlLc rho] at r2037
  linear_combination -r2037

theorem seg6RStep144Acc (rho : Nat -> Seg6.F) :
    seg6RIl144 rho = seg6RIl145 rho + (rho 2431) - (rho 2432) := by
  have hstate : seg6RIl144 rho = seg6RIl145 rho + seg6RIlAtom54 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom54
  ring

theorem seg6RStep144Pe (rho : Nat -> Seg6.F) (r2038 : Seg6.relationRow2038 rho) :
    seg6RPe144 rho = seg6RPe145 rho * rho 2028 := by
  unfold Seg6.relationRow2038 at r2038
  unfold seg6RPe144 seg6RPe145
  linear_combination -r2038

theorem seg6RStep144 (rho : Nat -> Seg6.F) (r2036 : Seg6.relationRow2036 rho) (r2037 : Seg6.relationRow2037 rho) (r2038 : Seg6.relationRow2038 rho) :
    seg6RPe144 rho = seg6RPe145 rho * rho 2028 ∧
    seg6RIl144 rho = seg6RIl145 rho + seg6RPe145 rho * (1 - rho 2028) -
      seg6RIl145 rho * (seg6RPe145 rho * (1 - rho 2028)) := by
  constructor
  · exact seg6RStep144Pe rho r2038
  · rw [seg6RStep144Acc rho, seg6RStep144L rho r2036, seg6RStep144IlMul rho r2037, seg6RStep144L rho r2036]

theorem seg6_r_chunk144 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 145 (seg6RPeState rho 145) (seg6RIlState rho 145) := by
  have htail := seg6_r_chunk143 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2036, r2037, r2038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 144 ≤ n → n < 145 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 144 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep144 rho r2036 r2037 r2038
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 144 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
