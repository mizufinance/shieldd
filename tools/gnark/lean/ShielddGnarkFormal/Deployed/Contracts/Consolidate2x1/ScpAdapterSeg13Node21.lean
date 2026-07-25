import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg13Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode21.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg13_scp_node21_eq (rho : Nat -> Seg13.F) (h : Seg13.relation rho) :
    seg13ScpNode21Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg13.F) + (22 : Seg13.F))
        (rho 31 + rho 15060) (rho 32 + rho 15061 + rho 15062)
        (rho 32 + rho 15063 + rho 15064) (rho 33 + rho 15065) := by
  unfold Seg13.relation at h
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
  unfold Seg13.relationPart99 at p99
  rcases p99 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r7937, r7938, r7939, r7940, r7941, r7942, r7943, r7944, r7945, r7946, r7947, r7948, r7949, r7950, r7951, r7952, r7953, r7954, r7955, r7956, r7957, r7958, r7959, r7960, r7961, r7962, r7963, r7964, r7965, r7966, r7967, r7968, r7969, r7970, r7971, r7972, r7973, r7974, r7975, r7976, r7977, r7978, r7979, r7980, r7981, r7982, r7983, r7984, r7985, r7986, r7987, r7988, r7989, r7990, r7991, r7992, r7993, r7994, r7995, r7996, r7997, r7998, r7999⟩
  unfold Seg13.relationPart100 at p100
  rcases p100 with ⟨r8000, r8001, r8002, r8003, r8004, r8005, r8006, r8007, r8008, r8009, r8010, r8011, r8012, r8013, r8014, r8015, r8016, r8017, r8018, r8019, r8020, r8021, r8022, r8023, r8024, r8025, r8026, r8027, r8028, r8029, r8030, r8031, r8032, r8033, r8034, r8035, r8036, r8037, r8038, r8039, r8040, r8041, r8042, r8043, r8044, r8045, r8046, r8047, r8048, r8049, r8050, r8051, r8052, r8053, r8054, r8055, r8056, r8057, r8058, r8059, r8060, r8061, r8062, r8063, r8064, r8065, r8066, r8067, r8068, r8069, r8070, r8071, r8072, r8073, r8074, r8075, r8076, r8077, r8078, r8079⟩
  unfold Seg13.relationPart101 at p101
  rcases p101 with ⟨r8080, r8081, r8082, r8083, r8084, r8085, r8086, r8087, r8088, r8089, r8090, r8091, r8092, r8093, r8094, r8095, r8096, r8097, r8098, r8099, r8100, r8101, r8102, r8103, r8104, r8105, r8106, r8107, r8108, r8109, r8110, r8111, r8112, r8113, r8114, r8115, r8116, r8117, r8118, r8119, r8120, r8121, r8122, r8123, r8124, r8125, r8126, r8127, r8128, r8129, r8130, r8131, r8132, r8133, r8134, r8135, r8136, r8137, r8138, r8139, r8140, r8141, r8142, r8143, r8144, r8145, r8146, r8147, r8148, r8149, r8150, r8151, r8152, r8153, r8154, r8155, r8156, r8157, r8158, r8159⟩
  unfold Seg13.relationPart102 at p102
  rcases p102 with ⟨r8160, r8161, r8162, r8163, r8164, r8165, r8166, r8167, r8168, r8169, r8170, r8171, r8172, r8173, r8174, r8175, r8176, r8177, r8178, r8179, r8180, r8181, r8182, r8183, r8184, r8185, r8186, r8187, r8188, r8189, r8190, r8191, r8192, r8193, r8194, r8195, r8196, r8197, r8198, r8199, r8200, r8201, r8202, r8203, r8204, r8205, r8206, r8207, r8208, r8209, r8210, r8211, r8212, r8213, r8214, r8215, r8216, r8217, r8218, r8219, r8220, r8221, r8222, r8223, r8224, r8225, r8226, r8227, r8228, r8229, r8230, r8231, r8232, r8233, r8234, r8235, r8236, r8237, r8238, r8239⟩
  unfold Seg13.relationPart103 at p103
  rcases p103 with ⟨r8240, r8241, r8242, r8243, r8244, r8245, r8246, r8247, r8248, r8249, r8250, r8251, r8252, r8253, r8254, r8255, r8256, r8257, r8258, r8259, r8260, r8261, r8262, r8263, r8264, r8265, r8266, r8267, r8268, r8269, r8270, r8271, r8272, r8273, r8274, r8275, r8276, r8277, r8278, r8279, r8280, r8281, r8282, r8283, r8284, r8285, r8286, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.relation (rho 31) (rho 32) (rho 33) (rho 15060) (rho 15061) (rho 15062) (rho 15063) (rho 15064) (rho 15065)
      (fun o0 o1 o2 o3 o4 => o0 = rho 15395 ∧ o1 = rho 15400 ∧ o2 = rho 15405 ∧ o3 = rho 15410 ∧ o4 = rho 15415) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg0
    refine ⟨rho 15066, rho 15067, rho 15068, rho 15069, rho 15070,
      (by unfold Seg13.relationRow7937 at r7937; linear_combination r7937), (by unfold Seg13.relationRow7938 at r7938; linear_combination r7938), (by unfold Seg13.relationRow7939 at r7939; linear_combination r7939), (by unfold Seg13.relationRow7940 at r7940; linear_combination r7940), (by unfold Seg13.relationRow7941 at r7941; linear_combination r7941), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg1
    refine ⟨rho 15071, rho 15072, rho 15073, rho 15074, rho 15075,
      (by unfold Seg13.relationRow7942 at r7942; linear_combination r7942), (by unfold Seg13.relationRow7943 at r7943; linear_combination r7943), (by unfold Seg13.relationRow7944 at r7944; linear_combination r7944), (by unfold Seg13.relationRow7945 at r7945; linear_combination r7945), (by unfold Seg13.relationRow7946 at r7946; linear_combination r7946), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg2
    refine ⟨rho 15076, rho 15077, rho 15078, rho 15079, rho 15080,
      (by unfold Seg13.relationRow7947 at r7947; linear_combination r7947), (by unfold Seg13.relationRow7948 at r7948; linear_combination r7948), (by unfold Seg13.relationRow7949 at r7949; linear_combination r7949), (by unfold Seg13.relationRow7950 at r7950; linear_combination r7950), (by unfold Seg13.relationRow7951 at r7951; linear_combination r7951), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg3
    refine ⟨rho 15081, rho 15082, rho 15083, rho 15084, rho 15085,
      (by unfold Seg13.relationRow7952 at r7952; linear_combination r7952), (by unfold Seg13.relationRow7953 at r7953; linear_combination r7953), (by unfold Seg13.relationRow7954 at r7954; linear_combination r7954), (by unfold Seg13.relationRow7955 at r7955; linear_combination r7955), (by unfold Seg13.relationRow7956 at r7956; linear_combination r7956), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg4
    refine ⟨rho 15086, rho 15087, rho 15088, rho 15089, rho 15090,
      (by unfold Seg13.relationRow7957 at r7957; linear_combination r7957), (by unfold Seg13.relationRow7958 at r7958; linear_combination r7958), (by unfold Seg13.relationRow7959 at r7959; linear_combination r7959), (by unfold Seg13.relationRow7960 at r7960; linear_combination r7960), (by unfold Seg13.relationRow7961 at r7961; linear_combination r7961), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg5
    refine ⟨rho 15091, rho 15092, rho 15093, rho 15094, rho 15095,
      (by unfold Seg13.relationRow7962 at r7962; linear_combination r7962), (by unfold Seg13.relationRow7963 at r7963; linear_combination r7963), (by unfold Seg13.relationRow7964 at r7964; linear_combination r7964), (by unfold Seg13.relationRow7965 at r7965; linear_combination r7965), (by unfold Seg13.relationRow7966 at r7966; linear_combination r7966), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg6
    refine ⟨rho 15096, rho 15097, rho 15098, rho 15099, rho 15100,
      (by unfold Seg13.relationRow7967 at r7967; linear_combination r7967), (by unfold Seg13.relationRow7968 at r7968; linear_combination r7968), (by unfold Seg13.relationRow7969 at r7969; linear_combination r7969), (by unfold Seg13.relationRow7970 at r7970; linear_combination r7970), (by unfold Seg13.relationRow7971 at r7971; linear_combination r7971), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg7
    refine ⟨rho 15101, rho 15102, rho 15103, rho 15104, rho 15105,
      (by unfold Seg13.relationRow7972 at r7972; linear_combination r7972), (by unfold Seg13.relationRow7973 at r7973; linear_combination r7973), (by unfold Seg13.relationRow7974 at r7974; linear_combination r7974), (by unfold Seg13.relationRow7975 at r7975; linear_combination r7975), (by unfold Seg13.relationRow7976 at r7976; linear_combination r7976), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg8
    refine ⟨rho 15106, rho 15107, rho 15108, rho 15109, rho 15110,
      (by unfold Seg13.relationRow7977 at r7977; linear_combination r7977), (by unfold Seg13.relationRow7978 at r7978; linear_combination r7978), (by unfold Seg13.relationRow7979 at r7979; linear_combination r7979), (by unfold Seg13.relationRow7980 at r7980; linear_combination r7980), (by unfold Seg13.relationRow7981 at r7981; linear_combination r7981), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg9
    refine ⟨rho 15111, rho 15112, rho 15113, rho 15114, rho 15115,
      (by unfold Seg13.relationRow7982 at r7982; linear_combination r7982), (by unfold Seg13.relationRow7983 at r7983; linear_combination r7983), (by unfold Seg13.relationRow7984 at r7984; linear_combination r7984), (by unfold Seg13.relationRow7985 at r7985; linear_combination r7985), (by unfold Seg13.relationRow7986 at r7986; linear_combination r7986), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg10
    refine ⟨rho 15116, rho 15117, rho 15118, rho 15119, rho 15120,
      (by unfold Seg13.relationRow7987 at r7987; linear_combination r7987), (by unfold Seg13.relationRow7988 at r7988; linear_combination r7988), (by unfold Seg13.relationRow7989 at r7989; linear_combination r7989), (by unfold Seg13.relationRow7990 at r7990; linear_combination r7990), (by unfold Seg13.relationRow7991 at r7991; linear_combination r7991), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg11
    refine ⟨rho 15121, rho 15122, rho 15123, rho 15124, rho 15125,
      (by unfold Seg13.relationRow7992 at r7992; linear_combination r7992), (by unfold Seg13.relationRow7993 at r7993; linear_combination r7993), (by unfold Seg13.relationRow7994 at r7994; linear_combination r7994), (by unfold Seg13.relationRow7995 at r7995; linear_combination r7995), (by unfold Seg13.relationRow7996 at r7996; linear_combination r7996), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg12
    refine ⟨rho 15126, rho 15127, rho 15128, rho 15129, rho 15130,
      (by unfold Seg13.relationRow7997 at r7997; linear_combination r7997), (by unfold Seg13.relationRow7998 at r7998; linear_combination r7998), (by unfold Seg13.relationRow7999 at r7999; linear_combination r7999), (by unfold Seg13.relationRow8000 at r8000; linear_combination r8000), (by unfold Seg13.relationRow8001 at r8001; linear_combination r8001), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg13
    refine ⟨rho 15131, rho 15132, rho 15133, rho 15134, rho 15135,
      (by unfold Seg13.relationRow8002 at r8002; linear_combination r8002), (by unfold Seg13.relationRow8003 at r8003; linear_combination r8003), (by unfold Seg13.relationRow8004 at r8004; linear_combination r8004), (by unfold Seg13.relationRow8005 at r8005; linear_combination r8005), (by unfold Seg13.relationRow8006 at r8006; linear_combination r8006), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg14
    refine ⟨rho 15136, rho 15137, rho 15138, rho 15139, rho 15140,
      (by unfold Seg13.relationRow8007 at r8007; linear_combination r8007), (by unfold Seg13.relationRow8008 at r8008; linear_combination r8008), (by unfold Seg13.relationRow8009 at r8009; linear_combination r8009), (by unfold Seg13.relationRow8010 at r8010; linear_combination r8010), (by unfold Seg13.relationRow8011 at r8011; linear_combination r8011), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg15
    refine ⟨rho 15141, rho 15142, rho 15143, rho 15144, rho 15145,
      (by unfold Seg13.relationRow8012 at r8012; linear_combination r8012), (by unfold Seg13.relationRow8013 at r8013; linear_combination r8013), (by unfold Seg13.relationRow8014 at r8014; linear_combination r8014), (by unfold Seg13.relationRow8015 at r8015; linear_combination r8015), (by unfold Seg13.relationRow8016 at r8016; linear_combination r8016), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg16
    refine ⟨rho 15146, rho 15147, rho 15148, rho 15149, rho 15150,
      (by unfold Seg13.relationRow8017 at r8017; linear_combination r8017), (by unfold Seg13.relationRow8018 at r8018; linear_combination r8018), (by unfold Seg13.relationRow8019 at r8019; linear_combination r8019), (by unfold Seg13.relationRow8020 at r8020; linear_combination r8020), (by unfold Seg13.relationRow8021 at r8021; linear_combination r8021), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg17
    refine ⟨rho 15151, rho 15152, rho 15153, rho 15154, rho 15155,
      (by unfold Seg13.relationRow8022 at r8022; linear_combination r8022), (by unfold Seg13.relationRow8023 at r8023; linear_combination r8023), (by unfold Seg13.relationRow8024 at r8024; linear_combination r8024), (by unfold Seg13.relationRow8025 at r8025; linear_combination r8025), (by unfold Seg13.relationRow8026 at r8026; linear_combination r8026), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg18
    refine ⟨rho 15156, rho 15157, rho 15158, rho 15159, rho 15160,
      (by unfold Seg13.relationRow8027 at r8027; linear_combination r8027), (by unfold Seg13.relationRow8028 at r8028; linear_combination r8028), (by unfold Seg13.relationRow8029 at r8029; linear_combination r8029), (by unfold Seg13.relationRow8030 at r8030; linear_combination r8030), (by unfold Seg13.relationRow8031 at r8031; linear_combination r8031), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg19
    refine ⟨rho 15161, rho 15162, rho 15163, rho 15164, rho 15165,
      (by unfold Seg13.relationRow8032 at r8032; linear_combination r8032), (by unfold Seg13.relationRow8033 at r8033; linear_combination r8033), (by unfold Seg13.relationRow8034 at r8034; linear_combination r8034), (by unfold Seg13.relationRow8035 at r8035; linear_combination r8035), (by unfold Seg13.relationRow8036 at r8036; linear_combination r8036), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg20
    refine ⟨rho 15166, rho 15167, rho 15168, rho 15169, rho 15170,
      (by unfold Seg13.relationRow8037 at r8037; linear_combination r8037), (by unfold Seg13.relationRow8038 at r8038; linear_combination r8038), (by unfold Seg13.relationRow8039 at r8039; linear_combination r8039), (by unfold Seg13.relationRow8040 at r8040; linear_combination r8040), (by unfold Seg13.relationRow8041 at r8041; linear_combination r8041), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg21
    refine ⟨rho 15171, rho 15172, rho 15173, rho 15174, rho 15175,
      (by unfold Seg13.relationRow8042 at r8042; linear_combination r8042), (by unfold Seg13.relationRow8043 at r8043; linear_combination r8043), (by unfold Seg13.relationRow8044 at r8044; linear_combination r8044), (by unfold Seg13.relationRow8045 at r8045; linear_combination r8045), (by unfold Seg13.relationRow8046 at r8046; linear_combination r8046), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg22
    refine ⟨rho 15176, rho 15177, rho 15178, rho 15179, rho 15180,
      (by unfold Seg13.relationRow8047 at r8047; linear_combination r8047), (by unfold Seg13.relationRow8048 at r8048; linear_combination r8048), (by unfold Seg13.relationRow8049 at r8049; linear_combination r8049), (by unfold Seg13.relationRow8050 at r8050; linear_combination r8050), (by unfold Seg13.relationRow8051 at r8051; linear_combination r8051), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg23
    refine ⟨rho 15181, rho 15182, rho 15183, rho 15184, rho 15185,
      (by unfold Seg13.relationRow8052 at r8052; linear_combination r8052), (by unfold Seg13.relationRow8053 at r8053; linear_combination r8053), (by unfold Seg13.relationRow8054 at r8054; linear_combination r8054), (by unfold Seg13.relationRow8055 at r8055; linear_combination r8055), (by unfold Seg13.relationRow8056 at r8056; linear_combination r8056), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg24
    refine ⟨rho 15186, rho 15187, rho 15188, rho 15189, rho 15190,
      (by unfold Seg13.relationRow8057 at r8057; linear_combination r8057), (by unfold Seg13.relationRow8058 at r8058; linear_combination r8058), (by unfold Seg13.relationRow8059 at r8059; linear_combination r8059), (by unfold Seg13.relationRow8060 at r8060; linear_combination r8060), (by unfold Seg13.relationRow8061 at r8061; linear_combination r8061), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg25
    refine ⟨rho 15191, rho 15192, rho 15193, rho 15194, rho 15195,
      (by unfold Seg13.relationRow8062 at r8062; linear_combination r8062), (by unfold Seg13.relationRow8063 at r8063; linear_combination r8063), (by unfold Seg13.relationRow8064 at r8064; linear_combination r8064), (by unfold Seg13.relationRow8065 at r8065; linear_combination r8065), (by unfold Seg13.relationRow8066 at r8066; linear_combination r8066), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg26
    refine ⟨rho 15196, rho 15197, rho 15198, rho 15199, rho 15200,
      (by unfold Seg13.relationRow8067 at r8067; linear_combination r8067), (by unfold Seg13.relationRow8068 at r8068; linear_combination r8068), (by unfold Seg13.relationRow8069 at r8069; linear_combination r8069), (by unfold Seg13.relationRow8070 at r8070; linear_combination r8070), (by unfold Seg13.relationRow8071 at r8071; linear_combination r8071), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg27
    refine ⟨rho 15201, rho 15202, rho 15203, rho 15204, rho 15205,
      (by unfold Seg13.relationRow8072 at r8072; linear_combination r8072), (by unfold Seg13.relationRow8073 at r8073; linear_combination r8073), (by unfold Seg13.relationRow8074 at r8074; linear_combination r8074), (by unfold Seg13.relationRow8075 at r8075; linear_combination r8075), (by unfold Seg13.relationRow8076 at r8076; linear_combination r8076), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg28
    refine ⟨rho 15206, rho 15207, rho 15208, rho 15209, rho 15210,
      (by unfold Seg13.relationRow8077 at r8077; linear_combination r8077), (by unfold Seg13.relationRow8078 at r8078; linear_combination r8078), (by unfold Seg13.relationRow8079 at r8079; linear_combination r8079), (by unfold Seg13.relationRow8080 at r8080; linear_combination r8080), (by unfold Seg13.relationRow8081 at r8081; linear_combination r8081), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg29
    refine ⟨rho 15211, rho 15212, rho 15213, rho 15214, rho 15215,
      (by unfold Seg13.relationRow8082 at r8082; linear_combination r8082), (by unfold Seg13.relationRow8083 at r8083; linear_combination r8083), (by unfold Seg13.relationRow8084 at r8084; linear_combination r8084), (by unfold Seg13.relationRow8085 at r8085; linear_combination r8085), (by unfold Seg13.relationRow8086 at r8086; linear_combination r8086), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg30
    refine ⟨rho 15216, rho 15217, rho 15218, rho 15219, rho 15220,
      (by unfold Seg13.relationRow8087 at r8087; linear_combination r8087), (by unfold Seg13.relationRow8088 at r8088; linear_combination r8088), (by unfold Seg13.relationRow8089 at r8089; linear_combination r8089), (by unfold Seg13.relationRow8090 at r8090; linear_combination r8090), (by unfold Seg13.relationRow8091 at r8091; linear_combination r8091), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg31
    refine ⟨rho 15221, rho 15222, rho 15223, rho 15224, rho 15225,
      (by unfold Seg13.relationRow8092 at r8092; linear_combination r8092), (by unfold Seg13.relationRow8093 at r8093; linear_combination r8093), (by unfold Seg13.relationRow8094 at r8094; linear_combination r8094), (by unfold Seg13.relationRow8095 at r8095; linear_combination r8095), (by unfold Seg13.relationRow8096 at r8096; linear_combination r8096), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg32
    refine ⟨rho 15226, rho 15227, rho 15228, rho 15229, rho 15230,
      (by unfold Seg13.relationRow8097 at r8097; linear_combination r8097), (by unfold Seg13.relationRow8098 at r8098; linear_combination r8098), (by unfold Seg13.relationRow8099 at r8099; linear_combination r8099), (by unfold Seg13.relationRow8100 at r8100; linear_combination r8100), (by unfold Seg13.relationRow8101 at r8101; linear_combination r8101), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg33
    refine ⟨rho 15231, rho 15232, rho 15233, rho 15234, rho 15235,
      (by unfold Seg13.relationRow8102 at r8102; linear_combination r8102), (by unfold Seg13.relationRow8103 at r8103; linear_combination r8103), (by unfold Seg13.relationRow8104 at r8104; linear_combination r8104), (by unfold Seg13.relationRow8105 at r8105; linear_combination r8105), (by unfold Seg13.relationRow8106 at r8106; linear_combination r8106), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg34
    refine ⟨rho 15236, rho 15237, rho 15238, rho 15239, rho 15240,
      (by unfold Seg13.relationRow8107 at r8107; linear_combination r8107), (by unfold Seg13.relationRow8108 at r8108; linear_combination r8108), (by unfold Seg13.relationRow8109 at r8109; linear_combination r8109), (by unfold Seg13.relationRow8110 at r8110; linear_combination r8110), (by unfold Seg13.relationRow8111 at r8111; linear_combination r8111), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg35
    refine ⟨rho 15241, rho 15242, rho 15243, rho 15244, rho 15245,
      (by unfold Seg13.relationRow8112 at r8112; linear_combination r8112), (by unfold Seg13.relationRow8113 at r8113; linear_combination r8113), (by unfold Seg13.relationRow8114 at r8114; linear_combination r8114), (by unfold Seg13.relationRow8115 at r8115; linear_combination r8115), (by unfold Seg13.relationRow8116 at r8116; linear_combination r8116), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg36
    refine ⟨rho 15246, rho 15247, rho 15248, rho 15249, rho 15250,
      (by unfold Seg13.relationRow8117 at r8117; linear_combination r8117), (by unfold Seg13.relationRow8118 at r8118; linear_combination r8118), (by unfold Seg13.relationRow8119 at r8119; linear_combination r8119), (by unfold Seg13.relationRow8120 at r8120; linear_combination r8120), (by unfold Seg13.relationRow8121 at r8121; linear_combination r8121), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg37
    refine ⟨rho 15251, rho 15252, rho 15253, rho 15254, rho 15255,
      (by unfold Seg13.relationRow8122 at r8122; linear_combination r8122), (by unfold Seg13.relationRow8123 at r8123; linear_combination r8123), (by unfold Seg13.relationRow8124 at r8124; linear_combination r8124), (by unfold Seg13.relationRow8125 at r8125; linear_combination r8125), (by unfold Seg13.relationRow8126 at r8126; linear_combination r8126), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg38
    refine ⟨rho 15256, rho 15257, rho 15258, rho 15259, rho 15260,
      (by unfold Seg13.relationRow8127 at r8127; linear_combination r8127), (by unfold Seg13.relationRow8128 at r8128; linear_combination r8128), (by unfold Seg13.relationRow8129 at r8129; linear_combination r8129), (by unfold Seg13.relationRow8130 at r8130; linear_combination r8130), (by unfold Seg13.relationRow8131 at r8131; linear_combination r8131), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg39
    refine ⟨rho 15261, rho 15262, rho 15263, rho 15264, rho 15265,
      (by unfold Seg13.relationRow8132 at r8132; linear_combination r8132), (by unfold Seg13.relationRow8133 at r8133; linear_combination r8133), (by unfold Seg13.relationRow8134 at r8134; linear_combination r8134), (by unfold Seg13.relationRow8135 at r8135; linear_combination r8135), (by unfold Seg13.relationRow8136 at r8136; linear_combination r8136), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg40
    refine ⟨rho 15266, rho 15267, rho 15268, rho 15269, rho 15270,
      (by unfold Seg13.relationRow8137 at r8137; linear_combination r8137), (by unfold Seg13.relationRow8138 at r8138; linear_combination r8138), (by unfold Seg13.relationRow8139 at r8139; linear_combination r8139), (by unfold Seg13.relationRow8140 at r8140; linear_combination r8140), (by unfold Seg13.relationRow8141 at r8141; linear_combination r8141), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg41
    refine ⟨rho 15271, rho 15272, rho 15273, rho 15274, rho 15275,
      (by unfold Seg13.relationRow8142 at r8142; linear_combination r8142), (by unfold Seg13.relationRow8143 at r8143; linear_combination r8143), (by unfold Seg13.relationRow8144 at r8144; linear_combination r8144), (by unfold Seg13.relationRow8145 at r8145; linear_combination r8145), (by unfold Seg13.relationRow8146 at r8146; linear_combination r8146), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg42
    refine ⟨rho 15276, rho 15277, rho 15278, rho 15279, rho 15280,
      (by unfold Seg13.relationRow8147 at r8147; linear_combination r8147), (by unfold Seg13.relationRow8148 at r8148; linear_combination r8148), (by unfold Seg13.relationRow8149 at r8149; linear_combination r8149), (by unfold Seg13.relationRow8150 at r8150; linear_combination r8150), (by unfold Seg13.relationRow8151 at r8151; linear_combination r8151), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg43
    refine ⟨rho 15281, rho 15282, rho 15283, rho 15284, rho 15285,
      (by unfold Seg13.relationRow8152 at r8152; linear_combination r8152), (by unfold Seg13.relationRow8153 at r8153; linear_combination r8153), (by unfold Seg13.relationRow8154 at r8154; linear_combination r8154), (by unfold Seg13.relationRow8155 at r8155; linear_combination r8155), (by unfold Seg13.relationRow8156 at r8156; linear_combination r8156), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg44
    refine ⟨rho 15286, rho 15287, rho 15288, rho 15289, rho 15290,
      (by unfold Seg13.relationRow8157 at r8157; linear_combination r8157), (by unfold Seg13.relationRow8158 at r8158; linear_combination r8158), (by unfold Seg13.relationRow8159 at r8159; linear_combination r8159), (by unfold Seg13.relationRow8160 at r8160; linear_combination r8160), (by unfold Seg13.relationRow8161 at r8161; linear_combination r8161), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg45
    refine ⟨rho 15291, rho 15292, rho 15293, rho 15294, rho 15295,
      (by unfold Seg13.relationRow8162 at r8162; linear_combination r8162), (by unfold Seg13.relationRow8163 at r8163; linear_combination r8163), (by unfold Seg13.relationRow8164 at r8164; linear_combination r8164), (by unfold Seg13.relationRow8165 at r8165; linear_combination r8165), (by unfold Seg13.relationRow8166 at r8166; linear_combination r8166), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg46
    refine ⟨rho 15296, rho 15297, rho 15298, rho 15299, rho 15300,
      (by unfold Seg13.relationRow8167 at r8167; linear_combination r8167), (by unfold Seg13.relationRow8168 at r8168; linear_combination r8168), (by unfold Seg13.relationRow8169 at r8169; linear_combination r8169), (by unfold Seg13.relationRow8170 at r8170; linear_combination r8170), (by unfold Seg13.relationRow8171 at r8171; linear_combination r8171), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg47
    refine ⟨rho 15301, rho 15302, rho 15303, rho 15304, rho 15305,
      (by unfold Seg13.relationRow8172 at r8172; linear_combination r8172), (by unfold Seg13.relationRow8173 at r8173; linear_combination r8173), (by unfold Seg13.relationRow8174 at r8174; linear_combination r8174), (by unfold Seg13.relationRow8175 at r8175; linear_combination r8175), (by unfold Seg13.relationRow8176 at r8176; linear_combination r8176), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg48
    refine ⟨rho 15306, rho 15307, rho 15308, rho 15309, rho 15310,
      (by unfold Seg13.relationRow8177 at r8177; linear_combination r8177), (by unfold Seg13.relationRow8178 at r8178; linear_combination r8178), (by unfold Seg13.relationRow8179 at r8179; linear_combination r8179), (by unfold Seg13.relationRow8180 at r8180; linear_combination r8180), (by unfold Seg13.relationRow8181 at r8181; linear_combination r8181), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg49
    refine ⟨rho 15311, rho 15312, rho 15313, rho 15314, rho 15315,
      (by unfold Seg13.relationRow8182 at r8182; linear_combination r8182), (by unfold Seg13.relationRow8183 at r8183; linear_combination r8183), (by unfold Seg13.relationRow8184 at r8184; linear_combination r8184), (by unfold Seg13.relationRow8185 at r8185; linear_combination r8185), (by unfold Seg13.relationRow8186 at r8186; linear_combination r8186), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg50
    refine ⟨rho 15316, rho 15317, rho 15318, rho 15319, rho 15320,
      (by unfold Seg13.relationRow8187 at r8187; linear_combination r8187), (by unfold Seg13.relationRow8188 at r8188; linear_combination r8188), (by unfold Seg13.relationRow8189 at r8189; linear_combination r8189), (by unfold Seg13.relationRow8190 at r8190; linear_combination r8190), (by unfold Seg13.relationRow8191 at r8191; linear_combination r8191), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg51
    refine ⟨rho 15321, rho 15322, rho 15323, rho 15324, rho 15325,
      (by unfold Seg13.relationRow8192 at r8192; linear_combination r8192), (by unfold Seg13.relationRow8193 at r8193; linear_combination r8193), (by unfold Seg13.relationRow8194 at r8194; linear_combination r8194), (by unfold Seg13.relationRow8195 at r8195; linear_combination r8195), (by unfold Seg13.relationRow8196 at r8196; linear_combination r8196), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg52
    refine ⟨rho 15326, rho 15327, rho 15328, rho 15329, rho 15330,
      (by unfold Seg13.relationRow8197 at r8197; linear_combination r8197), (by unfold Seg13.relationRow8198 at r8198; linear_combination r8198), (by unfold Seg13.relationRow8199 at r8199; linear_combination r8199), (by unfold Seg13.relationRow8200 at r8200; linear_combination r8200), (by unfold Seg13.relationRow8201 at r8201; linear_combination r8201), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg53
    refine ⟨rho 15331, rho 15332, rho 15333, rho 15334, rho 15335,
      (by unfold Seg13.relationRow8202 at r8202; linear_combination r8202), (by unfold Seg13.relationRow8203 at r8203; linear_combination r8203), (by unfold Seg13.relationRow8204 at r8204; linear_combination r8204), (by unfold Seg13.relationRow8205 at r8205; linear_combination r8205), (by unfold Seg13.relationRow8206 at r8206; linear_combination r8206), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg54
    refine ⟨rho 15336, rho 15337, rho 15338, rho 15339, rho 15340,
      (by unfold Seg13.relationRow8207 at r8207; linear_combination r8207), (by unfold Seg13.relationRow8208 at r8208; linear_combination r8208), (by unfold Seg13.relationRow8209 at r8209; linear_combination r8209), (by unfold Seg13.relationRow8210 at r8210; linear_combination r8210), (by unfold Seg13.relationRow8211 at r8211; linear_combination r8211), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg55
    refine ⟨rho 15341, rho 15342, rho 15343, rho 15344, rho 15345,
      (by unfold Seg13.relationRow8212 at r8212; linear_combination r8212), (by unfold Seg13.relationRow8213 at r8213; linear_combination r8213), (by unfold Seg13.relationRow8214 at r8214; linear_combination r8214), (by unfold Seg13.relationRow8215 at r8215; linear_combination r8215), (by unfold Seg13.relationRow8216 at r8216; linear_combination r8216), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg56
    refine ⟨rho 15346, rho 15347, rho 15348, rho 15349, rho 15350,
      (by unfold Seg13.relationRow8217 at r8217; linear_combination r8217), (by unfold Seg13.relationRow8218 at r8218; linear_combination r8218), (by unfold Seg13.relationRow8219 at r8219; linear_combination r8219), (by unfold Seg13.relationRow8220 at r8220; linear_combination r8220), (by unfold Seg13.relationRow8221 at r8221; linear_combination r8221), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg57
    refine ⟨rho 15351, rho 15352, rho 15353, rho 15354, rho 15355,
      (by unfold Seg13.relationRow8222 at r8222; linear_combination r8222), (by unfold Seg13.relationRow8223 at r8223; linear_combination r8223), (by unfold Seg13.relationRow8224 at r8224; linear_combination r8224), (by unfold Seg13.relationRow8225 at r8225; linear_combination r8225), (by unfold Seg13.relationRow8226 at r8226; linear_combination r8226), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg58
    refine ⟨rho 15356, rho 15357, rho 15358, rho 15359, rho 15360,
      (by unfold Seg13.relationRow8227 at r8227; linear_combination r8227), (by unfold Seg13.relationRow8228 at r8228; linear_combination r8228), (by unfold Seg13.relationRow8229 at r8229; linear_combination r8229), (by unfold Seg13.relationRow8230 at r8230; linear_combination r8230), (by unfold Seg13.relationRow8231 at r8231; linear_combination r8231), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg59
    refine ⟨rho 15361, rho 15362, rho 15363, rho 15364, rho 15365,
      (by unfold Seg13.relationRow8232 at r8232; linear_combination r8232), (by unfold Seg13.relationRow8233 at r8233; linear_combination r8233), (by unfold Seg13.relationRow8234 at r8234; linear_combination r8234), (by unfold Seg13.relationRow8235 at r8235; linear_combination r8235), (by unfold Seg13.relationRow8236 at r8236; linear_combination r8236), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg60
    refine ⟨rho 15366, rho 15367, rho 15368, rho 15369, rho 15370,
      (by unfold Seg13.relationRow8237 at r8237; linear_combination r8237), (by unfold Seg13.relationRow8238 at r8238; linear_combination r8238), (by unfold Seg13.relationRow8239 at r8239; linear_combination r8239), (by unfold Seg13.relationRow8240 at r8240; linear_combination r8240), (by unfold Seg13.relationRow8241 at r8241; linear_combination r8241), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg61
    refine ⟨rho 15371, rho 15372, rho 15373, rho 15374, rho 15375,
      (by unfold Seg13.relationRow8242 at r8242; linear_combination r8242), (by unfold Seg13.relationRow8243 at r8243; linear_combination r8243), (by unfold Seg13.relationRow8244 at r8244; linear_combination r8244), (by unfold Seg13.relationRow8245 at r8245; linear_combination r8245), (by unfold Seg13.relationRow8246 at r8246; linear_combination r8246), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg62
    refine ⟨rho 15376, rho 15377, rho 15378, rho 15379, rho 15380,
      (by unfold Seg13.relationRow8247 at r8247; linear_combination r8247), (by unfold Seg13.relationRow8248 at r8248; linear_combination r8248), (by unfold Seg13.relationRow8249 at r8249; linear_combination r8249), (by unfold Seg13.relationRow8250 at r8250; linear_combination r8250), (by unfold Seg13.relationRow8251 at r8251; linear_combination r8251), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg63
    refine ⟨rho 15381, rho 15382, rho 15383, rho 15384, rho 15385,
      (by unfold Seg13.relationRow8252 at r8252; linear_combination r8252), (by unfold Seg13.relationRow8253 at r8253; linear_combination r8253), (by unfold Seg13.relationRow8254 at r8254; linear_combination r8254), (by unfold Seg13.relationRow8255 at r8255; linear_combination r8255), (by unfold Seg13.relationRow8256 at r8256; linear_combination r8256), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg64
    refine ⟨rho 15386, rho 15387, rho 15388, rho 15389, rho 15390,
      (by unfold Seg13.relationRow8257 at r8257; linear_combination r8257), (by unfold Seg13.relationRow8258 at r8258; linear_combination r8258), (by unfold Seg13.relationRow8259 at r8259; linear_combination r8259), (by unfold Seg13.relationRow8260 at r8260; linear_combination r8260), (by unfold Seg13.relationRow8261 at r8261; linear_combination r8261), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg65
    refine ⟨rho 15391, rho 15392, rho 15393, rho 15394, rho 15395,
      (by unfold Seg13.relationRow8262 at r8262; linear_combination r8262), (by unfold Seg13.relationRow8263 at r8263; linear_combination r8263), (by unfold Seg13.relationRow8264 at r8264; linear_combination r8264), (by unfold Seg13.relationRow8265 at r8265; linear_combination r8265), (by unfold Seg13.relationRow8266 at r8266; linear_combination r8266), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg66
    refine ⟨rho 15396, rho 15397, rho 15398, rho 15399, rho 15400,
      (by unfold Seg13.relationRow8267 at r8267; linear_combination r8267), (by unfold Seg13.relationRow8268 at r8268; linear_combination r8268), (by unfold Seg13.relationRow8269 at r8269; linear_combination r8269), (by unfold Seg13.relationRow8270 at r8270; linear_combination r8270), (by unfold Seg13.relationRow8271 at r8271; linear_combination r8271), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg67
    refine ⟨rho 15401, rho 15402, rho 15403, rho 15404, rho 15405,
      (by unfold Seg13.relationRow8272 at r8272; linear_combination r8272), (by unfold Seg13.relationRow8273 at r8273; linear_combination r8273), (by unfold Seg13.relationRow8274 at r8274; linear_combination r8274), (by unfold Seg13.relationRow8275 at r8275; linear_combination r8275), (by unfold Seg13.relationRow8276 at r8276; linear_combination r8276), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg68
    refine ⟨rho 15406, rho 15407, rho 15408, rho 15409, rho 15410,
      (by unfold Seg13.relationRow8277 at r8277; linear_combination r8277), (by unfold Seg13.relationRow8278 at r8278; linear_combination r8278), (by unfold Seg13.relationRow8279 at r8279; linear_combination r8279), (by unfold Seg13.relationRow8280 at r8280; linear_combination r8280), (by unfold Seg13.relationRow8281 at r8281; linear_combination r8281), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode21350_c09b20.seg69
    refine ⟨rho 15411, rho 15412, rho 15413, rho 15414, rho 15415,
      (by unfold Seg13.relationRow8282 at r8282; linear_combination r8282), (by unfold Seg13.relationRow8283 at r8283; linear_combination r8283), (by unfold Seg13.relationRow8284 at r8284; linear_combination r8284), (by unfold Seg13.relationRow8285 at r8285; linear_combination r8285), (by unfold Seg13.relationRow8286 at r8286; linear_combination r8286), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.relation_sound_permSpec (rho 31) (rho 32) (rho 33) (rho 15060) (rho 15061) (rho 15062) (rho 15063) (rho 15064) (rho 15065) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.tctNode22DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.F) + (22 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg13ScpNode21Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode21.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

