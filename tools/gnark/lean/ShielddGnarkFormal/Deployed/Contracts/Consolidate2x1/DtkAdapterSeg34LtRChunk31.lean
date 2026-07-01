import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep31L (rho : Nat -> Seg34.F) (r2267 : Seg34.relationRow2267 rho) :
    rho 33542 = seg34RPe32 rho * (1 - rho 32795) := by
  unfold Seg34.relationRow2267 at r2267
  unfold seg34RPe32
  linear_combination -r2267

theorem seg34RStep31IlMul (rho : Nat -> Seg34.F) (r2268 : Seg34.relationRow2268 rho) :
    rho 33543 = seg34RIl32 rho * (rho 33542) := by
  unfold Seg34.relationRow2268 at r2268
  rw [seg34RStep31IlLc rho] at r2268
  linear_combination -r2268

theorem seg34RStep31Acc (rho : Nat -> Seg34.F) :
    seg34RIl31 rho = seg34RIl32 rho + (rho 33542) - (rho 33543) := by
  have hstate : seg34RIl31 rho = seg34RIl32 rho + seg34RIlAtom116 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom116
  ring

theorem seg34RStep31Pe (rho : Nat -> Seg34.F) (r2269 : Seg34.relationRow2269 rho) :
    seg34RPe31 rho = seg34RPe32 rho * rho 32795 := by
  unfold Seg34.relationRow2269 at r2269
  unfold seg34RPe31 seg34RPe32
  linear_combination -r2269

theorem seg34RStep31 (rho : Nat -> Seg34.F) (r2267 : Seg34.relationRow2267 rho) (r2268 : Seg34.relationRow2268 rho) (r2269 : Seg34.relationRow2269 rho) :
    seg34RPe31 rho = seg34RPe32 rho * rho 32795 ∧
    seg34RIl31 rho = seg34RIl32 rho + seg34RPe32 rho * (1 - rho 32795) -
      seg34RIl32 rho * (seg34RPe32 rho * (1 - rho 32795)) := by
  constructor
  · exact seg34RStep31Pe rho r2269
  · rw [seg34RStep31Acc rho, seg34RStep31L rho r2267, seg34RStep31IlMul rho r2268, seg34RStep31L rho r2267]

theorem seg34_r_chunk31 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 32 (seg34RPeState rho 32) (seg34RIlState rho 32) := by
  have htail := seg34_r_chunk30 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2267, r2268, r2269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep31 rho r2267 r2268 r2269
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
