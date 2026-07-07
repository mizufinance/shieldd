import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk141

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep142L (rho : Nat -> Seg16.F) (r2042 : Seg16.relationRow2042 rho) :
    rho 14617 = seg16RPe143 rho * (1 - rho 14206) := by
  unfold Seg16.relationRow2042 at r2042
  unfold seg16RPe143
  linear_combination -r2042

theorem seg16RStep142IlMul (rho : Nat -> Seg16.F) (r2043 : Seg16.relationRow2043 rho) :
    rho 14618 = seg16RIl143 rho * (rho 14617) := by
  unfold Seg16.relationRow2043 at r2043
  rw [seg16RStep142IlLc rho] at r2043
  linear_combination -r2043

theorem seg16RStep142Acc (rho : Nat -> Seg16.F) :
    seg16RIl142 rho = seg16RIl143 rho + (rho 14617) - (rho 14618) := by
  have hstate : seg16RIl142 rho = seg16RIl143 rho + seg16RIlAtom56 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom56
  ring

theorem seg16RStep142Pe (rho : Nat -> Seg16.F) (r2044 : Seg16.relationRow2044 rho) :
    seg16RPe142 rho = seg16RPe143 rho * rho 14206 := by
  unfold Seg16.relationRow2044 at r2044
  unfold seg16RPe142 seg16RPe143
  linear_combination -r2044

theorem seg16RStep142 (rho : Nat -> Seg16.F) (r2042 : Seg16.relationRow2042 rho) (r2043 : Seg16.relationRow2043 rho) (r2044 : Seg16.relationRow2044 rho) :
    seg16RPe142 rho = seg16RPe143 rho * rho 14206 ∧
    seg16RIl142 rho = seg16RIl143 rho + seg16RPe143 rho * (1 - rho 14206) -
      seg16RIl143 rho * (seg16RPe143 rho * (1 - rho 14206)) := by
  constructor
  · exact seg16RStep142Pe rho r2044
  · rw [seg16RStep142Acc rho, seg16RStep142L rho r2042, seg16RStep142IlMul rho r2043, seg16RStep142L rho r2042]

theorem seg16_r_chunk142 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 143 (seg16RPeState rho 143) (seg16RIlState rho 143) := by
  have htail := seg16_r_chunk141 rho h k hq4
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
  rcases p25 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2042, r2043, r2044, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 142 ≤ n → n < 143 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 142 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep142 rho r2042 r2043 r2044
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 142 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
