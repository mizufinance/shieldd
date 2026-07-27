import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637bDtkScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs

theorem dtk_rows12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2869 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2870 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2871 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2872 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2873 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2874 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2875 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2876 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2877 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2878 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2879 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2880 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2881 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880, r2881⟩

theorem dtk_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 995 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2361 : F), (rho 2362 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩
        ⟨(rho 2361 : F), (rho 2362 : F)⟩
        ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩
        ⟨(rho 2374 : F), (rho 2375 : F)⟩ := by
  obtain ⟨r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880, r2881⟩ := dtk_rows12 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2869 at r2869
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2870 at r2870
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2871 at r2871
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2872 at r2872
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2873 at r2873
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2874 at r2874
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2875 at r2875
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2876 at r2876
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2877 at r2877
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2878 at r2878
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2879 at r2879
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2880 at r2880
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2881 at r2881
  have hrung12 (bit : Bool) (hbit : rho 995 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2361 : F), (rho 2362 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩
        ⟨(rho 2361 : F), (rho 2362 : F)⟩
        ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩
        ⟨(rho 2374 : F), (rho 2375 : F)⟩ := by
    have hnextx : dtkAccX13 rho = dtkAccX12 rho + rho 2369 := by
      unfold dtkAccX13 dtkAccX12
      ring
    have hnexty : dtkAccY13 rho = dtkAccY12 rho + rho 2370 := by
      unfold dtkAccY13 dtkAccY12
      ring
    have ha0 : (rho 2361 + rho 2362) * (dtkAccX12 rho + dtkAccY12 rho) = rho 2363 := by
      unfold dtkAccX12 dtkAccY12
      linear_combination r2869
    have ha1 : rho 2362 * dtkAccX12 rho = rho 2364 := by
      unfold dtkAccX12
      linear_combination r2870
    have ha2 : rho 2361 * dtkAccY12 rho = rho 2365 := by
      unfold dtkAccY12
      linear_combination r2871
    have ha3 : 3021 * rho 2364 * rho 2365 = rho 2366 := by
      linear_combination r2872
    have ha4 : rho 2367 * (1 + rho 2366) = rho 2364 + rho 2365 := by
      linear_combination r2873
    have ha5 : rho 2368 * (1 - rho 2366) = rho 2363 - rho 2364 - rho 2365 := by
      linear_combination r2874
    have haddx :
        rho 2367 * (1 + 3021 * (rho 2362 * dtkAccX12 rho) * (rho 2361 * dtkAccY12 rho)) =
          rho 2362 * dtkAccX12 rho + rho 2361 * dtkAccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2368 * (1 - 3021 * (rho 2362 * dtkAccX12 rho) * (rho 2361 * dtkAccY12 rho)) =
          (-1) * (rho 2362 * dtkAccX12 rho) - rho 2361 * dtkAccY12 rho +
            (dtkAccY12 rho - dtkAccX12 rho * (-1)) * (rho 2361 + rho 2362) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2368 * (1 - rho 2366) = rho 2363 - rho 2364 - rho 2365 := ha5
        _ = (-1) * rho 2364 - rho 2365 + (dtkAccY12 rho - dtkAccX12 rho * (-1)) * (rho 2361 + rho 2362) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX13 rho = dtkAccX12 rho - Bool.toZMod bit * (dtkAccX12 rho - rho 2367) := by
      have hd : rho 2369 = Bool.toZMod bit * (rho 2367 - dtkAccX12 rho) := by
        rw [← hbit]
        unfold dtkAccX12
        linear_combination -r2875
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY13 rho = dtkAccY12 rho - Bool.toZMod bit * (dtkAccY12 rho - rho 2368) := by
      have hd : rho 2370 = Bool.toZMod bit * (rho 2368 - dtkAccY12 rho) := by
        rw [← hbit]
        unfold dtkAccY12
        linear_combination -r2876
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2361 * rho 2362 = rho 2371 := by linear_combination r2877
    have hd1 : rho 2361 * rho 2361 = rho 2372 := by linear_combination r2878
    have hd2 : rho 2362 * rho 2362 = rho 2373 := by linear_combination r2879
    have hd3 : rho 2374 * (rho 2362 * rho 2362 + rho 2361 * rho 2361 * (-1)) = 2 * (rho 2361 * rho 2362) := by
      rw [hd0, hd1, hd2]
      linear_combination r2880
    have hd4 : rho 2375 * (2 - (rho 2362 * rho 2362 + rho 2361 * rho 2361 * (-1))) = rho 2362 * rho 2362 - rho 2361 * rho 2361 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2881
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX12 rho : F), (dtkAccY12 rho : F)⟩
      ⟨(rho 2361 : F), (rho 2362 : F)⟩
      ⟨(rho 2367 : F), (rho 2368 : F)⟩
      ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩
      ⟨(rho 2374 : F), (rho 2375 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem dtk_rows13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2882 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2883 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2884 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2885 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2886 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2887 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2888 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2889 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2890 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2891 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2892 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2893 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2894 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨_, _, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894⟩

theorem dtk_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 996 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2374 : F), (rho 2375 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩
        ⟨(rho 2374 : F), (rho 2375 : F)⟩
        ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩
        ⟨(rho 2387 : F), (rho 2388 : F)⟩ := by
  obtain ⟨r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894⟩ := dtk_rows13 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2882 at r2882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2883 at r2883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2884 at r2884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2885 at r2885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2886 at r2886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2887 at r2887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2888 at r2888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2889 at r2889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2890 at r2890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2891 at r2891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2892 at r2892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2893 at r2893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2894 at r2894
  have hrung13 (bit : Bool) (hbit : rho 996 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2374 : F), (rho 2375 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩
        ⟨(rho 2374 : F), (rho 2375 : F)⟩
        ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩
        ⟨(rho 2387 : F), (rho 2388 : F)⟩ := by
    have hnextx : dtkAccX14 rho = dtkAccX13 rho + rho 2382 := by
      unfold dtkAccX14 dtkAccX13
      ring
    have hnexty : dtkAccY14 rho = dtkAccY13 rho + rho 2383 := by
      unfold dtkAccY14 dtkAccY13
      ring
    have ha0 : (rho 2374 + rho 2375) * (dtkAccX13 rho + dtkAccY13 rho) = rho 2376 := by
      unfold dtkAccX13 dtkAccY13
      linear_combination r2882
    have ha1 : rho 2375 * dtkAccX13 rho = rho 2377 := by
      unfold dtkAccX13
      linear_combination r2883
    have ha2 : rho 2374 * dtkAccY13 rho = rho 2378 := by
      unfold dtkAccY13
      linear_combination r2884
    have ha3 : 3021 * rho 2377 * rho 2378 = rho 2379 := by
      linear_combination r2885
    have ha4 : rho 2380 * (1 + rho 2379) = rho 2377 + rho 2378 := by
      linear_combination r2886
    have ha5 : rho 2381 * (1 - rho 2379) = rho 2376 - rho 2377 - rho 2378 := by
      linear_combination r2887
    have haddx :
        rho 2380 * (1 + 3021 * (rho 2375 * dtkAccX13 rho) * (rho 2374 * dtkAccY13 rho)) =
          rho 2375 * dtkAccX13 rho + rho 2374 * dtkAccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2381 * (1 - 3021 * (rho 2375 * dtkAccX13 rho) * (rho 2374 * dtkAccY13 rho)) =
          (-1) * (rho 2375 * dtkAccX13 rho) - rho 2374 * dtkAccY13 rho +
            (dtkAccY13 rho - dtkAccX13 rho * (-1)) * (rho 2374 + rho 2375) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2381 * (1 - rho 2379) = rho 2376 - rho 2377 - rho 2378 := ha5
        _ = (-1) * rho 2377 - rho 2378 + (dtkAccY13 rho - dtkAccX13 rho * (-1)) * (rho 2374 + rho 2375) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX14 rho = dtkAccX13 rho - Bool.toZMod bit * (dtkAccX13 rho - rho 2380) := by
      have hd : rho 2382 = Bool.toZMod bit * (rho 2380 - dtkAccX13 rho) := by
        rw [← hbit]
        unfold dtkAccX13
        linear_combination -r2888
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY14 rho = dtkAccY13 rho - Bool.toZMod bit * (dtkAccY13 rho - rho 2381) := by
      have hd : rho 2383 = Bool.toZMod bit * (rho 2381 - dtkAccY13 rho) := by
        rw [← hbit]
        unfold dtkAccY13
        linear_combination -r2889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2374 * rho 2375 = rho 2384 := by linear_combination r2890
    have hd1 : rho 2374 * rho 2374 = rho 2385 := by linear_combination r2891
    have hd2 : rho 2375 * rho 2375 = rho 2386 := by linear_combination r2892
    have hd3 : rho 2387 * (rho 2375 * rho 2375 + rho 2374 * rho 2374 * (-1)) = 2 * (rho 2374 * rho 2375) := by
      rw [hd0, hd1, hd2]
      linear_combination r2893
    have hd4 : rho 2388 * (2 - (rho 2375 * rho 2375 + rho 2374 * rho 2374 * (-1))) = rho 2375 * rho 2375 - rho 2374 * rho 2374 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX13 rho : F), (dtkAccY13 rho : F)⟩
      ⟨(rho 2374 : F), (rho 2375 : F)⟩
      ⟨(rho 2380 : F), (rho 2381 : F)⟩
      ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩
      ⟨(rho 2387 : F), (rho 2388 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem dtk_rows14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2895 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2896 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2897 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2898 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2899 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2900 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2901 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2902 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2903 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2904 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2905 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2906 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2907 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907⟩

theorem dtk_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 997 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2387 : F), (rho 2388 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩
        ⟨(rho 2387 : F), (rho 2388 : F)⟩
        ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩
        ⟨(rho 2400 : F), (rho 2401 : F)⟩ := by
  obtain ⟨r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907⟩ := dtk_rows14 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2895 at r2895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2896 at r2896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2897 at r2897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2898 at r2898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2899 at r2899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2900 at r2900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2901 at r2901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2902 at r2902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2903 at r2903
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2904 at r2904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2905 at r2905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2906 at r2906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2907 at r2907
  have hrung14 (bit : Bool) (hbit : rho 997 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2387 : F), (rho 2388 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩
        ⟨(rho 2387 : F), (rho 2388 : F)⟩
        ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩
        ⟨(rho 2400 : F), (rho 2401 : F)⟩ := by
    have hnextx : dtkAccX15 rho = dtkAccX14 rho + rho 2395 := by
      unfold dtkAccX15 dtkAccX14
      ring
    have hnexty : dtkAccY15 rho = dtkAccY14 rho + rho 2396 := by
      unfold dtkAccY15 dtkAccY14
      ring
    have ha0 : (rho 2387 + rho 2388) * (dtkAccX14 rho + dtkAccY14 rho) = rho 2389 := by
      unfold dtkAccX14 dtkAccY14
      linear_combination r2895
    have ha1 : rho 2388 * dtkAccX14 rho = rho 2390 := by
      unfold dtkAccX14
      linear_combination r2896
    have ha2 : rho 2387 * dtkAccY14 rho = rho 2391 := by
      unfold dtkAccY14
      linear_combination r2897
    have ha3 : 3021 * rho 2390 * rho 2391 = rho 2392 := by
      linear_combination r2898
    have ha4 : rho 2393 * (1 + rho 2392) = rho 2390 + rho 2391 := by
      linear_combination r2899
    have ha5 : rho 2394 * (1 - rho 2392) = rho 2389 - rho 2390 - rho 2391 := by
      linear_combination r2900
    have haddx :
        rho 2393 * (1 + 3021 * (rho 2388 * dtkAccX14 rho) * (rho 2387 * dtkAccY14 rho)) =
          rho 2388 * dtkAccX14 rho + rho 2387 * dtkAccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2394 * (1 - 3021 * (rho 2388 * dtkAccX14 rho) * (rho 2387 * dtkAccY14 rho)) =
          (-1) * (rho 2388 * dtkAccX14 rho) - rho 2387 * dtkAccY14 rho +
            (dtkAccY14 rho - dtkAccX14 rho * (-1)) * (rho 2387 + rho 2388) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2394 * (1 - rho 2392) = rho 2389 - rho 2390 - rho 2391 := ha5
        _ = (-1) * rho 2390 - rho 2391 + (dtkAccY14 rho - dtkAccX14 rho * (-1)) * (rho 2387 + rho 2388) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX15 rho = dtkAccX14 rho - Bool.toZMod bit * (dtkAccX14 rho - rho 2393) := by
      have hd : rho 2395 = Bool.toZMod bit * (rho 2393 - dtkAccX14 rho) := by
        rw [← hbit]
        unfold dtkAccX14
        linear_combination -r2901
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY15 rho = dtkAccY14 rho - Bool.toZMod bit * (dtkAccY14 rho - rho 2394) := by
      have hd : rho 2396 = Bool.toZMod bit * (rho 2394 - dtkAccY14 rho) := by
        rw [← hbit]
        unfold dtkAccY14
        linear_combination -r2902
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2387 * rho 2388 = rho 2397 := by linear_combination r2903
    have hd1 : rho 2387 * rho 2387 = rho 2398 := by linear_combination r2904
    have hd2 : rho 2388 * rho 2388 = rho 2399 := by linear_combination r2905
    have hd3 : rho 2400 * (rho 2388 * rho 2388 + rho 2387 * rho 2387 * (-1)) = 2 * (rho 2387 * rho 2388) := by
      rw [hd0, hd1, hd2]
      linear_combination r2906
    have hd4 : rho 2401 * (2 - (rho 2388 * rho 2388 + rho 2387 * rho 2387 * (-1))) = rho 2388 * rho 2388 - rho 2387 * rho 2387 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2907
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX14 rho : F), (dtkAccY14 rho : F)⟩
      ⟨(rho 2387 : F), (rho 2388 : F)⟩
      ⟨(rho 2393 : F), (rho 2394 : F)⟩
      ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩
      ⟨(rho 2400 : F), (rho 2401 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem dtk_rows15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2908 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2909 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2910 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2911 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2912 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2913 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2914 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2915 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2916 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2917 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2918 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2919 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2920 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920⟩

theorem dtk_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 998 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2400 : F), (rho 2401 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩
        ⟨(rho 2400 : F), (rho 2401 : F)⟩
        ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩
        ⟨(rho 2413 : F), (rho 2414 : F)⟩ := by
  obtain ⟨r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920⟩ := dtk_rows15 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2908 at r2908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2909 at r2909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2910 at r2910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2911 at r2911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2912 at r2912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2913 at r2913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2914 at r2914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2915 at r2915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2916 at r2916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2917 at r2917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2918 at r2918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2919 at r2919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2920 at r2920
  have hrung15 (bit : Bool) (hbit : rho 998 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2400 : F), (rho 2401 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩
        ⟨(rho 2400 : F), (rho 2401 : F)⟩
        ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩
        ⟨(rho 2413 : F), (rho 2414 : F)⟩ := by
    have hnextx : dtkAccX16 rho = dtkAccX15 rho + rho 2408 := by
      unfold dtkAccX16 dtkAccX15
      ring
    have hnexty : dtkAccY16 rho = dtkAccY15 rho + rho 2409 := by
      unfold dtkAccY16 dtkAccY15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 2214 13]
      ring
    have ha0 : (rho 2400 + rho 2401) * (dtkAccX15 rho + dtkAccY15 rho) = rho 2402 := by
      unfold dtkAccX15 dtkAccY15
      linear_combination r2908
    have ha1 : rho 2401 * dtkAccX15 rho = rho 2403 := by
      unfold dtkAccX15
      linear_combination r2909
    have ha2 : rho 2400 * dtkAccY15 rho = rho 2404 := by
      unfold dtkAccY15
      linear_combination r2910
    have ha3 : 3021 * rho 2403 * rho 2404 = rho 2405 := by
      linear_combination r2911
    have ha4 : rho 2406 * (1 + rho 2405) = rho 2403 + rho 2404 := by
      linear_combination r2912
    have ha5 : rho 2407 * (1 - rho 2405) = rho 2402 - rho 2403 - rho 2404 := by
      linear_combination r2913
    have haddx :
        rho 2406 * (1 + 3021 * (rho 2401 * dtkAccX15 rho) * (rho 2400 * dtkAccY15 rho)) =
          rho 2401 * dtkAccX15 rho + rho 2400 * dtkAccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2407 * (1 - 3021 * (rho 2401 * dtkAccX15 rho) * (rho 2400 * dtkAccY15 rho)) =
          (-1) * (rho 2401 * dtkAccX15 rho) - rho 2400 * dtkAccY15 rho +
            (dtkAccY15 rho - dtkAccX15 rho * (-1)) * (rho 2400 + rho 2401) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2407 * (1 - rho 2405) = rho 2402 - rho 2403 - rho 2404 := ha5
        _ = (-1) * rho 2403 - rho 2404 + (dtkAccY15 rho - dtkAccX15 rho * (-1)) * (rho 2400 + rho 2401) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX16 rho = dtkAccX15 rho - Bool.toZMod bit * (dtkAccX15 rho - rho 2406) := by
      have hd : rho 2408 = Bool.toZMod bit * (rho 2406 - dtkAccX15 rho) := by
        rw [← hbit]
        unfold dtkAccX15
        linear_combination -r2914
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY16 rho = dtkAccY15 rho - Bool.toZMod bit * (dtkAccY15 rho - rho 2407) := by
      have hd : rho 2409 = Bool.toZMod bit * (rho 2407 - dtkAccY15 rho) := by
        rw [← hbit]
        unfold dtkAccY15
        linear_combination -r2915
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2400 * rho 2401 = rho 2410 := by linear_combination r2916
    have hd1 : rho 2400 * rho 2400 = rho 2411 := by linear_combination r2917
    have hd2 : rho 2401 * rho 2401 = rho 2412 := by linear_combination r2918
    have hd3 : rho 2413 * (rho 2401 * rho 2401 + rho 2400 * rho 2400 * (-1)) = 2 * (rho 2400 * rho 2401) := by
      rw [hd0, hd1, hd2]
      linear_combination r2919
    have hd4 : rho 2414 * (2 - (rho 2401 * rho 2401 + rho 2400 * rho 2400 * (-1))) = rho 2401 * rho 2401 - rho 2400 * rho 2400 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2920
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX15 rho : F), (dtkAccY15 rho : F)⟩
      ⟨(rho 2400 : F), (rho 2401 : F)⟩
      ⟨(rho 2406 : F), (rho 2407 : F)⟩
      ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩
      ⟨(rho 2413 : F), (rho 2414 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem dtk_rows16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2921 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2922 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2923 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2924 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2925 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2926 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2927 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2928 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2929 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2930 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2931 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2932 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2933 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933⟩

theorem dtk_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 999 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2413 : F), (rho 2414 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩
        ⟨(rho 2413 : F), (rho 2414 : F)⟩
        ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩
        ⟨(rho 2426 : F), (rho 2427 : F)⟩ := by
  obtain ⟨r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933⟩ := dtk_rows16 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2921 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc168 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc168Part0 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc168Part1 at r2921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2922 at r2922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2923 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc169 at r2923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2924 at r2924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2925 at r2925
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2926 at r2926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2927 at r2927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2928 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc170 at r2928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2929 at r2929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2930 at r2930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2931 at r2931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2932 at r2932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2933 at r2933
  have hrung16 (bit : Bool) (hbit : rho 999 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2413 : F), (rho 2414 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩
        ⟨(rho 2413 : F), (rho 2414 : F)⟩
        ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩
        ⟨(rho 2426 : F), (rho 2427 : F)⟩ := by
    have hnextx : dtkAccX17 rho = dtkAccX16 rho + rho 2421 := by
      unfold dtkAccX17 dtkAccX16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 2226 13]
      ring
    have hnexty : dtkAccY17 rho = dtkAccY16 rho + rho 2422 := by
      unfold dtkAccY17 dtkAccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 16]
      ring
    have ha0 : (rho 2413 + rho 2414) * (dtkAccX16 rho + dtkAccY16 rho) = rho 2415 := by
      unfold dtkAccX16 dtkAccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 2214 13]
      linear_combination r2921
    have ha1 : rho 2414 * dtkAccX16 rho = rho 2416 := by
      unfold dtkAccX16
      linear_combination r2922
    have ha2 : rho 2413 * dtkAccY16 rho = rho 2417 := by
      unfold dtkAccY16
      linear_combination r2923
    have ha3 : 3021 * rho 2416 * rho 2417 = rho 2418 := by
      linear_combination r2924
    have ha4 : rho 2419 * (1 + rho 2418) = rho 2416 + rho 2417 := by
      linear_combination r2925
    have ha5 : rho 2420 * (1 - rho 2418) = rho 2415 - rho 2416 - rho 2417 := by
      linear_combination r2926
    have haddx :
        rho 2419 * (1 + 3021 * (rho 2414 * dtkAccX16 rho) * (rho 2413 * dtkAccY16 rho)) =
          rho 2414 * dtkAccX16 rho + rho 2413 * dtkAccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2420 * (1 - 3021 * (rho 2414 * dtkAccX16 rho) * (rho 2413 * dtkAccY16 rho)) =
          (-1) * (rho 2414 * dtkAccX16 rho) - rho 2413 * dtkAccY16 rho +
            (dtkAccY16 rho - dtkAccX16 rho * (-1)) * (rho 2413 + rho 2414) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2420 * (1 - rho 2418) = rho 2415 - rho 2416 - rho 2417 := ha5
        _ = (-1) * rho 2416 - rho 2417 + (dtkAccY16 rho - dtkAccX16 rho * (-1)) * (rho 2413 + rho 2414) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX17 rho = dtkAccX16 rho - Bool.toZMod bit * (dtkAccX16 rho - rho 2419) := by
      have hd : rho 2421 = Bool.toZMod bit * (rho 2419 - dtkAccX16 rho) := by
        rw [← hbit]
        unfold dtkAccX16
        linear_combination -r2927
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY17 rho = dtkAccY16 rho - Bool.toZMod bit * (dtkAccY16 rho - rho 2420) := by
      have hd : rho 2422 = Bool.toZMod bit * (rho 2420 - dtkAccY16 rho) := by
        rw [← hbit]
        unfold dtkAccY16
        linear_combination -r2928
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2413 * rho 2414 = rho 2423 := by linear_combination r2929
    have hd1 : rho 2413 * rho 2413 = rho 2424 := by linear_combination r2930
    have hd2 : rho 2414 * rho 2414 = rho 2425 := by linear_combination r2931
    have hd3 : rho 2426 * (rho 2414 * rho 2414 + rho 2413 * rho 2413 * (-1)) = 2 * (rho 2413 * rho 2414) := by
      rw [hd0, hd1, hd2]
      linear_combination r2932
    have hd4 : rho 2427 * (2 - (rho 2414 * rho 2414 + rho 2413 * rho 2413 * (-1))) = rho 2414 * rho 2414 - rho 2413 * rho 2413 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2933
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX16 rho : F), (dtkAccY16 rho : F)⟩
      ⟨(rho 2413 : F), (rho 2414 : F)⟩
      ⟨(rho 2419 : F), (rho 2420 : F)⟩
      ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩
      ⟨(rho 2426 : F), (rho 2427 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem dtk_rows17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2934 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2935 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2936 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2937 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2938 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2939 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2940 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2941 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2942 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2943 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2944 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2945 rho ∧ Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2946 rho := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946⟩

theorem dtk_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport.Outputs.F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho) :
    ∀ (bit : Bool), rho 1000 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 2426 : F), (rho 2427 : F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩
        ⟨(rho 2426 : F), (rho 2427 : F)⟩
        ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩
        ⟨(rho 2439 : F), (rho 2440 : F)⟩ := by
  obtain ⟨r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946⟩ := dtk_rows17 rho h
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2934 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc171 at r2934
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2935 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc172 at r2935
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2936 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc173 at r2936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2937 at r2937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2938 at r2938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2939 at r2939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2940 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc174 at r2940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2941 Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationLc175 at r2941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2942 at r2942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2943 at r2943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2944 at r2944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2945 at r2945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relationRow2946 at r2946
  have hrung17 (bit : Bool) (hbit : rho 1000 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 2426 : F), (rho 2427 : F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩
        ⟨(rho 2426 : F), (rho 2427 : F)⟩
        ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩
        ⟨(rho 2439 : F), (rho 2440 : F)⟩ := by
    have hnextx : dtkAccX18 rho = dtkAccX17 rho + rho 2434 := by
      unfold dtkAccX18 dtkAccX17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2226 13 16]
      ring
    have hnexty : dtkAccY18 rho = dtkAccY17 rho + rho 2435 := by
      unfold dtkAccY18 dtkAccY17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 2214 13 17]
      ring
    have ha0 : (rho 2426 + rho 2427) * (dtkAccX17 rho + dtkAccY17 rho) = rho 2428 := by
      unfold dtkAccX17 dtkAccY17
      linear_combination r2934
    have ha1 : rho 2427 * dtkAccX17 rho = rho 2429 := by
      unfold dtkAccX17
      linear_combination r2935
    have ha2 : rho 2426 * dtkAccY17 rho = rho 2430 := by
      unfold dtkAccY17
      linear_combination r2936
    have ha3 : 3021 * rho 2429 * rho 2430 = rho 2431 := by
      linear_combination r2937
    have ha4 : rho 2432 * (1 + rho 2431) = rho 2429 + rho 2430 := by
      linear_combination r2938
    have ha5 : rho 2433 * (1 - rho 2431) = rho 2428 - rho 2429 - rho 2430 := by
      linear_combination r2939
    have haddx :
        rho 2432 * (1 + 3021 * (rho 2427 * dtkAccX17 rho) * (rho 2426 * dtkAccY17 rho)) =
          rho 2427 * dtkAccX17 rho + rho 2426 * dtkAccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 2433 * (1 - 3021 * (rho 2427 * dtkAccX17 rho) * (rho 2426 * dtkAccY17 rho)) =
          (-1) * (rho 2427 * dtkAccX17 rho) - rho 2426 * dtkAccY17 rho +
            (dtkAccY17 rho - dtkAccX17 rho * (-1)) * (rho 2426 + rho 2427) := by
      rw [ha1, ha2, ha3]
      calc
        rho 2433 * (1 - rho 2431) = rho 2428 - rho 2429 - rho 2430 := ha5
        _ = (-1) * rho 2429 - rho 2430 + (dtkAccY17 rho - dtkAccX17 rho * (-1)) * (rho 2426 + rho 2427) := by
          rw [← ha0]
          ring
    have hselx : dtkAccX18 rho = dtkAccX17 rho - Bool.toZMod bit * (dtkAccX17 rho - rho 2432) := by
      have hd : rho 2434 = Bool.toZMod bit * (rho 2432 - dtkAccX17 rho) := by
        rw [← hbit]
        unfold dtkAccX17
        linear_combination -r2940
      rw [hnextx]
      linear_combination hd
    have hsely : dtkAccY18 rho = dtkAccY17 rho - Bool.toZMod bit * (dtkAccY17 rho - rho 2433) := by
      have hd : rho 2435 = Bool.toZMod bit * (rho 2433 - dtkAccY17 rho) := by
        rw [← hbit]
        unfold dtkAccY17
        linear_combination -r2941
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 2426 * rho 2427 = rho 2436 := by linear_combination r2942
    have hd1 : rho 2426 * rho 2426 = rho 2437 := by linear_combination r2943
    have hd2 : rho 2427 * rho 2427 = rho 2438 := by linear_combination r2944
    have hd3 : rho 2439 * (rho 2427 * rho 2427 + rho 2426 * rho 2426 * (-1)) = 2 * (rho 2426 * rho 2427) := by
      rw [hd0, hd1, hd2]
      linear_combination r2945
    have hd4 : rho 2440 * (2 - (rho 2427 * rho 2427 + rho 2426 * rho 2426 * (-1))) = rho 2427 * rho 2427 - rho 2426 * rho 2426 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2946
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(dtkAccX17 rho : F), (dtkAccY17 rho : F)⟩
      ⟨(rho 2426 : F), (rho 2427 : F)⟩
      ⟨(rho 2432 : F), (rho 2433 : F)⟩
      ⟨(dtkAccX18 rho : F), (dtkAccY18 rho : F)⟩
      ⟨(rho 2439 : F), (rho 2440 : F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem dtk_hstep_c2 (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (983 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 12 ≤ i → i < 18 →
      EdwardsBridge.onCurve (dtkLadderAccState rho i) →
      EdwardsBridge.onCurve (dtkLadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (dtkLadderAccState rho i) (dtkLadderCurState rho i)
        (dtkLadderAccState rho (i + 1)) (dtkLadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact dtk_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact dtk_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact dtk_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact dtk_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact dtk_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact dtk_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafDiversifiedTransmissionKey_7d900c76452264a8cdb821542b166cde6ebe25f9d05dac1d3e8cd4a896c6637b.DtkSupport
