import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.DtkAdapterSeg16Base
import ShielddGnarkFormal.Deployed.Dtk.LtConst
import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

def seg16Q4IlAtom0 (rho : Nat -> Seg16.F) : Seg16.F := rho 15048
def seg16Q4IlAtom1 (rho : Nat -> Seg16.F) : Seg16.F := rho 15050 + (-1 : Seg16.F) * rho 15051
def seg16Q4IlAtom2 (rho : Nat -> Seg16.F) : Seg16.F := rho 15053 + (-1 : Seg16.F) * rho 15054
def seg16Q4IlAtom3 (rho : Nat -> Seg16.F) : Seg16.F := rho 15056 + (-1 : Seg16.F) * rho 15057
def seg16Q4IlAtom4 (rho : Nat -> Seg16.F) : Seg16.F := rho 15060 + (-1 : Seg16.F) * rho 15061
def seg16Q4IlAtom5 (rho : Nat -> Seg16.F) : Seg16.F := rho 15064 + (-1 : Seg16.F) * rho 15065
def seg16Q4IlAtom6 (rho : Nat -> Seg16.F) : Seg16.F := rho 15067 + (-1 : Seg16.F) * rho 15068
def seg16Q4IlAtom7 (rho : Nat -> Seg16.F) : Seg16.F := rho 15071 + (-1 : Seg16.F) * rho 15072
def seg16Q4IlAtom8 (rho : Nat -> Seg16.F) : Seg16.F := rho 15074 + (-1 : Seg16.F) * rho 15075
def seg16Q4IlAtom9 (rho : Nat -> Seg16.F) : Seg16.F := rho 15077 + (-1 : Seg16.F) * rho 15078
def seg16Q4IlAtom10 (rho : Nat -> Seg16.F) : Seg16.F := rho 15080 + (-1 : Seg16.F) * rho 15081
def seg16Q4IlAtom11 (rho : Nat -> Seg16.F) : Seg16.F := rho 15083 + (-1 : Seg16.F) * rho 15084
def seg16Q4IlAtom12 (rho : Nat -> Seg16.F) : Seg16.F := rho 15087 + (-1 : Seg16.F) * rho 15088
def seg16Q4IlAtom13 (rho : Nat -> Seg16.F) : Seg16.F := rho 15095 + (-1 : Seg16.F) * rho 15096
def seg16Q4IlAtom14 (rho : Nat -> Seg16.F) : Seg16.F := rho 15098 + (-1 : Seg16.F) * rho 15099
def seg16Q4IlAtom15 (rho : Nat -> Seg16.F) : Seg16.F := rho 15101 + (-1 : Seg16.F) * rho 15102
def seg16Q4IlAtom16 (rho : Nat -> Seg16.F) : Seg16.F := rho 15104
def seg16Q4IlAtom17 (rho : Nat -> Seg16.F) : Seg16.F := rho 15105
def seg16Q4IlAtom18 (rho : Nat -> Seg16.F) : Seg16.F := rho 15107 + (-1 : Seg16.F) * rho 15108
def seg16Q4IlAtom19 (rho : Nat -> Seg16.F) : Seg16.F := rho 15110 + (-1 : Seg16.F) * rho 15111
def seg16Q4IlAtom20 (rho : Nat -> Seg16.F) : Seg16.F := rho 15113 + (-1 : Seg16.F) * rho 15114
def seg16Q4IlAtom21 (rho : Nat -> Seg16.F) : Seg16.F := rho 15117 + (-1 : Seg16.F) * rho 15118
def seg16Q4IlAtom22 (rho : Nat -> Seg16.F) : Seg16.F := rho 15120 + (-1 : Seg16.F) * rho 15121
def seg16Q4IlAtom23 (rho : Nat -> Seg16.F) : Seg16.F := rho 15123 + (-1 : Seg16.F) * rho 15124
def seg16Q4IlAtom24 (rho : Nat -> Seg16.F) : Seg16.F := rho 15126 + (-1 : Seg16.F) * rho 15127
def seg16Q4IlAtom25 (rho : Nat -> Seg16.F) : Seg16.F := rho 15129 + (-1 : Seg16.F) * rho 15130
def seg16Q4IlAtom26 (rho : Nat -> Seg16.F) : Seg16.F := rho 15132 + (-1 : Seg16.F) * rho 15133
def seg16Q4IlAtom27 (rho : Nat -> Seg16.F) : Seg16.F := rho 15139 + (-1 : Seg16.F) * rho 15140
def seg16Q4IlAtom28 (rho : Nat -> Seg16.F) : Seg16.F := rho 15142 + (-1 : Seg16.F) * rho 15143
def seg16Q4IlAtom29 (rho : Nat -> Seg16.F) : Seg16.F := rho 15146 + (-1 : Seg16.F) * rho 15147
def seg16Q4IlAtom30 (rho : Nat -> Seg16.F) : Seg16.F := rho 15149 + (-1 : Seg16.F) * rho 15150
def seg16Q4IlAtom31 (rho : Nat -> Seg16.F) : Seg16.F := rho 15152 + (-1 : Seg16.F) * rho 15153
def seg16Q4IlAtom32 (rho : Nat -> Seg16.F) : Seg16.F := rho 15156 + (-1 : Seg16.F) * rho 15157
def seg16Q4IlAtom33 (rho : Nat -> Seg16.F) : Seg16.F := rho 15160
def seg16Q4IlAtom34 (rho : Nat -> Seg16.F) : Seg16.F := rho 15161
def seg16Q4IlAtom35 (rho : Nat -> Seg16.F) : Seg16.F := rho 15170 + (-1 : Seg16.F) * rho 15171
def seg16Q4IlAtom36 (rho : Nat -> Seg16.F) : Seg16.F := rho 15173 + (-1 : Seg16.F) * rho 15174
def seg16Q4IlAtom37 (rho : Nat -> Seg16.F) : Seg16.F := rho 15179 + (-1 : Seg16.F) * rho 15180
def seg16Q4IlAtom38 (rho : Nat -> Seg16.F) : Seg16.F := rho 15184 + (-1 : Seg16.F) * rho 15185
def seg16Q4IlAtom39 (rho : Nat -> Seg16.F) : Seg16.F := rho 15189 + (-1 : Seg16.F) * rho 15190
def seg16Q4IlAtom40 (rho : Nat -> Seg16.F) : Seg16.F := rho 15193 + (-1 : Seg16.F) * rho 15194
def seg16Q4IlAtom41 (rho : Nat -> Seg16.F) : Seg16.F := rho 15198 + (-1 : Seg16.F) * rho 15199
def seg16Q4IlAtom42 (rho : Nat -> Seg16.F) : Seg16.F := rho 15202 + (-1 : Seg16.F) * rho 15203
def seg16Q4IlAtom43 (rho : Nat -> Seg16.F) : Seg16.F := rho 15205 + (-1 : Seg16.F) * rho 15206
def seg16Q4IlAtom44 (rho : Nat -> Seg16.F) : Seg16.F := rho 15208 + (-1 : Seg16.F) * rho 15209
def seg16Q4IlAtom45 (rho : Nat -> Seg16.F) : Seg16.F := rho 15214 + (-1 : Seg16.F) * rho 15215
def seg16Q4IlAtom46 (rho : Nat -> Seg16.F) : Seg16.F := rho 15218 + (-1 : Seg16.F) * rho 15219
def seg16Q4IlAtom47 (rho : Nat -> Seg16.F) : Seg16.F := rho 15221 + (-1 : Seg16.F) * rho 15222
def seg16Q4IlAtom48 (rho : Nat -> Seg16.F) : Seg16.F := rho 15226 + (-1 : Seg16.F) * rho 15227
def seg16Q4IlAtom49 (rho : Nat -> Seg16.F) : Seg16.F := rho 15230 + (-1 : Seg16.F) * rho 15231
def seg16Q4IlAtom50 (rho : Nat -> Seg16.F) : Seg16.F := rho 15235
def seg16Q4IlAtom51 (rho : Nat -> Seg16.F) : Seg16.F := rho 15236
def seg16Q4IlAtom52 (rho : Nat -> Seg16.F) : Seg16.F := rho 15238 + (-1 : Seg16.F) * rho 15239
def seg16Q4IlAtom53 (rho : Nat -> Seg16.F) : Seg16.F := rho 15241 + (-1 : Seg16.F) * rho 15242
def seg16Q4IlAtom54 (rho : Nat -> Seg16.F) : Seg16.F := rho 15244 + (-1 : Seg16.F) * rho 15245
def seg16Q4IlAtom55 (rho : Nat -> Seg16.F) : Seg16.F := rho 15249 + (-1 : Seg16.F) * rho 15250
def seg16Q4IlAtom56 (rho : Nat -> Seg16.F) : Seg16.F := rho 15252 + (-1 : Seg16.F) * rho 15253
def seg16Q4IlAtom57 (rho : Nat -> Seg16.F) : Seg16.F := rho 15263 + (-1 : Seg16.F) * rho 15264
def seg16Q4IlAtom58 (rho : Nat -> Seg16.F) : Seg16.F := rho 15268 + (-1 : Seg16.F) * rho 15269
def seg16Q4IlAtom59 (rho : Nat -> Seg16.F) : Seg16.F := rho 15271 + (-1 : Seg16.F) * rho 15272
def seg16Q4IlAtom60 (rho : Nat -> Seg16.F) : Seg16.F := rho 15282 + (-1 : Seg16.F) * rho 15283
def seg16Q4IlAtom61 (rho : Nat -> Seg16.F) : Seg16.F := rho 15286 + (-1 : Seg16.F) * rho 15287

