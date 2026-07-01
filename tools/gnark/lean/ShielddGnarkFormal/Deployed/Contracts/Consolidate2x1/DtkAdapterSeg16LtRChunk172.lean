import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk171

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep172L (rho : Nat -> Seg16.F) (r1980 : Seg16.relationRow1980 rho) :
    rho 14555 = seg16RPe173 rho * (1 - rho 14236) := by
  unfold Seg16.relationRow1980 at r1980
  unfold seg16RPe173
  linear_combination -r1980

theorem seg16RStep172IlMul (rho : Nat -> Seg16.F) (r1981 : Seg16.relationRow1981 rho) :
    rho 14556 = seg16RIl173 rho * (rho 14555) := by
  unfold Seg16.relationRow1981 at r1981
  rw [seg16RStep172IlLc rho] at r1981
  linear_combination -r1981

theorem seg16RStep172Acc (rho : Nat -> Seg16.F) :
    seg16RIl172 rho = seg16RIl173 rho + (rho 14555) - (rho 14556) := by
  have hstate : seg16RIl172 rho = seg16RIl173 rho + seg16RIlAtom39 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom39
  ring

theorem seg16RStep172Pe (rho : Nat -> Seg16.F) (r1982 : Seg16.relationRow1982 rho) :
    seg16RPe172 rho = seg16RPe173 rho * rho 14236 := by
  unfold Seg16.relationRow1982 at r1982
  unfold seg16RPe172 seg16RPe173
  linear_combination -r1982

theorem seg16RStep172 (rho : Nat -> Seg16.F) (r1980 : Seg16.relationRow1980 rho) (r1981 : Seg16.relationRow1981 rho) (r1982 : Seg16.relationRow1982 rho) :
    seg16RPe172 rho = seg16RPe173 rho * rho 14236 ∧
    seg16RIl172 rho = seg16RIl173 rho + seg16RPe173 rho * (1 - rho 14236) -
      seg16RIl173 rho * (seg16RPe173 rho * (1 - rho 14236)) := by
  constructor
  · exact seg16RStep172Pe rho r1982
  · rw [seg16RStep172Acc rho, seg16RStep172L rho r1980, seg16RStep172IlMul rho r1981, seg16RStep172L rho r1980]

theorem seg16_r_chunk172 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 173 (seg16RPeState rho 173) (seg16RIlState rho 173) := by
  have htail := seg16_r_chunk171 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1980, r1981, r1982, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 172 ≤ n → n < 173 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 172 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep172 rho r1980 r1981 r1982
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 172 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
