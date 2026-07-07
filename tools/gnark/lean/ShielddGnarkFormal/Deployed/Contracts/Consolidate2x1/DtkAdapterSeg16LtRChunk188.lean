import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16LtRChunk187

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg16RStep188L (rho : Nat -> Seg16.F) (r1952 : Seg16.relationRow1952 rho) :
    rho 14527 = seg16RPe189 rho * (1 - rho 14252) := by
  unfold Seg16.relationRow1952 at r1952
  unfold seg16RPe189
  linear_combination -r1952

theorem seg16RStep188IlMul (rho : Nat -> Seg16.F) (r1953 : Seg16.relationRow1953 rho) :
    rho 14528 = seg16RIl189 rho * (rho 14527) := by
  unfold Seg16.relationRow1953 at r1953
  rw [seg16RStep188IlLc rho] at r1953
  linear_combination -r1953

theorem seg16RStep188Acc (rho : Nat -> Seg16.F) :
    seg16RIl188 rho = seg16RIl189 rho + (rho 14527) - (rho 14528) := by
  have hstate : seg16RIl188 rho = seg16RIl189 rho + seg16RIlAtom32 rho := by rfl
  rw [hstate]
  unfold seg16RIlAtom32
  ring

theorem seg16RStep188Pe (rho : Nat -> Seg16.F) (r1954 : Seg16.relationRow1954 rho) :
    seg16RPe188 rho = seg16RPe189 rho * rho 14252 := by
  unfold Seg16.relationRow1954 at r1954
  unfold seg16RPe188 seg16RPe189
  linear_combination -r1954

theorem seg16RStep188 (rho : Nat -> Seg16.F) (r1952 : Seg16.relationRow1952 rho) (r1953 : Seg16.relationRow1953 rho) (r1954 : Seg16.relationRow1954 rho) :
    seg16RPe188 rho = seg16RPe189 rho * rho 14252 ∧
    seg16RIl188 rho = seg16RIl189 rho + seg16RPe189 rho * (1 - rho 14252) -
      seg16RIl189 rho * (seg16RPe189 rho * (1 - rho 14252)) := by
  constructor
  · exact seg16RStep188Pe rho r1954
  · rw [seg16RStep188Acc rho, seg16RStep188L rho r1952, seg16RStep188IlMul rho r1953, seg16RStep188L rho r1952]

theorem seg16_r_chunk188 (rho : Nat -> Seg16.F) (h : Seg16.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg16.F) (0 : Seg16.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k) 189 (seg16RPeState rho 189) (seg16RIlState rho 189) := by
  have htail := seg16_r_chunk187 rho h k hq4
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
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1952, r1953, r1954, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 188 ≤ n → n < 189 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg16RPeState rho n = seg16RPeState rho (n + 1) * rho (14064 + n) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) + seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) -
          seg16RIlState rho (n + 1) * (seg16RPeState rho (n + 1) * (1 - rho (14064 + n)))
      else
        seg16RPeState rho n = seg16RPeState rho (n + 1) * (1 - rho (14064 + n)) ∧
        seg16RIlState rho n = seg16RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 188 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg16RStep188 rho r1952 r1953 r1954
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg16IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg16IvkBits rho) (rho 10) k)
    (seg16RPeState rho) (seg16RIlState rho) 188 1
    (by intro n hnlo hnhi; have key := seg16IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
