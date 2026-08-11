import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpBase
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows0
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows1
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows2
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows3
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows4
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows5
import ShielddGnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660ebScpNode21Rows6
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode21.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.ProjectionChoiceFree

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

theorem template_scp_node21_eq (rho : Nat -> F) (h : Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relation rho) :
    seg15ScpNode21Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : F) + (22 : F))
        (rho 7908 + rho 7909) (rho 7910 + rho 7911 + rho 7912)
        (rho 7910 + rho 7914 + rho 7915) (rho 7913 + rho 7916) := by
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
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, p99,
    p100, p101, p102, p103, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart99 at p99
  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7937, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953, r7954, r7955, r7956, r7957, r7958, r7959, r7960, r7961, r7962, r7963, r7964, r7965, r7966, r7967, r7968, r7969, r7970, r7971, r7972, r7973, r7974, r7975, r7976, r7977, r7978, r7979, r7980, r7981, r7982, r7983, r7984, r7985, r7986, r7987, r7988, r7989, r7990, r7991, r7992, r7993, r7994, r7995, r7996, r7997, r7998, r7999⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart100 at p100
  rcases p100 with ⟨r8000, r8001, r8002, r8003, r8004, r8005, r8006, r8007, r8008, r8009, r8010, r8011, r8012, r8013, r8014, r8015, r8016, r8017, r8018, r8019, r8020, r8021, r8022, r8023, r8024, r8025, r8026, r8027, r8028, r8029, r8030, r8031, r8032, r8033, r8034, r8035, r8036, r8037, r8038, r8039, r8040, r8041, r8042, r8043, r8044, r8045, r8046, r8047, r8048, r8049, r8050, r8051, r8052, r8053, r8054, r8055, r8056, r8057, r8058, r8059, r8060, r8061, r8062, r8063, r8064, r8065, r8066, r8067, r8068, r8069, r8070, r8071, r8072, r8073, r8074, r8075, r8076, r8077, r8078, r8079⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart101 at p101
  rcases p101 with ⟨r8080, r8081, r8082, r8083, r8084, r8085, r8086, r8087, r8088, r8089, r8090, r8091, r8092, r8093, r8094, r8095, r8096, r8097, r8098, r8099, r8100, r8101, r8102, r8103, r8104, r8105, r8106, r8107, r8108, r8109, r8110, r8111, r8112, r8113, r8114, r8115, r8116, r8117, r8118, r8119, r8120, r8121, r8122, r8123, r8124, r8125, r8126, r8127, r8128, r8129, r8130, r8131, r8132, r8133, r8134, r8135, r8136, r8137, r8138, r8139, r8140, r8141, r8142, r8143, r8144, r8145, r8146, r8147, r8148, r8149, r8150, r8151, r8152, r8153, r8154, r8155, r8156, r8157, r8158, r8159⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart102 at p102
  rcases p102 with ⟨r8160, r8161, r8162, r8163, r8164, r8165, r8166, r8167, r8168, r8169, r8170, r8171, r8172, r8173, r8174, r8175, r8176, r8177, r8178, r8179, r8180, r8181, r8182, r8183, r8184, r8185, r8186, r8187, r8188, r8189, r8190, r8191, r8192, r8193, r8194, r8195, r8196, r8197, r8198, r8199, r8200, r8201, r8202, r8203, r8204, r8205, r8206, r8207, r8208, r8209, r8210, r8211, r8212, r8213, r8214, r8215, r8216, r8217, r8218, r8219, r8220, r8221, r8222, r8223, r8224, r8225, r8226, r8227, r8228, r8229, r8230, r8231, r8232, r8233, r8234, r8235, r8236, r8237, r8238, r8239⟩
  unfold Shieldd.GnarkFormal.Deployed.Templates.Relations.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb.relationPart103 at p103
  rcases p103 with ⟨r8240, r8241, r8242, r8243, r8244, r8245, r8246, r8247, r8248, r8249, r8250, r8251, r8252, r8253, r8254, r8255, r8256, r8257, r8258, r8259, r8260, r8261, r8262, r8263, r8264, r8265, r8266, r8267, r8268, r8269, r8270, r8271, r8272, r8273, r8274, r8275, r8276, r8277, r8278, r8279, r8280, r8281, r8282, r8283, r8284, r8285, r8286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.relation (rho 7908) (rho 7910) (rho 7913) (rho 7909) (rho 7911) (rho 7912) (rho 7914) (rho 7915) (rho 7916)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8246 ∧ o1 = rho 8251 ∧ o2 = rho 8256 ∧ o3 = rho 8261 ∧ o4 = rho 8266) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_7532a8.relation
    exact template_scp_node21_seg0 rho _ r7937 r7938 r7939 r7940 r7941 (template_scp_node21_seg1 rho _ r7942 r7943 r7944 r7945 r7946 (template_scp_node21_seg2 rho _ r7947 r7948 r7949 r7950 r7951 (template_scp_node21_seg3 rho _ r7952 r7953 r7954 r7955 r7956 (template_scp_node21_seg4 rho _ r7957 r7958 r7959 r7960 r7961 (template_scp_node21_seg5 rho _ r7962 r7963 r7964 r7965 r7966 (template_scp_node21_seg6 rho _ r7967 r7968 r7969 r7970 r7971 (template_scp_node21_seg7 rho _ r7972 r7973 r7974 r7975 r7976 (template_scp_node21_seg8 rho _ r7977 r7978 r7979 r7980 r7981 (template_scp_node21_seg9 rho _ r7982 r7983 r7984 r7985 r7986 (template_scp_node21_seg10 rho _ r7987 r7988 r7989 r7990 r7991 (template_scp_node21_seg11 rho _ r7992 r7993 r7994 r7995 r7996 (template_scp_node21_seg12 rho _ r7997 r7998 r7999 r8000 r8001 (template_scp_node21_seg13 rho _ r8002 r8003 r8004 r8005 r8006 (template_scp_node21_seg14 rho _ r8007 r8008 r8009 r8010 r8011 (template_scp_node21_template rho _ r8012 r8013 r8014 r8015 r8016 (template_scp_node21_seg16 rho _ r8017 r8018 r8019 r8020 r8021 (template_scp_node21_seg17 rho _ r8022 r8023 r8024 r8025 r8026 (template_scp_node21_seg18 rho _ r8027 r8028 r8029 r8030 r8031 (template_scp_node21_seg19 rho _ r8032 r8033 r8034 r8035 r8036 (template_scp_node21_seg20 rho _ r8037 r8038 r8039 r8040 r8041 (template_scp_node21_seg21 rho _ r8042 r8043 r8044 r8045 r8046 (template_scp_node21_seg22 rho _ r8047 r8048 r8049 r8050 r8051 (template_scp_node21_seg23 rho _ r8052 r8053 r8054 r8055 r8056 (template_scp_node21_seg24 rho _ r8057 r8058 r8059 r8060 r8061 (template_scp_node21_seg25 rho _ r8062 r8063 r8064 r8065 r8066 (template_scp_node21_seg26 rho _ r8067 r8068 r8069 r8070 r8071 (template_scp_node21_seg27 rho _ r8072 r8073 r8074 r8075 r8076 (template_scp_node21_seg28 rho _ r8077 r8078 r8079 r8080 r8081 (template_scp_node21_seg29 rho _ r8082 r8083 r8084 r8085 r8086 (template_scp_node21_seg30 rho _ r8087 r8088 r8089 r8090 r8091 (template_scp_node21_seg31 rho _ r8092 r8093 r8094 r8095 r8096 (template_scp_node21_seg32 rho _ r8097 r8098 r8099 r8100 r8101 (template_scp_node21_seg33 rho _ r8102 r8103 r8104 r8105 r8106 (template_scp_node21_seg34 rho _ r8107 r8108 r8109 r8110 r8111 (template_scp_node21_seg35 rho _ r8112 r8113 r8114 r8115 r8116 (template_scp_node21_seg36 rho _ r8117 r8118 r8119 r8120 r8121 (template_scp_node21_seg37 rho _ r8122 r8123 r8124 r8125 r8126 (template_scp_node21_seg38 rho _ r8127 r8128 r8129 r8130 r8131 (template_scp_node21_seg39 rho _ r8132 r8133 r8134 r8135 r8136 (template_scp_node21_seg40 rho _ r8137 r8138 r8139 r8140 r8141 (template_scp_node21_seg41 rho _ r8142 r8143 r8144 r8145 r8146 (template_scp_node21_seg42 rho _ r8147 r8148 r8149 r8150 r8151 (template_scp_node21_seg43 rho _ r8152 r8153 r8154 r8155 r8156 (template_scp_node21_seg44 rho _ r8157 r8158 r8159 r8160 r8161 (template_scp_node21_seg45 rho _ r8162 r8163 r8164 r8165 r8166 (template_scp_node21_seg46 rho _ r8167 r8168 r8169 r8170 r8171 (template_scp_node21_seg47 rho _ r8172 r8173 r8174 r8175 r8176 (template_scp_node21_seg48 rho _ r8177 r8178 r8179 r8180 r8181 (template_scp_node21_seg49 rho _ r8182 r8183 r8184 r8185 r8186 (template_scp_node21_seg50 rho _ r8187 r8188 r8189 r8190 r8191 (template_scp_node21_seg51 rho _ r8192 r8193 r8194 r8195 r8196 (template_scp_node21_seg52 rho _ r8197 r8198 r8199 r8200 r8201 (template_scp_node21_seg53 rho _ r8202 r8203 r8204 r8205 r8206 (template_scp_node21_seg54 rho _ r8207 r8208 r8209 r8210 r8211 (template_scp_node21_seg55 rho _ r8212 r8213 r8214 r8215 r8216 (template_scp_node21_seg56 rho _ r8217 r8218 r8219 r8220 r8221 (template_scp_node21_seg57 rho _ r8222 r8223 r8224 r8225 r8226 (template_scp_node21_seg58 rho _ r8227 r8228 r8229 r8230 r8231 (template_scp_node21_seg59 rho _ r8232 r8233 r8234 r8235 r8236 (template_scp_node21_seg60 rho _ r8237 r8238 r8239 r8240 r8241 (template_scp_node21_seg61 rho _ r8242 r8243 r8244 r8245 r8246 (template_scp_node21_seg62 rho _ r8247 r8248 r8249 r8250 r8251 (template_scp_node21_seg63 rho _ r8252 r8253 r8254 r8255 r8256 (template_scp_node21_seg64 rho _ r8257 r8258 r8259 r8260 r8261 (template_scp_node21_seg65 rho _ r8262 r8263 r8264 r8265 r8266 (template_scp_node21_seg66 rho _ r8267 r8268 r8269 r8270 r8271 (template_scp_node21_seg67 rho _ r8272 r8273 r8274 r8275 r8276 (template_scp_node21_seg68 rho _ r8277 r8278 r8279 r8280 r8281 (template_scp_node21_seg69 rho _ r8282 r8283 r8284 r8285 r8286 (⟨rfl, rfl, rfl, rfl, rfl⟩))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.relation_sound_permSpec (rho 7908) (rho 7910) (rho 7913) (rho 7909) (rho 7911) (rho 7912) (rho 7914) (rho 7915) (rho 7916) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.tctNode22DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.F) + (22 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg15ScpNode21Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.TGadgetStateCommitmentPath_f8a8f9c6b11e69f98e85aa31c0465cb534c7ffca4183e830c5b26ea814c660eb
