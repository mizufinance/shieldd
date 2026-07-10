import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk48

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep49L (rho : Nat -> Seg5.F) (r2227 : Seg5.relationRow2227 rho) :
    rho 1925 = seg5RPe50 rho * (1 - rho 1236) := by
  unfold Seg5.relationRow2227 at r2227
  unfold seg5RPe50
  linear_combination -r2227

theorem seg5RStep49IlMul (rho : Nat -> Seg5.F) (r2228 : Seg5.relationRow2228 rho) :
    rho 1926 = seg5RIl50 rho * (rho 1925) := by
  unfold Seg5.relationRow2228 at r2228
  rw [seg5RStep49IlLc rho] at r2228
  linear_combination -r2228

theorem seg5RStep49Acc (rho : Nat -> Seg5.F) :
    seg5RIl49 rho = seg5RIl50 rho + (rho 1925) - (rho 1926) := by
  have hstate : seg5RIl49 rho = seg5RIl50 rho + seg5RIlAtom105 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom105
  ring

theorem seg5RStep49Pe (rho : Nat -> Seg5.F) (r2229 : Seg5.relationRow2229 rho) :
    seg5RPe49 rho = seg5RPe50 rho * rho 1236 := by
  unfold Seg5.relationRow2229 at r2229
  unfold seg5RPe49 seg5RPe50
  linear_combination -r2229

theorem seg5RStep49 (rho : Nat -> Seg5.F) (r2227 : Seg5.relationRow2227 rho) (r2228 : Seg5.relationRow2228 rho) (r2229 : Seg5.relationRow2229 rho) :
    seg5RPe49 rho = seg5RPe50 rho * rho 1236 ∧
    seg5RIl49 rho = seg5RIl50 rho + seg5RPe50 rho * (1 - rho 1236) -
      seg5RIl50 rho * (seg5RPe50 rho * (1 - rho 1236)) := by
  constructor
  · exact seg5RStep49Pe rho r2229
  · rw [seg5RStep49Acc rho, seg5RStep49L rho r2227, seg5RStep49IlMul rho r2228, seg5RStep49L rho r2227]

theorem seg5_r_chunk49 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 50 (seg5RPeState rho 50) (seg5RIlState rho 50) := by
  have htail := seg5_r_chunk48 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2227, r2228, r2229, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 49 ≤ n → n < 50 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 49 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep49 rho r2227 r2228 r2229
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 49 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
