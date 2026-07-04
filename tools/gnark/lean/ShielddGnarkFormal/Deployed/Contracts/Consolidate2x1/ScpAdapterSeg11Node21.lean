import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode21.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_node21_eq (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode21Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (22 : Seg11.F))
        (rho 31 + rho 9495) (rho 32 + rho 9496 + rho 9497)
        (rho 32 + rho 9498 + rho 9499) (rho 33 + rho 9500) := by
  unfold Seg11.relation at h
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
  unfold Seg11.relationPart99 at p99
  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7937, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953, r7954, r7955, r7956, r7957, r7958, r7959, r7960, r7961, r7962, r7963, r7964, r7965, r7966, r7967, r7968, r7969, r7970, r7971, r7972, r7973, r7974, r7975, r7976, r7977, r7978, r7979, r7980, r7981, r7982, r7983, r7984, r7985, r7986, r7987, r7988, r7989, r7990, r7991, r7992, r7993, r7994, r7995, r7996, r7997, r7998, r7999⟩
  unfold Seg11.relationPart100 at p100
  rcases p100 with ⟨r8000, r8001, r8002, r8003, r8004, r8005, r8006, r8007, r8008, r8009, r8010, r8011, r8012, r8013, r8014, r8015, r8016, r8017, r8018, r8019, r8020, r8021, r8022, r8023, r8024, r8025, r8026, r8027, r8028, r8029, r8030, r8031, r8032, r8033, r8034, r8035, r8036, r8037, r8038, r8039, r8040, r8041, r8042, r8043, r8044, r8045, r8046, r8047, r8048, r8049, r8050, r8051, r8052, r8053, r8054, r8055, r8056, r8057, r8058, r8059, r8060, r8061, r8062, r8063, r8064, r8065, r8066, r8067, r8068, r8069, r8070, r8071, r8072, r8073, r8074, r8075, r8076, r8077, r8078, r8079⟩
  unfold Seg11.relationPart101 at p101
  rcases p101 with ⟨r8080, r8081, r8082, r8083, r8084, r8085, r8086, r8087, r8088, r8089, r8090, r8091, r8092, r8093, r8094, r8095, r8096, r8097, r8098, r8099, r8100, r8101, r8102, r8103, r8104, r8105, r8106, r8107, r8108, r8109, r8110, r8111, r8112, r8113, r8114, r8115, r8116, r8117, r8118, r8119, r8120, r8121, r8122, r8123, r8124, r8125, r8126, r8127, r8128, r8129, r8130, r8131, r8132, r8133, r8134, r8135, r8136, r8137, r8138, r8139, r8140, r8141, r8142, r8143, r8144, r8145, r8146, r8147, r8148, r8149, r8150, r8151, r8152, r8153, r8154, r8155, r8156, r8157, r8158, r8159⟩
  unfold Seg11.relationPart102 at p102
  rcases p102 with ⟨r8160, r8161, r8162, r8163, r8164, r8165, r8166, r8167, r8168, r8169, r8170, r8171, r8172, r8173, r8174, r8175, r8176, r8177, r8178, r8179, r8180, r8181, r8182, r8183, r8184, r8185, r8186, r8187, r8188, r8189, r8190, r8191, r8192, r8193, r8194, r8195, r8196, r8197, r8198, r8199, r8200, r8201, r8202, r8203, r8204, r8205, r8206, r8207, r8208, r8209, r8210, r8211, r8212, r8213, r8214, r8215, r8216, r8217, r8218, r8219, r8220, r8221, r8222, r8223, r8224, r8225, r8226, r8227, r8228, r8229, r8230, r8231, r8232, r8233, r8234, r8235, r8236, r8237, r8238, r8239⟩
  unfold Seg11.relationPart103 at p103
  rcases p103 with ⟨r8240, r8241, r8242, r8243, r8244, r8245, r8246, r8247, r8248, r8249, r8250, r8251, r8252, r8253, r8254, r8255, r8256, r8257, r8258, r8259, r8260, r8261, r8262, r8263, r8264, r8265, r8266, r8267, r8268, r8269, r8270, r8271, r8272, r8273, r8274, r8275, r8276, r8277, r8278, r8279, r8280, r8281, r8282, r8283, r8284, r8285, r8286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.relation (rho 31) (rho 32) (rho 33) (rho 9495) (rho 9496) (rho 9497) (rho 9498) (rho 9499) (rho 9500)
      (fun o0 o1 o2 o3 o4 => o0 = rho 9830 ∧ o1 = rho 9835 ∧ o2 = rho 9840 ∧ o3 = rho 9845 ∧ o4 = rho 9850) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg0
    refine ⟨rho 9501, rho 9502, rho 9503, rho 9504, rho 9505,
      (by unfold Seg11.relationRow7937 at r7937; linear_combination r7937), (by unfold Seg11.relationRow7938 at r7938; linear_combination r7938), (by unfold Seg11.relationRow7939 at r7939; linear_combination r7939), (by unfold Seg11.relationRow7940 at r7940; linear_combination r7940), (by unfold Seg11.relationRow7941 at r7941; linear_combination r7941), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg1
    refine ⟨rho 9506, rho 9507, rho 9508, rho 9509, rho 9510,
      (by unfold Seg11.relationRow7942 at r7942; linear_combination r7942), (by unfold Seg11.relationRow7943 at r7943; linear_combination r7943), (by unfold Seg11.relationRow7944 at r7944; linear_combination r7944), (by unfold Seg11.relationRow7945 at r7945; linear_combination r7945), (by unfold Seg11.relationRow7946 at r7946; linear_combination r7946), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg2
    refine ⟨rho 9511, rho 9512, rho 9513, rho 9514, rho 9515,
      (by unfold Seg11.relationRow7947 at r7947; linear_combination r7947), (by unfold Seg11.relationRow7948 at r7948; linear_combination r7948), (by unfold Seg11.relationRow7949 at r7949; linear_combination r7949), (by unfold Seg11.relationRow7950 at r7950; linear_combination r7950), (by unfold Seg11.relationRow7951 at r7951; linear_combination r7951), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg3
    refine ⟨rho 9516, rho 9517, rho 9518, rho 9519, rho 9520,
      (by unfold Seg11.relationRow7952 at r7952; linear_combination r7952), (by unfold Seg11.relationRow7953 at r7953; linear_combination r7953), (by unfold Seg11.relationRow7954 at r7954; linear_combination r7954), (by unfold Seg11.relationRow7955 at r7955; linear_combination r7955), (by unfold Seg11.relationRow7956 at r7956; linear_combination r7956), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg4
    refine ⟨rho 9521, rho 9522, rho 9523, rho 9524, rho 9525,
      (by unfold Seg11.relationRow7957 at r7957; linear_combination r7957), (by unfold Seg11.relationRow7958 at r7958; linear_combination r7958), (by unfold Seg11.relationRow7959 at r7959; linear_combination r7959), (by unfold Seg11.relationRow7960 at r7960; linear_combination r7960), (by unfold Seg11.relationRow7961 at r7961; linear_combination r7961), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg5
    refine ⟨rho 9526, rho 9527, rho 9528, rho 9529, rho 9530,
      (by unfold Seg11.relationRow7962 at r7962; linear_combination r7962), (by unfold Seg11.relationRow7963 at r7963; linear_combination r7963), (by unfold Seg11.relationRow7964 at r7964; linear_combination r7964), (by unfold Seg11.relationRow7965 at r7965; linear_combination r7965), (by unfold Seg11.relationRow7966 at r7966; linear_combination r7966), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg6
    refine ⟨rho 9531, rho 9532, rho 9533, rho 9534, rho 9535,
      (by unfold Seg11.relationRow7967 at r7967; linear_combination r7967), (by unfold Seg11.relationRow7968 at r7968; linear_combination r7968), (by unfold Seg11.relationRow7969 at r7969; linear_combination r7969), (by unfold Seg11.relationRow7970 at r7970; linear_combination r7970), (by unfold Seg11.relationRow7971 at r7971; linear_combination r7971), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg7
    refine ⟨rho 9536, rho 9537, rho 9538, rho 9539, rho 9540,
      (by unfold Seg11.relationRow7972 at r7972; linear_combination r7972), (by unfold Seg11.relationRow7973 at r7973; linear_combination r7973), (by unfold Seg11.relationRow7974 at r7974; linear_combination r7974), (by unfold Seg11.relationRow7975 at r7975; linear_combination r7975), (by unfold Seg11.relationRow7976 at r7976; linear_combination r7976), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg8
    refine ⟨rho 9541, rho 9542, rho 9543, rho 9544, rho 9545,
      (by unfold Seg11.relationRow7977 at r7977; linear_combination r7977), (by unfold Seg11.relationRow7978 at r7978; linear_combination r7978), (by unfold Seg11.relationRow7979 at r7979; linear_combination r7979), (by unfold Seg11.relationRow7980 at r7980; linear_combination r7980), (by unfold Seg11.relationRow7981 at r7981; linear_combination r7981), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg9
    refine ⟨rho 9546, rho 9547, rho 9548, rho 9549, rho 9550,
      (by unfold Seg11.relationRow7982 at r7982; linear_combination r7982), (by unfold Seg11.relationRow7983 at r7983; linear_combination r7983), (by unfold Seg11.relationRow7984 at r7984; linear_combination r7984), (by unfold Seg11.relationRow7985 at r7985; linear_combination r7985), (by unfold Seg11.relationRow7986 at r7986; linear_combination r7986), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg10
    refine ⟨rho 9551, rho 9552, rho 9553, rho 9554, rho 9555,
      (by unfold Seg11.relationRow7987 at r7987; linear_combination r7987), (by unfold Seg11.relationRow7988 at r7988; linear_combination r7988), (by unfold Seg11.relationRow7989 at r7989; linear_combination r7989), (by unfold Seg11.relationRow7990 at r7990; linear_combination r7990), (by unfold Seg11.relationRow7991 at r7991; linear_combination r7991), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg11
    refine ⟨rho 9556, rho 9557, rho 9558, rho 9559, rho 9560,
      (by unfold Seg11.relationRow7992 at r7992; linear_combination r7992), (by unfold Seg11.relationRow7993 at r7993; linear_combination r7993), (by unfold Seg11.relationRow7994 at r7994; linear_combination r7994), (by unfold Seg11.relationRow7995 at r7995; linear_combination r7995), (by unfold Seg11.relationRow7996 at r7996; linear_combination r7996), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg12
    refine ⟨rho 9561, rho 9562, rho 9563, rho 9564, rho 9565,
      (by unfold Seg11.relationRow7997 at r7997; linear_combination r7997), (by unfold Seg11.relationRow7998 at r7998; linear_combination r7998), (by unfold Seg11.relationRow7999 at r7999; linear_combination r7999), (by unfold Seg11.relationRow8000 at r8000; linear_combination r8000), (by unfold Seg11.relationRow8001 at r8001; linear_combination r8001), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg13
    refine ⟨rho 9566, rho 9567, rho 9568, rho 9569, rho 9570,
      (by unfold Seg11.relationRow8002 at r8002; linear_combination r8002), (by unfold Seg11.relationRow8003 at r8003; linear_combination r8003), (by unfold Seg11.relationRow8004 at r8004; linear_combination r8004), (by unfold Seg11.relationRow8005 at r8005; linear_combination r8005), (by unfold Seg11.relationRow8006 at r8006; linear_combination r8006), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg14
    refine ⟨rho 9571, rho 9572, rho 9573, rho 9574, rho 9575,
      (by unfold Seg11.relationRow8007 at r8007; linear_combination r8007), (by unfold Seg11.relationRow8008 at r8008; linear_combination r8008), (by unfold Seg11.relationRow8009 at r8009; linear_combination r8009), (by unfold Seg11.relationRow8010 at r8010; linear_combination r8010), (by unfold Seg11.relationRow8011 at r8011; linear_combination r8011), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg15
    refine ⟨rho 9576, rho 9577, rho 9578, rho 9579, rho 9580,
      (by unfold Seg11.relationRow8012 at r8012; linear_combination r8012), (by unfold Seg11.relationRow8013 at r8013; linear_combination r8013), (by unfold Seg11.relationRow8014 at r8014; linear_combination r8014), (by unfold Seg11.relationRow8015 at r8015; linear_combination r8015), (by unfold Seg11.relationRow8016 at r8016; linear_combination r8016), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg16
    refine ⟨rho 9581, rho 9582, rho 9583, rho 9584, rho 9585,
      (by unfold Seg11.relationRow8017 at r8017; linear_combination r8017), (by unfold Seg11.relationRow8018 at r8018; linear_combination r8018), (by unfold Seg11.relationRow8019 at r8019; linear_combination r8019), (by unfold Seg11.relationRow8020 at r8020; linear_combination r8020), (by unfold Seg11.relationRow8021 at r8021; linear_combination r8021), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg17
    refine ⟨rho 9586, rho 9587, rho 9588, rho 9589, rho 9590,
      (by unfold Seg11.relationRow8022 at r8022; linear_combination r8022), (by unfold Seg11.relationRow8023 at r8023; linear_combination r8023), (by unfold Seg11.relationRow8024 at r8024; linear_combination r8024), (by unfold Seg11.relationRow8025 at r8025; linear_combination r8025), (by unfold Seg11.relationRow8026 at r8026; linear_combination r8026), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg18
    refine ⟨rho 9591, rho 9592, rho 9593, rho 9594, rho 9595,
      (by unfold Seg11.relationRow8027 at r8027; linear_combination r8027), (by unfold Seg11.relationRow8028 at r8028; linear_combination r8028), (by unfold Seg11.relationRow8029 at r8029; linear_combination r8029), (by unfold Seg11.relationRow8030 at r8030; linear_combination r8030), (by unfold Seg11.relationRow8031 at r8031; linear_combination r8031), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg19
    refine ⟨rho 9596, rho 9597, rho 9598, rho 9599, rho 9600,
      (by unfold Seg11.relationRow8032 at r8032; linear_combination r8032), (by unfold Seg11.relationRow8033 at r8033; linear_combination r8033), (by unfold Seg11.relationRow8034 at r8034; linear_combination r8034), (by unfold Seg11.relationRow8035 at r8035; linear_combination r8035), (by unfold Seg11.relationRow8036 at r8036; linear_combination r8036), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg20
    refine ⟨rho 9601, rho 9602, rho 9603, rho 9604, rho 9605,
      (by unfold Seg11.relationRow8037 at r8037; linear_combination r8037), (by unfold Seg11.relationRow8038 at r8038; linear_combination r8038), (by unfold Seg11.relationRow8039 at r8039; linear_combination r8039), (by unfold Seg11.relationRow8040 at r8040; linear_combination r8040), (by unfold Seg11.relationRow8041 at r8041; linear_combination r8041), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg21
    refine ⟨rho 9606, rho 9607, rho 9608, rho 9609, rho 9610,
      (by unfold Seg11.relationRow8042 at r8042; linear_combination r8042), (by unfold Seg11.relationRow8043 at r8043; linear_combination r8043), (by unfold Seg11.relationRow8044 at r8044; linear_combination r8044), (by unfold Seg11.relationRow8045 at r8045; linear_combination r8045), (by unfold Seg11.relationRow8046 at r8046; linear_combination r8046), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg22
    refine ⟨rho 9611, rho 9612, rho 9613, rho 9614, rho 9615,
      (by unfold Seg11.relationRow8047 at r8047; linear_combination r8047), (by unfold Seg11.relationRow8048 at r8048; linear_combination r8048), (by unfold Seg11.relationRow8049 at r8049; linear_combination r8049), (by unfold Seg11.relationRow8050 at r8050; linear_combination r8050), (by unfold Seg11.relationRow8051 at r8051; linear_combination r8051), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg23
    refine ⟨rho 9616, rho 9617, rho 9618, rho 9619, rho 9620,
      (by unfold Seg11.relationRow8052 at r8052; linear_combination r8052), (by unfold Seg11.relationRow8053 at r8053; linear_combination r8053), (by unfold Seg11.relationRow8054 at r8054; linear_combination r8054), (by unfold Seg11.relationRow8055 at r8055; linear_combination r8055), (by unfold Seg11.relationRow8056 at r8056; linear_combination r8056), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg24
    refine ⟨rho 9621, rho 9622, rho 9623, rho 9624, rho 9625,
      (by unfold Seg11.relationRow8057 at r8057; linear_combination r8057), (by unfold Seg11.relationRow8058 at r8058; linear_combination r8058), (by unfold Seg11.relationRow8059 at r8059; linear_combination r8059), (by unfold Seg11.relationRow8060 at r8060; linear_combination r8060), (by unfold Seg11.relationRow8061 at r8061; linear_combination r8061), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg25
    refine ⟨rho 9626, rho 9627, rho 9628, rho 9629, rho 9630,
      (by unfold Seg11.relationRow8062 at r8062; linear_combination r8062), (by unfold Seg11.relationRow8063 at r8063; linear_combination r8063), (by unfold Seg11.relationRow8064 at r8064; linear_combination r8064), (by unfold Seg11.relationRow8065 at r8065; linear_combination r8065), (by unfold Seg11.relationRow8066 at r8066; linear_combination r8066), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg26
    refine ⟨rho 9631, rho 9632, rho 9633, rho 9634, rho 9635,
      (by unfold Seg11.relationRow8067 at r8067; linear_combination r8067), (by unfold Seg11.relationRow8068 at r8068; linear_combination r8068), (by unfold Seg11.relationRow8069 at r8069; linear_combination r8069), (by unfold Seg11.relationRow8070 at r8070; linear_combination r8070), (by unfold Seg11.relationRow8071 at r8071; linear_combination r8071), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg27
    refine ⟨rho 9636, rho 9637, rho 9638, rho 9639, rho 9640,
      (by unfold Seg11.relationRow8072 at r8072; linear_combination r8072), (by unfold Seg11.relationRow8073 at r8073; linear_combination r8073), (by unfold Seg11.relationRow8074 at r8074; linear_combination r8074), (by unfold Seg11.relationRow8075 at r8075; linear_combination r8075), (by unfold Seg11.relationRow8076 at r8076; linear_combination r8076), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg28
    refine ⟨rho 9641, rho 9642, rho 9643, rho 9644, rho 9645,
      (by unfold Seg11.relationRow8077 at r8077; linear_combination r8077), (by unfold Seg11.relationRow8078 at r8078; linear_combination r8078), (by unfold Seg11.relationRow8079 at r8079; linear_combination r8079), (by unfold Seg11.relationRow8080 at r8080; linear_combination r8080), (by unfold Seg11.relationRow8081 at r8081; linear_combination r8081), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg29
    refine ⟨rho 9646, rho 9647, rho 9648, rho 9649, rho 9650,
      (by unfold Seg11.relationRow8082 at r8082; linear_combination r8082), (by unfold Seg11.relationRow8083 at r8083; linear_combination r8083), (by unfold Seg11.relationRow8084 at r8084; linear_combination r8084), (by unfold Seg11.relationRow8085 at r8085; linear_combination r8085), (by unfold Seg11.relationRow8086 at r8086; linear_combination r8086), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg30
    refine ⟨rho 9651, rho 9652, rho 9653, rho 9654, rho 9655,
      (by unfold Seg11.relationRow8087 at r8087; linear_combination r8087), (by unfold Seg11.relationRow8088 at r8088; linear_combination r8088), (by unfold Seg11.relationRow8089 at r8089; linear_combination r8089), (by unfold Seg11.relationRow8090 at r8090; linear_combination r8090), (by unfold Seg11.relationRow8091 at r8091; linear_combination r8091), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg31
    refine ⟨rho 9656, rho 9657, rho 9658, rho 9659, rho 9660,
      (by unfold Seg11.relationRow8092 at r8092; linear_combination r8092), (by unfold Seg11.relationRow8093 at r8093; linear_combination r8093), (by unfold Seg11.relationRow8094 at r8094; linear_combination r8094), (by unfold Seg11.relationRow8095 at r8095; linear_combination r8095), (by unfold Seg11.relationRow8096 at r8096; linear_combination r8096), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg32
    refine ⟨rho 9661, rho 9662, rho 9663, rho 9664, rho 9665,
      (by unfold Seg11.relationRow8097 at r8097; linear_combination r8097), (by unfold Seg11.relationRow8098 at r8098; linear_combination r8098), (by unfold Seg11.relationRow8099 at r8099; linear_combination r8099), (by unfold Seg11.relationRow8100 at r8100; linear_combination r8100), (by unfold Seg11.relationRow8101 at r8101; linear_combination r8101), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg33
    refine ⟨rho 9666, rho 9667, rho 9668, rho 9669, rho 9670,
      (by unfold Seg11.relationRow8102 at r8102; linear_combination r8102), (by unfold Seg11.relationRow8103 at r8103; linear_combination r8103), (by unfold Seg11.relationRow8104 at r8104; linear_combination r8104), (by unfold Seg11.relationRow8105 at r8105; linear_combination r8105), (by unfold Seg11.relationRow8106 at r8106; linear_combination r8106), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg34
    refine ⟨rho 9671, rho 9672, rho 9673, rho 9674, rho 9675,
      (by unfold Seg11.relationRow8107 at r8107; linear_combination r8107), (by unfold Seg11.relationRow8108 at r8108; linear_combination r8108), (by unfold Seg11.relationRow8109 at r8109; linear_combination r8109), (by unfold Seg11.relationRow8110 at r8110; linear_combination r8110), (by unfold Seg11.relationRow8111 at r8111; linear_combination r8111), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg35
    refine ⟨rho 9676, rho 9677, rho 9678, rho 9679, rho 9680,
      (by unfold Seg11.relationRow8112 at r8112; linear_combination r8112), (by unfold Seg11.relationRow8113 at r8113; linear_combination r8113), (by unfold Seg11.relationRow8114 at r8114; linear_combination r8114), (by unfold Seg11.relationRow8115 at r8115; linear_combination r8115), (by unfold Seg11.relationRow8116 at r8116; linear_combination r8116), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg36
    refine ⟨rho 9681, rho 9682, rho 9683, rho 9684, rho 9685,
      (by unfold Seg11.relationRow8117 at r8117; linear_combination r8117), (by unfold Seg11.relationRow8118 at r8118; linear_combination r8118), (by unfold Seg11.relationRow8119 at r8119; linear_combination r8119), (by unfold Seg11.relationRow8120 at r8120; linear_combination r8120), (by unfold Seg11.relationRow8121 at r8121; linear_combination r8121), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg37
    refine ⟨rho 9686, rho 9687, rho 9688, rho 9689, rho 9690,
      (by unfold Seg11.relationRow8122 at r8122; linear_combination r8122), (by unfold Seg11.relationRow8123 at r8123; linear_combination r8123), (by unfold Seg11.relationRow8124 at r8124; linear_combination r8124), (by unfold Seg11.relationRow8125 at r8125; linear_combination r8125), (by unfold Seg11.relationRow8126 at r8126; linear_combination r8126), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg38
    refine ⟨rho 9691, rho 9692, rho 9693, rho 9694, rho 9695,
      (by unfold Seg11.relationRow8127 at r8127; linear_combination r8127), (by unfold Seg11.relationRow8128 at r8128; linear_combination r8128), (by unfold Seg11.relationRow8129 at r8129; linear_combination r8129), (by unfold Seg11.relationRow8130 at r8130; linear_combination r8130), (by unfold Seg11.relationRow8131 at r8131; linear_combination r8131), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg39
    refine ⟨rho 9696, rho 9697, rho 9698, rho 9699, rho 9700,
      (by unfold Seg11.relationRow8132 at r8132; linear_combination r8132), (by unfold Seg11.relationRow8133 at r8133; linear_combination r8133), (by unfold Seg11.relationRow8134 at r8134; linear_combination r8134), (by unfold Seg11.relationRow8135 at r8135; linear_combination r8135), (by unfold Seg11.relationRow8136 at r8136; linear_combination r8136), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg40
    refine ⟨rho 9701, rho 9702, rho 9703, rho 9704, rho 9705,
      (by unfold Seg11.relationRow8137 at r8137; linear_combination r8137), (by unfold Seg11.relationRow8138 at r8138; linear_combination r8138), (by unfold Seg11.relationRow8139 at r8139; linear_combination r8139), (by unfold Seg11.relationRow8140 at r8140; linear_combination r8140), (by unfold Seg11.relationRow8141 at r8141; linear_combination r8141), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg41
    refine ⟨rho 9706, rho 9707, rho 9708, rho 9709, rho 9710,
      (by unfold Seg11.relationRow8142 at r8142; linear_combination r8142), (by unfold Seg11.relationRow8143 at r8143; linear_combination r8143), (by unfold Seg11.relationRow8144 at r8144; linear_combination r8144), (by unfold Seg11.relationRow8145 at r8145; linear_combination r8145), (by unfold Seg11.relationRow8146 at r8146; linear_combination r8146), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg42
    refine ⟨rho 9711, rho 9712, rho 9713, rho 9714, rho 9715,
      (by unfold Seg11.relationRow8147 at r8147; linear_combination r8147), (by unfold Seg11.relationRow8148 at r8148; linear_combination r8148), (by unfold Seg11.relationRow8149 at r8149; linear_combination r8149), (by unfold Seg11.relationRow8150 at r8150; linear_combination r8150), (by unfold Seg11.relationRow8151 at r8151; linear_combination r8151), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg43
    refine ⟨rho 9716, rho 9717, rho 9718, rho 9719, rho 9720,
      (by unfold Seg11.relationRow8152 at r8152; linear_combination r8152), (by unfold Seg11.relationRow8153 at r8153; linear_combination r8153), (by unfold Seg11.relationRow8154 at r8154; linear_combination r8154), (by unfold Seg11.relationRow8155 at r8155; linear_combination r8155), (by unfold Seg11.relationRow8156 at r8156; linear_combination r8156), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg44
    refine ⟨rho 9721, rho 9722, rho 9723, rho 9724, rho 9725,
      (by unfold Seg11.relationRow8157 at r8157; linear_combination r8157), (by unfold Seg11.relationRow8158 at r8158; linear_combination r8158), (by unfold Seg11.relationRow8159 at r8159; linear_combination r8159), (by unfold Seg11.relationRow8160 at r8160; linear_combination r8160), (by unfold Seg11.relationRow8161 at r8161; linear_combination r8161), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg45
    refine ⟨rho 9726, rho 9727, rho 9728, rho 9729, rho 9730,
      (by unfold Seg11.relationRow8162 at r8162; linear_combination r8162), (by unfold Seg11.relationRow8163 at r8163; linear_combination r8163), (by unfold Seg11.relationRow8164 at r8164; linear_combination r8164), (by unfold Seg11.relationRow8165 at r8165; linear_combination r8165), (by unfold Seg11.relationRow8166 at r8166; linear_combination r8166), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg46
    refine ⟨rho 9731, rho 9732, rho 9733, rho 9734, rho 9735,
      (by unfold Seg11.relationRow8167 at r8167; linear_combination r8167), (by unfold Seg11.relationRow8168 at r8168; linear_combination r8168), (by unfold Seg11.relationRow8169 at r8169; linear_combination r8169), (by unfold Seg11.relationRow8170 at r8170; linear_combination r8170), (by unfold Seg11.relationRow8171 at r8171; linear_combination r8171), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg47
    refine ⟨rho 9736, rho 9737, rho 9738, rho 9739, rho 9740,
      (by unfold Seg11.relationRow8172 at r8172; linear_combination r8172), (by unfold Seg11.relationRow8173 at r8173; linear_combination r8173), (by unfold Seg11.relationRow8174 at r8174; linear_combination r8174), (by unfold Seg11.relationRow8175 at r8175; linear_combination r8175), (by unfold Seg11.relationRow8176 at r8176; linear_combination r8176), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg48
    refine ⟨rho 9741, rho 9742, rho 9743, rho 9744, rho 9745,
      (by unfold Seg11.relationRow8177 at r8177; linear_combination r8177), (by unfold Seg11.relationRow8178 at r8178; linear_combination r8178), (by unfold Seg11.relationRow8179 at r8179; linear_combination r8179), (by unfold Seg11.relationRow8180 at r8180; linear_combination r8180), (by unfold Seg11.relationRow8181 at r8181; linear_combination r8181), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg49
    refine ⟨rho 9746, rho 9747, rho 9748, rho 9749, rho 9750,
      (by unfold Seg11.relationRow8182 at r8182; linear_combination r8182), (by unfold Seg11.relationRow8183 at r8183; linear_combination r8183), (by unfold Seg11.relationRow8184 at r8184; linear_combination r8184), (by unfold Seg11.relationRow8185 at r8185; linear_combination r8185), (by unfold Seg11.relationRow8186 at r8186; linear_combination r8186), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg50
    refine ⟨rho 9751, rho 9752, rho 9753, rho 9754, rho 9755,
      (by unfold Seg11.relationRow8187 at r8187; linear_combination r8187), (by unfold Seg11.relationRow8188 at r8188; linear_combination r8188), (by unfold Seg11.relationRow8189 at r8189; linear_combination r8189), (by unfold Seg11.relationRow8190 at r8190; linear_combination r8190), (by unfold Seg11.relationRow8191 at r8191; linear_combination r8191), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg51
    refine ⟨rho 9756, rho 9757, rho 9758, rho 9759, rho 9760,
      (by unfold Seg11.relationRow8192 at r8192; linear_combination r8192), (by unfold Seg11.relationRow8193 at r8193; linear_combination r8193), (by unfold Seg11.relationRow8194 at r8194; linear_combination r8194), (by unfold Seg11.relationRow8195 at r8195; linear_combination r8195), (by unfold Seg11.relationRow8196 at r8196; linear_combination r8196), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg52
    refine ⟨rho 9761, rho 9762, rho 9763, rho 9764, rho 9765,
      (by unfold Seg11.relationRow8197 at r8197; linear_combination r8197), (by unfold Seg11.relationRow8198 at r8198; linear_combination r8198), (by unfold Seg11.relationRow8199 at r8199; linear_combination r8199), (by unfold Seg11.relationRow8200 at r8200; linear_combination r8200), (by unfold Seg11.relationRow8201 at r8201; linear_combination r8201), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg53
    refine ⟨rho 9766, rho 9767, rho 9768, rho 9769, rho 9770,
      (by unfold Seg11.relationRow8202 at r8202; linear_combination r8202), (by unfold Seg11.relationRow8203 at r8203; linear_combination r8203), (by unfold Seg11.relationRow8204 at r8204; linear_combination r8204), (by unfold Seg11.relationRow8205 at r8205; linear_combination r8205), (by unfold Seg11.relationRow8206 at r8206; linear_combination r8206), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg54
    refine ⟨rho 9771, rho 9772, rho 9773, rho 9774, rho 9775,
      (by unfold Seg11.relationRow8207 at r8207; linear_combination r8207), (by unfold Seg11.relationRow8208 at r8208; linear_combination r8208), (by unfold Seg11.relationRow8209 at r8209; linear_combination r8209), (by unfold Seg11.relationRow8210 at r8210; linear_combination r8210), (by unfold Seg11.relationRow8211 at r8211; linear_combination r8211), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg55
    refine ⟨rho 9776, rho 9777, rho 9778, rho 9779, rho 9780,
      (by unfold Seg11.relationRow8212 at r8212; linear_combination r8212), (by unfold Seg11.relationRow8213 at r8213; linear_combination r8213), (by unfold Seg11.relationRow8214 at r8214; linear_combination r8214), (by unfold Seg11.relationRow8215 at r8215; linear_combination r8215), (by unfold Seg11.relationRow8216 at r8216; linear_combination r8216), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg56
    refine ⟨rho 9781, rho 9782, rho 9783, rho 9784, rho 9785,
      (by unfold Seg11.relationRow8217 at r8217; linear_combination r8217), (by unfold Seg11.relationRow8218 at r8218; linear_combination r8218), (by unfold Seg11.relationRow8219 at r8219; linear_combination r8219), (by unfold Seg11.relationRow8220 at r8220; linear_combination r8220), (by unfold Seg11.relationRow8221 at r8221; linear_combination r8221), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg57
    refine ⟨rho 9786, rho 9787, rho 9788, rho 9789, rho 9790,
      (by unfold Seg11.relationRow8222 at r8222; linear_combination r8222), (by unfold Seg11.relationRow8223 at r8223; linear_combination r8223), (by unfold Seg11.relationRow8224 at r8224; linear_combination r8224), (by unfold Seg11.relationRow8225 at r8225; linear_combination r8225), (by unfold Seg11.relationRow8226 at r8226; linear_combination r8226), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg58
    refine ⟨rho 9791, rho 9792, rho 9793, rho 9794, rho 9795,
      (by unfold Seg11.relationRow8227 at r8227; linear_combination r8227), (by unfold Seg11.relationRow8228 at r8228; linear_combination r8228), (by unfold Seg11.relationRow8229 at r8229; linear_combination r8229), (by unfold Seg11.relationRow8230 at r8230; linear_combination r8230), (by unfold Seg11.relationRow8231 at r8231; linear_combination r8231), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg59
    refine ⟨rho 9796, rho 9797, rho 9798, rho 9799, rho 9800,
      (by unfold Seg11.relationRow8232 at r8232; linear_combination r8232), (by unfold Seg11.relationRow8233 at r8233; linear_combination r8233), (by unfold Seg11.relationRow8234 at r8234; linear_combination r8234), (by unfold Seg11.relationRow8235 at r8235; linear_combination r8235), (by unfold Seg11.relationRow8236 at r8236; linear_combination r8236), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg60
    refine ⟨rho 9801, rho 9802, rho 9803, rho 9804, rho 9805,
      (by unfold Seg11.relationRow8237 at r8237; linear_combination r8237), (by unfold Seg11.relationRow8238 at r8238; linear_combination r8238), (by unfold Seg11.relationRow8239 at r8239; linear_combination r8239), (by unfold Seg11.relationRow8240 at r8240; linear_combination r8240), (by unfold Seg11.relationRow8241 at r8241; linear_combination r8241), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg61
    refine ⟨rho 9806, rho 9807, rho 9808, rho 9809, rho 9810,
      (by unfold Seg11.relationRow8242 at r8242; linear_combination r8242), (by unfold Seg11.relationRow8243 at r8243; linear_combination r8243), (by unfold Seg11.relationRow8244 at r8244; linear_combination r8244), (by unfold Seg11.relationRow8245 at r8245; linear_combination r8245), (by unfold Seg11.relationRow8246 at r8246; linear_combination r8246), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg62
    refine ⟨rho 9811, rho 9812, rho 9813, rho 9814, rho 9815,
      (by unfold Seg11.relationRow8247 at r8247; linear_combination r8247), (by unfold Seg11.relationRow8248 at r8248; linear_combination r8248), (by unfold Seg11.relationRow8249 at r8249; linear_combination r8249), (by unfold Seg11.relationRow8250 at r8250; linear_combination r8250), (by unfold Seg11.relationRow8251 at r8251; linear_combination r8251), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg63
    refine ⟨rho 9816, rho 9817, rho 9818, rho 9819, rho 9820,
      (by unfold Seg11.relationRow8252 at r8252; linear_combination r8252), (by unfold Seg11.relationRow8253 at r8253; linear_combination r8253), (by unfold Seg11.relationRow8254 at r8254; linear_combination r8254), (by unfold Seg11.relationRow8255 at r8255; linear_combination r8255), (by unfold Seg11.relationRow8256 at r8256; linear_combination r8256), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg64
    refine ⟨rho 9821, rho 9822, rho 9823, rho 9824, rho 9825,
      (by unfold Seg11.relationRow8257 at r8257; linear_combination r8257), (by unfold Seg11.relationRow8258 at r8258; linear_combination r8258), (by unfold Seg11.relationRow8259 at r8259; linear_combination r8259), (by unfold Seg11.relationRow8260 at r8260; linear_combination r8260), (by unfold Seg11.relationRow8261 at r8261; linear_combination r8261), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg65
    refine ⟨rho 9826, rho 9827, rho 9828, rho 9829, rho 9830,
      (by unfold Seg11.relationRow8262 at r8262; linear_combination r8262), (by unfold Seg11.relationRow8263 at r8263; linear_combination r8263), (by unfold Seg11.relationRow8264 at r8264; linear_combination r8264), (by unfold Seg11.relationRow8265 at r8265; linear_combination r8265), (by unfold Seg11.relationRow8266 at r8266; linear_combination r8266), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg66
    refine ⟨rho 9831, rho 9832, rho 9833, rho 9834, rho 9835,
      (by unfold Seg11.relationRow8267 at r8267; linear_combination r8267), (by unfold Seg11.relationRow8268 at r8268; linear_combination r8268), (by unfold Seg11.relationRow8269 at r8269; linear_combination r8269), (by unfold Seg11.relationRow8270 at r8270; linear_combination r8270), (by unfold Seg11.relationRow8271 at r8271; linear_combination r8271), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg67
    refine ⟨rho 9836, rho 9837, rho 9838, rho 9839, rho 9840,
      (by unfold Seg11.relationRow8272 at r8272; linear_combination r8272), (by unfold Seg11.relationRow8273 at r8273; linear_combination r8273), (by unfold Seg11.relationRow8274 at r8274; linear_combination r8274), (by unfold Seg11.relationRow8275 at r8275; linear_combination r8275), (by unfold Seg11.relationRow8276 at r8276; linear_combination r8276), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg68
    refine ⟨rho 9841, rho 9842, rho 9843, rho 9844, rho 9845,
      (by unfold Seg11.relationRow8277 at r8277; linear_combination r8277), (by unfold Seg11.relationRow8278 at r8278; linear_combination r8278), (by unfold Seg11.relationRow8279 at r8279; linear_combination r8279), (by unfold Seg11.relationRow8280 at r8280; linear_combination r8280), (by unfold Seg11.relationRow8281 at r8281; linear_combination r8281), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg69
    refine ⟨rho 9846, rho 9847, rho 9848, rho 9849, rho 9850,
      (by unfold Seg11.relationRow8282 at r8282; linear_combination r8282), (by unfold Seg11.relationRow8283 at r8283; linear_combination r8283), (by unfold Seg11.relationRow8284 at r8284; linear_combination r8284), (by unfold Seg11.relationRow8285 at r8285; linear_combination r8285), (by unfold Seg11.relationRow8286 at r8286; linear_combination r8286), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.relation_sound_permSpec (rho 31) (rho 32) (rho 33) (rho 9495) (rho 9496) (rho 9497) (rho 9498) (rho 9499) (rho 9500) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.tctNode22DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.F) + (22 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg11ScpNode21Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

