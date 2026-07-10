import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5LtRChunk190

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5RStep191L (rho : Nat -> Seg5.F) (r1947 : Seg5.relationRow1947 rho) :
    rho 1645 = seg5RPe192 rho * (1 - rho 1378) := by
  unfold Seg5.relationRow1947 at r1947
  unfold seg5RPe192
  linear_combination -r1947

theorem seg5RStep191IlMul (rho : Nat -> Seg5.F) (r1948 : Seg5.relationRow1948 rho) :
    rho 1646 = seg5RIl192 rho * (rho 1645) := by
  unfold Seg5.relationRow1948 at r1948
  rw [seg5RStep191IlLc rho] at r1948
  linear_combination -r1948

theorem seg5RStep191Acc (rho : Nat -> Seg5.F) :
    seg5RIl191 rho = seg5RIl192 rho + (rho 1645) - (rho 1646) := by
  have hstate : seg5RIl191 rho = seg5RIl192 rho + seg5RIlAtom31 rho := by rfl
  rw [hstate]
  unfold seg5RIlAtom31
  ring

theorem seg5RStep191Pe (rho : Nat -> Seg5.F) (r1949 : Seg5.relationRow1949 rho) :
    seg5RPe191 rho = seg5RPe192 rho * rho 1378 := by
  unfold Seg5.relationRow1949 at r1949
  unfold seg5RPe191 seg5RPe192
  linear_combination -r1949

theorem seg5RStep191 (rho : Nat -> Seg5.F) (r1947 : Seg5.relationRow1947 rho) (r1948 : Seg5.relationRow1948 rho) (r1949 : Seg5.relationRow1949 rho) :
    seg5RPe191 rho = seg5RPe192 rho * rho 1378 ∧
    seg5RIl191 rho = seg5RIl192 rho + seg5RPe192 rho * (1 - rho 1378) -
      seg5RIl192 rho * (seg5RPe192 rho * (1 - rho 1378)) := by
  constructor
  · exact seg5RStep191Pe rho r1949
  · rw [seg5RStep191Acc rho, seg5RStep191L rho r1947, seg5RStep191IlMul rho r1948, seg5RStep191L rho r1947]

theorem seg5_r_chunk191 (rho : Nat -> Seg5.F) (h : Seg5.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg5.F) (0 : Seg5.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k) 192 (seg5RPeState rho 192) (seg5RIlState rho 192) := by
  have htail := seg5_r_chunk190 rho h k hq4
  unfold Seg5.relation at h
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
  unfold Seg5.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1947, r1948, r1949, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 191 ≤ n → n < 192 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg5RPeState rho n = seg5RPeState rho (n + 1) * rho (1187 + n) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) + seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) -
          seg5RIlState rho (n + 1) * (seg5RPeState rho (n + 1) * (1 - rho (1187 + n)))
      else
        seg5RPeState rho n = seg5RPeState rho (n + 1) * (1 - rho (1187 + n)) ∧
        seg5RIlState rho n = seg5RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 191 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg5RStep191 rho r1947 r1948 r1949
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg5IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg5IvkBits rho) (rho 10) k)
    (seg5RPeState rho) (seg5RIlState rho) 191 1
    (by intro n hnlo hnhi; have key := seg5IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
