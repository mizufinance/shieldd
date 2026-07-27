import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs10

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc8Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 1065 + (8589934592 : F) * rho 1066 + (17179869184 : F) * rho 1067 + (34359738368 : F) * rho 1068 + (68719476736 : F) * rho 1069 + (137438953472 : F) * rho 1070 + (274877906944 : F) * rho 1071 + (549755813888 : F) * rho 1072 + (1099511627776 : F) * rho 1073 + (2199023255552 : F) * rho 1074 + (4398046511104 : F) * rho 1075 + (8796093022208 : F) * rho 1076 + (17592186044416 : F) * rho 1077 + (35184372088832 : F) * rho 1078 + (70368744177664 : F) * rho 1079 + (140737488355328 : F) * rho 1080 + (281474976710656 : F) * rho 1081 + (562949953421312 : F) * rho 1082 + (1125899906842624 : F) * rho 1083 + (2251799813685248 : F) * rho 1084 + (4503599627370496 : F) * rho 1085 + (9007199254740992 : F) * rho 1086 + (18014398509481984 : F) * rho 1087 + (36028797018963968 : F) * rho 1088 + (72057594037927936 : F) * rho 1089 + (144115188075855872 : F) * rho 1090 + (288230376151711744 : F) * rho 1091 + (576460752303423488 : F) * rho 1092 + (1152921504606846976 : F) * rho 1093 + (2305843009213693952 : F) * rho 1094 + (4611686018427387904 : F) * rho 1095 + (9223372036854775808 : F) * rho 1096

def relationLc8Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 1097 + (36893488147419103232 : F) * rho 1098 + (73786976294838206464 : F) * rho 1099 + (147573952589676412928 : F) * rho 1100 + (295147905179352825856 : F) * rho 1101 + (590295810358705651712 : F) * rho 1102 + (1180591620717411303424 : F) * rho 1103 + (2361183241434822606848 : F) * rho 1104 + (4722366482869645213696 : F) * rho 1105 + (9444732965739290427392 : F) * rho 1106 + (18889465931478580854784 : F) * rho 1107 + (37778931862957161709568 : F) * rho 1108 + (75557863725914323419136 : F) * rho 1109 + (151115727451828646838272 : F) * rho 1110 + (302231454903657293676544 : F) * rho 1111 + (604462909807314587353088 : F) * rho 1112 + (1208925819614629174706176 : F) * rho 1113 + (2417851639229258349412352 : F) * rho 1114 + (4835703278458516698824704 : F) * rho 1115 + (9671406556917033397649408 : F) * rho 1116 + (19342813113834066795298816 : F) * rho 1117 + (38685626227668133590597632 : F) * rho 1118 + (77371252455336267181195264 : F) * rho 1119 + (154742504910672534362390528 : F) * rho 1120 + (309485009821345068724781056 : F) * rho 1121 + (618970019642690137449562112 : F) * rho 1122 + (1237940039285380274899124224 : F) * rho 1123 + (2475880078570760549798248448 : F) * rho 1124 + (4951760157141521099596496896 : F) * rho 1125 + (9903520314283042199192993792 : F) * rho 1126 + (19807040628566084398385987584 : F) * rho 1127 + (39614081257132168796771975168 : F) * rho 1128

