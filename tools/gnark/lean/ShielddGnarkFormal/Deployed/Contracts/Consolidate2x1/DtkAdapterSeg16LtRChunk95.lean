import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk94

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep95L (rho : Nat -> Seg16.F) (r2131 : Seg16.relationRow2131 rho) :
    rho 14706 = seg16RPe96 rho * (1 - rho 14159) := by
  unfold Seg16.relationRow2131 at r2131
  unfold seg16RPe96
  linear_combination -r2131

theorem seg16RStep95IlMul (rho : Nat -> Seg16.F) (r2132 : Seg16.relationRow2132 rho) :
    rho 14707 = seg16RIl96 rho * (rho 14706) := by
  unfold Seg16.relationRow2132 at r2132
  rw [seg16RStep95IlLc rho] at r2132
  linear_combination -r2132

theorem seg16RStep95Acc (rho : Nat -> Seg16.F) :
    seg16RIl95 rho = seg16RIl96 rho + (rho 14706) - (rho 14707) := by
  have hstate : seg16RIl95 rho = seg16RIl96 rho + seg16RIlAtom78 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom78
  ring

theorem seg16RStep95Pe (rho : Nat -> Seg16.F) (r2133 : Seg16.relationRow2133 rho) :
    seg16RPe95 rho = seg16RPe96 rho * rho 14159 := by
  unfold Seg16.relationRow2133 at r2133
  unfold seg16RPe95 seg16RPe96
  linear_combination -r2133

theorem seg16RStep95 (rho : Nat -> Seg16.F) (r2131 : Seg16.relationRow2131 rho) (r2132 : Seg16.relationRow2132 rho) (r2133 : Seg16.relationRow2133 rho) :
    seg16RPe95 rho = seg16RPe96 rho * rho 14159 ∧
    seg16RIl95 rho = seg16RIl96 rho + seg16RPe96 rho * (1 - rho 14159) -
      seg16RIl96 rho * (seg16RPe96 rho * (1 - rho 14159)) := by
  constructor
  · exact seg16RStep95Pe rho r2133
  · rw [seg16RStep95Acc rho, seg16RStep95L rho r2131, seg16RStep95IlMul rho r2132, seg16RStep95L rho r2131]

theorem seg16_r_chunk95 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 96 (seg16RPeState rho 96) (seg16RIlState rho 96) := by
  have htail := seg16_r_chunk94 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p26, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2131, r2132, r2133, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 95 ≤ n → n < 96 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 95 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep95 rho r2131 r2132 r2133
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 95 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
