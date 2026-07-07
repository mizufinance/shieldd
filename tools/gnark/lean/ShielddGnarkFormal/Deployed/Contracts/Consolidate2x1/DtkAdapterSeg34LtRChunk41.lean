import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg34LtRChunk40

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg34RStep41L (rho : Nat -> Seg34.F) (r2247 : Seg34.relationRow2247 rho) :
    rho 33522 = seg34RPe42 rho * (1 - rho 32805) := by
  unfold Seg34.relationRow2247 at r2247
  unfold seg34RPe42
  linear_combination -r2247

theorem seg34RStep41IlMul (rho : Nat -> Seg34.F) (r2248 : Seg34.relationRow2248 rho) :
    rho 33523 = seg34RIl42 rho * (rho 33522) := by
  unfold Seg34.relationRow2248 at r2248
  rw [seg34RStep41IlLc rho] at r2248
  linear_combination -r2248

theorem seg34RStep41Acc (rho : Nat -> Seg34.F) :
    seg34RIl41 rho = seg34RIl42 rho + (rho 33522) - (rho 33523) := by
  have hstate : seg34RIl41 rho = seg34RIl42 rho + seg34RIlAtom111 rho := by rfl
  rw [hstate]
  unfold seg34RIlAtom111
  ring

theorem seg34RStep41Pe (rho : Nat -> Seg34.F) (r2249 : Seg34.relationRow2249 rho) :
    seg34RPe41 rho = seg34RPe42 rho * rho 32805 := by
  unfold Seg34.relationRow2249 at r2249
  unfold seg34RPe41 seg34RPe42
  linear_combination -r2249

theorem seg34RStep41 (rho : Nat -> Seg34.F) (r2247 : Seg34.relationRow2247 rho) (r2248 : Seg34.relationRow2248 rho) (r2249 : Seg34.relationRow2249 rho) :
    seg34RPe41 rho = seg34RPe42 rho * rho 32805 ∧
    seg34RIl41 rho = seg34RIl42 rho + seg34RPe42 rho * (1 - rho 32805) -
      seg34RIl42 rho * (seg34RPe42 rho * (1 - rho 32805)) := by
  constructor
  · exact seg34RStep41Pe rho r2249
  · rw [seg34RStep41Acc rho, seg34RStep41L rho r2247, seg34RStep41IlMul rho r2248, seg34RStep41L rho r2247]

theorem seg34_r_chunk41 (rho : Nat -> Seg34.F) (h : Seg34.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg34.F) (0 : Seg34.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k) 42 (seg34RPeState rho 42) (seg34RIlState rho 42) := by
  have htail := seg34_r_chunk40 rho h k hq4
  unfold Seg34.relation at h
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
  unfold Seg34.relationPart28 at p28
  rcases p28 with ⟨_, _, _, _, _, _, _, r2247, r2248, r2249, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 41 ≤ n → n < 42 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg34RPeState rho n = seg34RPeState rho (n + 1) * rho (32764 + n) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) + seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) -
          seg34RIlState rho (n + 1) * (seg34RPeState rho (n + 1) * (1 - rho (32764 + n)))
      else
        seg34RPeState rho n = seg34RPeState rho (n + 1) * (1 - rho (32764 + n)) ∧
        seg34RIlState rho n = seg34RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 41 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg34RStep41 rho r2247 r2248 r2249
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg34IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg34IvkBits rho) (rho 10) k)
    (seg34RPeState rho) (seg34RIlState rho) 41 1
    (by intro n hnlo hnhi; have key := seg34IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