def seg16Q4Pe253 (rho : Nat -> Seg16.F) : Seg16.F := (1 : Seg16.F)
def seg16Q4Il253 (rho : Nat -> Seg16.F) : Seg16.F := (0 : Seg16.F)
def seg16Q4Pe252 (rho : Nat -> Seg16.F) : Seg16.F := (1 : Seg16.F) + (-1 : Seg16.F) * rho 14316
def seg16Q4Il252 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il253 rho
def seg16Q4Pe251 (rho : Nat -> Seg16.F) : Seg16.F := rho 14920
def seg16Q4Il251 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il252 rho
def seg16Q4Pe250 (rho : Nat -> Seg16.F) : Seg16.F := rho 14921
def seg16Q4Il250 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il251 rho
def seg16Q4Pe249 (rho : Nat -> Seg16.F) : Seg16.F := rho 14922
def seg16Q4Il249 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il250 rho
def seg16Q4Pe248 (rho : Nat -> Seg16.F) : Seg16.F := rho 14923
def seg16Q4Il248 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il249 rho
def seg16Q4Pe247 (rho : Nat -> Seg16.F) : Seg16.F := rho 14924
def seg16Q4Il247 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il248 rho
def seg16Q4Pe246 (rho : Nat -> Seg16.F) : Seg16.F := rho 14925
def seg16Q4Il246 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il247 rho
def seg16Q4Pe245 (rho : Nat -> Seg16.F) : Seg16.F := rho 14926
def seg16Q4Il245 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il246 rho
def seg16Q4Pe244 (rho : Nat -> Seg16.F) : Seg16.F := rho 14927
def seg16Q4Il244 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il245 rho
def seg16Q4Pe243 (rho : Nat -> Seg16.F) : Seg16.F := rho 14928
def seg16Q4Il243 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il244 rho
def seg16Q4Pe242 (rho : Nat -> Seg16.F) : Seg16.F := rho 14929
def seg16Q4Il242 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il243 rho
def seg16Q4Pe241 (rho : Nat -> Seg16.F) : Seg16.F := rho 14930
def seg16Q4Il241 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il242 rho
def seg16Q4Pe240 (rho : Nat -> Seg16.F) : Seg16.F := rho 14931
def seg16Q4Il240 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il241 rho
def seg16Q4Pe239 (rho : Nat -> Seg16.F) : Seg16.F := rho 14932
def seg16Q4Il239 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il240 rho
def seg16Q4Pe238 (rho : Nat -> Seg16.F) : Seg16.F := rho 14933
def seg16Q4Il238 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il239 rho
def seg16Q4Pe237 (rho : Nat -> Seg16.F) : Seg16.F := rho 14934
def seg16Q4Il237 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il238 rho
def seg16Q4Pe236 (rho : Nat -> Seg16.F) : Seg16.F := rho 14935
def seg16Q4Il236 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il237 rho
def seg16Q4Pe235 (rho : Nat -> Seg16.F) : Seg16.F := rho 14936
def seg16Q4Il235 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il236 rho
def seg16Q4Pe234 (rho : Nat -> Seg16.F) : Seg16.F := rho 14937
def seg16Q4Il234 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il235 rho
def seg16Q4Pe233 (rho : Nat -> Seg16.F) : Seg16.F := rho 14938
def seg16Q4Il233 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il234 rho
def seg16Q4Pe232 (rho : Nat -> Seg16.F) : Seg16.F := rho 14939
def seg16Q4Il232 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il233 rho
def seg16Q4Pe231 (rho : Nat -> Seg16.F) : Seg16.F := rho 14940
def seg16Q4Il231 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il232 rho
def seg16Q4Pe230 (rho : Nat -> Seg16.F) : Seg16.F := rho 14941
def seg16Q4Il230 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il231 rho
def seg16Q4Pe229 (rho : Nat -> Seg16.F) : Seg16.F := rho 14942
def seg16Q4Il229 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il230 rho
def seg16Q4Pe228 (rho : Nat -> Seg16.F) : Seg16.F := rho 14943
def seg16Q4Il228 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il229 rho
def seg16Q4Pe227 (rho : Nat -> Seg16.F) : Seg16.F := rho 14944
def seg16Q4Il227 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il228 rho
def seg16Q4Pe226 (rho : Nat -> Seg16.F) : Seg16.F := rho 14945
def seg16Q4Il226 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il227 rho
def seg16Q4Pe225 (rho : Nat -> Seg16.F) : Seg16.F := rho 14946
def seg16Q4Il225 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il226 rho
def seg16Q4Pe224 (rho : Nat -> Seg16.F) : Seg16.F := rho 14947
def seg16Q4Il224 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il225 rho
def seg16Q4Pe223 (rho : Nat -> Seg16.F) : Seg16.F := rho 14948
def seg16Q4Il223 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il224 rho
def seg16Q4Pe222 (rho : Nat -> Seg16.F) : Seg16.F := rho 14949
def seg16Q4Il222 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il223 rho
def seg16Q4Pe221 (rho : Nat -> Seg16.F) : Seg16.F := rho 14950
def seg16Q4Il221 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il222 rho
def seg16Q4Pe220 (rho : Nat -> Seg16.F) : Seg16.F := rho 14951
def seg16Q4Il220 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il221 rho
def seg16Q4Pe219 (rho : Nat -> Seg16.F) : Seg16.F := rho 14952
def seg16Q4Il219 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il220 rho
def seg16Q4Pe218 (rho : Nat -> Seg16.F) : Seg16.F := rho 14953
def seg16Q4Il218 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il219 rho
def seg16Q4Pe217 (rho : Nat -> Seg16.F) : Seg16.F := rho 14954
def seg16Q4Il217 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il218 rho
def seg16Q4Pe216 (rho : Nat -> Seg16.F) : Seg16.F := rho 14955
def seg16Q4Il216 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il217 rho
def seg16Q4Pe215 (rho : Nat -> Seg16.F) : Seg16.F := rho 14956
def seg16Q4Il215 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il216 rho
def seg16Q4Pe214 (rho : Nat -> Seg16.F) : Seg16.F := rho 14957
def seg16Q4Il214 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il215 rho
def seg16Q4Pe213 (rho : Nat -> Seg16.F) : Seg16.F := rho 14958
def seg16Q4Il213 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il214 rho
def seg16Q4Pe212 (rho : Nat -> Seg16.F) : Seg16.F := rho 14959
def seg16Q4Il212 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il213 rho
def seg16Q4Pe211 (rho : Nat -> Seg16.F) : Seg16.F := rho 14960
def seg16Q4Il211 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il212 rho
def seg16Q4Pe210 (rho : Nat -> Seg16.F) : Seg16.F := rho 14961
def seg16Q4Il210 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il211 rho
def seg16Q4Pe209 (rho : Nat -> Seg16.F) : Seg16.F := rho 14962
def seg16Q4Il209 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il210 rho
def seg16Q4Pe208 (rho : Nat -> Seg16.F) : Seg16.F := rho 14963
def seg16Q4Il208 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il209 rho
def seg16Q4Pe207 (rho : Nat -> Seg16.F) : Seg16.F := rho 14964
def seg16Q4Il207 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il208 rho
def seg16Q4Pe206 (rho : Nat -> Seg16.F) : Seg16.F := rho 14965
def seg16Q4Il206 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il207 rho
def seg16Q4Pe205 (rho : Nat -> Seg16.F) : Seg16.F := rho 14966
def seg16Q4Il205 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il206 rho
def seg16Q4Pe204 (rho : Nat -> Seg16.F) : Seg16.F := rho 14967
def seg16Q4Il204 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il205 rho
def seg16Q4Pe203 (rho : Nat -> Seg16.F) : Seg16.F := rho 14968
def seg16Q4Il203 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il204 rho
def seg16Q4Pe202 (rho : Nat -> Seg16.F) : Seg16.F := rho 14969
def seg16Q4Il202 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il203 rho
def seg16Q4Pe201 (rho : Nat -> Seg16.F) : Seg16.F := rho 14970
def seg16Q4Il201 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il202 rho
def seg16Q4Pe200 (rho : Nat -> Seg16.F) : Seg16.F := rho 14971
def seg16Q4Il200 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il201 rho
def seg16Q4Pe199 (rho : Nat -> Seg16.F) : Seg16.F := rho 14972
def seg16Q4Il199 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il200 rho
def seg16Q4Pe198 (rho : Nat -> Seg16.F) : Seg16.F := rho 14973
def seg16Q4Il198 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il199 rho
def seg16Q4Pe197 (rho : Nat -> Seg16.F) : Seg16.F := rho 14974
def seg16Q4Il197 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il198 rho
def seg16Q4Pe196 (rho : Nat -> Seg16.F) : Seg16.F := rho 14975
def seg16Q4Il196 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il197 rho
def seg16Q4Pe195 (rho : Nat -> Seg16.F) : Seg16.F := rho 14976
def seg16Q4Il195 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il196 rho
def seg16Q4Pe194 (rho : Nat -> Seg16.F) : Seg16.F := rho 14977
def seg16Q4Il194 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il195 rho
def seg16Q4Pe193 (rho : Nat -> Seg16.F) : Seg16.F := rho 14978
def seg16Q4Il193 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il194 rho
def seg16Q4Pe192 (rho : Nat -> Seg16.F) : Seg16.F := rho 14979
def seg16Q4Il192 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il193 rho
def seg16Q4Pe191 (rho : Nat -> Seg16.F) : Seg16.F := rho 14980
def seg16Q4Il191 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il192 rho
def seg16Q4Pe190 (rho : Nat -> Seg16.F) : Seg16.F := rho 14981
def seg16Q4Il190 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il191 rho
def seg16Q4Pe189 (rho : Nat -> Seg16.F) : Seg16.F := rho 14982
def seg16Q4Il189 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il190 rho
def seg16Q4Pe188 (rho : Nat -> Seg16.F) : Seg16.F := rho 14983
def seg16Q4Il188 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il189 rho
def seg16Q4Pe187 (rho : Nat -> Seg16.F) : Seg16.F := rho 14984
def seg16Q4Il187 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il188 rho
def seg16Q4Pe186 (rho : Nat -> Seg16.F) : Seg16.F := rho 14985
def seg16Q4Il186 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il187 rho
def seg16Q4Pe185 (rho : Nat -> Seg16.F) : Seg16.F := rho 14986
def seg16Q4Il185 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il186 rho
def seg16Q4Pe184 (rho : Nat -> Seg16.F) : Seg16.F := rho 14987
def seg16Q4Il184 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il185 rho
def seg16Q4Pe183 (rho : Nat -> Seg16.F) : Seg16.F := rho 14988
def seg16Q4Il183 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il184 rho
def seg16Q4Pe182 (rho : Nat -> Seg16.F) : Seg16.F := rho 14989
def seg16Q4Il182 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il183 rho
def seg16Q4Pe181 (rho : Nat -> Seg16.F) : Seg16.F := rho 14990
def seg16Q4Il181 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il182 rho
def seg16Q4Pe180 (rho : Nat -> Seg16.F) : Seg16.F := rho 14991
def seg16Q4Il180 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il181 rho
def seg16Q4Pe179 (rho : Nat -> Seg16.F) : Seg16.F := rho 14992
def seg16Q4Il179 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il180 rho
def seg16Q4Pe178 (rho : Nat -> Seg16.F) : Seg16.F := rho 14993
def seg16Q4Il178 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il179 rho
def seg16Q4Pe177 (rho : Nat -> Seg16.F) : Seg16.F := rho 14994
def seg16Q4Il177 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il178 rho
def seg16Q4Pe176 (rho : Nat -> Seg16.F) : Seg16.F := rho 14995
def seg16Q4Il176 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il177 rho
def seg16Q4Pe175 (rho : Nat -> Seg16.F) : Seg16.F := rho 14996
def seg16Q4Il175 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il176 rho
def seg16Q4Pe174 (rho : Nat -> Seg16.F) : Seg16.F := rho 14997
def seg16Q4Il174 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il175 rho
def seg16Q4Pe173 (rho : Nat -> Seg16.F) : Seg16.F := rho 14998
def seg16Q4Il173 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il174 rho
def seg16Q4Pe172 (rho : Nat -> Seg16.F) : Seg16.F := rho 14999
def seg16Q4Il172 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il173 rho
def seg16Q4Pe171 (rho : Nat -> Seg16.F) : Seg16.F := rho 15000
def seg16Q4Il171 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il172 rho
def seg16Q4Pe170 (rho : Nat -> Seg16.F) : Seg16.F := rho 15001
def seg16Q4Il170 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il171 rho
def seg16Q4Pe169 (rho : Nat -> Seg16.F) : Seg16.F := rho 15002
def seg16Q4Il169 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il170 rho
def seg16Q4Pe168 (rho : Nat -> Seg16.F) : Seg16.F := rho 15003
def seg16Q4Il168 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il169 rho
def seg16Q4Pe167 (rho : Nat -> Seg16.F) : Seg16.F := rho 15004
def seg16Q4Il167 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il168 rho
def seg16Q4Pe166 (rho : Nat -> Seg16.F) : Seg16.F := rho 15005
def seg16Q4Il166 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il167 rho
def seg16Q4Pe165 (rho : Nat -> Seg16.F) : Seg16.F := rho 15006
def seg16Q4Il165 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il166 rho
def seg16Q4Pe164 (rho : Nat -> Seg16.F) : Seg16.F := rho 15007
def seg16Q4Il164 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il165 rho
def seg16Q4Pe163 (rho : Nat -> Seg16.F) : Seg16.F := rho 15008
def seg16Q4Il163 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il164 rho
def seg16Q4Pe162 (rho : Nat -> Seg16.F) : Seg16.F := rho 15009
def seg16Q4Il162 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il163 rho
def seg16Q4Pe161 (rho : Nat -> Seg16.F) : Seg16.F := rho 15010
def seg16Q4Il161 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il162 rho
def seg16Q4Pe160 (rho : Nat -> Seg16.F) : Seg16.F := rho 15011
def seg16Q4Il160 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il161 rho
def seg16Q4Pe159 (rho : Nat -> Seg16.F) : Seg16.F := rho 15012
def seg16Q4Il159 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il160 rho
def seg16Q4Pe158 (rho : Nat -> Seg16.F) : Seg16.F := rho 15013
def seg16Q4Il158 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il159 rho
def seg16Q4Pe157 (rho : Nat -> Seg16.F) : Seg16.F := rho 15014
def seg16Q4Il157 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il158 rho
def seg16Q4Pe156 (rho : Nat -> Seg16.F) : Seg16.F := rho 15015
def seg16Q4Il156 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il157 rho
def seg16Q4Pe155 (rho : Nat -> Seg16.F) : Seg16.F := rho 15016
def seg16Q4Il155 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il156 rho
def seg16Q4Pe154 (rho : Nat -> Seg16.F) : Seg16.F := rho 15017
def seg16Q4Il154 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il155 rho
def seg16Q4Pe153 (rho : Nat -> Seg16.F) : Seg16.F := rho 15018
def seg16Q4Il153 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il154 rho
def seg16Q4Pe152 (rho : Nat -> Seg16.F) : Seg16.F := rho 15019
def seg16Q4Il152 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il153 rho
def seg16Q4Pe151 (rho : Nat -> Seg16.F) : Seg16.F := rho 15020
def seg16Q4Il151 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il152 rho
def seg16Q4Pe150 (rho : Nat -> Seg16.F) : Seg16.F := rho 15021
def seg16Q4Il150 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il151 rho
def seg16Q4Pe149 (rho : Nat -> Seg16.F) : Seg16.F := rho 15022
def seg16Q4Il149 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il150 rho
def seg16Q4Pe148 (rho : Nat -> Seg16.F) : Seg16.F := rho 15023
def seg16Q4Il148 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il149 rho
def seg16Q4Pe147 (rho : Nat -> Seg16.F) : Seg16.F := rho 15024
def seg16Q4Il147 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il148 rho
def seg16Q4Pe146 (rho : Nat -> Seg16.F) : Seg16.F := rho 15025
def seg16Q4Il146 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il147 rho
def seg16Q4Pe145 (rho : Nat -> Seg16.F) : Seg16.F := rho 15026
def seg16Q4Il145 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il146 rho
def seg16Q4Pe144 (rho : Nat -> Seg16.F) : Seg16.F := rho 15027
def seg16Q4Il144 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il145 rho
def seg16Q4Pe143 (rho : Nat -> Seg16.F) : Seg16.F := rho 15028
def seg16Q4Il143 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il144 rho
def seg16Q4Pe142 (rho : Nat -> Seg16.F) : Seg16.F := rho 15029
def seg16Q4Il142 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il143 rho
def seg16Q4Pe141 (rho : Nat -> Seg16.F) : Seg16.F := rho 15030
def seg16Q4Il141 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il142 rho
def seg16Q4Pe140 (rho : Nat -> Seg16.F) : Seg16.F := rho 15031
def seg16Q4Il140 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il141 rho
def seg16Q4Pe139 (rho : Nat -> Seg16.F) : Seg16.F := rho 15032
def seg16Q4Il139 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il140 rho
def seg16Q4Pe138 (rho : Nat -> Seg16.F) : Seg16.F := rho 15033
def seg16Q4Il138 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il139 rho
def seg16Q4Pe137 (rho : Nat -> Seg16.F) : Seg16.F := rho 15034
def seg16Q4Il137 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il138 rho
def seg16Q4Pe136 (rho : Nat -> Seg16.F) : Seg16.F := rho 15035
def seg16Q4Il136 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il137 rho
def seg16Q4Pe135 (rho : Nat -> Seg16.F) : Seg16.F := rho 15036
def seg16Q4Il135 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il136 rho
def seg16Q4Pe134 (rho : Nat -> Seg16.F) : Seg16.F := rho 15037
def seg16Q4Il134 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il135 rho
def seg16Q4Pe133 (rho : Nat -> Seg16.F) : Seg16.F := rho 15038
def seg16Q4Il133 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il134 rho
def seg16Q4Pe132 (rho : Nat -> Seg16.F) : Seg16.F := rho 15039
def seg16Q4Il132 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il133 rho
def seg16Q4Pe131 (rho : Nat -> Seg16.F) : Seg16.F := rho 15040
def seg16Q4Il131 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il132 rho
def seg16Q4Pe130 (rho : Nat -> Seg16.F) : Seg16.F := rho 15041
def seg16Q4Il130 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il131 rho
def seg16Q4Pe129 (rho : Nat -> Seg16.F) : Seg16.F := rho 15042
def seg16Q4Il129 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il130 rho
def seg16Q4Pe128 (rho : Nat -> Seg16.F) : Seg16.F := rho 15043
def seg16Q4Il128 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il129 rho
def seg16Q4Pe127 (rho : Nat -> Seg16.F) : Seg16.F := rho 15044
def seg16Q4Il127 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il128 rho
def seg16Q4Pe126 (rho : Nat -> Seg16.F) : Seg16.F := rho 15045
def seg16Q4Il126 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il127 rho
def seg16Q4Pe125 (rho : Nat -> Seg16.F) : Seg16.F := rho 15046
def seg16Q4Il125 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il126 rho
def seg16Q4Pe124 (rho : Nat -> Seg16.F) : Seg16.F := rho 15047
def seg16Q4Il124 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il125 rho
def seg16Q4Pe123 (rho : Nat -> Seg16.F) : Seg16.F := rho 15049
def seg16Q4Il123 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il124 rho + seg16Q4IlAtom0 rho
def seg16Q4Pe122 (rho : Nat -> Seg16.F) : Seg16.F := rho 15052
def seg16Q4Il122 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il123 rho + seg16Q4IlAtom1 rho
def seg16Q4Pe121 (rho : Nat -> Seg16.F) : Seg16.F := rho 15055
def seg16Q4Il121 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il122 rho + seg16Q4IlAtom2 rho
def seg16Q4Pe120 (rho : Nat -> Seg16.F) : Seg16.F := rho 15058
def seg16Q4Il120 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il121 rho + seg16Q4IlAtom3 rho
def seg16Q4Pe119 (rho : Nat -> Seg16.F) : Seg16.F := rho 15059
def seg16Q4Il119 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il120 rho
def seg16Q4Pe118 (rho : Nat -> Seg16.F) : Seg16.F := rho 15062
def seg16Q4Il118 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il119 rho + seg16Q4IlAtom4 rho
def seg16Q4Pe117 (rho : Nat -> Seg16.F) : Seg16.F := rho 15063
def seg16Q4Il117 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il118 rho
def seg16Q4Pe116 (rho : Nat -> Seg16.F) : Seg16.F := rho 15066
def seg16Q4Il116 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il117 rho + seg16Q4IlAtom5 rho
def seg16Q4Pe115 (rho : Nat -> Seg16.F) : Seg16.F := rho 15069
def seg16Q4Il115 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il116 rho + seg16Q4IlAtom6 rho
def seg16Q4Pe114 (rho : Nat -> Seg16.F) : Seg16.F := rho 15070
def seg16Q4Il114 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il115 rho
def seg16Q4Pe113 (rho : Nat -> Seg16.F) : Seg16.F := rho 15073
def seg16Q4Il113 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il114 rho + seg16Q4IlAtom7 rho
def seg16Q4Pe112 (rho : Nat -> Seg16.F) : Seg16.F := rho 15076
def seg16Q4Il112 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il113 rho + seg16Q4IlAtom8 rho
def seg16Q4Pe111 (rho : Nat -> Seg16.F) : Seg16.F := rho 15079
def seg16Q4Il111 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il112 rho + seg16Q4IlAtom9 rho
def seg16Q4Pe110 (rho : Nat -> Seg16.F) : Seg16.F := rho 15082
def seg16Q4Il110 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il111 rho + seg16Q4IlAtom10 rho
def seg16Q4Pe109 (rho : Nat -> Seg16.F) : Seg16.F := rho 15085
def seg16Q4Il109 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il110 rho + seg16Q4IlAtom11 rho
def seg16Q4Pe108 (rho : Nat -> Seg16.F) : Seg16.F := rho 15086
def seg16Q4Il108 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il109 rho
def seg16Q4Pe107 (rho : Nat -> Seg16.F) : Seg16.F := rho 15089
def seg16Q4Il107 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il108 rho + seg16Q4IlAtom12 rho
def seg16Q4Pe106 (rho : Nat -> Seg16.F) : Seg16.F := rho 15090
def seg16Q4Il106 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il107 rho
def seg16Q4Pe105 (rho : Nat -> Seg16.F) : Seg16.F := rho 15091
def seg16Q4Il105 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il106 rho
def seg16Q4Pe104 (rho : Nat -> Seg16.F) : Seg16.F := rho 15092
def seg16Q4Il104 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il105 rho
def seg16Q4Pe103 (rho : Nat -> Seg16.F) : Seg16.F := rho 15093
def seg16Q4Il103 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il104 rho
def seg16Q4Pe102 (rho : Nat -> Seg16.F) : Seg16.F := rho 15094
def seg16Q4Il102 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il103 rho
def seg16Q4Pe101 (rho : Nat -> Seg16.F) : Seg16.F := rho 15097
def seg16Q4Il101 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il102 rho + seg16Q4IlAtom13 rho
def seg16Q4Pe100 (rho : Nat -> Seg16.F) : Seg16.F := rho 15100
def seg16Q4Il100 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il101 rho + seg16Q4IlAtom14 rho
def seg16Q4Pe99 (rho : Nat -> Seg16.F) : Seg16.F := rho 15103
def seg16Q4Il99 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il100 rho + seg16Q4IlAtom15 rho
def seg16Q4Pe98 (rho : Nat -> Seg16.F) : Seg16.F := rho 15106
def seg16Q4Il98 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il99 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho
def seg16Q4Pe97 (rho : Nat -> Seg16.F) : Seg16.F := rho 15109
def seg16Q4Il97 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il98 rho + seg16Q4IlAtom18 rho
def seg16Q4Pe96 (rho : Nat -> Seg16.F) : Seg16.F := rho 15112
def seg16Q4Il96 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il97 rho + seg16Q4IlAtom19 rho
def seg16Q4Pe95 (rho : Nat -> Seg16.F) : Seg16.F := rho 15115
def seg16Q4Il95 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il96 rho + seg16Q4IlAtom20 rho
def seg16Q4Pe94 (rho : Nat -> Seg16.F) : Seg16.F := rho 15116
def seg16Q4Il94 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il95 rho
def seg16Q4Pe93 (rho : Nat -> Seg16.F) : Seg16.F := rho 15119
def seg16Q4Il93 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il94 rho + seg16Q4IlAtom21 rho
def seg16Q4Pe92 (rho : Nat -> Seg16.F) : Seg16.F := rho 15122
def seg16Q4Il92 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il93 rho + seg16Q4IlAtom22 rho
def seg16Q4Pe91 (rho : Nat -> Seg16.F) : Seg16.F := rho 15125
def seg16Q4Il91 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il92 rho + seg16Q4IlAtom23 rho
def seg16Q4Pe90 (rho : Nat -> Seg16.F) : Seg16.F := rho 15128
def seg16Q4Il90 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il91 rho + seg16Q4IlAtom24 rho
def seg16Q4Pe89 (rho : Nat -> Seg16.F) : Seg16.F := rho 15131
def seg16Q4Il89 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il90 rho + seg16Q4IlAtom25 rho
def seg16Q4Pe88 (rho : Nat -> Seg16.F) : Seg16.F := rho 15134
def seg16Q4Il88 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il89 rho + seg16Q4IlAtom26 rho
def seg16Q4Pe87 (rho : Nat -> Seg16.F) : Seg16.F := rho 15135
def seg16Q4Il87 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il88 rho
def seg16Q4Pe86 (rho : Nat -> Seg16.F) : Seg16.F := rho 15136
def seg16Q4Il86 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il87 rho
def seg16Q4Pe85 (rho : Nat -> Seg16.F) : Seg16.F := rho 15137
def seg16Q4Il85 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il86 rho
def seg16Q4Pe84 (rho : Nat -> Seg16.F) : Seg16.F := rho 15138
def seg16Q4Il84 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il85 rho
def seg16Q4Pe83 (rho : Nat -> Seg16.F) : Seg16.F := rho 15141
def seg16Q4Il83 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il84 rho + seg16Q4IlAtom27 rho
def seg16Q4Pe82 (rho : Nat -> Seg16.F) : Seg16.F := rho 15144
def seg16Q4Il82 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il83 rho + seg16Q4IlAtom28 rho
def seg16Q4Pe81 (rho : Nat -> Seg16.F) : Seg16.F := rho 15145
def seg16Q4Il81 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il82 rho
def seg16Q4Pe80 (rho : Nat -> Seg16.F) : Seg16.F := rho 15148
def seg16Q4Il80 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il81 rho + seg16Q4IlAtom29 rho
def seg16Q4Pe79 (rho : Nat -> Seg16.F) : Seg16.F := rho 15151
def seg16Q4Il79 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il80 rho + seg16Q4IlAtom30 rho
def seg16Q4Pe78 (rho : Nat -> Seg16.F) : Seg16.F := rho 15154
def seg16Q4Il78 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il79 rho + seg16Q4IlAtom31 rho
def seg16Q4Pe77 (rho : Nat -> Seg16.F) : Seg16.F := rho 15155
def seg16Q4Il77 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il78 rho
def seg16Q4Pe76 (rho : Nat -> Seg16.F) : Seg16.F := rho 15158
def seg16Q4Il76 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il77 rho + seg16Q4IlAtom32 rho
def seg16Q4Pe75 (rho : Nat -> Seg16.F) : Seg16.F := rho 15159
def seg16Q4Il75 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il76 rho
def seg16Q4Pe74 (rho : Nat -> Seg16.F) : Seg16.F := rho 15162
def seg16Q4Il74 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il75 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho
def seg16Q4Pe73 (rho : Nat -> Seg16.F) : Seg16.F := rho 15163
def seg16Q4Il73 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il74 rho
def seg16Q4Pe72 (rho : Nat -> Seg16.F) : Seg16.F := rho 15164
def seg16Q4Il72 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il73 rho
def seg16Q4Pe71 (rho : Nat -> Seg16.F) : Seg16.F := rho 15165
def seg16Q4Il71 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il72 rho
def seg16Q4Pe70 (rho : Nat -> Seg16.F) : Seg16.F := rho 15166
def seg16Q4Il70 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il71 rho
def seg16Q4Pe69 (rho : Nat -> Seg16.F) : Seg16.F := rho 15167
def seg16Q4Il69 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il70 rho
def seg16Q4Pe68 (rho : Nat -> Seg16.F) : Seg16.F := rho 15168
def seg16Q4Il68 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il69 rho
def seg16Q4Pe67 (rho : Nat -> Seg16.F) : Seg16.F := rho 15169
def seg16Q4Il67 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il68 rho
def seg16Q4Pe66 (rho : Nat -> Seg16.F) : Seg16.F := rho 15172
def seg16Q4Il66 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il67 rho + seg16Q4IlAtom35 rho
def seg16Q4Pe65 (rho : Nat -> Seg16.F) : Seg16.F := rho 15175
def seg16Q4Il65 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il66 rho + seg16Q4IlAtom36 rho
def seg16Q4Pe64 (rho : Nat -> Seg16.F) : Seg16.F := rho 15176
def seg16Q4Il64 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il65 rho
def seg16Q4Pe63 (rho : Nat -> Seg16.F) : Seg16.F := rho 15177
def seg16Q4Il63 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il64 rho
def seg16Q4Pe62 (rho : Nat -> Seg16.F) : Seg16.F := rho 15178
def seg16Q4Il62 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il63 rho
def seg16Q4Pe61 (rho : Nat -> Seg16.F) : Seg16.F := rho 15181
def seg16Q4Il61 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il62 rho + seg16Q4IlAtom37 rho
def seg16Q4Pe60 (rho : Nat -> Seg16.F) : Seg16.F := rho 15182
def seg16Q4Il60 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il61 rho
def seg16Q4Pe59 (rho : Nat -> Seg16.F) : Seg16.F := rho 15183
def seg16Q4Il59 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il60 rho
def seg16Q4Pe58 (rho : Nat -> Seg16.F) : Seg16.F := rho 15186
def seg16Q4Il58 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il59 rho + seg16Q4IlAtom38 rho
def seg16Q4Pe57 (rho : Nat -> Seg16.F) : Seg16.F := rho 15187
def seg16Q4Il57 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il58 rho
def seg16Q4Pe56 (rho : Nat -> Seg16.F) : Seg16.F := rho 15188
def seg16Q4Il56 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il57 rho
def seg16Q4Pe55 (rho : Nat -> Seg16.F) : Seg16.F := rho 15191
def seg16Q4Il55 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il56 rho + seg16Q4IlAtom39 rho
def seg16Q4Pe54 (rho : Nat -> Seg16.F) : Seg16.F := rho 15192
def seg16Q4Il54 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il55 rho
def seg16Q4Pe53 (rho : Nat -> Seg16.F) : Seg16.F := rho 15195
def seg16Q4Il53 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il54 rho + seg16Q4IlAtom40 rho
def seg16Q4Pe52 (rho : Nat -> Seg16.F) : Seg16.F := rho 15196
def seg16Q4Il52 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il53 rho
def seg16Q4Pe51 (rho : Nat -> Seg16.F) : Seg16.F := rho 15197
def seg16Q4Il51 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il52 rho
def seg16Q4Pe50 (rho : Nat -> Seg16.F) : Seg16.F := rho 15200
def seg16Q4Il50 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il51 rho + seg16Q4IlAtom41 rho
def seg16Q4Pe49 (rho : Nat -> Seg16.F) : Seg16.F := rho 15201
def seg16Q4Il49 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il50 rho
def seg16Q4Pe48 (rho : Nat -> Seg16.F) : Seg16.F := rho 15204
def seg16Q4Il48 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il49 rho + seg16Q4IlAtom42 rho
def seg16Q4Pe47 (rho : Nat -> Seg16.F) : Seg16.F := rho 15207
def seg16Q4Il47 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il48 rho + seg16Q4IlAtom43 rho
def seg16Q4Pe46 (rho : Nat -> Seg16.F) : Seg16.F := rho 15210
def seg16Q4Il46 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il47 rho + seg16Q4IlAtom44 rho
def seg16Q4Pe45 (rho : Nat -> Seg16.F) : Seg16.F := rho 15211
def seg16Q4Il45 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il46 rho
def seg16Q4Pe44 (rho : Nat -> Seg16.F) : Seg16.F := rho 15212
def seg16Q4Il44 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il45 rho
def seg16Q4Pe43 (rho : Nat -> Seg16.F) : Seg16.F := rho 15213
def seg16Q4Il43 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il44 rho
def seg16Q4Pe42 (rho : Nat -> Seg16.F) : Seg16.F := rho 15216
def seg16Q4Il42 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il43 rho + seg16Q4IlAtom45 rho
def seg16Q4Pe41 (rho : Nat -> Seg16.F) : Seg16.F := rho 15217
def seg16Q4Il41 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il42 rho
def seg16Q4Pe40 (rho : Nat -> Seg16.F) : Seg16.F := rho 15220
def seg16Q4Il40 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il41 rho + seg16Q4IlAtom46 rho
def seg16Q4Pe39 (rho : Nat -> Seg16.F) : Seg16.F := rho 15223
def seg16Q4Il39 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il40 rho + seg16Q4IlAtom47 rho
def seg16Q4Pe38 (rho : Nat -> Seg16.F) : Seg16.F := rho 15224
def seg16Q4Il38 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il39 rho
def seg16Q4Pe37 (rho : Nat -> Seg16.F) : Seg16.F := rho 15225
def seg16Q4Il37 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il38 rho
def seg16Q4Pe36 (rho : Nat -> Seg16.F) : Seg16.F := rho 15228
def seg16Q4Il36 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il37 rho + seg16Q4IlAtom48 rho
def seg16Q4Pe35 (rho : Nat -> Seg16.F) : Seg16.F := rho 15229
def seg16Q4Il35 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il36 rho
def seg16Q4Pe34 (rho : Nat -> Seg16.F) : Seg16.F := rho 15232
def seg16Q4Il34 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il35 rho + seg16Q4IlAtom49 rho
def seg16Q4Pe33 (rho : Nat -> Seg16.F) : Seg16.F := rho 15233
def seg16Q4Il33 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il34 rho
def seg16Q4Pe32 (rho : Nat -> Seg16.F) : Seg16.F := rho 15234
def seg16Q4Il32 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il33 rho
def seg16Q4Pe31 (rho : Nat -> Seg16.F) : Seg16.F := rho 15237
def seg16Q4Il31 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il32 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho
def seg16Q4Pe30 (rho : Nat -> Seg16.F) : Seg16.F := rho 15240
def seg16Q4Il30 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il31 rho + seg16Q4IlAtom52 rho
def seg16Q4Pe29 (rho : Nat -> Seg16.F) : Seg16.F := rho 15243
def seg16Q4Il29 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il30 rho + seg16Q4IlAtom53 rho
def seg16Q4Pe28 (rho : Nat -> Seg16.F) : Seg16.F := rho 15246
def seg16Q4Il28 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il29 rho + seg16Q4IlAtom54 rho
def seg16Q4Pe27 (rho : Nat -> Seg16.F) : Seg16.F := rho 15247
def seg16Q4Il27 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il28 rho
def seg16Q4Pe26 (rho : Nat -> Seg16.F) : Seg16.F := rho 15248
def seg16Q4Il26 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il27 rho
def seg16Q4Pe25 (rho : Nat -> Seg16.F) : Seg16.F := rho 15251
def seg16Q4Il25 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il26 rho + seg16Q4IlAtom55 rho
def seg16Q4Pe24 (rho : Nat -> Seg16.F) : Seg16.F := rho 15254
def seg16Q4Il24 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il25 rho + seg16Q4IlAtom56 rho
def seg16Q4Pe23 (rho : Nat -> Seg16.F) : Seg16.F := rho 15255
def seg16Q4Il23 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il24 rho
def seg16Q4Pe22 (rho : Nat -> Seg16.F) : Seg16.F := rho 15256
def seg16Q4Il22 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il23 rho
def seg16Q4Pe21 (rho : Nat -> Seg16.F) : Seg16.F := rho 15257
def seg16Q4Il21 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il22 rho
def seg16Q4Pe20 (rho : Nat -> Seg16.F) : Seg16.F := rho 15258
def seg16Q4Il20 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il21 rho
def seg16Q4Pe19 (rho : Nat -> Seg16.F) : Seg16.F := rho 15259
def seg16Q4Il19 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il20 rho
def seg16Q4Pe18 (rho : Nat -> Seg16.F) : Seg16.F := rho 15260
def seg16Q4Il18 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il19 rho
def seg16Q4Pe17 (rho : Nat -> Seg16.F) : Seg16.F := rho 15261
def seg16Q4Il17 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il18 rho
def seg16Q4Pe16 (rho : Nat -> Seg16.F) : Seg16.F := rho 15262
def seg16Q4Il16 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il17 rho
def seg16Q4Pe15 (rho : Nat -> Seg16.F) : Seg16.F := rho 15265
def seg16Q4Il15 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il16 rho + seg16Q4IlAtom57 rho
def seg16Q4Pe14 (rho : Nat -> Seg16.F) : Seg16.F := rho 15266
def seg16Q4Il14 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il15 rho
def seg16Q4Pe13 (rho : Nat -> Seg16.F) : Seg16.F := rho 15267
def seg16Q4Il13 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il14 rho
def seg16Q4Pe12 (rho : Nat -> Seg16.F) : Seg16.F := rho 15270
def seg16Q4Il12 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il13 rho + seg16Q4IlAtom58 rho
def seg16Q4Pe11 (rho : Nat -> Seg16.F) : Seg16.F := rho 15273
def seg16Q4Il11 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il12 rho + seg16Q4IlAtom59 rho
def seg16Q4Pe10 (rho : Nat -> Seg16.F) : Seg16.F := rho 15274
def seg16Q4Il10 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il11 rho
def seg16Q4Pe9 (rho : Nat -> Seg16.F) : Seg16.F := rho 15275
def seg16Q4Il9 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il10 rho
def seg16Q4Pe8 (rho : Nat -> Seg16.F) : Seg16.F := rho 15276
def seg16Q4Il8 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il9 rho
def seg16Q4Pe7 (rho : Nat -> Seg16.F) : Seg16.F := rho 15277
def seg16Q4Il7 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il8 rho
def seg16Q4Pe6 (rho : Nat -> Seg16.F) : Seg16.F := rho 15278
def seg16Q4Il6 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il7 rho
def seg16Q4Pe5 (rho : Nat -> Seg16.F) : Seg16.F := rho 15279
def seg16Q4Il5 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il6 rho
def seg16Q4Pe4 (rho : Nat -> Seg16.F) : Seg16.F := rho 15280
def seg16Q4Il4 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il5 rho
def seg16Q4Pe3 (rho : Nat -> Seg16.F) : Seg16.F := rho 15281
def seg16Q4Il3 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il4 rho
def seg16Q4Pe2 (rho : Nat -> Seg16.F) : Seg16.F := rho 15284
def seg16Q4Il2 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il3 rho + seg16Q4IlAtom60 rho
def seg16Q4Pe1 (rho : Nat -> Seg16.F) : Seg16.F := rho 15285
def seg16Q4Il1 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il2 rho
def seg16Q4Pe0 (rho : Nat -> Seg16.F) : Seg16.F := rho 15288
def seg16Q4Il0 (rho : Nat -> Seg16.F) : Seg16.F := seg16Q4Il1 rho + seg16Q4IlAtom61 rho

