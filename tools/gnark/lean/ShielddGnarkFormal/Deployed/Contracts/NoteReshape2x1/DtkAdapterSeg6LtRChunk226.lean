import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk225

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep226L (rho : Nat -> Seg6.F) (r1876 : Seg6.relationRow1876 rho) :
    rho 2277 = seg6RPe227 rho * (1 - rho 2116) := by
  unfold Seg6.relationRow1876 at r1876
  unfold seg6RPe227
  linear_combination -r1876

theorem seg6RStep226IlMul (rho : Nat -> Seg6.F) (r1877 : Seg6.relationRow1877 rho) :
    rho 2278 = seg6RIl227 rho * (rho 2277) := by
  unfold Seg6.relationRow1877 at r1877
  rw [seg6RIl227Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom10 seg6RIlAtom11 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1877

theorem seg6RStep226Acc (rho : Nat -> Seg6.F) :
    seg6RIl226 rho = seg6RIl227 rho + (rho 2277) - (rho 2278) := by
  have hstate : seg6RIl226 rho = seg6RIl227 rho + seg6RIlAtom12 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom12
  ring

theorem seg6RStep226Pe (rho : Nat -> Seg6.F) (r1878 : Seg6.relationRow1878 rho) :
    seg6RPe226 rho = seg6RPe227 rho * rho 2116 := by
  unfold Seg6.relationRow1878 at r1878
  unfold seg6RPe226 seg6RPe227
  linear_combination -r1878

theorem seg6RStep226 (rho : Nat -> Seg6.F) (r1876 : Seg6.relationRow1876 rho) (r1877 : Seg6.relationRow1877 rho) (r1878 : Seg6.relationRow1878 rho) :
    seg6RPe226 rho = seg6RPe227 rho * rho 2116 ∧
    seg6RIl226 rho = seg6RIl227 rho + seg6RPe227 rho * (1 - rho 2116) -
      seg6RIl227 rho * (seg6RPe227 rho * (1 - rho 2116)) := by
  constructor
  · exact seg6RStep226Pe rho r1878
  · rw [seg6RStep226Acc rho, seg6RStep226L rho r1876, seg6RStep226IlMul rho r1877, seg6RStep226L rho r1876]

theorem seg6_r_chunk226 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 227 (seg6RPeState rho 227) (seg6RIlState rho 227) := by
  have htail := seg6_r_chunk225 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1876, r1877, r1878, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 226 ≤ n → n < 227 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 226 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep226 rho r1876 r1877 r1878
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 226 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
