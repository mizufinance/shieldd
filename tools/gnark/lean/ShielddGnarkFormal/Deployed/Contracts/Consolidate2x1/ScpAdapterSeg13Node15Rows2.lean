import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node15_seg20 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5853 : Seg13.relationRow5853 rho)
    (r5854 : Seg13.relationRow5854 rho)
    (r5855 : Seg13.relationRow5855 rho)
    (r5856 : Seg13.relationRow5856 rho)
    (r5857 : Seg13.relationRow5857 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg20 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) next := by
  exact ⟨rho 13006, rho 13007, rho 13008, rho 13009, rho 13010, r5853, r5854, r5855, r5856, r5857, tail⟩

theorem seg13_scp_node15_seg21 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5858 : Seg13.relationRow5858 rho)
    (r5859 : Seg13.relationRow5859 rho)
    (r5860 : Seg13.relationRow5860 rho)
    (r5861 : Seg13.relationRow5861 rho)
    (r5862 : Seg13.relationRow5862 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg21 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) next := by
  exact ⟨rho 13011, rho 13012, rho 13013, rho 13014, rho 13015, r5858, r5859, r5860, r5861, r5862, tail⟩

theorem seg13_scp_node15_seg22 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5863 : Seg13.relationRow5863 rho)
    (r5864 : Seg13.relationRow5864 rho)
    (r5865 : Seg13.relationRow5865 rho)
    (r5866 : Seg13.relationRow5866 rho)
    (r5867 : Seg13.relationRow5867 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg22 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) next := by
  exact ⟨rho 13016, rho 13017, rho 13018, rho 13019, rho 13020, r5863, r5864, r5865, r5866, r5867, tail⟩

theorem seg13_scp_node15_seg23 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5868 : Seg13.relationRow5868 rho)
    (r5869 : Seg13.relationRow5869 rho)
    (r5870 : Seg13.relationRow5870 rho)
    (r5871 : Seg13.relationRow5871 rho)
    (r5872 : Seg13.relationRow5872 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg23 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) next := by
  exact ⟨rho 13021, rho 13022, rho 13023, rho 13024, rho 13025, r5868, r5869, r5870, r5871, r5872, tail⟩

theorem seg13_scp_node15_seg24 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5873 : Seg13.relationRow5873 rho)
    (r5874 : Seg13.relationRow5874 rho)
    (r5875 : Seg13.relationRow5875 rho)
    (r5876 : Seg13.relationRow5876 rho)
    (r5877 : Seg13.relationRow5877 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg24 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) next := by
  exact ⟨rho 13026, rho 13027, rho 13028, rho 13029, rho 13030, r5873, r5874, r5875, r5876, r5877, tail⟩

theorem seg13_scp_node15_seg25 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5878 : Seg13.relationRow5878 rho)
    (r5879 : Seg13.relationRow5879 rho)
    (r5880 : Seg13.relationRow5880 rho)
    (r5881 : Seg13.relationRow5881 rho)
    (r5882 : Seg13.relationRow5882 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg25 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) next := by
  exact ⟨rho 13031, rho 13032, rho 13033, rho 13034, rho 13035, r5878, r5879, r5880, r5881, r5882, tail⟩

theorem seg13_scp_node15_seg26 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5883 : Seg13.relationRow5883 rho)
    (r5884 : Seg13.relationRow5884 rho)
    (r5885 : Seg13.relationRow5885 rho)
    (r5886 : Seg13.relationRow5886 rho)
    (r5887 : Seg13.relationRow5887 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg26 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) next := by
  exact ⟨rho 13036, rho 13037, rho 13038, rho 13039, rho 13040, r5883, r5884, r5885, r5886, r5887, tail⟩

theorem seg13_scp_node15_seg27 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5888 : Seg13.relationRow5888 rho)
    (r5889 : Seg13.relationRow5889 rho)
    (r5890 : Seg13.relationRow5890 rho)
    (r5891 : Seg13.relationRow5891 rho)
    (r5892 : Seg13.relationRow5892 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg27 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) next := by
  exact ⟨rho 13041, rho 13042, rho 13043, rho 13044, rho 13045, r5888, r5889, r5890, r5891, r5892, tail⟩

theorem seg13_scp_node15_seg28 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5893 : Seg13.relationRow5893 rho)
    (r5894 : Seg13.relationRow5894 rho)
    (r5895 : Seg13.relationRow5895 rho)
    (r5896 : Seg13.relationRow5896 rho)
    (r5897 : Seg13.relationRow5897 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg28 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) next := by
  exact ⟨rho 13046, rho 13047, rho 13048, rho 13049, rho 13050, r5893, r5894, r5895, r5896, r5897, tail⟩

theorem seg13_scp_node15_seg29 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r5898 : Seg13.relationRow5898 rho)
    (r5899 : Seg13.relationRow5899 rho)
    (r5900 : Seg13.relationRow5900 rho)
    (r5901 : Seg13.relationRow5901 rho)
    (r5902 : Seg13.relationRow5902 rho)
    (tail : next (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) (rho 13055)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode15350_721add.seg29 (rho 12980) (rho 12985) (rho 12990) (rho 12995) (rho 13000) (rho 13005) (rho 13010) (rho 13015) (rho 13020) (rho 13025) (rho 13030) (rho 13035) (rho 13040) (rho 13045) (rho 13050) next := by
  exact ⟨rho 13051, rho 13052, rho 13053, rho 13054, rho 13055, r5898, r5899, r5900, r5901, r5902, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

