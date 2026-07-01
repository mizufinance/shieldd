import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk193

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep194L (rho : Nat -> Seg16.F) (r1940 : Seg16.relationRow1940 rho) :
    rho 14515 = seg16RPe195 rho * (1 - rho 14258) := by
  unfold Seg16.relationRow1940 at r1940
  unfold seg16RPe195
  linear_combination -r1940

theorem seg16RStep194IlMul (rho : Nat -> Seg16.F) (r1941 : Seg16.relationRow1941 rho) :
    rho 14516 = seg16RIl195 rho * (rho 14515) := by
  unfold Seg16.relationRow1941 at r1941
  rw [seg16RStep194IlLc rho] at r1941
  linear_combination -r1941

theorem seg16RStep194Acc (rho : Nat -> Seg16.F) :
    seg16RIl194 rho = seg16RIl195 rho + (rho 14515) - (rho 14516) := by
  have hstate : seg16RIl194 rho = seg16RIl195 rho + seg16RIlAtom29 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom29
  ring

theorem seg16RStep194Pe (rho : Nat -> Seg16.F) (r1942 : Seg16.relationRow1942 rho) :
    seg16RPe194 rho = seg16RPe195 rho * rho 14258 := by
  unfold Seg16.relationRow1942 at r1942
  unfold seg16RPe194 seg16RPe195
  linear_combination -r1942

theorem seg16RStep194 (rho : Nat -> Seg16.F) (r1940 : Seg16.relationRow1940 rho) (r1941 : Seg16.relationRow1941 rho) (r1942 : Seg16.relationRow1942 rho) :
    seg16RPe194 rho = seg16RPe195 rho * rho 14258 ∧
    seg16RIl194 rho = seg16RIl195 rho + seg16RPe195 rho * (1 - rho 14258) -
      seg16RIl195 rho * (seg16RPe195 rho * (1 - rho 14258)) := by
  constructor
  · exact seg16RStep194Pe rho r1942
  · rw [seg16RStep194Acc rho, seg16RStep194L rho r1940, seg16RStep194IlMul rho r1941, seg16RStep194L rho r1940]

theorem seg16_r_chunk194 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 195 (seg16RPeState rho 195) (seg16RIlState rho 195) := by
  have htail := seg16_r_chunk193 rho h k hq4
  unfold Seg16.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg16.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1940, r1941, r1942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 194 ≤ n → n < 195 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 194 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep194 rho r1940 r1941 r1942
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 194 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
