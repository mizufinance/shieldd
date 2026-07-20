import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg13_scp_node21_seg0 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7937 : Seg13.relationRow7937 rho)
    (r7938 : Seg13.relationRow7938 rho)
    (r7939 : Seg13.relationRow7939 rho)
    (r7940 : Seg13.relationRow7940 rho)
    (r7941 : Seg13.relationRow7941 rho)
    (tail : next (rho 32) (rho 33) (rho 15055) (rho 15056) (rho 15057) (rho 15058) (rho 15059) (rho 15064)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg0 (rho 31) (rho 32) (rho 33) (rho 15054) (rho 15055) (rho 15056) (rho 15057) (rho 15058) (rho 15059) next := by
  exact ⟨rho 15060, rho 15061, rho 15062, rho 15063, rho 15064, r7937, r7938, r7939, r7940, r7941, tail⟩

theorem seg13_scp_node21_seg1 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7942 : Seg13.relationRow7942 rho)
    (r7943 : Seg13.relationRow7943 rho)
    (r7944 : Seg13.relationRow7944 rho)
    (r7945 : Seg13.relationRow7945 rho)
    (r7946 : Seg13.relationRow7946 rho)
    (tail : next (rho 32) (rho 33) (rho 15057) (rho 15058) (rho 15059) (rho 15064) (rho 15069)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg1 (rho 32) (rho 33) (rho 15055) (rho 15056) (rho 15057) (rho 15058) (rho 15059) (rho 15064) next := by
  exact ⟨rho 15065, rho 15066, rho 15067, rho 15068, rho 15069, r7942, r7943, r7944, r7945, r7946, tail⟩

theorem seg13_scp_node21_seg2 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7947 : Seg13.relationRow7947 rho)
    (r7948 : Seg13.relationRow7948 rho)
    (r7949 : Seg13.relationRow7949 rho)
    (r7950 : Seg13.relationRow7950 rho)
    (r7951 : Seg13.relationRow7951 rho)
    (tail : next (rho 33) (rho 15059) (rho 15064) (rho 15069) (rho 15074)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg2 (rho 32) (rho 33) (rho 15057) (rho 15058) (rho 15059) (rho 15064) (rho 15069) next := by
  exact ⟨rho 15070, rho 15071, rho 15072, rho 15073, rho 15074, r7947, r7948, r7949, r7950, r7951, tail⟩

theorem seg13_scp_node21_seg3 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7952 : Seg13.relationRow7952 rho)
    (r7953 : Seg13.relationRow7953 rho)
    (r7954 : Seg13.relationRow7954 rho)
    (r7955 : Seg13.relationRow7955 rho)
    (r7956 : Seg13.relationRow7956 rho)
    (tail : next (rho 15064) (rho 15069) (rho 15074) (rho 15079)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg3 (rho 33) (rho 15059) (rho 15064) (rho 15069) (rho 15074) next := by
  exact ⟨rho 15075, rho 15076, rho 15077, rho 15078, rho 15079, r7952, r7953, r7954, r7955, r7956, tail⟩

theorem seg13_scp_node21_seg4 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7957 : Seg13.relationRow7957 rho)
    (r7958 : Seg13.relationRow7958 rho)
    (r7959 : Seg13.relationRow7959 rho)
    (r7960 : Seg13.relationRow7960 rho)
    (r7961 : Seg13.relationRow7961 rho)
    (tail : next (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg4 (rho 15064) (rho 15069) (rho 15074) (rho 15079) next := by
  exact ⟨rho 15080, rho 15081, rho 15082, rho 15083, rho 15084, r7957, r7958, r7959, r7960, r7961, tail⟩

theorem seg13_scp_node21_seg5 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7962 : Seg13.relationRow7962 rho)
    (r7963 : Seg13.relationRow7963 rho)
    (r7964 : Seg13.relationRow7964 rho)
    (r7965 : Seg13.relationRow7965 rho)
    (r7966 : Seg13.relationRow7966 rho)
    (tail : next (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) (rho 15089)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg5 (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) next := by
  exact ⟨rho 15085, rho 15086, rho 15087, rho 15088, rho 15089, r7962, r7963, r7964, r7965, r7966, tail⟩

theorem seg13_scp_node21_seg6 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7967 : Seg13.relationRow7967 rho)
    (r7968 : Seg13.relationRow7968 rho)
    (r7969 : Seg13.relationRow7969 rho)
    (r7970 : Seg13.relationRow7970 rho)
    (r7971 : Seg13.relationRow7971 rho)
    (tail : next (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) (rho 15089) (rho 15094)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg6 (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) (rho 15089) next := by
  exact ⟨rho 15090, rho 15091, rho 15092, rho 15093, rho 15094, r7967, r7968, r7969, r7970, r7971, tail⟩

theorem seg13_scp_node21_seg7 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7972 : Seg13.relationRow7972 rho)
    (r7973 : Seg13.relationRow7973 rho)
    (r7974 : Seg13.relationRow7974 rho)
    (r7975 : Seg13.relationRow7975 rho)
    (r7976 : Seg13.relationRow7976 rho)
    (tail : next (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) (rho 15089) (rho 15094) (rho 15099)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg7 (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) (rho 15089) (rho 15094) next := by
  exact ⟨rho 15095, rho 15096, rho 15097, rho 15098, rho 15099, r7972, r7973, r7974, r7975, r7976, tail⟩

theorem seg13_scp_node21_seg8 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7977 : Seg13.relationRow7977 rho)
    (r7978 : Seg13.relationRow7978 rho)
    (r7979 : Seg13.relationRow7979 rho)
    (r7980 : Seg13.relationRow7980 rho)
    (r7981 : Seg13.relationRow7981 rho)
    (tail : next (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg8 (rho 15064) (rho 15069) (rho 15074) (rho 15079) (rho 15084) (rho 15089) (rho 15094) (rho 15099) next := by
  exact ⟨rho 15100, rho 15101, rho 15102, rho 15103, rho 15104, r7977, r7978, r7979, r7980, r7981, tail⟩

theorem seg13_scp_node21_seg9 (rho : Nat -> Seg13.F)
    (next : Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Seg13.F → Prop)
    (r7982 : Seg13.relationRow7982 rho)
    (r7983 : Seg13.relationRow7983 rho)
    (r7984 : Seg13.relationRow7984 rho)
    (r7985 : Seg13.relationRow7985 rho)
    (r7986 : Seg13.relationRow7986 rho)
    (tail : next (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) (rho 15109)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg9 (rho 15084) (rho 15089) (rho 15094) (rho 15099) (rho 15104) next := by
  exact ⟨rho 15105, rho 15106, rho 15107, rho 15108, rho 15109, r7982, r7983, r7984, r7985, r7986, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

