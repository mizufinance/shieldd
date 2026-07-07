import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk190

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep191L (rho : Nat -> Seg34.F) (r1947 : Seg34.relationRow1947 rho) :
    rho 33222 = seg34RPe192 rho * (1 - rho 32955) := by
  unfold Seg34.relationRow1947 at r1947
  unfold seg34RPe192
  linear_combination -r1947

theorem seg34RStep191IlMul (rho : Nat -> Seg34.F) (r1948 : Seg34.relationRow1948 rho) :
    rho 33223 = seg34RIl192 rho * (rho 33222) := by
  unfold Seg34.relationRow1948 at r1948
  rw [seg34RStep191IlLc rho] at r1948
  linear_combination -r1948

theorem seg34RStep191Acc (rho : Nat -> Seg34.F) :
    seg34RIl191 rho = seg34RIl192 rho + (rho 33222) - (rho 33223) := by
  have hstate : seg34RIl191 rho = seg34RIl192 rho + seg34RIlAtom31 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom31
  ring

theorem seg34RStep191Pe (rho : Nat -> Seg34.F) (r1949 : Seg34.relationRow1949 rho) :
    seg34RPe191 rho = seg34RPe192 rho * rho 32955 := by
  unfold Seg34.relationRow1949 at r1949
  unfold seg34RPe191 seg34RPe192
  linear_combination -r1949

theorem seg34RStep191 (rho : Nat -> Seg34.F) (r1947 : Seg34.relationRow1947 rho) (r1948 : Seg34.relationRow1948 rho) (r1949 : Seg34.relationRow1949 rho) :
    seg34RPe191 rho = seg34RPe192 rho * rho 32955 ∧
    seg34RIl191 rho = seg34RIl192 rho + seg34RPe192 rho * (1 - rho 32955) -
      seg34RIl192 rho * (seg34RPe192 rho * (1 - rho 32955)) := by
  constructor
  · exact seg34RStep191Pe rho r1949
  · rw [seg34RStep191Acc rho, seg34RStep191L rho r1947, seg34RStep191IlMul rho r1948, seg34RStep191L rho r1947]

theorem seg34_r_chunk191 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 192 (seg34RPeState rho 192) (seg34RIlState rho 192) := by
  have htail := seg34_r_chunk190 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1947, r1948, r1949, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 191 ≤ n → n < 192 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 191 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep191 rho r1947 r1948 r1949
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 191 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
