import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg5Base
import ShielddGnarkFormal.Deployed.DtkIvkPoseidon.SemanticBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg5_poseidon_eq (rho : Nat -> Seg5.F) (h : Seg5.relation rho) :
    rho 9 + 2111115437357092606062206234695386632838870926408408195193685246394721360383 * rho 10 =
      Shieldd.GnarkFormal.Poseidon2Bridge.permSpec2
        (9361307723838134966014044876631201920149619 : Seg5.F) (rho 8) (rho 912 - rho 572) := by
  unfold Seg5.relation at h
  rcases h with ⟨
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, p13, p14, p15, p16, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _,
    _, _, _, _, _, _, _, _, _, _
  ⟩
  unfold Seg5.relationPart13 at p13
  rcases p13 with ⟨_, _, _, _, _, _, r1046, r1047, r1048, r1049, r1050, r1051, r1052, r1053, r1054, r1055, r1056, r1057, r1058, r1059, r1060, r1061, r1062, r1063, r1064, r1065, r1066, r1067, r1068, r1069, r1070, r1071, r1072, r1073, r1074, r1075, r1076, r1077, r1078, r1079, r1080, r1081, r1082, r1083, r1084, r1085, r1086, r1087, r1088, r1089, r1090, r1091, r1092, r1093, r1094, r1095, r1096, r1097, r1098, r1099, r1100, r1101, r1102, r1103, r1104, r1105, r1106, r1107, r1108, r1109, r1110, r1111, r1112, r1113, r1114, r1115, r1116, r1117, r1118, r1119⟩
  unfold Seg5.relationPart14 at p14
  rcases p14 with ⟨r1120, r1121, r1122, r1123, r1124, r1125, r1126, r1127, r1128, r1129, r1130, r1131, r1132, r1133, r1134, r1135, r1136, r1137, r1138, r1139, r1140, r1141, r1142, r1143, r1144, r1145, r1146, r1147, r1148, r1149, r1150, r1151, r1152, r1153, r1154, r1155, r1156, r1157, r1158, r1159, r1160, r1161, r1162, r1163, r1164, r1165, r1166, r1167, r1168, r1169, r1170, r1171, r1172, r1173, r1174, r1175, r1176, r1177, r1178, r1179, r1180, r1181, r1182, r1183, r1184, r1185, r1186, r1187, r1188, r1189, r1190, r1191, r1192, r1193, r1194, r1195, r1196, r1197, r1198, r1199⟩
  unfold Seg5.relationPart15 at p15
  rcases p15 with ⟨r1200, r1201, r1202, r1203, r1204, r1205, r1206, r1207, r1208, r1209, r1210, r1211, r1212, r1213, r1214, r1215, r1216, r1217, r1218, r1219, r1220, r1221, r1222, r1223, r1224, r1225, r1226, r1227, r1228, r1229, r1230, r1231, r1232, r1233, r1234, r1235, r1236, r1237, r1238, r1239, r1240, r1241, r1242, r1243, r1244, r1245, r1246, r1247, r1248, r1249, r1250, r1251, r1252, r1253, r1254, r1255, r1256, r1257, r1258, r1259, r1260, r1261, r1262, r1263, r1264, r1265, r1266, r1267, r1268, r1269, r1270, r1271, r1272, r1273, r1274, r1275, r1276, r1277, r1278, r1279⟩
  unfold Seg5.relationPart16 at p16
  rcases p16 with ⟨r1280, r1281, r1282, r1283, r1284, r1285, r1286, r1287, r1288, r1289, r1290, r1291, r1292, r1293, r1294, r1295, r1296, r1297, r1298, r1299, r1300, r1301, r1302, r1303, r1304, r1305, r1306, r1307, r1308, r1309, r1310, r1311, r1312, r1313, r1314, r1315, r1316, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩
  have hrel : Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.relation (rho 8) (rho 572) (rho 912) (fun x y z => x = rho 1172 ∧ y = rho 1177 ∧ z = rho 1182) := by
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.relation
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg0
    refine ⟨rho 913, rho 914, rho 915, rho 916, rho 917, (by simpa [Seg5.relationRow1046] using r1046), (by simpa [Seg5.relationRow1047] using r1047), (by simpa [Seg5.relationRow1048] using r1048), (by simpa [Seg5.relationRow1049] using r1049), (by simpa [Seg5.relationRow1050] using r1050), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg1
    refine ⟨rho 918, rho 919, rho 920, rho 921, rho 922, (by simpa [Seg5.relationRow1051] using r1051), (by simpa [Seg5.relationRow1052] using r1052), (by simpa [Seg5.relationRow1053] using r1053), (by simpa [Seg5.relationRow1054] using r1054), (by simpa [Seg5.relationRow1055] using r1055), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg2
    refine ⟨rho 923, rho 924, rho 925, rho 926, rho 927, (by simpa [Seg5.relationRow1056] using r1056), (by simpa [Seg5.relationRow1057] using r1057), (by simpa [Seg5.relationRow1058] using r1058), (by simpa [Seg5.relationRow1059] using r1059), (by simpa [Seg5.relationRow1060] using r1060), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg3
    refine ⟨rho 928, rho 929, rho 930, rho 931, rho 932, (by simpa [Seg5.relationRow1061] using r1061), (by simpa [Seg5.relationRow1062] using r1062), (by simpa [Seg5.relationRow1063] using r1063), (by simpa [Seg5.relationRow1064] using r1064), (by simpa [Seg5.relationRow1065] using r1065), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg4
    refine ⟨rho 933, rho 934, rho 935, rho 936, rho 937, (by simpa [Seg5.relationRow1066] using r1066), (by simpa [Seg5.relationRow1067] using r1067), (by simpa [Seg5.relationRow1068] using r1068), (by simpa [Seg5.relationRow1069] using r1069), (by simpa [Seg5.relationRow1070] using r1070), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg5
    refine ⟨rho 938, rho 939, rho 940, rho 941, rho 942, (by simpa [Seg5.relationRow1071] using r1071), (by simpa [Seg5.relationRow1072] using r1072), (by simpa [Seg5.relationRow1073] using r1073), (by simpa [Seg5.relationRow1074] using r1074), (by simpa [Seg5.relationRow1075] using r1075), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg6
    refine ⟨rho 943, rho 944, rho 945, rho 946, rho 947, (by simpa [Seg5.relationRow1076] using r1076), (by simpa [Seg5.relationRow1077] using r1077), (by simpa [Seg5.relationRow1078] using r1078), (by simpa [Seg5.relationRow1079] using r1079), (by simpa [Seg5.relationRow1080] using r1080), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg7
    refine ⟨rho 948, rho 949, rho 950, rho 951, rho 952, (by simpa [Seg5.relationRow1081] using r1081), (by simpa [Seg5.relationRow1082] using r1082), (by simpa [Seg5.relationRow1083] using r1083), (by simpa [Seg5.relationRow1084] using r1084), (by simpa [Seg5.relationRow1085] using r1085), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg8
    refine ⟨rho 953, rho 954, rho 955, rho 956, rho 957, (by simpa [Seg5.relationRow1086] using r1086), (by simpa [Seg5.relationRow1087] using r1087), (by simpa [Seg5.relationRow1088] using r1088), (by simpa [Seg5.relationRow1089] using r1089), (by simpa [Seg5.relationRow1090] using r1090), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg9
    refine ⟨rho 958, rho 959, rho 960, rho 961, rho 962, (by simpa [Seg5.relationRow1091] using r1091), (by simpa [Seg5.relationRow1092] using r1092), (by simpa [Seg5.relationRow1093] using r1093), (by simpa [Seg5.relationRow1094] using r1094), (by simpa [Seg5.relationRow1095] using r1095), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg10
    refine ⟨rho 963, rho 964, rho 965, rho 966, rho 967, (by simpa [Seg5.relationRow1096] using r1096), (by simpa [Seg5.relationRow1097] using r1097), (by simpa [Seg5.relationRow1098] using r1098), (by simpa [Seg5.relationRow1099] using r1099), (by simpa [Seg5.relationRow1100] using r1100), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg11
    refine ⟨rho 968, rho 969, rho 970, rho 971, rho 972, (by simpa [Seg5.relationRow1101] using r1101), (by simpa [Seg5.relationRow1102] using r1102), (by simpa [Seg5.relationRow1103] using r1103), (by simpa [Seg5.relationRow1104] using r1104), (by simpa [Seg5.relationRow1105] using r1105), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg12
    refine ⟨rho 973, rho 974, rho 975, rho 976, rho 977, (by simpa [Seg5.relationRow1106] using r1106), (by simpa [Seg5.relationRow1107] using r1107), (by simpa [Seg5.relationRow1108] using r1108), (by simpa [Seg5.relationRow1109] using r1109), (by simpa [Seg5.relationRow1110] using r1110), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg13
    refine ⟨rho 978, rho 979, rho 980, rho 981, rho 982, (by simpa [Seg5.relationRow1111] using r1111), (by simpa [Seg5.relationRow1112] using r1112), (by simpa [Seg5.relationRow1113] using r1113), (by simpa [Seg5.relationRow1114] using r1114), (by simpa [Seg5.relationRow1115] using r1115), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg14
    refine ⟨rho 983, rho 984, rho 985, rho 986, rho 987, (by simpa [Seg5.relationRow1116] using r1116), (by simpa [Seg5.relationRow1117] using r1117), (by simpa [Seg5.relationRow1118] using r1118), (by simpa [Seg5.relationRow1119] using r1119), (by simpa [Seg5.relationRow1120] using r1120), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg15
    refine ⟨rho 988, rho 989, rho 990, rho 991, rho 992, (by simpa [Seg5.relationRow1121] using r1121), (by simpa [Seg5.relationRow1122] using r1122), (by simpa [Seg5.relationRow1123] using r1123), (by simpa [Seg5.relationRow1124] using r1124), (by simpa [Seg5.relationRow1125] using r1125), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg16
    refine ⟨rho 993, rho 994, rho 995, rho 996, rho 997, (by simpa [Seg5.relationRow1126] using r1126), (by simpa [Seg5.relationRow1127] using r1127), (by simpa [Seg5.relationRow1128] using r1128), (by simpa [Seg5.relationRow1129] using r1129), (by simpa [Seg5.relationRow1130] using r1130), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg17
    refine ⟨rho 998, rho 999, rho 1000, rho 1001, rho 1002, (by simpa [Seg5.relationRow1131] using r1131), (by simpa [Seg5.relationRow1132] using r1132), (by simpa [Seg5.relationRow1133] using r1133), (by simpa [Seg5.relationRow1134] using r1134), (by simpa [Seg5.relationRow1135] using r1135), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg18
    refine ⟨rho 1003, rho 1004, rho 1005, rho 1006, rho 1007, (by simpa [Seg5.relationRow1136] using r1136), (by simpa [Seg5.relationRow1137] using r1137), (by simpa [Seg5.relationRow1138] using r1138), (by simpa [Seg5.relationRow1139] using r1139), (by simpa [Seg5.relationRow1140] using r1140), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg19
    refine ⟨rho 1008, rho 1009, rho 1010, rho 1011, rho 1012, (by simpa [Seg5.relationRow1141] using r1141), (by simpa [Seg5.relationRow1142] using r1142), (by simpa [Seg5.relationRow1143] using r1143), (by simpa [Seg5.relationRow1144] using r1144), (by simpa [Seg5.relationRow1145] using r1145), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg20
    refine ⟨rho 1013, rho 1014, rho 1015, rho 1016, rho 1017, (by simpa [Seg5.relationRow1146] using r1146), (by simpa [Seg5.relationRow1147] using r1147), (by simpa [Seg5.relationRow1148] using r1148), (by simpa [Seg5.relationRow1149] using r1149), (by simpa [Seg5.relationRow1150] using r1150), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg21
    refine ⟨rho 1018, rho 1019, rho 1020, rho 1021, rho 1022, (by simpa [Seg5.relationRow1151] using r1151), (by simpa [Seg5.relationRow1152] using r1152), (by simpa [Seg5.relationRow1153] using r1153), (by simpa [Seg5.relationRow1154] using r1154), (by simpa [Seg5.relationRow1155] using r1155), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg22
    refine ⟨rho 1023, rho 1024, rho 1025, rho 1026, rho 1027, (by simpa [Seg5.relationRow1156] using r1156), (by simpa [Seg5.relationRow1157] using r1157), (by simpa [Seg5.relationRow1158] using r1158), (by simpa [Seg5.relationRow1159] using r1159), (by simpa [Seg5.relationRow1160] using r1160), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg23
    refine ⟨rho 1028, rho 1029, rho 1030, rho 1031, rho 1032, (by simpa [Seg5.relationRow1161] using r1161), (by simpa [Seg5.relationRow1162] using r1162), (by simpa [Seg5.relationRow1163] using r1163), (by simpa [Seg5.relationRow1164] using r1164), (by simpa [Seg5.relationRow1165] using r1165), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg24
    refine ⟨rho 1033, rho 1034, rho 1035, rho 1036, rho 1037, (by simpa [Seg5.relationRow1166] using r1166), (by simpa [Seg5.relationRow1167] using r1167), (by simpa [Seg5.relationRow1168] using r1168), (by simpa [Seg5.relationRow1169] using r1169), (by simpa [Seg5.relationRow1170] using r1170), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg25
    refine ⟨rho 1038, rho 1039, rho 1040, rho 1041, rho 1042, (by simpa [Seg5.relationRow1171] using r1171), (by simpa [Seg5.relationRow1172] using r1172), (by simpa [Seg5.relationRow1173] using r1173), (by simpa [Seg5.relationRow1174] using r1174), (by simpa [Seg5.relationRow1175] using r1175), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg26
    refine ⟨rho 1043, rho 1044, rho 1045, rho 1046, rho 1047, (by simpa [Seg5.relationRow1176] using r1176), (by simpa [Seg5.relationRow1177] using r1177), (by simpa [Seg5.relationRow1178] using r1178), (by simpa [Seg5.relationRow1179] using r1179), (by simpa [Seg5.relationRow1180] using r1180), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg27
    refine ⟨rho 1048, rho 1049, rho 1050, rho 1051, rho 1052, (by simpa [Seg5.relationRow1181] using r1181), (by simpa [Seg5.relationRow1182] using r1182), (by simpa [Seg5.relationRow1183] using r1183), (by simpa [Seg5.relationRow1184] using r1184), (by simpa [Seg5.relationRow1185] using r1185), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg28
    refine ⟨rho 1053, rho 1054, rho 1055, rho 1056, rho 1057, (by simpa [Seg5.relationRow1186] using r1186), (by simpa [Seg5.relationRow1187] using r1187), (by simpa [Seg5.relationRow1188] using r1188), (by simpa [Seg5.relationRow1189] using r1189), (by simpa [Seg5.relationRow1190] using r1190), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg29
    refine ⟨rho 1058, rho 1059, rho 1060, rho 1061, rho 1062, (by simpa [Seg5.relationRow1191] using r1191), (by simpa [Seg5.relationRow1192] using r1192), (by simpa [Seg5.relationRow1193] using r1193), (by simpa [Seg5.relationRow1194] using r1194), (by simpa [Seg5.relationRow1195] using r1195), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg30
    refine ⟨rho 1063, rho 1064, rho 1065, rho 1066, rho 1067, (by simpa [Seg5.relationRow1196] using r1196), (by simpa [Seg5.relationRow1197] using r1197), (by simpa [Seg5.relationRow1198] using r1198), (by simpa [Seg5.relationRow1199] using r1199), (by simpa [Seg5.relationRow1200] using r1200), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg31
    refine ⟨rho 1068, rho 1069, rho 1070, rho 1071, rho 1072, (by simpa [Seg5.relationRow1201] using r1201), (by simpa [Seg5.relationRow1202] using r1202), (by simpa [Seg5.relationRow1203] using r1203), (by simpa [Seg5.relationRow1204] using r1204), (by simpa [Seg5.relationRow1205] using r1205), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg32
    refine ⟨rho 1073, rho 1074, rho 1075, rho 1076, rho 1077, (by simpa [Seg5.relationRow1206] using r1206), (by simpa [Seg5.relationRow1207] using r1207), (by simpa [Seg5.relationRow1208] using r1208), (by simpa [Seg5.relationRow1209] using r1209), (by simpa [Seg5.relationRow1210] using r1210), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg33
    refine ⟨rho 1078, rho 1079, rho 1080, rho 1081, rho 1082, (by simpa [Seg5.relationRow1211] using r1211), (by simpa [Seg5.relationRow1212] using r1212), (by simpa [Seg5.relationRow1213] using r1213), (by simpa [Seg5.relationRow1214] using r1214), (by simpa [Seg5.relationRow1215] using r1215), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg34
    refine ⟨rho 1083, rho 1084, rho 1085, rho 1086, rho 1087, (by simpa [Seg5.relationRow1216] using r1216), (by simpa [Seg5.relationRow1217] using r1217), (by simpa [Seg5.relationRow1218] using r1218), (by simpa [Seg5.relationRow1219] using r1219), (by simpa [Seg5.relationRow1220] using r1220), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg35
    refine ⟨rho 1088, rho 1089, rho 1090, rho 1091, rho 1092, (by simpa [Seg5.relationRow1221] using r1221), (by simpa [Seg5.relationRow1222] using r1222), (by simpa [Seg5.relationRow1223] using r1223), (by simpa [Seg5.relationRow1224] using r1224), (by simpa [Seg5.relationRow1225] using r1225), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg36
    refine ⟨rho 1093, rho 1094, rho 1095, rho 1096, rho 1097, (by simpa [Seg5.relationRow1226] using r1226), (by simpa [Seg5.relationRow1227] using r1227), (by simpa [Seg5.relationRow1228] using r1228), (by simpa [Seg5.relationRow1229] using r1229), (by simpa [Seg5.relationRow1230] using r1230), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg37
    refine ⟨rho 1098, rho 1099, rho 1100, rho 1101, rho 1102, (by simpa [Seg5.relationRow1231] using r1231), (by simpa [Seg5.relationRow1232] using r1232), (by simpa [Seg5.relationRow1233] using r1233), (by simpa [Seg5.relationRow1234] using r1234), (by simpa [Seg5.relationRow1235] using r1235), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg38
    refine ⟨rho 1103, rho 1104, rho 1105, rho 1106, rho 1107, (by simpa [Seg5.relationRow1236] using r1236), (by simpa [Seg5.relationRow1237] using r1237), (by simpa [Seg5.relationRow1238] using r1238), (by simpa [Seg5.relationRow1239] using r1239), (by simpa [Seg5.relationRow1240] using r1240), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg39
    refine ⟨rho 1108, rho 1109, rho 1110, rho 1111, rho 1112, (by simpa [Seg5.relationRow1241] using r1241), (by simpa [Seg5.relationRow1242] using r1242), (by simpa [Seg5.relationRow1243] using r1243), (by simpa [Seg5.relationRow1244] using r1244), (by simpa [Seg5.relationRow1245] using r1245), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg40
    refine ⟨rho 1113, rho 1114, rho 1115, rho 1116, rho 1117, (by unfold Seg5.relationRow1246 Seg5.relationLc2 Seg5.relationLc2Part0 Seg5.relationLc2Part1 Seg5.relationLc3 Seg5.relationLc3Part0 Seg5.relationLc3Part1 at r1246; linear_combination r1246), (by simpa [Seg5.relationRow1247] using r1247), (by simpa [Seg5.relationRow1248] using r1248), (by simpa [Seg5.relationRow1249] using r1249), (by unfold Seg5.relationRow1250 Seg5.relationLc4 Seg5.relationLc4Part0 Seg5.relationLc4Part1 at r1250; linear_combination r1250), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg41
    refine ⟨rho 1118, rho 1119, rho 1120, rho 1121, rho 1122, (by unfold Seg5.relationRow1251 Seg5.relationLc5 Seg5.relationLc5Part0 Seg5.relationLc5Part1 Seg5.relationLc6 Seg5.relationLc6Part0 Seg5.relationLc6Part1 at r1251; linear_combination r1251), (by simpa [Seg5.relationRow1252] using r1252), (by simpa [Seg5.relationRow1253] using r1253), (by simpa [Seg5.relationRow1254] using r1254), (by unfold Seg5.relationRow1255 Seg5.relationLc7 Seg5.relationLc7Part0 Seg5.relationLc7Part1 at r1255; linear_combination r1255), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg42
    refine ⟨rho 1123, rho 1124, rho 1125, rho 1126, rho 1127, (by unfold Seg5.relationRow1256 Seg5.relationLc8 Seg5.relationLc8Part0 Seg5.relationLc8Part1 Seg5.relationLc9 Seg5.relationLc9Part0 Seg5.relationLc9Part1 at r1256; linear_combination r1256), (by simpa [Seg5.relationRow1257] using r1257), (by simpa [Seg5.relationRow1258] using r1258), (by simpa [Seg5.relationRow1259] using r1259), (by unfold Seg5.relationRow1260 Seg5.relationLc10 Seg5.relationLc10Part0 Seg5.relationLc10Part1 at r1260; linear_combination r1260), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg43
    refine ⟨rho 1128, rho 1129, rho 1130, rho 1131, rho 1132, (by unfold Seg5.relationRow1261 Seg5.relationLc11 Seg5.relationLc11Part0 Seg5.relationLc11Part1 Seg5.relationLc12 Seg5.relationLc12Part0 Seg5.relationLc12Part1 at r1261; linear_combination r1261), (by simpa [Seg5.relationRow1262] using r1262), (by simpa [Seg5.relationRow1263] using r1263), (by simpa [Seg5.relationRow1264] using r1264), (by unfold Seg5.relationRow1265 Seg5.relationLc13 Seg5.relationLc13Part0 Seg5.relationLc13Part1 at r1265; linear_combination r1265), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg44
    refine ⟨rho 1133, rho 1134, rho 1135, rho 1136, rho 1137, (by unfold Seg5.relationRow1266 Seg5.relationLc14 Seg5.relationLc14Part0 Seg5.relationLc14Part1 Seg5.relationLc15 Seg5.relationLc15Part0 Seg5.relationLc15Part1 at r1266; linear_combination r1266), (by simpa [Seg5.relationRow1267] using r1267), (by simpa [Seg5.relationRow1268] using r1268), (by simpa [Seg5.relationRow1269] using r1269), (by unfold Seg5.relationRow1270 Seg5.relationLc16 Seg5.relationLc16Part0 Seg5.relationLc16Part1 at r1270; linear_combination r1270), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg45
    refine ⟨rho 1138, rho 1139, rho 1140, rho 1141, rho 1142, (by simpa [Seg5.relationRow1271] using r1271), (by simpa [Seg5.relationRow1272] using r1272), (by simpa [Seg5.relationRow1273] using r1273), (by simpa [Seg5.relationRow1274] using r1274), (by simpa [Seg5.relationRow1275] using r1275), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg46
    refine ⟨rho 1143, rho 1144, rho 1145, rho 1146, rho 1147, (by simpa [Seg5.relationRow1276] using r1276), (by simpa [Seg5.relationRow1277] using r1277), (by simpa [Seg5.relationRow1278] using r1278), (by simpa [Seg5.relationRow1279] using r1279), (by simpa [Seg5.relationRow1280] using r1280), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg47
    refine ⟨rho 1148, rho 1149, rho 1150, rho 1151, rho 1152, (by simpa [Seg5.relationRow1281] using r1281), (by simpa [Seg5.relationRow1282] using r1282), (by simpa [Seg5.relationRow1283] using r1283), (by simpa [Seg5.relationRow1284] using r1284), (by simpa [Seg5.relationRow1285] using r1285), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg48
    refine ⟨rho 1153, rho 1154, rho 1155, rho 1156, rho 1157, (by simpa [Seg5.relationRow1286] using r1286), (by simpa [Seg5.relationRow1287] using r1287), (by simpa [Seg5.relationRow1288] using r1288), (by simpa [Seg5.relationRow1289] using r1289), (by simpa [Seg5.relationRow1290] using r1290), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg49
    refine ⟨rho 1158, rho 1159, rho 1160, rho 1161, rho 1162, (by simpa [Seg5.relationRow1291] using r1291), (by simpa [Seg5.relationRow1292] using r1292), (by simpa [Seg5.relationRow1293] using r1293), (by simpa [Seg5.relationRow1294] using r1294), (by simpa [Seg5.relationRow1295] using r1295), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg50
    refine ⟨rho 1163, rho 1164, rho 1165, rho 1166, rho 1167, (by simpa [Seg5.relationRow1296] using r1296), (by simpa [Seg5.relationRow1297] using r1297), (by simpa [Seg5.relationRow1298] using r1298), (by simpa [Seg5.relationRow1299] using r1299), (by simpa [Seg5.relationRow1300] using r1300), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg51
    refine ⟨rho 1168, rho 1169, rho 1170, rho 1171, rho 1172, (by simpa [Seg5.relationRow1301] using r1301), (by simpa [Seg5.relationRow1302] using r1302), (by simpa [Seg5.relationRow1303] using r1303), (by simpa [Seg5.relationRow1304] using r1304), (by simpa [Seg5.relationRow1305] using r1305), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg52
    refine ⟨rho 1173, rho 1174, rho 1175, rho 1176, rho 1177, (by simpa [Seg5.relationRow1306] using r1306), (by simpa [Seg5.relationRow1307] using r1307), (by simpa [Seg5.relationRow1308] using r1308), (by simpa [Seg5.relationRow1309] using r1309), (by simpa [Seg5.relationRow1310] using r1310), ?_⟩
    unfold Shieldd.GnarkFormal.Extracted.Deployed.DtkIvkPoseidon270_20212c.seg53
    refine ⟨rho 1178, rho 1179, rho 1180, rho 1181, rho 1182, (by simpa [Seg5.relationRow1311] using r1311), (by simpa [Seg5.relationRow1312] using r1312), (by simpa [Seg5.relationRow1313] using r1313), (by simpa [Seg5.relationRow1314] using r1314), (by simpa [Seg5.relationRow1315] using r1315), ?_⟩
    exact ⟨rfl, rfl, rfl⟩
  have hs := Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.relation_sound_permSpec (rho 8) (rho 572) (rho 912) _ hrel
  rcases hs with ⟨x, y, z, ⟨rfl, rfl, rfl⟩, hs⟩
  unfold Seg5.relationRow1316 at r1316
  unfold Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.s38_1 Shieldd.GnarkFormal.Deployed.Poseidon2Link.row3 Shieldd.GnarkFormal.Deployed.DtkIvkPoseidon.ivkDomainLit at hs
  linear_combination -r1316 + hs

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
