import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg6ScalarDefs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

open Shieldd.GnarkFormal.Deployed.Dtk.Outputs

theorem seg6_rows11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2856 rho ∧ Seg6.relationRow2857 rho ∧ Seg6.relationRow2858 rho ∧ Seg6.relationRow2859 rho ∧ Seg6.relationRow2860 rho ∧ Seg6.relationRow2861 rho ∧ Seg6.relationRow2862 rho ∧ Seg6.relationRow2863 rho ∧ Seg6.relationRow2864 rho ∧ Seg6.relationRow2865 rho ∧ Seg6.relationRow2866 rho ∧ Seg6.relationRow2867 rho ∧ Seg6.relationRow2868 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p35, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868⟩

theorem seg6_rung11 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1901 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3253 : Seg6.F), (rho 3254 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩
        ⟨(rho 3253 : Seg6.F), (rho 3254 : Seg6.F)⟩
        ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩
        ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩ := by
  obtain ⟨r2856, r2857, r2858, r2859, r2860, r2861, r2862, r2863, r2864, r2865, r2866, r2867, r2868⟩ := seg6_rows11 rho h
  unfold Seg6.relationRow2856 at r2856
  unfold Seg6.relationRow2857 at r2857
  unfold Seg6.relationRow2858 at r2858
  unfold Seg6.relationRow2859 at r2859
  unfold Seg6.relationRow2860 at r2860
  unfold Seg6.relationRow2861 at r2861
  unfold Seg6.relationRow2862 at r2862
  unfold Seg6.relationRow2863 at r2863
  unfold Seg6.relationRow2864 at r2864
  unfold Seg6.relationRow2865 at r2865
  unfold Seg6.relationRow2866 at r2866
  unfold Seg6.relationRow2867 at r2867
  unfold Seg6.relationRow2868 at r2868
  have hrung11 (bit : Bool) (hbit : rho 1901 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3253 : Seg6.F), (rho 3254 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩
        ⟨(rho 3253 : Seg6.F), (rho 3254 : Seg6.F)⟩
        ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩
        ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩ := by
    have hnextx : seg6AccX12 rho = seg6AccX11 rho + rho 3261 := by
      unfold seg6AccX12 seg6AccX11
      ring
    have hnexty : seg6AccY12 rho = seg6AccY11 rho + rho 3262 := by
      unfold seg6AccY12 seg6AccY11
      ring
    have ha0 : (rho 3253 + rho 3254) * (seg6AccX11 rho + seg6AccY11 rho) = rho 3255 := by
      unfold seg6AccX11 seg6AccY11
      linear_combination r2856
    have ha1 : rho 3254 * seg6AccX11 rho = rho 3256 := by
      unfold seg6AccX11
      linear_combination r2857
    have ha2 : rho 3253 * seg6AccY11 rho = rho 3257 := by
      unfold seg6AccY11
      linear_combination r2858
    have ha3 : 3021 * rho 3256 * rho 3257 = rho 3258 := by
      linear_combination r2859
    have ha4 : rho 3259 * (1 + rho 3258) = rho 3256 + rho 3257 := by
      linear_combination r2860
    have ha5 : rho 3260 * (1 - rho 3258) = rho 3255 - rho 3256 - rho 3257 := by
      linear_combination r2861
    have haddx :
        rho 3259 * (1 + 3021 * (rho 3254 * seg6AccX11 rho) * (rho 3253 * seg6AccY11 rho)) =
          rho 3254 * seg6AccX11 rho + rho 3253 * seg6AccY11 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3260 * (1 - 3021 * (rho 3254 * seg6AccX11 rho) * (rho 3253 * seg6AccY11 rho)) =
          (-1) * (rho 3254 * seg6AccX11 rho) - rho 3253 * seg6AccY11 rho +
            (seg6AccY11 rho - seg6AccX11 rho * (-1)) * (rho 3253 + rho 3254) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3260 * (1 - rho 3258) = rho 3255 - rho 3256 - rho 3257 := ha5
        _ = (-1) * rho 3256 - rho 3257 + (seg6AccY11 rho - seg6AccX11 rho * (-1)) * (rho 3253 + rho 3254) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX12 rho = seg6AccX11 rho - Bool.toZMod bit * (seg6AccX11 rho - rho 3259) := by
      have hd : rho 3261 = Bool.toZMod bit * (rho 3259 - seg6AccX11 rho) := by
        rw [← hbit]
        unfold seg6AccX11
        linear_combination -r2862
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY12 rho = seg6AccY11 rho - Bool.toZMod bit * (seg6AccY11 rho - rho 3260) := by
      have hd : rho 3262 = Bool.toZMod bit * (rho 3260 - seg6AccY11 rho) := by
        rw [← hbit]
        unfold seg6AccY11
        linear_combination -r2863
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3253 * rho 3254 = rho 3263 := by linear_combination r2864
    have hd1 : rho 3253 * rho 3253 = rho 3264 := by linear_combination r2865
    have hd2 : rho 3254 * rho 3254 = rho 3265 := by linear_combination r2866
    have hd3 : rho 3266 * (rho 3254 * rho 3254 + rho 3253 * rho 3253 * (-1)) = 2 * (rho 3253 * rho 3254) := by
      rw [hd0, hd1, hd2]
      linear_combination r2867
    have hd4 : rho 3267 * (2 - (rho 3254 * rho 3254 + rho 3253 * rho 3253 * (-1))) = rho 3254 * rho 3254 - rho 3253 * rho 3253 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2868
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX11 rho : Seg6.F), (seg6AccY11 rho : Seg6.F)⟩
      ⟨(rho 3253 : Seg6.F), (rho 3254 : Seg6.F)⟩
      ⟨(rho 3259 : Seg6.F), (rho 3260 : Seg6.F)⟩
      ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩
      ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung11

theorem seg6_rows12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2869 rho ∧ Seg6.relationRow2870 rho ∧ Seg6.relationRow2871 rho ∧ Seg6.relationRow2872 rho ∧ Seg6.relationRow2873 rho ∧ Seg6.relationRow2874 rho ∧ Seg6.relationRow2875 rho ∧ Seg6.relationRow2876 rho ∧ Seg6.relationRow2877 rho ∧ Seg6.relationRow2878 rho ∧ Seg6.relationRow2879 rho ∧ Seg6.relationRow2880 rho ∧ Seg6.relationRow2881 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart35 at p35
  rcases p35 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879⟩
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨r2880, r2881, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880, r2881⟩

theorem seg6_rung12 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1902 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩
        ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩
        ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩
        ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩ := by
  obtain ⟨r2869, r2870, r2871, r2872, r2873, r2874, r2875, r2876, r2877, r2878, r2879, r2880, r2881⟩ := seg6_rows12 rho h
  unfold Seg6.relationRow2869 at r2869
  unfold Seg6.relationRow2870 at r2870
  unfold Seg6.relationRow2871 at r2871
  unfold Seg6.relationRow2872 at r2872
  unfold Seg6.relationRow2873 at r2873
  unfold Seg6.relationRow2874 at r2874
  unfold Seg6.relationRow2875 at r2875
  unfold Seg6.relationRow2876 at r2876
  unfold Seg6.relationRow2877 at r2877
  unfold Seg6.relationRow2878 at r2878
  unfold Seg6.relationRow2879 at r2879
  unfold Seg6.relationRow2880 at r2880
  unfold Seg6.relationRow2881 at r2881
  have hrung12 (bit : Bool) (hbit : rho 1902 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩
        ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩
        ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩
        ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩ := by
    have hnextx : seg6AccX13 rho = seg6AccX12 rho + rho 3274 := by
      unfold seg6AccX13 seg6AccX12
      ring
    have hnexty : seg6AccY13 rho = seg6AccY12 rho + rho 3275 := by
      unfold seg6AccY13 seg6AccY12
      ring
    have ha0 : (rho 3266 + rho 3267) * (seg6AccX12 rho + seg6AccY12 rho) = rho 3268 := by
      unfold seg6AccX12 seg6AccY12
      linear_combination r2869
    have ha1 : rho 3267 * seg6AccX12 rho = rho 3269 := by
      unfold seg6AccX12
      linear_combination r2870
    have ha2 : rho 3266 * seg6AccY12 rho = rho 3270 := by
      unfold seg6AccY12
      linear_combination r2871
    have ha3 : 3021 * rho 3269 * rho 3270 = rho 3271 := by
      linear_combination r2872
    have ha4 : rho 3272 * (1 + rho 3271) = rho 3269 + rho 3270 := by
      linear_combination r2873
    have ha5 : rho 3273 * (1 - rho 3271) = rho 3268 - rho 3269 - rho 3270 := by
      linear_combination r2874
    have haddx :
        rho 3272 * (1 + 3021 * (rho 3267 * seg6AccX12 rho) * (rho 3266 * seg6AccY12 rho)) =
          rho 3267 * seg6AccX12 rho + rho 3266 * seg6AccY12 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3273 * (1 - 3021 * (rho 3267 * seg6AccX12 rho) * (rho 3266 * seg6AccY12 rho)) =
          (-1) * (rho 3267 * seg6AccX12 rho) - rho 3266 * seg6AccY12 rho +
            (seg6AccY12 rho - seg6AccX12 rho * (-1)) * (rho 3266 + rho 3267) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3273 * (1 - rho 3271) = rho 3268 - rho 3269 - rho 3270 := ha5
        _ = (-1) * rho 3269 - rho 3270 + (seg6AccY12 rho - seg6AccX12 rho * (-1)) * (rho 3266 + rho 3267) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX13 rho = seg6AccX12 rho - Bool.toZMod bit * (seg6AccX12 rho - rho 3272) := by
      have hd : rho 3274 = Bool.toZMod bit * (rho 3272 - seg6AccX12 rho) := by
        rw [← hbit]
        unfold seg6AccX12
        linear_combination -r2875
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY13 rho = seg6AccY12 rho - Bool.toZMod bit * (seg6AccY12 rho - rho 3273) := by
      have hd : rho 3275 = Bool.toZMod bit * (rho 3273 - seg6AccY12 rho) := by
        rw [← hbit]
        unfold seg6AccY12
        linear_combination -r2876
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3266 * rho 3267 = rho 3276 := by linear_combination r2877
    have hd1 : rho 3266 * rho 3266 = rho 3277 := by linear_combination r2878
    have hd2 : rho 3267 * rho 3267 = rho 3278 := by linear_combination r2879
    have hd3 : rho 3279 * (rho 3267 * rho 3267 + rho 3266 * rho 3266 * (-1)) = 2 * (rho 3266 * rho 3267) := by
      rw [hd0, hd1, hd2]
      linear_combination r2880
    have hd4 : rho 3280 * (2 - (rho 3267 * rho 3267 + rho 3266 * rho 3266 * (-1))) = rho 3267 * rho 3267 - rho 3266 * rho 3266 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2881
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX12 rho : Seg6.F), (seg6AccY12 rho : Seg6.F)⟩
      ⟨(rho 3266 : Seg6.F), (rho 3267 : Seg6.F)⟩
      ⟨(rho 3272 : Seg6.F), (rho 3273 : Seg6.F)⟩
      ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩
      ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung12

theorem seg6_rows13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2882 rho ∧ Seg6.relationRow2883 rho ∧ Seg6.relationRow2884 rho ∧ Seg6.relationRow2885 rho ∧ Seg6.relationRow2886 rho ∧ Seg6.relationRow2887 rho ∧ Seg6.relationRow2888 rho ∧ Seg6.relationRow2889 rho ∧ Seg6.relationRow2890 rho ∧ Seg6.relationRow2891 rho ∧ Seg6.relationRow2892 rho ∧ Seg6.relationRow2893 rho ∧ Seg6.relationRow2894 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨_, _, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894⟩

theorem seg6_rung13 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1903 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩
        ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩
        ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩
        ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩ := by
  obtain ⟨r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894⟩ := seg6_rows13 rho h
  unfold Seg6.relationRow2882 at r2882
  unfold Seg6.relationRow2883 at r2883
  unfold Seg6.relationRow2884 at r2884
  unfold Seg6.relationRow2885 at r2885
  unfold Seg6.relationRow2886 at r2886
  unfold Seg6.relationRow2887 at r2887
  unfold Seg6.relationRow2888 at r2888
  unfold Seg6.relationRow2889 at r2889
  unfold Seg6.relationRow2890 at r2890
  unfold Seg6.relationRow2891 at r2891
  unfold Seg6.relationRow2892 at r2892
  unfold Seg6.relationRow2893 at r2893
  unfold Seg6.relationRow2894 at r2894
  have hrung13 (bit : Bool) (hbit : rho 1903 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩
        ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩
        ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩
        ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩ := by
    have hnextx : seg6AccX14 rho = seg6AccX13 rho + rho 3287 := by
      unfold seg6AccX14 seg6AccX13
      ring
    have hnexty : seg6AccY14 rho = seg6AccY13 rho + rho 3288 := by
      unfold seg6AccY14 seg6AccY13
      ring
    have ha0 : (rho 3279 + rho 3280) * (seg6AccX13 rho + seg6AccY13 rho) = rho 3281 := by
      unfold seg6AccX13 seg6AccY13
      linear_combination r2882
    have ha1 : rho 3280 * seg6AccX13 rho = rho 3282 := by
      unfold seg6AccX13
      linear_combination r2883
    have ha2 : rho 3279 * seg6AccY13 rho = rho 3283 := by
      unfold seg6AccY13
      linear_combination r2884
    have ha3 : 3021 * rho 3282 * rho 3283 = rho 3284 := by
      linear_combination r2885
    have ha4 : rho 3285 * (1 + rho 3284) = rho 3282 + rho 3283 := by
      linear_combination r2886
    have ha5 : rho 3286 * (1 - rho 3284) = rho 3281 - rho 3282 - rho 3283 := by
      linear_combination r2887
    have haddx :
        rho 3285 * (1 + 3021 * (rho 3280 * seg6AccX13 rho) * (rho 3279 * seg6AccY13 rho)) =
          rho 3280 * seg6AccX13 rho + rho 3279 * seg6AccY13 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3286 * (1 - 3021 * (rho 3280 * seg6AccX13 rho) * (rho 3279 * seg6AccY13 rho)) =
          (-1) * (rho 3280 * seg6AccX13 rho) - rho 3279 * seg6AccY13 rho +
            (seg6AccY13 rho - seg6AccX13 rho * (-1)) * (rho 3279 + rho 3280) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3286 * (1 - rho 3284) = rho 3281 - rho 3282 - rho 3283 := ha5
        _ = (-1) * rho 3282 - rho 3283 + (seg6AccY13 rho - seg6AccX13 rho * (-1)) * (rho 3279 + rho 3280) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX14 rho = seg6AccX13 rho - Bool.toZMod bit * (seg6AccX13 rho - rho 3285) := by
      have hd : rho 3287 = Bool.toZMod bit * (rho 3285 - seg6AccX13 rho) := by
        rw [← hbit]
        unfold seg6AccX13
        linear_combination -r2888
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY14 rho = seg6AccY13 rho - Bool.toZMod bit * (seg6AccY13 rho - rho 3286) := by
      have hd : rho 3288 = Bool.toZMod bit * (rho 3286 - seg6AccY13 rho) := by
        rw [← hbit]
        unfold seg6AccY13
        linear_combination -r2889
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3279 * rho 3280 = rho 3289 := by linear_combination r2890
    have hd1 : rho 3279 * rho 3279 = rho 3290 := by linear_combination r2891
    have hd2 : rho 3280 * rho 3280 = rho 3291 := by linear_combination r2892
    have hd3 : rho 3292 * (rho 3280 * rho 3280 + rho 3279 * rho 3279 * (-1)) = 2 * (rho 3279 * rho 3280) := by
      rw [hd0, hd1, hd2]
      linear_combination r2893
    have hd4 : rho 3293 * (2 - (rho 3280 * rho 3280 + rho 3279 * rho 3279 * (-1))) = rho 3280 * rho 3280 - rho 3279 * rho 3279 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2894
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX13 rho : Seg6.F), (seg6AccY13 rho : Seg6.F)⟩
      ⟨(rho 3279 : Seg6.F), (rho 3280 : Seg6.F)⟩
      ⟨(rho 3285 : Seg6.F), (rho 3286 : Seg6.F)⟩
      ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩
      ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung13

theorem seg6_rows14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2895 rho ∧ Seg6.relationRow2896 rho ∧ Seg6.relationRow2897 rho ∧ Seg6.relationRow2898 rho ∧ Seg6.relationRow2899 rho ∧ Seg6.relationRow2900 rho ∧ Seg6.relationRow2901 rho ∧ Seg6.relationRow2902 rho ∧ Seg6.relationRow2903 rho ∧ Seg6.relationRow2904 rho ∧ Seg6.relationRow2905 rho ∧ Seg6.relationRow2906 rho ∧ Seg6.relationRow2907 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907⟩

theorem seg6_rung14 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1904 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩
        ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩
        ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩
        ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩ := by
  obtain ⟨r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, r2904, r2905, r2906, r2907⟩ := seg6_rows14 rho h
  unfold Seg6.relationRow2895 at r2895
  unfold Seg6.relationRow2896 at r2896
  unfold Seg6.relationRow2897 at r2897
  unfold Seg6.relationRow2898 at r2898
  unfold Seg6.relationRow2899 at r2899
  unfold Seg6.relationRow2900 at r2900
  unfold Seg6.relationRow2901 at r2901
  unfold Seg6.relationRow2902 at r2902
  unfold Seg6.relationRow2903 at r2903
  unfold Seg6.relationRow2904 at r2904
  unfold Seg6.relationRow2905 at r2905
  unfold Seg6.relationRow2906 at r2906
  unfold Seg6.relationRow2907 at r2907
  have hrung14 (bit : Bool) (hbit : rho 1904 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩
        ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩
        ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩
        ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩ := by
    have hnextx : seg6AccX15 rho = seg6AccX14 rho + rho 3300 := by
      unfold seg6AccX15 seg6AccX14
      ring
    have hnexty : seg6AccY15 rho = seg6AccY14 rho + rho 3301 := by
      unfold seg6AccY15 seg6AccY14
      ring
    have ha0 : (rho 3292 + rho 3293) * (seg6AccX14 rho + seg6AccY14 rho) = rho 3294 := by
      unfold seg6AccX14 seg6AccY14
      linear_combination r2895
    have ha1 : rho 3293 * seg6AccX14 rho = rho 3295 := by
      unfold seg6AccX14
      linear_combination r2896
    have ha2 : rho 3292 * seg6AccY14 rho = rho 3296 := by
      unfold seg6AccY14
      linear_combination r2897
    have ha3 : 3021 * rho 3295 * rho 3296 = rho 3297 := by
      linear_combination r2898
    have ha4 : rho 3298 * (1 + rho 3297) = rho 3295 + rho 3296 := by
      linear_combination r2899
    have ha5 : rho 3299 * (1 - rho 3297) = rho 3294 - rho 3295 - rho 3296 := by
      linear_combination r2900
    have haddx :
        rho 3298 * (1 + 3021 * (rho 3293 * seg6AccX14 rho) * (rho 3292 * seg6AccY14 rho)) =
          rho 3293 * seg6AccX14 rho + rho 3292 * seg6AccY14 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3299 * (1 - 3021 * (rho 3293 * seg6AccX14 rho) * (rho 3292 * seg6AccY14 rho)) =
          (-1) * (rho 3293 * seg6AccX14 rho) - rho 3292 * seg6AccY14 rho +
            (seg6AccY14 rho - seg6AccX14 rho * (-1)) * (rho 3292 + rho 3293) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3299 * (1 - rho 3297) = rho 3294 - rho 3295 - rho 3296 := ha5
        _ = (-1) * rho 3295 - rho 3296 + (seg6AccY14 rho - seg6AccX14 rho * (-1)) * (rho 3292 + rho 3293) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX15 rho = seg6AccX14 rho - Bool.toZMod bit * (seg6AccX14 rho - rho 3298) := by
      have hd : rho 3300 = Bool.toZMod bit * (rho 3298 - seg6AccX14 rho) := by
        rw [← hbit]
        unfold seg6AccX14
        linear_combination -r2901
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY15 rho = seg6AccY14 rho - Bool.toZMod bit * (seg6AccY14 rho - rho 3299) := by
      have hd : rho 3301 = Bool.toZMod bit * (rho 3299 - seg6AccY14 rho) := by
        rw [← hbit]
        unfold seg6AccY14
        linear_combination -r2902
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3292 * rho 3293 = rho 3302 := by linear_combination r2903
    have hd1 : rho 3292 * rho 3292 = rho 3303 := by linear_combination r2904
    have hd2 : rho 3293 * rho 3293 = rho 3304 := by linear_combination r2905
    have hd3 : rho 3305 * (rho 3293 * rho 3293 + rho 3292 * rho 3292 * (-1)) = 2 * (rho 3292 * rho 3293) := by
      rw [hd0, hd1, hd2]
      linear_combination r2906
    have hd4 : rho 3306 * (2 - (rho 3293 * rho 3293 + rho 3292 * rho 3292 * (-1))) = rho 3293 * rho 3293 - rho 3292 * rho 3292 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2907
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX14 rho : Seg6.F), (seg6AccY14 rho : Seg6.F)⟩
      ⟨(rho 3292 : Seg6.F), (rho 3293 : Seg6.F)⟩
      ⟨(rho 3298 : Seg6.F), (rho 3299 : Seg6.F)⟩
      ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩
      ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung14

theorem seg6_rows15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2908 rho ∧ Seg6.relationRow2909 rho ∧ Seg6.relationRow2910 rho ∧ Seg6.relationRow2911 rho ∧ Seg6.relationRow2912 rho ∧ Seg6.relationRow2913 rho ∧ Seg6.relationRow2914 rho ∧ Seg6.relationRow2915 rho ∧ Seg6.relationRow2916 rho ∧ Seg6.relationRow2917 rho ∧ Seg6.relationRow2918 rho ∧ Seg6.relationRow2919 rho ∧ Seg6.relationRow2920 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920⟩

theorem seg6_rung15 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1905 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩
        ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩
        ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩
        ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩ := by
  obtain ⟨r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920⟩ := seg6_rows15 rho h
  unfold Seg6.relationRow2908 at r2908
  unfold Seg6.relationRow2909 at r2909
  unfold Seg6.relationRow2910 at r2910
  unfold Seg6.relationRow2911 at r2911
  unfold Seg6.relationRow2912 at r2912
  unfold Seg6.relationRow2913 at r2913
  unfold Seg6.relationRow2914 at r2914
  unfold Seg6.relationRow2915 at r2915
  unfold Seg6.relationRow2916 at r2916
  unfold Seg6.relationRow2917 at r2917
  unfold Seg6.relationRow2918 at r2918
  unfold Seg6.relationRow2919 at r2919
  unfold Seg6.relationRow2920 at r2920
  have hrung15 (bit : Bool) (hbit : rho 1905 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩
        ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩
        ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩
        ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩ := by
    have hnextx : seg6AccX16 rho = seg6AccX15 rho + rho 3313 := by
      unfold seg6AccX16 seg6AccX15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 3118 13]
      ring
    have hnexty : seg6AccY16 rho = seg6AccY15 rho + rho 3314 := by
      unfold seg6AccY16 seg6AccY15
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 15, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 14, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 13, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 12, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 11, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 10, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 9, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 8, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 7, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 6, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 5, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 4, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 3, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 2, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 1, Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 0, Shieldd.GnarkFormal.StrideRun.sumAux_zero rho 3119 13]
      ring
    have ha0 : (rho 3305 + rho 3306) * (seg6AccX15 rho + seg6AccY15 rho) = rho 3307 := by
      unfold seg6AccX15 seg6AccY15
      linear_combination r2908
    have ha1 : rho 3306 * seg6AccX15 rho = rho 3308 := by
      unfold seg6AccX15
      linear_combination r2909
    have ha2 : rho 3305 * seg6AccY15 rho = rho 3309 := by
      unfold seg6AccY15
      linear_combination r2910
    have ha3 : 3021 * rho 3308 * rho 3309 = rho 3310 := by
      linear_combination r2911
    have ha4 : rho 3311 * (1 + rho 3310) = rho 3308 + rho 3309 := by
      linear_combination r2912
    have ha5 : rho 3312 * (1 - rho 3310) = rho 3307 - rho 3308 - rho 3309 := by
      linear_combination r2913
    have haddx :
        rho 3311 * (1 + 3021 * (rho 3306 * seg6AccX15 rho) * (rho 3305 * seg6AccY15 rho)) =
          rho 3306 * seg6AccX15 rho + rho 3305 * seg6AccY15 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3312 * (1 - 3021 * (rho 3306 * seg6AccX15 rho) * (rho 3305 * seg6AccY15 rho)) =
          (-1) * (rho 3306 * seg6AccX15 rho) - rho 3305 * seg6AccY15 rho +
            (seg6AccY15 rho - seg6AccX15 rho * (-1)) * (rho 3305 + rho 3306) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3312 * (1 - rho 3310) = rho 3307 - rho 3308 - rho 3309 := ha5
        _ = (-1) * rho 3308 - rho 3309 + (seg6AccY15 rho - seg6AccX15 rho * (-1)) * (rho 3305 + rho 3306) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX16 rho = seg6AccX15 rho - Bool.toZMod bit * (seg6AccX15 rho - rho 3311) := by
      have hd : rho 3313 = Bool.toZMod bit * (rho 3311 - seg6AccX15 rho) := by
        rw [← hbit]
        unfold seg6AccX15
        linear_combination -r2914
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY16 rho = seg6AccY15 rho - Bool.toZMod bit * (seg6AccY15 rho - rho 3312) := by
      have hd : rho 3314 = Bool.toZMod bit * (rho 3312 - seg6AccY15 rho) := by
        rw [← hbit]
        unfold seg6AccY15
        linear_combination -r2915
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3305 * rho 3306 = rho 3315 := by linear_combination r2916
    have hd1 : rho 3305 * rho 3305 = rho 3316 := by linear_combination r2917
    have hd2 : rho 3306 * rho 3306 = rho 3317 := by linear_combination r2918
    have hd3 : rho 3318 * (rho 3306 * rho 3306 + rho 3305 * rho 3305 * (-1)) = 2 * (rho 3305 * rho 3306) := by
      rw [hd0, hd1, hd2]
      linear_combination r2919
    have hd4 : rho 3319 * (2 - (rho 3306 * rho 3306 + rho 3305 * rho 3305 * (-1))) = rho 3306 * rho 3306 - rho 3305 * rho 3305 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2920
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX15 rho : Seg6.F), (seg6AccY15 rho : Seg6.F)⟩
      ⟨(rho 3305 : Seg6.F), (rho 3306 : Seg6.F)⟩
      ⟨(rho 3311 : Seg6.F), (rho 3312 : Seg6.F)⟩
      ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩
      ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung15

