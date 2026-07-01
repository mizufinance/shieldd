import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk208

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep209L (rho : Nat -> Seg16.F) (r1911 : Seg16.relationRow1911 rho) :
    rho 14486 = seg16RPe210 rho * (1 - rho 14273) := by
  unfold Seg16.relationRow1911 at r1911
  unfold seg16RPe210
  linear_combination -r1911

theorem seg16RStep209IlMul (rho : Nat -> Seg16.F) (r1912 : Seg16.relationRow1912 rho) :
    rho 14487 = seg16RIl210 rho * (rho 14486) := by
  unfold Seg16.relationRow1912 at r1912
  rw [seg16RStep209IlLc rho] at r1912
  linear_combination -r1912

theorem seg16RStep209Acc (rho : Nat -> Seg16.F) :
    seg16RIl209 rho = seg16RIl210 rho + (rho 14486) - (rho 14487) := by
  have hstate : seg16RIl209 rho = seg16RIl210 rho + seg16RIlAtom22 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom22
  ring

theorem seg16RStep209Pe (rho : Nat -> Seg16.F) (r1913 : Seg16.relationRow1913 rho) :
    seg16RPe209 rho = seg16RPe210 rho * rho 14273 := by
  unfold Seg16.relationRow1913 at r1913
  unfold seg16RPe209 seg16RPe210
  linear_combination -r1913

theorem seg16RStep209 (rho : Nat -> Seg16.F) (r1911 : Seg16.relationRow1911 rho) (r1912 : Seg16.relationRow1912 rho) (r1913 : Seg16.relationRow1913 rho) :
    seg16RPe209 rho = seg16RPe210 rho * rho 14273 ∧
    seg16RIl209 rho = seg16RIl210 rho + seg16RPe210 rho * (1 - rho 14273) -
      seg16RIl210 rho * (seg16RPe210 rho * (1 - rho 14273)) := by
  constructor
  · exact seg16RStep209Pe rho r1913
  · rw [seg16RStep209Acc rho, seg16RStep209L rho r1911, seg16RStep209IlMul rho r1912, seg16RStep209L rho r1911]

theorem seg16_r_chunk209 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 210 (seg16RPeState rho 210) (seg16RIlState rho 210) := by
  have htail := seg16_r_chunk208 rho h k hq4
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
  rcases p23 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1911, r1912, r1913, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 209 ≤ n → n < 210 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 209 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep209 rho r1911 r1912 r1913
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 209 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
