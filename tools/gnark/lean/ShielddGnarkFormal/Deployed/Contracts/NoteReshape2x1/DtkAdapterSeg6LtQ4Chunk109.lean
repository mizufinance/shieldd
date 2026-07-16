import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtQ4Chunk108

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6Q4Step109L (rho : Nat -> Seg6.F) (r2509 : Seg6.relationRow2509 rho) :
    rho 2909 = seg6Q4Pe110 rho * (1 - rho 1999) := by
  unfold Seg6.relationRow2509 at r2509
  unfold seg6Q4Pe110
  linear_combination -r2509

theorem seg6Q4Step109IlMul (rho : Nat -> Seg6.F) (r2510 : Seg6.relationRow2510 rho) :
    rho 2910 = seg6Q4Il110 rho * (rho 2909) := by
  unfold Seg6.relationRow2510 at r2510
  rw [seg6Q4Il110Atoms rho]
  unfold seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  linear_combination -r2510

theorem seg6Q4Step109Acc (rho : Nat -> Seg6.F) :
    seg6Q4Il109 rho = seg6Q4Il110 rho + (rho 2909) - (rho 2910) := by
  have hstate : seg6Q4Il109 rho = seg6Q4Il110 rho + seg6Q4IlAtom11 rho := by rfl
  rw [hstate]
  unfold seg6Q4IlAtom11
  ring

theorem seg6Q4Step109Pe (rho : Nat -> Seg6.F) (r2511 : Seg6.relationRow2511 rho) :
    seg6Q4Pe109 rho = seg6Q4Pe110 rho * rho 1999 := by
  unfold Seg6.relationRow2511 at r2511
  unfold seg6Q4Pe109 seg6Q4Pe110
  linear_combination -r2511

theorem seg6Q4Step109 (rho : Nat -> Seg6.F) (r2509 : Seg6.relationRow2509 rho) (r2510 : Seg6.relationRow2510 rho) (r2511 : Seg6.relationRow2511 rho) :
    seg6Q4Pe109 rho = seg6Q4Pe110 rho * rho 1999 ∧
    seg6Q4Il109 rho = seg6Q4Il110 rho + seg6Q4Pe110 rho * (1 - rho 1999) -
      seg6Q4Il110 rho * (seg6Q4Pe110 rho * (1 - rho 1999)) := by
  constructor
  · exact seg6Q4Step109Pe rho r2511
  · rw [seg6Q4Step109Acc rho, seg6Q4Step109L rho r2509, seg6Q4Step109IlMul rho r2510, seg6Q4Step109L rho r2509]

theorem seg6_q4_chunk109 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hk : k) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
      (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 110 (seg6Q4PeState rho 110) (seg6Q4IlState rho 110) := by
  have htail := seg6_q4_chunk108 rho h k hk
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
  rcases p31 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2509, r2510, r2511, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 109 ≤ n → n < 110 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit n then
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * rho (1890 + n) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) + seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6Q4IlState rho (n + 1) * (seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6Q4PeState rho n = seg6Q4PeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6Q4IlState rho n = seg6Q4IlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit 109 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6Q4Step109 rho r2509 r2510 r2511
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k)
    (seg6Q4PeState rho) (seg6Q4IlState rho) 109 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