theorem seg6_rows16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2921 rho ∧ Seg6.relationRow2922 rho ∧ Seg6.relationRow2923 rho ∧ Seg6.relationRow2924 rho ∧ Seg6.relationRow2925 rho ∧ Seg6.relationRow2926 rho ∧ Seg6.relationRow2927 rho ∧ Seg6.relationRow2928 rho ∧ Seg6.relationRow2929 rho ∧ Seg6.relationRow2930 rho ∧ Seg6.relationRow2931 rho ∧ Seg6.relationRow2932 rho ∧ Seg6.relationRow2933 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933⟩

theorem seg6_rung16 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1906 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩
        ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩
        ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩
        ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩ := by
  obtain ⟨r2921, r2922, r2923, r2924, r2925, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933⟩ := seg6_rows16 rho h
  unfold Seg6.relationRow2921 at r2921
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2921
  unfold Seg6.relationRow2922 at r2922
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2922
  unfold Seg6.relationRow2923 at r2923
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2923
  unfold Seg6.relationRow2924 at r2924
  unfold Seg6.relationRow2925 at r2925
  unfold Seg6.relationRow2926 at r2926
  unfold Seg6.relationRow2927 at r2927
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2927
  unfold Seg6.relationRow2928 at r2928
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2928
  unfold Seg6.relationRow2929 at r2929
  unfold Seg6.relationRow2930 at r2930
  unfold Seg6.relationRow2931 at r2931
  unfold Seg6.relationRow2932 at r2932
  unfold Seg6.relationRow2933 at r2933
  have hrung16 (bit : Bool) (hbit : rho 1906 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩
        ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩
        ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩
        ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩ := by
    have hnextx : seg6AccX17 rho = seg6AccX16 rho + rho 3326 := by
      unfold seg6AccX17 seg6AccX16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 16]
      ring
    have hnexty : seg6AccY17 rho = seg6AccY16 rho + rho 3327 := by
      unfold seg6AccY17 seg6AccY16
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 16]
      ring
    have ha0 : (rho 3318 + rho 3319) * (seg6AccX16 rho + seg6AccY16 rho) = rho 3320 := by
      unfold seg6AccX16 seg6AccY16
      linear_combination r2921
    have ha1 : rho 3319 * seg6AccX16 rho = rho 3321 := by
      unfold seg6AccX16
      linear_combination r2922
    have ha2 : rho 3318 * seg6AccY16 rho = rho 3322 := by
      unfold seg6AccY16
      linear_combination r2923
    have ha3 : 3021 * rho 3321 * rho 3322 = rho 3323 := by
      linear_combination r2924
    have ha4 : rho 3324 * (1 + rho 3323) = rho 3321 + rho 3322 := by
      linear_combination r2925
    have ha5 : rho 3325 * (1 - rho 3323) = rho 3320 - rho 3321 - rho 3322 := by
      linear_combination r2926
    have haddx :
        rho 3324 * (1 + 3021 * (rho 3319 * seg6AccX16 rho) * (rho 3318 * seg6AccY16 rho)) =
          rho 3319 * seg6AccX16 rho + rho 3318 * seg6AccY16 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3325 * (1 - 3021 * (rho 3319 * seg6AccX16 rho) * (rho 3318 * seg6AccY16 rho)) =
          (-1) * (rho 3319 * seg6AccX16 rho) - rho 3318 * seg6AccY16 rho +
            (seg6AccY16 rho - seg6AccX16 rho * (-1)) * (rho 3318 + rho 3319) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3325 * (1 - rho 3323) = rho 3320 - rho 3321 - rho 3322 := ha5
        _ = (-1) * rho 3321 - rho 3322 + (seg6AccY16 rho - seg6AccX16 rho * (-1)) * (rho 3318 + rho 3319) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX17 rho = seg6AccX16 rho - Bool.toZMod bit * (seg6AccX16 rho - rho 3324) := by
      have hd : rho 3326 = Bool.toZMod bit * (rho 3324 - seg6AccX16 rho) := by
        rw [← hbit]
        unfold seg6AccX16
        linear_combination -r2927
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY17 rho = seg6AccY16 rho - Bool.toZMod bit * (seg6AccY16 rho - rho 3325) := by
      have hd : rho 3327 = Bool.toZMod bit * (rho 3325 - seg6AccY16 rho) := by
        rw [← hbit]
        unfold seg6AccY16
        linear_combination -r2928
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3318 * rho 3319 = rho 3328 := by linear_combination r2929
    have hd1 : rho 3318 * rho 3318 = rho 3329 := by linear_combination r2930
    have hd2 : rho 3319 * rho 3319 = rho 3330 := by linear_combination r2931
    have hd3 : rho 3331 * (rho 3319 * rho 3319 + rho 3318 * rho 3318 * (-1)) = 2 * (rho 3318 * rho 3319) := by
      rw [hd0, hd1, hd2]
      linear_combination r2932
    have hd4 : rho 3332 * (2 - (rho 3319 * rho 3319 + rho 3318 * rho 3318 * (-1))) = rho 3319 * rho 3319 - rho 3318 * rho 3318 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2933
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX16 rho : Seg6.F), (seg6AccY16 rho : Seg6.F)⟩
      ⟨(rho 3318 : Seg6.F), (rho 3319 : Seg6.F)⟩
      ⟨(rho 3324 : Seg6.F), (rho 3325 : Seg6.F)⟩
      ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩
      ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung16

