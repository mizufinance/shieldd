import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0ScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node18_seg10 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6895 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6895 rho)
    (r6896 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6896 rho)
    (r6897 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6897 rho)
    (r6898 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6898 rho)
    (r6899 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6899 rho)
    (tail : next (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg10 (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) next := by
  exact ⟨rho 6884, rho 6885, rho 6886, rho 6887, rho 6888, r6895, r6896, r6897, r6898, r6899, tail⟩

theorem template_scp_node18_seg11 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6900 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6900 rho)
    (r6901 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6901 rho)
    (r6902 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6902 rho)
    (r6903 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6903 rho)
    (r6904 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6904 rho)
    (tail : next (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg11 (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) next := by
  exact ⟨rho 6889, rho 6890, rho 6891, rho 6892, rho 6893, r6900, r6901, r6902, r6903, r6904, tail⟩

theorem template_scp_node18_seg12 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6905 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6905 rho)
    (r6906 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6906 rho)
    (r6907 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6907 rho)
    (r6908 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6908 rho)
    (r6909 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6909 rho)
    (tail : next (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg12 (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) next := by
  exact ⟨rho 6894, rho 6895, rho 6896, rho 6897, rho 6898, r6905, r6906, r6907, r6908, r6909, tail⟩

theorem template_scp_node18_seg13 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6910 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6910 rho)
    (r6911 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6911 rho)
    (r6912 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6912 rho)
    (r6913 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6913 rho)
    (r6914 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6914 rho)
    (tail : next (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg13 (rho 6858) (rho 6863) (rho 6868) (rho 6873) (rho 6878) (rho 6883) (rho 6888) (rho 6893) (rho 6898) next := by
  exact ⟨rho 6899, rho 6900, rho 6901, rho 6902, rho 6903, r6910, r6911, r6912, r6913, r6914, tail⟩

theorem template_scp_node18_seg14 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6915 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6915 rho)
    (r6916 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6916 rho)
    (r6917 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6917 rho)
    (r6918 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6918 rho)
    (r6919 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6919 rho)
    (tail : next (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg14 (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) next := by
  exact ⟨rho 6904, rho 6905, rho 6906, rho 6907, rho 6908, r6915, r6916, r6917, r6918, r6919, tail⟩

theorem template_scp_node18_template (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6920 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6920 rho)
    (r6921 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6921 rho)
    (r6922 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6922 rho)
    (r6923 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6923 rho)
    (r6924 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6924 rho)
    (tail : next (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg15 (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) next := by
  exact ⟨rho 6909, rho 6910, rho 6911, rho 6912, rho 6913, r6920, r6921, r6922, r6923, r6924, tail⟩

theorem template_scp_node18_seg16 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6925 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6925 rho)
    (r6926 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6926 rho)
    (r6927 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6927 rho)
    (r6928 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6928 rho)
    (r6929 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6929 rho)
    (tail : next (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg16 (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) next := by
  exact ⟨rho 6914, rho 6915, rho 6916, rho 6917, rho 6918, r6925, r6926, r6927, r6928, r6929, tail⟩

theorem template_scp_node18_seg17 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6930 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6930 rho)
    (r6931 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6931 rho)
    (r6932 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6932 rho)
    (r6933 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6933 rho)
    (r6934 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6934 rho)
    (tail : next (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg17 (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) next := by
  exact ⟨rho 6919, rho 6920, rho 6921, rho 6922, rho 6923, r6930, r6931, r6932, r6933, r6934, tail⟩

theorem template_scp_node18_seg18 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r6935 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6935 rho)
    (r6936 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6936 rho)
    (r6937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6937 rho)
    (r6938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6938 rho)
    (r6939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6939 rho)
    (tail : next (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg18 (rho 6883) (rho 6888) (rho 6893) (rho 6898) (rho 6903) (rho 6908) (rho 6913) (rho 6918) (rho 6923) next := by
  exact ⟨rho 6924, rho 6925, rho 6926, rho 6927, rho 6928, r6935, r6936, r6937, r6938, r6939, tail⟩

theorem template_scp_node18_seg19 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r6940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6940 rho)
    (r6941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6941 rho)
    (r6942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6942 rho)
    (r6943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6943 rho)
    (r6944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0.relationRow6944 rho)
    (tail : next (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) (rho 6933)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg19 (rho 6908) (rho 6913) (rho 6918) (rho 6923) (rho 6928) next := by
  exact ⟨rho 6929, rho 6930, rho 6931, rho 6932, rho 6933, r6940, r6941, r6942, r6943, r6944, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0
