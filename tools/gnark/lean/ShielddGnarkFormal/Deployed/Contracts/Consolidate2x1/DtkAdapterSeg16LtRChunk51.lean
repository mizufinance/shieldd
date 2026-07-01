import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk50

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep51L (rho : Nat -> Seg16.F) (r2223 : Seg16.relationRow2223 rho) :
    rho 14798 = seg16RPe52 rho * (1 - rho 14115) := by
  unfold Seg16.relationRow2223 at r2223
  unfold seg16RPe52
  linear_combination -r2223

theorem seg16RStep51IlMul (rho : Nat -> Seg16.F) (r2224 : Seg16.relationRow2224 rho) :
    rho 14799 = seg16RIl52 rho * (rho 14798) := by
  unfold Seg16.relationRow2224 at r2224
  rw [seg16RStep51IlLc rho] at r2224
  linear_combination -r2224

theorem seg16RStep51Acc (rho : Nat -> Seg16.F) :
    seg16RIl51 rho = seg16RIl52 rho + (rho 14798) - (rho 14799) := by
  have hstate : seg16RIl51 rho = seg16RIl52 rho + seg16RIlAtom104 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom104
  ring

theorem seg16RStep51Pe (rho : Nat -> Seg16.F) (r2225 : Seg16.relationRow2225 rho) :
    seg16RPe51 rho = seg16RPe52 rho * rho 14115 := by
  unfold Seg16.relationRow2225 at r2225
  unfold seg16RPe51 seg16RPe52
  linear_combination -r2225

theorem seg16RStep51 (rho : Nat -> Seg16.F) (r2223 : Seg16.relationRow2223 rho) (r2224 : Seg16.relationRow2224 rho) (r2225 : Seg16.relationRow2225 rho) :
    seg16RPe51 rho = seg16RPe52 rho * rho 14115 ∧
    seg16RIl51 rho = seg16RIl52 rho + seg16RPe52 rho * (1 - rho 14115) -
      seg16RIl52 rho * (seg16RPe52 rho * (1 - rho 14115)) := by
  constructor
  · exact seg16RStep51Pe rho r2225
  · rw [seg16RStep51Acc rho, seg16RStep51L rho r2223, seg16RStep51IlMul rho r2224, seg16RStep51L rho r2223]

theorem seg16_r_chunk51 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 52 (seg16RPeState rho 52) (seg16RIlState rho 52) := by
  have htail := seg16_r_chunk50 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2223, r2224, r2225, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 51 ≤ n → n < 52 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 51 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep51 rho r2223 r2224 r2225
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 51 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
