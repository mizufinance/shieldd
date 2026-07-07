import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk62

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep63L (rho : Nat -> Seg16.F) (r2197 : Seg16.relationRow2197 rho) :
    rho 14772 = seg16RPe64 rho * (1 - rho 14127) := by
  unfold Seg16.relationRow2197 at r2197
  unfold seg16RPe64
  linear_combination -r2197

theorem seg16RStep63IlMul (rho : Nat -> Seg16.F) (r2198 : Seg16.relationRow2198 rho) :
    rho 14773 = seg16RIl64 rho * (rho 14772) := by
  unfold Seg16.relationRow2198 at r2198
  rw [seg16RStep63IlLc rho] at r2198
  linear_combination -r2198

theorem seg16RStep63Acc (rho : Nat -> Seg16.F) :
    seg16RIl63 rho = seg16RIl64 rho + (rho 14772) - (rho 14773) := by
  have hstate : seg16RIl63 rho = seg16RIl64 rho + seg16RIlAtom96 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom96
  ring

theorem seg16RStep63Pe (rho : Nat -> Seg16.F) (r2199 : Seg16.relationRow2199 rho) :
    seg16RPe63 rho = seg16RPe64 rho * rho 14127 := by
  unfold Seg16.relationRow2199 at r2199
  unfold seg16RPe63 seg16RPe64
  linear_combination -r2199

theorem seg16RStep63 (rho : Nat -> Seg16.F) (r2197 : Seg16.relationRow2197 rho) (r2198 : Seg16.relationRow2198 rho) (r2199 : Seg16.relationRow2199 rho) :
    seg16RPe63 rho = seg16RPe64 rho * rho 14127 ∧
    seg16RIl63 rho = seg16RIl64 rho + seg16RPe64 rho * (1 - rho 14127) -
      seg16RIl64 rho * (seg16RPe64 rho * (1 - rho 14127)) := by
  constructor
  · exact seg16RStep63Pe rho r2199
  · rw [seg16RStep63Acc rho, seg16RStep63L rho r2197, seg16RStep63IlMul rho r2198, seg16RStep63L rho r2197]

theorem seg16_r_chunk63 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 64 (seg16RPeState rho 64) (seg16RIlState rho 64) := by
  have htail := seg16_r_chunk62 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2197, r2198, r2199, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 63 ≤ n → n < 64 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 63 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep63 rho r2197 r2198 r2199
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 63 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
