import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk186

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep187L (rho : Nat -> Seg34.F) (r1955 : Seg34.relationRow1955 rho) :
    rho 33230 = seg34RPe188 rho * (1 - rho 32951) := by
  unfold Seg34.relationRow1955 at r1955
  unfold seg34RPe188
  linear_combination -r1955

theorem seg34RStep187IlMul (rho : Nat -> Seg34.F) (r1956 : Seg34.relationRow1956 rho) :
    rho 33231 = seg34RIl188 rho * (rho 33230) := by
  unfold Seg34.relationRow1956 at r1956
  rw [seg34RStep187IlLc rho] at r1956
  linear_combination -r1956

theorem seg34RStep187Acc (rho : Nat -> Seg34.F) :
    seg34RIl187 rho = seg34RIl188 rho + (rho 33230) - (rho 33231) := by
  have hstate : seg34RIl187 rho = seg34RIl188 rho + seg34RIlAtom33 rho + (-1 : Seg34.F) * seg34RIlAtom34 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom33 seg34RIlAtom34
  ring

theorem seg34RStep187Pe (rho : Nat -> Seg34.F) (r1957 : Seg34.relationRow1957 rho) :
    seg34RPe187 rho = seg34RPe188 rho * rho 32951 := by
  unfold Seg34.relationRow1957 at r1957
  unfold seg34RPe187 seg34RPe188
  linear_combination -r1957

theorem seg34RStep187 (rho : Nat -> Seg34.F) (r1955 : Seg34.relationRow1955 rho) (r1956 : Seg34.relationRow1956 rho) (r1957 : Seg34.relationRow1957 rho) :
    seg34RPe187 rho = seg34RPe188 rho * rho 32951 ∧
    seg34RIl187 rho = seg34RIl188 rho + seg34RPe188 rho * (1 - rho 32951) -
      seg34RIl188 rho * (seg34RPe188 rho * (1 - rho 32951)) := by
  constructor
  · exact seg34RStep187Pe rho r1957
  · rw [seg34RStep187Acc rho, seg34RStep187L rho r1955, seg34RStep187IlMul rho r1956, seg34RStep187L rho r1955]

theorem seg34_r_chunk187 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 188 (seg34RPeState rho 188) (seg34RIlState rho 188) := by
  have htail := seg34_r_chunk186 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1955, r1956, r1957, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 187 ≤ n → n < 188 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 187 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep187 rho r1955 r1956 r1957
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 187 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
