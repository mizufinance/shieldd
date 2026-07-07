import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk225

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep226L (rho : Nat -> Seg16.F) (r1876 : Seg16.relationRow1876 rho) :
    rho 14451 = seg16RPe227 rho * (1 - rho 14290) := by
  unfold Seg16.relationRow1876 at r1876
  unfold seg16RPe227
  linear_combination -r1876

theorem seg16RStep226IlMul (rho : Nat -> Seg16.F) (r1877 : Seg16.relationRow1877 rho) :
    rho 14452 = seg16RIl227 rho * (rho 14451) := by
  unfold Seg16.relationRow1877 at r1877
  rw [seg16RIl227Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom10 seg16RIlAtom11 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1877

theorem seg16RStep226Acc (rho : Nat -> Seg16.F) :
    seg16RIl226 rho = seg16RIl227 rho + (rho 14451) - (rho 14452) := by
  have hstate : seg16RIl226 rho = seg16RIl227 rho + seg16RIlAtom12 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom12
  ring

theorem seg16RStep226Pe (rho : Nat -> Seg16.F) (r1878 : Seg16.relationRow1878 rho) :
    seg16RPe226 rho = seg16RPe227 rho * rho 14290 := by
  unfold Seg16.relationRow1878 at r1878
  unfold seg16RPe226 seg16RPe227
  linear_combination -r1878

theorem seg16RStep226 (rho : Nat -> Seg16.F) (r1876 : Seg16.relationRow1876 rho) (r1877 : Seg16.relationRow1877 rho) (r1878 : Seg16.relationRow1878 rho) :
    seg16RPe226 rho = seg16RPe227 rho * rho 14290 ∧
    seg16RIl226 rho = seg16RIl227 rho + seg16RPe227 rho * (1 - rho 14290) -
      seg16RIl227 rho * (seg16RPe227 rho * (1 - rho 14290)) := by
  constructor
  · exact seg16RStep226Pe rho r1878
  · rw [seg16RStep226Acc rho, seg16RStep226L rho r1876, seg16RStep226IlMul rho r1877, seg16RStep226L rho r1876]

theorem seg16_r_chunk226 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 227 (seg16RPeState rho 227) (seg16RIlState rho 227) := by
  have htail := seg16_r_chunk225 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p23, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1876, r1877, r1878, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 226 ≤ n → n < 227 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 226 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep226 rho r1876 r1877 r1878
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 226 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
