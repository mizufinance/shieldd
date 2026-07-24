import json, pathlib, re
from textwrap import indent

from lean_zmod_instances import INSTANCE_BLOCK, normalize_choice_free_zmod_file

HERE = pathlib.Path(__file__).resolve().parent           # tools/gnark/lean/gen
ROOT = HERE.parents[3]                                    # repo root
OUT = ROOT/'tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteCommitment'
OUT.mkdir(parents=True, exist_ok=True)
DEPLOYED_BRIDGE = ROOT/'tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteCommitmentDeployedBridge.lean'
normalize_choice_free_zmod_file(DEPLOYED_BRIDGE)

data = json.load(open(HERE/'gendata.json'))
Order = 8444461749428370424248824938781546531375899335154063827935233455917409239041
MOD = "Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order"
Dlit = 1434889507249773667048406511864487084155637425201771740895788105903307238157
cs = {int(k): [int(x) % Order for x in v] for k, v in data['cs'].items()}
groups = data['groups']
kind = {int(k): v for k, v in data['kind'].items()}
seq = [
7238110070938603220784707090384182741179342287274911852515914390786350776321,
7388904030749824121217721821433853214953911918259805849443329273927733084161,
4691367638571316902360458299323081406319944075085591015519574142176338466134,
7600015574485533381823942444903391878238309401638657445141710110325668315137,
2303035022571373752067861346940421781284336182314744680345972760704747974284,
7740756603642672888894756193883084320427907723891225175607297334590958469121,
7794887768703111160845069174259889105885445540142212764247907805462223912961,
7841285910183486822516766014582864636277620811214487840225573923351880007681,
7881497632799812395965569942862776762617506046143792906072884558856248623105,
7916682890089097272733273380107699873164905626706934838689281364922571161601,
5464063484924239686278651430976294814419699569805570712193386353828911860556,
2345683819285658451180229149661540703159972037542795507759787071088169233067,
5777789618029937658696564431797900258309825860894885777008317627732964216186,
]
M = [[seq[i+j] % Order for j in range(7)] for i in range(7)]

def p17(a):
    a %= Order
    a2 = a*a % Order
    a4 = a2*a2 % Order
    a8 = a4*a4 % Order
    a16 = a8*a8 % Order
    return a16*a % Order
Sval = p17(Dlit + cs[0][0])
Pexpr = f"(p17 (({Dlit} : F) + ({cs[0][0]} : F)))"
Sexpr = f"({Sval} : F)"
rawS = (Dlit + cs[0][0]) ** 17

def add(a,b,mod=True):
    r = dict(a)
    for k,v in b.items():
        r[k] = r.get(k,0) + v
    if mod:
        return {k: v % Order for k,v in r.items() if v % Order != 0}
    return {k: v for k,v in r.items() if v != 0}

def scale(a,s,mod=True):
    if mod:
        return {k: (v*s) % Order for k,v in a.items() if (v*s) % Order != 0}
    return {k: v*s for k,v in a.items() if v*s != 0}

def add_all(xs,mod=True):
    r={}
    for x in xs:
        r=add(r,x,mod=mod)
    return r

def mds(state, mod=True):
    return [add_all([scale(state[j], M[i][j], mod=mod) for j in range(7)], mod=mod) for i in range(7)]

def lit(n): return f"({n} : F)"
def flit(n): return lit(n % Order)
def coeff_eq_big(a,b):
    if (a % Order) == (b % Order):
        return f"show ({a} : F) = ({b % Order} : F) from (ZMod.natCast_mod {a} {MOD}).symm"
    raise AssertionError((a,b,a%Order,b%Order))

def vars_for_lc(d):
    ws = sorted([k for k in d if k.startswith('w')], key=lambda x: int(x[1:]))
    keys=[]
    if 'S' in d: keys.append('S')
    keys += ws
    return keys

def lc_expr(d, include_zero_vars=None, include_zero_const=False):
    parts=[]
    c = d.get('one',0) % Order
    if include_zero_const or c != 0:
        parts.append(flit(c))
    if d.get('S',0) % Order != 0:
        coef=d['S']%Order
        if coef == 1: parts.append(Sexpr)
        else: parts.append(f"{flit(coef)} * {Sexpr}")
    keys = sorted([k for k in d if k.startswith('w')], key=lambda x:int(x[1:]))
    if include_zero_vars:
        for v in include_zero_vars:
            if v not in keys: keys.append(v)
        keys = sorted(set(keys), key=lambda x:int(x[1:]))
    for k in keys:
        coef=d.get(k,0)%Order
        if coef == 0 and not include_zero_vars: continue
        if coef == 1: parts.append(k)
        else: parts.append(f"{flit(coef)} * {k}")
    return " + ".join(parts) if parts else "(0 : F)"

