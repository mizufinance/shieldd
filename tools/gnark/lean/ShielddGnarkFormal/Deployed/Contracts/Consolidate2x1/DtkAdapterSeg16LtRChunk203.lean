import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk202

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep203L (rho : Nat -> Seg16.F) (r1923 : Seg16.relationRow1923 rho) :
    rho 14498 = seg16RPe204 rho * (1 - rho 14267) := by
  unfold Seg16.relationRow1923 at r1923
  unfold seg16RPe204
  linear_combination -r1923

theorem seg16RStep203IlMul (rho : Nat -> Seg16.F) (r1924 : Seg16.relationRow1924 rho) :
    rho 14499 = seg16RIl204 rho * (rho 14498) := by
  unfold Seg16.relationRow1924 at r1924
  rw [seg16RStep203IlLc rho] at r1924
  linear_combination -r1924

theorem seg16RStep203Acc (rho : Nat -> Seg16.F) :
    seg16RIl203 rho = seg16RIl204 rho + (rho 14498) - (rho 14499) := by
  have hstate : seg16RIl203 rho = seg16RIl204 rho + seg16RIlAtom25 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom25
  ring

theorem seg16RStep203Pe (rho : Nat -> Seg16.F) (r1925 : Seg16.relationRow1925 rho) :
    seg16RPe203 rho = seg16RPe204 rho * rho 14267 := by
  unfold Seg16.relationRow1925 at r1925
  unfold seg16RPe203 seg16RPe204
  linear_combination -r1925

theorem seg16RStep203 (rho : Nat -> Seg16.F) (r1923 : Seg16.relationRow1923 rho) (r1924 : Seg16.relationRow1924 rho) (r1925 : Seg16.relationRow1925 rho) :
    seg16RPe203 rho = seg16RPe204 rho * rho 14267 ∧
    seg16RIl203 rho = seg16RIl204 rho + seg16RPe204 rho * (1 - rho 14267) -
      seg16RIl204 rho * (seg16RPe204 rho * (1 - rho 14267)) := by
  constructor
  · exact seg16RStep203Pe rho r1925
  · rw [seg16RStep203Acc rho, seg16RStep203L rho r1923, seg16RStep203IlMul rho r1924, seg16RStep203L rho r1923]

theorem seg16_r_chunk203 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 204 (seg16RPeState rho 204) (seg16RIlState rho 204) := by
  have htail := seg16_r_chunk202 rho h k hq4
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
  rcases p24 with ⟨_, _, _, r1923, r1924, r1925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 203 ≤ n → n < 204 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 203 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep203 rho r1923 r1924 r1925
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 203 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