def relationLc8Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 1129 + (158456325028528675187087900672 : F) * rho 1130 + (316912650057057350374175801344 : F) * rho 1131 + (633825300114114700748351602688 : F) * rho 1132 + (1267650600228229401496703205376 : F) * rho 1133 + (2535301200456458802993406410752 : F) * rho 1134 + (5070602400912917605986812821504 : F) * rho 1135 + (10141204801825835211973625643008 : F) * rho 1136 + (20282409603651670423947251286016 : F) * rho 1137 + (40564819207303340847894502572032 : F) * rho 1138 + (81129638414606681695789005144064 : F) * rho 1139 + (162259276829213363391578010288128 : F) * rho 1140 + (324518553658426726783156020576256 : F) * rho 1141 + (649037107316853453566312041152512 : F) * rho 1142 + (1298074214633706907132624082305024 : F) * rho 1143 + (2596148429267413814265248164610048 : F) * rho 1144 + (5192296858534827628530496329220096 : F) * rho 1145 + (10384593717069655257060992658440192 : F) * rho 1146 + (20769187434139310514121985316880384 : F) * rho 1147 + (41538374868278621028243970633760768 : F) * rho 1148 + (83076749736557242056487941267521536 : F) * rho 1149 + (166153499473114484112975882535043072 : F) * rho 1150 + (332306998946228968225951765070086144 : F) * rho 1151 + (664613997892457936451903530140172288 : F) * rho 1152 + (1329227995784915872903807060280344576 : F) * rho 1153 + (2658455991569831745807614120560689152 : F) * rho 1154 + (5316911983139663491615228241121378304 : F) * rho 1155 + (10633823966279326983230456482242756608 : F) * rho 1156 + (21267647932558653966460912964485513216 : F) * rho 1157 + (42535295865117307932921825928971026432 : F) * rho 1158 + (85070591730234615865843651857942052864 : F) * rho 1159 + (170141183460469231731687303715884105728 : F) * rho 1160

def relationLc8 (rho : Nat -> F) : F :=
    relationLc8Part0 rho +
    relationLc8Part1 rho +
    relationLc8Part2 rho +
    relationLc8Part3 rho

def relationRow1160 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc8 rho) = ((1 : F) * rho 1161)

def relationRow1161 (rho : Nat -> F) : Prop :=
    ((1 : F)) * ((1 : F) * rho 129 + (1 : F) * rho 258 + (1 : F) * rho 387 + (1 : F) * rho 516 + (1 : F) * rho 645 + (1 : F) * rho 774 + (1 : F) * rho 903 + (1 : F) * rho 1032) = ((1 : F) * rho 1161)

def relationRow1162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1162) * ((1 : F) + (-1 : F) * rho 1162) = ((0 : F))

def relationRow1163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1163) * ((1 : F) + (-1 : F) * rho 1163) = ((0 : F))

def relationRow1164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1164) * ((1 : F) + (-1 : F) * rho 1164) = ((0 : F))

def relationRow1165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1165) * ((1 : F) + (-1 : F) * rho 1165) = ((0 : F))

def relationRow1166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1166) * ((1 : F) + (-1 : F) * rho 1166) = ((0 : F))

def relationRow1167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1167) * ((1 : F) + (-1 : F) * rho 1167) = ((0 : F))

def relationRow1168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1168) * ((1 : F) + (-1 : F) * rho 1168) = ((0 : F))

def relationRow1169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1169) * ((1 : F) + (-1 : F) * rho 1169) = ((0 : F))

def relationRow1170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1170) * ((1 : F) + (-1 : F) * rho 1170) = ((0 : F))

def relationRow1171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1171) * ((1 : F) + (-1 : F) * rho 1171) = ((0 : F))

def relationRow1172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1172) * ((1 : F) + (-1 : F) * rho 1172) = ((0 : F))

def relationRow1173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1173) * ((1 : F) + (-1 : F) * rho 1173) = ((0 : F))

def relationRow1174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1174) * ((1 : F) + (-1 : F) * rho 1174) = ((0 : F))

def relationRow1175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1175) * ((1 : F) + (-1 : F) * rho 1175) = ((0 : F))

def relationRow1176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1176) * ((1 : F) + (-1 : F) * rho 1176) = ((0 : F))

def relationRow1177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1177) * ((1 : F) + (-1 : F) * rho 1177) = ((0 : F))

def relationRow1178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1178) * ((1 : F) + (-1 : F) * rho 1178) = ((0 : F))

def relationRow1179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1179) * ((1 : F) + (-1 : F) * rho 1179) = ((0 : F))

def relationRow1180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1180) * ((1 : F) + (-1 : F) * rho 1180) = ((0 : F))

def relationRow1181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * ((1 : F) + (-1 : F) * rho 1181) = ((0 : F))

def relationRow1182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * ((1 : F) + (-1 : F) * rho 1182) = ((0 : F))