def lc_expr_raw(d, var_order=None):
    parts=[]
    if d.get('one',0)!=0: parts.append(lit(d['one']))
    if d.get('S',0)!=0:
        coef=d['S']
        if coef == 1: parts.append(Sexpr)
        else: parts.append(f"{lit(coef)} * {Sexpr}")
    keys = sorted([k for k in d if k.startswith('w')], key=lambda x:int(x[1:]))
    if var_order:
        keys = [k for k in var_order if d.get(k,0)!=0]
    for k in keys:
        coef=d[k]
        if coef == 1: parts.append(k)
        else: parts.append(f"{lit(coef)} * {k}")
    return " + ".join(parts) if parts else "(0 : F)"

def row_expr(i,args):
    cs7 = " ".join(flit(M[i][j]) for j in range(7))
    return f"row7 {cs7} {' '.join(args)}"

def cs_vec(g):
    return "vec![" + ", ".join(flit(x) for x in cs[g]) + "]"

# State flat forms after each Poseidon round.
state = {}
# round0 state after first full round: S and six deployed S-box wires.
state[0] = mds([{'one':Sval}] + [{w:1} for w in groups[0]], mod=True)
for g in [1,2,3]:
    state[g] = mds([{w:1} for w in groups[g]], mod=True)
for g in range(4,35):
    lane0 = {groups[g][0]:1}
    lanes = [lane0] + [add(state[g-1][j], {'one': cs[g][j]}, mod=True) for j in range(1,7)]
    state[g] = mds(lanes, mod=True)
for g in range(35,39):
    state[g] = mds([{w:1} for w in groups[g]], mod=True)

def state_args(g):
    if g == 0:
        return groups[0]
    if 1 <= g <= 3:
        return groups[g]
    if 4 <= g <= 34:
        args = list(groups[3])
        for k in range(4,g+1): args += groups[k]
        return args
    return groups[g]

def args_decl(args):
    return " ".join(f"({a} : F)" for a in args)
def args_use(args):
    return " ".join(args)
public_args = ["w14", "w15", "w16", "w19", "w22", "w572", "w912"]
def public_decl():
    return args_decl(public_args)
def public_use():
    return args_use(public_args)
def prefix_args(g):
    out = []
    for i in range(g + 1):
        out += groups[i]
    return out
def st_call(g):
    return f"st{g} {args_use(state_args(g))}" if state_args(g) else f"st{g}"
def s_call(g,i):
    return f"s{g}_{i} {args_use(state_args(g))}"
def st_idx(g,i):
    return f"({st_call(g)})[{i}]"
def spec_call(g):
    return f"spec{g} {public_use()}"
def is_full_round(g):
    return g <= 3 or g >= 35
def hw_expr(g, i):
    if g == 0:
        inputs = [
            f"{flit(cs[0][1])} + (1 : F) * w14",
            f"{flit(cs[0][2])} + (1 : F) * w15",
            f"{flit(cs[0][3])} + (1 : F) * w16",
            f"{flit(cs[0][4])} + (-1 : F) * w572 + (1 : F) * w912",
            f"{flit(cs[0][5])} + (1 : F) * w19",
            f"{flit(cs[0][6])} + (1 : F) * w22",
        ]
        return inputs[i]
    dep = add(state[g-1][i], {'one': cs[g][i]}, mod=True)
    return lc_expr(dep)
def hw_decl_round(g):
    return " ".join(
        f"(hw{w[1:]} : {w} = p17 ({hw_expr(g, i)}))"
        for i, w in enumerate(groups[g])
    )
def hw_decl_upto(g):
    return " ".join(hw_decl_round(i) for i in range(g + 1))
def hw_use_round(g):
    if g == 0:
        fixes = []
        for i, w in enumerate(groups[0]):
            if i == 3:
                fixes.append(f"(by rw [hw{w[1:]}]; congr 1; ring)")
            else:
                fixes.append(f"(by simpa [one_mul] using hw{w[1:]})")
        return " ".join(fixes)
    return " ".join(f"hw{w[1:]}" for w in groups[g])
