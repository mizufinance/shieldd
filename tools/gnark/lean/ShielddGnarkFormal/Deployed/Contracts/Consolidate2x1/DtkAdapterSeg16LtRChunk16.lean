import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk15

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep16L (rho : Nat -> Seg16.F) (r2300 : Seg16.relationRow2300 rho) :
    rho 14875 = seg16RPe17 rho * (1 - rho 14080) := by
  unfold Seg16.relationRow2300 at r2300
  unfold seg16RPe17
  linear_combination -r2300

theorem seg16RStep16IlMul (rho : Nat -> Seg16.F) (r2301 : Seg16.relationRow2301 rho) :
    rho 14876 = seg16RIl17 rho * (rho 14875) := by
  unfold Seg16.relationRow2301 at r2301
  rw [seg16RStep16IlLc rho] at r2301
  linear_combination -r2301

theorem seg16RStep16Acc (rho : Nat -> Seg16.F) :
    seg16RIl16 rho = seg16RIl17 rho + (rho 14875) - (rho 14876) := by
  have hstate : seg16RIl16 rho = seg16RIl17 rho + seg16RIlAtom126 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom126
  ring

theorem seg16RStep16Pe (rho : Nat -> Seg16.F) (r2302 : Seg16.relationRow2302 rho) :
    seg16RPe16 rho = seg16RPe17 rho * rho 14080 := by
  unfold Seg16.relationRow2302 at r2302
  unfold seg16RPe16 seg16RPe17
  linear_combination -r2302

theorem seg16RStep16 (rho : Nat -> Seg16.F) (r2300 : Seg16.relationRow2300 rho) (r2301 : Seg16.relationRow2301 rho) (r2302 : Seg16.relationRow2302 rho) :
    seg16RPe16 rho = seg16RPe17 rho * rho 14080 ∧
    seg16RIl16 rho = seg16RIl17 rho + seg16RPe17 rho * (1 - rho 14080) -
      seg16RIl17 rho * (seg16RPe17 rho * (1 - rho 14080)) := by
  constructor
  · exact seg16RStep16Pe rho r2302
  · rw [seg16RStep16Acc rho, seg16RStep16L rho r2300, seg16RStep16IlMul rho r2301, seg16RStep16L rho r2300]

theorem seg16_r_chunk16 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 17 (seg16RPeState rho 17) (seg16RIlState rho 17) := by
  have htail := seg16_r_chunk15 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2300, r2301, r2302, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 16 ≤ n → n < 17 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 16 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep16 rho r2300 r2301 r2302
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 16 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
