import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk42

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep43L (rho : Nat -> Seg16.F) (r2241 : Seg16.relationRow2241 rho) :
    rho 14816 = seg16RPe44 rho * (1 - rho 14107) := by
  unfold Seg16.relationRow2241 at r2241
  unfold seg16RPe44
  linear_combination -r2241

theorem seg16RStep43IlMul (rho : Nat -> Seg16.F) (r2242 : Seg16.relationRow2242 rho) :
    rho 14817 = seg16RIl44 rho * (rho 14816) := by
  unfold Seg16.relationRow2242 at r2242
  rw [seg16RStep43IlLc rho] at r2242
  linear_combination -r2242

theorem seg16RStep43Acc (rho : Nat -> Seg16.F) :
    seg16RIl43 rho = seg16RIl44 rho + (rho 14816) - (rho 14817) := by
  have hstate : seg16RIl43 rho = seg16RIl44 rho + seg16RIlAtom109 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom109
  ring

theorem seg16RStep43Pe (rho : Nat -> Seg16.F) (r2243 : Seg16.relationRow2243 rho) :
    seg16RPe43 rho = seg16RPe44 rho * rho 14107 := by
  unfold Seg16.relationRow2243 at r2243
  unfold seg16RPe43 seg16RPe44
  linear_combination -r2243

theorem seg16RStep43 (rho : Nat -> Seg16.F) (r2241 : Seg16.relationRow2241 rho) (r2242 : Seg16.relationRow2242 rho) (r2243 : Seg16.relationRow2243 rho) :
    seg16RPe43 rho = seg16RPe44 rho * rho 14107 ∧
    seg16RIl43 rho = seg16RIl44 rho + seg16RPe44 rho * (1 - rho 14107) -
      seg16RIl44 rho * (seg16RPe44 rho * (1 - rho 14107)) := by
  constructor
  · exact seg16RStep43Pe rho r2243
  · rw [seg16RStep43Acc rho, seg16RStep43L rho r2241, seg16RStep43IlMul rho r2242, seg16RStep43L rho r2241]

theorem seg16_r_chunk43 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 44 (seg16RPeState rho 44) (seg16RIlState rho 44) := by
  have htail := seg16_r_chunk42 rho h k hq4
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
  rcases p28 with ⟨_, r2241, r2242, r2243, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 43 ≤ n → n < 44 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 43 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep43 rho r2241 r2242 r2243
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 43 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
