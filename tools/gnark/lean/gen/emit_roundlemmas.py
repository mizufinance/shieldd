import json
Order=8444461749428370424248824938781546531375899335154063827935233455917409239041
Dlit=1434889507249773667048406511864487084155637425201771740895788105903307238157
gd=json.load(open('/tmp/gendata.json'))
cs={int(k):[int(x)%Order for x in v] for k,v in gd['cs'].items()}
groups=gd['groups']
seq=[7238110070938603220784707090384182741179342287274911852515914390786350776321,7388904030749824121217721821433853214953911918259805849443329273927733084161,4691367638571316902360458299323081406319944075085591015519574142176338466134,7600015574485533381823942444903391878238309401638657445141710110325668315137,2303035022571373752067861346940421781284336182314744680345972760704747974284,7740756603642672888894756193883084320427907723891225175607297334590958469121,7794887768703111160845069174259889105885445540142212764247907805462223912961,7841285910183486822516766014582864636277620811214487840225573923351880007681,7881497632799812395965569942862776762617506046143792906072884558856248623105,7916682890089097272733273380107699873164905626706934838689281364922571161601,5464063484924239686278651430976294814419699569805570712193386353828911860556,2345683819285658451180229149661540703159972037542795507759787071088169233067,5777789618029937658696564431797900258309825860894885777008317627732964216186]
M=[[seq[i+j]%Order for j in range(7)] for i in range(7)]
def p17(a):
    a%=Order; a2=a*a%Order; a4=a2*a2%Order; a8=a4*a4%Order; a16=a8*a8%Order; return a16*a%Order
Sval=p17((Dlit+cs[0][0])%Order)
CS00=cs[0][0]
Sexpr=f"(p17 (({Dlit} : F) + ({CS00} : F)))"
def add(a,b):
    r=dict(a)
    for k,v in b.items(): r[k]=(r.get(k,0)+v)%Order
    return {k:v%Order for k,v in r.items() if v%Order!=0}
def scale(a,s):
    s%=Order
    return {k:(v*s)%Order for k,v in a.items() if (v*s)%Order!=0}
def add_all(l):
    r={}
    for x in l: r=add(r,x)
    return r
def mds(state):
    return [add_all([scale(state[j],M[i][j]) for j in range(7)]) for i in range(7)]
def lc2lean(d):
    parts=[]
    if d.get('one',0)%Order: parts.append(f"({d['one']%Order} : F)")
    if d.get('S',0)%Order: parts.append(f"({d['S']%Order} : F) * {Sexpr}")
    for w in sorted([k for k in d if k not in ('one','S')], key=lambda x:int(x[1:])):
        if d[w]%Order: parts.append(f"({d[w]%Order} : F) * {w}")
    return " + ".join(parts) if parts else "(0 : F)"
def row7expr(i,args):
    return "row7 " + " ".join(f"({M[i][j]} : F)" for j in range(7)) + " " + " ".join(args)
def vec(rows, indent="    "):
    return "vec![\n" + indent + (",\n"+indent).join(rows) + "]"
def csLit(g):
    return "vec![" + ", ".join(f"({c} : F)" for c in cs[g]) + "]"
def params(ws):
    return " ".join(f"({w} : F)" for w in ws)
def args(ws): return " ".join(ws)
def stname(g): return f"st{g}"
def stcall(g, ws): return f"{stname(g)} {args(ws)}"

def raw_full_arg(g,i,prev_ws):
    terms=[f"({cs[g][i]} : F)"] + [f"({M[i][j]} : F) * {prev_ws[j]}" for j in range(7)]
    return " + ".join(terms)

state_defs=[]
state_vars={}
state_lcs={}
# Round 0 state
state_vars[0]=groups[0]
state_lcs[0]=mds([{'S':1}]+[{w:1} for w in groups[0]])
state_defs.append(f"def st0 {params(state_vars[0])} : List.Vector F 7 :=\n  {vec([row7expr(i,[Sexpr]+groups[0]) for i in range(7)])}")
# Full 1..3
for g in range(1,4):
    state_vars[g]=groups[g]
    state_lcs[g]=mds([{w:1} for w in groups[g]])
    state_defs.append(f"def st{g} {params(state_vars[g])} : List.Vector F 7 :=\n  {vec([row7expr(i,groups[g]) for i in range(7)])}")
# Partial 4..34
cur=state_lcs[3]
base=groups[3].copy()
for g in range(4,35):
    w=groups[g][0]
    base.append(w)
    sb=[{w:1}]+[add(cur[i], {'one': cs[g][i]}) for i in range(1,7)]
    cur=mds(sb)
    state_lcs[g]=cur
    state_vars[g]=base.copy()
    state_defs.append(f"def st{g} {params(state_vars[g])} : List.Vector F 7 :=\n  {vec([lc2lean(cur[i]) for i in range(7)])}")
# Full 35..38
for g in range(35,39):
    state_vars[g]=groups[g]
    state_lcs[g]=mds([{w:1} for w in groups[g]])
    state_defs.append(f"def st{g} {params(state_vars[g])} : List.Vector F 7 :=\n  {vec([row7expr(i,groups[g]) for i in range(7)])}")

lemmas=[]
# round0
init=f"vec![({Dlit} : F), w14, w15, w16, (w912 - w572), w19, w22]"
round0_hw=[]
inputs=['w14','w15','w16',None,'w19','w22']
for i,w in enumerate(groups[0], start=1):
    if i==4:
        raw=f"({cs[0][i]} : F) + (-1 : F) * w572 + (1 : F) * w912"
    else:
        raw=f"({cs[0][i]} : F) + (1 : F) * {inputs[i-1]}"
    round0_hw.append(f"(hw{w[1:]} : {w} = p17 ({raw}))")
