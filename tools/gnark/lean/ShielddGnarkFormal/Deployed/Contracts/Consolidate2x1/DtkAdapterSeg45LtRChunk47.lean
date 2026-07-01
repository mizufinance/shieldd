import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep47L (rho : Nat -> Seg45.F) (r2231 : Seg45.relationRow2231 rho) :
    rho 40462 = seg45RPe48 rho * (1 - rho 39767) := by
  unfold Seg45.relationRow2231 at r2231
  unfold seg45RPe48
  linear_combination -r2231

theorem seg45RStep47IlMul (rho : Nat -> Seg45.F) (r2232 : Seg45.relationRow2232 rho) :
    rho 40463 = seg45RIl48 rho * (rho 40462) := by
  unfold Seg45.relationRow2232 at r2232
  rw [seg45RStep47IlLc rho] at r2232
  linear_combination -r2232

theorem seg45RStep47Acc (rho : Nat -> Seg45.F) :
    seg45RIl47 rho = seg45RIl48 rho + (rho 40462) - (rho 40463) := by
  have hstate : seg45RIl47 rho = seg45RIl48 rho + seg45RIlAtom106 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom106
  ring

theorem seg45RStep47Pe (rho : Nat -> Seg45.F) (r2233 : Seg45.relationRow2233 rho) :
    seg45RPe47 rho = seg45RPe48 rho * rho 39767 := by
  unfold Seg45.relationRow2233 at r2233
  unfold seg45RPe47 seg45RPe48
  linear_combination -r2233

theorem seg45RStep47 (rho : Nat -> Seg45.F) (r2231 : Seg45.relationRow2231 rho) (r2232 : Seg45.relationRow2232 rho) (r2233 : Seg45.relationRow2233 rho) :
    seg45RPe47 rho = seg45RPe48 rho * rho 39767 ∧
    seg45RIl47 rho = seg45RIl48 rho + seg45RPe48 rho * (1 - rho 39767) -
      seg45RIl48 rho * (seg45RPe48 rho * (1 - rho 39767)) := by
  constructor
  · exact seg45RStep47Pe rho r2233
  · rw [seg45RStep47Acc rho, seg45RStep47L rho r2231, seg45RStep47IlMul rho r2232, seg45RStep47L rho r2231]

theorem seg45_r_chunk47 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 48 (seg45RPeState rho 48) (seg45RIlState rho 48) := by
  have htail := seg45_r_chunk46 rho h k hq4
  unfold Seg45.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg45.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep47 rho r2231 r2232 r2233
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
