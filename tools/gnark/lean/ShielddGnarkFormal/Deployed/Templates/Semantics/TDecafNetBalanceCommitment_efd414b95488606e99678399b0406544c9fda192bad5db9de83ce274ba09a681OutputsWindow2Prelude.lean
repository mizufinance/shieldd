import ShielddGnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681OutputsWindow2Defs

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Bool (toZMod)

theorem table_and_initial (rho : Nat → F)
    (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation rho)
    (hbase : EdwardsBridge.onCurve (base rho)) :
    Window2ScalarMulBridge.TableRel (base rho) (twice rho) (triple rho) ∧
      Window2ScalarMulBridge.Lookup2Rel
        (scalarBits rho)[128]! (scalarBits rho)[127]!
        (base rho) (twice rho) (triple rho) (initial rho) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, p37, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationPart37 at p37
  rcases p37 with ⟨_, _, _, _, _, _, _, _, r2968, r2969, r2970, r2971, r2972, r2973, r2974, r2975, r2976, r2977, r2978, r2979, r2980, r2981, r2982, r2983, r2984, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2968 at r2968
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2969 at r2969
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2970 at r2970
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2971 at r2971
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2972 at r2972
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2973 at r2973
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2974 at r2974
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2975 at r2975
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2976 at r2976
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2977 at r2977
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2978 at r2978
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2979 at r2979
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2980 at r2980
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2981 at r2981
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2982 at r2982
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2983 at r2983
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.relationRow2984 at r2984
  have htwice : EdwardsBridge.doubleSpec (base rho) (twice rho) := by
    have hraw := Window2ScalarMulBridge.doubleSpec_of_rows
      (rho 598) (rho 600) (rho 2794) (rho 2795) (rho 2796) (rho 2797) (rho 2798)
      (by simpa [base] using hbase)
      (by linear_combination r2968)
      (by linear_combination r2969)
      (by linear_combination r2970)
      (by linear_combination r2971)
      (by linear_combination r2972)
    simpa [base, twice] using hraw
  have htwiceOn : EdwardsBridge.onCurve (twice rho) := by
    have heq := EdwardsBridge.doubleSpec_eq (base rho) (twice rho)
      hbase htwice
    rw [heq]
    exact EdwardsBridge.double_onCurve (base rho) hbase
  have htriple : EdwardsBridge.addSpec (twice rho) (base rho) (triple rho) := by
    have hraw := Window2ScalarMulBridge.addSpec_of_rows
      (rho 2797) (rho 2798) (rho 598) (rho 600)
      (rho 2799) (rho 2800) (rho 2801) (rho 2802) (rho 2803) (rho 2804)
      (by simpa [twice] using htwiceOn)
      (by simpa [base] using hbase)
      (by linear_combination r2973)
      (by linear_combination r2974)
      (by linear_combination r2975)
      (by linear_combination r2976)
      (by linear_combination r2977)
      (by linear_combination r2978)
    simpa [twice, base, triple] using hraw
  have hlookup : Window2ScalarMulBridge.Lookup2Rel
      (rho 2793) (rho 2792)
      (base rho) (twice rho) (triple rho) (initial rho) := by
    have hraw : Window2ScalarMulBridge.Lookup2Rel
        (rho 2793) (rho 2792)
        ⟨rho 598, rho 600⟩ ⟨rho 2797, rho 2798⟩
        ⟨rho 2803, rho 2804⟩ ⟨rho 2806 + rho 2807, (1 : F) + rho 2809 + rho 2810⟩ := by
      constructor
      · refine ⟨(rho 2805 + (rho 2797) - (0)), rho 2806, ?_, ?_, ?_⟩
        · linear_combination r2979
        · linear_combination r2980
        · linear_combination r2981
      · refine ⟨(rho 2808 + (rho 2798) - ((1 : F))), rho 2809, ?_, ?_, ?_⟩
        · linear_combination r2982
        · linear_combination r2983
        · linear_combination r2984
    simpa [base, twice, triple, initial] using hraw
  refine ⟨⟨htwice, htriple⟩, ?_⟩
  simpa only [scalarBits_get] using hlookup

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.OutputsWindowSupport
