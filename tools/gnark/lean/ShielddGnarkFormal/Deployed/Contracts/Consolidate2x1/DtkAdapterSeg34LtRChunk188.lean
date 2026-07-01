import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk187

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep188L (rho : Nat -> Seg34.F) (r1952 : Seg34.relationRow1952 rho) :
    rho 33227 = seg34RPe189 rho * (1 - rho 32952) := by
  unfold Seg34.relationRow1952 at r1952
  unfold seg34RPe189
  linear_combination -r1952

theorem seg34RStep188IlMul (rho : Nat -> Seg34.F) (r1953 : Seg34.relationRow1953 rho) :
    rho 33228 = seg34RIl189 rho * (rho 33227) := by
  unfold Seg34.relationRow1953 at r1953
  rw [seg34RStep188IlLc rho] at r1953
  linear_combination -r1953

theorem seg34RStep188Acc (rho : Nat -> Seg34.F) :
    seg34RIl188 rho = seg34RIl189 rho + (rho 33227) - (rho 33228) := by
  have hstate : seg34RIl188 rho = seg34RIl189 rho + seg34RIlAtom32 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom32
  ring

theorem seg34RStep188Pe (rho : Nat -> Seg34.F) (r1954 : Seg34.relationRow1954 rho) :
    seg34RPe188 rho = seg34RPe189 rho * rho 32952 := by
  unfold Seg34.relationRow1954 at r1954
  unfold seg34RPe188 seg34RPe189
  linear_combination -r1954

theorem seg34RStep188 (rho : Nat -> Seg34.F) (r1952 : Seg34.relationRow1952 rho) (r1953 : Seg34.relationRow1953 rho) (r1954 : Seg34.relationRow1954 rho) :
    seg34RPe188 rho = seg34RPe189 rho * rho 32952 ∧
    seg34RIl188 rho = seg34RIl189 rho + seg34RPe189 rho * (1 - rho 32952) -
      seg34RIl189 rho * (seg34RPe189 rho * (1 - rho 32952)) := by
  constructor
  · exact seg34RStep188Pe rho r1954
  · rw [seg34RStep188Acc rho, seg34RStep188L rho r1952, seg34RStep188IlMul rho r1953, seg34RStep188L rho r1952]

theorem seg34_r_chunk188 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 189 (seg34RPeState rho 189) (seg34RIlState rho 189) := by
  have htail := seg34_r_chunk187 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 188 ≤ n → n < 189 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 188 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep188 rho r1952 r1953 r1954
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 188 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