def hw_use_upto(g):
    out = []
    for i in range(g + 1):
        out += [f"hw{w[1:]}" for w in groups[i]]
    return " ".join(out)
def emit_spec_def(lines, g):
    if g == 0:
        lines.append(f"def spec0 {public_decl()} : List.Vector F 7 :=\n  fr7 {init} ({cs_vec(0)})\n\n")
    else:
        rf = "fr7" if is_full_round(g) else "pr7"
        lines.append(f"def spec{g} {public_decl()} : List.Vector F 7 :=\n  {rf} ({spec_call(g-1)}) ({cs_vec(g)})\n\n")
def emit_spec_eq(lines, g):
    if g == 0:
        sig = f"theorem spec0_eq {public_decl()} {args_decl(groups[0])}\n    {hw_decl_round(0)} :\n    {spec_call(0)} = {st_call(0)} := by\n"
        body = f"  unfold spec0\n  exact round0_eq {public_use()} {args_use(groups[0])} {hw_use_round(0)}\n\n"
    else:
        step_args = list(dict.fromkeys(state_args(g-1) + state_args(g)))
        sig = f"theorem spec{g}_step {public_decl()} {args_decl(step_args)}\n    (hprev : {spec_call(g-1)} = {st_call(g-1)}) {hw_decl_round(g)} :\n    {spec_call(g)} = {st_call(g)} := by\n"
        body = f"  unfold spec{g}\n  rw [hprev]\n"
        if is_full_round(g):
            body += f"  exact round{g}_eq {args_use(state_args(g-1))} {args_use(groups[g])} {hw_use_round(g)}\n\n"
        else:
            body += f"  exact round{g}_eq {args_use(state_args(g-1))} {groups[g][0]} {hw_use_round(g)}\n\n"
    lines.append(sig + body)

def write(path, text):
    path.write_text(text)
    print('wrote', path, len(text))

header_common = f"""set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000
set_option linter.unusedVariables false
set_option linter.unreachableTactic false
set_option linter.unusedTactic false

namespace Shieldd.GnarkFormal.Deployed.NoteCommitment

open Shieldd.GnarkFormal.Poseidon6Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon6Link

variable [Fact (Nat.Prime Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e.Order)]
{INSTANCE_BLOCK}

"""
footer = "end Shieldd.GnarkFormal.Deployed.NoteCommitment\n"

def emit_full_state(lines, g):
    args = state_args(g)
    rowargs = [Sexpr] + groups[0] if g == 0 else groups[g]
    for i in range(7):
        lines.append(f"def s{g}_{i} {args_decl(args)} : F :=\n  {row_expr(i,rowargs)}\n\n")
    lines.append(f"def st{g} {args_decl(args)} : List.Vector F 7 :=\n  vec![{', '.join(f's{g}_{i} {args_use(args)}' for i in range(7))}]\n\n")
    raw_full = mds(([{'one':Sval}] + [{w:1} for w in groups[0]]) if g == 0 else [{w:1} for w in groups[g]], mod=False)
    for i in range(7):
        red_expr = lc_expr(state[g][i])
        if g == 0:
            red_const = state[g][i].get('one',0)%Order
            raw_const = M[i][0] * Sval
            lines.append(f"theorem s{g}_{i}_flat {args_decl(args)} :\n    {s_call(g,i)} = {red_expr} := by\n  unfold s{g}_{i} row7\n  rw [show {flit(M[i][0])} * {flit(Sval)} = {flit(red_const)} from by\n    change ({raw_const} : F) = {flit(red_const)}\n    exact {coeff_eq_big(raw_const, red_const)}]\n\n")
        else:
            lines.append(f"theorem s{g}_{i}_flat {args_decl(args)} :\n    {s_call(g,i)} = {red_expr} := by\n  unfold s{g}_{i} row7\n  rfl\n\n")