def seg16Q4PeState (rho : Nat -> Seg16.F) : Nat -> Seg16.F
  | 0 => seg16Q4Pe0 rho
  | 1 => seg16Q4Pe1 rho
  | 2 => seg16Q4Pe2 rho
  | 3 => seg16Q4Pe3 rho
  | 4 => seg16Q4Pe4 rho
  | 5 => seg16Q4Pe5 rho
  | 6 => seg16Q4Pe6 rho
  | 7 => seg16Q4Pe7 rho
  | 8 => seg16Q4Pe8 rho
  | 9 => seg16Q4Pe9 rho
  | 10 => seg16Q4Pe10 rho
  | 11 => seg16Q4Pe11 rho
  | 12 => seg16Q4Pe12 rho
  | 13 => seg16Q4Pe13 rho
  | 14 => seg16Q4Pe14 rho
  | 15 => seg16Q4Pe15 rho
  | 16 => seg16Q4Pe16 rho
  | 17 => seg16Q4Pe17 rho
  | 18 => seg16Q4Pe18 rho
  | 19 => seg16Q4Pe19 rho
  | 20 => seg16Q4Pe20 rho
  | 21 => seg16Q4Pe21 rho
  | 22 => seg16Q4Pe22 rho
  | 23 => seg16Q4Pe23 rho
  | 24 => seg16Q4Pe24 rho
  | 25 => seg16Q4Pe25 rho
  | 26 => seg16Q4Pe26 rho
  | 27 => seg16Q4Pe27 rho
  | 28 => seg16Q4Pe28 rho
  | 29 => seg16Q4Pe29 rho
  | 30 => seg16Q4Pe30 rho
  | 31 => seg16Q4Pe31 rho
  | 32 => seg16Q4Pe32 rho
  | 33 => seg16Q4Pe33 rho
  | 34 => seg16Q4Pe34 rho
  | 35 => seg16Q4Pe35 rho
  | 36 => seg16Q4Pe36 rho
  | 37 => seg16Q4Pe37 rho
  | 38 => seg16Q4Pe38 rho
  | 39 => seg16Q4Pe39 rho
  | 40 => seg16Q4Pe40 rho
  | 41 => seg16Q4Pe41 rho
  | 42 => seg16Q4Pe42 rho
  | 43 => seg16Q4Pe43 rho
  | 44 => seg16Q4Pe44 rho
  | 45 => seg16Q4Pe45 rho
  | 46 => seg16Q4Pe46 rho
  | 47 => seg16Q4Pe47 rho
  | 48 => seg16Q4Pe48 rho
  | 49 => seg16Q4Pe49 rho
  | 50 => seg16Q4Pe50 rho
  | 51 => seg16Q4Pe51 rho
  | 52 => seg16Q4Pe52 rho
  | 53 => seg16Q4Pe53 rho
  | 54 => seg16Q4Pe54 rho
  | 55 => seg16Q4Pe55 rho
  | 56 => seg16Q4Pe56 rho
  | 57 => seg16Q4Pe57 rho
  | 58 => seg16Q4Pe58 rho
  | 59 => seg16Q4Pe59 rho
  | 60 => seg16Q4Pe60 rho
  | 61 => seg16Q4Pe61 rho
  | 62 => seg16Q4Pe62 rho
  | 63 => seg16Q4Pe63 rho
  | 64 => seg16Q4Pe64 rho
  | 65 => seg16Q4Pe65 rho
  | 66 => seg16Q4Pe66 rho
  | 67 => seg16Q4Pe67 rho
  | 68 => seg16Q4Pe68 rho
  | 69 => seg16Q4Pe69 rho
  | 70 => seg16Q4Pe70 rho
  | 71 => seg16Q4Pe71 rho
  | 72 => seg16Q4Pe72 rho
  | 73 => seg16Q4Pe73 rho
  | 74 => seg16Q4Pe74 rho
  | 75 => seg16Q4Pe75 rho
  | 76 => seg16Q4Pe76 rho
  | 77 => seg16Q4Pe77 rho
  | 78 => seg16Q4Pe78 rho
  | 79 => seg16Q4Pe79 rho
  | 80 => seg16Q4Pe80 rho
  | 81 => seg16Q4Pe81 rho
  | 82 => seg16Q4Pe82 rho
  | 83 => seg16Q4Pe83 rho
  | 84 => seg16Q4Pe84 rho
  | 85 => seg16Q4Pe85 rho
  | 86 => seg16Q4Pe86 rho
  | 87 => seg16Q4Pe87 rho
  | 88 => seg16Q4Pe88 rho
  | 89 => seg16Q4Pe89 rho
  | 90 => seg16Q4Pe90 rho
  | 91 => seg16Q4Pe91 rho
  | 92 => seg16Q4Pe92 rho
  | 93 => seg16Q4Pe93 rho
  | 94 => seg16Q4Pe94 rho
  | 95 => seg16Q4Pe95 rho
  | 96 => seg16Q4Pe96 rho
  | 97 => seg16Q4Pe97 rho
  | 98 => seg16Q4Pe98 rho
  | 99 => seg16Q4Pe99 rho
  | 100 => seg16Q4Pe100 rho
  | 101 => seg16Q4Pe101 rho
  | 102 => seg16Q4Pe102 rho
  | 103 => seg16Q4Pe103 rho
  | 104 => seg16Q4Pe104 rho
  | 105 => seg16Q4Pe105 rho
  | 106 => seg16Q4Pe106 rho
  | 107 => seg16Q4Pe107 rho
  | 108 => seg16Q4Pe108 rho
  | 109 => seg16Q4Pe109 rho
  | 110 => seg16Q4Pe110 rho
  | 111 => seg16Q4Pe111 rho
  | 112 => seg16Q4Pe112 rho
  | 113 => seg16Q4Pe113 rho
  | 114 => seg16Q4Pe114 rho
  | 115 => seg16Q4Pe115 rho
  | 116 => seg16Q4Pe116 rho
  | 117 => seg16Q4Pe117 rho
  | 118 => seg16Q4Pe118 rho
  | 119 => seg16Q4Pe119 rho
  | 120 => seg16Q4Pe120 rho
  | 121 => seg16Q4Pe121 rho
  | 122 => seg16Q4Pe122 rho
  | 123 => seg16Q4Pe123 rho
  | 124 => seg16Q4Pe124 rho
  | 125 => seg16Q4Pe125 rho
  | 126 => seg16Q4Pe126 rho
  | 127 => seg16Q4Pe127 rho
  | 128 => seg16Q4Pe128 rho
  | 129 => seg16Q4Pe129 rho
  | 130 => seg16Q4Pe130 rho
  | 131 => seg16Q4Pe131 rho
  | 132 => seg16Q4Pe132 rho
  | 133 => seg16Q4Pe133 rho
  | 134 => seg16Q4Pe134 rho
  | 135 => seg16Q4Pe135 rho
  | 136 => seg16Q4Pe136 rho
  | 137 => seg16Q4Pe137 rho
  | 138 => seg16Q4Pe138 rho
  | 139 => seg16Q4Pe139 rho
  | 140 => seg16Q4Pe140 rho
  | 141 => seg16Q4Pe141 rho
  | 142 => seg16Q4Pe142 rho
  | 143 => seg16Q4Pe143 rho
  | 144 => seg16Q4Pe144 rho
  | 145 => seg16Q4Pe145 rho
  | 146 => seg16Q4Pe146 rho
  | 147 => seg16Q4Pe147 rho
  | 148 => seg16Q4Pe148 rho
  | 149 => seg16Q4Pe149 rho
  | 150 => seg16Q4Pe150 rho
  | 151 => seg16Q4Pe151 rho
  | 152 => seg16Q4Pe152 rho
  | 153 => seg16Q4Pe153 rho
  | 154 => seg16Q4Pe154 rho
  | 155 => seg16Q4Pe155 rho
  | 156 => seg16Q4Pe156 rho
  | 157 => seg16Q4Pe157 rho
  | 158 => seg16Q4Pe158 rho
  | 159 => seg16Q4Pe159 rho
  | 160 => seg16Q4Pe160 rho
  | 161 => seg16Q4Pe161 rho
  | 162 => seg16Q4Pe162 rho
  | 163 => seg16Q4Pe163 rho
  | 164 => seg16Q4Pe164 rho
  | 165 => seg16Q4Pe165 rho
  | 166 => seg16Q4Pe166 rho
  | 167 => seg16Q4Pe167 rho
  | 168 => seg16Q4Pe168 rho
  | 169 => seg16Q4Pe169 rho
  | 170 => seg16Q4Pe170 rho
  | 171 => seg16Q4Pe171 rho
  | 172 => seg16Q4Pe172 rho
  | 173 => seg16Q4Pe173 rho
  | 174 => seg16Q4Pe174 rho
  | 175 => seg16Q4Pe175 rho
  | 176 => seg16Q4Pe176 rho
  | 177 => seg16Q4Pe177 rho
  | 178 => seg16Q4Pe178 rho
  | 179 => seg16Q4Pe179 rho
  | 180 => seg16Q4Pe180 rho
  | 181 => seg16Q4Pe181 rho
  | 182 => seg16Q4Pe182 rho
  | 183 => seg16Q4Pe183 rho
  | 184 => seg16Q4Pe184 rho
  | 185 => seg16Q4Pe185 rho
  | 186 => seg16Q4Pe186 rho
  | 187 => seg16Q4Pe187 rho
  | 188 => seg16Q4Pe188 rho
  | 189 => seg16Q4Pe189 rho
  | 190 => seg16Q4Pe190 rho
  | 191 => seg16Q4Pe191 rho
  | 192 => seg16Q4Pe192 rho
  | 193 => seg16Q4Pe193 rho
  | 194 => seg16Q4Pe194 rho
  | 195 => seg16Q4Pe195 rho
  | 196 => seg16Q4Pe196 rho
  | 197 => seg16Q4Pe197 rho
  | 198 => seg16Q4Pe198 rho
  | 199 => seg16Q4Pe199 rho
  | 200 => seg16Q4Pe200 rho
  | 201 => seg16Q4Pe201 rho
  | 202 => seg16Q4Pe202 rho
  | 203 => seg16Q4Pe203 rho
  | 204 => seg16Q4Pe204 rho
  | 205 => seg16Q4Pe205 rho
  | 206 => seg16Q4Pe206 rho
  | 207 => seg16Q4Pe207 rho
  | 208 => seg16Q4Pe208 rho
  | 209 => seg16Q4Pe209 rho
  | 210 => seg16Q4Pe210 rho
  | 211 => seg16Q4Pe211 rho
  | 212 => seg16Q4Pe212 rho
  | 213 => seg16Q4Pe213 rho
  | 214 => seg16Q4Pe214 rho
  | 215 => seg16Q4Pe215 rho
  | 216 => seg16Q4Pe216 rho
  | 217 => seg16Q4Pe217 rho
  | 218 => seg16Q4Pe218 rho
  | 219 => seg16Q4Pe219 rho
  | 220 => seg16Q4Pe220 rho
  | 221 => seg16Q4Pe221 rho
  | 222 => seg16Q4Pe222 rho
  | 223 => seg16Q4Pe223 rho
  | 224 => seg16Q4Pe224 rho
  | 225 => seg16Q4Pe225 rho
  | 226 => seg16Q4Pe226 rho
  | 227 => seg16Q4Pe227 rho
  | 228 => seg16Q4Pe228 rho
  | 229 => seg16Q4Pe229 rho
  | 230 => seg16Q4Pe230 rho
  | 231 => seg16Q4Pe231 rho
  | 232 => seg16Q4Pe232 rho
  | 233 => seg16Q4Pe233 rho
  | 234 => seg16Q4Pe234 rho
  | 235 => seg16Q4Pe235 rho
  | 236 => seg16Q4Pe236 rho
  | 237 => seg16Q4Pe237 rho
  | 238 => seg16Q4Pe238 rho
  | 239 => seg16Q4Pe239 rho
  | 240 => seg16Q4Pe240 rho
  | 241 => seg16Q4Pe241 rho
  | 242 => seg16Q4Pe242 rho
  | 243 => seg16Q4Pe243 rho
  | 244 => seg16Q4Pe244 rho
  | 245 => seg16Q4Pe245 rho
  | 246 => seg16Q4Pe246 rho
  | 247 => seg16Q4Pe247 rho
  | 248 => seg16Q4Pe248 rho
  | 249 => seg16Q4Pe249 rho
  | 250 => seg16Q4Pe250 rho
  | 251 => seg16Q4Pe251 rho
  | 252 => seg16Q4Pe252 rho
  | 253 => seg16Q4Pe253 rho
  | _ => 0

