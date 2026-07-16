import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk138

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep139L (rho : Nat -> Seg6.F) (r2049 : Seg6.relationRow2049 rho) :
    rho 2450 = seg6RPe140 rho * (1 - rho 2029) := by
  unfold Seg6.relationRow2049 at r2049
  unfold seg6RPe140
  linear_combination -r2049

theorem seg6RStep139IlMul (rho : Nat -> Seg6.F) (r2050 : Seg6.relationRow2050 rho) :
    rho 2451 = seg6RIl140 rho * (rho 2450) := by
  unfold Seg6.relationRow2050 at r2050
  rw [seg6RStep139IlLc rho] at r2050
  linear_combination -r2050

theorem seg6RStep139Acc (rho : Nat -> Seg6.F) :
    seg6RIl139 rho = seg6RIl140 rho + (rho 2450) - (rho 2451) := by
  have hstate : seg6RIl139 rho = seg6RIl140 rho + seg6RIlAtom58 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom58
  ring

theorem seg6RStep139Pe (rho : Nat -> Seg6.F) (r2051 : Seg6.relationRow2051 rho) :
    seg6RPe139 rho = seg6RPe140 rho * rho 2029 := by
  unfold Seg6.relationRow2051 at r2051
  unfold seg6RPe139 seg6RPe140
  linear_combination -r2051

theorem seg6RStep139 (rho : Nat -> Seg6.F) (r2049 : Seg6.relationRow2049 rho) (r2050 : Seg6.relationRow2050 rho) (r2051 : Seg6.relationRow2051 rho) :
    seg6RPe139 rho = seg6RPe140 rho * rho 2029 ∧
    seg6RIl139 rho = seg6RIl140 rho + seg6RPe140 rho * (1 - rho 2029) -
      seg6RIl140 rho * (seg6RPe140 rho * (1 - rho 2029)) := by
  constructor
  · exact seg6RStep139Pe rho r2051
  · rw [seg6RStep139Acc rho, seg6RStep139L rho r2049, seg6RStep139IlMul rho r2050, seg6RStep139L rho r2049]

theorem seg6_r_chunk139 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 140 (seg6RPeState rho 140) (seg6RIlState rho 140) := by
  have htail := seg6_r_chunk138 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2049, r2050, r2051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 139 ≤ n → n < 140 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 139 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep139 rho r2049 r2050 r2051
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 139 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
