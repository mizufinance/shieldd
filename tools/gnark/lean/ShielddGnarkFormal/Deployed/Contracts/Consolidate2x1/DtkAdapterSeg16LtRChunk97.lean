import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk96

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep97L (rho : Nat -> Seg16.F) (r2125 : Seg16.relationRow2125 rho) :
    rho 14700 = seg16RPe98 rho * (1 - rho 14161) := by
  unfold Seg16.relationRow2125 at r2125
  unfold seg16RPe98
  linear_combination -r2125

theorem seg16RStep97IlMul (rho : Nat -> Seg16.F) (r2126 : Seg16.relationRow2126 rho) :
    rho 14701 = seg16RIl98 rho * (rho 14700) := by
  unfold Seg16.relationRow2126 at r2126
  rw [seg16RStep97IlLc rho] at r2126
  linear_combination -r2126

theorem seg16RStep97Acc (rho : Nat -> Seg16.F) :
    seg16RIl97 rho = seg16RIl98 rho + (rho 14700) - (rho 14701) := by
  have hstate : seg16RIl97 rho = seg16RIl98 rho + seg16RIlAtom76 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom76
  ring

theorem seg16RStep97Pe (rho : Nat -> Seg16.F) (r2127 : Seg16.relationRow2127 rho) :
    seg16RPe97 rho = seg16RPe98 rho * rho 14161 := by
  unfold Seg16.relationRow2127 at r2127
  unfold seg16RPe97 seg16RPe98
  linear_combination -r2127

theorem seg16RStep97 (rho : Nat -> Seg16.F) (r2125 : Seg16.relationRow2125 rho) (r2126 : Seg16.relationRow2126 rho) (r2127 : Seg16.relationRow2127 rho) :
    seg16RPe97 rho = seg16RPe98 rho * rho 14161 ∧
    seg16RIl97 rho = seg16RIl98 rho + seg16RPe98 rho * (1 - rho 14161) -
      seg16RIl98 rho * (seg16RPe98 rho * (1 - rho 14161)) := by
  constructor
  · exact seg16RStep97Pe rho r2127
  · rw [seg16RStep97Acc rho, seg16RStep97L rho r2125, seg16RStep97IlMul rho r2126, seg16RStep97L rho r2125]

theorem seg16_r_chunk97 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 98 (seg16RPeState rho 98) (seg16RIlState rho 98) := by
  have htail := seg16_r_chunk96 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2125, r2126, r2127, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 97 ≤ n → n < 98 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 97 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep97 rho r2125 r2126 r2127
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 97 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
