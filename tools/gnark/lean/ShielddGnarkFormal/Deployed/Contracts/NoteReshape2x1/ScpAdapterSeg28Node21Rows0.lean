import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.ScpAdapterSeg28Base
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

theorem seg28_scp_node21_seg0 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7937 : Seg28.relationRow7937 rho)
    (r7938 : Seg28.relationRow7938 rho)
    (r7939 : Seg28.relationRow7939 rho)
    (r7940 : Seg28.relationRow7940 rho)
    (r7941 : Seg28.relationRow7941 rho)
    (tail : next (rho 119) (rho 120) (rho 27236) (rho 27237) (rho 27238) (rho 27239) (rho 27240) (rho 27245)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg0 (rho 118) (rho 119) (rho 120) (rho 27235) (rho 27236) (rho 27237) (rho 27238) (rho 27239) (rho 27240) next := by
  exact ⟨rho 27241, rho 27242, rho 27243, rho 27244, rho 27245, r7937, r7938, r7939, r7940, r7941, tail⟩

theorem seg28_scp_node21_seg1 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7942 : Seg28.relationRow7942 rho)
    (r7943 : Seg28.relationRow7943 rho)
    (r7944 : Seg28.relationRow7944 rho)
    (r7945 : Seg28.relationRow7945 rho)
    (r7946 : Seg28.relationRow7946 rho)
    (tail : next (rho 119) (rho 120) (rho 27238) (rho 27239) (rho 27240) (rho 27245) (rho 27250)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg1 (rho 119) (rho 120) (rho 27236) (rho 27237) (rho 27238) (rho 27239) (rho 27240) (rho 27245) next := by
  exact ⟨rho 27246, rho 27247, rho 27248, rho 27249, rho 27250, r7942, r7943, r7944, r7945, r7946, tail⟩

theorem seg28_scp_node21_seg2 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7947 : Seg28.relationRow7947 rho)
    (r7948 : Seg28.relationRow7948 rho)
    (r7949 : Seg28.relationRow7949 rho)
    (r7950 : Seg28.relationRow7950 rho)
    (r7951 : Seg28.relationRow7951 rho)
    (tail : next (rho 120) (rho 27240) (rho 27245) (rho 27250) (rho 27255)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg2 (rho 119) (rho 120) (rho 27238) (rho 27239) (rho 27240) (rho 27245) (rho 27250) next := by
  exact ⟨rho 27251, rho 27252, rho 27253, rho 27254, rho 27255, r7947, r7948, r7949, r7950, r7951, tail⟩

theorem seg28_scp_node21_seg3 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7952 : Seg28.relationRow7952 rho)
    (r7953 : Seg28.relationRow7953 rho)
    (r7954 : Seg28.relationRow7954 rho)
    (r7955 : Seg28.relationRow7955 rho)
    (r7956 : Seg28.relationRow7956 rho)
    (tail : next (rho 27245) (rho 27250) (rho 27255) (rho 27260)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg3 (rho 120) (rho 27240) (rho 27245) (rho 27250) (rho 27255) next := by
  exact ⟨rho 27256, rho 27257, rho 27258, rho 27259, rho 27260, r7952, r7953, r7954, r7955, r7956, tail⟩

theorem seg28_scp_node21_seg4 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7957 : Seg28.relationRow7957 rho)
    (r7958 : Seg28.relationRow7958 rho)
    (r7959 : Seg28.relationRow7959 rho)
    (r7960 : Seg28.relationRow7960 rho)
    (r7961 : Seg28.relationRow7961 rho)
    (tail : next (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg4 (rho 27245) (rho 27250) (rho 27255) (rho 27260) next := by
  exact ⟨rho 27261, rho 27262, rho 27263, rho 27264, rho 27265, r7957, r7958, r7959, r7960, r7961, tail⟩

theorem seg28_scp_node21_seg5 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7962 : Seg28.relationRow7962 rho)
    (r7963 : Seg28.relationRow7963 rho)
    (r7964 : Seg28.relationRow7964 rho)
    (r7965 : Seg28.relationRow7965 rho)
    (r7966 : Seg28.relationRow7966 rho)
    (tail : next (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) (rho 27270)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg5 (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) next := by
  exact ⟨rho 27266, rho 27267, rho 27268, rho 27269, rho 27270, r7962, r7963, r7964, r7965, r7966, tail⟩

theorem seg28_scp_node21_seg6 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7967 : Seg28.relationRow7967 rho)
    (r7968 : Seg28.relationRow7968 rho)
    (r7969 : Seg28.relationRow7969 rho)
    (r7970 : Seg28.relationRow7970 rho)
    (r7971 : Seg28.relationRow7971 rho)
    (tail : next (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) (rho 27270) (rho 27275)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg6 (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) (rho 27270) next := by
  exact ⟨rho 27271, rho 27272, rho 27273, rho 27274, rho 27275, r7967, r7968, r7969, r7970, r7971, tail⟩

theorem seg28_scp_node21_seg7 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7972 : Seg28.relationRow7972 rho)
    (r7973 : Seg28.relationRow7973 rho)
    (r7974 : Seg28.relationRow7974 rho)
    (r7975 : Seg28.relationRow7975 rho)
    (r7976 : Seg28.relationRow7976 rho)
    (tail : next (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) (rho 27270) (rho 27275) (rho 27280)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg7 (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) (rho 27270) (rho 27275) next := by
  exact ⟨rho 27276, rho 27277, rho 27278, rho 27279, rho 27280, r7972, r7973, r7974, r7975, r7976, tail⟩

theorem seg28_scp_node21_seg8 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7977 : Seg28.relationRow7977 rho)
    (r7978 : Seg28.relationRow7978 rho)
    (r7979 : Seg28.relationRow7979 rho)
    (r7980 : Seg28.relationRow7980 rho)
    (r7981 : Seg28.relationRow7981 rho)
    (tail : next (rho 27265) (rho 27270) (rho 27275) (rho 27280) (rho 27285)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg8 (rho 27245) (rho 27250) (rho 27255) (rho 27260) (rho 27265) (rho 27270) (rho 27275) (rho 27280) next := by
  exact ⟨rho 27281, rho 27282, rho 27283, rho 27284, rho 27285, r7977, r7978, r7979, r7980, r7981, tail⟩

theorem seg28_scp_node21_seg9 (rho : Nat -> Seg28.F)
    (next : Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Seg28.F → Prop)
    (r7982 : Seg28.relationRow7982 rho)
    (r7983 : Seg28.relationRow7983 rho)
    (r7984 : Seg28.relationRow7984 rho)
    (r7985 : Seg28.relationRow7985 rho)
    (r7986 : Seg28.relationRow7986 rho)
    (tail : next (rho 27265) (rho 27270) (rho 27275) (rho 27280) (rho 27285) (rho 27290)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.seg9 (rho 27265) (rho 27270) (rho 27275) (rho 27280) (rho 27285) next := by
  exact ⟨rho 27286, rho 27287, rho 27288, rho 27289, rho 27290, r7982, r7983, r7984, r7985, r7986, tail⟩


end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

