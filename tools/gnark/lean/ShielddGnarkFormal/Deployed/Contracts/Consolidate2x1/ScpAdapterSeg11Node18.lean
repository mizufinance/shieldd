import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.ScpAdapterSeg11Base
import ShielddGnarkFormal.Deployed.StateCommitmentPathNode18.SemanticBridge
import ShielddGnarkFormal.Deployed.StateCommitmentPath.Projection

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg11_scp_node18_eq (rho : Nat -> Seg11.F) (h : Seg11.relation rho) :
    seg11ScpNode18Out rho =
      Shieldd.GnarkFormal.Poseidon4Bridge.permSpec4 ((545001158149490383238005163525397553024965043366546261617421270984613353336 : Seg11.F) + (19 : Seg11.F))
        (rho 40 + rho 8415) (rho 41 + rho 8416 + rho 8417)
        (rho 41 + rho 8418 + rho 8419) (rho 42 + rho 8420) := by
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
    _, _, _, _, _, p85, p86, p87, p88, p89,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _
  ⟩
  unfold Seg11.relationPart85 at p85
  rcases p85 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6845, r6846, r6847, r6848, r6849, r6850, r6851, r6852, r6853, r6854, r6855, r6856, r6857, r6858, r6859, r6860, r6861, r6862, r6863, r6864, r6865, r6866, r6867, r6868, r6869, r6870, r6871, r6872, r6873, r6874, r6875, r6876, r6877, r6878, r6879⟩
  unfold Seg11.relationPart86 at p86
  rcases p86 with ⟨r6880, r6881, r6882, r6883, r6884, r6885, r6886, r6887, r6888, r6889, r6890, r6891, r6892, r6893, r6894, r6895, r6896, r6897, r6898, r6899, r6900, r6901, r6902, r6903, r6904, r6905, r6906, r6907, r6908, r6909, r6910, r6911, r6912, r6913, r6914, r6915, r6916, r6917, r6918, r6919, r6920, r6921, r6922, r6923, r6924, r6925, r6926, r6927, r6928, r6929, r6930, r6931, r6932, r6933, r6934, r6935, r6936, r6937, r6938, r6939, r6940, r6941, r6942, r6943, r6944, r6945, r6946, r6947, r6948, r6949, r6950, r6951, r6952, r6953, r6954, r6955, r6956, r6957, r6958, r6959⟩
  unfold Seg11.relationPart87 at p87
  rcases p87 with ⟨r6960, r6961, r6962, r6963, r6964, r6965, r6966, r6967, r6968, r6969, r6970, r6971, r6972, r6973, r6974, r6975, r6976, r6977, r6978, r6979, r6980, r6981, r6982, r6983, r6984, r6985, r6986, r6987, r6988, r6989, r6990, r6991, r6992, r6993, r6994, r6995, r6996, r6997, r6998, r6999, r7000, r7001, r7002, r7003, r7004, r7005, r7006, r7007, r7008, r7009, r7010, r7011, r7012, r7013, r7014, r7015, r7016, r7017, r7018, r7019, r7020, r7021, r7022, r7023, r7024, r7025, r7026, r7027, r7028, r7029, r7030, r7031, r7032, r7033, r7034, r7035, r7036, r7037, r7038, r7039⟩
  unfold Seg11.relationPart88 at p88
  rcases p88 with ⟨r7040, r7041, r7042, r7043, r7044, r7045, r7046, r7047, r7048, r7049, r7050, r7051, r7052, r7053, r7054, r7055, r7056, r7057, r7058, r7059, r7060, r7061, r7062, r7063, r7064, r7065, r7066, r7067, r7068, r7069, r7070, r7071, r7072, r7073, r7074, r7075, r7076, r7077, r7078, r7079, r7080, r7081, r7082, r7083, r7084, r7085, r7086, r7087, r7088, r7089, r7090, r7091, r7092, r7093, r7094, r7095, r7096, r7097, r7098, r7099, r7100, r7101, r7102, r7103, r7104, r7105, r7106, r7107, r7108, r7109, r7110, r7111, r7112, r7113, r7114, r7115, r7116, r7117, r7118, r7119⟩
  unfold Seg11.relationPart89 at p89
  rcases p89 with ⟨r7120, r7121, r7122, r7123, r7124, r7125, r7126, r7127, r7128, r7129, r7130, r7131, r7132, r7133, r7134, r7135, r7136, r7137, r7138, r7139, r7140, r7141, r7142, r7143, r7144, r7145, r7146, r7147, r7148, r7149, r7150, r7151, r7152, r7153, r7154, r7155, r7156, r7157, r7158, r7159, r7160, r7161, r7162, r7163, r7164, r7165, r7166, r7167, r7168, r7169, r7170, r7171, r7172, r7173, r7174, r7175, r7176, r7177, r7178, r7179, r7180, r7181, r7182, r7183, r7184, r7185, r7186, r7187, r7188, r7189, r7190, r7191, r7192, r7193, r7194, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.relation (rho 40) (rho 41) (rho 42) (rho 8415) (rho 8416) (rho 8417) (rho 8418) (rho 8419) (rho 8420)
      (fun o0 o1 o2 o3 o4 => o0 = rho 8750 ∧ o1 = rho 8755 ∧ o2 = rho 8760 ∧ o3 = rho 8765 ∧ o4 = rho 8770) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg0
    refine ⟨rho 8421, rho 8422, rho 8423, rho 8424, rho 8425,
      (by unfold Seg11.relationRow6845 at r6845; linear_combination r6845), (by unfold Seg11.relationRow6846 at r6846; linear_combination r6846), (by unfold Seg11.relationRow6847 at r6847; linear_combination r6847), (by unfold Seg11.relationRow6848 at r6848; linear_combination r6848), (by unfold Seg11.relationRow6849 at r6849; linear_combination r6849), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg1
    refine ⟨rho 8426, rho 8427, rho 8428, rho 8429, rho 8430,
      (by unfold Seg11.relationRow6850 at r6850; linear_combination r6850), (by unfold Seg11.relationRow6851 at r6851; linear_combination r6851), (by unfold Seg11.relationRow6852 at r6852; linear_combination r6852), (by unfold Seg11.relationRow6853 at r6853; linear_combination r6853), (by unfold Seg11.relationRow6854 at r6854; linear_combination r6854), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg2
    refine ⟨rho 8431, rho 8432, rho 8433, rho 8434, rho 8435,
      (by unfold Seg11.relationRow6855 at r6855; linear_combination r6855), (by unfold Seg11.relationRow6856 at r6856; linear_combination r6856), (by unfold Seg11.relationRow6857 at r6857; linear_combination r6857), (by unfold Seg11.relationRow6858 at r6858; linear_combination r6858), (by unfold Seg11.relationRow6859 at r6859; linear_combination r6859), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg3
    refine ⟨rho 8436, rho 8437, rho 8438, rho 8439, rho 8440,
      (by unfold Seg11.relationRow6860 at r6860; linear_combination r6860), (by unfold Seg11.relationRow6861 at r6861; linear_combination r6861), (by unfold Seg11.relationRow6862 at r6862; linear_combination r6862), (by unfold Seg11.relationRow6863 at r6863; linear_combination r6863), (by unfold Seg11.relationRow6864 at r6864; linear_combination r6864), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg4
    refine ⟨rho 8441, rho 8442, rho 8443, rho 8444, rho 8445,
      (by unfold Seg11.relationRow6865 at r6865; linear_combination r6865), (by unfold Seg11.relationRow6866 at r6866; linear_combination r6866), (by unfold Seg11.relationRow6867 at r6867; linear_combination r6867), (by unfold Seg11.relationRow6868 at r6868; linear_combination r6868), (by unfold Seg11.relationRow6869 at r6869; linear_combination r6869), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg5
    refine ⟨rho 8446, rho 8447, rho 8448, rho 8449, rho 8450,
      (by unfold Seg11.relationRow6870 at r6870; linear_combination r6870), (by unfold Seg11.relationRow6871 at r6871; linear_combination r6871), (by unfold Seg11.relationRow6872 at r6872; linear_combination r6872), (by unfold Seg11.relationRow6873 at r6873; linear_combination r6873), (by unfold Seg11.relationRow6874 at r6874; linear_combination r6874), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg6
    refine ⟨rho 8451, rho 8452, rho 8453, rho 8454, rho 8455,
      (by unfold Seg11.relationRow6875 at r6875; linear_combination r6875), (by unfold Seg11.relationRow6876 at r6876; linear_combination r6876), (by unfold Seg11.relationRow6877 at r6877; linear_combination r6877), (by unfold Seg11.relationRow6878 at r6878; linear_combination r6878), (by unfold Seg11.relationRow6879 at r6879; linear_combination r6879), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg7
    refine ⟨rho 8456, rho 8457, rho 8458, rho 8459, rho 8460,
      (by unfold Seg11.relationRow6880 at r6880; linear_combination r6880), (by unfold Seg11.relationRow6881 at r6881; linear_combination r6881), (by unfold Seg11.relationRow6882 at r6882; linear_combination r6882), (by unfold Seg11.relationRow6883 at r6883; linear_combination r6883), (by unfold Seg11.relationRow6884 at r6884; linear_combination r6884), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg8
    refine ⟨rho 8461, rho 8462, rho 8463, rho 8464, rho 8465,
      (by unfold Seg11.relationRow6885 at r6885; linear_combination r6885), (by unfold Seg11.relationRow6886 at r6886; linear_combination r6886), (by unfold Seg11.relationRow6887 at r6887; linear_combination r6887), (by unfold Seg11.relationRow6888 at r6888; linear_combination r6888), (by unfold Seg11.relationRow6889 at r6889; linear_combination r6889), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg9
    refine ⟨rho 8466, rho 8467, rho 8468, rho 8469, rho 8470,
      (by unfold Seg11.relationRow6890 at r6890; linear_combination r6890), (by unfold Seg11.relationRow6891 at r6891; linear_combination r6891), (by unfold Seg11.relationRow6892 at r6892; linear_combination r6892), (by unfold Seg11.relationRow6893 at r6893; linear_combination r6893), (by unfold Seg11.relationRow6894 at r6894; linear_combination r6894), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg10
    refine ⟨rho 8471, rho 8472, rho 8473, rho 8474, rho 8475,
      (by unfold Seg11.relationRow6895 at r6895; linear_combination r6895), (by unfold Seg11.relationRow6896 at r6896; linear_combination r6896), (by unfold Seg11.relationRow6897 at r6897; linear_combination r6897), (by unfold Seg11.relationRow6898 at r6898; linear_combination r6898), (by unfold Seg11.relationRow6899 at r6899; linear_combination r6899), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg11
    refine ⟨rho 8476, rho 8477, rho 8478, rho 8479, rho 8480,
      (by unfold Seg11.relationRow6900 at r6900; linear_combination r6900), (by unfold Seg11.relationRow6901 at r6901; linear_combination r6901), (by unfold Seg11.relationRow6902 at r6902; linear_combination r6902), (by unfold Seg11.relationRow6903 at r6903; linear_combination r6903), (by unfold Seg11.relationRow6904 at r6904; linear_combination r6904), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg12
    refine ⟨rho 8481, rho 8482, rho 8483, rho 8484, rho 8485,
      (by unfold Seg11.relationRow6905 at r6905; linear_combination r6905), (by unfold Seg11.relationRow6906 at r6906; linear_combination r6906), (by unfold Seg11.relationRow6907 at r6907; linear_combination r6907), (by unfold Seg11.relationRow6908 at r6908; linear_combination r6908), (by unfold Seg11.relationRow6909 at r6909; linear_combination r6909), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg13
    refine ⟨rho 8486, rho 8487, rho 8488, rho 8489, rho 8490,
      (by unfold Seg11.relationRow6910 at r6910; linear_combination r6910), (by unfold Seg11.relationRow6911 at r6911; linear_combination r6911), (by unfold Seg11.relationRow6912 at r6912; linear_combination r6912), (by unfold Seg11.relationRow6913 at r6913; linear_combination r6913), (by unfold Seg11.relationRow6914 at r6914; linear_combination r6914), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg14
    refine ⟨rho 8491, rho 8492, rho 8493, rho 8494, rho 8495,
      (by unfold Seg11.relationRow6915 at r6915; linear_combination r6915), (by unfold Seg11.relationRow6916 at r6916; linear_combination r6916), (by unfold Seg11.relationRow6917 at r6917; linear_combination r6917), (by unfold Seg11.relationRow6918 at r6918; linear_combination r6918), (by unfold Seg11.relationRow6919 at r6919; linear_combination r6919), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg15
    refine ⟨rho 8496, rho 8497, rho 8498, rho 8499, rho 8500,
      (by unfold Seg11.relationRow6920 at r6920; linear_combination r6920), (by unfold Seg11.relationRow6921 at r6921; linear_combination r6921), (by unfold Seg11.relationRow6922 at r6922; linear_combination r6922), (by unfold Seg11.relationRow6923 at r6923; linear_combination r6923), (by unfold Seg11.relationRow6924 at r6924; linear_combination r6924), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg16
    refine ⟨rho 8501, rho 8502, rho 8503, rho 8504, rho 8505,
      (by unfold Seg11.relationRow6925 at r6925; linear_combination r6925), (by unfold Seg11.relationRow6926 at r6926; linear_combination r6926), (by unfold Seg11.relationRow6927 at r6927; linear_combination r6927), (by unfold Seg11.relationRow6928 at r6928; linear_combination r6928), (by unfold Seg11.relationRow6929 at r6929; linear_combination r6929), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg17
    refine ⟨rho 8506, rho 8507, rho 8508, rho 8509, rho 8510,
      (by unfold Seg11.relationRow6930 at r6930; linear_combination r6930), (by unfold Seg11.relationRow6931 at r6931; linear_combination r6931), (by unfold Seg11.relationRow6932 at r6932; linear_combination r6932), (by unfold Seg11.relationRow6933 at r6933; linear_combination r6933), (by unfold Seg11.relationRow6934 at r6934; linear_combination r6934), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg18
    refine ⟨rho 8511, rho 8512, rho 8513, rho 8514, rho 8515,
      (by unfold Seg11.relationRow6935 at r6935; linear_combination r6935), (by unfold Seg11.relationRow6936 at r6936; linear_combination r6936), (by unfold Seg11.relationRow6937 at r6937; linear_combination r6937), (by unfold Seg11.relationRow6938 at r6938; linear_combination r6938), (by unfold Seg11.relationRow6939 at r6939; linear_combination r6939), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg19
    refine ⟨rho 8516, rho 8517, rho 8518, rho 8519, rho 8520,
      (by unfold Seg11.relationRow6940 at r6940; linear_combination r6940), (by unfold Seg11.relationRow6941 at r6941; linear_combination r6941), (by unfold Seg11.relationRow6942 at r6942; linear_combination r6942), (by unfold Seg11.relationRow6943 at r6943; linear_combination r6943), (by unfold Seg11.relationRow6944 at r6944; linear_combination r6944), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg20
    refine ⟨rho 8521, rho 8522, rho 8523, rho 8524, rho 8525,
      (by unfold Seg11.relationRow6945 at r6945; linear_combination r6945), (by unfold Seg11.relationRow6946 at r6946; linear_combination r6946), (by unfold Seg11.relationRow6947 at r6947; linear_combination r6947), (by unfold Seg11.relationRow6948 at r6948; linear_combination r6948), (by unfold Seg11.relationRow6949 at r6949; linear_combination r6949), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg21
    refine ⟨rho 8526, rho 8527, rho 8528, rho 8529, rho 8530,
      (by unfold Seg11.relationRow6950 at r6950; linear_combination r6950), (by unfold Seg11.relationRow6951 at r6951; linear_combination r6951), (by unfold Seg11.relationRow6952 at r6952; linear_combination r6952), (by unfold Seg11.relationRow6953 at r6953; linear_combination r6953), (by unfold Seg11.relationRow6954 at r6954; linear_combination r6954), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg22
    refine ⟨rho 8531, rho 8532, rho 8533, rho 8534, rho 8535,
      (by unfold Seg11.relationRow6955 at r6955; linear_combination r6955), (by unfold Seg11.relationRow6956 at r6956; linear_combination r6956), (by unfold Seg11.relationRow6957 at r6957; linear_combination r6957), (by unfold Seg11.relationRow6958 at r6958; linear_combination r6958), (by unfold Seg11.relationRow6959 at r6959; linear_combination r6959), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg23
    refine ⟨rho 8536, rho 8537, rho 8538, rho 8539, rho 8540,
      (by unfold Seg11.relationRow6960 at r6960; linear_combination r6960), (by unfold Seg11.relationRow6961 at r6961; linear_combination r6961), (by unfold Seg11.relationRow6962 at r6962; linear_combination r6962), (by unfold Seg11.relationRow6963 at r6963; linear_combination r6963), (by unfold Seg11.relationRow6964 at r6964; linear_combination r6964), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg24
    refine ⟨rho 8541, rho 8542, rho 8543, rho 8544, rho 8545,
      (by unfold Seg11.relationRow6965 at r6965; linear_combination r6965), (by unfold Seg11.relationRow6966 at r6966; linear_combination r6966), (by unfold Seg11.relationRow6967 at r6967; linear_combination r6967), (by unfold Seg11.relationRow6968 at r6968; linear_combination r6968), (by unfold Seg11.relationRow6969 at r6969; linear_combination r6969), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg25
    refine ⟨rho 8546, rho 8547, rho 8548, rho 8549, rho 8550,
      (by unfold Seg11.relationRow6970 at r6970; linear_combination r6970), (by unfold Seg11.relationRow6971 at r6971; linear_combination r6971), (by unfold Seg11.relationRow6972 at r6972; linear_combination r6972), (by unfold Seg11.relationRow6973 at r6973; linear_combination r6973), (by unfold Seg11.relationRow6974 at r6974; linear_combination r6974), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg26
    refine ⟨rho 8551, rho 8552, rho 8553, rho 8554, rho 8555,
      (by unfold Seg11.relationRow6975 at r6975; linear_combination r6975), (by unfold Seg11.relationRow6976 at r6976; linear_combination r6976), (by unfold Seg11.relationRow6977 at r6977; linear_combination r6977), (by unfold Seg11.relationRow6978 at r6978; linear_combination r6978), (by unfold Seg11.relationRow6979 at r6979; linear_combination r6979), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg27
    refine ⟨rho 8556, rho 8557, rho 8558, rho 8559, rho 8560,
      (by unfold Seg11.relationRow6980 at r6980; linear_combination r6980), (by unfold Seg11.relationRow6981 at r6981; linear_combination r6981), (by unfold Seg11.relationRow6982 at r6982; linear_combination r6982), (by unfold Seg11.relationRow6983 at r6983; linear_combination r6983), (by unfold Seg11.relationRow6984 at r6984; linear_combination r6984), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg28
    refine ⟨rho 8561, rho 8562, rho 8563, rho 8564, rho 8565,
      (by unfold Seg11.relationRow6985 at r6985; linear_combination r6985), (by unfold Seg11.relationRow6986 at r6986; linear_combination r6986), (by unfold Seg11.relationRow6987 at r6987; linear_combination r6987), (by unfold Seg11.relationRow6988 at r6988; linear_combination r6988), (by unfold Seg11.relationRow6989 at r6989; linear_combination r6989), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg29
    refine ⟨rho 8566, rho 8567, rho 8568, rho 8569, rho 8570,
      (by unfold Seg11.relationRow6990 at r6990; linear_combination r6990), (by unfold Seg11.relationRow6991 at r6991; linear_combination r6991), (by unfold Seg11.relationRow6992 at r6992; linear_combination r6992), (by unfold Seg11.relationRow6993 at r6993; linear_combination r6993), (by unfold Seg11.relationRow6994 at r6994; linear_combination r6994), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg30
    refine ⟨rho 8571, rho 8572, rho 8573, rho 8574, rho 8575,
      (by unfold Seg11.relationRow6995 at r6995; linear_combination r6995), (by unfold Seg11.relationRow6996 at r6996; linear_combination r6996), (by unfold Seg11.relationRow6997 at r6997; linear_combination r6997), (by unfold Seg11.relationRow6998 at r6998; linear_combination r6998), (by unfold Seg11.relationRow6999 at r6999; linear_combination r6999), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg31
    refine ⟨rho 8576, rho 8577, rho 8578, rho 8579, rho 8580,
      (by unfold Seg11.relationRow7000 at r7000; linear_combination r7000), (by unfold Seg11.relationRow7001 at r7001; linear_combination r7001), (by unfold Seg11.relationRow7002 at r7002; linear_combination r7002), (by unfold Seg11.relationRow7003 at r7003; linear_combination r7003), (by unfold Seg11.relationRow7004 at r7004; linear_combination r7004), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg32
    refine ⟨rho 8581, rho 8582, rho 8583, rho 8584, rho 8585,
      (by unfold Seg11.relationRow7005 at r7005; linear_combination r7005), (by unfold Seg11.relationRow7006 at r7006; linear_combination r7006), (by unfold Seg11.relationRow7007 at r7007; linear_combination r7007), (by unfold Seg11.relationRow7008 at r7008; linear_combination r7008), (by unfold Seg11.relationRow7009 at r7009; linear_combination r7009), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg33
    refine ⟨rho 8586, rho 8587, rho 8588, rho 8589, rho 8590,
      (by unfold Seg11.relationRow7010 at r7010; linear_combination r7010), (by unfold Seg11.relationRow7011 at r7011; linear_combination r7011), (by unfold Seg11.relationRow7012 at r7012; linear_combination r7012), (by unfold Seg11.relationRow7013 at r7013; linear_combination r7013), (by unfold Seg11.relationRow7014 at r7014; linear_combination r7014), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg34
    refine ⟨rho 8591, rho 8592, rho 8593, rho 8594, rho 8595,
      (by unfold Seg11.relationRow7015 at r7015; linear_combination r7015), (by unfold Seg11.relationRow7016 at r7016; linear_combination r7016), (by unfold Seg11.relationRow7017 at r7017; linear_combination r7017), (by unfold Seg11.relationRow7018 at r7018; linear_combination r7018), (by unfold Seg11.relationRow7019 at r7019; linear_combination r7019), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg35
    refine ⟨rho 8596, rho 8597, rho 8598, rho 8599, rho 8600,
      (by unfold Seg11.relationRow7020 at r7020; linear_combination r7020), (by unfold Seg11.relationRow7021 at r7021; linear_combination r7021), (by unfold Seg11.relationRow7022 at r7022; linear_combination r7022), (by unfold Seg11.relationRow7023 at r7023; linear_combination r7023), (by unfold Seg11.relationRow7024 at r7024; linear_combination r7024), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg36
    refine ⟨rho 8601, rho 8602, rho 8603, rho 8604, rho 8605,
      (by unfold Seg11.relationRow7025 at r7025; linear_combination r7025), (by unfold Seg11.relationRow7026 at r7026; linear_combination r7026), (by unfold Seg11.relationRow7027 at r7027; linear_combination r7027), (by unfold Seg11.relationRow7028 at r7028; linear_combination r7028), (by unfold Seg11.relationRow7029 at r7029; linear_combination r7029), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg37
    refine ⟨rho 8606, rho 8607, rho 8608, rho 8609, rho 8610,
      (by unfold Seg11.relationRow7030 at r7030; linear_combination r7030), (by unfold Seg11.relationRow7031 at r7031; linear_combination r7031), (by unfold Seg11.relationRow7032 at r7032; linear_combination r7032), (by unfold Seg11.relationRow7033 at r7033; linear_combination r7033), (by unfold Seg11.relationRow7034 at r7034; linear_combination r7034), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg38
    refine ⟨rho 8611, rho 8612, rho 8613, rho 8614, rho 8615,
      (by unfold Seg11.relationRow7035 at r7035; linear_combination r7035), (by unfold Seg11.relationRow7036 at r7036; linear_combination r7036), (by unfold Seg11.relationRow7037 at r7037; linear_combination r7037), (by unfold Seg11.relationRow7038 at r7038; linear_combination r7038), (by unfold Seg11.relationRow7039 at r7039; linear_combination r7039), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg39
    refine ⟨rho 8616, rho 8617, rho 8618, rho 8619, rho 8620,
      (by unfold Seg11.relationRow7040 at r7040; linear_combination r7040), (by unfold Seg11.relationRow7041 at r7041; linear_combination r7041), (by unfold Seg11.relationRow7042 at r7042; linear_combination r7042), (by unfold Seg11.relationRow7043 at r7043; linear_combination r7043), (by unfold Seg11.relationRow7044 at r7044; linear_combination r7044), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg40
    refine ⟨rho 8621, rho 8622, rho 8623, rho 8624, rho 8625,
      (by unfold Seg11.relationRow7045 at r7045; linear_combination r7045), (by unfold Seg11.relationRow7046 at r7046; linear_combination r7046), (by unfold Seg11.relationRow7047 at r7047; linear_combination r7047), (by unfold Seg11.relationRow7048 at r7048; linear_combination r7048), (by unfold Seg11.relationRow7049 at r7049; linear_combination r7049), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg41
    refine ⟨rho 8626, rho 8627, rho 8628, rho 8629, rho 8630,
      (by unfold Seg11.relationRow7050 at r7050; linear_combination r7050), (by unfold Seg11.relationRow7051 at r7051; linear_combination r7051), (by unfold Seg11.relationRow7052 at r7052; linear_combination r7052), (by unfold Seg11.relationRow7053 at r7053; linear_combination r7053), (by unfold Seg11.relationRow7054 at r7054; linear_combination r7054), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg42
    refine ⟨rho 8631, rho 8632, rho 8633, rho 8634, rho 8635,
      (by unfold Seg11.relationRow7055 at r7055; linear_combination r7055), (by unfold Seg11.relationRow7056 at r7056; linear_combination r7056), (by unfold Seg11.relationRow7057 at r7057; linear_combination r7057), (by unfold Seg11.relationRow7058 at r7058; linear_combination r7058), (by unfold Seg11.relationRow7059 at r7059; linear_combination r7059), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg43
    refine ⟨rho 8636, rho 8637, rho 8638, rho 8639, rho 8640,
      (by unfold Seg11.relationRow7060 at r7060; linear_combination r7060), (by unfold Seg11.relationRow7061 at r7061; linear_combination r7061), (by unfold Seg11.relationRow7062 at r7062; linear_combination r7062), (by unfold Seg11.relationRow7063 at r7063; linear_combination r7063), (by unfold Seg11.relationRow7064 at r7064; linear_combination r7064), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg44
    refine ⟨rho 8641, rho 8642, rho 8643, rho 8644, rho 8645,
      (by unfold Seg11.relationRow7065 at r7065; linear_combination r7065), (by unfold Seg11.relationRow7066 at r7066; linear_combination r7066), (by unfold Seg11.relationRow7067 at r7067; linear_combination r7067), (by unfold Seg11.relationRow7068 at r7068; linear_combination r7068), (by unfold Seg11.relationRow7069 at r7069; linear_combination r7069), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg45
    refine ⟨rho 8646, rho 8647, rho 8648, rho 8649, rho 8650,
      (by unfold Seg11.relationRow7070 at r7070; linear_combination r7070), (by unfold Seg11.relationRow7071 at r7071; linear_combination r7071), (by unfold Seg11.relationRow7072 at r7072; linear_combination r7072), (by unfold Seg11.relationRow7073 at r7073; linear_combination r7073), (by unfold Seg11.relationRow7074 at r7074; linear_combination r7074), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg46
    refine ⟨rho 8651, rho 8652, rho 8653, rho 8654, rho 8655,
      (by unfold Seg11.relationRow7075 at r7075; linear_combination r7075), (by unfold Seg11.relationRow7076 at r7076; linear_combination r7076), (by unfold Seg11.relationRow7077 at r7077; linear_combination r7077), (by unfold Seg11.relationRow7078 at r7078; linear_combination r7078), (by unfold Seg11.relationRow7079 at r7079; linear_combination r7079), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg47
    refine ⟨rho 8656, rho 8657, rho 8658, rho 8659, rho 8660,
      (by unfold Seg11.relationRow7080 at r7080; linear_combination r7080), (by unfold Seg11.relationRow7081 at r7081; linear_combination r7081), (by unfold Seg11.relationRow7082 at r7082; linear_combination r7082), (by unfold Seg11.relationRow7083 at r7083; linear_combination r7083), (by unfold Seg11.relationRow7084 at r7084; linear_combination r7084), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg48
    refine ⟨rho 8661, rho 8662, rho 8663, rho 8664, rho 8665,
      (by unfold Seg11.relationRow7085 at r7085; linear_combination r7085), (by unfold Seg11.relationRow7086 at r7086; linear_combination r7086), (by unfold Seg11.relationRow7087 at r7087; linear_combination r7087), (by unfold Seg11.relationRow7088 at r7088; linear_combination r7088), (by unfold Seg11.relationRow7089 at r7089; linear_combination r7089), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg49
    refine ⟨rho 8666, rho 8667, rho 8668, rho 8669, rho 8670,
      (by unfold Seg11.relationRow7090 at r7090; linear_combination r7090), (by unfold Seg11.relationRow7091 at r7091; linear_combination r7091), (by unfold Seg11.relationRow7092 at r7092; linear_combination r7092), (by unfold Seg11.relationRow7093 at r7093; linear_combination r7093), (by unfold Seg11.relationRow7094 at r7094; linear_combination r7094), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg50
    refine ⟨rho 8671, rho 8672, rho 8673, rho 8674, rho 8675,
      (by unfold Seg11.relationRow7095 at r7095; linear_combination r7095), (by unfold Seg11.relationRow7096 at r7096; linear_combination r7096), (by unfold Seg11.relationRow7097 at r7097; linear_combination r7097), (by unfold Seg11.relationRow7098 at r7098; linear_combination r7098), (by unfold Seg11.relationRow7099 at r7099; linear_combination r7099), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg51
    refine ⟨rho 8676, rho 8677, rho 8678, rho 8679, rho 8680,
      (by unfold Seg11.relationRow7100 at r7100; linear_combination r7100), (by unfold Seg11.relationRow7101 at r7101; linear_combination r7101), (by unfold Seg11.relationRow7102 at r7102; linear_combination r7102), (by unfold Seg11.relationRow7103 at r7103; linear_combination r7103), (by unfold Seg11.relationRow7104 at r7104; linear_combination r7104), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg52
    refine ⟨rho 8681, rho 8682, rho 8683, rho 8684, rho 8685,
      (by unfold Seg11.relationRow7105 at r7105; linear_combination r7105), (by unfold Seg11.relationRow7106 at r7106; linear_combination r7106), (by unfold Seg11.relationRow7107 at r7107; linear_combination r7107), (by unfold Seg11.relationRow7108 at r7108; linear_combination r7108), (by unfold Seg11.relationRow7109 at r7109; linear_combination r7109), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg53
    refine ⟨rho 8686, rho 8687, rho 8688, rho 8689, rho 8690,
      (by unfold Seg11.relationRow7110 at r7110; linear_combination r7110), (by unfold Seg11.relationRow7111 at r7111; linear_combination r7111), (by unfold Seg11.relationRow7112 at r7112; linear_combination r7112), (by unfold Seg11.relationRow7113 at r7113; linear_combination r7113), (by unfold Seg11.relationRow7114 at r7114; linear_combination r7114), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg54
    refine ⟨rho 8691, rho 8692, rho 8693, rho 8694, rho 8695,
      (by unfold Seg11.relationRow7115 at r7115; linear_combination r7115), (by unfold Seg11.relationRow7116 at r7116; linear_combination r7116), (by unfold Seg11.relationRow7117 at r7117; linear_combination r7117), (by unfold Seg11.relationRow7118 at r7118; linear_combination r7118), (by unfold Seg11.relationRow7119 at r7119; linear_combination r7119), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg55
    refine ⟨rho 8696, rho 8697, rho 8698, rho 8699, rho 8700,
      (by unfold Seg11.relationRow7120 at r7120; linear_combination r7120), (by unfold Seg11.relationRow7121 at r7121; linear_combination r7121), (by unfold Seg11.relationRow7122 at r7122; linear_combination r7122), (by unfold Seg11.relationRow7123 at r7123; linear_combination r7123), (by unfold Seg11.relationRow7124 at r7124; linear_combination r7124), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg56
    refine ⟨rho 8701, rho 8702, rho 8703, rho 8704, rho 8705,
      (by unfold Seg11.relationRow7125 at r7125; linear_combination r7125), (by unfold Seg11.relationRow7126 at r7126; linear_combination r7126), (by unfold Seg11.relationRow7127 at r7127; linear_combination r7127), (by unfold Seg11.relationRow7128 at r7128; linear_combination r7128), (by unfold Seg11.relationRow7129 at r7129; linear_combination r7129), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg57
    refine ⟨rho 8706, rho 8707, rho 8708, rho 8709, rho 8710,
      (by unfold Seg11.relationRow7130 at r7130; linear_combination r7130), (by unfold Seg11.relationRow7131 at r7131; linear_combination r7131), (by unfold Seg11.relationRow7132 at r7132; linear_combination r7132), (by unfold Seg11.relationRow7133 at r7133; linear_combination r7133), (by unfold Seg11.relationRow7134 at r7134; linear_combination r7134), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg58
    refine ⟨rho 8711, rho 8712, rho 8713, rho 8714, rho 8715,
      (by unfold Seg11.relationRow7135 at r7135; linear_combination r7135), (by unfold Seg11.relationRow7136 at r7136; linear_combination r7136), (by unfold Seg11.relationRow7137 at r7137; linear_combination r7137), (by unfold Seg11.relationRow7138 at r7138; linear_combination r7138), (by unfold Seg11.relationRow7139 at r7139; linear_combination r7139), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg59
    refine ⟨rho 8716, rho 8717, rho 8718, rho 8719, rho 8720,
      (by unfold Seg11.relationRow7140 at r7140; linear_combination r7140), (by unfold Seg11.relationRow7141 at r7141; linear_combination r7141), (by unfold Seg11.relationRow7142 at r7142; linear_combination r7142), (by unfold Seg11.relationRow7143 at r7143; linear_combination r7143), (by unfold Seg11.relationRow7144 at r7144; linear_combination r7144), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg60
    refine ⟨rho 8721, rho 8722, rho 8723, rho 8724, rho 8725,
      (by unfold Seg11.relationRow7145 at r7145; linear_combination r7145), (by unfold Seg11.relationRow7146 at r7146; linear_combination r7146), (by unfold Seg11.relationRow7147 at r7147; linear_combination r7147), (by unfold Seg11.relationRow7148 at r7148; linear_combination r7148), (by unfold Seg11.relationRow7149 at r7149; linear_combination r7149), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg61
    refine ⟨rho 8726, rho 8727, rho 8728, rho 8729, rho 8730,
      (by unfold Seg11.relationRow7150 at r7150; linear_combination r7150), (by unfold Seg11.relationRow7151 at r7151; linear_combination r7151), (by unfold Seg11.relationRow7152 at r7152; linear_combination r7152), (by unfold Seg11.relationRow7153 at r7153; linear_combination r7153), (by unfold Seg11.relationRow7154 at r7154; linear_combination r7154), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg62
    refine ⟨rho 8731, rho 8732, rho 8733, rho 8734, rho 8735,
      (by unfold Seg11.relationRow7155 at r7155; linear_combination r7155), (by unfold Seg11.relationRow7156 at r7156; linear_combination r7156), (by unfold Seg11.relationRow7157 at r7157; linear_combination r7157), (by unfold Seg11.relationRow7158 at r7158; linear_combination r7158), (by unfold Seg11.relationRow7159 at r7159; linear_combination r7159), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg63
    refine ⟨rho 8736, rho 8737, rho 8738, rho 8739, rho 8740,
      (by unfold Seg11.relationRow7160 at r7160; linear_combination r7160), (by unfold Seg11.relationRow7161 at r7161; linear_combination r7161), (by unfold Seg11.relationRow7162 at r7162; linear_combination r7162), (by unfold Seg11.relationRow7163 at r7163; linear_combination r7163), (by unfold Seg11.relationRow7164 at r7164; linear_combination r7164), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg64
    refine ⟨rho 8741, rho 8742, rho 8743, rho 8744, rho 8745,
      (by unfold Seg11.relationRow7165 at r7165; linear_combination r7165), (by unfold Seg11.relationRow7166 at r7166; linear_combination r7166), (by unfold Seg11.relationRow7167 at r7167; linear_combination r7167), (by unfold Seg11.relationRow7168 at r7168; linear_combination r7168), (by unfold Seg11.relationRow7169 at r7169; linear_combination r7169), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg65
    refine ⟨rho 8746, rho 8747, rho 8748, rho 8749, rho 8750,
      (by unfold Seg11.relationRow7170 at r7170; linear_combination r7170), (by unfold Seg11.relationRow7171 at r7171; linear_combination r7171), (by unfold Seg11.relationRow7172 at r7172; linear_combination r7172), (by unfold Seg11.relationRow7173 at r7173; linear_combination r7173), (by unfold Seg11.relationRow7174 at r7174; linear_combination r7174), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg66
    refine ⟨rho 8751, rho 8752, rho 8753, rho 8754, rho 8755,
      (by unfold Seg11.relationRow7175 at r7175; linear_combination r7175), (by unfold Seg11.relationRow7176 at r7176; linear_combination r7176), (by unfold Seg11.relationRow7177 at r7177; linear_combination r7177), (by unfold Seg11.relationRow7178 at r7178; linear_combination r7178), (by unfold Seg11.relationRow7179 at r7179; linear_combination r7179), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg67
    refine ⟨rho 8756, rho 8757, rho 8758, rho 8759, rho 8760,
      (by unfold Seg11.relationRow7180 at r7180; linear_combination r7180), (by unfold Seg11.relationRow7181 at r7181; linear_combination r7181), (by unfold Seg11.relationRow7182 at r7182; linear_combination r7182), (by unfold Seg11.relationRow7183 at r7183; linear_combination r7183), (by unfold Seg11.relationRow7184 at r7184; linear_combination r7184), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg68
    refine ⟨rho 8761, rho 8762, rho 8763, rho 8764, rho 8765,
      (by unfold Seg11.relationRow7185 at r7185; linear_combination r7185), (by unfold Seg11.relationRow7186 at r7186; linear_combination r7186), (by unfold Seg11.relationRow7187 at r7187; linear_combination r7187), (by unfold Seg11.relationRow7188 at r7188; linear_combination r7188), (by unfold Seg11.relationRow7189 at r7189; linear_combination r7189), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.GadgetStateCommitmentPathNode18350_3e0c44.seg69
    refine ⟨rho 8766, rho 8767, rho 8768, rho 8769, rho 8770,
      (by unfold Seg11.relationRow7190 at r7190; linear_combination r7190), (by unfold Seg11.relationRow7191 at r7191; linear_combination r7191), (by unfold Seg11.relationRow7192 at r7192; linear_combination r7192), (by unfold Seg11.relationRow7193 at r7193; linear_combination r7193), (by unfold Seg11.relationRow7194 at r7194; linear_combination r7194), ?_⟩
    exact ⟨rfl, rfl, rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.relation_sound_permSpec (rho 40) (rho 41) (rho 42) (rho 8415) (rho 8416) (rho 8417) (rho 8418) (rho 8419) (rho 8420) _ hrel
  have hd : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.tctNode19DomainLit = (545001158149490383238005163525397553024965043366546261617421270984613353336 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.F) + (19 : Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.F) := by
    decide
  rcases hs with ⟨o0, o1, o2, o3, o4, ⟨rfl, rfl, rfl, rfl, rfl⟩, hs⟩
  rw [hd] at hs
  simpa [seg11ScpNode18Out, Shieldd.GnarkFormal.Deployed.StateCommitmentPathNode18.s38_1,
    Shieldd.GnarkFormal.Deployed.Poseidon4Link.row5] using hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

