import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step97L (rho : Nat -> Seg6.F) (r2533 : Seg6.relationRow2533 rho) :
    rho 2927 = seg6Q4Pe98 rho * (1 - rho 1981) := by
  unfold Seg6.relationRow2533 at r2533
  unfold seg6Q4Pe98
  linear_combination -r2533

theorem seg6Q4Step97IlMul (rho : Nat -> Seg6.F) (r2534 : Seg6.relationRow2534 rho) :
    rho 2928 = seg6Q4Il98 rho * (rho 2927) := by
  unfold Seg6.relationRow2534 at r2534
  rw [seg6Q4Step97IlLc rho] at r2534
  linear_combination -r2534

theorem seg6Q4Step97Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il97 rho = seg6Q4Il98 rho + (rho 2927) - (rho 2928) := by
  have hstate : seg6Q4Il97 rho = seg6Q4Il98 rho + seg6Q4IlAtom18 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom18
  ring

theorem seg6Q4Step97Pe (rho : Nat -> Seg6.F) (r2535 : Seg6.relationRow2535 rho) :
    seg6Q4Pe97 rho = seg6Q4Pe98 rho * rho 1981 := by
  unfold Seg6.relationRow2535 at r2535
  unfold seg6Q4Pe97 seg6Q4Pe98
  linear_combination -r2535

theorem seg6Q4Step97 (rho : Nat -> Seg6.F) (r2533 : Seg6.relationRow2533 rho) (r2534 : Seg6.relationRow2534 rho) (r2535 : Seg6.relationRow2535 rho) :
    seg6Q4Pe97 rho = seg6Q4Pe98 rho * rho 1981 ∧
    seg6Q4Il97 rho = seg6Q4Il98 rho + seg6Q4Pe98 rho * (1 - rho 1981) -
      seg6Q4Il98 rho * (seg6Q4Pe98 rho * (1 - rho 1981)) := by
  constructor
  · exact seg6Q4Step97Pe rho r2535
  · rw [seg6Q4Step97Acc rho, seg6Q4Step97L rho r2533, seg6Q4Step97IlMul rho r2534, seg6Q4Step97L rho r2533]

theorem seg6_q4_chunk97 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 98 (seg6Q4PeState rho 98) (seg6Q4IlState rho 98) := by
  have htail := seg6_q4_chunk96 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2533, r2534, r2535, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1884 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step97 rho r2533 r2534 r2535
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
