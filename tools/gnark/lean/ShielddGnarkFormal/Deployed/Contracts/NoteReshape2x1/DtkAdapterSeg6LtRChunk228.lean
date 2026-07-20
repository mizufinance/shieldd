import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk227

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep228L (rho : Nat -> Seg6.F) (r1872 : Seg6.relationRow1872 rho) :
    rho 2267 = seg6RPe229 rho * (1 - rho 2112) := by
  unfold Seg6.relationRow1872 at r1872
  unfold seg6RPe229
  linear_combination -r1872

theorem seg6RStep228IlMul (rho : Nat -> Seg6.F) (r1873 : Seg6.relationRow1873 rho) :
    rho 2268 = seg6RIl229 rho * (rho 2267) := by
  unfold Seg6.relationRow1873 at r1873
  rw [seg6RIl229Atoms rho]
  unfold seg6RIlAtom0 seg6RIlAtom1 seg6RIlAtom10 seg6RIlAtom2 seg6RIlAtom3 seg6RIlAtom4 seg6RIlAtom5 seg6RIlAtom6 seg6RIlAtom7 seg6RIlAtom8 seg6RIlAtom9
  linear_combination -r1873

theorem seg6RStep228Acc (rho : Nat -> Seg6.F) :
    seg6RIl228 rho = seg6RIl229 rho + (rho 2267) - (rho 2268) := by
  have hstate : seg6RIl228 rho = seg6RIl229 rho + seg6RIlAtom11 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom11
  ring

theorem seg6RStep228Pe (rho : Nat -> Seg6.F) (r1874 : Seg6.relationRow1874 rho) :
    seg6RPe228 rho = seg6RPe229 rho * rho 2112 := by
  unfold Seg6.relationRow1874 at r1874
  unfold seg6RPe228 seg6RPe229
  linear_combination -r1874

theorem seg6RStep228 (rho : Nat -> Seg6.F) (r1872 : Seg6.relationRow1872 rho) (r1873 : Seg6.relationRow1873 rho) (r1874 : Seg6.relationRow1874 rho) :
    seg6RPe228 rho = seg6RPe229 rho * rho 2112 ∧
    seg6RIl228 rho = seg6RIl229 rho + seg6RPe229 rho * (1 - rho 2112) -
      seg6RIl229 rho * (seg6RPe229 rho * (1 - rho 2112)) := by
  constructor
  · exact seg6RStep228Pe rho r1874
  · rw [seg6RStep228Acc rho, seg6RStep228L rho r1872, seg6RStep228IlMul rho r1873, seg6RStep228L rho r1872]

theorem seg6_r_chunk228 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 229 (seg6RPeState rho 229) (seg6RIlState rho 229) := by
  have htail := seg6_r_chunk227 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1872, r1873, r1874, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 228 ≤ n → n < 229 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1884 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1884 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1884 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 228 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep228 rho r1872 r1873 r1874
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 228 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
