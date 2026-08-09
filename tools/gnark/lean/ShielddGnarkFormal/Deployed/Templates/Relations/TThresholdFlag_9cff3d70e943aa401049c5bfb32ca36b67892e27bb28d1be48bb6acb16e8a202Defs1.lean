import ShielddGnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202Defs0

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202

variable {F : Type} [CommRing F]

def relationLc0Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 33 + (8589934592 : F) * rho 34 + (17179869184 : F) * rho 35 + (34359738368 : F) * rho 36 + (68719476736 : F) * rho 37 + (137438953472 : F) * rho 38 + (274877906944 : F) * rho 39 + (549755813888 : F) * rho 40 + (1099511627776 : F) * rho 41 + (2199023255552 : F) * rho 42 + (4398046511104 : F) * rho 43 + (8796093022208 : F) * rho 44 + (17592186044416 : F) * rho 45 + (35184372088832 : F) * rho 46 + (70368744177664 : F) * rho 47 + (140737488355328 : F) * rho 48 + (281474976710656 : F) * rho 49 + (562949953421312 : F) * rho 50 + (1125899906842624 : F) * rho 51 + (2251799813685248 : F) * rho 52 + (4503599627370496 : F) * rho 53 + (9007199254740992 : F) * rho 54 + (18014398509481984 : F) * rho 55 + (36028797018963968 : F) * rho 56 + (72057594037927936 : F) * rho 57 + (144115188075855872 : F) * rho 58 + (288230376151711744 : F) * rho 59 + (576460752303423488 : F) * rho 60 + (1152921504606846976 : F) * rho 61 + (2305843009213693952 : F) * rho 62 + (4611686018427387904 : F) * rho 63 + (9223372036854775808 : F) * rho 64

def relationLc0Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 65 + (36893488147419103232 : F) * rho 66 + (73786976294838206464 : F) * rho 67 + (147573952589676412928 : F) * rho 68 + (295147905179352825856 : F) * rho 69 + (590295810358705651712 : F) * rho 70 + (1180591620717411303424 : F) * rho 71 + (2361183241434822606848 : F) * rho 72 + (4722366482869645213696 : F) * rho 73 + (9444732965739290427392 : F) * rho 74 + (18889465931478580854784 : F) * rho 75 + (37778931862957161709568 : F) * rho 76 + (75557863725914323419136 : F) * rho 77 + (151115727451828646838272 : F) * rho 78 + (302231454903657293676544 : F) * rho 79 + (604462909807314587353088 : F) * rho 80 + (1208925819614629174706176 : F) * rho 81 + (2417851639229258349412352 : F) * rho 82 + (4835703278458516698824704 : F) * rho 83 + (9671406556917033397649408 : F) * rho 84 + (19342813113834066795298816 : F) * rho 85 + (38685626227668133590597632 : F) * rho 86 + (77371252455336267181195264 : F) * rho 87 + (154742504910672534362390528 : F) * rho 88 + (309485009821345068724781056 : F) * rho 89 + (618970019642690137449562112 : F) * rho 90 + (1237940039285380274899124224 : F) * rho 91 + (2475880078570760549798248448 : F) * rho 92 + (4951760157141521099596496896 : F) * rho 93 + (9903520314283042199192993792 : F) * rho 94 + (19807040628566084398385987584 : F) * rho 95 + (39614081257132168796771975168 : F) * rho 96

