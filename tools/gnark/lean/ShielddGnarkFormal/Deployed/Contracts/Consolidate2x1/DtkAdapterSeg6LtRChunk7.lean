import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk6

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep7L (rho : Nat -> Seg6.F) (r2321 : Seg6.relationRow2321 rho) :
    rho 2722 = seg6RPe8 rho * (1 - rho 1897) := by
  unfold Seg6.relationRow2321 at r2321
  unfold seg6RPe8
  linear_combination -r2321

theorem seg6RStep7IlMul (rho : Nat -> Seg6.F) (r2322 : Seg6.relationRow2322 rho) :
    rho 2723 = seg6RIl8 rho * (rho 2722) := by
  unfold Seg6.relationRow2322 at r2322
  rw [seg6RStep7IlLc rho] at r2322
  linear_combination -r2322

theorem seg6RStep7Acc (rho : Nat -> Seg6.F) :
    seg6RIl7 rho = seg6RIl8 rho + (rho 2722) - (rho 2723) := by
  have hstate : seg6RIl7 rho = seg6RIl8 rho + seg6RIlAtom132 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom132
  ring

theorem seg6RStep7Pe (rho : Nat -> Seg6.F) (r2323 : Seg6.relationRow2323 rho) :
    seg6RPe7 rho = seg6RPe8 rho * rho 1897 := by
  unfold Seg6.relationRow2323 at r2323
  unfold seg6RPe7 seg6RPe8
  linear_combination -r2323

theorem seg6RStep7 (rho : Nat -> Seg6.F) (r2321 : Seg6.relationRow2321 rho) (r2322 : Seg6.relationRow2322 rho) (r2323 : Seg6.relationRow2323 rho) :
    seg6RPe7 rho = seg6RPe8 rho * rho 1897 ∧
    seg6RIl7 rho = seg6RIl8 rho + seg6RPe8 rho * (1 - rho 1897) -
      seg6RIl8 rho * (seg6RPe8 rho * (1 - rho 1897)) := by
  constructor
  · exact seg6RStep7Pe rho r2323
  · rw [seg6RStep7Acc rho, seg6RStep7L rho r2321, seg6RStep7IlMul rho r2322, seg6RStep7L rho r2321]

theorem seg6_r_chunk7 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 8 (seg6RPeState rho 8) (seg6RIlState rho 8) := by
  have htail := seg6_r_chunk6 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p29,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart29 at p29
  rcases p29 with ⟨_, r2321, r2322, r2323, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 7 ≤ n → n < 8 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 7 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep7 rho r2321 r2322 r2323
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 7 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
