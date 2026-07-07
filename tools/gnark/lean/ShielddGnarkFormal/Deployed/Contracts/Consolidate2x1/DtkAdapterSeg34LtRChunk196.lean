import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk195

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep196L (rho : Nat -> Seg34.F) (r1936 : Seg34.relationRow1936 rho) :
    rho 33211 = seg34RPe197 rho * (1 - rho 32960) := by
  unfold Seg34.relationRow1936 at r1936
  unfold seg34RPe197
  linear_combination -r1936

theorem seg34RStep196IlMul (rho : Nat -> Seg34.F) (r1937 : Seg34.relationRow1937 rho) :
    rho 33212 = seg34RIl197 rho * (rho 33211) := by
  unfold Seg34.relationRow1937 at r1937
  rw [seg34RStep196IlLc rho] at r1937
  linear_combination -r1937

theorem seg34RStep196Acc (rho : Nat -> Seg34.F) :
    seg34RIl196 rho = seg34RIl197 rho + (rho 33211) - (rho 33212) := by
  have hstate : seg34RIl196 rho = seg34RIl197 rho + seg34RIlAtom28 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom28
  ring

theorem seg34RStep196Pe (rho : Nat -> Seg34.F) (r1938 : Seg34.relationRow1938 rho) :
    seg34RPe196 rho = seg34RPe197 rho * rho 32960 := by
  unfold Seg34.relationRow1938 at r1938
  unfold seg34RPe196 seg34RPe197
  linear_combination -r1938

theorem seg34RStep196 (rho : Nat -> Seg34.F) (r1936 : Seg34.relationRow1936 rho) (r1937 : Seg34.relationRow1937 rho) (r1938 : Seg34.relationRow1938 rho) :
    seg34RPe196 rho = seg34RPe197 rho * rho 32960 ∧
    seg34RIl196 rho = seg34RIl197 rho + seg34RPe197 rho * (1 - rho 32960) -
      seg34RIl197 rho * (seg34RPe197 rho * (1 - rho 32960)) := by
  constructor
  · exact seg34RStep196Pe rho r1938
  · rw [seg34RStep196Acc rho, seg34RStep196L rho r1936, seg34RStep196IlMul rho r1937, seg34RStep196L rho r1936]

theorem seg34_r_chunk196 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 197 (seg34RPeState rho 197) (seg34RIlState rho 197) := by
  have htail := seg34_r_chunk195 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1936, r1937, r1938, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 196 ≤ n → n < 197 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 196 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep196 rho r1936 r1937 r1938
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 196 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