def relationLc0Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 97 + (158456325028528675187087900672 : F) * rho 98 + (316912650057057350374175801344 : F) * rho 99 + (633825300114114700748351602688 : F) * rho 100 + (1267650600228229401496703205376 : F) * rho 101 + (2535301200456458802993406410752 : F) * rho 102 + (5070602400912917605986812821504 : F) * rho 103 + (10141204801825835211973625643008 : F) * rho 104 + (20282409603651670423947251286016 : F) * rho 105 + (40564819207303340847894502572032 : F) * rho 106 + (81129638414606681695789005144064 : F) * rho 107 + (162259276829213363391578010288128 : F) * rho 108 + (324518553658426726783156020576256 : F) * rho 109 + (649037107316853453566312041152512 : F) * rho 110 + (1298074214633706907132624082305024 : F) * rho 111 + (2596148429267413814265248164610048 : F) * rho 112 + (5192296858534827628530496329220096 : F) * rho 113 + (10384593717069655257060992658440192 : F) * rho 114 + (20769187434139310514121985316880384 : F) * rho 115 + (41538374868278621028243970633760768 : F) * rho 116 + (83076749736557242056487941267521536 : F) * rho 117 + (166153499473114484112975882535043072 : F) * rho 118 + (332306998946228968225951765070086144 : F) * rho 119 + (664613997892457936451903530140172288 : F) * rho 120 + (1329227995784915872903807060280344576 : F) * rho 121 + (2658455991569831745807614120560689152 : F) * rho 122 + (5316911983139663491615228241121378304 : F) * rho 123 + (10633823966279326983230456482242756608 : F) * rho 124 + (21267647932558653966460912964485513216 : F) * rho 125 + (42535295865117307932921825928971026432 : F) * rho 126 + (85070591730234615865843651857942052864 : F) * rho 127 + (170141183460469231731687303715884105728 : F) * rho 128

def relationLc0 (rho : Nat -> F) : F :=
    relationLc0Part0 rho +
    relationLc0Part1 rho +
    relationLc0Part2 rho +
    relationLc0Part3 rho

def relationRow128 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc0 rho) = ((1 : F) * rho 129)

def relationRow129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 130) * ((1 : F) + (-1 : F) * rho 130) = ((0 : F))

def relationRow130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 131) * ((1 : F) + (-1 : F) * rho 131) = ((0 : F))

def relationRow131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * ((1 : F) + (-1 : F) * rho 132) = ((0 : F))

def relationRow132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 133) * ((1 : F) + (-1 : F) * rho 133) = ((0 : F))

def relationRow133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * ((1 : F) + (-1 : F) * rho 134) = ((0 : F))

def relationRow134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 135) * ((1 : F) + (-1 : F) * rho 135) = ((0 : F))

def relationRow135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * ((1 : F) + (-1 : F) * rho 136) = ((0 : F))

def relationRow136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 137) * ((1 : F) + (-1 : F) * rho 137) = ((0 : F))

def relationRow137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * ((1 : F) + (-1 : F) * rho 138) = ((0 : F))

def relationRow138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 139) * ((1 : F) + (-1 : F) * rho 139) = ((0 : F))

def relationRow139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * ((1 : F) + (-1 : F) * rho 140) = ((0 : F))

def relationRow140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 141) * ((1 : F) + (-1 : F) * rho 141) = ((0 : F))

def relationRow141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 142) * ((1 : F) + (-1 : F) * rho 142) = ((0 : F))

def relationRow142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 143) * ((1 : F) + (-1 : F) * rho 143) = ((0 : F))

def relationRow143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 144) * ((1 : F) + (-1 : F) * rho 144) = ((0 : F))

def relationRow144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 145) * ((1 : F) + (-1 : F) * rho 145) = ((0 : F))

def relationRow145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 146) * ((1 : F) + (-1 : F) * rho 146) = ((0 : F))

def relationRow146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 147) * ((1 : F) + (-1 : F) * rho 147) = ((0 : F))

def relationRow147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 148) * ((1 : F) + (-1 : F) * rho 148) = ((0 : F))

def relationRow148 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 149) * ((1 : F) + (-1 : F) * rho 149) = ((0 : F))

def relationRow149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 150) * ((1 : F) + (-1 : F) * rho 150) = ((0 : F))

def relationRow150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 151) * ((1 : F) + (-1 : F) * rho 151) = ((0 : F))

def relationRow151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * ((1 : F) + (-1 : F) * rho 152) = ((0 : F))

def relationRow152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 153) * ((1 : F) + (-1 : F) * rho 153) = ((0 : F))

def relationRow153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 154) * ((1 : F) + (-1 : F) * rho 154) = ((0 : F))

