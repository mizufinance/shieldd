import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk55

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep56L (rho : Nat -> Seg16.F) (r2212 : Seg16.relationRow2212 rho) :
    rho 14787 = seg16RPe57 rho * (1 - rho 14120) := by
  unfold Seg16.relationRow2212 at r2212
  unfold seg16RPe57
  linear_combination -r2212

theorem seg16RStep56IlMul (rho : Nat -> Seg16.F) (r2213 : Seg16.relationRow2213 rho) :
    rho 14788 = seg16RIl57 rho * (rho 14787) := by
  unfold Seg16.relationRow2213 at r2213
  rw [seg16RStep56IlLc rho] at r2213
  linear_combination -r2213

theorem seg16RStep56Acc (rho : Nat -> Seg16.F) :
    seg16RIl56 rho = seg16RIl57 rho + (rho 14787) - (rho 14788) := by
  have hstate : seg16RIl56 rho = seg16RIl57 rho + seg16RIlAtom100 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom100
  ring

theorem seg16RStep56Pe (rho : Nat -> Seg16.F) (r2214 : Seg16.relationRow2214 rho) :
    seg16RPe56 rho = seg16RPe57 rho * rho 14120 := by
  unfold Seg16.relationRow2214 at r2214
  unfold seg16RPe56 seg16RPe57
  linear_combination -r2214

theorem seg16RStep56 (rho : Nat -> Seg16.F) (r2212 : Seg16.relationRow2212 rho) (r2213 : Seg16.relationRow2213 rho) (r2214 : Seg16.relationRow2214 rho) :
    seg16RPe56 rho = seg16RPe57 rho * rho 14120 ∧
    seg16RIl56 rho = seg16RIl57 rho + seg16RPe57 rho * (1 - rho 14120) -
      seg16RIl57 rho * (seg16RPe57 rho * (1 - rho 14120)) := by
  constructor
  · exact seg16RStep56Pe rho r2214
  · rw [seg16RStep56Acc rho, seg16RStep56L rho r2212, seg16RStep56IlMul rho r2213, seg16RStep56L rho r2212]

theorem seg16_r_chunk56 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 57 (seg16RPeState rho 57) (seg16RIlState rho 57) := by
  have htail := seg16_r_chunk55 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2212, r2213, r2214, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 56 ≤ n → n < 57 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 56 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep56 rho r2212 r2213 r2214
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 56 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
