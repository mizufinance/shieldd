import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104bQuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node2_seg20 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow875 rho)
    (r876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow876 rho)
    (r877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow877 rho)
    (r878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow878 rho)
    (r879 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow879 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg20 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) next := by
  exact ⟨rho 881, rho 882, rho 883, rho 884, rho 885, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow875 at r875; linear_combination r875), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow876 at r876; linear_combination r876), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow877 at r877; linear_combination r877), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow878 at r878; linear_combination r878), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow879 at r879; linear_combination r879), tail⟩

theorem node2_seg21 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r880 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow880 rho)
    (r881 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow881 rho)
    (r882 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow882 rho)
    (r883 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow883 rho)
    (r884 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow884 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg21 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) next := by
  exact ⟨rho 886, rho 887, rho 888, rho 889, rho 890, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow880 at r880; linear_combination r880), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow881 at r881; linear_combination r881), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow882 at r882; linear_combination r882), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow883 at r883; linear_combination r883), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow884 at r884; linear_combination r884), tail⟩

theorem node2_seg22 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r885 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow885 rho)
    (r886 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow886 rho)
    (r887 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow887 rho)
    (r888 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow888 rho)
    (r889 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow889 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg22 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) next := by
  exact ⟨rho 891, rho 892, rho 893, rho 894, rho 895, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow885 at r885; linear_combination r885), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow886 at r886; linear_combination r886), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow887 at r887; linear_combination r887), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow888 at r888; linear_combination r888), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow889 at r889; linear_combination r889), tail⟩

theorem node2_seg23 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r890 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow890 rho)
    (r891 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow891 rho)
    (r892 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow892 rho)
    (r893 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow893 rho)
    (r894 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow894 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg23 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) next := by
  exact ⟨rho 896, rho 897, rho 898, rho 899, rho 900, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow890 at r890; linear_combination r890), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow891 at r891; linear_combination r891), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow892 at r892; linear_combination r892), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow893 at r893; linear_combination r893), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow894 at r894; linear_combination r894), tail⟩

theorem node2_seg24 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow895 rho)
    (r896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow896 rho)
    (r897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow897 rho)
    (r898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow898 rho)
    (r899 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow899 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg24 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) next := by
  exact ⟨rho 901, rho 902, rho 903, rho 904, rho 905, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow895 at r895; linear_combination r895), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow896 at r896; linear_combination r896), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow897 at r897; linear_combination r897), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow898 at r898; linear_combination r898), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow899 at r899; linear_combination r899), tail⟩

theorem node2_seg25 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r900 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow900 rho)
    (r901 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow901 rho)
    (r902 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow902 rho)
    (r903 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow903 rho)
    (r904 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow904 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg25 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) next := by
  exact ⟨rho 906, rho 907, rho 908, rho 909, rho 910, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow900 at r900; linear_combination r900), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow901 at r901; linear_combination r901), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow902 at r902; linear_combination r902), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow903 at r903; linear_combination r903), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow904 at r904; linear_combination r904), tail⟩

theorem node2_seg26 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r905 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow905 rho)
    (r906 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow906 rho)
    (r907 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow907 rho)
    (r908 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow908 rho)
    (r909 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow909 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg26 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) next := by
  exact ⟨rho 911, rho 912, rho 913, rho 914, rho 915, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow905 at r905; linear_combination r905), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow906 at r906; linear_combination r906), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow907 at r907; linear_combination r907), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow908 at r908; linear_combination r908), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow909 at r909; linear_combination r909), tail⟩

theorem node2_seg27 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r910 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow910 rho)
    (r911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow911 rho)
    (r912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow912 rho)
    (r913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow913 rho)
    (r914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow914 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915) (rho 920)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg27 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915) next := by
  exact ⟨rho 916, rho 917, rho 918, rho 919, rho 920, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow910 at r910; linear_combination r910), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow911 at r911; linear_combination r911), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow912 at r912; linear_combination r912), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow913 at r913; linear_combination r913), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow914 at r914; linear_combination r914), tail⟩

theorem node2_seg28 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow915 rho)
    (r916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow916 rho)
    (r917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow917 rho)
    (r918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow918 rho)
    (r919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow919 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915) (rho 920) (rho 925)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg28 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915) (rho 920) next := by
  exact ⟨rho 921, rho 922, rho 923, rho 924, rho 925, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow915 at r915; linear_combination r915), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow916 at r916; linear_combination r916), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow917 at r917; linear_combination r917), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow918 at r918; linear_combination r918), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow919 at r919; linear_combination r919), tail⟩

theorem node2_seg29 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow920 rho)
    (r921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow921 rho)
    (r922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow922 rho)
    (r923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow923 rho)
    (r924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow924 rho)
    (tail : next (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915) (rho 920) (rho 925) (rho 930)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg29 (rho 855) (rho 860) (rho 865) (rho 870) (rho 875) (rho 880) (rho 885) (rho 890) (rho 895) (rho 900) (rho 905) (rho 910) (rho 915) (rho 920) (rho 925) next := by
  exact ⟨rho 926, rho 927, rho 928, rho 929, rho 930, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow920 at r920; linear_combination r920), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow921 at r921; linear_combination r921), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow922 at r922; linear_combination r922), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow923 at r923; linear_combination r923), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b.relationRow924 at r924; linear_combination r924), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b
