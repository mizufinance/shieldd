import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk48

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep49L (rho : Nat -> Seg34.F) (r2227 : Seg34.relationRow2227 rho) :
    rho 33502 = seg34RPe50 rho * (1 - rho 32813) := by
  unfold Seg34.relationRow2227 at r2227
  unfold seg34RPe50
  linear_combination -r2227

theorem seg34RStep49IlMul (rho : Nat -> Seg34.F) (r2228 : Seg34.relationRow2228 rho) :
    rho 33503 = seg34RIl50 rho * (rho 33502) := by
  unfold Seg34.relationRow2228 at r2228
  rw [seg34RStep49IlLc rho] at r2228
  linear_combination -r2228

theorem seg34RStep49Acc (rho : Nat -> Seg34.F) :
    seg34RIl49 rho = seg34RIl50 rho + (rho 33502) - (rho 33503) := by
  have hstate : seg34RIl49 rho = seg34RIl50 rho + seg34RIlAtom105 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom105
  ring

theorem seg34RStep49Pe (rho : Nat -> Seg34.F) (r2229 : Seg34.relationRow2229 rho) :
    seg34RPe49 rho = seg34RPe50 rho * rho 32813 := by
  unfold Seg34.relationRow2229 at r2229
  unfold seg34RPe49 seg34RPe50
  linear_combination -r2229

theorem seg34RStep49 (rho : Nat -> Seg34.F) (r2227 : Seg34.relationRow2227 rho) (r2228 : Seg34.relationRow2228 rho) (r2229 : Seg34.relationRow2229 rho) :
    seg34RPe49 rho = seg34RPe50 rho * rho 32813 ∧
    seg34RIl49 rho = seg34RIl50 rho + seg34RPe50 rho * (1 - rho 32813) -
      seg34RIl50 rho * (seg34RPe50 rho * (1 - rho 32813)) := by
  constructor
  · exact seg34RStep49Pe rho r2229
  · rw [seg34RStep49Acc rho, seg34RStep49L rho r2227, seg34RStep49IlMul rho r2228, seg34RStep49L rho r2227]

theorem seg34_r_chunk49 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 50 (seg34RPeState rho 50) (seg34RIlState rho 50) := by
  have htail := seg34_r_chunk48 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2227, r2228, r2229, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 49 ≤ n → n < 50 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 49 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep49 rho r2227 r2228 r2229
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 49 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