theorem seg6_rows17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2934 rho ∧ Seg6.relationRow2935 rho ∧ Seg6.relationRow2936 rho ∧ Seg6.relationRow2937 rho ∧ Seg6.relationRow2938 rho ∧ Seg6.relationRow2939 rho ∧ Seg6.relationRow2940 rho ∧ Seg6.relationRow2941 rho ∧ Seg6.relationRow2942 rho ∧ Seg6.relationRow2943 rho ∧ Seg6.relationRow2944 rho ∧ Seg6.relationRow2945 rho ∧ Seg6.relationRow2946 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946⟩

theorem seg6_rung17 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1907 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩
        ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩
        ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩
        ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩ := by
  obtain ⟨r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946⟩ := seg6_rows17 rho h
  unfold Seg6.relationRow2934 at r2934
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2934
  unfold Seg6.relationRow2935 at r2935
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2935
  unfold Seg6.relationRow2936 at r2936
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2936
  unfold Seg6.relationRow2937 at r2937
  unfold Seg6.relationRow2938 at r2938
  unfold Seg6.relationRow2939 at r2939
  unfold Seg6.relationRow2940 at r2940
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2940
  unfold Seg6.relationRow2941 at r2941
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2941
  unfold Seg6.relationRow2942 at r2942
  unfold Seg6.relationRow2943 at r2943
  unfold Seg6.relationRow2944 at r2944
  unfold Seg6.relationRow2945 at r2945
  unfold Seg6.relationRow2946 at r2946
  have hrung17 (bit : Bool) (hbit : rho 1907 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩
        ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩
        ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩
        ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩ := by
    have hnextx : seg6AccX18 rho = seg6AccX17 rho + rho 3339 := by
      unfold seg6AccX18 seg6AccX17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 17]
      ring
    have hnexty : seg6AccY18 rho = seg6AccY17 rho + rho 3340 := by
      unfold seg6AccY18 seg6AccY17
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 17]
      ring
    have ha0 : (rho 3331 + rho 3332) * (seg6AccX17 rho + seg6AccY17 rho) = rho 3333 := by
      unfold seg6AccX17 seg6AccY17
      linear_combination r2934
    have ha1 : rho 3332 * seg6AccX17 rho = rho 3334 := by
      unfold seg6AccX17
      linear_combination r2935
    have ha2 : rho 3331 * seg6AccY17 rho = rho 3335 := by
      unfold seg6AccY17
      linear_combination r2936
    have ha3 : 3021 * rho 3334 * rho 3335 = rho 3336 := by
      linear_combination r2937
    have ha4 : rho 3337 * (1 + rho 3336) = rho 3334 + rho 3335 := by
      linear_combination r2938
    have ha5 : rho 3338 * (1 - rho 3336) = rho 3333 - rho 3334 - rho 3335 := by
      linear_combination r2939
    have haddx :
        rho 3337 * (1 + 3021 * (rho 3332 * seg6AccX17 rho) * (rho 3331 * seg6AccY17 rho)) =
          rho 3332 * seg6AccX17 rho + rho 3331 * seg6AccY17 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3338 * (1 - 3021 * (rho 3332 * seg6AccX17 rho) * (rho 3331 * seg6AccY17 rho)) =
          (-1) * (rho 3332 * seg6AccX17 rho) - rho 3331 * seg6AccY17 rho +
            (seg6AccY17 rho - seg6AccX17 rho * (-1)) * (rho 3331 + rho 3332) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3338 * (1 - rho 3336) = rho 3333 - rho 3334 - rho 3335 := ha5
        _ = (-1) * rho 3334 - rho 3335 + (seg6AccY17 rho - seg6AccX17 rho * (-1)) * (rho 3331 + rho 3332) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX18 rho = seg6AccX17 rho - Bool.toZMod bit * (seg6AccX17 rho - rho 3337) := by
      have hd : rho 3339 = Bool.toZMod bit * (rho 3337 - seg6AccX17 rho) := by
        rw [← hbit]
        unfold seg6AccX17
        linear_combination -r2940
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY18 rho = seg6AccY17 rho - Bool.toZMod bit * (seg6AccY17 rho - rho 3338) := by
      have hd : rho 3340 = Bool.toZMod bit * (rho 3338 - seg6AccY17 rho) := by
        rw [← hbit]
        unfold seg6AccY17
        linear_combination -r2941
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3331 * rho 3332 = rho 3341 := by linear_combination r2942
    have hd1 : rho 3331 * rho 3331 = rho 3342 := by linear_combination r2943
    have hd2 : rho 3332 * rho 3332 = rho 3343 := by linear_combination r2944
    have hd3 : rho 3344 * (rho 3332 * rho 3332 + rho 3331 * rho 3331 * (-1)) = 2 * (rho 3331 * rho 3332) := by
      rw [hd0, hd1, hd2]
      linear_combination r2945
    have hd4 : rho 3345 * (2 - (rho 3332 * rho 3332 + rho 3331 * rho 3331 * (-1))) = rho 3332 * rho 3332 - rho 3331 * rho 3331 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2946
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX17 rho : Seg6.F), (seg6AccY17 rho : Seg6.F)⟩
      ⟨(rho 3331 : Seg6.F), (rho 3332 : Seg6.F)⟩
      ⟨(rho 3337 : Seg6.F), (rho 3338 : Seg6.F)⟩
      ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩
      ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung17

