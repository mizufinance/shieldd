import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6LtRChunk193

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg6RStep194L (rho : Nat -> Seg6.F) (r1940 : Seg6.relationRow1940 rho) :
    rho 2341 = seg6RPe195 rho * (1 - rho 2084) := by
  unfold Seg6.relationRow1940 at r1940
  unfold seg6RPe195
  linear_combination -r1940

theorem seg6RStep194IlMul (rho : Nat -> Seg6.F) (r1941 : Seg6.relationRow1941 rho) :
    rho 2342 = seg6RIl195 rho * (rho 2341) := by
  unfold Seg6.relationRow1941 at r1941
  rw [seg6RStep194IlLc rho] at r1941
  linear_combination -r1941

theorem seg6RStep194Acc (rho : Nat -> Seg6.F) :
    seg6RIl194 rho = seg6RIl195 rho + (rho 2341) - (rho 2342) := by
  have hstate : seg6RIl194 rho = seg6RIl195 rho + seg6RIlAtom29 rho := by rfl
  rw [hstate]
  unfold seg6RIlAtom29
  ring

theorem seg6RStep194Pe (rho : Nat -> Seg6.F) (r1942 : Seg6.relationRow1942 rho) :
    seg6RPe194 rho = seg6RPe195 rho * rho 2084 := by
  unfold Seg6.relationRow1942 at r1942
  unfold seg6RPe194 seg6RPe195
  linear_combination -r1942

theorem seg6RStep194 (rho : Nat -> Seg6.F) (r1940 : Seg6.relationRow1940 rho) (r1941 : Seg6.relationRow1941 rho) (r1942 : Seg6.relationRow1942 rho) :
    seg6RPe194 rho = seg6RPe195 rho * rho 2084 ∧
    seg6RIl194 rho = seg6RIl195 rho + seg6RPe195 rho * (1 - rho 2084) -
      seg6RIl195 rho * (seg6RPe195 rho * (1 - rho 2084)) := by
  constructor
  · exact seg6RStep194Pe rho r1942
  · rw [seg6RStep194Acc rho, seg6RStep194L rho r1940, seg6RStep194IlMul rho r1941, seg6RStep194L rho r1940]

theorem seg6_r_chunk194 (rho : Nat -> Seg6.F) (h : Seg6.relation rho) (k : Prop) (hq4 : Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.q4Bit
    (Shieldd.GnarkFormal.DtkBridge.ivkGuardK (rho 10) k) 253 (1 : Seg6.F) (0 : Seg6.F)) :
    Shieldd.GnarkFormal.Extracted.IvkModR.ltcRec (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit
      (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k) 195 (seg6RPeState rho 195) (seg6RIlState rho 195) := by
  have htail := seg6_r_chunk193 rho h k hq4
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p24, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart24 at p24
  rcases p24 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r1940, r1941, r1942, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hsteps : ∀ n, 194 ≤ n → n < 195 →
      if Shieldd.GnarkFormal.Extracted.IvkModR.rBit n then
        seg6RPeState rho n = seg6RPeState rho (n + 1) * rho (1890 + n) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) + seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) -
          seg6RIlState rho (n + 1) * (seg6RPeState rho (n + 1) * (1 - rho (1890 + n)))
      else
        seg6RPeState rho n = seg6RPeState rho (n + 1) * (1 - rho (1890 + n)) ∧
        seg6RIlState rho n = seg6RIlState rho (n + 1) := by
    intro n hnlo hnhi
    interval_cases n
    · have hb : Shieldd.GnarkFormal.Extracted.IvkModR.rBit 194 = true := by decide +kernel
      simp only [hb, ↓reduceIte, Nat.reduceAdd]
      exact seg6RStep194 rho r1940 r1941 r1942
  have ht := Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_span_to_ltcRec
    (seg6IvkBits rho) Shieldd.GnarkFormal.Extracted.IvkModR.rBit (Shieldd.GnarkFormal.DtkBridge.rContK (seg6IvkBits rho) (rho 10) k)
    (seg6RPeState rho) (seg6RIlState rho) 194 1
    (by intro n hnlo hnhi; have key := seg6IvkBits_get rho n (by omega); erw [key]; exact hsteps n hnlo hnhi) htail (by omega)
  simpa only [Nat.reduceAdd] using ht

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