def emit_full_arg_lemmas(lines, g):
    prev = g - 1
    for i in range(7):
        args = state_args(prev)
        dep = add(state[prev][i], {'one': cs[g][i]}, mod=True)
        rhs_flat = lc_expr(state[prev][i])
        dep_const = dep.get('one',0)%Order
        st_const = state[prev][i].get('one',0)%Order
        lines.append(f"theorem arg{g}_{i}_eq {args_decl(args)} :\n    {lc_expr(dep)} = {s_call(prev,i)} + {flit(cs[g][i])} := by\n  calc\n    {lc_expr(dep)} = ({rhs_flat}) + {flit(cs[g][i])} := by\n      rw [show {flit(dep_const)} = {flit(st_const)} + {flit(cs[g][i])} from by\n        exact (ZMod.natCast_mod {(st_const + cs[g][i])} {MOD}).trans (Nat.cast_add {st_const} {cs[g][i]})]\n      all_goals ring\n    _ = {s_call(prev,i)} + {flit(cs[g][i])} := by rw [← s{prev}_{i}_flat]\n\n")

def emit_full_round_eq(lines, g):
    args_prev = state_args(g-1)
    args_cur = state_args(g)
    hargs=[]
    for i,w in enumerate(groups[g]):
        hargs.append(f"(by rw [hw{w[1:]}, arg{g}_{i}_eq {args_use(args_prev)}]; rfl)")
    hwdecl=[]
    for i,w in enumerate(groups[g]):
        dep = add(state[g-1][i], {'one': cs[g][i]}, mod=True)
        hwdecl.append(f"(hw{w[1:]} : {w} = p17 ({lc_expr(dep)}))")
    lines.append(f"theorem round{g}_eq {args_decl(args_prev)} {args_decl(args_cur)}\n    {' '.join(hwdecl)} :\n    fr7 ({st_call(g-1)}) ({cs_vec(g)}) = st{g} {args_use(args_cur)} := by\n  exact fr_eq ({st_call(g-1)}) ({cs_vec(g)}) {args_use(args_cur)} {' '.join(hargs)}\n\n")

# Base file: round 0 only.
base=[]
base.append("import ShielddGnarkFormal.Deployed.NoteCommitmentDeployedBridge\nimport ShielddGnarkFormal.Deployed.Poseidon6Link\n\n")
base.append(header_common)
sumDC = (Dlit + cs[0][0]) % Order
a2 = sumDC * sumDC % Order
a4 = a2 * a2 % Order
a8 = a4 * a4 % Order
a16 = a8 * a8 % Order
base.append(f"""theorem p17_domain_eq :
    p17 (({Dlit} : F) + ({cs[0][0]} : F)) = {flit(Sval)} := by
  have hx :
      ({Dlit} : F) + ({cs[0][0]} : F) = {flit(sumDC)} := by
    change ({Dlit + cs[0][0]} : F) = {flit(sumDC)}
    exact {coeff_eq_big(Dlit + cs[0][0], sumDC)}
  have h0 : {flit(sumDC)} * {flit(sumDC)} = {flit(a2)} := by
    change ({sumDC * sumDC} : F) = {flit(a2)}
    exact {coeff_eq_big(sumDC * sumDC, a2)}
  have h1 : {flit(a2)} * {flit(a2)} = {flit(a4)} := by
    change ({a2 * a2} : F) = {flit(a4)}
    exact {coeff_eq_big(a2 * a2, a4)}
  have h2 : {flit(a4)} * {flit(a4)} = {flit(a8)} := by
    change ({a4 * a4} : F) = {flit(a8)}
    exact {coeff_eq_big(a4 * a4, a8)}
  have h3 : {flit(a8)} * {flit(a8)} = {flit(a16)} := by
    change ({a8 * a8} : F) = {flit(a16)}
    exact {coeff_eq_big(a8 * a8, a16)}
  have h4 : {flit(a16)} * {flit(sumDC)} = {flit(Sval)} := by
    change ({a16 * sumDC} : F) = {flit(Sval)}
    exact {coeff_eq_big(a16 * sumDC, Sval)}
  rw [hx]
  exact (p17_from_rows {flit(sumDC)} {flit(a2)} {flit(a4)} {flit(a8)} {flit(a16)} {flit(Sval)} h0 h1 h2 h3 h4).symm

""")
emit_full_state(base, 0)

# round0 eq
init = f"vec![{flit(Dlit)}, w14, w15, w16, (w912 - w572), w19, w22]"
g0args = groups[0]
hs = ["(by exact p17_domain_eq.symm)"]
for i,w in enumerate(g0args, start=1):
    # deployed arg for round0 lane i = cs0[i] + input
    hs.append(f"(by simpa [add_comm] using hw{w[1:]})")
