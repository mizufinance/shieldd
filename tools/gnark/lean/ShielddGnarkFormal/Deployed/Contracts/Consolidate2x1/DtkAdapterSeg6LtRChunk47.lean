import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep47L (rho : Nat -> Seg6.F) (r2231 : Seg6.relationRow2231 rho) :
    rho 2632 = seg6RPe48 rho * (1 - rho 1937) := by
  unfold Seg6.relationRow2231 at r2231
  unfold seg6RPe48
  linear_combination -r2231

theorem seg6RStep47IlMul (rho : Nat -> Seg6.F) (r2232 : Seg6.relationRow2232 rho) :
    rho 2633 = seg6RIl48 rho * (rho 2632) := by
  unfold Seg6.relationRow2232 at r2232
  rw [seg6RStep47IlLc rho] at r2232
  linear_combination -r2232

theorem seg6RStep47Acc (rho : Nat -> Seg6.F) :
    seg6RIl47 rho = seg6RIl48 rho + (rho 2632) - (rho 2633) := by
  have hstate : seg6RIl47 rho = seg6RIl48 rho + seg6RIlAtom106 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom106
  ring

theorem seg6RStep47Pe (rho : Nat -> Seg6.F) (r2233 : Seg6.relationRow2233 rho) :
    seg6RPe47 rho = seg6RPe48 rho * rho 1937 := by
  unfold Seg6.relationRow2233 at r2233
  unfold seg6RPe47 seg6RPe48
  linear_combination -r2233

theorem seg6RStep47 (rho : Nat -> Seg6.F) (r2231 : Seg6.relationRow2231 rho) (r2232 : Seg6.relationRow2232 rho) (r2233 : Seg6.relationRow2233 rho) :
    seg6RPe47 rho = seg6RPe48 rho * rho 1937 ∧
    seg6RIl47 rho = seg6RIl48 rho + seg6RPe48 rho * (1 - rho 1937) -
      seg6RIl48 rho * (seg6RPe48 rho * (1 - rho 1937)) := by
  constructor
  · exact seg6RStep47Pe rho r2233
  · rw [seg6RStep47Acc rho, seg6RStep47L rho r2231, seg6RStep47IlMul rho r2232, seg6RStep47L rho r2231]

theorem seg6_r_chunk47 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 48 (seg6RPeState rho 48) (seg6RIlState rho 48) := by
  have htail := seg6_r_chunk46 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep47 rho r2231 r2232 r2233
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
