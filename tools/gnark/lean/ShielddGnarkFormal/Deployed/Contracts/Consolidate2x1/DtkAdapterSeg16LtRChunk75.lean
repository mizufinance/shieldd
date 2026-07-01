import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk74

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep75L (rho : Nat -> Seg16.F) (r2167 : Seg16.relationRow2167 rho) :
    rho 14742 = seg16RPe76 rho * (1 - rho 14139) := by
  unfold Seg16.relationRow2167 at r2167
  unfold seg16RPe76
  linear_combination -r2167

theorem seg16RStep75IlMul (rho : Nat -> Seg16.F) (r2168 : Seg16.relationRow2168 rho) :
    rho 14743 = seg16RIl76 rho * (rho 14742) := by
  unfold Seg16.relationRow2168 at r2168
  rw [seg16RStep75IlLc rho] at r2168
  linear_combination -r2168

theorem seg16RStep75Acc (rho : Nat -> Seg16.F) :
    seg16RIl75 rho = seg16RIl76 rho + (rho 14742) - (rho 14743) := by
  have hstate : seg16RIl75 rho = seg16RIl76 rho + seg16RIlAtom87 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom87
  ring

theorem seg16RStep75Pe (rho : Nat -> Seg16.F) (r2169 : Seg16.relationRow2169 rho) :
    seg16RPe75 rho = seg16RPe76 rho * rho 14139 := by
  unfold Seg16.relationRow2169 at r2169
  unfold seg16RPe75 seg16RPe76
  linear_combination -r2169

theorem seg16RStep75 (rho : Nat -> Seg16.F) (r2167 : Seg16.relationRow2167 rho) (r2168 : Seg16.relationRow2168 rho) (r2169 : Seg16.relationRow2169 rho) :
    seg16RPe75 rho = seg16RPe76 rho * rho 14139 ∧
    seg16RIl75 rho = seg16RIl76 rho + seg16RPe76 rho * (1 - rho 14139) -
      seg16RIl76 rho * (seg16RPe76 rho * (1 - rho 14139)) := by
  constructor
  · exact seg16RStep75Pe rho r2169
  · rw [seg16RStep75Acc rho, seg16RStep75L rho r2167, seg16RStep75IlMul rho r2168, seg16RStep75L rho r2167]

theorem seg16_r_chunk75 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 76 (seg16RPeState rho 76) (seg16RIlState rho 76) := by
  have htail := seg16_r_chunk74 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p27, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart27 at p27
  rcases p27 with ⟨_, _, _, _, _, _, _, r2167, r2168, r2169, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 75 ≤ n → n < 76 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 75 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep75 rho r2167 r2168 r2169
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 75 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