base.append(f"theorem round0_eq (w14 w15 w16 w19 w22 w572 w912 : F) {args_decl(g0args)}\n    " + " ".join(f"(hw{w[1:]} : {w} = p17 ({flit(cs[0][i+1])} + {'w14' if i==0 else 'w15' if i==1 else 'w16' if i==2 else '(w912 - w572)' if i==3 else 'w19' if i==4 else 'w22'}))" for i,w in enumerate(g0args)) + f" :\n    fr7 {init} ({cs_vec(0)}) = st0 {args_use(g0args)} := by\n  exact fr_eq {init} ({cs_vec(0)}) {Sexpr} {args_use(g0args)} {' '.join(hs)}\n\n")
emit_spec_def(base, 0)
emit_spec_eq(base, 0)

base.append(footer)
write(OUT/'Base.lean', ''.join(base))

for g in range(1,4):
    prev_import = "Base" if g == 1 else f"Round{g-1:02d}"
    lines=[f"import ShielddGnarkFormal.Deployed.NoteCommitment.{prev_import}\n\n", header_common]
    emit_full_state(lines, g)
    emit_full_arg_lemmas(lines, g)
    emit_full_round_eq(lines, g)
    emit_spec_def(lines, g)
    emit_spec_eq(lines, g)
    lines.append(footer)
    write(OUT/f'Round{g:02d}.lean', ''.join(lines))

# Partial rounds 4..34.
for g in range(4,35):
    prev=g-1
    imports = f"import ShielddGnarkFormal.Deployed.NoteCommitment.Round{prev:02d}\n\n"
    lines=[imports, header_common]
    args=state_args(g)
    args_prev=state_args(prev)
    rowargs=[groups[g][0]] + [f"({s_call(prev,j)} + {flit(cs[g][j])})" for j in range(1,7)]
    for i in range(7):
        lines.append(f"def s{g}_{i} {args_decl(args)} : F :=\n  {row_expr(i,rowargs)}\n\n")
    lines.append(f"def st{g} {args_decl(args)} : List.Vector F 7 :=\n  vec![{', '.join(f's{g}_{i} {args_use(args)}' for i in range(7))}]\n\n")
    # arg lemma for lane0, using previous flat[0]
    dep_arg = add(state[prev][0], {'one': cs[g][0]}, mod=True)
    rhs_flat = lc_expr(state[prev][0])
    dep_const = dep_arg.get('one',0)%Order
    st_const = state[prev][0].get('one',0)%Order
    lines.append(f"theorem arg{g}_0_eq {args_decl(args_prev)} :\n    {lc_expr(dep_arg)} = {s_call(prev,0)} + {flit(cs[g][0])} := by\n  calc\n    {lc_expr(dep_arg)} = ({rhs_flat}) + {flit(cs[g][0])} := by\n      rw [show {flit(dep_const)} = {flit(st_const)} + {flit(cs[g][0])} from by\n        exact (ZMod.natCast_mod {(st_const + cs[g][0])} {MOD}).trans (Nat.cast_add {st_const} {cs[g][0]})]\n      all_goals ring\n    _ = {s_call(prev,0)} + {flit(cs[g][0])} := by rw [← s{prev}_0_flat]\n\n")
    # flat lemmas
    # raw unmodded state after substituting previous reduced flats.
    raw_lanes = [{groups[g][0]:1}] + [add(state[prev][j], {'one': cs[g][j]}, mod=False) for j in range(1,7)]
    raw_state = mds(raw_lanes, mod=False)
    var_order = state_args(g)
    for i in range(7):
        raw_expr = lc_expr_raw(raw_state[i], var_order=var_order)
        red_expr = lc_expr(state[g][i])
        rwshows=[]
        for k in ['one'] + var_order:
            a = raw_state[i].get(k,0)
            b = state[g][i].get(k,0)%Order
            if a == 0 and b == 0: continue
            if a % Order != b: raise AssertionError((g,i,k,a%Order,b))
            if a != b:
                rwshows.append(coeff_eq_big(a,b))
        rwline = ""
        if rwshows:
            rwline = "\n      rw [" + ", ".join(rwshows) + "]"
        lines.append(f"theorem s{g}_{i}_flat {args_decl(args)} :\n    {s_call(g,i)} = {red_expr} := by\n  calc\n    {s_call(g,i)} = {raw_expr} := by\n      unfold s{g}_{i}\n      rw [{', '.join(f's{prev}_{j}_flat' for j in range(1,7))}]\n      unfold row7\n      ring\n    _ = {red_expr} := by{rwline}\n      all_goals ring\n\n")
    # round eq
    dep_hw = dep_arg
    hproof = f"(by rw [hw{groups[g][0][1:]}, arg{g}_0_eq {args_use(args_prev)}]; rfl)"
    lines.append(f"theorem round{g}_eq {args_decl(args_prev)} ({groups[g][0]} : F)\n    (hw{groups[g][0][1:]} : {groups[g][0]} = p17 ({lc_expr(dep_hw)})) :\n    pr7 ({st_call(prev)}) ({cs_vec(g)}) = st{g} {args_use(args)} := by\n  exact pr_eq ({st_call(prev)}) ({cs_vec(g)}) {groups[g][0]} {hproof}\n\n")
    emit_spec_def(lines, g)
    emit_spec_eq(lines, g)
    lines.append(footer)
    write(OUT/f'Round{g:02d}.lean', ''.join(lines))

