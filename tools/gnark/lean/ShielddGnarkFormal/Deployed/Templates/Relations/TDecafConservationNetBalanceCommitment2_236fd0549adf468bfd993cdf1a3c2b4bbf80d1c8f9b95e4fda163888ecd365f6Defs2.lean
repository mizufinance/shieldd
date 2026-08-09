import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs1

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationRow231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 232) * ((1 : F) + (-1 : F) * rho 232) = ((0 : F))

def relationRow232 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 233) * ((1 : F) + (-1 : F) * rho 233) = ((0 : F))

def relationRow233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 234) * ((1 : F) + (-1 : F) * rho 234) = ((0 : F))

def relationRow234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 235) * ((1 : F) + (-1 : F) * rho 235) = ((0 : F))

def relationRow235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 236) * ((1 : F) + (-1 : F) * rho 236) = ((0 : F))

def relationRow236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 237) * ((1 : F) + (-1 : F) * rho 237) = ((0 : F))

def relationRow237 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 238) * ((1 : F) + (-1 : F) * rho 238) = ((0 : F))

def relationRow238 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 239) * ((1 : F) + (-1 : F) * rho 239) = ((0 : F))

def relationRow239 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 240) * ((1 : F) + (-1 : F) * rho 240) = ((0 : F))

def relationRow240 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 241) * ((1 : F) + (-1 : F) * rho 241) = ((0 : F))

def relationRow241 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 242) * ((1 : F) + (-1 : F) * rho 242) = ((0 : F))

def relationRow242 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 243) * ((1 : F) + (-1 : F) * rho 243) = ((0 : F))

def relationRow243 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 244) * ((1 : F) + (-1 : F) * rho 244) = ((0 : F))

def relationRow244 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 245) * ((1 : F) + (-1 : F) * rho 245) = ((0 : F))

def relationRow245 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 246) * ((1 : F) + (-1 : F) * rho 246) = ((0 : F))

def relationRow246 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 247) * ((1 : F) + (-1 : F) * rho 247) = ((0 : F))

def relationRow247 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 248) * ((1 : F) + (-1 : F) * rho 248) = ((0 : F))

def relationRow248 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 249) * ((1 : F) + (-1 : F) * rho 249) = ((0 : F))

def relationRow249 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 250) * ((1 : F) + (-1 : F) * rho 250) = ((0 : F))

def relationRow250 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 251) * ((1 : F) + (-1 : F) * rho 251) = ((0 : F))

def relationRow251 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 252) * ((1 : F) + (-1 : F) * rho 252) = ((0 : F))

def relationRow252 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 253) * ((1 : F) + (-1 : F) * rho 253) = ((0 : F))

def relationRow253 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 254) * ((1 : F) + (-1 : F) * rho 254) = ((0 : F))

def relationRow254 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 255) * ((1 : F) + (-1 : F) * rho 255) = ((0 : F))

def relationRow255 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 256) * ((1 : F) + (-1 : F) * rho 256) = ((0 : F))

def relationRow256 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 257) * ((1 : F) + (-1 : F) * rho 257) = ((0 : F))

def relationLc1Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 130 + (2 : F) * rho 131 + (4 : F) * rho 132 + (8 : F) * rho 133 + (16 : F) * rho 134 + (32 : F) * rho 135 + (64 : F) * rho 136 + (128 : F) * rho 137 + (256 : F) * rho 138 + (512 : F) * rho 139 + (1024 : F) * rho 140 + (2048 : F) * rho 141 + (4096 : F) * rho 142 + (8192 : F) * rho 143 + (16384 : F) * rho 144 + (32768 : F) * rho 145 + (65536 : F) * rho 146 + (131072 : F) * rho 147 + (262144 : F) * rho 148 + (524288 : F) * rho 149 + (1048576 : F) * rho 150 + (2097152 : F) * rho 151 + (4194304 : F) * rho 152 + (8388608 : F) * rho 153 + (16777216 : F) * rho 154 + (33554432 : F) * rho 155 + (67108864 : F) * rho 156 + (134217728 : F) * rho 157 + (268435456 : F) * rho 158 + (536870912 : F) * rho 159 + (1073741824 : F) * rho 160 + (2147483648 : F) * rho 161

