import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep97L (rho : Nat -> Seg34.F) (r2125 : Seg34.relationRow2125 rho) :
    rho 33400 = seg34RPe98 rho * (1 - rho 32861) := by
  unfold Seg34.relationRow2125 at r2125
  unfold seg34RPe98
  linear_combination -r2125

theorem seg34RStep97IlMul (rho : Nat -> Seg34.F) (r2126 : Seg34.relationRow2126 rho) :
    rho 33401 = seg34RIl98 rho * (rho 33400) := by
  unfold Seg34.relationRow2126 at r2126
  rw [seg34RStep97IlLc rho] at r2126
  linear_combination -r2126

theorem seg34RStep97Acc (rho : Nat -> Seg34.F) :
    seg34RIl97 rho = seg34RIl98 rho + (rho 33400) - (rho 33401) := by
  have hstate : seg34RIl97 rho = seg34RIl98 rho + seg34RIlAtom76 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom76
  ring

theorem seg34RStep97Pe (rho : Nat -> Seg34.F) (r2127 : Seg34.relationRow2127 rho) :
    seg34RPe97 rho = seg34RPe98 rho * rho 32861 := by
  unfold Seg34.relationRow2127 at r2127
  unfold seg34RPe97 seg34RPe98
  linear_combination -r2127

theorem seg34RStep97 (rho : Nat -> Seg34.F) (r2125 : Seg34.relationRow2125 rho) (r2126 : Seg34.relationRow2126 rho) (r2127 : Seg34.relationRow2127 rho) :
    seg34RPe97 rho = seg34RPe98 rho * rho 32861 ∧
    seg34RIl97 rho = seg34RIl98 rho + seg34RPe98 rho * (1 - rho 32861) -
      seg34RIl98 rho * (seg34RPe98 rho * (1 - rho 32861)) := by
  constructor
  · exact seg34RStep97Pe rho r2127
  · rw [seg34RStep97Acc rho, seg34RStep97L rho r2125, seg34RStep97IlMul rho r2126, seg34RStep97L rho r2125]

theorem seg34_r_chunk97 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 98 (seg34RPeState rho 98) (seg34RIlState rho 98) := by
  have htail := seg34_r_chunk96 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart26 at p26
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2125, r2126, r2127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep97 rho r2125 r2126 r2127
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