# Full tail 35..38.
lines=["import ShielddGnarkFormal.Deployed.NoteCommitment.Round34\n\n", header_common]
for g in range(35,39):
    args=state_args(g)
    rowargs=groups[g]
    for i in range(7):
        lines.append(f"def s{g}_{i} {args_decl(args)} : F :=\n  {row_expr(i,rowargs)}\n\n")
    lines.append(f"def st{g} {args_decl(args)} : List.Vector F 7 :=\n  vec![{', '.join(f's{g}_{i} {args_use(args)}' for i in range(7))}]\n\n")
    for i in range(7):
        lines.append(f"theorem s{g}_{i}_flat {args_decl(args)} :\n    {s_call(g,i)} = {lc_expr(state[g][i])} := by\n  unfold s{g}_{i} row7\n  ring\n\n")
    prev=g-1
    args_prev=state_args(prev)
    # arg lemmas all lanes
    for i in range(7):
        dep = add(state[prev][i], {'one': cs[g][i]}, mod=True)
        rhs_flat=lc_expr(state[prev][i])
        dep_const=dep.get('one',0)%Order
        st_const=state[prev][i].get('one',0)%Order
        lines.append(f"theorem arg{g}_{i}_eq {args_decl(args_prev)} :\n    {lc_expr(dep)} = {s_call(prev,i)} + {flit(cs[g][i])} := by\n  calc\n    {lc_expr(dep)} = ({rhs_flat}) + {flit(cs[g][i])} := by\n      rw [show {flit(dep_const)} = {flit(st_const)} + {flit(cs[g][i])} from by\n        exact (ZMod.natCast_mod {(st_const + cs[g][i])} {MOD}).trans (Nat.cast_add {st_const} {cs[g][i]})]\n      all_goals ring\n    _ = {s_call(prev,i)} + {flit(cs[g][i])} := by rw [← s{prev}_{i}_flat]\n\n")
    hargs=[]; hwdecl=[]
    for i,w in enumerate(groups[g]):
        dep = add(state[prev][i], {'one': cs[g][i]}, mod=True)
        hwdecl.append(f"(hw{w[1:]} : {w} = p17 ({lc_expr(dep)}))")
        hargs.append(f"(by rw [hw{w[1:]}, arg{g}_{i}_eq {args_use(args_prev)}]; rfl)")
    lines.append(f"theorem round{g}_eq {args_decl(args_prev)} {args_decl(args)}\n    {' '.join(hwdecl)} :\n    fr7 ({st_call(prev)}) ({cs_vec(g)}) = st{g} {args_use(args)} := by\n  exact fr_eq ({st_call(prev)}) ({cs_vec(g)}) {args_use(args)} {' '.join(hargs)}\n\n")
    emit_spec_def(lines, g)
    emit_spec_eq(lines, g)
lines.append(footer)
write(OUT/'FullTail.lean', ''.join(lines))

# The final link belongs to this generator as well. Keeping it on the same
# explicit operation context prevents a reintroduced field instance in the
# otherwise definitional spec equality.
lines = ["import ShielddGnarkFormal.Deployed.NoteCommitment.FullTail\n\n", header_common]
lines.append(f"""theorem spec38_eq_permSpec {public_decl()} :
    ({spec_call(38)})[1] =
      permSpec6
        {flit(Dlit)}
        w14 w15 w16 (w912 - w572) w19 w22 := by
  rfl

""")
lines.append(footer)
write(OUT/'SpecLink.lean', ''.join(lines))

