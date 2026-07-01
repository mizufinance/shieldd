import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk190

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep191L (rho : Nat -> Seg16.F) (r1947 : Seg16.relationRow1947 rho) :
    rho 14522 = seg16RPe192 rho * (1 - rho 14255) := by
  unfold Seg16.relationRow1947 at r1947
  unfold seg16RPe192
  linear_combination -r1947

theorem seg16RStep191IlMul (rho : Nat -> Seg16.F) (r1948 : Seg16.relationRow1948 rho) :
    rho 14523 = seg16RIl192 rho * (rho 14522) := by
  unfold Seg16.relationRow1948 at r1948
  rw [seg16RStep191IlLc rho] at r1948
  linear_combination -r1948

theorem seg16RStep191Acc (rho : Nat -> Seg16.F) :
    seg16RIl191 rho = seg16RIl192 rho + (rho 14522) - (rho 14523) := by
  have hstate : seg16RIl191 rho = seg16RIl192 rho + seg16RIlAtom31 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom31
  ring

theorem seg16RStep191Pe (rho : Nat -> Seg16.F) (r1949 : Seg16.relationRow1949 rho) :
    seg16RPe191 rho = seg16RPe192 rho * rho 14255 := by
  unfold Seg16.relationRow1949 at r1949
  unfold seg16RPe191 seg16RPe192
  linear_combination -r1949

theorem seg16RStep191 (rho : Nat -> Seg16.F) (r1947 : Seg16.relationRow1947 rho) (r1948 : Seg16.relationRow1948 rho) (r1949 : Seg16.relationRow1949 rho) :
    seg16RPe191 rho = seg16RPe192 rho * rho 14255 ∧
    seg16RIl191 rho = seg16RIl192 rho + seg16RPe192 rho * (1 - rho 14255) -
      seg16RIl192 rho * (seg16RPe192 rho * (1 - rho 14255)) := by
  constructor
  · exact seg16RStep191Pe rho r1949
  · rw [seg16RStep191Acc rho, seg16RStep191L rho r1947, seg16RStep191IlMul rho r1948, seg16RStep191L rho r1947]

theorem seg16_r_chunk191 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 192 (seg16RPeState rho 192) (seg16RIlState rho 192) := by
  have htail := seg16_r_chunk190 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1947, r1948, r1949, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 191 ≤ n → n < 192 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 191 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep191 rho r1947 r1948 r1949
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 191 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
