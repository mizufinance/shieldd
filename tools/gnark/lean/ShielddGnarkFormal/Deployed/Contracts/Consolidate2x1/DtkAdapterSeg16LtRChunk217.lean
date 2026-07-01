import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk216

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep217L (rho : Nat -> Seg16.F) (r1897 : Seg16.relationRow1897 rho) :
    rho 14472 = seg16RPe218 rho * (1 - rho 14281) := by
  unfold Seg16.relationRow1897 at r1897
  unfold seg16RPe218
  linear_combination -r1897

theorem seg16RStep217IlMul (rho : Nat -> Seg16.F) (r1898 : Seg16.relationRow1898 rho) :
    rho 14473 = seg16RIl218 rho * (rho 14472) := by
  unfold Seg16.relationRow1898 at r1898
  rw [seg16RStep217IlLc rho] at r1898
  linear_combination -r1898

theorem seg16RStep217Acc (rho : Nat -> Seg16.F) :
    seg16RIl217 rho = seg16RIl218 rho + (rho 14472) - (rho 14473) := by
  have hstate : seg16RIl217 rho = seg16RIl218 rho + seg16RIlAtom19 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom19
  ring

theorem seg16RStep217Pe (rho : Nat -> Seg16.F) (r1899 : Seg16.relationRow1899 rho) :
    seg16RPe217 rho = seg16RPe218 rho * rho 14281 := by
  unfold Seg16.relationRow1899 at r1899
  unfold seg16RPe217 seg16RPe218
  linear_combination -r1899

theorem seg16RStep217 (rho : Nat -> Seg16.F) (r1897 : Seg16.relationRow1897 rho) (r1898 : Seg16.relationRow1898 rho) (r1899 : Seg16.relationRow1899 rho) :
    seg16RPe217 rho = seg16RPe218 rho * rho 14281 ∧
    seg16RIl217 rho = seg16RIl218 rho + seg16RPe218 rho * (1 - rho 14281) -
      seg16RIl218 rho * (seg16RPe218 rho * (1 - rho 14281)) := by
  constructor
  · exact seg16RStep217Pe rho r1899
  · rw [seg16RStep217Acc rho, seg16RStep217L rho r1897, seg16RStep217IlMul rho r1898, seg16RStep217L rho r1897]

theorem seg16_r_chunk217 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 218 (seg16RPeState rho 218) (seg16RIlState rho 218) := by
  have htail := seg16_r_chunk216 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1897, r1898, r1899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 217 ≤ n → n < 218 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 217 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep217 rho r1897 r1898 r1899
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 217 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
