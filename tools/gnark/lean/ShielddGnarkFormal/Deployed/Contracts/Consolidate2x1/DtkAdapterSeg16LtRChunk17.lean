import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk16

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep17L (rho : Nat -> Seg16.F) (r2297 : Seg16.relationRow2297 rho) :
    rho 14872 = seg16RPe18 rho * (1 - rho 14081) := by
  unfold Seg16.relationRow2297 at r2297
  unfold seg16RPe18
  linear_combination -r2297

theorem seg16RStep17IlMul (rho : Nat -> Seg16.F) (r2298 : Seg16.relationRow2298 rho) :
    rho 14873 = seg16RIl18 rho * (rho 14872) := by
  unfold Seg16.relationRow2298 at r2298
  rw [seg16RStep17IlLc rho] at r2298
  linear_combination -r2298

theorem seg16RStep17Acc (rho : Nat -> Seg16.F) :
    seg16RIl17 rho = seg16RIl18 rho + (rho 14872) - (rho 14873) := by
  have hstate : seg16RIl17 rho = seg16RIl18 rho + seg16RIlAtom125 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom125
  ring

theorem seg16RStep17Pe (rho : Nat -> Seg16.F) (r2299 : Seg16.relationRow2299 rho) :
    seg16RPe17 rho = seg16RPe18 rho * rho 14081 := by
  unfold Seg16.relationRow2299 at r2299
  unfold seg16RPe17 seg16RPe18
  linear_combination -r2299

theorem seg16RStep17 (rho : Nat -> Seg16.F) (r2297 : Seg16.relationRow2297 rho) (r2298 : Seg16.relationRow2298 rho) (r2299 : Seg16.relationRow2299 rho) :
    seg16RPe17 rho = seg16RPe18 rho * rho 14081 ∧
    seg16RIl17 rho = seg16RIl18 rho + seg16RPe18 rho * (1 - rho 14081) -
      seg16RIl18 rho * (seg16RPe18 rho * (1 - rho 14081)) := by
  constructor
  · exact seg16RStep17Pe rho r2299
  · rw [seg16RStep17Acc rho, seg16RStep17L rho r2297, seg16RStep17IlMul rho r2298, seg16RStep17L rho r2297]

theorem seg16_r_chunk17 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 18 (seg16RPeState rho 18) (seg16RIlState rho 18) := by
  have htail := seg16_r_chunk16 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2297, r2298, r2299, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 17 ≤ n → n < 18 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 17 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep17 rho r2297 r2298 r2299
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 17 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
