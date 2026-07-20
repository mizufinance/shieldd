import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk87

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step88L (rho : Nat -> Seg6.F) (r2558 : Seg6.relationRow2558 rho) :
    rho 2952 = seg6Q4Pe89 rho * (1 - rho 1972) := by
  unfold Seg6.relationRow2558 at r2558
  unfold seg6Q4Pe89
  linear_combination -r2558

theorem seg6Q4Step88IlMul (rho : Nat -> Seg6.F) (r2559 : Seg6.relationRow2559 rho) :
    rho 2953 = seg6Q4Il89 rho * (rho 2952) := by
  unfold Seg6.relationRow2559 at r2559
  rw [seg6Q4Step88IlLc rho] at r2559
  linear_combination -r2559

theorem seg6Q4Step88Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il88 rho = seg6Q4Il89 rho + (rho 2952) - (rho 2953) := by
  have hstate : seg6Q4Il88 rho = seg6Q4Il89 rho + seg6Q4IlAtom26 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom26
  ring

theorem seg6Q4Step88Pe (rho : Nat -> Seg6.F) (r2560 : Seg6.relationRow2560 rho) :
    seg6Q4Pe88 rho = seg6Q4Pe89 rho * rho 1972 := by
  unfold Seg6.relationRow2560 at r2560
  unfold seg6Q4Pe88 seg6Q4Pe89
  linear_combination -r2560

theorem seg6Q4Step88 (rho : Nat -> Seg6.F) (r2558 : Seg6.relationRow2558 rho) (r2559 : Seg6.relationRow2559 rho) (r2560 : Seg6.relationRow2560 rho) :
    seg6Q4Pe88 rho = seg6Q4Pe89 rho * rho 1972 ∧
    seg6Q4Il88 rho = seg6Q4Il89 rho + seg6Q4Pe89 rho * (1 - rho 1972) -
      seg6Q4Il89 rho * (seg6Q4Pe89 rho * (1 - rho 1972)) := by
  constructor
  · exact seg6Q4Step88Pe rho r2560
  · rw [seg6Q4Step88Acc rho, seg6Q4Step88L rho r2558, seg6Q4Step88IlMul rho r2559, seg6Q4Step88L rho r2558]

theorem seg6_q4_chunk88 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 89 (seg6Q4PeState rho 89) (seg6Q4IlState rho 89) := by
  have htail := seg6_q4_chunk87 rho h k hk
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, p31, p32, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart31 at p31
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2558, r2559⟩
  unfold Seg6.relationPart32 at p32
  rcases p32 with ⟨r2560, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 88 ≤ n → n < 89 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 88 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step88 rho r2558 r2559 r2560
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 88 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
