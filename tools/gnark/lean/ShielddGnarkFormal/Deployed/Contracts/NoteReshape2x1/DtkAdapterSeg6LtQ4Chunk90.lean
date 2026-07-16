import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk89

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step90L (rho : Nat -> Seg6.F) (r2552 : Seg6.relationRow2552 rho) :
    rho 2952 = seg6Q4Pe91 rho * (1 - rho 1980) := by
  unfold Seg6.relationRow2552 at r2552
  unfold seg6Q4Pe91
  linear_combination -r2552

theorem seg6Q4Step90IlMul (rho : Nat -> Seg6.F) (r2553 : Seg6.relationRow2553 rho) :
    rho 2953 = seg6Q4Il91 rho * (rho 2952) := by
  unfold Seg6.relationRow2553 at r2553
  rw [seg6Q4Step90IlLc rho] at r2553
  linear_combination -r2553

theorem seg6Q4Step90Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il90 rho = seg6Q4Il91 rho + (rho 2952) - (rho 2953) := by
  have hstate : seg6Q4Il90 rho = seg6Q4Il91 rho + seg6Q4IlAtom24 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom24
  ring

theorem seg6Q4Step90Pe (rho : Nat -> Seg6.F) (r2554 : Seg6.relationRow2554 rho) :
    seg6Q4Pe90 rho = seg6Q4Pe91 rho * rho 1980 := by
  unfold Seg6.relationRow2554 at r2554
  unfold seg6Q4Pe90 seg6Q4Pe91
  linear_combination -r2554

theorem seg6Q4Step90 (rho : Nat -> Seg6.F) (r2552 : Seg6.relationRow2552 rho) (r2553 : Seg6.relationRow2553 rho) (r2554 : Seg6.relationRow2554 rho) :
    seg6Q4Pe90 rho = seg6Q4Pe91 rho * rho 1980 ∧
    seg6Q4Il90 rho = seg6Q4Il91 rho + seg6Q4Pe91 rho * (1 - rho 1980) -
      seg6Q4Il91 rho * (seg6Q4Pe91 rho * (1 - rho 1980)) := by
  constructor
  · exact seg6Q4Step90Pe rho r2554
  · rw [seg6Q4Step90Acc rho, seg6Q4Step90L rho r2552, seg6Q4Step90IlMul rho r2553, seg6Q4Step90L rho r2552]

theorem seg6_q4_chunk90 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 91 (seg6Q4PeState rho 91) (seg6Q4IlState rho 91) := by
  have htail := seg6_q4_chunk89 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2552, r2553, r2554, _, _, _, _, _⟩
  have hsteps : ∀ n, 90 ≤ n → n < 91 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 90 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step90 rho r2552 r2553 r2554
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 90 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
