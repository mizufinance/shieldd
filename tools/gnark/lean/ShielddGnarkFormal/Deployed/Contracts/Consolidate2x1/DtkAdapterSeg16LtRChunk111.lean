import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk110

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep111L (rho : Nat -> Seg16.F) (r2095 : Seg16.relationRow2095 rho) :
    rho 14670 = seg16RPe112 rho * (1 - rho 14175) := by
  unfold Seg16.relationRow2095 at r2095
  unfold seg16RPe112
  linear_combination -r2095

theorem seg16RStep111IlMul (rho : Nat -> Seg16.F) (r2096 : Seg16.relationRow2096 rho) :
    rho 14671 = seg16RIl112 rho * (rho 14670) := by
  unfold Seg16.relationRow2096 at r2096
  rw [seg16RStep111IlLc rho] at r2096
  linear_combination -r2096

theorem seg16RStep111Acc (rho : Nat -> Seg16.F) :
    seg16RIl111 rho = seg16RIl112 rho + (rho 14670) - (rho 14671) := by
  have hstate : seg16RIl111 rho = seg16RIl112 rho + seg16RIlAtom67 rho + (-1 : Seg16.F) * seg16RIlAtom68 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom67 seg16RIlAtom68
  ring

theorem seg16RStep111Pe (rho : Nat -> Seg16.F) (r2097 : Seg16.relationRow2097 rho) :
    seg16RPe111 rho = seg16RPe112 rho * rho 14175 := by
  unfold Seg16.relationRow2097 at r2097
  unfold seg16RPe111 seg16RPe112
  linear_combination -r2097

theorem seg16RStep111 (rho : Nat -> Seg16.F) (r2095 : Seg16.relationRow2095 rho) (r2096 : Seg16.relationRow2096 rho) (r2097 : Seg16.relationRow2097 rho) :
    seg16RPe111 rho = seg16RPe112 rho * rho 14175 ∧
    seg16RIl111 rho = seg16RIl112 rho + seg16RPe112 rho * (1 - rho 14175) -
      seg16RIl112 rho * (seg16RPe112 rho * (1 - rho 14175)) := by
  constructor
  · exact seg16RStep111Pe rho r2097
  · rw [seg16RStep111Acc rho, seg16RStep111L rho r2095, seg16RStep111IlMul rho r2096, seg16RStep111L rho r2095]

theorem seg16_r_chunk111 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 112 (seg16RPeState rho 112) (seg16RIlState rho 112) := by
  have htail := seg16_r_chunk110 rho h k hq4
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
  rcases p26 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2095, r2096, r2097, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 111 ≤ n → n < 112 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 111 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep111 rho r2095 r2096 r2097
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 111 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
