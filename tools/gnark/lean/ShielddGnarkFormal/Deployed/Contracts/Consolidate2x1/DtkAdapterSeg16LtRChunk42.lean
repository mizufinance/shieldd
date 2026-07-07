import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk41

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep42L (rho : Nat -> Seg16.F) (r2244 : Seg16.relationRow2244 rho) :
    rho 14819 = seg16RPe43 rho * (1 - rho 14106) := by
  unfold Seg16.relationRow2244 at r2244
  unfold seg16RPe43
  linear_combination -r2244

theorem seg16RStep42IlMul (rho : Nat -> Seg16.F) (r2245 : Seg16.relationRow2245 rho) :
    rho 14820 = seg16RIl43 rho * (rho 14819) := by
  unfold Seg16.relationRow2245 at r2245
  rw [seg16RStep42IlLc rho] at r2245
  linear_combination -r2245

theorem seg16RStep42Acc (rho : Nat -> Seg16.F) :
    seg16RIl42 rho = seg16RIl43 rho + (rho 14819) - (rho 14820) := by
  have hstate : seg16RIl42 rho = seg16RIl43 rho + seg16RIlAtom110 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom110
  ring

theorem seg16RStep42Pe (rho : Nat -> Seg16.F) (r2246 : Seg16.relationRow2246 rho) :
    seg16RPe42 rho = seg16RPe43 rho * rho 14106 := by
  unfold Seg16.relationRow2246 at r2246
  unfold seg16RPe42 seg16RPe43
  linear_combination -r2246

theorem seg16RStep42 (rho : Nat -> Seg16.F) (r2244 : Seg16.relationRow2244 rho) (r2245 : Seg16.relationRow2245 rho) (r2246 : Seg16.relationRow2246 rho) :
    seg16RPe42 rho = seg16RPe43 rho * rho 14106 ∧
    seg16RIl42 rho = seg16RIl43 rho + seg16RPe43 rho * (1 - rho 14106) -
      seg16RIl43 rho * (seg16RPe43 rho * (1 - rho 14106)) := by
  constructor
  · exact seg16RStep42Pe rho r2246
  · rw [seg16RStep42Acc rho, seg16RStep42L rho r2244, seg16RStep42IlMul rho r2245, seg16RStep42L rho r2244]

theorem seg16_r_chunk42 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 43 (seg16RPeState rho 43) (seg16RIlState rho 43) := by
  have htail := seg16_r_chunk41 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, p28, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, r2244, r2245, r2246, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 42 ≤ n → n < 43 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 42 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep42 rho r2244 r2245 r2246
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 42 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
