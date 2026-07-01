import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk138

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep139L (rho : Nat -> Seg16.F) (r2049 : Seg16.relationRow2049 rho) :
    rho 14624 = seg16RPe140 rho * (1 - rho 14203) := by
  unfold Seg16.relationRow2049 at r2049
  unfold seg16RPe140
  linear_combination -r2049

theorem seg16RStep139IlMul (rho : Nat -> Seg16.F) (r2050 : Seg16.relationRow2050 rho) :
    rho 14625 = seg16RIl140 rho * (rho 14624) := by
  unfold Seg16.relationRow2050 at r2050
  rw [seg16RStep139IlLc rho] at r2050
  linear_combination -r2050

theorem seg16RStep139Acc (rho : Nat -> Seg16.F) :
    seg16RIl139 rho = seg16RIl140 rho + (rho 14624) - (rho 14625) := by
  have hstate : seg16RIl139 rho = seg16RIl140 rho + seg16RIlAtom58 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom58
  ring

theorem seg16RStep139Pe (rho : Nat -> Seg16.F) (r2051 : Seg16.relationRow2051 rho) :
    seg16RPe139 rho = seg16RPe140 rho * rho 14203 := by
  unfold Seg16.relationRow2051 at r2051
  unfold seg16RPe139 seg16RPe140
  linear_combination -r2051

theorem seg16RStep139 (rho : Nat -> Seg16.F) (r2049 : Seg16.relationRow2049 rho) (r2050 : Seg16.relationRow2050 rho) (r2051 : Seg16.relationRow2051 rho) :
    seg16RPe139 rho = seg16RPe140 rho * rho 14203 ∧
    seg16RIl139 rho = seg16RIl140 rho + seg16RPe140 rho * (1 - rho 14203) -
      seg16RIl140 rho * (seg16RPe140 rho * (1 - rho 14203)) := by
  constructor
  · exact seg16RStep139Pe rho r2051
  · rw [seg16RStep139Acc rho, seg16RStep139L rho r2049, seg16RStep139IlMul rho r2050, seg16RStep139L rho r2049]

theorem seg16_r_chunk139 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 140 (seg16RPeState rho 140) (seg16RIlState rho 140) := by
  have htail := seg16_r_chunk138 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2049, r2050, r2051, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 139 ≤ n → n < 140 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 139 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep139 rho r2049 r2050 r2051
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 139 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
