import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686QuadPathBase
import ShielddGnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem node13_seg10 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4829 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4829 rho)
    (r4830 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4830 rho)
    (r4831 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4831 rho)
    (r4832 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4832 rho)
    (r4833 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4833 rho)
    (tail : next (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) (rho 4827)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg10 (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) next := by
  exact ⟨rho 4823, rho 4824, rho 4825, rho 4826, rho 4827, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4829 at r4829; linear_combination r4829), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4830 at r4830; linear_combination r4830), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4831 at r4831; linear_combination r4831), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4832 at r4832; linear_combination r4832), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4833 at r4833; linear_combination r4833), tail⟩

theorem node13_seg11 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4834 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4834 rho)
    (r4835 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4835 rho)
    (r4836 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4836 rho)
    (r4837 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4837 rho)
    (r4838 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4838 rho)
    (tail : next (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) (rho 4827) (rho 4832)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg11 (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) (rho 4827) next := by
  exact ⟨rho 4828, rho 4829, rho 4830, rho 4831, rho 4832, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4834 at r4834; linear_combination r4834), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4835 at r4835; linear_combination r4835), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4836 at r4836; linear_combination r4836), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4837 at r4837; linear_combination r4837), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4838 at r4838; linear_combination r4838), tail⟩

theorem node13_seg12 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4839 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4839 rho)
    (r4840 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4840 rho)
    (r4841 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4841 rho)
    (r4842 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4842 rho)
    (r4843 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4843 rho)
    (tail : next (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) (rho 4827) (rho 4832) (rho 4837)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg12 (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) (rho 4827) (rho 4832) next := by
  exact ⟨rho 4833, rho 4834, rho 4835, rho 4836, rho 4837, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4839 at r4839; linear_combination r4839), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4840 at r4840; linear_combination r4840), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4841 at r4841; linear_combination r4841), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4842 at r4842; linear_combination r4842), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4843 at r4843; linear_combination r4843), tail⟩

theorem node13_seg13 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r4844 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4844 rho)
    (r4845 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4845 rho)
    (r4846 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4846 rho)
    (r4847 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4847 rho)
    (r4848 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4848 rho)
    (tail : next (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg13 (rho 4797) (rho 4802) (rho 4807) (rho 4812) (rho 4817) (rho 4822) (rho 4827) (rho 4832) (rho 4837) next := by
  exact ⟨rho 4838, rho 4839, rho 4840, rho 4841, rho 4842, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4844 at r4844; linear_combination r4844), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4845 at r4845; linear_combination r4845), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4846 at r4846; linear_combination r4846), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4847 at r4847; linear_combination r4847), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4848 at r4848; linear_combination r4848), tail⟩

theorem node13_seg14 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r4849 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4849 rho)
    (r4850 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4850 rho)
    (r4851 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4851 rho)
    (r4852 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4852 rho)
    (r4853 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4853 rho)
    (tail : next (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg14 (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) next := by
  exact ⟨rho 4843, rho 4844, rho 4845, rho 4846, rho 4847, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4849 at r4849; linear_combination r4849), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4850 at r4850; linear_combination r4850), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4851 at r4851; linear_combination r4851), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4852 at r4852; linear_combination r4852), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4853 at r4853; linear_combination r4853), tail⟩

theorem node13_seg15 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → Prop)
    (r4854 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4854 rho)
    (r4855 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4855 rho)
    (r4856 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4856 rho)
    (r4857 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4857 rho)
    (r4858 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4858 rho)
    (tail : next (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) (rho 4852)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg15 (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) next := by
  exact ⟨rho 4848, rho 4849, rho 4850, rho 4851, rho 4852, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4854 at r4854; linear_combination r4854), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4855 at r4855; linear_combination r4855), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4856 at r4856; linear_combination r4856), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4857 at r4857; linear_combination r4857), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4858 at r4858; linear_combination r4858), tail⟩

theorem node13_seg16 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r4859 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4859 rho)
    (r4860 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4860 rho)
    (r4861 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4861 rho)
    (r4862 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4862 rho)
    (r4863 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4863 rho)
    (tail : next (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) (rho 4852) (rho 4857)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg16 (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) (rho 4852) next := by
  exact ⟨rho 4853, rho 4854, rho 4855, rho 4856, rho 4857, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4859 at r4859; linear_combination r4859), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4860 at r4860; linear_combination r4860), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4861 at r4861; linear_combination r4861), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4862 at r4862; linear_combination r4862), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4863 at r4863; linear_combination r4863), tail⟩

theorem node13_seg17 (rho : Nat → F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r4864 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4864 rho)
    (r4865 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4865 rho)
    (r4866 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4866 rho)
    (r4867 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4867 rho)
    (r4868 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4868 rho)
    (tail : next (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) (rho 4852) (rho 4857) (rho 4862)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg17 (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) (rho 4852) (rho 4857) next := by
  exact ⟨rho 4858, rho 4859, rho 4860, rho 4861, rho 4862, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4864 at r4864; linear_combination r4864), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4865 at r4865; linear_combination r4865), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4866 at r4866; linear_combination r4866), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4867 at r4867; linear_combination r4867), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4868 at r4868; linear_combination r4868), tail⟩

theorem node13_seg18 (rho : Nat → F)
    (next : F → F → F → F → F → Prop)
    (r4869 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4869 rho)
    (r4870 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4870 rho)
    (r4871 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4871 rho)
    (r4872 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4872 rho)
    (r4873 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4873 rho)
    (tail : next (rho 4847) (rho 4852) (rho 4857) (rho 4862) (rho 4867)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg18 (rho 4822) (rho 4827) (rho 4832) (rho 4837) (rho 4842) (rho 4847) (rho 4852) (rho 4857) (rho 4862) next := by
  exact ⟨rho 4863, rho 4864, rho 4865, rho 4866, rho 4867, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4869 at r4869; linear_combination r4869), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4870 at r4870; linear_combination r4870), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4871 at r4871; linear_combination r4871), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4872 at r4872; linear_combination r4872), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4873 at r4873; linear_combination r4873), tail⟩

theorem node13_seg19 (rho : Nat → F)
    (next : F → F → F → F → F → F → Prop)
    (r4874 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4874 rho)
    (r4875 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4875 rho)
    (r4876 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4876 rho)
    (r4877 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4877 rho)
    (r4878 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4878 rho)
    (tail : next (rho 4847) (rho 4852) (rho 4857) (rho 4862) (rho 4867) (rho 4872)) :
    Shieldd.GnarkFormal.Extracted.Deployed.CertifiedQuadPathNodePoseidonRows350.seg19 (rho 4847) (rho 4852) (rho 4857) (rho 4862) (rho 4867) next := by
  exact ⟨rho 4868, rho 4869, rho 4870, rho 4871, rho 4872, (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4874 at r4874; linear_combination r4874), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4875 at r4875; linear_combination r4875), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4876 at r4876; linear_combination r4876), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4877 at r4877; linear_combination r4877), (by unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686.relationRow4878 at r4878; linear_combination r4878), tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetCompliancePath_d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686
