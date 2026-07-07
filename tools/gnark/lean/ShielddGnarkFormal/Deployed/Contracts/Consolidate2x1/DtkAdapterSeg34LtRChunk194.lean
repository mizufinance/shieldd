import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk193

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep194L (rho : Nat -> Seg34.F) (r1940 : Seg34.relationRow1940 rho) :
    rho 33215 = seg34RPe195 rho * (1 - rho 32958) := by
  unfold Seg34.relationRow1940 at r1940
  unfold seg34RPe195
  linear_combination -r1940

theorem seg34RStep194IlMul (rho : Nat -> Seg34.F) (r1941 : Seg34.relationRow1941 rho) :
    rho 33216 = seg34RIl195 rho * (rho 33215) := by
  unfold Seg34.relationRow1941 at r1941
  rw [seg34RStep194IlLc rho] at r1941
  linear_combination -r1941

theorem seg34RStep194Acc (rho : Nat -> Seg34.F) :
    seg34RIl194 rho = seg34RIl195 rho + (rho 33215) - (rho 33216) := by
  have hstate : seg34RIl194 rho = seg34RIl195 rho + seg34RIlAtom29 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom29
  ring

theorem seg34RStep194Pe (rho : Nat -> Seg34.F) (r1942 : Seg34.relationRow1942 rho) :
    seg34RPe194 rho = seg34RPe195 rho * rho 32958 := by
  unfold Seg34.relationRow1942 at r1942
  unfold seg34RPe194 seg34RPe195
  linear_combination -r1942

theorem seg34RStep194 (rho : Nat -> Seg34.F) (r1940 : Seg34.relationRow1940 rho) (r1941 : Seg34.relationRow1941 rho) (r1942 : Seg34.relationRow1942 rho) :
    seg34RPe194 rho = seg34RPe195 rho * rho 32958 ∧
    seg34RIl194 rho = seg34RIl195 rho + seg34RPe195 rho * (1 - rho 32958) -
      seg34RIl195 rho * (seg34RPe195 rho * (1 - rho 32958)) := by
  constructor
  · exact seg34RStep194Pe rho r1942
  · rw [seg34RStep194Acc rho, seg34RStep194L rho r1940, seg34RStep194IlMul rho r1941, seg34RStep194L rho r1940]

theorem seg34_r_chunk194 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 195 (seg34RPeState rho 195) (seg34RIlState rho 195) := by
  have htail := seg34_r_chunk193 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1940, r1941, r1942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 194 ≤ n → n < 195 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 194 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep194 rho r1940 r1941 r1942
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 194 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