theorem seg6_rows18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2947 rho ∧ Seg6.relationRow2948 rho ∧ Seg6.relationRow2949 rho ∧ Seg6.relationRow2950 rho ∧ Seg6.relationRow2951 rho ∧ Seg6.relationRow2952 rho ∧ Seg6.relationRow2953 rho ∧ Seg6.relationRow2954 rho ∧ Seg6.relationRow2955 rho ∧ Seg6.relationRow2956 rho ∧ Seg6.relationRow2957 rho ∧ Seg6.relationRow2958 rho ∧ Seg6.relationRow2959 rho := by
  unfold Seg6.relation at h
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
  unfold Seg6.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  exact ⟨r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩

theorem seg6_rung18 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1908 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩
        ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩
        ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩
        ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩ := by
  obtain ⟨r2947, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩ := seg6_rows18 rho h
  unfold Seg6.relationRow2947 at r2947
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2947
  unfold Seg6.relationRow2948 at r2948
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2948
  unfold Seg6.relationRow2949 at r2949
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2949
  unfold Seg6.relationRow2950 at r2950
  unfold Seg6.relationRow2951 at r2951
  unfold Seg6.relationRow2952 at r2952
  unfold Seg6.relationRow2953 at r2953
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2953
  unfold Seg6.relationRow2954 at r2954
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2954
  unfold Seg6.relationRow2955 at r2955
  unfold Seg6.relationRow2956 at r2956
  unfold Seg6.relationRow2957 at r2957
  unfold Seg6.relationRow2958 at r2958
  unfold Seg6.relationRow2959 at r2959
  have hrung18 (bit : Bool) (hbit : rho 1908 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩
        ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩
        ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩
        ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩ := by
    have hnextx : seg6AccX19 rho = seg6AccX18 rho + rho 3352 := by
      unfold seg6AccX19 seg6AccX18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 18]
      ring
    have hnexty : seg6AccY19 rho = seg6AccY18 rho + rho 3353 := by
      unfold seg6AccY19 seg6AccY18
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 18]
      ring
    have ha0 : (rho 3344 + rho 3345) * (seg6AccX18 rho + seg6AccY18 rho) = rho 3346 := by
      unfold seg6AccX18 seg6AccY18
      linear_combination r2947
    have ha1 : rho 3345 * seg6AccX18 rho = rho 3347 := by
      unfold seg6AccX18
      linear_combination r2948
    have ha2 : rho 3344 * seg6AccY18 rho = rho 3348 := by
      unfold seg6AccY18
      linear_combination r2949
    have ha3 : 3021 * rho 3347 * rho 3348 = rho 3349 := by
      linear_combination r2950
    have ha4 : rho 3350 * (1 + rho 3349) = rho 3347 + rho 3348 := by
      linear_combination r2951
    have ha5 : rho 3351 * (1 - rho 3349) = rho 3346 - rho 3347 - rho 3348 := by
      linear_combination r2952
    have haddx :
        rho 3350 * (1 + 3021 * (rho 3345 * seg6AccX18 rho) * (rho 3344 * seg6AccY18 rho)) =
          rho 3345 * seg6AccX18 rho + rho 3344 * seg6AccY18 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3351 * (1 - 3021 * (rho 3345 * seg6AccX18 rho) * (rho 3344 * seg6AccY18 rho)) =
          (-1) * (rho 3345 * seg6AccX18 rho) - rho 3344 * seg6AccY18 rho +
            (seg6AccY18 rho - seg6AccX18 rho * (-1)) * (rho 3344 + rho 3345) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3351 * (1 - rho 3349) = rho 3346 - rho 3347 - rho 3348 := ha5
        _ = (-1) * rho 3347 - rho 3348 + (seg6AccY18 rho - seg6AccX18 rho * (-1)) * (rho 3344 + rho 3345) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX19 rho = seg6AccX18 rho - Bool.toZMod bit * (seg6AccX18 rho - rho 3350) := by
      have hd : rho 3352 = Bool.toZMod bit * (rho 3350 - seg6AccX18 rho) := by
        rw [← hbit]
        unfold seg6AccX18
        linear_combination -r2953
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY19 rho = seg6AccY18 rho - Bool.toZMod bit * (seg6AccY18 rho - rho 3351) := by
      have hd : rho 3353 = Bool.toZMod bit * (rho 3351 - seg6AccY18 rho) := by
        rw [← hbit]
        unfold seg6AccY18
        linear_combination -r2954
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3344 * rho 3345 = rho 3354 := by linear_combination r2955
    have hd1 : rho 3344 * rho 3344 = rho 3355 := by linear_combination r2956
    have hd2 : rho 3345 * rho 3345 = rho 3356 := by linear_combination r2957
    have hd3 : rho 3357 * (rho 3345 * rho 3345 + rho 3344 * rho 3344 * (-1)) = 2 * (rho 3344 * rho 3345) := by
      rw [hd0, hd1, hd2]
      linear_combination r2958
    have hd4 : rho 3358 * (2 - (rho 3345 * rho 3345 + rho 3344 * rho 3344 * (-1))) = rho 3345 * rho 3345 - rho 3344 * rho 3344 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2959
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX18 rho : Seg6.F), (seg6AccY18 rho : Seg6.F)⟩
      ⟨(rho 3344 : Seg6.F), (rho 3345 : Seg6.F)⟩
      ⟨(rho 3350 : Seg6.F), (rho 3351 : Seg6.F)⟩
      ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩
      ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung18