def relationRow1183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1183) * ((1 : F) + (-1 : F) * rho 1183) = ((0 : F))

def relationRow1184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * ((1 : F) + (-1 : F) * rho 1184) = ((0 : F))

def relationRow1185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * ((1 : F) + (-1 : F) * rho 1185) = ((0 : F))

def relationRow1186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * ((1 : F) + (-1 : F) * rho 1186) = ((0 : F))

def relationRow1187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1187) * ((1 : F) + (-1 : F) * rho 1187) = ((0 : F))

def relationRow1188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1188) * ((1 : F) + (-1 : F) * rho 1188) = ((0 : F))

def relationRow1189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1189) * ((1 : F) + (-1 : F) * rho 1189) = ((0 : F))

def relationRow1190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1190) * ((1 : F) + (-1 : F) * rho 1190) = ((0 : F))

def relationRow1191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1191) * ((1 : F) + (-1 : F) * rho 1191) = ((0 : F))

def relationRow1192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1192) * ((1 : F) + (-1 : F) * rho 1192) = ((0 : F))

def relationRow1193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1193) * ((1 : F) + (-1 : F) * rho 1193) = ((0 : F))

def relationRow1194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1194) * ((1 : F) + (-1 : F) * rho 1194) = ((0 : F))

def relationRow1195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1195) * ((1 : F) + (-1 : F) * rho 1195) = ((0 : F))

def relationRow1196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1196) * ((1 : F) + (-1 : F) * rho 1196) = ((0 : F))

def relationRow1197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1197) * ((1 : F) + (-1 : F) * rho 1197) = ((0 : F))

def relationRow1198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1198) * ((1 : F) + (-1 : F) * rho 1198) = ((0 : F))

def relationRow1199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1199) * ((1 : F) + (-1 : F) * rho 1199) = ((0 : F))

def relationRow1200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1200) * ((1 : F) + (-1 : F) * rho 1200) = ((0 : F))

def relationRow1201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1201) * ((1 : F) + (-1 : F) * rho 1201) = ((0 : F))

def relationRow1202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1202) * ((1 : F) + (-1 : F) * rho 1202) = ((0 : F))

def relationRow1203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1203) * ((1 : F) + (-1 : F) * rho 1203) = ((0 : F))

def relationRow1204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1204) * ((1 : F) + (-1 : F) * rho 1204) = ((0 : F))

def relationRow1205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1205) * ((1 : F) + (-1 : F) * rho 1205) = ((0 : F))

def relationRow1206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1206) * ((1 : F) + (-1 : F) * rho 1206) = ((0 : F))

def relationRow1207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1207) * ((1 : F) + (-1 : F) * rho 1207) = ((0 : F))

def relationRow1208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1208) * ((1 : F) + (-1 : F) * rho 1208) = ((0 : F))

def relationRow1209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1209) * ((1 : F) + (-1 : F) * rho 1209) = ((0 : F))

def relationRow1210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1210) * ((1 : F) + (-1 : F) * rho 1210) = ((0 : F))

def relationRow1211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1211) * ((1 : F) + (-1 : F) * rho 1211) = ((0 : F))

def relationRow1212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1212) * ((1 : F) + (-1 : F) * rho 1212) = ((0 : F))

def relationRow1213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1213) * ((1 : F) + (-1 : F) * rho 1213) = ((0 : F))

def relationRow1214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1214) * ((1 : F) + (-1 : F) * rho 1214) = ((0 : F))

def relationRow1215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1215) * ((1 : F) + (-1 : F) * rho 1215) = ((0 : F))

def relationRow1216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1216) * ((1 : F) + (-1 : F) * rho 1216) = ((0 : F))

def relationRow1217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1217) * ((1 : F) + (-1 : F) * rho 1217) = ((0 : F))

def relationRow1218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1218) * ((1 : F) + (-1 : F) * rho 1218) = ((0 : F))

def relationRow1219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1219) * ((1 : F) + (-1 : F) * rho 1219) = ((0 : F))

