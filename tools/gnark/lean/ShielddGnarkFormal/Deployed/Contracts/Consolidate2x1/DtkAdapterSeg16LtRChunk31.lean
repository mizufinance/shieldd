import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk30

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep31L (rho : Nat -> Seg16.F) (r2267 : Seg16.relationRow2267 rho) :
    rho 14842 = seg16RPe32 rho * (1 - rho 14095) := by
  unfold Seg16.relationRow2267 at r2267
  unfold seg16RPe32
  linear_combination -r2267

theorem seg16RStep31IlMul (rho : Nat -> Seg16.F) (r2268 : Seg16.relationRow2268 rho) :
    rho 14843 = seg16RIl32 rho * (rho 14842) := by
  unfold Seg16.relationRow2268 at r2268
  rw [seg16RStep31IlLc rho] at r2268
  linear_combination -r2268

theorem seg16RStep31Acc (rho : Nat -> Seg16.F) :
    seg16RIl31 rho = seg16RIl32 rho + (rho 14842) - (rho 14843) := by
  have hstate : seg16RIl31 rho = seg16RIl32 rho + seg16RIlAtom116 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom116
  ring

theorem seg16RStep31Pe (rho : Nat -> Seg16.F) (r2269 : Seg16.relationRow2269 rho) :
    seg16RPe31 rho = seg16RPe32 rho * rho 14095 := by
  unfold Seg16.relationRow2269 at r2269
  unfold seg16RPe31 seg16RPe32
  linear_combination -r2269

theorem seg16RStep31 (rho : Nat -> Seg16.F) (r2267 : Seg16.relationRow2267 rho) (r2268 : Seg16.relationRow2268 rho) (r2269 : Seg16.relationRow2269 rho) :
    seg16RPe31 rho = seg16RPe32 rho * rho 14095 ∧
    seg16RIl31 rho = seg16RIl32 rho + seg16RPe32 rho * (1 - rho 14095) -
      seg16RIl32 rho * (seg16RPe32 rho * (1 - rho 14095)) := by
  constructor
  · exact seg16RStep31Pe rho r2269
  · rw [seg16RStep31Acc rho, seg16RStep31L rho r2267, seg16RStep31IlMul rho r2268, seg16RStep31L rho r2267]

theorem seg16_r_chunk31 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 32 (seg16RPeState rho 32) (seg16RIlState rho 32) := by
  have htail := seg16_r_chunk30 rho h k hq4
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
  rcases p28 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2267, r2268, r2269, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 31 ≤ n → n < 32 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 31 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep31 rho r2267 r2268 r2269
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 31 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
