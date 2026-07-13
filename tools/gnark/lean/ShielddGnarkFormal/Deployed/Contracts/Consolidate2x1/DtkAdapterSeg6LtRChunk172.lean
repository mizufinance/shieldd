import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6LtRChunk171

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg6RStep172L (rho : Nat -> Seg6.F) (r1980 : Seg6.relationRow1980 rho) :
    rho 2381 = seg6RPe173 rho * (1 - rho 2062) := by
  unfold Seg6.relationRow1980 at r1980
  unfold seg6RPe173
  linear_combination -r1980

theorem seg6RStep172IlMul (rho : Nat -> Seg6.F) (r1981 : Seg6.relationRow1981 rho) :
    rho 2382 = seg6RIl173 rho * (rho 2381) := by
  unfold Seg6.relationRow1981 at r1981
  rw [seg6RStep172IlLc rho] at r1981
  linear_combination -r1981

theorem seg6RStep172Acc (rho : Nat -> Seg6.F) :
    seg6RIl172 rho = seg6RIl173 rho + (rho 2381) - (rho 2382) := by
  have hstate : seg6RIl172 rho = seg6RIl173 rho + seg6RIlAtom39 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom39
  ring

theorem seg6RStep172Pe (rho : Nat -> Seg6.F) (r1982 : Seg6.relationRow1982 rho) :
    seg6RPe172 rho = seg6RPe173 rho * rho 2062 := by
  unfold Seg6.relationRow1982 at r1982
  unfold seg6RPe172 seg6RPe173
  linear_combination -r1982

theorem seg6RStep172 (rho : Nat -> Seg6.F) (r1980 : Seg6.relationRow1980 rho) (r1981 : Seg6.relationRow1981 rho) (r1982 : Seg6.relationRow1982 rho) :
    seg6RPe172 rho = seg6RPe173 rho * rho 2062 ∧
    seg6RIl172 rho = seg6RIl173 rho + seg6RPe173 rho * (1 - rho 2062) -
      seg6RIl173 rho * (seg6RPe173 rho * (1 - rho 2062)) := by
  constructor
  · exact seg6RStep172Pe rho r1982
  · rw [seg6RStep172Acc rho, seg6RStep172L rho r1980, seg6RStep172IlMul rho r1981, seg6RStep172L rho r1980]

theorem seg6_r_chunk172 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 173 (seg6RPeState rho 173) (seg6RIlState rho 173) := by
  have htail := seg6_r_chunk171 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1980, r1981, r1982, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 172 ≤ n → n < 173 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 172 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep172 rho r1980 r1981 r1982
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 172 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