def relationRow154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 155) * ((1 : F) + (-1 : F) * rho 155) = ((0 : F))

def relationRow155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 156) * ((1 : F) + (-1 : F) * rho 156) = ((0 : F))

def relationRow156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 157) * ((1 : F) + (-1 : F) * rho 157) = ((0 : F))

def relationRow157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 158) * ((1 : F) + (-1 : F) * rho 158) = ((0 : F))

def relationRow158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 159) * ((1 : F) + (-1 : F) * rho 159) = ((0 : F))

def relationRow159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 160) * ((1 : F) + (-1 : F) * rho 160) = ((0 : F))

def relationRow160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 161) * ((1 : F) + (-1 : F) * rho 161) = ((0 : F))

def relationRow161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 162) * ((1 : F) + (-1 : F) * rho 162) = ((0 : F))

def relationRow162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 163) * ((1 : F) + (-1 : F) * rho 163) = ((0 : F))

def relationRow163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 164) * ((1 : F) + (-1 : F) * rho 164) = ((0 : F))

def relationRow164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 165) * ((1 : F) + (-1 : F) * rho 165) = ((0 : F))

def relationRow165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 166) * ((1 : F) + (-1 : F) * rho 166) = ((0 : F))

def relationRow166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 167) * ((1 : F) + (-1 : F) * rho 167) = ((0 : F))

def relationRow167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 168) * ((1 : F) + (-1 : F) * rho 168) = ((0 : F))

def relationRow168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 169) * ((1 : F) + (-1 : F) * rho 169) = ((0 : F))

def relationRow169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 170) * ((1 : F) + (-1 : F) * rho 170) = ((0 : F))

def relationRow170 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 171) * ((1 : F) + (-1 : F) * rho 171) = ((0 : F))

def relationRow171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 172) * ((1 : F) + (-1 : F) * rho 172) = ((0 : F))

def relationRow172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 173) * ((1 : F) + (-1 : F) * rho 173) = ((0 : F))

def relationRow173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 174) * ((1 : F) + (-1 : F) * rho 174) = ((0 : F))

def relationRow174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 175) * ((1 : F) + (-1 : F) * rho 175) = ((0 : F))

def relationRow175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 176) * ((1 : F) + (-1 : F) * rho 176) = ((0 : F))

def relationRow176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 177) * ((1 : F) + (-1 : F) * rho 177) = ((0 : F))

def relationRow177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 178) * ((1 : F) + (-1 : F) * rho 178) = ((0 : F))

def relationRow178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 179) * ((1 : F) + (-1 : F) * rho 179) = ((0 : F))

def relationRow179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 180) * ((1 : F) + (-1 : F) * rho 180) = ((0 : F))

def relationRow180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 181) * ((1 : F) + (-1 : F) * rho 181) = ((0 : F))

def relationRow181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 182) * ((1 : F) + (-1 : F) * rho 182) = ((0 : F))

def relationRow182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 183) * ((1 : F) + (-1 : F) * rho 183) = ((0 : F))

def relationRow183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 184) * ((1 : F) + (-1 : F) * rho 184) = ((0 : F))

def relationRow184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 185) * ((1 : F) + (-1 : F) * rho 185) = ((0 : F))

def relationRow185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 186) * ((1 : F) + (-1 : F) * rho 186) = ((0 : F))

def relationRow186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 187) * ((1 : F) + (-1 : F) * rho 187) = ((0 : F))

def relationRow187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 188) * ((1 : F) + (-1 : F) * rho 188) = ((0 : F))

def relationRow188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 189) * ((1 : F) + (-1 : F) * rho 189) = ((0 : F))

def relationRow189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 190) * ((1 : F) + (-1 : F) * rho 190) = ((0 : F))

def relationRow190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 191) * ((1 : F) + (-1 : F) * rho 191) = ((0 : F))

def relationRow191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 192) * ((1 : F) + (-1 : F) * rho 192) = ((0 : F))

def relationRow192 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 193) * ((1 : F) + (-1 : F) * rho 193) = ((0 : F))