theorem seg6_rows19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2960 rho ∧ Seg6.relationRow2961 rho ∧ Seg6.relationRow2962 rho ∧ Seg6.relationRow2963 rho ∧ Seg6.relationRow2964 rho ∧ Seg6.relationRow2965 rho ∧ Seg6.relationRow2966 rho ∧ Seg6.relationRow2967 rho ∧ Seg6.relationRow2968 rho ∧ Seg6.relationRow2969 rho ∧ Seg6.relationRow2970 rho ∧ Seg6.relationRow2971 rho ∧ Seg6.relationRow2972 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972⟩

theorem seg6_rung19 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1909 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩
        ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩
        ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩
        ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩ := by
  obtain ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, r2970, r2971, r2972⟩ := seg6_rows19 rho h
  unfold Seg6.relationRow2960 at r2960
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2960
  unfold Seg6.relationRow2961 at r2961
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2961
  unfold Seg6.relationRow2962 at r2962
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2962
  unfold Seg6.relationRow2963 at r2963
  unfold Seg6.relationRow2964 at r2964
  unfold Seg6.relationRow2965 at r2965
  unfold Seg6.relationRow2966 at r2966
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2966
  unfold Seg6.relationRow2967 at r2967
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2967
  unfold Seg6.relationRow2968 at r2968
  unfold Seg6.relationRow2969 at r2969
  unfold Seg6.relationRow2970 at r2970
  unfold Seg6.relationRow2971 at r2971
  unfold Seg6.relationRow2972 at r2972
  have hrung19 (bit : Bool) (hbit : rho 1909 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩
        ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩
        ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩
        ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩ := by
    have hnextx : seg6AccX20 rho = seg6AccX19 rho + rho 3365 := by
      unfold seg6AccX20 seg6AccX19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 19]
      ring
    have hnexty : seg6AccY20 rho = seg6AccY19 rho + rho 3366 := by
      unfold seg6AccY20 seg6AccY19
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 19]
      ring
    have ha0 : (rho 3357 + rho 3358) * (seg6AccX19 rho + seg6AccY19 rho) = rho 3359 := by
      unfold seg6AccX19 seg6AccY19
      linear_combination r2960
    have ha1 : rho 3358 * seg6AccX19 rho = rho 3360 := by
      unfold seg6AccX19
      linear_combination r2961
    have ha2 : rho 3357 * seg6AccY19 rho = rho 3361 := by
      unfold seg6AccY19
      linear_combination r2962
    have ha3 : 3021 * rho 3360 * rho 3361 = rho 3362 := by
      linear_combination r2963
    have ha4 : rho 3363 * (1 + rho 3362) = rho 3360 + rho 3361 := by
      linear_combination r2964
    have ha5 : rho 3364 * (1 - rho 3362) = rho 3359 - rho 3360 - rho 3361 := by
      linear_combination r2965
    have haddx :
        rho 3363 * (1 + 3021 * (rho 3358 * seg6AccX19 rho) * (rho 3357 * seg6AccY19 rho)) =
          rho 3358 * seg6AccX19 rho + rho 3357 * seg6AccY19 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3364 * (1 - 3021 * (rho 3358 * seg6AccX19 rho) * (rho 3357 * seg6AccY19 rho)) =
          (-1) * (rho 3358 * seg6AccX19 rho) - rho 3357 * seg6AccY19 rho +
            (seg6AccY19 rho - seg6AccX19 rho * (-1)) * (rho 3357 + rho 3358) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3364 * (1 - rho 3362) = rho 3359 - rho 3360 - rho 3361 := ha5
        _ = (-1) * rho 3360 - rho 3361 + (seg6AccY19 rho - seg6AccX19 rho * (-1)) * (rho 3357 + rho 3358) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX20 rho = seg6AccX19 rho - Bool.toZMod bit * (seg6AccX19 rho - rho 3363) := by
      have hd : rho 3365 = Bool.toZMod bit * (rho 3363 - seg6AccX19 rho) := by
        rw [← hbit]
        unfold seg6AccX19
        linear_combination -r2966
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY20 rho = seg6AccY19 rho - Bool.toZMod bit * (seg6AccY19 rho - rho 3364) := by
      have hd : rho 3366 = Bool.toZMod bit * (rho 3364 - seg6AccY19 rho) := by
        rw [← hbit]
        unfold seg6AccY19
        linear_combination -r2967
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3357 * rho 3358 = rho 3367 := by linear_combination r2968
    have hd1 : rho 3357 * rho 3357 = rho 3368 := by linear_combination r2969
    have hd2 : rho 3358 * rho 3358 = rho 3369 := by linear_combination r2970
    have hd3 : rho 3370 * (rho 3358 * rho 3358 + rho 3357 * rho 3357 * (-1)) = 2 * (rho 3357 * rho 3358) := by
      rw [hd0, hd1, hd2]
      linear_combination r2971
    have hd4 : rho 3371 * (2 - (rho 3358 * rho 3358 + rho 3357 * rho 3357 * (-1))) = rho 3358 * rho 3358 - rho 3357 * rho 3357 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2972
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX19 rho : Seg6.F), (seg6AccY19 rho : Seg6.F)⟩
      ⟨(rho 3357 : Seg6.F), (rho 3358 : Seg6.F)⟩
      ⟨(rho 3363 : Seg6.F), (rho 3364 : Seg6.F)⟩
      ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩
      ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung19

