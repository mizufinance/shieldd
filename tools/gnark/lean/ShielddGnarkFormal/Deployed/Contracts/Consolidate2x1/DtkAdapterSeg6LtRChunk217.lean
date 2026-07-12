import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk216

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep217L (rho : Nat -> Seg6.F) (r1897 : Seg6.relationRow1897 rho) :
    rho 2298 = seg6RPe218 rho * (1 - rho 2107) := by
  unfold Seg6.relationRow1897 at r1897
  unfold seg6RPe218
  linear_combination -r1897

theorem seg6RStep217IlMul (rho : Nat -> Seg6.F) (r1898 : Seg6.relationRow1898 rho) :
    rho 2299 = seg6RIl218 rho * (rho 2298) := by
  unfold Seg6.relationRow1898 at r1898
  rw [seg6RStep217IlLc rho] at r1898
  linear_combination -r1898

theorem seg6RStep217Acc (rho : Nat -> Seg6.F) :
    seg6RIl217 rho = seg6RIl218 rho + (rho 2298) - (rho 2299) := by
  have hstate : seg6RIl217 rho = seg6RIl218 rho + seg6RIlAtom19 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom19
  ring

theorem seg6RStep217Pe (rho : Nat -> Seg6.F) (r1899 : Seg6.relationRow1899 rho) :
    seg6RPe217 rho = seg6RPe218 rho * rho 2107 := by
  unfold Seg6.relationRow1899 at r1899
  unfold seg6RPe217 seg6RPe218
  linear_combination -r1899

theorem seg6RStep217 (rho : Nat -> Seg6.F) (r1897 : Seg6.relationRow1897 rho) (r1898 : Seg6.relationRow1898 rho) (r1899 : Seg6.relationRow1899 rho) :
    seg6RPe217 rho = seg6RPe218 rho * rho 2107 ∧
    seg6RIl217 rho = seg6RIl218 rho + seg6RPe218 rho * (1 - rho 2107) -
      seg6RIl218 rho * (seg6RPe218 rho * (1 - rho 2107)) := by
  constructor
  · exact seg6RStep217Pe rho r1899
  · rw [seg6RStep217Acc rho, seg6RStep217L rho r1897, seg6RStep217IlMul rho r1898, seg6RStep217L rho r1897]

theorem seg6_r_chunk217 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 218 (seg6RPeState rho 218) (seg6RIlState rho 218) := by
  have htail := seg6_r_chunk216 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1897, r1898, r1899, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 217 ≤ n → n < 218 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 217 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep217 rho r1897 r1898 r1899
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 217 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