def relationRow193 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 194) * ((1 : F) + (-1 : F) * rho 194) = ((0 : F))

def relationRow194 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 195) * ((1 : F) + (-1 : F) * rho 195) = ((0 : F))

def relationRow195 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 196) * ((1 : F) + (-1 : F) * rho 196) = ((0 : F))

def relationRow196 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 197) * ((1 : F) + (-1 : F) * rho 197) = ((0 : F))

def relationRow197 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 198) * ((1 : F) + (-1 : F) * rho 198) = ((0 : F))

def relationRow198 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 199) * ((1 : F) + (-1 : F) * rho 199) = ((0 : F))

def relationRow199 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 200) * ((1 : F) + (-1 : F) * rho 200) = ((0 : F))

def relationRow200 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 201) * ((1 : F) + (-1 : F) * rho 201) = ((0 : F))

def relationRow201 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 202) * ((1 : F) + (-1 : F) * rho 202) = ((0 : F))

def relationRow202 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 203) * ((1 : F) + (-1 : F) * rho 203) = ((0 : F))

def relationRow203 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 204) * ((1 : F) + (-1 : F) * rho 204) = ((0 : F))

def relationRow204 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 205) * ((1 : F) + (-1 : F) * rho 205) = ((0 : F))

def relationRow205 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 206) * ((1 : F) + (-1 : F) * rho 206) = ((0 : F))

def relationRow206 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 207) * ((1 : F) + (-1 : F) * rho 207) = ((0 : F))

def relationRow207 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 208) * ((1 : F) + (-1 : F) * rho 208) = ((0 : F))

def relationRow208 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 209) * ((1 : F) + (-1 : F) * rho 209) = ((0 : F))

def relationRow209 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 210) * ((1 : F) + (-1 : F) * rho 210) = ((0 : F))

def relationRow210 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 211) * ((1 : F) + (-1 : F) * rho 211) = ((0 : F))

def relationRow211 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 212) * ((1 : F) + (-1 : F) * rho 212) = ((0 : F))

def relationRow212 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 213) * ((1 : F) + (-1 : F) * rho 213) = ((0 : F))

def relationRow213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 214) * ((1 : F) + (-1 : F) * rho 214) = ((0 : F))

def relationRow214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 215) * ((1 : F) + (-1 : F) * rho 215) = ((0 : F))

def relationRow215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 216) * ((1 : F) + (-1 : F) * rho 216) = ((0 : F))

def relationRow216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 217) * ((1 : F) + (-1 : F) * rho 217) = ((0 : F))

def relationRow217 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 218) * ((1 : F) + (-1 : F) * rho 218) = ((0 : F))

def relationRow218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 219) * ((1 : F) + (-1 : F) * rho 219) = ((0 : F))

def relationRow219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 220) * ((1 : F) + (-1 : F) * rho 220) = ((0 : F))

def relationRow220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 221) * ((1 : F) + (-1 : F) * rho 221) = ((0 : F))

def relationRow221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 222) * ((1 : F) + (-1 : F) * rho 222) = ((0 : F))

def relationRow222 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 223) * ((1 : F) + (-1 : F) * rho 223) = ((0 : F))

def relationRow223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 224) * ((1 : F) + (-1 : F) * rho 224) = ((0 : F))

def relationRow224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 225) * ((1 : F) + (-1 : F) * rho 225) = ((0 : F))

def relationRow225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 226) * ((1 : F) + (-1 : F) * rho 226) = ((0 : F))

def relationRow226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 227) * ((1 : F) + (-1 : F) * rho 227) = ((0 : F))

def relationRow227 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 228) * ((1 : F) + (-1 : F) * rho 228) = ((0 : F))

def relationRow228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 229) * ((1 : F) + (-1 : F) * rho 229) = ((0 : F))

def relationRow229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 230) * ((1 : F) + (-1 : F) * rho 230) = ((0 : F))

def relationRow230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 231) * ((1 : F) + (-1 : F) * rho 231) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TThresholdFlag_9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202