theorem seg6_rows20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2973 rho ∧ Seg6.relationRow2974 rho ∧ Seg6.relationRow2975 rho ∧ Seg6.relationRow2976 rho ∧ Seg6.relationRow2977 rho ∧ Seg6.relationRow2978 rho ∧ Seg6.relationRow2979 rho ∧ Seg6.relationRow2980 rho ∧ Seg6.relationRow2981 rho ∧ Seg6.relationRow2982 rho ∧ Seg6.relationRow2983 rho ∧ Seg6.relationRow2984 rho ∧ Seg6.relationRow2985 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985⟩

theorem seg6_rung20 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1910 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩
        ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩
        ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩
        ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩ := by
  obtain ⟨r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985⟩ := seg6_rows20 rho h
  unfold Seg6.relationRow2973 at r2973
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2973
  unfold Seg6.relationRow2974 at r2974
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2974
  unfold Seg6.relationRow2975 at r2975
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2975
  unfold Seg6.relationRow2976 at r2976
  unfold Seg6.relationRow2977 at r2977
  unfold Seg6.relationRow2978 at r2978
  unfold Seg6.relationRow2979 at r2979
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2979
  unfold Seg6.relationRow2980 at r2980
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2980
  unfold Seg6.relationRow2981 at r2981
  unfold Seg6.relationRow2982 at r2982
  unfold Seg6.relationRow2983 at r2983
  unfold Seg6.relationRow2984 at r2984
  unfold Seg6.relationRow2985 at r2985
  have hrung20 (bit : Bool) (hbit : rho 1910 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩
        ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩
        ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩
        ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩ := by
    have hnextx : seg6AccX21 rho = seg6AccX20 rho + rho 3378 := by
      unfold seg6AccX21 seg6AccX20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 20]
      ring
    have hnexty : seg6AccY21 rho = seg6AccY20 rho + rho 3379 := by
      unfold seg6AccY21 seg6AccY20
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 20]
      ring
    have ha0 : (rho 3370 + rho 3371) * (seg6AccX20 rho + seg6AccY20 rho) = rho 3372 := by
      unfold seg6AccX20 seg6AccY20
      linear_combination r2973
    have ha1 : rho 3371 * seg6AccX20 rho = rho 3373 := by
      unfold seg6AccX20
      linear_combination r2974
    have ha2 : rho 3370 * seg6AccY20 rho = rho 3374 := by
      unfold seg6AccY20
      linear_combination r2975
    have ha3 : 3021 * rho 3373 * rho 3374 = rho 3375 := by
      linear_combination r2976
    have ha4 : rho 3376 * (1 + rho 3375) = rho 3373 + rho 3374 := by
      linear_combination r2977
    have ha5 : rho 3377 * (1 - rho 3375) = rho 3372 - rho 3373 - rho 3374 := by
      linear_combination r2978
    have haddx :
        rho 3376 * (1 + 3021 * (rho 3371 * seg6AccX20 rho) * (rho 3370 * seg6AccY20 rho)) =
          rho 3371 * seg6AccX20 rho + rho 3370 * seg6AccY20 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3377 * (1 - 3021 * (rho 3371 * seg6AccX20 rho) * (rho 3370 * seg6AccY20 rho)) =
          (-1) * (rho 3371 * seg6AccX20 rho) - rho 3370 * seg6AccY20 rho +
            (seg6AccY20 rho - seg6AccX20 rho * (-1)) * (rho 3370 + rho 3371) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3377 * (1 - rho 3375) = rho 3372 - rho 3373 - rho 3374 := ha5
        _ = (-1) * rho 3373 - rho 3374 + (seg6AccY20 rho - seg6AccX20 rho * (-1)) * (rho 3370 + rho 3371) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX21 rho = seg6AccX20 rho - Bool.toZMod bit * (seg6AccX20 rho - rho 3376) := by
      have hd : rho 3378 = Bool.toZMod bit * (rho 3376 - seg6AccX20 rho) := by
        rw [← hbit]
        unfold seg6AccX20
        linear_combination -r2979
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY21 rho = seg6AccY20 rho - Bool.toZMod bit * (seg6AccY20 rho - rho 3377) := by
      have hd : rho 3379 = Bool.toZMod bit * (rho 3377 - seg6AccY20 rho) := by
        rw [← hbit]
        unfold seg6AccY20
        linear_combination -r2980
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3370 * rho 3371 = rho 3380 := by linear_combination r2981
    have hd1 : rho 3370 * rho 3370 = rho 3381 := by linear_combination r2982
    have hd2 : rho 3371 * rho 3371 = rho 3382 := by linear_combination r2983
    have hd3 : rho 3383 * (rho 3371 * rho 3371 + rho 3370 * rho 3370 * (-1)) = 2 * (rho 3370 * rho 3371) := by
      rw [hd0, hd1, hd2]
      linear_combination r2984
    have hd4 : rho 3384 * (2 - (rho 3371 * rho 3371 + rho 3370 * rho 3370 * (-1))) = rho 3371 * rho 3371 - rho 3370 * rho 3370 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2985
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX20 rho : Seg6.F), (seg6AccY20 rho : Seg6.F)⟩
      ⟨(rho 3370 : Seg6.F), (rho 3371 : Seg6.F)⟩
      ⟨(rho 3376 : Seg6.F), (rho 3377 : Seg6.F)⟩
      ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩
      ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung20

