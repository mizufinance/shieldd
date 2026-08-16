import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69bScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node21_seg20 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r8037 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8037 rho)
    (r8038 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8038 rho)
    (r8039 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8039 rho)
    (r8040 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8040 rho)
    (r8041 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8041 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg20 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) next := by
  exact ⟨rho 8022, rho 8023, rho 8024, rho 8025, rho 8026, r8037, r8038, r8039, r8040, r8041, tail⟩

theorem template_scp_node21_seg21 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r8042 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8042 rho)
    (r8043 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8043 rho)
    (r8044 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8044 rho)
    (r8045 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8045 rho)
    (r8046 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8046 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg21 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) next := by
  exact ⟨rho 8027, rho 8028, rho 8029, rho 8030, rho 8031, r8042, r8043, r8044, r8045, r8046, tail⟩

theorem template_scp_node21_seg22 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → Prop)
    (r8047 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8047 rho)
    (r8048 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8048 rho)
    (r8049 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8049 rho)
    (r8050 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8050 rho)
    (r8051 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8051 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg22 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) next := by
  exact ⟨rho 8032, rho 8033, rho 8034, rho 8035, rho 8036, r8047, r8048, r8049, r8050, r8051, tail⟩

theorem template_scp_node21_seg23 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → Prop)
    (r8052 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8052 rho)
    (r8053 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8053 rho)
    (r8054 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8054 rho)
    (r8055 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8055 rho)
    (r8056 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8056 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg23 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) next := by
  exact ⟨rho 8037, rho 8038, rho 8039, rho 8040, rho 8041, r8052, r8053, r8054, r8055, r8056, tail⟩

theorem template_scp_node21_seg24 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8057 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8057 rho)
    (r8058 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8058 rho)
    (r8059 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8059 rho)
    (r8060 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8060 rho)
    (r8061 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8061 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg24 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) next := by
  exact ⟨rho 8042, rho 8043, rho 8044, rho 8045, rho 8046, r8057, r8058, r8059, r8060, r8061, tail⟩

theorem template_scp_node21_seg25 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8062 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8062 rho)
    (r8063 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8063 rho)
    (r8064 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8064 rho)
    (r8065 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8065 rho)
    (r8066 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8066 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg25 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) next := by
  exact ⟨rho 8047, rho 8048, rho 8049, rho 8050, rho 8051, r8062, r8063, r8064, r8065, r8066, tail⟩

theorem template_scp_node21_seg26 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8067 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8067 rho)
    (r8068 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8068 rho)
    (r8069 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8069 rho)
    (r8070 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8070 rho)
    (r8071 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8071 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg26 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) next := by
  exact ⟨rho 8052, rho 8053, rho 8054, rho 8055, rho 8056, r8067, r8068, r8069, r8070, r8071, tail⟩

theorem template_scp_node21_seg27 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8072 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8072 rho)
    (r8073 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8073 rho)
    (r8074 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8074 rho)
    (r8075 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8075 rho)
    (r8076 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8076 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg27 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) next := by
  exact ⟨rho 8057, rho 8058, rho 8059, rho 8060, rho 8061, r8072, r8073, r8074, r8075, r8076, tail⟩

theorem template_scp_node21_seg28 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8077 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8077 rho)
    (r8078 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8078 rho)
    (r8079 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8079 rho)
    (r8080 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8080 rho)
    (r8081 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8081 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg28 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) next := by
  exact ⟨rho 8062, rho 8063, rho 8064, rho 8065, rho 8066, r8077, r8078, r8079, r8080, r8081, tail⟩

theorem template_scp_node21_seg29 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → F → Prop)
    (r8082 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8082 rho)
    (r8083 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8083 rho)
    (r8084 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8084 rho)
    (r8085 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8085 rho)
    (r8086 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b.relationRow8086 rho)
    (tail : next (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) (rho 8071)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg29 (rho 7996) (rho 8001) (rho 8006) (rho 8011) (rho 8016) (rho 8021) (rho 8026) (rho 8031) (rho 8036) (rho 8041) (rho 8046) (rho 8051) (rho 8056) (rho 8061) (rho 8066) next := by
  exact ⟨rho 8067, rho 8068, rho 8069, rho 8070, rho 8071, r8082, r8083, r8084, r8085, r8086, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_de54b1d0646cc1ad6f619aa080bfafd4a6edb63989b142c5c0b284d84e09d69b
