import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk216

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep217L (rho : Nat -> Seg34.F) (r1897 : Seg34.relationRow1897 rho) :
    rho 33172 = seg34RPe218 rho * (1 - rho 32981) := by
  unfold Seg34.relationRow1897 at r1897
  unfold seg34RPe218
  linear_combination -r1897

theorem seg34RStep217IlMul (rho : Nat -> Seg34.F) (r1898 : Seg34.relationRow1898 rho) :
    rho 33173 = seg34RIl218 rho * (rho 33172) := by
  unfold Seg34.relationRow1898 at r1898
  rw [seg34RStep217IlLc rho] at r1898
  linear_combination -r1898

theorem seg34RStep217Acc (rho : Nat -> Seg34.F) :
    seg34RIl217 rho = seg34RIl218 rho + (rho 33172) - (rho 33173) := by
  have hstate : seg34RIl217 rho = seg34RIl218 rho + seg34RIlAtom19 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom19
  ring

theorem seg34RStep217Pe (rho : Nat -> Seg34.F) (r1899 : Seg34.relationRow1899 rho) :
    seg34RPe217 rho = seg34RPe218 rho * rho 32981 := by
  unfold Seg34.relationRow1899 at r1899
  unfold seg34RPe217 seg34RPe218
  linear_combination -r1899

theorem seg34RStep217 (rho : Nat -> Seg34.F) (r1897 : Seg34.relationRow1897 rho) (r1898 : Seg34.relationRow1898 rho) (r1899 : Seg34.relationRow1899 rho) :
    seg34RPe217 rho = seg34RPe218 rho * rho 32981 ∧
    seg34RIl217 rho = seg34RIl218 rho + seg34RPe218 rho * (1 - rho 32981) -
      seg34RIl218 rho * (seg34RPe218 rho * (1 - rho 32981)) := by
  constructor
  · exact seg34RStep217Pe rho r1899
  · rw [seg34RStep217Acc rho, seg34RStep217L rho r1897, seg34RStep217IlMul rho r1898, seg34RStep217L rho r1897]

theorem seg34_r_chunk217 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 218 (seg34RPeState rho 218) (seg34RIlState rho 218) := by
  have htail := seg34_r_chunk216 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1897, r1898, r1899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 217 ≤ n → n < 218 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 217 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep217 rho r1897 r1898 r1899
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 217 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