def relationLc1Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 162 + (8589934592 : F) * rho 163 + (17179869184 : F) * rho 164 + (34359738368 : F) * rho 165 + (68719476736 : F) * rho 166 + (137438953472 : F) * rho 167 + (274877906944 : F) * rho 168 + (549755813888 : F) * rho 169 + (1099511627776 : F) * rho 170 + (2199023255552 : F) * rho 171 + (4398046511104 : F) * rho 172 + (8796093022208 : F) * rho 173 + (17592186044416 : F) * rho 174 + (35184372088832 : F) * rho 175 + (70368744177664 : F) * rho 176 + (140737488355328 : F) * rho 177 + (281474976710656 : F) * rho 178 + (562949953421312 : F) * rho 179 + (1125899906842624 : F) * rho 180 + (2251799813685248 : F) * rho 181 + (4503599627370496 : F) * rho 182 + (9007199254740992 : F) * rho 183 + (18014398509481984 : F) * rho 184 + (36028797018963968 : F) * rho 185 + (72057594037927936 : F) * rho 186 + (144115188075855872 : F) * rho 187 + (288230376151711744 : F) * rho 188 + (576460752303423488 : F) * rho 189 + (1152921504606846976 : F) * rho 190 + (2305843009213693952 : F) * rho 191 + (4611686018427387904 : F) * rho 192 + (9223372036854775808 : F) * rho 193

def relationLc1Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 194 + (36893488147419103232 : F) * rho 195 + (73786976294838206464 : F) * rho 196 + (147573952589676412928 : F) * rho 197 + (295147905179352825856 : F) * rho 198 + (590295810358705651712 : F) * rho 199 + (1180591620717411303424 : F) * rho 200 + (2361183241434822606848 : F) * rho 201 + (4722366482869645213696 : F) * rho 202 + (9444732965739290427392 : F) * rho 203 + (18889465931478580854784 : F) * rho 204 + (37778931862957161709568 : F) * rho 205 + (75557863725914323419136 : F) * rho 206 + (151115727451828646838272 : F) * rho 207 + (302231454903657293676544 : F) * rho 208 + (604462909807314587353088 : F) * rho 209 + (1208925819614629174706176 : F) * rho 210 + (2417851639229258349412352 : F) * rho 211 + (4835703278458516698824704 : F) * rho 212 + (9671406556917033397649408 : F) * rho 213 + (19342813113834066795298816 : F) * rho 214 + (38685626227668133590597632 : F) * rho 215 + (77371252455336267181195264 : F) * rho 216 + (154742504910672534362390528 : F) * rho 217 + (309485009821345068724781056 : F) * rho 218 + (618970019642690137449562112 : F) * rho 219 + (1237940039285380274899124224 : F) * rho 220 + (2475880078570760549798248448 : F) * rho 221 + (4951760157141521099596496896 : F) * rho 222 + (9903520314283042199192993792 : F) * rho 223 + (19807040628566084398385987584 : F) * rho 224 + (39614081257132168796771975168 : F) * rho 225

def relationLc1Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 226 + (158456325028528675187087900672 : F) * rho 227 + (316912650057057350374175801344 : F) * rho 228 + (633825300114114700748351602688 : F) * rho 229 + (1267650600228229401496703205376 : F) * rho 230 + (2535301200456458802993406410752 : F) * rho 231 + (5070602400912917605986812821504 : F) * rho 232 + (10141204801825835211973625643008 : F) * rho 233 + (20282409603651670423947251286016 : F) * rho 234 + (40564819207303340847894502572032 : F) * rho 235 + (81129638414606681695789005144064 : F) * rho 236 + (162259276829213363391578010288128 : F) * rho 237 + (324518553658426726783156020576256 : F) * rho 238 + (649037107316853453566312041152512 : F) * rho 239 + (1298074214633706907132624082305024 : F) * rho 240 + (2596148429267413814265248164610048 : F) * rho 241 + (5192296858534827628530496329220096 : F) * rho 242 + (10384593717069655257060992658440192 : F) * rho 243 + (20769187434139310514121985316880384 : F) * rho 244 + (41538374868278621028243970633760768 : F) * rho 245 + (83076749736557242056487941267521536 : F) * rho 246 + (166153499473114484112975882535043072 : F) * rho 247 + (332306998946228968225951765070086144 : F) * rho 248 + (664613997892457936451903530140172288 : F) * rho 249 + (1329227995784915872903807060280344576 : F) * rho 250 + (2658455991569831745807614120560689152 : F) * rho 251 + (5316911983139663491615228241121378304 : F) * rho 252 + (10633823966279326983230456482242756608 : F) * rho 253 + (21267647932558653966460912964485513216 : F) * rho 254 + (42535295865117307932921825928971026432 : F) * rho 255 + (85070591730234615865843651857942052864 : F) * rho 256 + (170141183460469231731687303715884105728 : F) * rho 257

