import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk48

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep49L (rho : Nat -> Seg16.F) (r2227 : Seg16.relationRow2227 rho) :
    rho 14802 = seg16RPe50 rho * (1 - rho 14113) := by
  unfold Seg16.relationRow2227 at r2227
  unfold seg16RPe50
  linear_combination -r2227

theorem seg16RStep49IlMul (rho : Nat -> Seg16.F) (r2228 : Seg16.relationRow2228 rho) :
    rho 14803 = seg16RIl50 rho * (rho 14802) := by
  unfold Seg16.relationRow2228 at r2228
  rw [seg16RStep49IlLc rho] at r2228
  linear_combination -r2228

theorem seg16RStep49Acc (rho : Nat -> Seg16.F) :
    seg16RIl49 rho = seg16RIl50 rho + (rho 14802) - (rho 14803) := by
  have hstate : seg16RIl49 rho = seg16RIl50 rho + seg16RIlAtom105 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom105
  ring

theorem seg16RStep49Pe (rho : Nat -> Seg16.F) (r2229 : Seg16.relationRow2229 rho) :
    seg16RPe49 rho = seg16RPe50 rho * rho 14113 := by
  unfold Seg16.relationRow2229 at r2229
  unfold seg16RPe49 seg16RPe50
  linear_combination -r2229

theorem seg16RStep49 (rho : Nat -> Seg16.F) (r2227 : Seg16.relationRow2227 rho) (r2228 : Seg16.relationRow2228 rho) (r2229 : Seg16.relationRow2229 rho) :
    seg16RPe49 rho = seg16RPe50 rho * rho 14113 ∧
    seg16RIl49 rho = seg16RIl50 rho + seg16RPe50 rho * (1 - rho 14113) -
      seg16RIl50 rho * (seg16RPe50 rho * (1 - rho 14113)) := by
  constructor
  · exact seg16RStep49Pe rho r2229
  · rw [seg16RStep49Acc rho, seg16RStep49L rho r2227, seg16RStep49IlMul rho r2228, seg16RStep49L rho r2227]

theorem seg16_r_chunk49 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 50 (seg16RPeState rho 50) (seg16RIlState rho 50) := by
  have htail := seg16_r_chunk48 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2227, r2228, r2229, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 49 ≤ n → n < 50 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 49 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep49 rho r2227 r2228 r2229
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 49 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
