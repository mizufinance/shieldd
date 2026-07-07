import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk202

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep203L (rho : Nat -> Seg34.F) (r1923 : Seg34.relationRow1923 rho) :
    rho 33198 = seg34RPe204 rho * (1 - rho 32967) := by
  unfold Seg34.relationRow1923 at r1923
  unfold seg34RPe204
  linear_combination -r1923

theorem seg34RStep203IlMul (rho : Nat -> Seg34.F) (r1924 : Seg34.relationRow1924 rho) :
    rho 33199 = seg34RIl204 rho * (rho 33198) := by
  unfold Seg34.relationRow1924 at r1924
  rw [seg34RStep203IlLc rho] at r1924
  linear_combination -r1924

theorem seg34RStep203Acc (rho : Nat -> Seg34.F) :
    seg34RIl203 rho = seg34RIl204 rho + (rho 33198) - (rho 33199) := by
  have hstate : seg34RIl203 rho = seg34RIl204 rho + seg34RIlAtom25 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom25
  ring

theorem seg34RStep203Pe (rho : Nat -> Seg34.F) (r1925 : Seg34.relationRow1925 rho) :
    seg34RPe203 rho = seg34RPe204 rho * rho 32967 := by
  unfold Seg34.relationRow1925 at r1925
  unfold seg34RPe203 seg34RPe204
  linear_combination -r1925

theorem seg34RStep203 (rho : Nat -> Seg34.F) (r1923 : Seg34.relationRow1923 rho) (r1924 : Seg34.relationRow1924 rho) (r1925 : Seg34.relationRow1925 rho) :
    seg34RPe203 rho = seg34RPe204 rho * rho 32967 ∧
    seg34RIl203 rho = seg34RIl204 rho + seg34RPe204 rho * (1 - rho 32967) -
      seg34RIl204 rho * (seg34RPe204 rho * (1 - rho 32967)) := by
  constructor
  · exact seg34RStep203Pe rho r1925
  · rw [seg34RStep203Acc rho, seg34RStep203L rho r1923, seg34RStep203IlMul rho r1924, seg34RStep203L rho r1923]

theorem seg34_r_chunk203 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 204 (seg34RPeState rho 204) (seg34RIlState rho 204) := by
  have htail := seg34_r_chunk202 rho h k hq4
  unfold Seg34.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg34.relationPart24 at p24
  rcases p24 with ⟨_, _, _, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 203 ≤ n → n < 204 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 203 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep203 rho r1923 r1924 r1925
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 203 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