def relationLc1 (rho : Nat -> F) : F :=
    relationLc1Part0 rho +
    relationLc1Part1 rho +
    relationLc1Part2 rho +
    relationLc1Part3 rho

def relationRow257 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1 rho) = ((1 : F) * rho 258)

def relationRow258 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 259) * ((1 : F) + (-1 : F) * rho 259) = ((0 : F))

def relationRow259 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 260) * ((1 : F) + (-1 : F) * rho 260) = ((0 : F))

def relationRow260 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 261) * ((1 : F) + (-1 : F) * rho 261) = ((0 : F))

def relationRow261 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 262) * ((1 : F) + (-1 : F) * rho 262) = ((0 : F))

def relationRow262 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 263) * ((1 : F) + (-1 : F) * rho 263) = ((0 : F))

def relationRow263 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 264) * ((1 : F) + (-1 : F) * rho 264) = ((0 : F))

def relationRow264 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 265) * ((1 : F) + (-1 : F) * rho 265) = ((0 : F))

def relationRow265 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 266) * ((1 : F) + (-1 : F) * rho 266) = ((0 : F))

def relationRow266 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 267) * ((1 : F) + (-1 : F) * rho 267) = ((0 : F))

def relationRow267 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 268) * ((1 : F) + (-1 : F) * rho 268) = ((0 : F))

def relationRow268 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 269) * ((1 : F) + (-1 : F) * rho 269) = ((0 : F))

def relationRow269 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 270) * ((1 : F) + (-1 : F) * rho 270) = ((0 : F))

def relationRow270 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 271) * ((1 : F) + (-1 : F) * rho 271) = ((0 : F))

def relationRow271 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 272) * ((1 : F) + (-1 : F) * rho 272) = ((0 : F))

def relationRow272 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 273) * ((1 : F) + (-1 : F) * rho 273) = ((0 : F))

def relationRow273 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 274) * ((1 : F) + (-1 : F) * rho 274) = ((0 : F))

def relationRow274 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 275) * ((1 : F) + (-1 : F) * rho 275) = ((0 : F))

def relationRow275 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 276) * ((1 : F) + (-1 : F) * rho 276) = ((0 : F))

def relationRow276 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 277) * ((1 : F) + (-1 : F) * rho 277) = ((0 : F))

def relationRow277 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 278) * ((1 : F) + (-1 : F) * rho 278) = ((0 : F))

def relationRow278 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 279) * ((1 : F) + (-1 : F) * rho 279) = ((0 : F))

def relationRow279 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 280) * ((1 : F) + (-1 : F) * rho 280) = ((0 : F))

def relationRow280 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 281) * ((1 : F) + (-1 : F) * rho 281) = ((0 : F))

def relationRow281 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 282) * ((1 : F) + (-1 : F) * rho 282) = ((0 : F))

def relationRow282 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 283) * ((1 : F) + (-1 : F) * rho 283) = ((0 : F))

def relationRow283 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 284) * ((1 : F) + (-1 : F) * rho 284) = ((0 : F))

def relationRow284 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 285) * ((1 : F) + (-1 : F) * rho 285) = ((0 : F))

def relationRow285 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 286) * ((1 : F) + (-1 : F) * rho 286) = ((0 : F))