theorem seg6_rows21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    Seg6.relationRow2986 rho ∧ Seg6.relationRow2987 rho ∧ Seg6.relationRow2988 rho ∧ Seg6.relationRow2989 rho ∧ Seg6.relationRow2990 rho ∧ Seg6.relationRow2991 rho ∧ Seg6.relationRow2992 rho ∧ Seg6.relationRow2993 rho ∧ Seg6.relationRow2994 rho ∧ Seg6.relationRow2995 rho ∧ Seg6.relationRow2996 rho ∧ Seg6.relationRow2997 rho ∧ Seg6.relationRow2998 rho := by
  unfold Seg6.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _
  ⟩
  unfold Seg6.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact ⟨r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998⟩

theorem seg6_rung21 (rho : Nat -> Shieldd.GnarkFormal.Deployed.Dtk.Outputs.F) (h : Seg6.relation rho) :
    ∀ (bit : Bool), rho 1911 = Bool.toZMod bit →
      EdwardsBridge.onCurve ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩ →
      EdwardsBridge.onCurve ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩ →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩
        ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩
        ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩
        ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩ := by
  obtain ⟨r2986, r2987, r2988, r2989, r2990, r2991, r2992, r2993, r2994, r2995, r2996, r2997, r2998⟩ := seg6_rows21 rho h
  unfold Seg6.relationRow2986 at r2986
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2986
  unfold Seg6.relationRow2987 at r2987
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2987
  unfold Seg6.relationRow2988 at r2988
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2988
  unfold Seg6.relationRow2989 at r2989
  unfold Seg6.relationRow2990 at r2990
  unfold Seg6.relationRow2991 at r2991
  unfold Seg6.relationRow2992 at r2992
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2992
  unfold Seg6.relationRow2993 at r2993
  simp only [Shieldd.GnarkFormal.StructuredLC.eval, Shieldd.GnarkFormal.StructuredLC.sumRuns, Shieldd.GnarkFormal.StructuredLC.sumResidual, Shieldd.GnarkFormal.StrideRun.eval] at r2993
  unfold Seg6.relationRow2994 at r2994
  unfold Seg6.relationRow2995 at r2995
  unfold Seg6.relationRow2996 at r2996
  unfold Seg6.relationRow2997 at r2997
  unfold Seg6.relationRow2998 at r2998
  have hrung21 (bit : Bool) (hbit : rho 1911 = Bool.toZMod bit)
      (hacc : EdwardsBridge.onCurve ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩)
      (hcur : EdwardsBridge.onCurve ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩) :
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bit)
        ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩
        ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩
        ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩
        ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩ := by
    have hnextx : seg6AccX22 rho = seg6AccX21 rho + rho 3391 := by
      unfold seg6AccX22 seg6AccX21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3118 13 21]
      ring
    have hnexty : seg6AccY22 rho = seg6AccY21 rho + rho 3392 := by
      unfold seg6AccY22 seg6AccY21
      rw [Shieldd.GnarkFormal.StrideRun.sumAux_succ rho 3119 13 21]
      ring
    have ha0 : (rho 3383 + rho 3384) * (seg6AccX21 rho + seg6AccY21 rho) = rho 3385 := by
      unfold seg6AccX21 seg6AccY21
      linear_combination r2986
    have ha1 : rho 3384 * seg6AccX21 rho = rho 3386 := by
      unfold seg6AccX21
      linear_combination r2987
    have ha2 : rho 3383 * seg6AccY21 rho = rho 3387 := by
      unfold seg6AccY21
      linear_combination r2988
    have ha3 : 3021 * rho 3386 * rho 3387 = rho 3388 := by
      linear_combination r2989
    have ha4 : rho 3389 * (1 + rho 3388) = rho 3386 + rho 3387 := by
      linear_combination r2990
    have ha5 : rho 3390 * (1 - rho 3388) = rho 3385 - rho 3386 - rho 3387 := by
      linear_combination r2991
    have haddx :
        rho 3389 * (1 + 3021 * (rho 3384 * seg6AccX21 rho) * (rho 3383 * seg6AccY21 rho)) =
          rho 3384 * seg6AccX21 rho + rho 3383 * seg6AccY21 rho := by
      rw [ha1, ha2, ha3]
      exact ha4
    have haddy :
        rho 3390 * (1 - 3021 * (rho 3384 * seg6AccX21 rho) * (rho 3383 * seg6AccY21 rho)) =
          (-1) * (rho 3384 * seg6AccX21 rho) - rho 3383 * seg6AccY21 rho +
            (seg6AccY21 rho - seg6AccX21 rho * (-1)) * (rho 3383 + rho 3384) := by
      rw [ha1, ha2, ha3]
      calc
        rho 3390 * (1 - rho 3388) = rho 3385 - rho 3386 - rho 3387 := ha5
        _ = (-1) * rho 3386 - rho 3387 + (seg6AccY21 rho - seg6AccX21 rho * (-1)) * (rho 3383 + rho 3384) := by
          rw [← ha0]
          ring
    have hselx : seg6AccX22 rho = seg6AccX21 rho - Bool.toZMod bit * (seg6AccX21 rho - rho 3389) := by
      have hd : rho 3391 = Bool.toZMod bit * (rho 3389 - seg6AccX21 rho) := by
        rw [← hbit]
        unfold seg6AccX21
        linear_combination -r2992
      rw [hnextx]
      linear_combination hd
    have hsely : seg6AccY22 rho = seg6AccY21 rho - Bool.toZMod bit * (seg6AccY21 rho - rho 3390) := by
      have hd : rho 3392 = Bool.toZMod bit * (rho 3390 - seg6AccY21 rho) := by
        rw [← hbit]
        unfold seg6AccY21
        linear_combination -r2993
      rw [hnexty]
      linear_combination hd
    have hd0 : rho 3383 * rho 3384 = rho 3393 := by linear_combination r2994
    have hd1 : rho 3383 * rho 3383 = rho 3394 := by linear_combination r2995
    have hd2 : rho 3384 * rho 3384 = rho 3395 := by linear_combination r2996
    have hd3 : rho 3396 * (rho 3384 * rho 3384 + rho 3383 * rho 3383 * (-1)) = 2 * (rho 3383 * rho 3384) := by
      rw [hd0, hd1, hd2]
      linear_combination r2997
    have hd4 : rho 3397 * (2 - (rho 3384 * rho 3384 + rho 3383 * rho 3383 * (-1))) = rho 3384 * rho 3384 - rho 3383 * rho 3383 * (-1) := by
      rw [hd1, hd2]
      linear_combination r2998
    apply Shieldd.GnarkFormal.RvkDeployedRung.deployedRung_stepRel
      (Bool.toZMod bit) ⟨(seg6AccX21 rho : Seg6.F), (seg6AccY21 rho : Seg6.F)⟩
      ⟨(rho 3383 : Seg6.F), (rho 3384 : Seg6.F)⟩
      ⟨(rho 3389 : Seg6.F), (rho 3390 : Seg6.F)⟩
      ⟨(seg6AccX22 rho : Seg6.F), (seg6AccY22 rho : Seg6.F)⟩
      ⟨(rho 3396 : Seg6.F), (rho 3397 : Seg6.F)⟩
      hacc hcur
    · simpa [EdwardsBridge.d] using haddx
    · simpa [EdwardsBridge.a_eq, EdwardsBridge.d] using haddy
    · cases bit <;> simp [Bool.toZMod_zero, Bool.toZMod_one]
    · exact hselx
    · exact hsely
    · simpa [EdwardsBridge.a_eq] using hd3
    · simpa [EdwardsBridge.a_eq] using hd4
  exact hrung21

