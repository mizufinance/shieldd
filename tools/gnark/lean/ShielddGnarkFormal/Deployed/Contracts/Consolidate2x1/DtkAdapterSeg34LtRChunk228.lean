import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk227

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep228L (rho : Nat -> Seg34.F) (r1872 : Seg34.relationRow1872 rho) :
    rho 33147 = seg34RPe229 rho * (1 - rho 32992) := by
  unfold Seg34.relationRow1872 at r1872
  unfold seg34RPe229
  linear_combination -r1872

theorem seg34RStep228IlMul (rho : Nat -> Seg34.F) (r1873 : Seg34.relationRow1873 rho) :
    rho 33148 = seg34RIl229 rho * (rho 33147) := by
  unfold Seg34.relationRow1873 at r1873
  rw [seg34RIl229Atoms rho]
  unfold seg34RIlAtom0 seg34RIlAtom1 seg34RIlAtom10 seg34RIlAtom2 seg34RIlAtom3 seg34RIlAtom4 seg34RIlAtom5 seg34RIlAtom6 seg34RIlAtom7 seg34RIlAtom8 seg34RIlAtom9
  linear_combination -r1873

theorem seg34RStep228Acc (rho : Nat -> Seg34.F) :
    seg34RIl228 rho = seg34RIl229 rho + (rho 33147) - (rho 33148) := by
  have hstate : seg34RIl228 rho = seg34RIl229 rho + seg34RIlAtom11 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom11
  ring

theorem seg34RStep228Pe (rho : Nat -> Seg34.F) (r1874 : Seg34.relationRow1874 rho) :
    seg34RPe228 rho = seg34RPe229 rho * rho 32992 := by
  unfold Seg34.relationRow1874 at r1874
  unfold seg34RPe228 seg34RPe229
  linear_combination -r1874

theorem seg34RStep228 (rho : Nat -> Seg34.F) (r1872 : Seg34.relationRow1872 rho) (r1873 : Seg34.relationRow1873 rho) (r1874 : Seg34.relationRow1874 rho) :
    seg34RPe228 rho = seg34RPe229 rho * rho 32992 ∧
    seg34RIl228 rho = seg34RIl229 rho + seg34RPe229 rho * (1 - rho 32992) -
      seg34RIl229 rho * (seg34RPe229 rho * (1 - rho 32992)) := by
  constructor
  · exact seg34RStep228Pe rho r1874
  · rw [seg34RStep228Acc rho, seg34RStep228L rho r1872, seg34RStep228IlMul rho r1873, seg34RStep228L rho r1872]

theorem seg34_r_chunk228 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 229 (seg34RPeState rho 229) (seg34RIlState rho 229) := by
  have htail := seg34_r_chunk227 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1872, r1873, r1874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 228 ≤ n → n < 229 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 228 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep228 rho r1872 r1873 r1874
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 228 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
