import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk46

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep47L (rho : Nat -> Seg16.F) (r2231 : Seg16.relationRow2231 rho) :
    rho 14806 = seg16RPe48 rho * (1 - rho 14111) := by
  unfold Seg16.relationRow2231 at r2231
  unfold seg16RPe48
  linear_combination -r2231

theorem seg16RStep47IlMul (rho : Nat -> Seg16.F) (r2232 : Seg16.relationRow2232 rho) :
    rho 14807 = seg16RIl48 rho * (rho 14806) := by
  unfold Seg16.relationRow2232 at r2232
  rw [seg16RStep47IlLc rho] at r2232
  linear_combination -r2232

theorem seg16RStep47Acc (rho : Nat -> Seg16.F) :
    seg16RIl47 rho = seg16RIl48 rho + (rho 14806) - (rho 14807) := by
  have hstate : seg16RIl47 rho = seg16RIl48 rho + seg16RIlAtom106 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom106
  ring

theorem seg16RStep47Pe (rho : Nat -> Seg16.F) (r2233 : Seg16.relationRow2233 rho) :
    seg16RPe47 rho = seg16RPe48 rho * rho 14111 := by
  unfold Seg16.relationRow2233 at r2233
  unfold seg16RPe47 seg16RPe48
  linear_combination -r2233

theorem seg16RStep47 (rho : Nat -> Seg16.F) (r2231 : Seg16.relationRow2231 rho) (r2232 : Seg16.relationRow2232 rho) (r2233 : Seg16.relationRow2233 rho) :
    seg16RPe47 rho = seg16RPe48 rho * rho 14111 ∧
    seg16RIl47 rho = seg16RIl48 rho + seg16RPe48 rho * (1 - rho 14111) -
      seg16RIl48 rho * (seg16RPe48 rho * (1 - rho 14111)) := by
  constructor
  · exact seg16RStep47Pe rho r2233
  · rw [seg16RStep47Acc rho, seg16RStep47L rho r2231, seg16RStep47IlMul rho r2232, seg16RStep47L rho r2231]

theorem seg16_r_chunk47 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 48 (seg16RPeState rho 48) (seg16RIlState rho 48) := by
  have htail := seg16_r_chunk46 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2231, r2232, r2233, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 47 ≤ n → n < 48 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 47 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep47 rho r2231 r2232 r2233
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 47 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
