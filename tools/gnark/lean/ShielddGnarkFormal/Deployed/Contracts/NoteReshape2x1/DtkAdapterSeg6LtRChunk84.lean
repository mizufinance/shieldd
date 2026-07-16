import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk83

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep84L (rho : Nat -> Seg6.F) (r2150 : Seg6.relationRow2150 rho) :
    rho 2551 = seg6RPe85 rho * (1 - rho 1974) := by
  unfold Seg6.relationRow2150 at r2150
  unfold seg6RPe85
  linear_combination -r2150

theorem seg6RStep84IlMul (rho : Nat -> Seg6.F) (r2151 : Seg6.relationRow2151 rho) :
    rho 2552 = seg6RIl85 rho * (rho 2551) := by
  unfold Seg6.relationRow2151 at r2151
  rw [seg6RStep84IlLc rho] at r2151
  linear_combination -r2151

theorem seg6RStep84Acc (rho : Nat -> Seg6.F) :
    seg6RIl84 rho = seg6RIl85 rho + (rho 2551) - (rho 2552) := by
  have hstate : seg6RIl84 rho = seg6RIl85 rho + seg6RIlAtom82 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom82
  ring

theorem seg6RStep84Pe (rho : Nat -> Seg6.F) (r2152 : Seg6.relationRow2152 rho) :
    seg6RPe84 rho = seg6RPe85 rho * rho 1974 := by
  unfold Seg6.relationRow2152 at r2152
  unfold seg6RPe84 seg6RPe85
  linear_combination -r2152

theorem seg6RStep84 (rho : Nat -> Seg6.F) (r2150 : Seg6.relationRow2150 rho) (r2151 : Seg6.relationRow2151 rho) (r2152 : Seg6.relationRow2152 rho) :
    seg6RPe84 rho = seg6RPe85 rho * rho 1974 ∧
    seg6RIl84 rho = seg6RIl85 rho + seg6RPe85 rho * (1 - rho 1974) -
      seg6RIl85 rho * (seg6RPe85 rho * (1 - rho 1974)) := by
  constructor
  · exact seg6RStep84Pe rho r2152
  · rw [seg6RStep84Acc rho, seg6RStep84L rho r2150, seg6RStep84IlMul rho r2151, seg6RStep84L rho r2150]

theorem seg6_r_chunk84 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 85 (seg6RPeState rho 85) (seg6RIlState rho 85) := by
  have htail := seg6_r_chunk83 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2150, r2151, r2152, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 84 ≤ n → n < 85 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 84 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep84 rho r2150 r2151 r2152
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 84 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