def relationRow1220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1220) * ((1 : F) + (-1 : F) * rho 1220) = ((0 : F))

def relationRow1221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1221) * ((1 : F) + (-1 : F) * rho 1221) = ((0 : F))

def relationRow1222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1222) * ((1 : F) + (-1 : F) * rho 1222) = ((0 : F))

def relationRow1223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1223) * ((1 : F) + (-1 : F) * rho 1223) = ((0 : F))

def relationRow1224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1224) * ((1 : F) + (-1 : F) * rho 1224) = ((0 : F))

def relationRow1225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1225) * ((1 : F) + (-1 : F) * rho 1225) = ((0 : F))

def relationRow1226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1226) * ((1 : F) + (-1 : F) * rho 1226) = ((0 : F))

def relationRow1227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1227) * ((1 : F) + (-1 : F) * rho 1227) = ((0 : F))

def relationRow1228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1228) * ((1 : F) + (-1 : F) * rho 1228) = ((0 : F))

def relationRow1229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1229) * ((1 : F) + (-1 : F) * rho 1229) = ((0 : F))

def relationRow1230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1230) * ((1 : F) + (-1 : F) * rho 1230) = ((0 : F))

def relationRow1231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1231) * ((1 : F) + (-1 : F) * rho 1231) = ((0 : F))

def relationRow1232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1232) * ((1 : F) + (-1 : F) * rho 1232) = ((0 : F))

def relationRow1233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1233) * ((1 : F) + (-1 : F) * rho 1233) = ((0 : F))

def relationRow1234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1234) * ((1 : F) + (-1 : F) * rho 1234) = ((0 : F))

def relationRow1235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1235) * ((1 : F) + (-1 : F) * rho 1235) = ((0 : F))

def relationRow1236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1236) * ((1 : F) + (-1 : F) * rho 1236) = ((0 : F))

def relationRow1237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1237) * ((1 : F) + (-1 : F) * rho 1237) = ((0 : F))

def relationRow1238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1238) * ((1 : F) + (-1 : F) * rho 1238) = ((0 : F))

def relationRow1239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1239) * ((1 : F) + (-1 : F) * rho 1239) = ((0 : F))

def relationRow1240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1240) * ((1 : F) + (-1 : F) * rho 1240) = ((0 : F))

def relationRow1241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1241) * ((1 : F) + (-1 : F) * rho 1241) = ((0 : F))

def relationRow1242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1242) * ((1 : F) + (-1 : F) * rho 1242) = ((0 : F))

def relationRow1243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1243) * ((1 : F) + (-1 : F) * rho 1243) = ((0 : F))

def relationRow1244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1244) * ((1 : F) + (-1 : F) * rho 1244) = ((0 : F))

def relationRow1245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1245) * ((1 : F) + (-1 : F) * rho 1245) = ((0 : F))

def relationRow1246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1246) * ((1 : F) + (-1 : F) * rho 1246) = ((0 : F))

def relationRow1247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1247) * ((1 : F) + (-1 : F) * rho 1247) = ((0 : F))

def relationRow1248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1248) * ((1 : F) + (-1 : F) * rho 1248) = ((0 : F))

def relationRow1249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1249) * ((1 : F) + (-1 : F) * rho 1249) = ((0 : F))

def relationRow1250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1250) * ((1 : F) + (-1 : F) * rho 1250) = ((0 : F))

def relationRow1251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1251) * ((1 : F) + (-1 : F) * rho 1251) = ((0 : F))

def relationRow1252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1252) * ((1 : F) + (-1 : F) * rho 1252) = ((0 : F))

def relationRow1253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1253) * ((1 : F) + (-1 : F) * rho 1253) = ((0 : F))

def relationRow1254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1254) * ((1 : F) + (-1 : F) * rho 1254) = ((0 : F))

def relationRow1255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1255) * ((1 : F) + (-1 : F) * rho 1255) = ((0 : F))

def relationRow1256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1256) * ((1 : F) + (-1 : F) * rho 1256) = ((0 : F))

def relationRow1257 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1257) * ((1 : F) + (-1 : F) * rho 1257) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
