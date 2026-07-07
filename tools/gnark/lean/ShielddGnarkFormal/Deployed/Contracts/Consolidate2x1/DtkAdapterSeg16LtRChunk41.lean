import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep41L (rho : Nat -> Seg16.F) (r2247 : Seg16.relationRow2247 rho) :
    rho 14822 = seg16RPe42 rho * (1 - rho 14105) := by
  unfold Seg16.relationRow2247 at r2247
  unfold seg16RPe42
  linear_combination -r2247

theorem seg16RStep41IlMul (rho : Nat -> Seg16.F) (r2248 : Seg16.relationRow2248 rho) :
    rho 14823 = seg16RIl42 rho * (rho 14822) := by
  unfold Seg16.relationRow2248 at r2248
  rw [seg16RStep41IlLc rho] at r2248
  linear_combination -r2248

theorem seg16RStep41Acc (rho : Nat -> Seg16.F) :
    seg16RIl41 rho = seg16RIl42 rho + (rho 14822) - (rho 14823) := by
  have hstate : seg16RIl41 rho = seg16RIl42 rho + seg16RIlAtom111 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom111
  ring

theorem seg16RStep41Pe (rho : Nat -> Seg16.F) (r2249 : Seg16.relationRow2249 rho) :
    seg16RPe41 rho = seg16RPe42 rho * rho 14105 := by
  unfold Seg16.relationRow2249 at r2249
  unfold seg16RPe41 seg16RPe42
  linear_combination -r2249

theorem seg16RStep41 (rho : Nat -> Seg16.F) (r2247 : Seg16.relationRow2247 rho) (r2248 : Seg16.relationRow2248 rho) (r2249 : Seg16.relationRow2249 rho) :
    seg16RPe41 rho = seg16RPe42 rho * rho 14105 ∧
    seg16RIl41 rho = seg16RIl42 rho + seg16RPe42 rho * (1 - rho 14105) -
      seg16RIl42 rho * (seg16RPe42 rho * (1 - rho 14105)) := by
  constructor
  · exact seg16RStep41Pe rho r2249
  · rw [seg16RStep41Acc rho, seg16RStep41L rho r2247, seg16RStep41IlMul rho r2248, seg16RStep41L rho r2247]

theorem seg16_r_chunk41 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 42 (seg16RPeState rho 42) (seg16RIlState rho 42) := by
  have htail := seg16_r_chunk40 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, r2247, r2248, r2249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 41 ≤ n → n < 42 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 41 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep41 rho r2247 r2248 r2249
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 41 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