def seg16Q4IlState (rho : Nat -> Seg16.F) : Nat -> Seg16.F
  | 0 => seg16Q4Il0 rho
  | 1 => seg16Q4Il1 rho
  | 2 => seg16Q4Il2 rho
  | 3 => seg16Q4Il3 rho
  | 4 => seg16Q4Il4 rho
  | 5 => seg16Q4Il5 rho
  | 6 => seg16Q4Il6 rho
  | 7 => seg16Q4Il7 rho
  | 8 => seg16Q4Il8 rho
  | 9 => seg16Q4Il9 rho
  | 10 => seg16Q4Il10 rho
  | 11 => seg16Q4Il11 rho
  | 12 => seg16Q4Il12 rho
  | 13 => seg16Q4Il13 rho
  | 14 => seg16Q4Il14 rho
  | 15 => seg16Q4Il15 rho
  | 16 => seg16Q4Il16 rho
  | 17 => seg16Q4Il17 rho
  | 18 => seg16Q4Il18 rho
  | 19 => seg16Q4Il19 rho
  | 20 => seg16Q4Il20 rho
  | 21 => seg16Q4Il21 rho
  | 22 => seg16Q4Il22 rho
  | 23 => seg16Q4Il23 rho
  | 24 => seg16Q4Il24 rho
  | 25 => seg16Q4Il25 rho
  | 26 => seg16Q4Il26 rho
  | 27 => seg16Q4Il27 rho
  | 28 => seg16Q4Il28 rho
  | 29 => seg16Q4Il29 rho
  | 30 => seg16Q4Il30 rho
  | 31 => seg16Q4Il31 rho
  | 32 => seg16Q4Il32 rho
  | 33 => seg16Q4Il33 rho
  | 34 => seg16Q4Il34 rho
  | 35 => seg16Q4Il35 rho
  | 36 => seg16Q4Il36 rho
  | 37 => seg16Q4Il37 rho
  | 38 => seg16Q4Il38 rho
  | 39 => seg16Q4Il39 rho
  | 40 => seg16Q4Il40 rho
  | 41 => seg16Q4Il41 rho
  | 42 => seg16Q4Il42 rho
  | 43 => seg16Q4Il43 rho
  | 44 => seg16Q4Il44 rho
  | 45 => seg16Q4Il45 rho
  | 46 => seg16Q4Il46 rho
  | 47 => seg16Q4Il47 rho
  | 48 => seg16Q4Il48 rho
  | 49 => seg16Q4Il49 rho
  | 50 => seg16Q4Il50 rho
  | 51 => seg16Q4Il51 rho
  | 52 => seg16Q4Il52 rho
  | 53 => seg16Q4Il53 rho
  | 54 => seg16Q4Il54 rho
  | 55 => seg16Q4Il55 rho
  | 56 => seg16Q4Il56 rho
  | 57 => seg16Q4Il57 rho
  | 58 => seg16Q4Il58 rho
  | 59 => seg16Q4Il59 rho
  | 60 => seg16Q4Il60 rho
  | 61 => seg16Q4Il61 rho
  | 62 => seg16Q4Il62 rho
  | 63 => seg16Q4Il63 rho
  | 64 => seg16Q4Il64 rho
  | 65 => seg16Q4Il65 rho
  | 66 => seg16Q4Il66 rho
  | 67 => seg16Q4Il67 rho
  | 68 => seg16Q4Il68 rho
  | 69 => seg16Q4Il69 rho
  | 70 => seg16Q4Il70 rho
  | 71 => seg16Q4Il71 rho
  | 72 => seg16Q4Il72 rho
  | 73 => seg16Q4Il73 rho
  | 74 => seg16Q4Il74 rho
  | 75 => seg16Q4Il75 rho
  | 76 => seg16Q4Il76 rho
  | 77 => seg16Q4Il77 rho
  | 78 => seg16Q4Il78 rho
  | 79 => seg16Q4Il79 rho
  | 80 => seg16Q4Il80 rho
  | 81 => seg16Q4Il81 rho
  | 82 => seg16Q4Il82 rho
  | 83 => seg16Q4Il83 rho
  | 84 => seg16Q4Il84 rho
  | 85 => seg16Q4Il85 rho
  | 86 => seg16Q4Il86 rho
  | 87 => seg16Q4Il87 rho
  | 88 => seg16Q4Il88 rho
  | 89 => seg16Q4Il89 rho
  | 90 => seg16Q4Il90 rho
  | 91 => seg16Q4Il91 rho
  | 92 => seg16Q4Il92 rho
  | 93 => seg16Q4Il93 rho
  | 94 => seg16Q4Il94 rho
  | 95 => seg16Q4Il95 rho
  | 96 => seg16Q4Il96 rho
  | 97 => seg16Q4Il97 rho
  | 98 => seg16Q4Il98 rho
  | 99 => seg16Q4Il99 rho
  | 100 => seg16Q4Il100 rho
  | 101 => seg16Q4Il101 rho
  | 102 => seg16Q4Il102 rho
  | 103 => seg16Q4Il103 rho
  | 104 => seg16Q4Il104 rho
  | 105 => seg16Q4Il105 rho
  | 106 => seg16Q4Il106 rho
  | 107 => seg16Q4Il107 rho
  | 108 => seg16Q4Il108 rho
  | 109 => seg16Q4Il109 rho
  | 110 => seg16Q4Il110 rho
  | 111 => seg16Q4Il111 rho
  | 112 => seg16Q4Il112 rho
  | 113 => seg16Q4Il113 rho
  | 114 => seg16Q4Il114 rho
  | 115 => seg16Q4Il115 rho
  | 116 => seg16Q4Il116 rho
  | 117 => seg16Q4Il117 rho
  | 118 => seg16Q4Il118 rho
  | 119 => seg16Q4Il119 rho
  | 120 => seg16Q4Il120 rho
  | 121 => seg16Q4Il121 rho
  | 122 => seg16Q4Il122 rho
  | 123 => seg16Q4Il123 rho
  | 124 => seg16Q4Il124 rho
  | 125 => seg16Q4Il125 rho
  | 126 => seg16Q4Il126 rho
  | 127 => seg16Q4Il127 rho
  | 128 => seg16Q4Il128 rho
  | 129 => seg16Q4Il129 rho
  | 130 => seg16Q4Il130 rho
  | 131 => seg16Q4Il131 rho
  | 132 => seg16Q4Il132 rho
  | 133 => seg16Q4Il133 rho
  | 134 => seg16Q4Il134 rho
  | 135 => seg16Q4Il135 rho
  | 136 => seg16Q4Il136 rho
  | 137 => seg16Q4Il137 rho
  | 138 => seg16Q4Il138 rho
  | 139 => seg16Q4Il139 rho
  | 140 => seg16Q4Il140 rho
  | 141 => seg16Q4Il141 rho
  | 142 => seg16Q4Il142 rho
  | 143 => seg16Q4Il143 rho
  | 144 => seg16Q4Il144 rho
  | 145 => seg16Q4Il145 rho
  | 146 => seg16Q4Il146 rho
  | 147 => seg16Q4Il147 rho
  | 148 => seg16Q4Il148 rho
  | 149 => seg16Q4Il149 rho
  | 150 => seg16Q4Il150 rho
  | 151 => seg16Q4Il151 rho
  | 152 => seg16Q4Il152 rho
  | 153 => seg16Q4Il153 rho
  | 154 => seg16Q4Il154 rho
  | 155 => seg16Q4Il155 rho
  | 156 => seg16Q4Il156 rho
  | 157 => seg16Q4Il157 rho
  | 158 => seg16Q4Il158 rho
  | 159 => seg16Q4Il159 rho
  | 160 => seg16Q4Il160 rho
  | 161 => seg16Q4Il161 rho
  | 162 => seg16Q4Il162 rho
  | 163 => seg16Q4Il163 rho
  | 164 => seg16Q4Il164 rho
  | 165 => seg16Q4Il165 rho
  | 166 => seg16Q4Il166 rho
  | 167 => seg16Q4Il167 rho
  | 168 => seg16Q4Il168 rho
  | 169 => seg16Q4Il169 rho
  | 170 => seg16Q4Il170 rho
  | 171 => seg16Q4Il171 rho
  | 172 => seg16Q4Il172 rho
  | 173 => seg16Q4Il173 rho
  | 174 => seg16Q4Il174 rho
  | 175 => seg16Q4Il175 rho
  | 176 => seg16Q4Il176 rho
  | 177 => seg16Q4Il177 rho
  | 178 => seg16Q4Il178 rho
  | 179 => seg16Q4Il179 rho
  | 180 => seg16Q4Il180 rho
  | 181 => seg16Q4Il181 rho
  | 182 => seg16Q4Il182 rho
  | 183 => seg16Q4Il183 rho
  | 184 => seg16Q4Il184 rho
  | 185 => seg16Q4Il185 rho
  | 186 => seg16Q4Il186 rho
  | 187 => seg16Q4Il187 rho
  | 188 => seg16Q4Il188 rho
  | 189 => seg16Q4Il189 rho
  | 190 => seg16Q4Il190 rho
  | 191 => seg16Q4Il191 rho
  | 192 => seg16Q4Il192 rho
  | 193 => seg16Q4Il193 rho
  | 194 => seg16Q4Il194 rho
  | 195 => seg16Q4Il195 rho
  | 196 => seg16Q4Il196 rho
  | 197 => seg16Q4Il197 rho
  | 198 => seg16Q4Il198 rho
  | 199 => seg16Q4Il199 rho
  | 200 => seg16Q4Il200 rho
  | 201 => seg16Q4Il201 rho
  | 202 => seg16Q4Il202 rho
  | 203 => seg16Q4Il203 rho
  | 204 => seg16Q4Il204 rho
  | 205 => seg16Q4Il205 rho
  | 206 => seg16Q4Il206 rho
  | 207 => seg16Q4Il207 rho
  | 208 => seg16Q4Il208 rho
  | 209 => seg16Q4Il209 rho
  | 210 => seg16Q4Il210 rho
  | 211 => seg16Q4Il211 rho
  | 212 => seg16Q4Il212 rho
  | 213 => seg16Q4Il213 rho
  | 214 => seg16Q4Il214 rho
  | 215 => seg16Q4Il215 rho
  | 216 => seg16Q4Il216 rho
  | 217 => seg16Q4Il217 rho
  | 218 => seg16Q4Il218 rho
  | 219 => seg16Q4Il219 rho
  | 220 => seg16Q4Il220 rho
  | 221 => seg16Q4Il221 rho
  | 222 => seg16Q4Il222 rho
  | 223 => seg16Q4Il223 rho
  | 224 => seg16Q4Il224 rho
  | 225 => seg16Q4Il225 rho
  | 226 => seg16Q4Il226 rho
  | 227 => seg16Q4Il227 rho
  | 228 => seg16Q4Il228 rho
  | 229 => seg16Q4Il229 rho
  | 230 => seg16Q4Il230 rho
  | 231 => seg16Q4Il231 rho
  | 232 => seg16Q4Il232 rho
  | 233 => seg16Q4Il233 rho
  | 234 => seg16Q4Il234 rho
  | 235 => seg16Q4Il235 rho
  | 236 => seg16Q4Il236 rho
  | 237 => seg16Q4Il237 rho
  | 238 => seg16Q4Il238 rho
  | 239 => seg16Q4Il239 rho
  | 240 => seg16Q4Il240 rho
  | 241 => seg16Q4Il241 rho
  | 242 => seg16Q4Il242 rho
  | 243 => seg16Q4Il243 rho
  | 244 => seg16Q4Il244 rho
  | 245 => seg16Q4Il245 rho
  | 246 => seg16Q4Il246 rho
  | 247 => seg16Q4Il247 rho
  | 248 => seg16Q4Il248 rho
  | 249 => seg16Q4Il249 rho
  | 250 => seg16Q4Il250 rho
  | 251 => seg16Q4Il251 rho
  | 252 => seg16Q4Il252 rho
  | 253 => seg16Q4Il253 rho
  | _ => 0

theorem seg16Q4Il253Atoms (rho : Nat -> Seg16.F) : seg16Q4Il253 rho = (0 : Seg16.F) := by
  rfl

