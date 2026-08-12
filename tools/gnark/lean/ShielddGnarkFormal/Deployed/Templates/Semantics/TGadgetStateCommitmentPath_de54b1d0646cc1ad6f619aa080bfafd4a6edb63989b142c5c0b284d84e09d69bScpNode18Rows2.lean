import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node18_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r6945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6945 rho)
    (r6946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6946 rho)
    (r6947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6947 rho)
    (r6948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6948 rho)
    (r6949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6949 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg20 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) next := by
  exact ⟨rho 6933, rho 6934, rho 6935, rho 6936, rho 6937, r6945, r6946, r6947, r6948, r6949, tail⟩

theorem template_scp_node18_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r6950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6950 rho)
    (r6951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6951 rho)
    (r6952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6952 rho)
    (r6953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6953 rho)
    (r6954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6954 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg21 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) next := by
  exact ⟨rho 6938, rho 6939, rho 6940, rho 6941, rho 6942, r6950, r6951, r6952, r6953, r6954, tail⟩

theorem template_scp_node18_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r6955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6955 rho)
    (r6956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6956 rho)
    (r6957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6957 rho)
    (r6958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6958 rho)
    (r6959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6959 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg22 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) next := by
  exact ⟨rho 6943, rho 6944, rho 6945, rho 6946, rho 6947, r6955, r6956, r6957, r6958, r6959, tail⟩

theorem template_scp_node18_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r6960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6960 rho)
    (r6961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6961 rho)
    (r6962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6962 rho)
    (r6963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6963 rho)
    (r6964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6964 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg23 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) next := by
  exact ⟨rho 6948, rho 6949, rho 6950, rho 6951, rho 6952, r6960, r6961, r6962, r6963, r6964, tail⟩

theorem template_scp_node18_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6965 rho)
    (r6966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6966 rho)
    (r6967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6967 rho)
    (r6968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6968 rho)
    (r6969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6969 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg24 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) next := by
  exact ⟨rho 6953, rho 6954, rho 6955, rho 6956, rho 6957, r6965, r6966, r6967, r6968, r6969, tail⟩

theorem template_scp_node18_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6970 rho)
    (r6971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6971 rho)
    (r6972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6972 rho)
    (r6973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6973 rho)
    (r6974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6974 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg25 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) next := by
  exact ⟨rho 6958, rho 6959, rho 6960, rho 6961, rho 6962, r6970, r6971, r6972, r6973, r6974, tail⟩

theorem template_scp_node18_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6975 rho)
    (r6976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6976 rho)
    (r6977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6977 rho)
    (r6978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6978 rho)
    (r6979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6979 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg26 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) next := by
  exact ⟨rho 6963, rho 6964, rho 6965, rho 6966, rho 6967, r6975, r6976, r6977, r6978, r6979, tail⟩

theorem template_scp_node18_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6980 rho)
    (r6981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6981 rho)
    (r6982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6982 rho)
    (r6983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6983 rho)
    (r6984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6984 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967) (rho 6972)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg27 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967) next := by
  exact ⟨rho 6968, rho 6969, rho 6970, rho 6971, rho 6972, r6980, r6981, r6982, r6983, r6984, tail⟩

theorem template_scp_node18_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6985 rho)
    (r6986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6986 rho)
    (r6987 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6987 rho)
    (r6988 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6988 rho)
    (r6989 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6989 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967) (rho 6972) (rho 6977)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg28 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967) (rho 6972) next := by
  exact ⟨rho 6973, rho 6974, rho 6975, rho 6976, rho 6977, r6985, r6986, r6987, r6988, r6989, tail⟩

theorem template_scp_node18_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r6990 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6990 rho)
    (r6991 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6991 rho)
    (r6992 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6992 rho)
    (r6993 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6993 rho)
    (r6994 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow6994 rho)
    (tail : next (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967) (rho 6972) (rho 6977) (rho 6982)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_67677e.seg29 (rho 6907) (rho 6912) (rho 6917) (rho 6922) (rho 6927) (rho 6932) (rho 6937) (rho 6942) (rho 6947) (rho 6952) (rho 6957) (rho 6962) (rho 6967) (rho 6972) (rho 6977) next := by
  exact ⟨rho 6978, rho 6979, rho 6980, rho 6981, rho 6982, r6990, r6991, r6992, r6993, r6994, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