def relationRow286 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 287) * ((1 : F) + (-1 : F) * rho 287) = ((0 : F))

def relationRow287 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 288) * ((1 : F) + (-1 : F) * rho 288) = ((0 : F))

def relationRow288 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 289) * ((1 : F) + (-1 : F) * rho 289) = ((0 : F))

def relationRow289 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 290) * ((1 : F) + (-1 : F) * rho 290) = ((0 : F))

def relationRow290 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 291) * ((1 : F) + (-1 : F) * rho 291) = ((0 : F))

def relationRow291 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 292) * ((1 : F) + (-1 : F) * rho 292) = ((0 : F))

def relationRow292 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 293) * ((1 : F) + (-1 : F) * rho 293) = ((0 : F))

def relationRow293 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 294) * ((1 : F) + (-1 : F) * rho 294) = ((0 : F))

def relationRow294 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 295) * ((1 : F) + (-1 : F) * rho 295) = ((0 : F))

def relationRow295 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 296) * ((1 : F) + (-1 : F) * rho 296) = ((0 : F))

def relationRow296 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 297) * ((1 : F) + (-1 : F) * rho 297) = ((0 : F))

def relationRow297 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 298) * ((1 : F) + (-1 : F) * rho 298) = ((0 : F))

def relationRow298 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 299) * ((1 : F) + (-1 : F) * rho 299) = ((0 : F))

def relationRow299 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 300) * ((1 : F) + (-1 : F) * rho 300) = ((0 : F))

def relationRow300 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 301) * ((1 : F) + (-1 : F) * rho 301) = ((0 : F))

def relationRow301 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 302) * ((1 : F) + (-1 : F) * rho 302) = ((0 : F))

def relationRow302 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 303) * ((1 : F) + (-1 : F) * rho 303) = ((0 : F))

def relationRow303 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 304) * ((1 : F) + (-1 : F) * rho 304) = ((0 : F))

def relationRow304 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 305) * ((1 : F) + (-1 : F) * rho 305) = ((0 : F))

def relationRow305 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 306) * ((1 : F) + (-1 : F) * rho 306) = ((0 : F))

def relationRow306 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 307) * ((1 : F) + (-1 : F) * rho 307) = ((0 : F))

def relationRow307 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 308) * ((1 : F) + (-1 : F) * rho 308) = ((0 : F))

def relationRow308 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 309) * ((1 : F) + (-1 : F) * rho 309) = ((0 : F))

def relationRow309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 310) * ((1 : F) + (-1 : F) * rho 310) = ((0 : F))

def relationRow310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 311) * ((1 : F) + (-1 : F) * rho 311) = ((0 : F))

def relationRow311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 312) * ((1 : F) + (-1 : F) * rho 312) = ((0 : F))

def relationRow312 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 313) * ((1 : F) + (-1 : F) * rho 313) = ((0 : F))

def relationRow313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 314) * ((1 : F) + (-1 : F) * rho 314) = ((0 : F))

def relationRow314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 315) * ((1 : F) + (-1 : F) * rho 315) = ((0 : F))

def relationRow315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 316) * ((1 : F) + (-1 : F) * rho 316) = ((0 : F))

def relationRow316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 317) * ((1 : F) + (-1 : F) * rho 317) = ((0 : F))

def relationRow317 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 318) * ((1 : F) + (-1 : F) * rho 318) = ((0 : F))

def relationRow318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 319) * ((1 : F) + (-1 : F) * rho 319) = ((0 : F))

def relationRow319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 320) * ((1 : F) + (-1 : F) * rho 320) = ((0 : F))

def relationRow320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 321) * ((1 : F) + (-1 : F) * rho 321) = ((0 : F))

def relationRow321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 322) * ((1 : F) + (-1 : F) * rho 322) = ((0 : F))

def relationRow322 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 323) * ((1 : F) + (-1 : F) * rho 323) = ((0 : F))

def relationRow323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 324) * ((1 : F) + (-1 : F) * rho 324) = ((0 : F))

def relationRow324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 325) * ((1 : F) + (-1 : F) * rho 325) = ((0 : F))

def relationRow325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 326) * ((1 : F) + (-1 : F) * rho 326) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
