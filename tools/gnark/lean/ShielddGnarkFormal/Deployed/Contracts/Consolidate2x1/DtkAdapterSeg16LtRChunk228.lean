import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk227

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep228L (rho : Nat -> Seg16.F) (r1872 : Seg16.relationRow1872 rho) :
    rho 14447 = seg16RPe229 rho * (1 - rho 14292) := by
  unfold Seg16.relationRow1872 at r1872
  unfold seg16RPe229
  linear_combination -r1872

theorem seg16RStep228IlMul (rho : Nat -> Seg16.F) (r1873 : Seg16.relationRow1873 rho) :
    rho 14448 = seg16RIl229 rho * (rho 14447) := by
  unfold Seg16.relationRow1873 at r1873
  rw [seg16RIl229Atoms rho]
  unfold seg16RIlAtom0 seg16RIlAtom1 seg16RIlAtom10 seg16RIlAtom2 seg16RIlAtom3 seg16RIlAtom4 seg16RIlAtom5 seg16RIlAtom6 seg16RIlAtom7 seg16RIlAtom8 seg16RIlAtom9
  linear_combination -r1873

theorem seg16RStep228Acc (rho : Nat -> Seg16.F) :
    seg16RIl228 rho = seg16RIl229 rho + (rho 14447) - (rho 14448) := by
  have hstate : seg16RIl228 rho = seg16RIl229 rho + seg16RIlAtom11 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom11
  ring

theorem seg16RStep228Pe (rho : Nat -> Seg16.F) (r1874 : Seg16.relationRow1874 rho) :
    seg16RPe228 rho = seg16RPe229 rho * rho 14292 := by
  unfold Seg16.relationRow1874 at r1874
  unfold seg16RPe228 seg16RPe229
  linear_combination -r1874

theorem seg16RStep228 (rho : Nat -> Seg16.F) (r1872 : Seg16.relationRow1872 rho) (r1873 : Seg16.relationRow1873 rho) (r1874 : Seg16.relationRow1874 rho) :
    seg16RPe228 rho = seg16RPe229 rho * rho 14292 ∧
    seg16RIl228 rho = seg16RIl229 rho + seg16RPe229 rho * (1 - rho 14292) -
      seg16RIl229 rho * (seg16RPe229 rho * (1 - rho 14292)) := by
  constructor
  · exact seg16RStep228Pe rho r1874
  · rw [seg16RStep228Acc rho, seg16RStep228L rho r1872, seg16RStep228IlMul rho r1873, seg16RStep228L rho r1872]

theorem seg16_r_chunk228 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 229 (seg16RPeState rho 229) (seg16RIlState rho 229) := by
  have htail := seg16_r_chunk227 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1872, r1873, r1874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 228 ≤ n → n < 229 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 228 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep228 rho r1872 r1873 r1874
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 228 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