theorem seg16Q4Il252Atoms (rho : Nat -> Seg16.F) : seg16Q4Il252 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il252
  rw [seg16Q4Il253Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il251Atoms (rho : Nat -> Seg16.F) : seg16Q4Il251 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il251
  rw [seg16Q4Il252Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il250Atoms (rho : Nat -> Seg16.F) : seg16Q4Il250 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il250
  rw [seg16Q4Il251Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il249Atoms (rho : Nat -> Seg16.F) : seg16Q4Il249 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il249
  rw [seg16Q4Il250Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il248Atoms (rho : Nat -> Seg16.F) : seg16Q4Il248 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il248
  rw [seg16Q4Il249Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il247Atoms (rho : Nat -> Seg16.F) : seg16Q4Il247 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il247
  rw [seg16Q4Il248Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il246Atoms (rho : Nat -> Seg16.F) : seg16Q4Il246 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il246
  rw [seg16Q4Il247Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il245Atoms (rho : Nat -> Seg16.F) : seg16Q4Il245 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il245
  rw [seg16Q4Il246Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il244Atoms (rho : Nat -> Seg16.F) : seg16Q4Il244 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il244
  rw [seg16Q4Il245Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il243Atoms (rho : Nat -> Seg16.F) : seg16Q4Il243 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il243
  rw [seg16Q4Il244Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il242Atoms (rho : Nat -> Seg16.F) : seg16Q4Il242 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il242
  rw [seg16Q4Il243Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il241Atoms (rho : Nat -> Seg16.F) : seg16Q4Il241 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il241
  rw [seg16Q4Il242Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il240Atoms (rho : Nat -> Seg16.F) : seg16Q4Il240 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il240
  rw [seg16Q4Il241Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il239Atoms (rho : Nat -> Seg16.F) : seg16Q4Il239 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il239
  rw [seg16Q4Il240Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il238Atoms (rho : Nat -> Seg16.F) : seg16Q4Il238 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il238
  rw [seg16Q4Il239Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il237Atoms (rho : Nat -> Seg16.F) : seg16Q4Il237 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il237
  rw [seg16Q4Il238Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il236Atoms (rho : Nat -> Seg16.F) : seg16Q4Il236 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il236
  rw [seg16Q4Il237Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il235Atoms (rho : Nat -> Seg16.F) : seg16Q4Il235 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il235
  rw [seg16Q4Il236Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il234Atoms (rho : Nat -> Seg16.F) : seg16Q4Il234 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il234
  rw [seg16Q4Il235Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il233Atoms (rho : Nat -> Seg16.F) : seg16Q4Il233 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il233
  rw [seg16Q4Il234Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il232Atoms (rho : Nat -> Seg16.F) : seg16Q4Il232 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il232
  rw [seg16Q4Il233Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il231Atoms (rho : Nat -> Seg16.F) : seg16Q4Il231 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il231
  rw [seg16Q4Il232Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il230Atoms (rho : Nat -> Seg16.F) : seg16Q4Il230 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il230
  rw [seg16Q4Il231Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il229Atoms (rho : Nat -> Seg16.F) : seg16Q4Il229 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il229
  rw [seg16Q4Il230Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il228Atoms (rho : Nat -> Seg16.F) : seg16Q4Il228 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il228
  rw [seg16Q4Il229Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il227Atoms (rho : Nat -> Seg16.F) : seg16Q4Il227 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il227
  rw [seg16Q4Il228Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il226Atoms (rho : Nat -> Seg16.F) : seg16Q4Il226 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il226
  rw [seg16Q4Il227Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il225Atoms (rho : Nat -> Seg16.F) : seg16Q4Il225 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il225
  rw [seg16Q4Il226Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il224Atoms (rho : Nat -> Seg16.F) : seg16Q4Il224 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il224
  rw [seg16Q4Il225Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il223Atoms (rho : Nat -> Seg16.F) : seg16Q4Il223 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il223
  rw [seg16Q4Il224Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il222Atoms (rho : Nat -> Seg16.F) : seg16Q4Il222 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il222
  rw [seg16Q4Il223Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il221Atoms (rho : Nat -> Seg16.F) : seg16Q4Il221 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il221
  rw [seg16Q4Il222Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il220Atoms (rho : Nat -> Seg16.F) : seg16Q4Il220 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il220
  rw [seg16Q4Il221Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il219Atoms (rho : Nat -> Seg16.F) : seg16Q4Il219 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il219
  rw [seg16Q4Il220Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il218Atoms (rho : Nat -> Seg16.F) : seg16Q4Il218 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il218
  rw [seg16Q4Il219Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il217Atoms (rho : Nat -> Seg16.F) : seg16Q4Il217 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il217
  rw [seg16Q4Il218Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il216Atoms (rho : Nat -> Seg16.F) : seg16Q4Il216 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il216
  rw [seg16Q4Il217Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il215Atoms (rho : Nat -> Seg16.F) : seg16Q4Il215 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il215
  rw [seg16Q4Il216Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il214Atoms (rho : Nat -> Seg16.F) : seg16Q4Il214 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il214
  rw [seg16Q4Il215Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il213Atoms (rho : Nat -> Seg16.F) : seg16Q4Il213 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il213
  rw [seg16Q4Il214Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il212Atoms (rho : Nat -> Seg16.F) : seg16Q4Il212 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il212
  rw [seg16Q4Il213Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il211Atoms (rho : Nat -> Seg16.F) : seg16Q4Il211 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il211
  rw [seg16Q4Il212Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il210Atoms (rho : Nat -> Seg16.F) : seg16Q4Il210 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il210
  rw [seg16Q4Il211Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il209Atoms (rho : Nat -> Seg16.F) : seg16Q4Il209 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il209
  rw [seg16Q4Il210Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il208Atoms (rho : Nat -> Seg16.F) : seg16Q4Il208 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il208
  rw [seg16Q4Il209Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il207Atoms (rho : Nat -> Seg16.F) : seg16Q4Il207 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il207
  rw [seg16Q4Il208Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il206Atoms (rho : Nat -> Seg16.F) : seg16Q4Il206 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il206
  rw [seg16Q4Il207Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il205Atoms (rho : Nat -> Seg16.F) : seg16Q4Il205 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il205
  rw [seg16Q4Il206Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il204Atoms (rho : Nat -> Seg16.F) : seg16Q4Il204 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il204
  rw [seg16Q4Il205Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il203Atoms (rho : Nat -> Seg16.F) : seg16Q4Il203 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il203
  rw [seg16Q4Il204Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il202Atoms (rho : Nat -> Seg16.F) : seg16Q4Il202 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il202
  rw [seg16Q4Il203Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il201Atoms (rho : Nat -> Seg16.F) : seg16Q4Il201 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il201
  rw [seg16Q4Il202Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il200Atoms (rho : Nat -> Seg16.F) : seg16Q4Il200 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il200
  rw [seg16Q4Il201Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il199Atoms (rho : Nat -> Seg16.F) : seg16Q4Il199 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il199
  rw [seg16Q4Il200Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il198Atoms (rho : Nat -> Seg16.F) : seg16Q4Il198 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il198
  rw [seg16Q4Il199Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il197Atoms (rho : Nat -> Seg16.F) : seg16Q4Il197 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il197
  rw [seg16Q4Il198Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il196Atoms (rho : Nat -> Seg16.F) : seg16Q4Il196 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il196
  rw [seg16Q4Il197Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il195Atoms (rho : Nat -> Seg16.F) : seg16Q4Il195 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il195
  rw [seg16Q4Il196Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il194Atoms (rho : Nat -> Seg16.F) : seg16Q4Il194 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il194
  rw [seg16Q4Il195Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il193Atoms (rho : Nat -> Seg16.F) : seg16Q4Il193 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il193
  rw [seg16Q4Il194Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il192Atoms (rho : Nat -> Seg16.F) : seg16Q4Il192 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il192
  rw [seg16Q4Il193Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il191Atoms (rho : Nat -> Seg16.F) : seg16Q4Il191 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il191
  rw [seg16Q4Il192Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il190Atoms (rho : Nat -> Seg16.F) : seg16Q4Il190 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il190
  rw [seg16Q4Il191Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il189Atoms (rho : Nat -> Seg16.F) : seg16Q4Il189 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il189
  rw [seg16Q4Il190Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il188Atoms (rho : Nat -> Seg16.F) : seg16Q4Il188 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il188
  rw [seg16Q4Il189Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il187Atoms (rho : Nat -> Seg16.F) : seg16Q4Il187 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il187
  rw [seg16Q4Il188Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il186Atoms (rho : Nat -> Seg16.F) : seg16Q4Il186 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il186
  rw [seg16Q4Il187Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il185Atoms (rho : Nat -> Seg16.F) : seg16Q4Il185 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il185
  rw [seg16Q4Il186Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il184Atoms (rho : Nat -> Seg16.F) : seg16Q4Il184 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il184
  rw [seg16Q4Il185Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il183Atoms (rho : Nat -> Seg16.F) : seg16Q4Il183 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il183
  rw [seg16Q4Il184Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il182Atoms (rho : Nat -> Seg16.F) : seg16Q4Il182 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il182
  rw [seg16Q4Il183Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il181Atoms (rho : Nat -> Seg16.F) : seg16Q4Il181 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il181
  rw [seg16Q4Il182Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il180Atoms (rho : Nat -> Seg16.F) : seg16Q4Il180 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il180
  rw [seg16Q4Il181Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il179Atoms (rho : Nat -> Seg16.F) : seg16Q4Il179 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il179
  rw [seg16Q4Il180Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il178Atoms (rho : Nat -> Seg16.F) : seg16Q4Il178 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il178
  rw [seg16Q4Il179Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il177Atoms (rho : Nat -> Seg16.F) : seg16Q4Il177 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il177
  rw [seg16Q4Il178Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il176Atoms (rho : Nat -> Seg16.F) : seg16Q4Il176 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il176
  rw [seg16Q4Il177Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il175Atoms (rho : Nat -> Seg16.F) : seg16Q4Il175 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il175
  rw [seg16Q4Il176Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il174Atoms (rho : Nat -> Seg16.F) : seg16Q4Il174 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il174
  rw [seg16Q4Il175Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il173Atoms (rho : Nat -> Seg16.F) : seg16Q4Il173 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il173
  rw [seg16Q4Il174Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il172Atoms (rho : Nat -> Seg16.F) : seg16Q4Il172 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il172
  rw [seg16Q4Il173Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il171Atoms (rho : Nat -> Seg16.F) : seg16Q4Il171 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il171
  rw [seg16Q4Il172Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il170Atoms (rho : Nat -> Seg16.F) : seg16Q4Il170 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il170
  rw [seg16Q4Il171Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il169Atoms (rho : Nat -> Seg16.F) : seg16Q4Il169 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il169
  rw [seg16Q4Il170Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il168Atoms (rho : Nat -> Seg16.F) : seg16Q4Il168 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il168
  rw [seg16Q4Il169Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il167Atoms (rho : Nat -> Seg16.F) : seg16Q4Il167 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il167
  rw [seg16Q4Il168Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il166Atoms (rho : Nat -> Seg16.F) : seg16Q4Il166 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il166
  rw [seg16Q4Il167Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il165Atoms (rho : Nat -> Seg16.F) : seg16Q4Il165 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il165
  rw [seg16Q4Il166Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il164Atoms (rho : Nat -> Seg16.F) : seg16Q4Il164 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il164
  rw [seg16Q4Il165Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il163Atoms (rho : Nat -> Seg16.F) : seg16Q4Il163 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il163
  rw [seg16Q4Il164Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il162Atoms (rho : Nat -> Seg16.F) : seg16Q4Il162 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il162
  rw [seg16Q4Il163Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il161Atoms (rho : Nat -> Seg16.F) : seg16Q4Il161 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il161
  rw [seg16Q4Il162Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il160Atoms (rho : Nat -> Seg16.F) : seg16Q4Il160 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il160
  rw [seg16Q4Il161Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il159Atoms (rho : Nat -> Seg16.F) : seg16Q4Il159 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il159
  rw [seg16Q4Il160Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il158Atoms (rho : Nat -> Seg16.F) : seg16Q4Il158 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il158
  rw [seg16Q4Il159Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il157Atoms (rho : Nat -> Seg16.F) : seg16Q4Il157 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il157
  rw [seg16Q4Il158Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il156Atoms (rho : Nat -> Seg16.F) : seg16Q4Il156 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il156
  rw [seg16Q4Il157Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il155Atoms (rho : Nat -> Seg16.F) : seg16Q4Il155 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il155
  rw [seg16Q4Il156Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il154Atoms (rho : Nat -> Seg16.F) : seg16Q4Il154 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il154
  rw [seg16Q4Il155Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il153Atoms (rho : Nat -> Seg16.F) : seg16Q4Il153 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il153
  rw [seg16Q4Il154Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il152Atoms (rho : Nat -> Seg16.F) : seg16Q4Il152 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il152
  rw [seg16Q4Il153Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il151Atoms (rho : Nat -> Seg16.F) : seg16Q4Il151 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il151
  rw [seg16Q4Il152Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il150Atoms (rho : Nat -> Seg16.F) : seg16Q4Il150 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il150
  rw [seg16Q4Il151Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il149Atoms (rho : Nat -> Seg16.F) : seg16Q4Il149 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il149
  rw [seg16Q4Il150Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il148Atoms (rho : Nat -> Seg16.F) : seg16Q4Il148 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il148
  rw [seg16Q4Il149Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il147Atoms (rho : Nat -> Seg16.F) : seg16Q4Il147 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il147
  rw [seg16Q4Il148Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il146Atoms (rho : Nat -> Seg16.F) : seg16Q4Il146 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il146
  rw [seg16Q4Il147Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il145Atoms (rho : Nat -> Seg16.F) : seg16Q4Il145 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il145
  rw [seg16Q4Il146Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il144Atoms (rho : Nat -> Seg16.F) : seg16Q4Il144 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il144
  rw [seg16Q4Il145Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il143Atoms (rho : Nat -> Seg16.F) : seg16Q4Il143 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il143
  rw [seg16Q4Il144Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il142Atoms (rho : Nat -> Seg16.F) : seg16Q4Il142 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il142
  rw [seg16Q4Il143Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il141Atoms (rho : Nat -> Seg16.F) : seg16Q4Il141 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il141
  rw [seg16Q4Il142Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il140Atoms (rho : Nat -> Seg16.F) : seg16Q4Il140 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il140
  rw [seg16Q4Il141Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il139Atoms (rho : Nat -> Seg16.F) : seg16Q4Il139 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il139
  rw [seg16Q4Il140Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il138Atoms (rho : Nat -> Seg16.F) : seg16Q4Il138 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il138
  rw [seg16Q4Il139Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il137Atoms (rho : Nat -> Seg16.F) : seg16Q4Il137 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il137
  rw [seg16Q4Il138Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il136Atoms (rho : Nat -> Seg16.F) : seg16Q4Il136 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il136
  rw [seg16Q4Il137Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il135Atoms (rho : Nat -> Seg16.F) : seg16Q4Il135 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il135
  rw [seg16Q4Il136Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il134Atoms (rho : Nat -> Seg16.F) : seg16Q4Il134 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il134
  rw [seg16Q4Il135Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il133Atoms (rho : Nat -> Seg16.F) : seg16Q4Il133 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il133
  rw [seg16Q4Il134Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il132Atoms (rho : Nat -> Seg16.F) : seg16Q4Il132 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il132
  rw [seg16Q4Il133Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il131Atoms (rho : Nat -> Seg16.F) : seg16Q4Il131 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il131
  rw [seg16Q4Il132Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il130Atoms (rho : Nat -> Seg16.F) : seg16Q4Il130 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il130
  rw [seg16Q4Il131Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il129Atoms (rho : Nat -> Seg16.F) : seg16Q4Il129 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il129
  rw [seg16Q4Il130Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il128Atoms (rho : Nat -> Seg16.F) : seg16Q4Il128 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il128
  rw [seg16Q4Il129Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il127Atoms (rho : Nat -> Seg16.F) : seg16Q4Il127 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il127
  rw [seg16Q4Il128Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il126Atoms (rho : Nat -> Seg16.F) : seg16Q4Il126 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il126
  rw [seg16Q4Il127Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il125Atoms (rho : Nat -> Seg16.F) : seg16Q4Il125 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il125
  rw [seg16Q4Il126Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il124Atoms (rho : Nat -> Seg16.F) : seg16Q4Il124 rho = (0 : Seg16.F) := by
  unfold seg16Q4Il124
  rw [seg16Q4Il125Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il123Atoms (rho : Nat -> Seg16.F) : seg16Q4Il123 rho = seg16Q4IlAtom0 rho := by
  unfold seg16Q4Il123
  rw [seg16Q4Il124Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il122Atoms (rho : Nat -> Seg16.F) : seg16Q4Il122 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho := by
  unfold seg16Q4Il122
  rw [seg16Q4Il123Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il121Atoms (rho : Nat -> Seg16.F) : seg16Q4Il121 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho := by
  unfold seg16Q4Il121
  rw [seg16Q4Il122Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il120Atoms (rho : Nat -> Seg16.F) : seg16Q4Il120 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho := by
  unfold seg16Q4Il120
  rw [seg16Q4Il121Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il119Atoms (rho : Nat -> Seg16.F) : seg16Q4Il119 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho := by
  unfold seg16Q4Il119
  rw [seg16Q4Il120Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il118Atoms (rho : Nat -> Seg16.F) : seg16Q4Il118 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho := by
  unfold seg16Q4Il118
  rw [seg16Q4Il119Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il117Atoms (rho : Nat -> Seg16.F) : seg16Q4Il117 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho := by
  unfold seg16Q4Il117
  rw [seg16Q4Il118Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il116Atoms (rho : Nat -> Seg16.F) : seg16Q4Il116 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho := by
  unfold seg16Q4Il116
  rw [seg16Q4Il117Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il115Atoms (rho : Nat -> Seg16.F) : seg16Q4Il115 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho := by
  unfold seg16Q4Il115
  rw [seg16Q4Il116Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il114Atoms (rho : Nat -> Seg16.F) : seg16Q4Il114 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho := by
  unfold seg16Q4Il114
  rw [seg16Q4Il115Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il113Atoms (rho : Nat -> Seg16.F) : seg16Q4Il113 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho := by
  unfold seg16Q4Il113
  rw [seg16Q4Il114Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il112Atoms (rho : Nat -> Seg16.F) : seg16Q4Il112 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho := by
  unfold seg16Q4Il112
  rw [seg16Q4Il113Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il111Atoms (rho : Nat -> Seg16.F) : seg16Q4Il111 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho := by
  unfold seg16Q4Il111
  rw [seg16Q4Il112Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il110Atoms (rho : Nat -> Seg16.F) : seg16Q4Il110 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho := by
  unfold seg16Q4Il110
  rw [seg16Q4Il111Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il109Atoms (rho : Nat -> Seg16.F) : seg16Q4Il109 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho := by
  unfold seg16Q4Il109
  rw [seg16Q4Il110Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il108Atoms (rho : Nat -> Seg16.F) : seg16Q4Il108 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho := by
  unfold seg16Q4Il108
  rw [seg16Q4Il109Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il107Atoms (rho : Nat -> Seg16.F) : seg16Q4Il107 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho := by
  unfold seg16Q4Il107
  rw [seg16Q4Il108Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il106Atoms (rho : Nat -> Seg16.F) : seg16Q4Il106 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho := by
  unfold seg16Q4Il106
  rw [seg16Q4Il107Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il105Atoms (rho : Nat -> Seg16.F) : seg16Q4Il105 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho := by
  unfold seg16Q4Il105
  rw [seg16Q4Il106Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il104Atoms (rho : Nat -> Seg16.F) : seg16Q4Il104 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho := by
  unfold seg16Q4Il104
  rw [seg16Q4Il105Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il103Atoms (rho : Nat -> Seg16.F) : seg16Q4Il103 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho := by
  unfold seg16Q4Il103
  rw [seg16Q4Il104Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il102Atoms (rho : Nat -> Seg16.F) : seg16Q4Il102 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho := by
  unfold seg16Q4Il102
  rw [seg16Q4Il103Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il101Atoms (rho : Nat -> Seg16.F) : seg16Q4Il101 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho := by
  unfold seg16Q4Il101
  rw [seg16Q4Il102Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il100Atoms (rho : Nat -> Seg16.F) : seg16Q4Il100 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho := by
  unfold seg16Q4Il100
  rw [seg16Q4Il101Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il99Atoms (rho : Nat -> Seg16.F) : seg16Q4Il99 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho := by
  unfold seg16Q4Il99
  rw [seg16Q4Il100Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il98Atoms (rho : Nat -> Seg16.F) : seg16Q4Il98 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho := by
  unfold seg16Q4Il98
  rw [seg16Q4Il99Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il97Atoms (rho : Nat -> Seg16.F) : seg16Q4Il97 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho := by
  unfold seg16Q4Il97
  rw [seg16Q4Il98Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il96Atoms (rho : Nat -> Seg16.F) : seg16Q4Il96 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho := by
  unfold seg16Q4Il96
  rw [seg16Q4Il97Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il95Atoms (rho : Nat -> Seg16.F) : seg16Q4Il95 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho := by
  unfold seg16Q4Il95
  rw [seg16Q4Il96Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il94Atoms (rho : Nat -> Seg16.F) : seg16Q4Il94 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho := by
  unfold seg16Q4Il94
  rw [seg16Q4Il95Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il93Atoms (rho : Nat -> Seg16.F) : seg16Q4Il93 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho := by
  unfold seg16Q4Il93
  rw [seg16Q4Il94Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il92Atoms (rho : Nat -> Seg16.F) : seg16Q4Il92 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho := by
  unfold seg16Q4Il92
  rw [seg16Q4Il93Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il91Atoms (rho : Nat -> Seg16.F) : seg16Q4Il91 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho := by
  unfold seg16Q4Il91
  rw [seg16Q4Il92Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il90Atoms (rho : Nat -> Seg16.F) : seg16Q4Il90 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho := by
  unfold seg16Q4Il90
  rw [seg16Q4Il91Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il89Atoms (rho : Nat -> Seg16.F) : seg16Q4Il89 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho := by
  unfold seg16Q4Il89
  rw [seg16Q4Il90Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il88Atoms (rho : Nat -> Seg16.F) : seg16Q4Il88 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold seg16Q4Il88
  rw [seg16Q4Il89Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il87Atoms (rho : Nat -> Seg16.F) : seg16Q4Il87 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold seg16Q4Il87
  rw [seg16Q4Il88Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il86Atoms (rho : Nat -> Seg16.F) : seg16Q4Il86 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold seg16Q4Il86
  rw [seg16Q4Il87Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il85Atoms (rho : Nat -> Seg16.F) : seg16Q4Il85 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold seg16Q4Il85
  rw [seg16Q4Il86Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il84Atoms (rho : Nat -> Seg16.F) : seg16Q4Il84 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold seg16Q4Il84
  rw [seg16Q4Il85Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il83Atoms (rho : Nat -> Seg16.F) : seg16Q4Il83 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho := by
  unfold seg16Q4Il83
  rw [seg16Q4Il84Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il82Atoms (rho : Nat -> Seg16.F) : seg16Q4Il82 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho := by
  unfold seg16Q4Il82
  rw [seg16Q4Il83Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il81Atoms (rho : Nat -> Seg16.F) : seg16Q4Il81 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho := by
  unfold seg16Q4Il81
  rw [seg16Q4Il82Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il80Atoms (rho : Nat -> Seg16.F) : seg16Q4Il80 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho := by
  unfold seg16Q4Il80
  rw [seg16Q4Il81Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il79Atoms (rho : Nat -> Seg16.F) : seg16Q4Il79 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho := by
  unfold seg16Q4Il79
  rw [seg16Q4Il80Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il78Atoms (rho : Nat -> Seg16.F) : seg16Q4Il78 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho := by
  unfold seg16Q4Il78
  rw [seg16Q4Il79Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il77Atoms (rho : Nat -> Seg16.F) : seg16Q4Il77 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho := by
  unfold seg16Q4Il77
  rw [seg16Q4Il78Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il76Atoms (rho : Nat -> Seg16.F) : seg16Q4Il76 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho := by
  unfold seg16Q4Il76
  rw [seg16Q4Il77Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il75Atoms (rho : Nat -> Seg16.F) : seg16Q4Il75 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho := by
  unfold seg16Q4Il75
  rw [seg16Q4Il76Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il74Atoms (rho : Nat -> Seg16.F) : seg16Q4Il74 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il74
  rw [seg16Q4Il75Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il73Atoms (rho : Nat -> Seg16.F) : seg16Q4Il73 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il73
  rw [seg16Q4Il74Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il72Atoms (rho : Nat -> Seg16.F) : seg16Q4Il72 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il72
  rw [seg16Q4Il73Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il71Atoms (rho : Nat -> Seg16.F) : seg16Q4Il71 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il71
  rw [seg16Q4Il72Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il70Atoms (rho : Nat -> Seg16.F) : seg16Q4Il70 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il70
  rw [seg16Q4Il71Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il69Atoms (rho : Nat -> Seg16.F) : seg16Q4Il69 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il69
  rw [seg16Q4Il70Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il68Atoms (rho : Nat -> Seg16.F) : seg16Q4Il68 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il68
  rw [seg16Q4Il69Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il67Atoms (rho : Nat -> Seg16.F) : seg16Q4Il67 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold seg16Q4Il67
  rw [seg16Q4Il68Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il66Atoms (rho : Nat -> Seg16.F) : seg16Q4Il66 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho := by
  unfold seg16Q4Il66
  rw [seg16Q4Il67Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il65Atoms (rho : Nat -> Seg16.F) : seg16Q4Il65 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho := by
  unfold seg16Q4Il65
  rw [seg16Q4Il66Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il64Atoms (rho : Nat -> Seg16.F) : seg16Q4Il64 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho := by
  unfold seg16Q4Il64
  rw [seg16Q4Il65Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il63Atoms (rho : Nat -> Seg16.F) : seg16Q4Il63 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho := by
  unfold seg16Q4Il63
  rw [seg16Q4Il64Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il62Atoms (rho : Nat -> Seg16.F) : seg16Q4Il62 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho := by
  unfold seg16Q4Il62
  rw [seg16Q4Il63Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il61Atoms (rho : Nat -> Seg16.F) : seg16Q4Il61 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho := by
  unfold seg16Q4Il61
  rw [seg16Q4Il62Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il60Atoms (rho : Nat -> Seg16.F) : seg16Q4Il60 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho := by
  unfold seg16Q4Il60
  rw [seg16Q4Il61Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il59Atoms (rho : Nat -> Seg16.F) : seg16Q4Il59 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho := by
  unfold seg16Q4Il59
  rw [seg16Q4Il60Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il58Atoms (rho : Nat -> Seg16.F) : seg16Q4Il58 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho := by
  unfold seg16Q4Il58
  rw [seg16Q4Il59Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il57Atoms (rho : Nat -> Seg16.F) : seg16Q4Il57 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho := by
  unfold seg16Q4Il57
  rw [seg16Q4Il58Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il56Atoms (rho : Nat -> Seg16.F) : seg16Q4Il56 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho := by
  unfold seg16Q4Il56
  rw [seg16Q4Il57Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il55Atoms (rho : Nat -> Seg16.F) : seg16Q4Il55 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho := by
  unfold seg16Q4Il55
  rw [seg16Q4Il56Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il54Atoms (rho : Nat -> Seg16.F) : seg16Q4Il54 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho := by
  unfold seg16Q4Il54
  rw [seg16Q4Il55Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il53Atoms (rho : Nat -> Seg16.F) : seg16Q4Il53 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho := by
  unfold seg16Q4Il53
  rw [seg16Q4Il54Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il52Atoms (rho : Nat -> Seg16.F) : seg16Q4Il52 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho := by
  unfold seg16Q4Il52
  rw [seg16Q4Il53Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il51Atoms (rho : Nat -> Seg16.F) : seg16Q4Il51 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho := by
  unfold seg16Q4Il51
  rw [seg16Q4Il52Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il50Atoms (rho : Nat -> Seg16.F) : seg16Q4Il50 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho := by
  unfold seg16Q4Il50
  rw [seg16Q4Il51Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il49Atoms (rho : Nat -> Seg16.F) : seg16Q4Il49 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho := by
  unfold seg16Q4Il49
  rw [seg16Q4Il50Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il48Atoms (rho : Nat -> Seg16.F) : seg16Q4Il48 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho := by
  unfold seg16Q4Il48
  rw [seg16Q4Il49Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il47Atoms (rho : Nat -> Seg16.F) : seg16Q4Il47 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho := by
  unfold seg16Q4Il47
  rw [seg16Q4Il48Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il46Atoms (rho : Nat -> Seg16.F) : seg16Q4Il46 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho := by
  unfold seg16Q4Il46
  rw [seg16Q4Il47Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il45Atoms (rho : Nat -> Seg16.F) : seg16Q4Il45 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho := by
  unfold seg16Q4Il45
  rw [seg16Q4Il46Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il44Atoms (rho : Nat -> Seg16.F) : seg16Q4Il44 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho := by
  unfold seg16Q4Il44
  rw [seg16Q4Il45Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il43Atoms (rho : Nat -> Seg16.F) : seg16Q4Il43 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho := by
  unfold seg16Q4Il43
  rw [seg16Q4Il44Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il42Atoms (rho : Nat -> Seg16.F) : seg16Q4Il42 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho := by
  unfold seg16Q4Il42
  rw [seg16Q4Il43Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il41Atoms (rho : Nat -> Seg16.F) : seg16Q4Il41 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho := by
  unfold seg16Q4Il41
  rw [seg16Q4Il42Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il40Atoms (rho : Nat -> Seg16.F) : seg16Q4Il40 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho := by
  unfold seg16Q4Il40
  rw [seg16Q4Il41Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il39Atoms (rho : Nat -> Seg16.F) : seg16Q4Il39 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho := by
  unfold seg16Q4Il39
  rw [seg16Q4Il40Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il38Atoms (rho : Nat -> Seg16.F) : seg16Q4Il38 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho := by
  unfold seg16Q4Il38
  rw [seg16Q4Il39Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il37Atoms (rho : Nat -> Seg16.F) : seg16Q4Il37 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho := by
  unfold seg16Q4Il37
  rw [seg16Q4Il38Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il36Atoms (rho : Nat -> Seg16.F) : seg16Q4Il36 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho := by
  unfold seg16Q4Il36
  rw [seg16Q4Il37Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il35Atoms (rho : Nat -> Seg16.F) : seg16Q4Il35 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho := by
  unfold seg16Q4Il35
  rw [seg16Q4Il36Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il34Atoms (rho : Nat -> Seg16.F) : seg16Q4Il34 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho := by
  unfold seg16Q4Il34
  rw [seg16Q4Il35Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il33Atoms (rho : Nat -> Seg16.F) : seg16Q4Il33 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho := by
  unfold seg16Q4Il33
  rw [seg16Q4Il34Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il32Atoms (rho : Nat -> Seg16.F) : seg16Q4Il32 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho := by
  unfold seg16Q4Il32
  rw [seg16Q4Il33Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il31Atoms (rho : Nat -> Seg16.F) : seg16Q4Il31 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho := by
  unfold seg16Q4Il31
  rw [seg16Q4Il32Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il30Atoms (rho : Nat -> Seg16.F) : seg16Q4Il30 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho := by
  unfold seg16Q4Il30
  rw [seg16Q4Il31Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il29Atoms (rho : Nat -> Seg16.F) : seg16Q4Il29 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho := by
  unfold seg16Q4Il29
  rw [seg16Q4Il30Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il28Atoms (rho : Nat -> Seg16.F) : seg16Q4Il28 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho := by
  unfold seg16Q4Il28
  rw [seg16Q4Il29Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il27Atoms (rho : Nat -> Seg16.F) : seg16Q4Il27 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho := by
  unfold seg16Q4Il27
  rw [seg16Q4Il28Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il26Atoms (rho : Nat -> Seg16.F) : seg16Q4Il26 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho := by
  unfold seg16Q4Il26
  rw [seg16Q4Il27Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il25Atoms (rho : Nat -> Seg16.F) : seg16Q4Il25 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho := by
  unfold seg16Q4Il25
  rw [seg16Q4Il26Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il24Atoms (rho : Nat -> Seg16.F) : seg16Q4Il24 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il24
  rw [seg16Q4Il25Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il23Atoms (rho : Nat -> Seg16.F) : seg16Q4Il23 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il23
  rw [seg16Q4Il24Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il22Atoms (rho : Nat -> Seg16.F) : seg16Q4Il22 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il22
  rw [seg16Q4Il23Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il21Atoms (rho : Nat -> Seg16.F) : seg16Q4Il21 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il21
  rw [seg16Q4Il22Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il20Atoms (rho : Nat -> Seg16.F) : seg16Q4Il20 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il20
  rw [seg16Q4Il21Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il19Atoms (rho : Nat -> Seg16.F) : seg16Q4Il19 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il19
  rw [seg16Q4Il20Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il18Atoms (rho : Nat -> Seg16.F) : seg16Q4Il18 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il18
  rw [seg16Q4Il19Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il17Atoms (rho : Nat -> Seg16.F) : seg16Q4Il17 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il17
  rw [seg16Q4Il18Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il16Atoms (rho : Nat -> Seg16.F) : seg16Q4Il16 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold seg16Q4Il16
  rw [seg16Q4Il17Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il15Atoms (rho : Nat -> Seg16.F) : seg16Q4Il15 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho := by
  unfold seg16Q4Il15
  rw [seg16Q4Il16Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il14Atoms (rho : Nat -> Seg16.F) : seg16Q4Il14 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho := by
  unfold seg16Q4Il14
  rw [seg16Q4Il15Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il13Atoms (rho : Nat -> Seg16.F) : seg16Q4Il13 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho := by
  unfold seg16Q4Il13
  rw [seg16Q4Il14Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il12Atoms (rho : Nat -> Seg16.F) : seg16Q4Il12 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho := by
  unfold seg16Q4Il12
  rw [seg16Q4Il13Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il11Atoms (rho : Nat -> Seg16.F) : seg16Q4Il11 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il11
  rw [seg16Q4Il12Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il10Atoms (rho : Nat -> Seg16.F) : seg16Q4Il10 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il10
  rw [seg16Q4Il11Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il9Atoms (rho : Nat -> Seg16.F) : seg16Q4Il9 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il9
  rw [seg16Q4Il10Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il8Atoms (rho : Nat -> Seg16.F) : seg16Q4Il8 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il8
  rw [seg16Q4Il9Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il7Atoms (rho : Nat -> Seg16.F) : seg16Q4Il7 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il7
  rw [seg16Q4Il8Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il6Atoms (rho : Nat -> Seg16.F) : seg16Q4Il6 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il6
  rw [seg16Q4Il7Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il5Atoms (rho : Nat -> Seg16.F) : seg16Q4Il5 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il5
  rw [seg16Q4Il6Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il4Atoms (rho : Nat -> Seg16.F) : seg16Q4Il4 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il4
  rw [seg16Q4Il5Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il3Atoms (rho : Nat -> Seg16.F) : seg16Q4Il3 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold seg16Q4Il3
  rw [seg16Q4Il4Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il2Atoms (rho : Nat -> Seg16.F) : seg16Q4Il2 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho + seg16Q4IlAtom60 rho := by
  unfold seg16Q4Il2
  rw [seg16Q4Il3Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il1Atoms (rho : Nat -> Seg16.F) : seg16Q4Il1 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho + seg16Q4IlAtom60 rho := by
  unfold seg16Q4Il1
  rw [seg16Q4Il2Atoms rho] <;> simp only [zero_add]

theorem seg16Q4Il0Atoms (rho : Nat -> Seg16.F) : seg16Q4Il0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho + seg16Q4IlAtom60 rho + seg16Q4IlAtom61 rho := by
  unfold seg16Q4Il0
  rw [seg16Q4Il1Atoms rho] <;> simp only [zero_add]

theorem seg16Q4relationLc135Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc135Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc135Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc135Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc135Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho := by
  unfold Seg16.relationLc135Part1 seg16Q4IlAtom17
  ring

theorem seg16Q4relationLc135Atom (rho : Nat -> Seg16.F) : Seg16.relationLc135 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho := by
  unfold Seg16.relationLc135
  rw [seg16Q4relationLc135Part0Atom rho, seg16Q4relationLc135Part1Atom rho] <;> ring

theorem seg16Q4relationLc136Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc136Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc136Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc136Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc136Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho := by
  unfold Seg16.relationLc136Part1 seg16Q4IlAtom17 seg16Q4IlAtom18
  ring

theorem seg16Q4relationLc136Atom (rho : Nat -> Seg16.F) : Seg16.relationLc136 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho := by
  unfold Seg16.relationLc136
  rw [seg16Q4relationLc136Part0Atom rho, seg16Q4relationLc136Part1Atom rho] <;> ring

theorem seg16Q4relationLc137Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc137Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc137Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc137Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc137Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho := by
  unfold Seg16.relationLc137Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19
  ring

theorem seg16Q4relationLc137Atom (rho : Nat -> Seg16.F) : Seg16.relationLc137 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho := by
  unfold Seg16.relationLc137
  rw [seg16Q4relationLc137Part0Atom rho, seg16Q4relationLc137Part1Atom rho] <;> ring

theorem seg16Q4relationLc138Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc138Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc138Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc138Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc138Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho := by
  unfold Seg16.relationLc138Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20
  ring

theorem seg16Q4relationLc138Atom (rho : Nat -> Seg16.F) : Seg16.relationLc138 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho := by
  unfold Seg16.relationLc138
  rw [seg16Q4relationLc138Part0Atom rho, seg16Q4relationLc138Part1Atom rho] <;> ring

theorem seg16Q4relationLc139Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc139Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc139Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc139Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc139Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho := by
  unfold Seg16.relationLc139Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21
  ring

theorem seg16Q4relationLc139Atom (rho : Nat -> Seg16.F) : Seg16.relationLc139 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho := by
  unfold Seg16.relationLc139
  rw [seg16Q4relationLc139Part0Atom rho, seg16Q4relationLc139Part1Atom rho] <;> ring

theorem seg16Q4relationLc140Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc140Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc140Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc140Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc140Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho := by
  unfold Seg16.relationLc140Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22
  ring

theorem seg16Q4relationLc140Atom (rho : Nat -> Seg16.F) : Seg16.relationLc140 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho := by
  unfold Seg16.relationLc140
  rw [seg16Q4relationLc140Part0Atom rho, seg16Q4relationLc140Part1Atom rho] <;> ring

theorem seg16Q4relationLc141Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc141Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc141Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc141Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc141Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho := by
  unfold Seg16.relationLc141Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23
  ring

theorem seg16Q4relationLc141Atom (rho : Nat -> Seg16.F) : Seg16.relationLc141 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho := by
  unfold Seg16.relationLc141
  rw [seg16Q4relationLc141Part0Atom rho, seg16Q4relationLc141Part1Atom rho] <;> ring

theorem seg16Q4relationLc142Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc142Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc142Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc142Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc142Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho := by
  unfold Seg16.relationLc142Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24
  ring

theorem seg16Q4relationLc142Atom (rho : Nat -> Seg16.F) : Seg16.relationLc142 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho := by
  unfold Seg16.relationLc142
  rw [seg16Q4relationLc142Part0Atom rho, seg16Q4relationLc142Part1Atom rho] <;> ring

theorem seg16Q4relationLc143Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc143Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc143Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc143Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc143Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho := by
  unfold Seg16.relationLc143Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25
  ring

theorem seg16Q4relationLc143Atom (rho : Nat -> Seg16.F) : Seg16.relationLc143 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho := by
  unfold Seg16.relationLc143
  rw [seg16Q4relationLc143Part0Atom rho, seg16Q4relationLc143Part1Atom rho] <;> ring

theorem seg16Q4relationLc144Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc144Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc144Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc144Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc144Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold Seg16.relationLc144Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26
  ring

theorem seg16Q4relationLc144Atom (rho : Nat -> Seg16.F) : Seg16.relationLc144 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho := by
  unfold Seg16.relationLc144
  rw [seg16Q4relationLc144Part0Atom rho, seg16Q4relationLc144Part1Atom rho] <;> ring

theorem seg16Q4relationLc145Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc145Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc145Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc145Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc145Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho := by
  unfold Seg16.relationLc145Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27
  ring

theorem seg16Q4relationLc145Atom (rho : Nat -> Seg16.F) : Seg16.relationLc145 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho := by
  unfold Seg16.relationLc145
  rw [seg16Q4relationLc145Part0Atom rho, seg16Q4relationLc145Part1Atom rho] <;> ring

theorem seg16Q4relationLc146Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc146Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc146Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc146Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc146Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho := by
  unfold Seg16.relationLc146Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28
  ring

theorem seg16Q4relationLc146Atom (rho : Nat -> Seg16.F) : Seg16.relationLc146 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho := by
  unfold Seg16.relationLc146
  rw [seg16Q4relationLc146Part0Atom rho, seg16Q4relationLc146Part1Atom rho] <;> ring

theorem seg16Q4relationLc147Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc147Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc147Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc147Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc147Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho := by
  unfold Seg16.relationLc147Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29
  ring

theorem seg16Q4relationLc147Atom (rho : Nat -> Seg16.F) : Seg16.relationLc147 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho := by
  unfold Seg16.relationLc147
  rw [seg16Q4relationLc147Part0Atom rho, seg16Q4relationLc147Part1Atom rho] <;> ring

theorem seg16Q4relationLc148Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc148Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc148Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc148Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc148Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho := by
  unfold Seg16.relationLc148Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30
  ring

theorem seg16Q4relationLc148Atom (rho : Nat -> Seg16.F) : Seg16.relationLc148 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho := by
  unfold Seg16.relationLc148
  rw [seg16Q4relationLc148Part0Atom rho, seg16Q4relationLc148Part1Atom rho] <;> ring

theorem seg16Q4relationLc149Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc149Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc149Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc149Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc149Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho := by
  unfold Seg16.relationLc149Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31
  ring

theorem seg16Q4relationLc149Atom (rho : Nat -> Seg16.F) : Seg16.relationLc149 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho := by
  unfold Seg16.relationLc149
  rw [seg16Q4relationLc149Part0Atom rho, seg16Q4relationLc149Part1Atom rho] <;> ring

theorem seg16Q4relationLc150Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc150Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc150Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc150Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc150Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho := by
  unfold Seg16.relationLc150Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32
  ring

theorem seg16Q4relationLc150Atom (rho : Nat -> Seg16.F) : Seg16.relationLc150 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho := by
  unfold Seg16.relationLc150
  rw [seg16Q4relationLc150Part0Atom rho, seg16Q4relationLc150Part1Atom rho] <;> ring

theorem seg16Q4relationLc151Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc151Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc151Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc151Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc151Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc151Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc151Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc151Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold Seg16.relationLc151Part2 seg16Q4IlAtom34
  ring

theorem seg16Q4relationLc151Atom (rho : Nat -> Seg16.F) : Seg16.relationLc151 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho := by
  unfold Seg16.relationLc151
  rw [seg16Q4relationLc151Part0Atom rho, seg16Q4relationLc151Part1Atom rho, seg16Q4relationLc151Part2Atom rho] <;> ring

theorem seg16Q4relationLc152Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc152Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc152Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc152Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc152Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc152Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc152Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc152Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho := by
  unfold Seg16.relationLc152Part2 seg16Q4IlAtom34 seg16Q4IlAtom35
  ring

theorem seg16Q4relationLc152Atom (rho : Nat -> Seg16.F) : Seg16.relationLc152 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho := by
  unfold Seg16.relationLc152
  rw [seg16Q4relationLc152Part0Atom rho, seg16Q4relationLc152Part1Atom rho, seg16Q4relationLc152Part2Atom rho] <;> ring

theorem seg16Q4relationLc153Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc153Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc153Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc153Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc153Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc153Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc153Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc153Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho := by
  unfold Seg16.relationLc153Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36
  ring

theorem seg16Q4relationLc153Atom (rho : Nat -> Seg16.F) : Seg16.relationLc153 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho := by
  unfold Seg16.relationLc153
  rw [seg16Q4relationLc153Part0Atom rho, seg16Q4relationLc153Part1Atom rho, seg16Q4relationLc153Part2Atom rho] <;> ring

theorem seg16Q4relationLc154Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc154Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc154Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc154Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc154Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc154Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc154Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc154Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho := by
  unfold Seg16.relationLc154Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37
  ring

theorem seg16Q4relationLc154Atom (rho : Nat -> Seg16.F) : Seg16.relationLc154 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho := by
  unfold Seg16.relationLc154
  rw [seg16Q4relationLc154Part0Atom rho, seg16Q4relationLc154Part1Atom rho, seg16Q4relationLc154Part2Atom rho] <;> ring

theorem seg16Q4relationLc155Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc155Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc155Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc155Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc155Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc155Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc155Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc155Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho := by
  unfold Seg16.relationLc155Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38
  ring

theorem seg16Q4relationLc155Atom (rho : Nat -> Seg16.F) : Seg16.relationLc155 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho := by
  unfold Seg16.relationLc155
  rw [seg16Q4relationLc155Part0Atom rho, seg16Q4relationLc155Part1Atom rho, seg16Q4relationLc155Part2Atom rho] <;> ring

theorem seg16Q4relationLc156Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc156Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc156Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc156Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc156Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc156Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc156Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc156Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho := by
  unfold Seg16.relationLc156Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39
  ring

theorem seg16Q4relationLc156Atom (rho : Nat -> Seg16.F) : Seg16.relationLc156 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho := by
  unfold Seg16.relationLc156
  rw [seg16Q4relationLc156Part0Atom rho, seg16Q4relationLc156Part1Atom rho, seg16Q4relationLc156Part2Atom rho] <;> ring

theorem seg16Q4relationLc157Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc157Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc157Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc157Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc157Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc157Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc157Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc157Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho := by
  unfold Seg16.relationLc157Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40
  ring

theorem seg16Q4relationLc157Atom (rho : Nat -> Seg16.F) : Seg16.relationLc157 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho := by
  unfold Seg16.relationLc157
  rw [seg16Q4relationLc157Part0Atom rho, seg16Q4relationLc157Part1Atom rho, seg16Q4relationLc157Part2Atom rho] <;> ring

theorem seg16Q4relationLc158Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc158Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc158Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc158Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc158Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc158Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc158Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc158Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho := by
  unfold Seg16.relationLc158Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41
  ring

theorem seg16Q4relationLc158Atom (rho : Nat -> Seg16.F) : Seg16.relationLc158 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho := by
  unfold Seg16.relationLc158
  rw [seg16Q4relationLc158Part0Atom rho, seg16Q4relationLc158Part1Atom rho, seg16Q4relationLc158Part2Atom rho] <;> ring

theorem seg16Q4relationLc159Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc159Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc159Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc159Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc159Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc159Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc159Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc159Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho := by
  unfold Seg16.relationLc159Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42
  ring

theorem seg16Q4relationLc159Atom (rho : Nat -> Seg16.F) : Seg16.relationLc159 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho := by
  unfold Seg16.relationLc159
  rw [seg16Q4relationLc159Part0Atom rho, seg16Q4relationLc159Part1Atom rho, seg16Q4relationLc159Part2Atom rho] <;> ring

theorem seg16Q4relationLc160Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc160Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc160Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc160Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc160Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc160Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc160Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc160Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho := by
  unfold Seg16.relationLc160Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43
  ring

theorem seg16Q4relationLc160Atom (rho : Nat -> Seg16.F) : Seg16.relationLc160 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho := by
  unfold Seg16.relationLc160
  rw [seg16Q4relationLc160Part0Atom rho, seg16Q4relationLc160Part1Atom rho, seg16Q4relationLc160Part2Atom rho] <;> ring

theorem seg16Q4relationLc161Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc161Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc161Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc161Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc161Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc161Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc161Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc161Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho := by
  unfold Seg16.relationLc161Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44
  ring

theorem seg16Q4relationLc161Atom (rho : Nat -> Seg16.F) : Seg16.relationLc161 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho := by
  unfold Seg16.relationLc161
  rw [seg16Q4relationLc161Part0Atom rho, seg16Q4relationLc161Part1Atom rho, seg16Q4relationLc161Part2Atom rho] <;> ring

theorem seg16Q4relationLc162Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc162Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc162Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc162Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc162Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc162Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc162Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc162Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho := by
  unfold Seg16.relationLc162Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45
  ring

theorem seg16Q4relationLc162Atom (rho : Nat -> Seg16.F) : Seg16.relationLc162 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho := by
  unfold Seg16.relationLc162
  rw [seg16Q4relationLc162Part0Atom rho, seg16Q4relationLc162Part1Atom rho, seg16Q4relationLc162Part2Atom rho] <;> ring

theorem seg16Q4relationLc163Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc163Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc163Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc163Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc163Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc163Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc163Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc163Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho := by
  unfold Seg16.relationLc163Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46
  ring

theorem seg16Q4relationLc163Atom (rho : Nat -> Seg16.F) : Seg16.relationLc163 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho := by
  unfold Seg16.relationLc163
  rw [seg16Q4relationLc163Part0Atom rho, seg16Q4relationLc163Part1Atom rho, seg16Q4relationLc163Part2Atom rho] <;> ring

theorem seg16Q4relationLc164Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc164Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc164Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc164Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc164Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc164Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc164Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc164Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho := by
  unfold Seg16.relationLc164Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47
  ring

theorem seg16Q4relationLc164Atom (rho : Nat -> Seg16.F) : Seg16.relationLc164 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho := by
  unfold Seg16.relationLc164
  rw [seg16Q4relationLc164Part0Atom rho, seg16Q4relationLc164Part1Atom rho, seg16Q4relationLc164Part2Atom rho] <;> ring

theorem seg16Q4relationLc165Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc165Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc165Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc165Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc165Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc165Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc165Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc165Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho := by
  unfold Seg16.relationLc165Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48
  ring

theorem seg16Q4relationLc165Atom (rho : Nat -> Seg16.F) : Seg16.relationLc165 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho := by
  unfold Seg16.relationLc165
  rw [seg16Q4relationLc165Part0Atom rho, seg16Q4relationLc165Part1Atom rho, seg16Q4relationLc165Part2Atom rho] <;> ring

theorem seg16Q4relationLc166Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc166Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc166Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc166Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc166Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc166Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc166Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc166Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho := by
  unfold Seg16.relationLc166Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49
  ring

theorem seg16Q4relationLc166Atom (rho : Nat -> Seg16.F) : Seg16.relationLc166 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho := by
  unfold Seg16.relationLc166
  rw [seg16Q4relationLc166Part0Atom rho, seg16Q4relationLc166Part1Atom rho, seg16Q4relationLc166Part2Atom rho] <;> ring

theorem seg16Q4relationLc167Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc167Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc167Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc167Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc167Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc167Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc167Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc167Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc167Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc167Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc167Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho := by
  unfold Seg16.relationLc167Part3 seg16Q4IlAtom51
  ring

theorem seg16Q4relationLc167Atom (rho : Nat -> Seg16.F) : Seg16.relationLc167 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho := by
  unfold Seg16.relationLc167
  rw [seg16Q4relationLc167Part0Atom rho, seg16Q4relationLc167Part1Atom rho, seg16Q4relationLc167Part2Atom rho, seg16Q4relationLc167Part3Atom rho] <;> ring

theorem seg16Q4relationLc168Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc168Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc168Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc168Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc168Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc168Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc168Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc168Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc168Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc168Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc168Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho := by
  unfold Seg16.relationLc168Part3 seg16Q4IlAtom51 seg16Q4IlAtom52
  ring

theorem seg16Q4relationLc168Atom (rho : Nat -> Seg16.F) : Seg16.relationLc168 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho := by
  unfold Seg16.relationLc168
  rw [seg16Q4relationLc168Part0Atom rho, seg16Q4relationLc168Part1Atom rho, seg16Q4relationLc168Part2Atom rho, seg16Q4relationLc168Part3Atom rho] <;> ring

theorem seg16Q4relationLc169Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc169Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc169Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc169Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc169Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc169Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc169Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc169Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc169Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc169Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc169Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho := by
  unfold Seg16.relationLc169Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53
  ring

theorem seg16Q4relationLc169Atom (rho : Nat -> Seg16.F) : Seg16.relationLc169 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho := by
  unfold Seg16.relationLc169
  rw [seg16Q4relationLc169Part0Atom rho, seg16Q4relationLc169Part1Atom rho, seg16Q4relationLc169Part2Atom rho, seg16Q4relationLc169Part3Atom rho] <;> ring

theorem seg16Q4relationLc170Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc170Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc170Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc170Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc170Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc170Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc170Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc170Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc170Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc170Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc170Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho := by
  unfold Seg16.relationLc170Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54
  ring

theorem seg16Q4relationLc170Atom (rho : Nat -> Seg16.F) : Seg16.relationLc170 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho := by
  unfold Seg16.relationLc170
  rw [seg16Q4relationLc170Part0Atom rho, seg16Q4relationLc170Part1Atom rho, seg16Q4relationLc170Part2Atom rho, seg16Q4relationLc170Part3Atom rho] <;> ring

theorem seg16Q4relationLc171Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc171Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc171Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc171Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc171Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc171Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc171Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc171Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc171Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc171Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc171Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho := by
  unfold Seg16.relationLc171Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55
  ring

theorem seg16Q4relationLc171Atom (rho : Nat -> Seg16.F) : Seg16.relationLc171 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho := by
  unfold Seg16.relationLc171
  rw [seg16Q4relationLc171Part0Atom rho, seg16Q4relationLc171Part1Atom rho, seg16Q4relationLc171Part2Atom rho, seg16Q4relationLc171Part3Atom rho] <;> ring

theorem seg16Q4relationLc172Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc172Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc172Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc172Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc172Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc172Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc172Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc172Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc172Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc172Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc172Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold Seg16.relationLc172Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55 seg16Q4IlAtom56
  ring

theorem seg16Q4relationLc172Atom (rho : Nat -> Seg16.F) : Seg16.relationLc172 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho := by
  unfold Seg16.relationLc172
  rw [seg16Q4relationLc172Part0Atom rho, seg16Q4relationLc172Part1Atom rho, seg16Q4relationLc172Part2Atom rho, seg16Q4relationLc172Part3Atom rho] <;> ring

theorem seg16Q4relationLc173Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc173Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc173Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc173Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc173Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc173Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc173Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc173Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc173Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc173Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc173Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho := by
  unfold Seg16.relationLc173Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55 seg16Q4IlAtom56 seg16Q4IlAtom57
  ring

theorem seg16Q4relationLc173Atom (rho : Nat -> Seg16.F) : Seg16.relationLc173 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho := by
  unfold Seg16.relationLc173
  rw [seg16Q4relationLc173Part0Atom rho, seg16Q4relationLc173Part1Atom rho, seg16Q4relationLc173Part2Atom rho, seg16Q4relationLc173Part3Atom rho] <;> ring

theorem seg16Q4relationLc174Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc174Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc174Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc174Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc174Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc174Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc174Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc174Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc174Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc174Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc174Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho := by
  unfold Seg16.relationLc174Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55 seg16Q4IlAtom56 seg16Q4IlAtom57 seg16Q4IlAtom58
  ring

theorem seg16Q4relationLc174Atom (rho : Nat -> Seg16.F) : Seg16.relationLc174 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho := by
  unfold Seg16.relationLc174
  rw [seg16Q4relationLc174Part0Atom rho, seg16Q4relationLc174Part1Atom rho, seg16Q4relationLc174Part2Atom rho, seg16Q4relationLc174Part3Atom rho] <;> ring

theorem seg16Q4relationLc175Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc175Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc175Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc175Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc175Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc175Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc175Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc175Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc175Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc175Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc175Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold Seg16.relationLc175Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55 seg16Q4IlAtom56 seg16Q4IlAtom57 seg16Q4IlAtom58 seg16Q4IlAtom59
  ring

theorem seg16Q4relationLc175Atom (rho : Nat -> Seg16.F) : Seg16.relationLc175 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho := by
  unfold Seg16.relationLc175
  rw [seg16Q4relationLc175Part0Atom rho, seg16Q4relationLc175Part1Atom rho, seg16Q4relationLc175Part2Atom rho, seg16Q4relationLc175Part3Atom rho] <;> ring

theorem seg16Q4relationLc176Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc176Part0 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho := by
  unfold Seg16.relationLc176Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom16 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc176Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc176Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho := by
  unfold Seg16.relationLc176Part1 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32 seg16Q4IlAtom33
  ring

theorem seg16Q4relationLc176Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc176Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho := by
  unfold Seg16.relationLc176Part2 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49 seg16Q4IlAtom50
  ring

theorem seg16Q4relationLc176Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc176Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho + seg16Q4IlAtom60 rho := by
  unfold Seg16.relationLc176Part3 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55 seg16Q4IlAtom56 seg16Q4IlAtom57 seg16Q4IlAtom58 seg16Q4IlAtom59 seg16Q4IlAtom60
  ring

theorem seg16Q4relationLc176Atom (rho : Nat -> Seg16.F) : Seg16.relationLc176 rho = seg16Q4IlAtom0 rho + seg16Q4IlAtom1 rho + seg16Q4IlAtom2 rho + seg16Q4IlAtom3 rho + seg16Q4IlAtom4 rho + seg16Q4IlAtom5 rho + seg16Q4IlAtom6 rho + seg16Q4IlAtom7 rho + seg16Q4IlAtom8 rho + seg16Q4IlAtom9 rho + seg16Q4IlAtom10 rho + seg16Q4IlAtom11 rho + seg16Q4IlAtom12 rho + seg16Q4IlAtom13 rho + seg16Q4IlAtom14 rho + seg16Q4IlAtom15 rho + seg16Q4IlAtom16 rho + (-1 : Seg16.F) * seg16Q4IlAtom17 rho + seg16Q4IlAtom18 rho + seg16Q4IlAtom19 rho + seg16Q4IlAtom20 rho + seg16Q4IlAtom21 rho + seg16Q4IlAtom22 rho + seg16Q4IlAtom23 rho + seg16Q4IlAtom24 rho + seg16Q4IlAtom25 rho + seg16Q4IlAtom26 rho + seg16Q4IlAtom27 rho + seg16Q4IlAtom28 rho + seg16Q4IlAtom29 rho + seg16Q4IlAtom30 rho + seg16Q4IlAtom31 rho + seg16Q4IlAtom32 rho + seg16Q4IlAtom33 rho + (-1 : Seg16.F) * seg16Q4IlAtom34 rho + seg16Q4IlAtom35 rho + seg16Q4IlAtom36 rho + seg16Q4IlAtom37 rho + seg16Q4IlAtom38 rho + seg16Q4IlAtom39 rho + seg16Q4IlAtom40 rho + seg16Q4IlAtom41 rho + seg16Q4IlAtom42 rho + seg16Q4IlAtom43 rho + seg16Q4IlAtom44 rho + seg16Q4IlAtom45 rho + seg16Q4IlAtom46 rho + seg16Q4IlAtom47 rho + seg16Q4IlAtom48 rho + seg16Q4IlAtom49 rho + seg16Q4IlAtom50 rho + (-1 : Seg16.F) * seg16Q4IlAtom51 rho + seg16Q4IlAtom52 rho + seg16Q4IlAtom53 rho + seg16Q4IlAtom54 rho + seg16Q4IlAtom55 rho + seg16Q4IlAtom56 rho + seg16Q4IlAtom57 rho + seg16Q4IlAtom58 rho + seg16Q4IlAtom59 rho + seg16Q4IlAtom60 rho := by
  unfold Seg16.relationLc176
  rw [seg16Q4relationLc176Part0Atom rho, seg16Q4relationLc176Part1Atom rho, seg16Q4relationLc176Part2Atom rho, seg16Q4relationLc176Part3Atom rho] <;> ring

theorem seg16Q4relationLc177Part0Atom (rho : Nat -> Seg16.F) : Seg16.relationLc177Part0 rho = (1 : Seg16.F) + (-1 : Seg16.F) * seg16Q4IlAtom0 rho + (-1 : Seg16.F) * seg16Q4IlAtom1 rho + (-1 : Seg16.F) * seg16Q4IlAtom2 rho + (-1 : Seg16.F) * seg16Q4IlAtom3 rho + (-1 : Seg16.F) * seg16Q4IlAtom4 rho + (-1 : Seg16.F) * seg16Q4IlAtom5 rho + (-1 : Seg16.F) * seg16Q4IlAtom6 rho + (-1 : Seg16.F) * seg16Q4IlAtom7 rho + (-1 : Seg16.F) * seg16Q4IlAtom8 rho + (-1 : Seg16.F) * seg16Q4IlAtom9 rho + (-1 : Seg16.F) * seg16Q4IlAtom10 rho + (-1 : Seg16.F) * seg16Q4IlAtom11 rho + (-1 : Seg16.F) * seg16Q4IlAtom12 rho + (-1 : Seg16.F) * seg16Q4IlAtom13 rho + (-1 : Seg16.F) * seg16Q4IlAtom14 rho + (-1 : Seg16.F) * seg16Q4IlAtom15 rho := by
  unfold Seg16.relationLc177Part0 seg16Q4IlAtom0 seg16Q4IlAtom1 seg16Q4IlAtom10 seg16Q4IlAtom11 seg16Q4IlAtom12 seg16Q4IlAtom13 seg16Q4IlAtom14 seg16Q4IlAtom15 seg16Q4IlAtom2 seg16Q4IlAtom3 seg16Q4IlAtom4 seg16Q4IlAtom5 seg16Q4IlAtom6 seg16Q4IlAtom7 seg16Q4IlAtom8 seg16Q4IlAtom9
  ring

theorem seg16Q4relationLc177Part1Atom (rho : Nat -> Seg16.F) : Seg16.relationLc177Part1 rho = (-1 : Seg16.F) * seg16Q4IlAtom16 rho + seg16Q4IlAtom17 rho + (-1 : Seg16.F) * seg16Q4IlAtom18 rho + (-1 : Seg16.F) * seg16Q4IlAtom19 rho + (-1 : Seg16.F) * seg16Q4IlAtom20 rho + (-1 : Seg16.F) * seg16Q4IlAtom21 rho + (-1 : Seg16.F) * seg16Q4IlAtom22 rho + (-1 : Seg16.F) * seg16Q4IlAtom23 rho + (-1 : Seg16.F) * seg16Q4IlAtom24 rho + (-1 : Seg16.F) * seg16Q4IlAtom25 rho + (-1 : Seg16.F) * seg16Q4IlAtom26 rho + (-1 : Seg16.F) * seg16Q4IlAtom27 rho + (-1 : Seg16.F) * seg16Q4IlAtom28 rho + (-1 : Seg16.F) * seg16Q4IlAtom29 rho + (-1 : Seg16.F) * seg16Q4IlAtom30 rho + (-1 : Seg16.F) * seg16Q4IlAtom31 rho + (-1 : Seg16.F) * seg16Q4IlAtom32 rho := by
  unfold Seg16.relationLc177Part1 seg16Q4IlAtom16 seg16Q4IlAtom17 seg16Q4IlAtom18 seg16Q4IlAtom19 seg16Q4IlAtom20 seg16Q4IlAtom21 seg16Q4IlAtom22 seg16Q4IlAtom23 seg16Q4IlAtom24 seg16Q4IlAtom25 seg16Q4IlAtom26 seg16Q4IlAtom27 seg16Q4IlAtom28 seg16Q4IlAtom29 seg16Q4IlAtom30 seg16Q4IlAtom31 seg16Q4IlAtom32
  ring

theorem seg16Q4relationLc177Part2Atom (rho : Nat -> Seg16.F) : Seg16.relationLc177Part2 rho = (-1 : Seg16.F) * seg16Q4IlAtom33 rho + seg16Q4IlAtom34 rho + (-1 : Seg16.F) * seg16Q4IlAtom35 rho + (-1 : Seg16.F) * seg16Q4IlAtom36 rho + (-1 : Seg16.F) * seg16Q4IlAtom37 rho + (-1 : Seg16.F) * seg16Q4IlAtom38 rho + (-1 : Seg16.F) * seg16Q4IlAtom39 rho + (-1 : Seg16.F) * seg16Q4IlAtom40 rho + (-1 : Seg16.F) * seg16Q4IlAtom41 rho + (-1 : Seg16.F) * seg16Q4IlAtom42 rho + (-1 : Seg16.F) * seg16Q4IlAtom43 rho + (-1 : Seg16.F) * seg16Q4IlAtom44 rho + (-1 : Seg16.F) * seg16Q4IlAtom45 rho + (-1 : Seg16.F) * seg16Q4IlAtom46 rho + (-1 : Seg16.F) * seg16Q4IlAtom47 rho + (-1 : Seg16.F) * seg16Q4IlAtom48 rho + (-1 : Seg16.F) * seg16Q4IlAtom49 rho := by
  unfold Seg16.relationLc177Part2 seg16Q4IlAtom33 seg16Q4IlAtom34 seg16Q4IlAtom35 seg16Q4IlAtom36 seg16Q4IlAtom37 seg16Q4IlAtom38 seg16Q4IlAtom39 seg16Q4IlAtom40 seg16Q4IlAtom41 seg16Q4IlAtom42 seg16Q4IlAtom43 seg16Q4IlAtom44 seg16Q4IlAtom45 seg16Q4IlAtom46 seg16Q4IlAtom47 seg16Q4IlAtom48 seg16Q4IlAtom49
  ring

theorem seg16Q4relationLc177Part3Atom (rho : Nat -> Seg16.F) : Seg16.relationLc177Part3 rho = (-1 : Seg16.F) * seg16Q4IlAtom50 rho + seg16Q4IlAtom51 rho + (-1 : Seg16.F) * seg16Q4IlAtom52 rho + (-1 : Seg16.F) * seg16Q4IlAtom53 rho + (-1 : Seg16.F) * seg16Q4IlAtom54 rho + (-1 : Seg16.F) * seg16Q4IlAtom55 rho + (-1 : Seg16.F) * seg16Q4IlAtom56 rho + (-1 : Seg16.F) * seg16Q4IlAtom57 rho + (-1 : Seg16.F) * seg16Q4IlAtom58 rho + (-1 : Seg16.F) * seg16Q4IlAtom59 rho + (-1 : Seg16.F) * seg16Q4IlAtom60 rho + (-1 : Seg16.F) * seg16Q4IlAtom61 rho := by
  unfold Seg16.relationLc177Part3 seg16Q4IlAtom50 seg16Q4IlAtom51 seg16Q4IlAtom52 seg16Q4IlAtom53 seg16Q4IlAtom54 seg16Q4IlAtom55 seg16Q4IlAtom56 seg16Q4IlAtom57 seg16Q4IlAtom58 seg16Q4IlAtom59 seg16Q4IlAtom60 seg16Q4IlAtom61
  ring

theorem seg16Q4relationLc177Atom (rho : Nat -> Seg16.F) : Seg16.relationLc177 rho = (1 : Seg16.F) + (-1 : Seg16.F) * seg16Q4IlAtom0 rho + (-1 : Seg16.F) * seg16Q4IlAtom1 rho + (-1 : Seg16.F) * seg16Q4IlAtom2 rho + (-1 : Seg16.F) * seg16Q4IlAtom3 rho + (-1 : Seg16.F) * seg16Q4IlAtom4 rho + (-1 : Seg16.F) * seg16Q4IlAtom5 rho + (-1 : Seg16.F) * seg16Q4IlAtom6 rho + (-1 : Seg16.F) * seg16Q4IlAtom7 rho + (-1 : Seg16.F) * seg16Q4IlAtom8 rho + (-1 : Seg16.F) * seg16Q4IlAtom9 rho + (-1 : Seg16.F) * seg16Q4IlAtom10 rho + (-1 : Seg16.F) * seg16Q4IlAtom11 rho + (-1 : Seg16.F) * seg16Q4IlAtom12 rho + (-1 : Seg16.F) * seg16Q4IlAtom13 rho + (-1 : Seg16.F) * seg16Q4IlAtom14 rho + (-1 : Seg16.F) * seg16Q4IlAtom15 rho + (-1 : Seg16.F) * seg16Q4IlAtom16 rho + seg16Q4IlAtom17 rho + (-1 : Seg16.F) * seg16Q4IlAtom18 rho + (-1 : Seg16.F) * seg16Q4IlAtom19 rho + (-1 : Seg16.F) * seg16Q4IlAtom20 rho + (-1 : Seg16.F) * seg16Q4IlAtom21 rho + (-1 : Seg16.F) * seg16Q4IlAtom22 rho + (-1 : Seg16.F) * seg16Q4IlAtom23 rho + (-1 : Seg16.F) * seg16Q4IlAtom24 rho + (-1 : Seg16.F) * seg16Q4IlAtom25 rho + (-1 : Seg16.F) * seg16Q4IlAtom26 rho + (-1 : Seg16.F) * seg16Q4IlAtom27 rho + (-1 : Seg16.F) * seg16Q4IlAtom28 rho + (-1 : Seg16.F) * seg16Q4IlAtom29 rho + (-1 : Seg16.F) * seg16Q4IlAtom30 rho + (-1 : Seg16.F) * seg16Q4IlAtom31 rho + (-1 : Seg16.F) * seg16Q4IlAtom32 rho + (-1 : Seg16.F) * seg16Q4IlAtom33 rho + seg16Q4IlAtom34 rho + (-1 : Seg16.F) * seg16Q4IlAtom35 rho + (-1 : Seg16.F) * seg16Q4IlAtom36 rho + (-1 : Seg16.F) * seg16Q4IlAtom37 rho + (-1 : Seg16.F) * seg16Q4IlAtom38 rho + (-1 : Seg16.F) * seg16Q4IlAtom39 rho + (-1 : Seg16.F) * seg16Q4IlAtom40 rho + (-1 : Seg16.F) * seg16Q4IlAtom41 rho + (-1 : Seg16.F) * seg16Q4IlAtom42 rho + (-1 : Seg16.F) * seg16Q4IlAtom43 rho + (-1 : Seg16.F) * seg16Q4IlAtom44 rho + (-1 : Seg16.F) * seg16Q4IlAtom45 rho + (-1 : Seg16.F) * seg16Q4IlAtom46 rho + (-1 : Seg16.F) * seg16Q4IlAtom47 rho + (-1 : Seg16.F) * seg16Q4IlAtom48 rho + (-1 : Seg16.F) * seg16Q4IlAtom49 rho + (-1 : Seg16.F) * seg16Q4IlAtom50 rho + seg16Q4IlAtom51 rho + (-1 : Seg16.F) * seg16Q4IlAtom52 rho + (-1 : Seg16.F) * seg16Q4IlAtom53 rho + (-1 : Seg16.F) * seg16Q4IlAtom54 rho + (-1 : Seg16.F) * seg16Q4IlAtom55 rho + (-1 : Seg16.F) * seg16Q4IlAtom56 rho + (-1 : Seg16.F) * seg16Q4IlAtom57 rho + (-1 : Seg16.F) * seg16Q4IlAtom58 rho + (-1 : Seg16.F) * seg16Q4IlAtom59 rho + (-1 : Seg16.F) * seg16Q4IlAtom60 rho + (-1 : Seg16.F) * seg16Q4IlAtom61 rho := by
  unfold Seg16.relationLc177
  rw [seg16Q4relationLc177Part0Atom rho, seg16Q4relationLc177Part1Atom rho, seg16Q4relationLc177Part2Atom rho, seg16Q4relationLc177Part3Atom rho] <;> ring

theorem seg16Q4Step97IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc135 rho = seg16Q4Il98 rho := by
  rw [seg16Q4relationLc135Atom rho]
  exact (seg16Q4Il98Atoms rho).symm

theorem seg16Q4Step96IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc136 rho = seg16Q4Il97 rho := by
  rw [seg16Q4relationLc136Atom rho]
  exact (seg16Q4Il97Atoms rho).symm

theorem seg16Q4Step95IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc137 rho = seg16Q4Il96 rho := by
  rw [seg16Q4relationLc137Atom rho]
  exact (seg16Q4Il96Atoms rho).symm

theorem seg16Q4Step93IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc138 rho = seg16Q4Il94 rho := by
  rw [seg16Q4relationLc138Atom rho]
  exact (seg16Q4Il94Atoms rho).symm

theorem seg16Q4Step92IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc139 rho = seg16Q4Il93 rho := by
  rw [seg16Q4relationLc139Atom rho]
  exact (seg16Q4Il93Atoms rho).symm

theorem seg16Q4Step91IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc140 rho = seg16Q4Il92 rho := by
  rw [seg16Q4relationLc140Atom rho]
  exact (seg16Q4Il92Atoms rho).symm

theorem seg16Q4Step90IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc141 rho = seg16Q4Il91 rho := by
  rw [seg16Q4relationLc141Atom rho]
  exact (seg16Q4Il91Atoms rho).symm

theorem seg16Q4Step89IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc142 rho = seg16Q4Il90 rho := by
  rw [seg16Q4relationLc142Atom rho]
  exact (seg16Q4Il90Atoms rho).symm

theorem seg16Q4Step88IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc143 rho = seg16Q4Il89 rho := by
  rw [seg16Q4relationLc143Atom rho]
  exact (seg16Q4Il89Atoms rho).symm

theorem seg16Q4Step83IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc144 rho = seg16Q4Il84 rho := by
  rw [seg16Q4relationLc144Atom rho]
  exact (seg16Q4Il84Atoms rho).symm

theorem seg16Q4Step82IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc145 rho = seg16Q4Il83 rho := by
  rw [seg16Q4relationLc145Atom rho]
  exact (seg16Q4Il83Atoms rho).symm

theorem seg16Q4Step80IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc146 rho = seg16Q4Il81 rho := by
  rw [seg16Q4relationLc146Atom rho]
  exact (seg16Q4Il81Atoms rho).symm

theorem seg16Q4Step79IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc147 rho = seg16Q4Il80 rho := by
  rw [seg16Q4relationLc147Atom rho]
  exact (seg16Q4Il80Atoms rho).symm

theorem seg16Q4Step78IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc148 rho = seg16Q4Il79 rho := by
  rw [seg16Q4relationLc148Atom rho]
  exact (seg16Q4Il79Atoms rho).symm

theorem seg16Q4Step76IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc149 rho = seg16Q4Il77 rho := by
  rw [seg16Q4relationLc149Atom rho]
  exact (seg16Q4Il77Atoms rho).symm

theorem seg16Q4Step74IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc150 rho = seg16Q4Il75 rho := by
  rw [seg16Q4relationLc150Atom rho]
  exact (seg16Q4Il75Atoms rho).symm

theorem seg16Q4Step66IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc151 rho = seg16Q4Il67 rho := by
  rw [seg16Q4relationLc151Atom rho]
  exact (seg16Q4Il67Atoms rho).symm

theorem seg16Q4Step65IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc152 rho = seg16Q4Il66 rho := by
  rw [seg16Q4relationLc152Atom rho]
  exact (seg16Q4Il66Atoms rho).symm

theorem seg16Q4Step61IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc153 rho = seg16Q4Il62 rho := by
  rw [seg16Q4relationLc153Atom rho]
  exact (seg16Q4Il62Atoms rho).symm

theorem seg16Q4Step58IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc154 rho = seg16Q4Il59 rho := by
  rw [seg16Q4relationLc154Atom rho]
  exact (seg16Q4Il59Atoms rho).symm

theorem seg16Q4Step55IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc155 rho = seg16Q4Il56 rho := by
  rw [seg16Q4relationLc155Atom rho]
  exact (seg16Q4Il56Atoms rho).symm

theorem seg16Q4Step53IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc156 rho = seg16Q4Il54 rho := by
  rw [seg16Q4relationLc156Atom rho]
  exact (seg16Q4Il54Atoms rho).symm

theorem seg16Q4Step50IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc157 rho = seg16Q4Il51 rho := by
  rw [seg16Q4relationLc157Atom rho]
  exact (seg16Q4Il51Atoms rho).symm

theorem seg16Q4Step48IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc158 rho = seg16Q4Il49 rho := by
  rw [seg16Q4relationLc158Atom rho]
  exact (seg16Q4Il49Atoms rho).symm

theorem seg16Q4Step47IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc159 rho = seg16Q4Il48 rho := by
  rw [seg16Q4relationLc159Atom rho]
  exact (seg16Q4Il48Atoms rho).symm

theorem seg16Q4Step46IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc160 rho = seg16Q4Il47 rho := by
  rw [seg16Q4relationLc160Atom rho]
  exact (seg16Q4Il47Atoms rho).symm

theorem seg16Q4Step42IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc161 rho = seg16Q4Il43 rho := by
  rw [seg16Q4relationLc161Atom rho]
  exact (seg16Q4Il43Atoms rho).symm

theorem seg16Q4Step40IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc162 rho = seg16Q4Il41 rho := by
  rw [seg16Q4relationLc162Atom rho]
  exact (seg16Q4Il41Atoms rho).symm

theorem seg16Q4Step39IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc163 rho = seg16Q4Il40 rho := by
  rw [seg16Q4relationLc163Atom rho]
  exact (seg16Q4Il40Atoms rho).symm

theorem seg16Q4Step36IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc164 rho = seg16Q4Il37 rho := by
  rw [seg16Q4relationLc164Atom rho]
  exact (seg16Q4Il37Atoms rho).symm

theorem seg16Q4Step34IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc165 rho = seg16Q4Il35 rho := by
  rw [seg16Q4relationLc165Atom rho]
  exact (seg16Q4Il35Atoms rho).symm

theorem seg16Q4Step31IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc166 rho = seg16Q4Il32 rho := by
  rw [seg16Q4relationLc166Atom rho]
  exact (seg16Q4Il32Atoms rho).symm

theorem seg16Q4Step30IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc167 rho = seg16Q4Il31 rho := by
  rw [seg16Q4relationLc167Atom rho]
  exact (seg16Q4Il31Atoms rho).symm

theorem seg16Q4Step29IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc168 rho = seg16Q4Il30 rho := by
  rw [seg16Q4relationLc168Atom rho]
  exact (seg16Q4Il30Atoms rho).symm

theorem seg16Q4Step28IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc169 rho = seg16Q4Il29 rho := by
  rw [seg16Q4relationLc169Atom rho]
  exact (seg16Q4Il29Atoms rho).symm

theorem seg16Q4Step25IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc170 rho = seg16Q4Il26 rho := by
  rw [seg16Q4relationLc170Atom rho]
  exact (seg16Q4Il26Atoms rho).symm

theorem seg16Q4Step24IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc171 rho = seg16Q4Il25 rho := by
  rw [seg16Q4relationLc171Atom rho]
  exact (seg16Q4Il25Atoms rho).symm

theorem seg16Q4Step15IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc172 rho = seg16Q4Il16 rho := by
  rw [seg16Q4relationLc172Atom rho]
  exact (seg16Q4Il16Atoms rho).symm

theorem seg16Q4Step12IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc173 rho = seg16Q4Il13 rho := by
  rw [seg16Q4relationLc173Atom rho]
  exact (seg16Q4Il13Atoms rho).symm

theorem seg16Q4Step11IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc174 rho = seg16Q4Il12 rho := by
  rw [seg16Q4relationLc174Atom rho]
  exact (seg16Q4Il12Atoms rho).symm

theorem seg16Q4Step2IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc175 rho = seg16Q4Il3 rho := by
  rw [seg16Q4relationLc175Atom rho]
  exact (seg16Q4Il3Atoms rho).symm

theorem seg16Q4Step0IlLc (rho : Nat -> Seg16.F) : Seg16.relationLc176 rho = seg16Q4Il1 rho := by
  rw [seg16Q4relationLc176Atom rho]
  exact (seg16Q4Il1Atoms rho).symm

theorem seg16Q4TerminalIlLc (rho : Nat -> Seg16.F) : Seg16.relationLc177 rho = 1 - seg16Q4Il0 rho := by
  rw [seg16Q4relationLc177Atom rho]
  rw [seg16Q4Il0Atoms rho]
  ring

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
