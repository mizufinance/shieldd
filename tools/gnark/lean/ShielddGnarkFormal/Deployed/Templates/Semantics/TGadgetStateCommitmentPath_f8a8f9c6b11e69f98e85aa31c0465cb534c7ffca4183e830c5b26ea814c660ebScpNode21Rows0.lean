import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node21_seg0 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7937 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7937 rho)
    (r7938 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7938 rho)
    (r7939 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7939 rho)
    (r7940 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7940 rho)
    (r7941 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7941 rho)
    (tail : next (rho 7910) (rho 7913) (rho 7911) (rho 7912) (rho 7914) (rho 7915) (rho 7916) (rho 7921)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg0 (rho 7908) (rho 7910) (rho 7913) (rho 7909) (rho 7911) (rho 7912) (rho 7914) (rho 7915) (rho 7916) next := by
  exact ⟨rho 7917, rho 7918, rho 7919, rho 7920, rho 7921, r7937, r7938, r7939, r7940, r7941, tail⟩

theorem template_scp_node21_seg1 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7942 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7942 rho)
    (r7943 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7943 rho)
    (r7944 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7944 rho)
    (r7945 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7945 rho)
    (r7946 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7946 rho)
    (tail : next (rho 7910) (rho 7913) (rho 7914) (rho 7915) (rho 7916) (rho 7921) (rho 7926)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg1 (rho 7910) (rho 7913) (rho 7911) (rho 7912) (rho 7914) (rho 7915) (rho 7916) (rho 7921) next := by
  exact ⟨rho 7922, rho 7923, rho 7924, rho 7925, rho 7926, r7942, r7943, r7944, r7945, r7946, tail⟩

theorem template_scp_node21_seg2 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7947 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7947 rho)
    (r7948 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7948 rho)
    (r7949 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7949 rho)
    (r7950 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7950 rho)
    (r7951 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7951 rho)
    (tail : next (rho 7913) (rho 7916) (rho 7921) (rho 7926) (rho 7931)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg2 (rho 7910) (rho 7913) (rho 7914) (rho 7915) (rho 7916) (rho 7921) (rho 7926) next := by
  exact ⟨rho 7927, rho 7928, rho 7929, rho 7930, rho 7931, r7947, r7948, r7949, r7950, r7951, tail⟩

theorem template_scp_node21_seg3 (rho : Nat -> F)
    (next : F → F → F → F → Prop)
    (r7952 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7952 rho)
    (r7953 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7953 rho)
    (r7954 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7954 rho)
    (r7955 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7955 rho)
    (r7956 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7956 rho)
    (tail : next (rho 7921) (rho 7926) (rho 7931) (rho 7936)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg3 (rho 7913) (rho 7916) (rho 7921) (rho 7926) (rho 7931) next := by
  exact ⟨rho 7932, rho 7933, rho 7934, rho 7935, rho 7936, r7952, r7953, r7954, r7955, r7956, tail⟩

theorem template_scp_node21_seg4 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7957 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7957 rho)
    (r7958 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7958 rho)
    (r7959 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7959 rho)
    (r7960 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7960 rho)
    (r7961 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7961 rho)
    (tail : next (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg4 (rho 7921) (rho 7926) (rho 7931) (rho 7936) next := by
  exact ⟨rho 7937, rho 7938, rho 7939, rho 7940, rho 7941, r7957, r7958, r7959, r7960, r7961, tail⟩

theorem template_scp_node21_seg5 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7962 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7962 rho)
    (r7963 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7963 rho)
    (r7964 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7964 rho)
    (r7965 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7965 rho)
    (r7966 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7966 rho)
    (tail : next (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) (rho 7946)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg5 (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) next := by
  exact ⟨rho 7942, rho 7943, rho 7944, rho 7945, rho 7946, r7962, r7963, r7964, r7965, r7966, tail⟩

theorem template_scp_node21_seg6 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → Prop)
    (r7967 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7967 rho)
    (r7968 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7968 rho)
    (r7969 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7969 rho)
    (r7970 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7970 rho)
    (r7971 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7971 rho)
    (tail : next (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) (rho 7946) (rho 7951)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg6 (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) (rho 7946) next := by
  exact ⟨rho 7947, rho 7948, rho 7949, rho 7950, rho 7951, r7967, r7968, r7969, r7970, r7971, tail⟩

theorem template_scp_node21_seg7 (rho : Nat -> F)
    (next : F → F → F → F → F → F → F → F → Prop)
    (r7972 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7972 rho)
    (r7973 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7973 rho)
    (r7974 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7974 rho)
    (r7975 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7975 rho)
    (r7976 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7976 rho)
    (tail : next (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) (rho 7946) (rho 7951) (rho 7956)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg7 (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) (rho 7946) (rho 7951) next := by
  exact ⟨rho 7952, rho 7953, rho 7954, rho 7955, rho 7956, r7972, r7973, r7974, r7975, r7976, tail⟩

theorem template_scp_node21_seg8 (rho : Nat -> F)
    (next : F → F → F → F → F → Prop)
    (r7977 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7977 rho)
    (r7978 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7978 rho)
    (r7979 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7979 rho)
    (r7980 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7980 rho)
    (r7981 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7981 rho)
    (tail : next (rho 7941) (rho 7946) (rho 7951) (rho 7956) (rho 7961)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg8 (rho 7921) (rho 7926) (rho 7931) (rho 7936) (rho 7941) (rho 7946) (rho 7951) (rho 7956) next := by
  exact ⟨rho 7957, rho 7958, rho 7959, rho 7960, rho 7961, r7977, r7978, r7979, r7980, r7981, tail⟩

theorem template_scp_node21_seg9 (rho : Nat -> F)
    (next : F → F → F → F → F → F → Prop)
    (r7982 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7982 rho)
    (r7983 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7983 rho)
    (r7984 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7984 rho)
    (r7985 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7985 rho)
    (r7986 : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationRow7986 rho)
    (tail : next (rho 7941) (rho 7946) (rho 7951) (rho 7956) (rho 7961) (rho 7966)) :
    Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg9 (rho 7941) (rho 7946) (rho 7951) (rho 7956) (rho 7961) next := by
  exact ⟨rho 7962, rho 7963, rho 7964, rho 7965, rho 7966, r7982, r7983, r7984, r7985, r7986, tail⟩


end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

