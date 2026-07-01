import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk143

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep144L (rho : Nat -> Seg16.F) (r2036 : Seg16.relationRow2036 rho) :
    rho 14611 = seg16RPe145 rho * (1 - rho 14208) := by
  unfold Seg16.relationRow2036 at r2036
  unfold seg16RPe145
  linear_combination -r2036

theorem seg16RStep144IlMul (rho : Nat -> Seg16.F) (r2037 : Seg16.relationRow2037 rho) :
    rho 14612 = seg16RIl145 rho * (rho 14611) := by
  unfold Seg16.relationRow2037 at r2037
  rw [seg16RStep144IlLc rho] at r2037
  linear_combination -r2037

theorem seg16RStep144Acc (rho : Nat -> Seg16.F) :
    seg16RIl144 rho = seg16RIl145 rho + (rho 14611) - (rho 14612) := by
  have hstate : seg16RIl144 rho = seg16RIl145 rho + seg16RIlAtom54 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom54
  ring

theorem seg16RStep144Pe (rho : Nat -> Seg16.F) (r2038 : Seg16.relationRow2038 rho) :
    seg16RPe144 rho = seg16RPe145 rho * rho 14208 := by
  unfold Seg16.relationRow2038 at r2038
  unfold seg16RPe144 seg16RPe145
  linear_combination -r2038

theorem seg16RStep144 (rho : Nat -> Seg16.F) (r2036 : Seg16.relationRow2036 rho) (r2037 : Seg16.relationRow2037 rho) (r2038 : Seg16.relationRow2038 rho) :
    seg16RPe144 rho = seg16RPe145 rho * rho 14208 ∧
    seg16RIl144 rho = seg16RIl145 rho + seg16RPe145 rho * (1 - rho 14208) -
      seg16RIl145 rho * (seg16RPe145 rho * (1 - rho 14208)) := by
  constructor
  · exact seg16RStep144Pe rho r2038
  · rw [seg16RStep144Acc rho, seg16RStep144L rho r2036, seg16RStep144IlMul rho r2037, seg16RStep144L rho r2036]

theorem seg16_r_chunk144 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 145 (seg16RPeState rho 145) (seg16RIlState rho 145) := by
  have htail := seg16_r_chunk143 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p25, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart25 at p25
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2036, r2037, r2038, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 144 ≤ n → n < 145 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 144 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep144 rho r2036 r2037 r2038
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 144 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
