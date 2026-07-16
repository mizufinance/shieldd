import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk190

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep191L (rho : Nat -> Seg6.F) (r1947 : Seg6.relationRow1947 rho) :
    rho 2348 = seg6RPe192 rho * (1 - rho 2081) := by
  unfold Seg6.relationRow1947 at r1947
  unfold seg6RPe192
  linear_combination -r1947

theorem seg6RStep191IlMul (rho : Nat -> Seg6.F) (r1948 : Seg6.relationRow1948 rho) :
    rho 2349 = seg6RIl192 rho * (rho 2348) := by
  unfold Seg6.relationRow1948 at r1948
  rw [seg6RStep191IlLc rho] at r1948
  linear_combination -r1948

theorem seg6RStep191Acc (rho : Nat -> Seg6.F) :
    seg6RIl191 rho = seg6RIl192 rho + (rho 2348) - (rho 2349) := by
  have hstate : seg6RIl191 rho = seg6RIl192 rho + seg6RIlAtom31 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom31
  ring

theorem seg6RStep191Pe (rho : Nat -> Seg6.F) (r1949 : Seg6.relationRow1949 rho) :
    seg6RPe191 rho = seg6RPe192 rho * rho 2081 := by
  unfold Seg6.relationRow1949 at r1949
  unfold seg6RPe191 seg6RPe192
  linear_combination -r1949

theorem seg6RStep191 (rho : Nat -> Seg6.F) (r1947 : Seg6.relationRow1947 rho) (r1948 : Seg6.relationRow1948 rho) (r1949 : Seg6.relationRow1949 rho) :
    seg6RPe191 rho = seg6RPe192 rho * rho 2081 ∧
    seg6RIl191 rho = seg6RIl192 rho + seg6RPe192 rho * (1 - rho 2081) -
      seg6RIl192 rho * (seg6RPe192 rho * (1 - rho 2081)) := by
  constructor
  · exact seg6RStep191Pe rho r1949
  · rw [seg6RStep191Acc rho, seg6RStep191L rho r1947, seg6RStep191IlMul rho r1948, seg6RStep191L rho r1947]

theorem seg6_r_chunk191 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 192 (seg6RPeState rho 192) (seg6RIlState rho 192) := by
  have htail := seg6_r_chunk190 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1947, r1948, r1949, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 191 ≤ n → n < 192 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 191 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep191 rho r1947 r1948 r1949
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 191 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