# Raw CPS-relation semantic bridge. The extracted relation is a nested CPS chain
# of 87 segment predicates. We prove it round-aligned into bounded range lemmas
# (each ≤11 segments, well within the 60-gate limit), threading the opaque
# continuation `k` and the staged-spec accumulator across each range boundary.
# The public composition does ONE rcases per range (≈11), never an 87-walk.
raw = "Shieldd.GnarkFormal.Extracted.Deployed.GadgetNoteCommitmentWithOutput431_7f228e"
raw_path = ROOT/"tools/gnark/lean/ShielddGnarkFormal/Extracted/Deployed/GadgetNoteCommitmentWithOutput431_7f228e.lean"
normalize_choice_free_zmod_file(raw_path)

# --- parse the extracted relation def: seg{i} <args> (fun <boundvars> => ... ---
ext_text = raw_path.read_text().splitlines()
ri = next(i for i, l in enumerate(ext_text) if l.startswith("def relation"))
seg_args = {}   # i -> input window vars (list)
seg_bvs = {}    # i -> continuation-bound vars (list) = exit window of seg i
for l in ext_text[ri+1:]:
    m = re.match(r"\s*seg(\d+) (.+?) \(fun (.+?) =>", l)
    if m:
        seg_args[int(m.group(1))] = m.group(2).split()
        seg_bvs[int(m.group(1))] = m.group(3).split()
    elif l.strip().startswith("k "):
        break

# --- synthesize per-seg `have`/`rcases` walk lines directly from the parsed
# relation structure (no dependence on the dead route-A `relation_sound_deployed`
# walk; each seg's fresh output wire is the last continuation-bound var). ---
seg_walk = {}   # i -> (have_line, rcases_line)  (without trailing newline)
for i in seg_args:
    nw = seg_bvs[i][-1]
    have_line = f"  have h{i} := seg{i}_sound {' '.join(seg_args[i])} _ h"
    rcases_line = f"  rcases h{i} with ⟨{nw}, hw{nw[1:]}, h⟩"
    seg_walk[i] = (have_line, rcases_line)

# seg -> round, and last-seg-of-round
seg2round = {}
for s in range(0, 6):   seg2round[s] = 0
for s in range(6, 13):  seg2round[s] = 1
for s in range(13, 20): seg2round[s] = 2
for s in range(20, 27): seg2round[s] = 3
for g in range(4, 35):  seg2round[23 + g] = g     # partial rounds, seg27..57
for s in range(58, 65): seg2round[s] = 35
for s in range(65, 72): seg2round[s] = 36
for s in range(72, 79): seg2round[s] = 37
for s in range(79, 86): seg2round[s] = 38
round_last_seg = {}
for s, g in seg2round.items():
    round_last_seg[g] = max(round_last_seg.get(g, -1), s)

def spec_step_line(g):
    if g == 0:
        return f"  have hSpec0 := spec0_eq {public_use()} {args_use(groups[0])} {' '.join('hw' + w[1:] for w in groups[0])}\n"
    step_args = list(dict.fromkeys(state_args(g-1) + state_args(g)))
    return f"  have hSpec{g} := spec{g}_step {public_use()} {args_use(step_args)} hSpec{g-1} {hw_use_round(g)}\n"

# round-aligned range partition (segment index lists)
RANGES = [
    list(range(0, 6)),    # round 0
    list(range(6, 13)),   # round 1
    list(range(13, 20)),  # round 2
    list(range(20, 27)),  # round 3
    list(range(27, 37)),  # rounds 4..13  (partial)
    list(range(37, 47)),  # rounds 14..23 (partial)
    list(range(47, 58)),  # rounds 24..34 (partial)
    list(range(58, 65)),  # round 35
    list(range(65, 72)),  # round 36
    list(range(72, 79)),  # round 37
    list(range(79, 86)),  # round 38
]

lines = ["import ShielddGnarkFormal.Deployed.NoteCommitment.SpecLink\n\n", header_common]

