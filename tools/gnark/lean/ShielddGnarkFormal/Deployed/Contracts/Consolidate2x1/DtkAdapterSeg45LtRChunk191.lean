import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk190

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep191L (rho : Nat -> Seg45.F) (r1947 : Seg45.relationRow1947 rho) :
    rho 40178 = seg45RPe192 rho * (1 - rho 39911) := by
  unfold Seg45.relationRow1947 at r1947
  unfold seg45RPe192
  linear_combination -r1947

theorem seg45RStep191IlMul (rho : Nat -> Seg45.F) (r1948 : Seg45.relationRow1948 rho) :
    rho 40179 = seg45RIl192 rho * (rho 40178) := by
  unfold Seg45.relationRow1948 at r1948
  rw [seg45RStep191IlLc rho] at r1948
  linear_combination -r1948

theorem seg45RStep191Acc (rho : Nat -> Seg45.F) :
    seg45RIl191 rho = seg45RIl192 rho + (rho 40178) - (rho 40179) := by
  have hstate : seg45RIl191 rho = seg45RIl192 rho + seg45RIlAtom31 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom31
  ring

theorem seg45RStep191Pe (rho : Nat -> Seg45.F) (r1949 : Seg45.relationRow1949 rho) :
    seg45RPe191 rho = seg45RPe192 rho * rho 39911 := by
  unfold Seg45.relationRow1949 at r1949
  unfold seg45RPe191 seg45RPe192
  linear_combination -r1949

theorem seg45RStep191 (rho : Nat -> Seg45.F) (r1947 : Seg45.relationRow1947 rho) (r1948 : Seg45.relationRow1948 rho) (r1949 : Seg45.relationRow1949 rho) :
    seg45RPe191 rho = seg45RPe192 rho * rho 39911 ∧
    seg45RIl191 rho = seg45RIl192 rho + seg45RPe192 rho * (1 - rho 39911) -
      seg45RIl192 rho * (seg45RPe192 rho * (1 - rho 39911)) := by
  constructor
  · exact seg45RStep191Pe rho r1949
  · rw [seg45RStep191Acc rho, seg45RStep191L rho r1947, seg45RStep191IlMul rho r1948, seg45RStep191L rho r1947]

theorem seg45_r_chunk191 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 192 (seg45RPeState rho 192) (seg45RIlState rho 192) := by
  have htail := seg45_r_chunk190 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1947, r1948, r1949, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 191 ≤ n → n < 192 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 191 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep191 rho r1947 r1948 r1949
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 191 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
