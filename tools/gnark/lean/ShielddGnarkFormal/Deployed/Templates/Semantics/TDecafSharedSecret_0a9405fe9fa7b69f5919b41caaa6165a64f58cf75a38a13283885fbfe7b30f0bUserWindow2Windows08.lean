import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bUserWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem window48 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc48 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[152]! (scalarBits rho)[151]!
        (base rho) (twice rho) (triple rho) (acc48 rho)
        (acc49 rho) ∧
      EdwardsBridge.onCurve (acc49 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart36 at p36
  rcases p36 with ⟨_, _, r2882, r2883, r2884, r2885, r2886, r2887, r2888, r2889, r2890, r2891, r2892, r2893, r2894, r2895, r2896, r2897, r2898, r2899, r2900, r2901, r2902, r2903, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2882 at r2882
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2883 at r2883
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2884 at r2884
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2885 at r2885
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2886 at r2886
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2887 at r2887
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2888 at r2888
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2889 at r2889
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2890 at r2890
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2891 at r2891
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2892 at r2892
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2893 at r2893
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2894 at r2894
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2895 at r2895
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2896 at r2896
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2897 at r2897
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2898 at r2898
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2899 at r2899
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2900 at r2900
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2901 at r2901
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2902 at r2902
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2903 at r2903
  have hshift1 : EdwardsBridge.doubleSpec (acc48 rho) (shiftOnce48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2886) (rho 2887) (rho 2888) (rho 2889) (rho 2890) (rho 2891) (rho 2892)
      (by simpa [acc48] using hacc)
      (by linear_combination r2882)
      (by linear_combination r2883)
      (by linear_combination r2884)
      (by linear_combination r2885)
      (by linear_combination r2886)
    simpa [acc48, shiftOnce48] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc48 rho) (shiftOnce48 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc48 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce48 rho) (shifted48 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2891) (rho 2892) (rho 2893) (rho 2894) (rho 2895) (rho 2896) (rho 2897)
      (by simpa [shiftOnce48] using hshift1On)
      (by linear_combination r2887)
      (by linear_combination r2888)
      (by linear_combination r2889)
      (by linear_combination r2890)
      (by linear_combination r2891)
    simpa [shiftOnce48, shifted48] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted48 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce48 rho) (shifted48 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce48 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 154) (rho 153)
      (base rho) (twice rho) (triple rho) (digit48 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 154) (rho 153)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2899 + rho 2900, (1 : F) + rho 2902 + rho 2903⟩ := by
      constructor
      · refine ⟨(rho 2898 + (rho 1818) - (0)), rho 2899, ?_, ?_, ?_⟩
        · linear_combination r2892
        · linear_combination r2893
        · linear_combination r2894
      · refine ⟨(rho 2901 + (rho 1819) - ((1 : F))), rho 2902, ?_, ?_, ?_⟩
        · linear_combination r2895
        · linear_combination r2896
        · linear_combination r2897
    simpa [base, twice, triple, digit48] using hraw
  have hhigh : rho 154 =
      Bool.toZMod bits[152]! := by
    simpa only using rho_bit_of_map rho bits hbits 152 (by decide +kernel)
  have hlow : rho 153 =
      Bool.toZMod bits[151]! := by
    simpa only using rho_bit_of_map rho bits hbits 151 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[152]! bits[151]! (base rho) (twice rho) (triple rho)
    (digit48 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit48 rho) := by
    rw [hdigit]
    cases bits[152]! <;> cases bits[151]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted48 rho) (digit48 rho) (acc49 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2896) (rho 2897) (rho 2899 + rho 2900) ((1 : F) + rho 2902 + rho 2903)
      (rho 2904) (rho 2905) (rho 2906) (rho 2907) (rho 2908) (rho 2909)
      (by simpa [shifted48] using hshift2On)
      (by simpa [digit48] using hdigitOn)
      (by linear_combination r2898)
      (by linear_combination r2899)
      (by linear_combination r2900)
      (by linear_combination r2901)
      (by linear_combination r2902)
      (by linear_combination r2903)
    simpa [shifted48, digit48, acc49] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc49 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted48 rho) (digit48 rho) (acc49 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted48 rho) (digit48 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 154) (rho 153)
      (base rho) (twice rho) (triple rho) (acc48 rho)
      (acc49 rho) :=
    ⟨shiftOnce48 rho, shifted48 rho, digit48 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window49 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc49 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[150]! (scalarBits rho)[149]!
        (base rho) (twice rho) (triple rho) (acc49 rho)
        (acc50 rho) ∧
      EdwardsBridge.onCurve (acc50 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2904, r2905, r2906, r2907, r2908, r2909, r2910, r2911, r2912, r2913, r2914, r2915, r2916, r2917, r2918, r2919, r2920, r2921, r2922, r2923, r2924, r2925, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2904 at r2904
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2905 at r2905
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2906 at r2906
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2907 at r2907
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2908 at r2908
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2909 at r2909
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2910 at r2910
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2911 at r2911
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2912 at r2912
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2913 at r2913
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2914 at r2914
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2915 at r2915
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2916 at r2916
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2917 at r2917
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2918 at r2918
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2919 at r2919
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2920 at r2920
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2921 at r2921
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2922 at r2922
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2923 at r2923
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2924 at r2924
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2925 at r2925
  have hshift1 : EdwardsBridge.doubleSpec (acc49 rho) (shiftOnce49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2908) (rho 2909) (rho 2910) (rho 2911) (rho 2912) (rho 2913) (rho 2914)
      (by simpa [acc49] using hacc)
      (by linear_combination r2904)
      (by linear_combination r2905)
      (by linear_combination r2906)
      (by linear_combination r2907)
      (by linear_combination r2908)
    simpa [acc49, shiftOnce49] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc49 rho) (shiftOnce49 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc49 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce49 rho) (shifted49 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2913) (rho 2914) (rho 2915) (rho 2916) (rho 2917) (rho 2918) (rho 2919)
      (by simpa [shiftOnce49] using hshift1On)
      (by linear_combination r2909)
      (by linear_combination r2910)
      (by linear_combination r2911)
      (by linear_combination r2912)
      (by linear_combination r2913)
    simpa [shiftOnce49, shifted49] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted49 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce49 rho) (shifted49 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce49 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 152) (rho 151)
      (base rho) (twice rho) (triple rho) (digit49 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 152) (rho 151)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2921 + rho 2922, (1 : F) + rho 2924 + rho 2925⟩ := by
      constructor
      · refine ⟨(rho 2920 + (rho 1818) - (0)), rho 2921, ?_, ?_, ?_⟩
        · linear_combination r2914
        · linear_combination r2915
        · linear_combination r2916
      · refine ⟨(rho 2923 + (rho 1819) - ((1 : F))), rho 2924, ?_, ?_, ?_⟩
        · linear_combination r2917
        · linear_combination r2918
        · linear_combination r2919
    simpa [base, twice, triple, digit49] using hraw
  have hhigh : rho 152 =
      Bool.toZMod bits[150]! := by
    simpa only using rho_bit_of_map rho bits hbits 150 (by decide +kernel)
  have hlow : rho 151 =
      Bool.toZMod bits[149]! := by
    simpa only using rho_bit_of_map rho bits hbits 149 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[150]! bits[149]! (base rho) (twice rho) (triple rho)
    (digit49 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit49 rho) := by
    rw [hdigit]
    cases bits[150]! <;> cases bits[149]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted49 rho) (digit49 rho) (acc50 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2918) (rho 2919) (rho 2921 + rho 2922) ((1 : F) + rho 2924 + rho 2925)
      (rho 2926) (rho 2927) (rho 2928) (rho 2929) (rho 2930) (rho 2931)
      (by simpa [shifted49] using hshift2On)
      (by simpa [digit49] using hdigitOn)
      (by linear_combination r2920)
      (by linear_combination r2921)
      (by linear_combination r2922)
      (by linear_combination r2923)
      (by linear_combination r2924)
      (by linear_combination r2925)
    simpa [shifted49, digit49, acc50] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc50 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted49 rho) (digit49 rho) (acc50 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted49 rho) (digit49 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 152) (rho 151)
      (base rho) (twice rho) (triple rho) (acc49 rho)
      (acc50 rho) :=
    ⟨shiftOnce49 rho, shifted49 rho, digit49 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window50 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc50 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[148]! (scalarBits rho)[147]!
        (base rho) (twice rho) (triple rho) (acc50 rho)
        (acc51 rho) ∧
      EdwardsBridge.onCurve (acc51 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2926, r2927, r2928, r2929, r2930, r2931, r2932, r2933, r2934, r2935, r2936, r2937, r2938, r2939, r2940, r2941, r2942, r2943, r2944, r2945, r2946, r2947, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2926 at r2926
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2927 at r2927
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2928 at r2928
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2929 at r2929
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2930 at r2930
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2931 at r2931
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2932 at r2932
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2933 at r2933
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2934 at r2934
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2935 at r2935
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2936 at r2936
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2937 at r2937
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2938 at r2938
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2939 at r2939
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2940 at r2940
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2941 at r2941
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2942 at r2942
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2943 at r2943
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2944 at r2944
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2945 at r2945
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2946 at r2946
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2947 at r2947
  have hshift1 : EdwardsBridge.doubleSpec (acc50 rho) (shiftOnce50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2930) (rho 2931) (rho 2932) (rho 2933) (rho 2934) (rho 2935) (rho 2936)
      (by simpa [acc50] using hacc)
      (by linear_combination r2926)
      (by linear_combination r2927)
      (by linear_combination r2928)
      (by linear_combination r2929)
      (by linear_combination r2930)
    simpa [acc50, shiftOnce50] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc50 rho) (shiftOnce50 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc50 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce50 rho) (shifted50 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2935) (rho 2936) (rho 2937) (rho 2938) (rho 2939) (rho 2940) (rho 2941)
      (by simpa [shiftOnce50] using hshift1On)
      (by linear_combination r2931)
      (by linear_combination r2932)
      (by linear_combination r2933)
      (by linear_combination r2934)
      (by linear_combination r2935)
    simpa [shiftOnce50, shifted50] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted50 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce50 rho) (shifted50 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce50 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 150) (rho 149)
      (base rho) (twice rho) (triple rho) (digit50 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 150) (rho 149)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2943 + rho 2944, (1 : F) + rho 2946 + rho 2947⟩ := by
      constructor
      · refine ⟨(rho 2942 + (rho 1818) - (0)), rho 2943, ?_, ?_, ?_⟩
        · linear_combination r2936
        · linear_combination r2937
        · linear_combination r2938
      · refine ⟨(rho 2945 + (rho 1819) - ((1 : F))), rho 2946, ?_, ?_, ?_⟩
        · linear_combination r2939
        · linear_combination r2940
        · linear_combination r2941
    simpa [base, twice, triple, digit50] using hraw
  have hhigh : rho 150 =
      Bool.toZMod bits[148]! := by
    simpa only using rho_bit_of_map rho bits hbits 148 (by decide +kernel)
  have hlow : rho 149 =
      Bool.toZMod bits[147]! := by
    simpa only using rho_bit_of_map rho bits hbits 147 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[148]! bits[147]! (base rho) (twice rho) (triple rho)
    (digit50 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit50 rho) := by
    rw [hdigit]
    cases bits[148]! <;> cases bits[147]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted50 rho) (digit50 rho) (acc51 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2940) (rho 2941) (rho 2943 + rho 2944) ((1 : F) + rho 2946 + rho 2947)
      (rho 2948) (rho 2949) (rho 2950) (rho 2951) (rho 2952) (rho 2953)
      (by simpa [shifted50] using hshift2On)
      (by simpa [digit50] using hdigitOn)
      (by linear_combination r2942)
      (by linear_combination r2943)
      (by linear_combination r2944)
      (by linear_combination r2945)
      (by linear_combination r2946)
      (by linear_combination r2947)
    simpa [shifted50, digit50, acc51] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc51 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted50 rho) (digit50 rho) (acc51 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted50 rho) (digit50 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 150) (rho 149)
      (base rho) (twice rho) (triple rho) (acc50 rho)
      (acc51 rho) :=
    ⟨shiftOnce50 rho, shifted50 rho, digit50 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window51 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc51 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[146]! (scalarBits rho)[145]!
        (base rho) (twice rho) (triple rho) (acc51 rho)
        (acc52 rho) ∧
      EdwardsBridge.onCurve (acc52 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, p36, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart36 at p36
  rcases p36 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2948, r2949, r2950, r2951, r2952, r2953, r2954, r2955, r2956, r2957, r2958, r2959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart37 at p37
  rcases p37 with ⟨r2960, r2961, r2962, r2963, r2964, r2965, r2966, r2967, r2968, r2969, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2948 at r2948
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2949 at r2949
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2950 at r2950
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2951 at r2951
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2952 at r2952
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2953 at r2953
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2954 at r2954
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2955 at r2955
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2956 at r2956
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2957 at r2957
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2958 at r2958
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2959 at r2959
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2960 at r2960
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2961 at r2961
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2962 at r2962
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2963 at r2963
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2964 at r2964
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2965 at r2965
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2966 at r2966
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2967 at r2967
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2968 at r2968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2969 at r2969
  have hshift1 : EdwardsBridge.doubleSpec (acc51 rho) (shiftOnce51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2952) (rho 2953) (rho 2954) (rho 2955) (rho 2956) (rho 2957) (rho 2958)
      (by simpa [acc51] using hacc)
      (by linear_combination r2948)
      (by linear_combination r2949)
      (by linear_combination r2950)
      (by linear_combination r2951)
      (by linear_combination r2952)
    simpa [acc51, shiftOnce51] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc51 rho) (shiftOnce51 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc51 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce51 rho) (shifted51 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2957) (rho 2958) (rho 2959) (rho 2960) (rho 2961) (rho 2962) (rho 2963)
      (by simpa [shiftOnce51] using hshift1On)
      (by linear_combination r2953)
      (by linear_combination r2954)
      (by linear_combination r2955)
      (by linear_combination r2956)
      (by linear_combination r2957)
    simpa [shiftOnce51, shifted51] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted51 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce51 rho) (shifted51 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce51 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 148) (rho 147)
      (base rho) (twice rho) (triple rho) (digit51 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 148) (rho 147)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2965 + rho 2966, (1 : F) + rho 2968 + rho 2969⟩ := by
      constructor
      · refine ⟨(rho 2964 + (rho 1818) - (0)), rho 2965, ?_, ?_, ?_⟩
        · linear_combination r2958
        · linear_combination r2959
        · linear_combination r2960
      · refine ⟨(rho 2967 + (rho 1819) - ((1 : F))), rho 2968, ?_, ?_, ?_⟩
        · linear_combination r2961
        · linear_combination r2962
        · linear_combination r2963
    simpa [base, twice, triple, digit51] using hraw
  have hhigh : rho 148 =
      Bool.toZMod bits[146]! := by
    simpa only using rho_bit_of_map rho bits hbits 146 (by decide +kernel)
  have hlow : rho 147 =
      Bool.toZMod bits[145]! := by
    simpa only using rho_bit_of_map rho bits hbits 145 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[146]! bits[145]! (base rho) (twice rho) (triple rho)
    (digit51 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit51 rho) := by
    rw [hdigit]
    cases bits[146]! <;> cases bits[145]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted51 rho) (digit51 rho) (acc52 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2962) (rho 2963) (rho 2965 + rho 2966) ((1 : F) + rho 2968 + rho 2969)
      (rho 2970) (rho 2971) (rho 2972) (rho 2973) (rho 2974) (rho 2975)
      (by simpa [shifted51] using hshift2On)
      (by simpa [digit51] using hdigitOn)
      (by linear_combination r2964)
      (by linear_combination r2965)
      (by linear_combination r2966)
      (by linear_combination r2967)
      (by linear_combination r2968)
      (by linear_combination r2969)
    simpa [shifted51, digit51, acc52] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc52 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted51 rho) (digit51 rho) (acc52 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted51 rho) (digit51 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 148) (rho 147)
      (base rho) (twice rho) (triple rho) (acc51 rho)
      (acc52 rho) :=
    ⟨shiftOnce51 rho, shifted51 rho, digit51 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window52 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc52 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[144]! (scalarBits rho)[143]!
        (base rho) (twice rho) (triple rho) (acc52 rho)
        (acc53 rho) ∧
      EdwardsBridge.onCurve (acc53 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, r2985, r2986, r2987, r2988, r2989, r2990, r2991, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2970 at r2970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2971 at r2971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2972 at r2972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2973 at r2973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2974 at r2974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2975 at r2975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2976 at r2976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2977 at r2977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2978 at r2978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2979 at r2979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2980 at r2980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2981 at r2981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2982 at r2982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2983 at r2983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2984 at r2984
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2985 at r2985
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2986 at r2986
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2987 at r2987
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2988 at r2988
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2989 at r2989
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2990 at r2990
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2991 at r2991
  have hshift1 : EdwardsBridge.doubleSpec (acc52 rho) (shiftOnce52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2974) (rho 2975) (rho 2976) (rho 2977) (rho 2978) (rho 2979) (rho 2980)
      (by simpa [acc52] using hacc)
      (by linear_combination r2970)
      (by linear_combination r2971)
      (by linear_combination r2972)
      (by linear_combination r2973)
      (by linear_combination r2974)
    simpa [acc52, shiftOnce52] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc52 rho) (shiftOnce52 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc52 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce52 rho) (shifted52 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2979) (rho 2980) (rho 2981) (rho 2982) (rho 2983) (rho 2984) (rho 2985)
      (by simpa [shiftOnce52] using hshift1On)
      (by linear_combination r2975)
      (by linear_combination r2976)
      (by linear_combination r2977)
      (by linear_combination r2978)
      (by linear_combination r2979)
    simpa [shiftOnce52, shifted52] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted52 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce52 rho) (shifted52 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce52 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 146) (rho 145)
      (base rho) (twice rho) (triple rho) (digit52 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 146) (rho 145)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 2987 + rho 2988, (1 : F) + rho 2990 + rho 2991⟩ := by
      constructor
      · refine ⟨(rho 2986 + (rho 1818) - (0)), rho 2987, ?_, ?_, ?_⟩
        · linear_combination r2980
        · linear_combination r2981
        · linear_combination r2982
      · refine ⟨(rho 2989 + (rho 1819) - ((1 : F))), rho 2990, ?_, ?_, ?_⟩
        · linear_combination r2983
        · linear_combination r2984
        · linear_combination r2985
    simpa [base, twice, triple, digit52] using hraw
  have hhigh : rho 146 =
      Bool.toZMod bits[144]! := by
    simpa only using rho_bit_of_map rho bits hbits 144 (by decide +kernel)
  have hlow : rho 145 =
      Bool.toZMod bits[143]! := by
    simpa only using rho_bit_of_map rho bits hbits 143 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[144]! bits[143]! (base rho) (twice rho) (triple rho)
    (digit52 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit52 rho) := by
    rw [hdigit]
    cases bits[144]! <;> cases bits[143]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted52 rho) (digit52 rho) (acc53 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2984) (rho 2985) (rho 2987 + rho 2988) ((1 : F) + rho 2990 + rho 2991)
      (rho 2992) (rho 2993) (rho 2994) (rho 2995) (rho 2996) (rho 2997)
      (by simpa [shifted52] using hshift2On)
      (by simpa [digit52] using hdigitOn)
      (by linear_combination r2986)
      (by linear_combination r2987)
      (by linear_combination r2988)
      (by linear_combination r2989)
      (by linear_combination r2990)
      (by linear_combination r2991)
    simpa [shifted52, digit52, acc53] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc53 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted52 rho) (digit52 rho) (acc53 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted52 rho) (digit52 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 146) (rho 145)
      (base rho) (twice rho) (triple rho) (acc52 rho)
      (acc53 rho) :=
    ⟨shiftOnce52 rho, shifted52 rho, digit52 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw

theorem window53 (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : scalarBits rho = bits.map Bool.toZMod)
    (hbase : EdwardsBridge.onCurve (base rho))
    (htable : Window2ScalarMulBridge.TableRel
      (base rho) (twice rho) (triple rho))
    (hacc : EdwardsBridge.onCurve (acc53 rho)) :
    Window2ScalarMulBridge.WindowRel
        (scalarBits rho)[142]! (scalarBits rho)[141]!
        (base rho) (twice rho) (triple rho) (acc53 rho)
        (acc54 rho) ∧
      EdwardsBridge.onCurve (acc54 rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r2992, r2993, r2994, r2995, r2996, r2997, r2998, r2999, r3000, r3001, r3002, r3003, r3004, r3005, r3006, r3007, r3008, r3009, r3010, r3011, r3012, r3013, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2992 at r2992
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2993 at r2993
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2994 at r2994
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2995 at r2995
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2996 at r2996
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2997 at r2997
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2998 at r2998
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow2999 at r2999
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3000 at r3000
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3001 at r3001
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3002 at r3002
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3003 at r3003
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3004 at r3004
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3005 at r3005
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3006 at r3006
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3007 at r3007
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3008 at r3008
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3009 at r3009
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3010 at r3010
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3011 at r3011
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3012 at r3012
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.relationRow3013 at r3013
  have hshift1 : EdwardsBridge.doubleSpec (acc53 rho) (shiftOnce53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 2996) (rho 2997) (rho 2998) (rho 2999) (rho 3000) (rho 3001) (rho 3002)
      (by simpa [acc53] using hacc)
      (by linear_combination r2992)
      (by linear_combination r2993)
      (by linear_combination r2994)
      (by linear_combination r2995)
      (by linear_combination r2996)
    simpa [acc53, shiftOnce53] using hraw
  have hshift1On : EdwardsBridge.onCurve (shiftOnce53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (acc53 rho) (shiftOnce53 rho)
      hacc hshift1
    rw [heq]
    exact EdwardsBridge.double_onCurve (acc53 rho) hacc
  have hshift2 : EdwardsBridge.doubleSpec (shiftOnce53 rho) (shifted53 rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 3001) (rho 3002) (rho 3003) (rho 3004) (rho 3005) (rho 3006) (rho 3007)
      (by simpa [shiftOnce53] using hshift1On)
      (by linear_combination r2997)
      (by linear_combination r2998)
      (by linear_combination r2999)
      (by linear_combination r3000)
      (by linear_combination r3001)
    simpa [shiftOnce53, shifted53] using hraw
  have hshift2On : EdwardsBridge.onCurve (shifted53 rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (shiftOnce53 rho) (shifted53 rho)
      hshift1On hshift2
    rw [heq]
    exact EdwardsBridge.double_onCurve (shiftOnce53 rho) hshift1On
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 144) (rho 143)
      (base rho) (twice rho) (triple rho) (digit53 rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 144) (rho 143)
        ⟨rho 1811 + rho 1812, rho 1813 + rho 1814⟩ ⟨rho 1818, rho 1819⟩
        ⟨rho 1824, rho 1825⟩ ⟨rho 3009 + rho 3010, (1 : F) + rho 3012 + rho 3013⟩ := by
      constructor
      · refine ⟨(rho 3008 + (rho 1818) - (0)), rho 3009, ?_, ?_, ?_⟩
        · linear_combination r3002
        · linear_combination r3003
        · linear_combination r3004
      · refine ⟨(rho 3011 + (rho 1819) - ((1 : F))), rho 3012, ?_, ?_, ?_⟩
        · linear_combination r3005
        · linear_combination r3006
        · linear_combination r3007
    simpa [base, twice, triple, digit53] using hraw
  have hhigh : rho 144 =
      Bool.toZMod bits[142]! := by
    simpa only using rho_bit_of_map rho bits hbits 142 (by decide +kernel)
  have hlow : rho 143 =
      Bool.toZMod bits[141]! := by
    simpa only using rho_bit_of_map rho bits hbits 141 (by decide +kernel)
  rcases Window2ScalarMulBridge.tableRel_semantic
      (base rho) (twice rho) (triple rho) hbase htable with
    ⟨htwiceEq, htripleEq, htwiceOn, htripleOn⟩
  have hlookupBool := hlookup
  rw [hhigh, hlow] at hlookupBool
  have hdigit := Window2ScalarMulBridge.lookup2Rel_semantic
    bits[142]! bits[141]! (base rho) (twice rho) (triple rho)
    (digit53 rho) htwiceEq htripleEq hlookupBool
  have hdigitOn : EdwardsBridge.onCurve (digit53 rho) := by
    rw [hdigit]
    cases bits[142]! <;> cases bits[141]!
    · exact EdwardsBridge.identity_onCurve
    · exact hbase
    · simpa [htwiceEq] using htwiceOn
    · simpa [htripleEq] using htripleOn
  have hadd : EdwardsBridge.addSpec (shifted53 rho) (digit53 rho) (acc54 rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 3006) (rho 3007) (rho 3009 + rho 3010) ((1 : F) + rho 3012 + rho 3013)
      (rho 3014) (rho 3015) (rho 3016) (rho 3017) (rho 3018) (rho 3019)
      (by simpa [shifted53] using hshift2On)
      (by simpa [digit53] using hdigitOn)
      (by linear_combination r3008)
      (by linear_combination r3009)
      (by linear_combination r3010)
      (by linear_combination r3011)
      (by linear_combination r3012)
      (by linear_combination r3013)
    simpa [shifted53, digit53, acc54] using hraw
  have hnextOn : EdwardsBridge.onCurve (acc54 rho) := by
    have heq := EdwardsBridge.addSpec_eq (shifted53 rho) (digit53 rho) (acc54 rho)
      hshift2On hdigitOn hadd
    rw [heq]
    exact EdwardsBridge.add_onCurve (shifted53 rho) (digit53 rho) hshift2On hdigitOn
  have hwindowRaw : Window2ScalarMulBridge.WindowRel
      (rho 144) (rho 143)
      (base rho) (twice rho) (triple rho) (acc53 rho)
      (acc54 rho) :=
    ⟨shiftOnce53 rho, shifted53 rho, digit53 rho,
      hshift1, hshift2, hlookup, hadd⟩
  refine ⟨?_, hnextOn⟩
  simpa only [scalarBits_get] using hwindowRaw


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b.UserWindowSupport
