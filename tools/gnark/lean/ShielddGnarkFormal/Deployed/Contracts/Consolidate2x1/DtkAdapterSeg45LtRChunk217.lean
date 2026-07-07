import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg45LtRChunk216

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg45RStep217L (rho : Nat -> Seg45.F) (r1897 : Seg45.relationRow1897 rho) :
    rho 40128 = seg45RPe218 rho * (1 - rho 39937) := by
  unfold Seg45.relationRow1897 at r1897
  unfold seg45RPe218
  linear_combination -r1897

theorem seg45RStep217IlMul (rho : Nat -> Seg45.F) (r1898 : Seg45.relationRow1898 rho) :
    rho 40129 = seg45RIl218 rho * (rho 40128) := by
  unfold Seg45.relationRow1898 at r1898
  rw [seg45RStep217IlLc rho] at r1898
  linear_combination -r1898

theorem seg45RStep217Acc (rho : Nat -> Seg45.F) :
    seg45RIl217 rho = seg45RIl218 rho + (rho 40128) - (rho 40129) := by
  have hstate : seg45RIl217 rho = seg45RIl218 rho + seg45RIlAtom19 rho := by rfl
  rw [hstate]
  unfold seg45RIlAtom19
  ring

theorem seg45RStep217Pe (rho : Nat -> Seg45.F) (r1899 : Seg45.relationRow1899 rho) :
    seg45RPe217 rho = seg45RPe218 rho * rho 39937 := by
  unfold Seg45.relationRow1899 at r1899
  unfold seg45RPe217 seg45RPe218
  linear_combination -r1899

theorem seg45RStep217 (rho : Nat -> Seg45.F) (r1897 : Seg45.relationRow1897 rho) (r1898 : Seg45.relationRow1898 rho) (r1899 : Seg45.relationRow1899 rho) :
    seg45RPe217 rho = seg45RPe218 rho * rho 39937 ∧
    seg45RIl217 rho = seg45RIl218 rho + seg45RPe218 rho * (1 - rho 39937) -
      seg45RIl218 rho * (seg45RPe218 rho * (1 - rho 39937)) := by
  constructor
  · exact seg45RStep217Pe rho r1899
  · rw [seg45RStep217Acc rho, seg45RStep217L rho r1897, seg45RStep217IlMul rho r1898, seg45RStep217L rho r1897]

theorem seg45_r_chunk217 (rho : Nat -> Seg45.F) (h : Seg45.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg45.F) (0 : Seg45.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k) 218 (seg45RPeState rho 218) (seg45RIlState rho 218) := by
  have htail := seg45_r_chunk216 rho h k hq4
  unfold Seg45.relation at h
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
  unfold Seg45.relationPart23 at p23
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1897, r1898, r1899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 217 ≤ n → n < 218 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg45RPeState rho n = seg45RPeState rho (n + 1) * rho (39720 + n) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) + seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) -
          seg45RIlState rho (n + 1) * (seg45RPeState rho (n + 1) * (1 - rho (39720 + n)))
      else
        seg45RPeState rho n = seg45RPeState rho (n + 1) * (1 - rho (39720 + n)) ∧
        seg45RIlState rho n = seg45RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 217 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg45RStep217 rho r1897 r1898 r1899
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg45IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg45IvkBits rho) (rho 10) k)
    (seg45RPeState rho) (seg45RIlState rho) 217 1
    (by intro n hnlo hnhi; have key := seg45IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
