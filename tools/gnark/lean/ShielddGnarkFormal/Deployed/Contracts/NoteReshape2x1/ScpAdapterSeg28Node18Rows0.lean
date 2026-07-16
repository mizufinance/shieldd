import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node18_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6845 : Seg28.relationRow6845 rho)
    (r6846 : Seg28.relationRow6846 rho)
    (r6847 : Seg28.relationRow6847 rho)
    (r6848 : Seg28.relationRow6848 rho)
    (r6849 : Seg28.relationRow6849 rho)
    (tail : next (rho 131) (rho 132) (rho 26162) (rho 26163) (rho 26164) (rho 26165) (rho 26166) (rho 26171)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg0 (rho 130) (rho 131) (rho 132) (rho 26161) (rho 26162) (rho 26163) (rho 26164) (rho 26165) (rho 26166) next := by
  exact ⟨rho 26167, rho 26168, rho 26169, rho 26170, rho 26171, r6845, r6846, r6847, r6848, r6849, tail⟩

theorem seg28_scp_node18_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6850 : Seg28.relationRow6850 rho)
    (r6851 : Seg28.relationRow6851 rho)
    (r6852 : Seg28.relationRow6852 rho)
    (r6853 : Seg28.relationRow6853 rho)
    (r6854 : Seg28.relationRow6854 rho)
    (tail : next (rho 131) (rho 132) (rho 26164) (rho 26165) (rho 26166) (rho 26171) (rho 26176)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg1 (rho 131) (rho 132) (rho 26162) (rho 26163) (rho 26164) (rho 26165) (rho 26166) (rho 26171) next := by
  exact ⟨rho 26172, rho 26173, rho 26174, rho 26175, rho 26176, r6850, r6851, r6852, r6853, r6854, tail⟩

theorem seg28_scp_node18_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6855 : Seg28.relationRow6855 rho)
    (r6856 : Seg28.relationRow6856 rho)
    (r6857 : Seg28.relationRow6857 rho)
    (r6858 : Seg28.relationRow6858 rho)
    (r6859 : Seg28.relationRow6859 rho)
    (tail : next (rho 132) (rho 26166) (rho 26171) (rho 26176) (rho 26181)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg2 (rho 131) (rho 132) (rho 26164) (rho 26165) (rho 26166) (rho 26171) (rho 26176) next := by
  exact ⟨rho 26177, rho 26178, rho 26179, rho 26180, rho 26181, r6855, r6856, r6857, r6858, r6859, tail⟩

theorem seg28_scp_node18_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6860 : Seg28.relationRow6860 rho)
    (r6861 : Seg28.relationRow6861 rho)
    (r6862 : Seg28.relationRow6862 rho)
    (r6863 : Seg28.relationRow6863 rho)
    (r6864 : Seg28.relationRow6864 rho)
    (tail : next (rho 26171) (rho 26176) (rho 26181) (rho 26186)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg3 (rho 132) (rho 26166) (rho 26171) (rho 26176) (rho 26181) next := by
  exact ⟨rho 26182, rho 26183, rho 26184, rho 26185, rho 26186, r6860, r6861, r6862, r6863, r6864, tail⟩

theorem seg28_scp_node18_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6865 : Seg28.relationRow6865 rho)
    (r6866 : Seg28.relationRow6866 rho)
    (r6867 : Seg28.relationRow6867 rho)
    (r6868 : Seg28.relationRow6868 rho)
    (r6869 : Seg28.relationRow6869 rho)
    (tail : next (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg4 (rho 26171) (rho 26176) (rho 26181) (rho 26186) next := by
  exact ⟨rho 26187, rho 26188, rho 26189, rho 26190, rho 26191, r6865, r6866, r6867, r6868, r6869, tail⟩

theorem seg28_scp_node18_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6870 : Seg28.relationRow6870 rho)
    (r6871 : Seg28.relationRow6871 rho)
    (r6872 : Seg28.relationRow6872 rho)
    (r6873 : Seg28.relationRow6873 rho)
    (r6874 : Seg28.relationRow6874 rho)
    (tail : next (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) (rho 26196)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg5 (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) next := by
  exact ⟨rho 26192, rho 26193, rho 26194, rho 26195, rho 26196, r6870, r6871, r6872, r6873, r6874, tail⟩

theorem seg28_scp_node18_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6875 : Seg28.relationRow6875 rho)
    (r6876 : Seg28.relationRow6876 rho)
    (r6877 : Seg28.relationRow6877 rho)
    (r6878 : Seg28.relationRow6878 rho)
    (r6879 : Seg28.relationRow6879 rho)
    (tail : next (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) (rho 26196) (rho 26201)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg6 (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) (rho 26196) next := by
  exact ⟨rho 26197, rho 26198, rho 26199, rho 26200, rho 26201, r6875, r6876, r6877, r6878, r6879, tail⟩

theorem seg28_scp_node18_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6880 : Seg28.relationRow6880 rho)
    (r6881 : Seg28.relationRow6881 rho)
    (r6882 : Seg28.relationRow6882 rho)
    (r6883 : Seg28.relationRow6883 rho)
    (r6884 : Seg28.relationRow6884 rho)
    (tail : next (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) (rho 26196) (rho 26201) (rho 26206)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg7 (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) (rho 26196) (rho 26201) next := by
  exact ⟨rho 26202, rho 26203, rho 26204, rho 26205, rho 26206, r6880, r6881, r6882, r6883, r6884, tail⟩

theorem seg28_scp_node18_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6885 : Seg28.relationRow6885 rho)
    (r6886 : Seg28.relationRow6886 rho)
    (r6887 : Seg28.relationRow6887 rho)
    (r6888 : Seg28.relationRow6888 rho)
    (r6889 : Seg28.relationRow6889 rho)
    (tail : next (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg8 (rho 26171) (rho 26176) (rho 26181) (rho 26186) (rho 26191) (rho 26196) (rho 26201) (rho 26206) next := by
  exact ⟨rho 26207, rho 26208, rho 26209, rho 26210, rho 26211, r6885, r6886, r6887, r6888, r6889, tail⟩

theorem seg28_scp_node18_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r6890 : Seg28.relationRow6890 rho)
    (r6891 : Seg28.relationRow6891 rho)
    (r6892 : Seg28.relationRow6892 rho)
    (r6893 : Seg28.relationRow6893 rho)
    (r6894 : Seg28.relationRow6894 rho)
    (tail : next (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) (rho 26216)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg9 (rho 26191) (rho 26196) (rho 26201) (rho 26206) (rho 26211) next := by
  exact ⟨rho 26212, rho 26213, rho 26214, rho 26215, rho 26216, r6890, r6891, r6892, r6893, r6894, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