for R, segs in enumerate(RANGES):
    first, last = segs[0], segs[-1]
    g0 = seg2round[first]
    glast = seg2round[last]
    entry = seg_args[first]            # input window of first seg
    exitw = seg_bvs[last]              # exit window (continuation bound vars)
    arity = " → ".join(["F"] * len(exitw)) + " → Prop"
    # signature
    sig = f"theorem range{R}_sound {public_decl()}"
    if g0 != 0:
        sig += " " + " ".join(f"({v} : F)" for v in entry)
    sig += f" (k : {arity})"
    if g0 != 0:
        sig += f"\n    (hSpec{g0-1} : spec{g0-1} {public_use()} = st{g0-1} {' '.join(entry)})"
    # nested relation hypothesis for this range
    chain = []
    for i in segs:
        chain.append(f"{raw}.seg{i} {' '.join(seg_args[i])} (fun {' '.join(seg_bvs[i])} =>")
    nested = "\n      ".join(chain) + f"\n      k {' '.join(exitw)}" + ")" * len(segs)
    sig += f"\n    (h : {nested}) :"
    concl = f"\n    ∃ {' '.join(exitw)} : F, spec{glast} {public_use()} = st{glast} {' '.join(exitw)} ∧ k {' '.join(exitw)} := by\n"
    lines.append(sig + concl)
    # proof: seg walk + spec steps
    for i in segs:
        h_line, r_line = seg_walk[i]
        lines.append(h_line + "\n")
        lines.append(r_line + "\n")
        if i == round_last_seg[seg2round[i]]:
            lines.append(spec_step_line(seg2round[i]))
    lines.append(f"  exact ⟨{', '.join(exitw)}, hSpec{glast}, h⟩\n\n")

# public composition: one rcases per range, then the seg86 output + spec38 close
lines.append(f"theorem relation_sound_permSpec {public_decl()} (k : F → Prop) :\n    {raw}.relation {public_use()} k →\n      k (permSpec6 {flit(Dlit)} w14 w15 w16 (w912 - w572) w19 w22) := by\n  unfold {raw}.relation\n  intro h\n")
for R, segs in enumerate(RANGES):
    first, last = segs[0], segs[-1]
    g0 = seg2round[first]
    glast = seg2round[last]
    entry = seg_args[first]
    exitw = seg_bvs[last]
    if g0 == 0:
        lines.append(f"  have r{R} := range{R}_sound {public_use()} _ h\n")
    else:
        lines.append(f"  have r{R} := range{R}_sound {public_use()} {' '.join(entry)} _ hSpec{g0-1} h\n")
    lines.append(f"  rcases r{R} with ⟨{', '.join(exitw)}, hSpec{glast}, h⟩\n")
lines.append(f"  have h86 := seg86_sound {' '.join(seg_args[86])} _ h\n")
lines.append("  rcases h86 with ⟨w23, hw23, h⟩\n")
lines.append(f"  have hw23_spec : w23 = permSpec6 {flit(Dlit)} w14 w15 w16 (w912 - w572) w19 w22 := by\n")
lines.append("    rw [hw23]\n")
lines.append(f"    rw [← spec38_eq_permSpec {public_use()}]\n")
lines.append("    rw [hSpec38]\n")
lines.append("    simp [st38, s38_1, row7]\n")
lines.append("  simpa [hw23_spec] using h\n\n")
lines.append(f"theorem relation_output_sound (w14 w15 w16 w19 w22 w572 w912 out : F)\n    (h : {raw}.relation w14 w15 w16 w19 w22 w572 w912 (fun actual => actual = out)) :\n    out = permSpec6 {flit(Dlit)} w14 w15 w16 (w912 - w572) w19 w22 := by\n  exact (relation_sound_permSpec w14 w15 w16 w19 w22 w572 w912 (fun actual => actual = out) h).symm\n\n")
lines.append("#print axioms relation_sound_permSpec\n#print axioms relation_output_sound\n\n")
lines.append(footer)
write(OUT/'RawRelationSemanticBridge.lean', ''.join(lines))

# Final exported surface.
lines=["import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge\n\n", header_common]
lines.append(f"theorem circuit_sound_eq (w14 w15 w16 w19 w22 w572 w912 out : F)\n    (h : {raw}.relation w14 w15 w16 w19 w22 w572 w912 (fun actual => actual = out)) :\n    out = permSpec6 {flit(Dlit)} w14 w15 w16 (w912 - w572) w19 w22 :=\n  relation_output_sound w14 w15 w16 w19 w22 w572 w912 out h\n\n")
lines.append("#print axioms circuit_sound_eq\n\n")
lines.append(footer)
write(ROOT/'tools/gnark/lean/ShielddGnarkFormal/Deployed/NoteCommitmentSemanticBridge.lean', ''.join(lines))