proofs=["(by rfl)"]+[f"(by rw [hw{w[1:]}]; congr 1; ring)" for w in groups[0]]
lemmas.append(f"theorem round0_eq (w14 w15 w16 w19 w22 w572 w912 : F) {params(groups[0])}\n    {' '.join(round0_hw)} :\n    fr7 {init} ({csLit(0)}) = st0 {args(groups[0])} := by\n  unfold st0\n  exact fr_eq {init} ({csLit(0)}) {Sexpr} {args(groups[0])} {' '.join(proofs)}")
# other rounds
for g in range(1,39):
    prev_ws=state_vars[g-1]
    cur_ws=state_vars[g]
    prev=stcall(g-1, prev_ws)
    curcall=stcall(g, cur_ws)
    if g in (1,2,3,35,36,37,38):
        hw=[]; hproof=[]
        for i,w in enumerate(cur_ws):
            if g==1:
                foldc=(cs[1][i] + M[i][0]*Sval)%Order
                raw=" + ".join([f"({foldc} : F)"] + [f"({M[i][j]} : F) * {groups[0][j-1]}" for j in range(1,7)])
                hw.append(f"(hw{w[1:]} : {w} = p17 ({raw}))")
                hproof.append(f"(by rw [hw{w[1:]}]; congr 1; rw [show ({foldc} : F) = ({cs[1][i]} : F) + ({M[i][0]} : F) * {Sexpr} from by unfold p17; decide]; ring)")
            else:
                raw=raw_full_arg(g,i,prev_ws)
                hw.append(f"(hw{w[1:]} : {w} = p17 ({raw}))")
                hproof.append(f"(by rw [hw{w[1:]}]; congr 1; ring)")
        lemmas.append(f"theorem round{g}_eq {params(prev_ws)} {params(cur_ws)}\n    {' '.join(hw)} :\n    fr7 ({prev}) ({csLit(g)}) = {curcall} := by\n  unfold {stname(g-1)} {stname(g)}\n  exact fr_eq ({prev}) ({csLit(g)}) {args(cur_ws)} {' '.join(hproof)}")
    else:
        w=groups[g][0]
        raw=lc2lean(add(state_lcs[g-1][0], {'one': cs[g][0]}))
        hw=f"(hw{w[1:]} : {w} = p17 ({raw}))"
        lemmas.append(f"theorem round{g}_eq {params(prev_ws)} ({w} : F)\n    {hw} :\n    pr7 ({prev}) ({csLit(g)}) = {curcall} := by\n  unfold {stname(g-1)} {stname(g)}\n  rw [pr_eq _ _ {w} (by rw [hw{w[1:]}]; congr 1; ring)]\n  apply List.Vector.ext\n  intro i\n  fin_cases i <;> simp [row7] <;> ring")

# final theorem
all_pws=[w for grp in groups for w in grp]
obtain="⟨" + ", ".join(f"{w}, hw{w[1:]}" for w in all_pws) + ", w23, hw23, hout⟩"
rw_apps=[]
rw_apps.append("round0_eq w14 w15 w16 w19 w22 w572 w912 " + args(groups[0]) + " " + " ".join(f"hw{w[1:]}" for w in groups[0]))
for g in range(1,39):
    rw_apps.append(f"round{g}_eq " + args(state_vars[g-1]) + " " + args(state_vars[g]) + " " + " ".join(f"hw{w[1:]}" for w in groups[g]))
final=f"""/-- The reconstructed deployed evaluator equals the canonical `permSpec6` over the
baked note-commitment Domain literal. -/
theorem eval_eq_permSpec (w14 w15 w16 w19 w22 w572 w912 out : F)
    (h : deployedEvalRel w14 w15 w16 w19 w22 w572 w912 out) :
    out = permSpec6 ({Dlit} : F) w14 w15 w16 (w912 - w572) w19 w22 := by
  obtain {obtain} := h
  rw [hout, hw23]
  symm
  unfold permSpec6
  rw [{', '.join(rw_apps)}]
  simp [st38]

/-- Deployed-row note commitment soundness, with the same hash target as the
standalone Poseidon6 bridge. -/
theorem circuit_sound (w14 w15 w16 w19 w22 w572 w912 out : F)
    (h : deployedEvalRel w14 w15 w16 w19 w22 w572 w912 out) :
    out = hash6Spec ({Dlit} : F) w14 w15 w16 (w912 - w572) w19 w22 := by
  rw [hash6Spec]
  exact eval_eq_permSpec w14 w15 w16 w19 w22 w572 w912 out h
"""
header="""import ShielddGnarkFormal.Deployed.NoteCommitmentDeployedBridge
import ShielddGnarkFormal.Deployed.Poseidon6Link

set_option maxRecDepth 100000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.NoteCommitment

open Shieldd.GnarkFormal.Poseidon6Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon6Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order)]

"""
footer="\nend Shieldd.GnarkFormal.Deployed.NoteCommitment\n"
text=header+"\n\n".join(state_defs)+"\n\n"+"\n\n".join(lemmas)+"\n\n"+final+footer
open('/tmp/NoteCommitmentSemanticBridge.lean','w').write(text)
print('wrote', len(text), 'bytes', len(state_defs), 'defs', len(lemmas), 'lemmas')
