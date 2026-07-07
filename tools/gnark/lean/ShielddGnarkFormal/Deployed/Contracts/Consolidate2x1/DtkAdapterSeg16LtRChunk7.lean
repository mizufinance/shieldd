import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep7L (rho : Nat -> Seg16.F) (r2321 : Seg16.relationRow2321 rho) :
    rho 14896 = seg16RPe8 rho * (1 - rho 14071) := by
  unfold Seg16.relationRow2321 at r2321
  unfold seg16RPe8
  linear_combination -r2321

theorem seg16RStep7IlMul (rho : Nat -> Seg16.F) (r2322 : Seg16.relationRow2322 rho) :
    rho 14897 = seg16RIl8 rho * (rho 14896) := by
  unfold Seg16.relationRow2322 at r2322
  rw [seg16RStep7IlLc rho] at r2322
  linear_combination -r2322

theorem seg16RStep7Acc (rho : Nat -> Seg16.F) :
    seg16RIl7 rho = seg16RIl8 rho + (rho 14896) - (rho 14897) := by
  have hstate : seg16RIl7 rho = seg16RIl8 rho + seg16RIlAtom132 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom132
  ring

theorem seg16RStep7Pe (rho : Nat -> Seg16.F) (r2323 : Seg16.relationRow2323 rho) :
    seg16RPe7 rho = seg16RPe8 rho * rho 14071 := by
  unfold Seg16.relationRow2323 at r2323
  unfold seg16RPe7 seg16RPe8
  linear_combination -r2323

theorem seg16RStep7 (rho : Nat -> Seg16.F) (r2321 : Seg16.relationRow2321 rho) (r2322 : Seg16.relationRow2322 rho) (r2323 : Seg16.relationRow2323 rho) :
    seg16RPe7 rho = seg16RPe8 rho * rho 14071 ∧
    seg16RIl7 rho = seg16RIl8 rho + seg16RPe8 rho * (1 - rho 14071) -
      seg16RIl8 rho * (seg16RPe8 rho * (1 - rho 14071)) := by
  constructor
  · exact seg16RStep7Pe rho r2323
  · rw [seg16RStep7Acc rho, seg16RStep7L rho r2321, seg16RStep7IlMul rho r2322, seg16RStep7L rho r2321]

theorem seg16_r_chunk7 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 8 (seg16RPeState rho 8) (seg16RIlState rho 8) := by
  have htail := seg16_r_chunk6 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart29 at p29
  rcases p29 with ⟨_, r2321, r2322, r2323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 7 ≤ n → n < 8 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 7 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep7 rho r2321 r2322 r2323
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 7 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
