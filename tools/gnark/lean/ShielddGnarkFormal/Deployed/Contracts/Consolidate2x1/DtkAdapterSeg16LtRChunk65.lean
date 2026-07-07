import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk64

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep65L (rho : Nat -> Seg16.F) (r2193 : Seg16.relationRow2193 rho) :
    rho 14768 = seg16RPe66 rho * (1 - rho 14129) := by
  unfold Seg16.relationRow2193 at r2193
  unfold seg16RPe66
  linear_combination -r2193

theorem seg16RStep65IlMul (rho : Nat -> Seg16.F) (r2194 : Seg16.relationRow2194 rho) :
    rho 14769 = seg16RIl66 rho * (rho 14768) := by
  unfold Seg16.relationRow2194 at r2194
  rw [seg16RStep65IlLc rho] at r2194
  linear_combination -r2194

theorem seg16RStep65Acc (rho : Nat -> Seg16.F) :
    seg16RIl65 rho = seg16RIl66 rho + (rho 14768) - (rho 14769) := by
  have hstate : seg16RIl65 rho = seg16RIl66 rho + seg16RIlAtom95 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom95
  ring

theorem seg16RStep65Pe (rho : Nat -> Seg16.F) (r2195 : Seg16.relationRow2195 rho) :
    seg16RPe65 rho = seg16RPe66 rho * rho 14129 := by
  unfold Seg16.relationRow2195 at r2195
  unfold seg16RPe65 seg16RPe66
  linear_combination -r2195

theorem seg16RStep65 (rho : Nat -> Seg16.F) (r2193 : Seg16.relationRow2193 rho) (r2194 : Seg16.relationRow2194 rho) (r2195 : Seg16.relationRow2195 rho) :
    seg16RPe65 rho = seg16RPe66 rho * rho 14129 ∧
    seg16RIl65 rho = seg16RIl66 rho + seg16RPe66 rho * (1 - rho 14129) -
      seg16RIl66 rho * (seg16RPe66 rho * (1 - rho 14129)) := by
  constructor
  · exact seg16RStep65Pe rho r2195
  · rw [seg16RStep65Acc rho, seg16RStep65L rho r2193, seg16RStep65IlMul rho r2194, seg16RStep65L rho r2193]

theorem seg16_r_chunk65 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 66 (seg16RPeState rho 66) (seg16RIlState rho 66) := by
  have htail := seg16_r_chunk64 rho h k hq4
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
  rcases p27 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2193, r2194, r2195, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 65 ≤ n → n < 66 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 65 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep65 rho r2193 r2194 r2195
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 65 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