theorem seg6_hstep_c1 (rho : Nat -> Seg6.F) (h : Seg6.relation rho)
    (bits : List.Vector Bool 251)
    (hbitAt : ∀ i, i < 251 → rho (1890 + i) = Bool.toZMod bits[i]!) :
    ∀ i, 11 ≤ i → i < 22 →
      EdwardsBridge.onCurve (seg6LadderAccState rho i) →
      EdwardsBridge.onCurve (seg6LadderCurState rho i) →
      Shieldd.GnarkFormal.ScalarMulBridge.StepRel (Bool.toZMod bits[i]!)
        (seg6LadderAccState rho i) (seg6LadderCurState rho i)
        (seg6LadderAccState rho (i + 1)) (seg6LadderCurState rho (i + 1)) := by
  intro i hlo hhi hacc hcur
  interval_cases i
  · exact seg6_rung11 rho h bits[11]! (hbitAt 11 (by omega)) hacc hcur
  · exact seg6_rung12 rho h bits[12]! (hbitAt 12 (by omega)) hacc hcur
  · exact seg6_rung13 rho h bits[13]! (hbitAt 13 (by omega)) hacc hcur
  · exact seg6_rung14 rho h bits[14]! (hbitAt 14 (by omega)) hacc hcur
  · exact seg6_rung15 rho h bits[15]! (hbitAt 15 (by omega)) hacc hcur
  · exact seg6_rung16 rho h bits[16]! (hbitAt 16 (by omega)) hacc hcur
  · exact seg6_rung17 rho h bits[17]! (hbitAt 17 (by omega)) hacc hcur
  · exact seg6_rung18 rho h bits[18]! (hbitAt 18 (by omega)) hacc hcur
  · exact seg6_rung19 rho h bits[19]! (hbitAt 19 (by omega)) hacc hcur
  · exact seg6_rung20 rho h bits[20]! (hbitAt 20 (by omega)) hacc hcur
  · exact seg6_rung21 rho h bits[21]! (hbitAt 21 (by omega)) hacc hcur
end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
