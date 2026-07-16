import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode18Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode18.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

theorem template_scp_node18_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    templateScpNode18Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (19 : F))
        (rho 6819 + rho 6820) (rho 6821 + rho 6822 + rho 6823)
        (rho 6821 + rho 6825 + rho 6826) (rho 6824 + rho 6827) := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, p85, p86, p87, p88, p89,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6845, r6846, r6847, r6848, r6849, r6850, r6851, r6852, r6853, r6854, r6855, r6856, r6857, r6858, r6859, r6860, r6861, r6862, r6863, r6864, r6865, r6866, r6867, r6868, r6869, r6870, r6871, r6872, r6873, r6874, r6875, r6876, r6877, r6878, r6879⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart86 at p86
  rcases p86 with ⟨r6880, r6881, r6882, r6883, r6884, r6885, r6886, r6887, r6888, r6889, r6890, r6891, r6892, r6893, r6894, r6895, r6896, r6897, r6898, r6899, r6900, r6901, r6902, r6903, r6904, r6905, r6906, r6907, r6908, r6909, r6910, r6911, r6912, r6913, r6914, r6915, r6916, r6917, r6918, r6919, r6920, r6921, r6922, r6923, r6924, r6925, r6926, r6927, r6928, r6929, r6930, r6931, r6932, r6933, r6934, r6935, r6936, r6937, r6938, r6939, r6940, r6941, r6942, r6943, r6944, r6945, r6946, r6947, r6948, r6949, r6950, r6951, r6952, r6953, r6954, r6955, r6956, r6957, r6958, r6959⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart87 at p87
  rcases p87 with ⟨r6960, r6961, r6962, r6963, r6964, r6965, r6966, r6967, r6968, r6969, r6970, r6971, r6972, r6973, r6974, r6975, r6976, r6977, r6978, r6979, r6980, r6981, r6982, r6983, r6984, r6985, r6986, r6987, r6988, r6989, r6990, r6991, r6992, r6993, r6994, r6995, r6996, r6997, r6998, r6999, r7000, r7001, r7002, r7003, r7004, r7005, r7006, r7007, r7008, r7009, r7010, r7011, r7012, r7013, r7014, r7015, r7016, r7017, r7018, r7019, r7020, r7021, r7022, r7023, r7024, r7025, r7026, r7027, r7028, r7029, r7030, r7031, r7032, r7033, r7034, r7035, r7036, r7037, r7038, r7039⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart88 at p88
  rcases p88 with ⟨r7040, r7041, r7042, r7043, r7044, r7045, r7046, r7047, r7048, r7049, r7050, r7051, r7052, r7053, r7054, r7055, r7056, r7057, r7058, r7059, r7060, r7061, r7062, r7063, r7064, r7065, r7066, r7067, r7068, r7069, r7070, r7071, r7072, r7073, r7074, r7075, r7076, r7077, r7078, r7079, r7080, r7081, r7082, r7083, r7084, r7085, r7086, r7087, r7088, r7089, r7090, r7091, r7092, r7093, r7094, r7095, r7096, r7097, r7098, r7099, r7100, r7101, r7102, r7103, r7104, r7105, r7106, r7107, r7108, r7109, r7110, r7111, r7112, r7113, r7114, r7115, r7116, r7117, r7118, r7119⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart89 at p89
  rcases p89 with ⟨r7120, r7121, r7122, r7123, r7124, r7125, r7126, r7127, r7128, r7129, r7130, r7131, r7132, r7133, r7134, r7135, r7136, r7137, r7138, r7139, r7140, r7141, r7142, r7143, r7144, r7145, r7146, r7147, r7148, r7149, r7150, r7151, r7152, r7153, r7154, r7155, r7156, r7157, r7158, r7159, r7160, r7161, r7162, r7163, r7164, r7165, r7166, r7167, r7168, r7169, r7170, r7171, r7172, r7173, r7174, r7175, r7176, r7177, r7178, r7179, r7180, r7181, r7182, r7183, r7184, r7185, r7186, r7187, r7188, r7189, r7190, r7191, r7192, r7193, r7194, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.relation (rho 6819) (rho 6821) (rho 6824) (rho 6820) (rho 6822) (rho 6823) (rho 6825) (rho 6826) (rho 6827)
      (fun o0 o1 o2 o3 o4 => o0 = rho 7157 ∧ o1 = rho 7162 ∧ o2 = rho 7167 ∧ o3 = rho 7172 ∧ o4 = rho 7177) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.relation
    exact template_scp_node18_seg0 rho _ r6845 r6846 r6847 r6848 r6849 (template_scp_node18_seg1 rho _ r6850 r6851 r6852 r6853 r6854 (template_scp_node18_seg2 rho _ r6855 r6856 r6857 r6858 r6859 (template_scp_node18_seg3 rho _ r6860 r6861 r6862 r6863 r6864 (template_scp_node18_seg4 rho _ r6865 r6866 r6867 r6868 r6869 (template_scp_node18_seg5 rho _ r6870 r6871 r6872 r6873 r6874 (template_scp_node18_seg6 rho _ r6875 r6876 r6877 r6878 r6879 (template_scp_node18_seg7 rho _ r6880 r6881 r6882 r6883 r6884 (template_scp_node18_seg8 rho _ r6885 r6886 r6887 r6888 r6889 (template_scp_node18_seg9 rho _ r6890 r6891 r6892 r6893 r6894 (template_scp_node18_seg10 rho _ r6895 r6896 r6897 r6898 r6899 (template_scp_node18_seg11 rho _ r6900 r6901 r6902 r6903 r6904 (template_scp_node18_seg12 rho _ r6905 r6906 r6907 r6908 r6909 (template_scp_node18_template rho _ r6910 r6911 r6912 r6913 r6914 (template_scp_node18_seg14 rho _ r6915 r6916 r6917 r6918 r6919 (template_scp_node18_seg15 rho _ r6920 r6921 r6922 r6923 r6924 (template_scp_node18_seg16 rho _ r6925 r6926 r6927 r6928 r6929 (template_scp_node18_seg17 rho _ r6930 r6931 r6932 r6933 r6934 (template_scp_node18_seg18 rho _ r6935 r6936 r6937 r6938 r6939 (template_scp_node18_seg19 rho _ r6940 r6941 r6942 r6943 r6944 (template_scp_node18_seg20 rho _ r6945 r6946 r6947 r6948 r6949 (template_scp_node18_seg21 rho _ r6950 r6951 r6952 r6953 r6954 (template_scp_node18_seg22 rho _ r6955 r6956 r6957 r6958 r6959 (template_scp_node18_seg23 rho _ r6960 r6961 r6962 r6963 r6964 (template_scp_node18_seg24 rho _ r6965 r6966 r6967 r6968 r6969 (template_scp_node18_seg25 rho _ r6970 r6971 r6972 r6973 r6974 (template_scp_node18_seg26 rho _ r6975 r6976 r6977 r6978 r6979 (template_scp_node18_seg27 rho _ r6980 r6981 r6982 r6983 r6984 (template_scp_node18_seg28 rho _ r6985 r6986 r6987 r6988 r6989 (template_scp_node18_seg29 rho _ r6990 r6991 r6992 r6993 r6994 (template_scp_node18_seg30 rho _ r6995 r6996 r6997 r6998 r6999 (template_scp_node18_seg31 rho _ r7000 r7001 r7002 r7003 r7004 (template_scp_node18_seg32 rho _ r7005 r7006 r7007 r7008 r7009 (template_scp_node18_seg33 rho _ r7010 r7011 r7012 r7013 r7014 (template_scp_node18_seg34 rho _ r7015 r7016 r7017 r7018 r7019 (template_scp_node18_seg35 rho _ r7020 r7021 r7022 r7023 r7024 (template_scp_node18_seg36 rho _ r7025 r7026 r7027 r7028 r7029 (template_scp_node18_seg37 rho _ r7030 r7031 r7032 r7033 r7034 (template_scp_node18_seg38 rho _ r7035 r7036 r7037 r7038 r7039 (template_scp_node18_seg39 rho _ r7040 r7041 r7042 r7043 r7044 (template_scp_node18_seg40 rho _ r7045 r7046 r7047 r7048 r7049 (template_scp_node18_seg41 rho _ r7050 r7051 r7052 r7053 r7054 (template_scp_node18_seg42 rho _ r7055 r7056 r7057 r7058 r7059 (template_scp_node18_seg43 rho _ r7060 r7061 r7062 r7063 r7064 (template_scp_node18_seg44 rho _ r7065 r7066 r7067 r7068 r7069 (template_scp_node18_seg45 rho _ r7070 r7071 r7072 r7073 r7074 (template_scp_node18_seg46 rho _ r7075 r7076 r7077 r7078 r7079 (template_scp_node18_seg47 rho _ r7080 r7081 r7082 r7083 r7084 (template_scp_node18_seg48 rho _ r7085 r7086 r7087 r7088 r7089 (template_scp_node18_seg49 rho _ r7090 r7091 r7092 r7093 r7094 (template_scp_node18_seg50 rho _ r7095 r7096 r7097 r7098 r7099 (template_scp_node18_seg51 rho _ r7100 r7101 r7102 r7103 r7104 (template_scp_node18_seg52 rho _ r7105 r7106 r7107 r7108 r7109 (template_scp_node18_seg53 rho _ r7110 r7111 r7112 r7113 r7114 (template_scp_node18_seg54 rho _ r7115 r7116 r7117 r7118 r7119 (template_scp_node18_seg55 rho _ r7120 r7121 r7122 r7123 r7124 (template_scp_node18_seg56 rho _ r7125 r7126 r7127 r7128 r7129 (template_scp_node18_seg57 rho _ r7130 r7131 r7132 r7133 r7134 (template_scp_node18_seg58 rho _ r7135 r7136 r7137 r7138 r7139 (template_scp_node18_seg59 rho _ r7140 r7141 r7142 r7143 r7144 (template_scp_node18_seg60 rho _ r7145 r7146 r7147 r7148 r7149 (template_scp_node18_seg61 rho _ r7150 r7151 r7152 r7153 r7154 (template_scp_node18_seg62 rho _ r7155 r7156 r7157 r7158 r7159 (template_scp_node18_seg63 rho _ r7160 r7161 r7162 r7163 r7164 (template_scp_node18_seg64 rho _ r7165 r7166 r7167 r7168 r7169 (template_scp_node18_seg65 rho _ r7170 r7171 r7172 r7173 r7174 (template_scp_node18_seg66 rho _ r7175 r7176 r7177 r7178 r7179 (template_scp_node18_seg67 rho _ r7180 r7181 r7182 r7183 r7184 (template_scp_node18_seg68 rho _ r7185 r7186 r7187 r7188 r7189 (template_scp_node18_seg69 rho _ r7190 r7191 r7192 r7193 r7194 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.relation_sound_permSpec (rho 6819) (rho 6821) (rho 6824) (rho 6820) (rho 6822) (rho 6823) (rho 6825) (rho 6826) (rho 6827) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.tctNode19DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.F) + (19 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [templateScpNode18Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

