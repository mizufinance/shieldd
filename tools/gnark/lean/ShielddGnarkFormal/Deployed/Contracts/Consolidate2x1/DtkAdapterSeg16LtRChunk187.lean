import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk186

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep187L (rho : Nat -> Seg16.F) (r1955 : Seg16.relationRow1955 rho) :
    rho 14530 = seg16RPe188 rho * (1 - rho 14251) := by
  unfold Seg16.relationRow1955 at r1955
  unfold seg16RPe188
  linear_combination -r1955

theorem seg16RStep187IlMul (rho : Nat -> Seg16.F) (r1956 : Seg16.relationRow1956 rho) :
    rho 14531 = seg16RIl188 rho * (rho 14530) := by
  unfold Seg16.relationRow1956 at r1956
  rw [seg16RStep187IlLc rho] at r1956
  linear_combination -r1956

theorem seg16RStep187Acc (rho : Nat -> Seg16.F) :
    seg16RIl187 rho = seg16RIl188 rho + (rho 14530) - (rho 14531) := by
  have hstate : seg16RIl187 rho = seg16RIl188 rho + seg16RIlAtom33 rho + (-1 : Seg16.F) * seg16RIlAtom34 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom33 seg16RIlAtom34
  ring

theorem seg16RStep187Pe (rho : Nat -> Seg16.F) (r1957 : Seg16.relationRow1957 rho) :
    seg16RPe187 rho = seg16RPe188 rho * rho 14251 := by
  unfold Seg16.relationRow1957 at r1957
  unfold seg16RPe187 seg16RPe188
  linear_combination -r1957

theorem seg16RStep187 (rho : Nat -> Seg16.F) (r1955 : Seg16.relationRow1955 rho) (r1956 : Seg16.relationRow1956 rho) (r1957 : Seg16.relationRow1957 rho) :
    seg16RPe187 rho = seg16RPe188 rho * rho 14251 ∧
    seg16RIl187 rho = seg16RIl188 rho + seg16RPe188 rho * (1 - rho 14251) -
      seg16RIl188 rho * (seg16RPe188 rho * (1 - rho 14251)) := by
  constructor
  · exact seg16RStep187Pe rho r1957
  · rw [seg16RStep187Acc rho, seg16RStep187L rho r1955, seg16RStep187IlMul rho r1956, seg16RStep187L rho r1955]

theorem seg16_r_chunk187 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 188 (seg16RPeState rho 188) (seg16RIlState rho 188) := by
  have htail := seg16_r_chunk186 rho h k hq4
  unfold Seg16.relation at h
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
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1955, r1956, r1957, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 187 ≤ n → n < 188 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 187 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep187 rho r1955 r1956 r1957
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 187 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
