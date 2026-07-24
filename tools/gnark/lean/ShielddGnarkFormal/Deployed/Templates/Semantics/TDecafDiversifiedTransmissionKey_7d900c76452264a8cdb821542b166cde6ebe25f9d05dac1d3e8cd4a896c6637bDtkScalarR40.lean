import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5923 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5924 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5925 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5926 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5927 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5928 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5929 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5930 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5931 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5932 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5933 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5934 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5935 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5936 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩

theorem dtk_rung240 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1223 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX240 rho : F), (dtkAccY240 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5415 : F), (rho 5416 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX240 rho : F), (dtkAccY240 rho : F)⟩
        ⟨(rho 5415 : F), (rho 5416 : F)⟩
        ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩
        ⟨(rho 5429 : F), (rho 5430 : F)⟩ := by
  obtain ⟨r5923, r5924, r5925, r5926, r5927, r5928, r5929, r5930, r5931, r5932, r5933, r5934, r5935, r5936⟩ := dtk_rows240 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5923 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1286 at r5923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5924 at r5924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5925 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1287 at r5925
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5926 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1288 at r5926
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5927 at r5927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5928 at r5928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5929 at r5929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5930 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1289 at r5930
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5931 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1290 at r5931
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5932 at r5932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5933 at r5933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5934 at r5934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5935 at r5935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5936 at r5936
  have hrung240 (bit : Bool) (hbit : rho 1223 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX240 rho : F), (dtkAccY240 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5415 : F), (rho 5416 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX240 rho : F), (dtkAccY240 rho : F)⟩
        ⟨(rho 5415 : F), (rho 5416 : F)⟩
        ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩
        ⟨(rho 5429 : F), (rho 5430 : F)⟩ := by
    have hnextx : dtkAccX241 rho = dtkAccX240 rho + rho 5424 := by
      unfold dtkAccX241 dtkAccX240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 90]
      ring
    have hnexty : dtkAccY241 rho = dtkAccY240 rho + rho 5425 := by
      unfold dtkAccY241 dtkAccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 90]
      ring
    have hsum : dtkAccX240 rho + dtkAccY240 rho = rho 5417 := by
      unfold dtkAccX240 dtkAccY240
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5923
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 89, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5923
    have ha0 : (rho 5415 + rho 5416) * (dtkAccX240 rho + dtkAccY240 rho) = rho 5418 := by
      rw [hsum]
      linear_combination r5924
    have ha1 : rho 5416 * dtkAccX240 rho = rho 5419 := by
      unfold dtkAccX240
      linear_combination r5925
    have ha2 : rho 5415 * dtkAccY240 rho = rho 5420 := by
      unfold dtkAccY240
      linear_combination r5926
    have ha3 : 3021 * rho 5419 * rho 5420 = rho 5421 := by
      linear_combination r5927
    have ha4 : rho 5422 * (1 + rho 5421) = rho 5419 + rho 5420 := by
      linear_combination r5928
    have ha5 : rho 5423 * (1 - rho 5421) = rho 5418 - rho 5419 - rho 5420 := by
      linear_combination r5929
    have haddx :
        rho 5422 * (1 + 3021 * (rho 5416 * dtkAccX240 rho) * (rho 5415 * dtkAccY240 rho)) =
          rho 5416 * dtkAccX240 rho + rho 5415 * dtkAccY240 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5423 * (1 - 3021 * (rho 5416 * dtkAccX240 rho) * (rho 5415 * dtkAccY240 rho)) =
          (-1) * (rho 5416 * dtkAccX240 rho) - rho 5415 * dtkAccY240 rho +
            (dtkAccY240 rho - dtkAccX240 rho * (-1)) * (rho 5415 + rho 5416) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5423 * (1 - rho 5421) = rho 5418 - rho 5419 - rho 5420 := ha5
        _ = (-1) * rho 5419 - rho 5420 + (dtkAccY240 rho - dtkAccX240 rho * (-1)) * (rho 5415 + rho 5416) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX241 rho = dtkAccX240 rho - Bool.toZMod bit * (dtkAccX240 rho - rho 5422) := by
      have hd : rho 5424 = Bool.toZMod bit * (rho 5422 - dtkAccX240 rho) := by
        rw [← hbit]
        unfold dtkAccX240
        linear_combination -r5930
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY241 rho = dtkAccY240 rho - Bool.toZMod bit * (dtkAccY240 rho - rho 5423) := by
      have hd : rho 5425 = Bool.toZMod bit * (rho 5423 - dtkAccY240 rho) := by
        rw [← hbit]
        unfold dtkAccY240
        linear_combination -r5931
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5415 * rho 5416 = rho 5426 := by linear_combination r5932
    have hd1 : rho 5415 * rho 5415 = rho 5427 := by linear_combination r5933
    have hd2 : rho 5416 * rho 5416 = rho 5428 := by linear_combination r5934
    have hd3 : rho 5429 * (rho 5416 * rho 5416 + rho 5415 * rho 5415 * (-1)) = 2 * (rho 5415 * rho 5416) := by
      rw [hd0, hd1, hd2]
      linear_combination r5935
    have hd4 : rho 5430 * (2 - (rho 5416 * rho 5416 + rho 5415 * rho 5415 * (-1))) = rho 5416 * rho 5416 - rho 5415 * rho 5415 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5936
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX240 rho : F), (dtkAccY240 rho : F)⟩
      ⟨(rho 5415 : F), (rho 5416 : F)⟩
      ⟨(rho 5422 : F), (rho 5423 : F)⟩
      ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩
      ⟨(rho 5429 : F), (rho 5430 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung240

theorem dtk_rows241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5937 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5938 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5939 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5940 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5941 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5942 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5943 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5944 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5945 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5946 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5947 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5948 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5949 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5950 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩

theorem dtk_rung241 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1224 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5429 : F), (rho 5430 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩
        ⟨(rho 5429 : F), (rho 5430 : F)⟩
        ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩
        ⟨(rho 5443 : F), (rho 5444 : F)⟩ := by
  obtain ⟨r5937, r5938, r5939, r5940, r5941, r5942, r5943, r5944, r5945, r5946, r5947, r5948, r5949, r5950⟩ := dtk_rows241 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5937 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1291 at r5937
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5938 at r5938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5939 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1292 at r5939
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5940 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1293 at r5940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5941 at r5941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5942 at r5942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5943 at r5943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5944 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1294 at r5944
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5945 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1295 at r5945
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5946 at r5946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5947 at r5947
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5948 at r5948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5949 at r5949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5950 at r5950
  have hrung241 (bit : Bool) (hbit : rho 1224 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5429 : F), (rho 5430 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩
        ⟨(rho 5429 : F), (rho 5430 : F)⟩
        ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩
        ⟨(rho 5443 : F), (rho 5444 : F)⟩ := by
    have hnextx : dtkAccX242 rho = dtkAccX241 rho + rho 5438 := by
      unfold dtkAccX242 dtkAccX241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 91]
      ring
    have hnexty : dtkAccY242 rho = dtkAccY241 rho + rho 5439 := by
      unfold dtkAccY242 dtkAccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 91]
      ring
    have hsum : dtkAccX241 rho + dtkAccY241 rho = rho 5431 := by
      unfold dtkAccX241 dtkAccY241
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5937
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 90, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5937
    have ha0 : (rho 5429 + rho 5430) * (dtkAccX241 rho + dtkAccY241 rho) = rho 5432 := by
      rw [hsum]
      linear_combination r5938
    have ha1 : rho 5430 * dtkAccX241 rho = rho 5433 := by
      unfold dtkAccX241
      linear_combination r5939
    have ha2 : rho 5429 * dtkAccY241 rho = rho 5434 := by
      unfold dtkAccY241
      linear_combination r5940
    have ha3 : 3021 * rho 5433 * rho 5434 = rho 5435 := by
      linear_combination r5941
    have ha4 : rho 5436 * (1 + rho 5435) = rho 5433 + rho 5434 := by
      linear_combination r5942
    have ha5 : rho 5437 * (1 - rho 5435) = rho 5432 - rho 5433 - rho 5434 := by
      linear_combination r5943
    have haddx :
        rho 5436 * (1 + 3021 * (rho 5430 * dtkAccX241 rho) * (rho 5429 * dtkAccY241 rho)) =
          rho 5430 * dtkAccX241 rho + rho 5429 * dtkAccY241 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5437 * (1 - 3021 * (rho 5430 * dtkAccX241 rho) * (rho 5429 * dtkAccY241 rho)) =
          (-1) * (rho 5430 * dtkAccX241 rho) - rho 5429 * dtkAccY241 rho +
            (dtkAccY241 rho - dtkAccX241 rho * (-1)) * (rho 5429 + rho 5430) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5437 * (1 - rho 5435) = rho 5432 - rho 5433 - rho 5434 := ha5
        _ = (-1) * rho 5433 - rho 5434 + (dtkAccY241 rho - dtkAccX241 rho * (-1)) * (rho 5429 + rho 5430) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX242 rho = dtkAccX241 rho - Bool.toZMod bit * (dtkAccX241 rho - rho 5436) := by
      have hd : rho 5438 = Bool.toZMod bit * (rho 5436 - dtkAccX241 rho) := by
        rw [← hbit]
        unfold dtkAccX241
        linear_combination -r5944
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY242 rho = dtkAccY241 rho - Bool.toZMod bit * (dtkAccY241 rho - rho 5437) := by
      have hd : rho 5439 = Bool.toZMod bit * (rho 5437 - dtkAccY241 rho) := by
        rw [← hbit]
        unfold dtkAccY241
        linear_combination -r5945
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5429 * rho 5430 = rho 5440 := by linear_combination r5946
    have hd1 : rho 5429 * rho 5429 = rho 5441 := by linear_combination r5947
    have hd2 : rho 5430 * rho 5430 = rho 5442 := by linear_combination r5948
    have hd3 : rho 5443 * (rho 5430 * rho 5430 + rho 5429 * rho 5429 * (-1)) = 2 * (rho 5429 * rho 5430) := by
      rw [hd0, hd1, hd2]
      linear_combination r5949
    have hd4 : rho 5444 * (2 - (rho 5430 * rho 5430 + rho 5429 * rho 5429 * (-1))) = rho 5430 * rho 5430 - rho 5429 * rho 5429 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5950
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX241 rho : F), (dtkAccY241 rho : F)⟩
      ⟨(rho 5429 : F), (rho 5430 : F)⟩
      ⟨(rho 5436 : F), (rho 5437 : F)⟩
      ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩
      ⟨(rho 5443 : F), (rho 5444 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung241

theorem dtk_rows242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5951 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5952 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5953 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5954 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5955 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5956 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5957 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5958 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5959 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5960 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5961 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5962 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5963 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5964 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩

theorem dtk_rung242 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1225 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5443 : F), (rho 5444 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩
        ⟨(rho 5443 : F), (rho 5444 : F)⟩
        ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩
        ⟨(rho 5457 : F), (rho 5458 : F)⟩ := by
  obtain ⟨r5951, r5952, r5953, r5954, r5955, r5956, r5957, r5958, r5959, r5960, r5961, r5962, r5963, r5964⟩ := dtk_rows242 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5951 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1296 at r5951
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5952 at r5952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5953 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1297 at r5953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5954 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1298 at r5954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5955 at r5955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5956 at r5956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5957 at r5957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5958 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1299 at r5958
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5959 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1300 at r5959
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5960 at r5960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5961 at r5961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5962 at r5962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5963 at r5963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5964 at r5964
  have hrung242 (bit : Bool) (hbit : rho 1225 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5443 : F), (rho 5444 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩
        ⟨(rho 5443 : F), (rho 5444 : F)⟩
        ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩
        ⟨(rho 5457 : F), (rho 5458 : F)⟩ := by
    have hnextx : dtkAccX243 rho = dtkAccX242 rho + rho 5452 := by
      unfold dtkAccX243 dtkAccX242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 92]
      ring
    have hnexty : dtkAccY243 rho = dtkAccY242 rho + rho 5453 := by
      unfold dtkAccY243 dtkAccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 92]
      ring
    have hsum : dtkAccX242 rho + dtkAccY242 rho = rho 5445 := by
      unfold dtkAccX242 dtkAccY242
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5951
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 91, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5951
    have ha0 : (rho 5443 + rho 5444) * (dtkAccX242 rho + dtkAccY242 rho) = rho 5446 := by
      rw [hsum]
      linear_combination r5952
    have ha1 : rho 5444 * dtkAccX242 rho = rho 5447 := by
      unfold dtkAccX242
      linear_combination r5953
    have ha2 : rho 5443 * dtkAccY242 rho = rho 5448 := by
      unfold dtkAccY242
      linear_combination r5954
    have ha3 : 3021 * rho 5447 * rho 5448 = rho 5449 := by
      linear_combination r5955
    have ha4 : rho 5450 * (1 + rho 5449) = rho 5447 + rho 5448 := by
      linear_combination r5956
    have ha5 : rho 5451 * (1 - rho 5449) = rho 5446 - rho 5447 - rho 5448 := by
      linear_combination r5957
    have haddx :
        rho 5450 * (1 + 3021 * (rho 5444 * dtkAccX242 rho) * (rho 5443 * dtkAccY242 rho)) =
          rho 5444 * dtkAccX242 rho + rho 5443 * dtkAccY242 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5451 * (1 - 3021 * (rho 5444 * dtkAccX242 rho) * (rho 5443 * dtkAccY242 rho)) =
          (-1) * (rho 5444 * dtkAccX242 rho) - rho 5443 * dtkAccY242 rho +
            (dtkAccY242 rho - dtkAccX242 rho * (-1)) * (rho 5443 + rho 5444) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5451 * (1 - rho 5449) = rho 5446 - rho 5447 - rho 5448 := ha5
        _ = (-1) * rho 5447 - rho 5448 + (dtkAccY242 rho - dtkAccX242 rho * (-1)) * (rho 5443 + rho 5444) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX243 rho = dtkAccX242 rho - Bool.toZMod bit * (dtkAccX242 rho - rho 5450) := by
      have hd : rho 5452 = Bool.toZMod bit * (rho 5450 - dtkAccX242 rho) := by
        rw [← hbit]
        unfold dtkAccX242
        linear_combination -r5958
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY243 rho = dtkAccY242 rho - Bool.toZMod bit * (dtkAccY242 rho - rho 5451) := by
      have hd : rho 5453 = Bool.toZMod bit * (rho 5451 - dtkAccY242 rho) := by
        rw [← hbit]
        unfold dtkAccY242
        linear_combination -r5959
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5443 * rho 5444 = rho 5454 := by linear_combination r5960
    have hd1 : rho 5443 * rho 5443 = rho 5455 := by linear_combination r5961
    have hd2 : rho 5444 * rho 5444 = rho 5456 := by linear_combination r5962
    have hd3 : rho 5457 * (rho 5444 * rho 5444 + rho 5443 * rho 5443 * (-1)) = 2 * (rho 5443 * rho 5444) := by
      rw [hd0, hd1, hd2]
      linear_combination r5963
    have hd4 : rho 5458 * (2 - (rho 5444 * rho 5444 + rho 5443 * rho 5443 * (-1))) = rho 5444 * rho 5444 - rho 5443 * rho 5443 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5964
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX242 rho : F), (dtkAccY242 rho : F)⟩
      ⟨(rho 5443 : F), (rho 5444 : F)⟩
      ⟨(rho 5450 : F), (rho 5451 : F)⟩
      ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩
      ⟨(rho 5457 : F), (rho 5458 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung242

theorem dtk_rows243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5965 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5966 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5967 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5968 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5969 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5970 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5971 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5972 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5973 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5974 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5975 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5976 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5977 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5978 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩

theorem dtk_rung243 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1226 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5457 : F), (rho 5458 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩
        ⟨(rho 5457 : F), (rho 5458 : F)⟩
        ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩
        ⟨(rho 5471 : F), (rho 5472 : F)⟩ := by
  obtain ⟨r5965, r5966, r5967, r5968, r5969, r5970, r5971, r5972, r5973, r5974, r5975, r5976, r5977, r5978⟩ := dtk_rows243 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5965 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1301 at r5965
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5966 at r5966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5967 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1302 at r5967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5968 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1303 at r5968
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5969 at r5969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5970 at r5970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5971 at r5971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5972 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1304 at r5972
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5973 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1305 at r5973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5974 at r5974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5975 at r5975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5976 at r5976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5977 at r5977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5978 at r5978
  have hrung243 (bit : Bool) (hbit : rho 1226 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5457 : F), (rho 5458 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩
        ⟨(rho 5457 : F), (rho 5458 : F)⟩
        ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩
        ⟨(rho 5471 : F), (rho 5472 : F)⟩ := by
    have hnextx : dtkAccX244 rho = dtkAccX243 rho + rho 5466 := by
      unfold dtkAccX244 dtkAccX243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 93]
      ring
    have hnexty : dtkAccY244 rho = dtkAccY243 rho + rho 5467 := by
      unfold dtkAccY244 dtkAccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 93]
      ring
    have hsum : dtkAccX243 rho + dtkAccY243 rho = rho 5459 := by
      unfold dtkAccX243 dtkAccY243
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5965
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 92, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5965
    have ha0 : (rho 5457 + rho 5458) * (dtkAccX243 rho + dtkAccY243 rho) = rho 5460 := by
      rw [hsum]
      linear_combination r5966
    have ha1 : rho 5458 * dtkAccX243 rho = rho 5461 := by
      unfold dtkAccX243
      linear_combination r5967
    have ha2 : rho 5457 * dtkAccY243 rho = rho 5462 := by
      unfold dtkAccY243
      linear_combination r5968
    have ha3 : 3021 * rho 5461 * rho 5462 = rho 5463 := by
      linear_combination r5969
    have ha4 : rho 5464 * (1 + rho 5463) = rho 5461 + rho 5462 := by
      linear_combination r5970
    have ha5 : rho 5465 * (1 - rho 5463) = rho 5460 - rho 5461 - rho 5462 := by
      linear_combination r5971
    have haddx :
        rho 5464 * (1 + 3021 * (rho 5458 * dtkAccX243 rho) * (rho 5457 * dtkAccY243 rho)) =
          rho 5458 * dtkAccX243 rho + rho 5457 * dtkAccY243 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5465 * (1 - 3021 * (rho 5458 * dtkAccX243 rho) * (rho 5457 * dtkAccY243 rho)) =
          (-1) * (rho 5458 * dtkAccX243 rho) - rho 5457 * dtkAccY243 rho +
            (dtkAccY243 rho - dtkAccX243 rho * (-1)) * (rho 5457 + rho 5458) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5465 * (1 - rho 5463) = rho 5460 - rho 5461 - rho 5462 := ha5
        _ = (-1) * rho 5461 - rho 5462 + (dtkAccY243 rho - dtkAccX243 rho * (-1)) * (rho 5457 + rho 5458) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX244 rho = dtkAccX243 rho - Bool.toZMod bit * (dtkAccX243 rho - rho 5464) := by
      have hd : rho 5466 = Bool.toZMod bit * (rho 5464 - dtkAccX243 rho) := by
        rw [← hbit]
        unfold dtkAccX243
        linear_combination -r5972
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY244 rho = dtkAccY243 rho - Bool.toZMod bit * (dtkAccY243 rho - rho 5465) := by
      have hd : rho 5467 = Bool.toZMod bit * (rho 5465 - dtkAccY243 rho) := by
        rw [← hbit]
        unfold dtkAccY243
        linear_combination -r5973
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5457 * rho 5458 = rho 5468 := by linear_combination r5974
    have hd1 : rho 5457 * rho 5457 = rho 5469 := by linear_combination r5975
    have hd2 : rho 5458 * rho 5458 = rho 5470 := by linear_combination r5976
    have hd3 : rho 5471 * (rho 5458 * rho 5458 + rho 5457 * rho 5457 * (-1)) = 2 * (rho 5457 * rho 5458) := by
      rw [hd0, hd1, hd2]
      linear_combination r5977
    have hd4 : rho 5472 * (2 - (rho 5458 * rho 5458 + rho 5457 * rho 5457 * (-1))) = rho 5458 * rho 5458 - rho 5457 * rho 5457 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5978
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX243 rho : F), (dtkAccY243 rho : F)⟩
      ⟨(rho 5457 : F), (rho 5458 : F)⟩
      ⟨(rho 5464 : F), (rho 5465 : F)⟩
      ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩
      ⟨(rho 5471 : F), (rho 5472 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung243

theorem dtk_rows244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5979 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5980 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5981 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5982 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5983 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5984 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5985 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5986 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5987 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5988 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5989 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5990 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5991 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5992 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992, _, _, _, _, _, _, _⟩
  exact ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩

theorem dtk_rung244 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1227 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5471 : F), (rho 5472 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩
        ⟨(rho 5471 : F), (rho 5472 : F)⟩
        ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩
        ⟨(rho 5485 : F), (rho 5486 : F)⟩ := by
  obtain ⟨r5979, r5980, r5981, r5982, r5983, r5984, r5985, r5986, r5987, r5988, r5989, r5990, r5991, r5992⟩ := dtk_rows244 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5979 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1306 at r5979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5980 at r5980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5981 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1307 at r5981
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5982 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1308 at r5982
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5983 at r5983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5984 at r5984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5985 at r5985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5986 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1309 at r5986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5987 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1310 at r5987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5988 at r5988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5989 at r5989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5990 at r5990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5991 at r5991
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5992 at r5992
  have hrung244 (bit : Bool) (hbit : rho 1227 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5471 : F), (rho 5472 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩
        ⟨(rho 5471 : F), (rho 5472 : F)⟩
        ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩
        ⟨(rho 5485 : F), (rho 5486 : F)⟩ := by
    have hnextx : dtkAccX245 rho = dtkAccX244 rho + rho 5480 := by
      unfold dtkAccX245 dtkAccX244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 94]
      ring
    have hnexty : dtkAccY245 rho = dtkAccY244 rho + rho 5481 := by
      unfold dtkAccY245 dtkAccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 94]
      ring
    have hsum : dtkAccX244 rho + dtkAccY244 rho = rho 5473 := by
      unfold dtkAccX244 dtkAccY244
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5979
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 93, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5979
    have ha0 : (rho 5471 + rho 5472) * (dtkAccX244 rho + dtkAccY244 rho) = rho 5474 := by
      rw [hsum]
      linear_combination r5980
    have ha1 : rho 5472 * dtkAccX244 rho = rho 5475 := by
      unfold dtkAccX244
      linear_combination r5981
    have ha2 : rho 5471 * dtkAccY244 rho = rho 5476 := by
      unfold dtkAccY244
      linear_combination r5982
    have ha3 : 3021 * rho 5475 * rho 5476 = rho 5477 := by
      linear_combination r5983
    have ha4 : rho 5478 * (1 + rho 5477) = rho 5475 + rho 5476 := by
      linear_combination r5984
    have ha5 : rho 5479 * (1 - rho 5477) = rho 5474 - rho 5475 - rho 5476 := by
      linear_combination r5985
    have haddx :
        rho 5478 * (1 + 3021 * (rho 5472 * dtkAccX244 rho) * (rho 5471 * dtkAccY244 rho)) =
          rho 5472 * dtkAccX244 rho + rho 5471 * dtkAccY244 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5479 * (1 - 3021 * (rho 5472 * dtkAccX244 rho) * (rho 5471 * dtkAccY244 rho)) =
          (-1) * (rho 5472 * dtkAccX244 rho) - rho 5471 * dtkAccY244 rho +
            (dtkAccY244 rho - dtkAccX244 rho * (-1)) * (rho 5471 + rho 5472) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5479 * (1 - rho 5477) = rho 5474 - rho 5475 - rho 5476 := ha5
        _ = (-1) * rho 5475 - rho 5476 + (dtkAccY244 rho - dtkAccX244 rho * (-1)) * (rho 5471 + rho 5472) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX245 rho = dtkAccX244 rho - Bool.toZMod bit * (dtkAccX244 rho - rho 5478) := by
      have hd : rho 5480 = Bool.toZMod bit * (rho 5478 - dtkAccX244 rho) := by
        rw [← hbit]
        unfold dtkAccX244
        linear_combination -r5986
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY245 rho = dtkAccY244 rho - Bool.toZMod bit * (dtkAccY244 rho - rho 5479) := by
      have hd : rho 5481 = Bool.toZMod bit * (rho 5479 - dtkAccY244 rho) := by
        rw [← hbit]
        unfold dtkAccY244
        linear_combination -r5987
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5471 * rho 5472 = rho 5482 := by linear_combination r5988
    have hd1 : rho 5471 * rho 5471 = rho 5483 := by linear_combination r5989
    have hd2 : rho 5472 * rho 5472 = rho 5484 := by linear_combination r5990
    have hd3 : rho 5485 * (rho 5472 * rho 5472 + rho 5471 * rho 5471 * (-1)) = 2 * (rho 5471 * rho 5472) := by
      rw [hd0, hd1, hd2]
      linear_combination r5991
    have hd4 : rho 5486 * (2 - (rho 5472 * rho 5472 + rho 5471 * rho 5471 * (-1))) = rho 5472 * rho 5472 - rho 5471 * rho 5471 * (-1) := by
      rw [hd1, hd2]
      linear_combination r5992
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX244 rho : F), (dtkAccY244 rho : F)⟩
      ⟨(rho 5471 : F), (rho 5472 : F)⟩
      ⟨(rho 5478 : F), (rho 5479 : F)⟩
      ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩
      ⟨(rho 5485 : F), (rho 5486 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung244

theorem dtk_rows245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5993 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5994 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5995 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5996 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5997 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5998 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5999 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6000 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6001 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6002 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6003 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6004 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6005 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6006 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, p74, p75
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart74 at p74
  rcases p74 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r5993, r5994, r5995, r5996, r5997, r5998, r5999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart75 at p75
  rcases p75 with ⟨r6000, r6001, r6002, r6003, r6004, r6005, r6006, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩

theorem dtk_rung245 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1228 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 5485 : F), (rho 5486 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩
        ⟨(rho 5485 : F), (rho 5486 : F)⟩
        ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩
        ⟨(rho 5499 : F), (rho 5500 : F)⟩ := by
  obtain ⟨r5993, r5994, r5995, r5996, r5997, r5998, r5999, r6000, r6001, r6002, r6003, r6004, r6005, r6006⟩ := dtk_rows245 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5993 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1311 at r5993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5994 at r5994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5995 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1312 at r5995
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5996 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1313 at r5996
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r5996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5997 at r5997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5998 at r5998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow5999 at r5999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6000 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1314 at r6000
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6001 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc1315 at r6001
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r6001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6002 at r6002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6003 at r6003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6004 at r6004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6005 at r6005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow6006 at r6006
  have hrung245 (bit : Bool) (hbit : rho 1228 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 5485 : F), (rho 5486 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩
        ⟨(rho 5485 : F), (rho 5486 : F)⟩
        ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩
        ⟨(rho 5499 : F), (rho 5500 : F)⟩ := by
    have hnextx : dtkAccX246 rho = dtkAccX245 rho + rho 5494 := by
      unfold dtkAccX246 dtkAccX245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 95]
      ring
    have hnexty : dtkAccY246 rho = dtkAccY245 rho + rho 5495 := by
      unfold dtkAccY246 dtkAccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4165 14 95]
      ring
    have hsum : dtkAccX245 rho + dtkAccY245 rho = rho 5487 := by
      unfold dtkAccX245 dtkAccY245
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 150] at r5993
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_add rho 4164 14 1 94, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 4164 14 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 4164 14]
      linear_combination r5993
    have ha0 : (rho 5485 + rho 5486) * (dtkAccX245 rho + dtkAccY245 rho) = rho 5488 := by
      rw [hsum]
      linear_combination r5994
    have ha1 : rho 5486 * dtkAccX245 rho = rho 5489 := by
      unfold dtkAccX245
      linear_combination r5995
    have ha2 : rho 5485 * dtkAccY245 rho = rho 5490 := by
      unfold dtkAccY245
      linear_combination r5996
    have ha3 : 3021 * rho 5489 * rho 5490 = rho 5491 := by
      linear_combination r5997
    have ha4 : rho 5492 * (1 + rho 5491) = rho 5489 + rho 5490 := by
      linear_combination r5998
    have ha5 : rho 5493 * (1 - rho 5491) = rho 5488 - rho 5489 - rho 5490 := by
      linear_combination r5999
    have haddx :
        rho 5492 * (1 + 3021 * (rho 5486 * dtkAccX245 rho) * (rho 5485 * dtkAccY245 rho)) =
          rho 5486 * dtkAccX245 rho + rho 5485 * dtkAccY245 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 5493 * (1 - 3021 * (rho 5486 * dtkAccX245 rho) * (rho 5485 * dtkAccY245 rho)) =
          (-1) * (rho 5486 * dtkAccX245 rho) - rho 5485 * dtkAccY245 rho +
            (dtkAccY245 rho - dtkAccX245 rho * (-1)) * (rho 5485 + rho 5486) := by
      rw [ha1, ha2, ha3]
      calc
        rho 5493 * (1 - rho 5491) = rho 5488 - rho 5489 - rho 5490 := ha5
        _ = (-1) * rho 5489 - rho 5490 + (dtkAccY245 rho - dtkAccX245 rho * (-1)) * (rho 5485 + rho 5486) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX246 rho = dtkAccX245 rho - Bool.toZMod bit * (dtkAccX245 rho - rho 5492) := by
      have hd : rho 5494 = Bool.toZMod bit * (rho 5492 - dtkAccX245 rho) := by
        rw [← hbit]
        unfold dtkAccX245
        linear_combination -r6000
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY246 rho = dtkAccY245 rho - Bool.toZMod bit * (dtkAccY245 rho - rho 5493) := by
      have hd : rho 5495 = Bool.toZMod bit * (rho 5493 - dtkAccY245 rho) := by
        rw [← hbit]
        unfold dtkAccY245
        linear_combination -r6001
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 5485 * rho 5486 = rho 5496 := by linear_combination r6002
    have hd1 : rho 5485 * rho 5485 = rho 5497 := by linear_combination r6003
    have hd2 : rho 5486 * rho 5486 = rho 5498 := by linear_combination r6004
    have hd3 : rho 5499 * (rho 5486 * rho 5486 + rho 5485 * rho 5485 * (-1)) = 2 * (rho 5485 * rho 5486) := by
      rw [hd0, hd1, hd2]
      linear_combination r6005
    have hd4 : rho 5500 * (2 - (rho 5486 * rho 5486 + rho 5485 * rho 5485 * (-1))) = rho 5486 * rho 5486 - rho 5485 * rho 5485 * (-1) := by
      rw [hd1, hd2]
      linear_combination r6006
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX245 rho : F), (dtkAccY245 rho : F)⟩
      ⟨(rho 5485 : F), (rho 5486 : F)⟩
      ⟨(rho 5492 : F), (rho 5493 : F)⟩
      ⟨(dtkAccX246 rho : F), (dtkAccY246 rho : F)⟩
      ⟨(rho 5499 : F), (rho 5500 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung245

theorem dtk_hstep_c40 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 240 ≤ i → i < 246 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung240 rho h bits[240]! (hbitAt 240 (by omega)) hacc hcur
  · exact dtk_rung241 rho h bits[241]! (hbitAt 241 (by omega)) hacc hcur
  · exact dtk_rung242 rho h bits[242]! (hbitAt 242 (by omega)) hacc hcur
  · exact dtk_rung243 rho h bits[243]! (hbitAt 243 (by omega)) hacc hcur
  · exact dtk_rung244 rho h bits[244]! (hbitAt 244 (by omega)) hacc hcur
  · exact dtk_rung245 rho h bits[245]! (hbitAt 245 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
