#!/usr/bin/env python3
"""Width-parameterized deployed-Poseidon semantic-bridge generator.

Emits the full route-B apparatus (per-round spec staging st0..st{N} + round_eq,
range-aligned seg_sound composition, circuit_sound_eq → permSpecW) for ONE
constant-folded deployed Poseidon slice. Generalizes
`gen_note_commitment_semantic.py` (width 7) to arbitrary state width W via a
CONFIG dict. The deployed slice rows are gnark partial evaluations; each round's
S-box wires are reconstructed into the closed `p17` form and staged against the
independently-specified `permSpecW` round-constant table, so a Lean build proves
the slice ⇒ spec axiom-clean (no `native_decide` / `ofReduceBool`).

Per-class facts (width, slice module, domain, round constants, S-box wire groups,
seg windows, range partition) come from a JSON gendata file + the extracted slice.
The spec side (permSpecW + its constants) lives in the Poseidon{rate}Bridge and is
NOT touched here, keeping the regression bite meaningful.
"""
import json, pathlib, re, sys

HERE = pathlib.Path(__file__).resolve().parent
ROOT = HERE.parents[3]
EXTRACTED = ROOT / "tools/gnark/lean/ShielddGnarkFormal/Extracted/Deployed"
DEPLOYED = ROOT / "tools/gnark/lean/ShielddGnarkFormal/Deployed"

Order = 8444461749428370424248824938781546531375899335154063827935233455917409239041

# ---------------------------------------------------------------- class configs
CONFIGS = {
    "dtk_ivk": dict(
        W=3,
        leaf="DtkIvkPoseidon",
        slice_stem="DtkIvkPoseidon270_e8acc1",
        link="Poseidon2Link",
        bridge_ns="Poseidon2Bridge",
        deployed_bridge="DtkIvkPoseidonDeployedBridge",
        spec="permSpec2",
        domain_sym="ivkDomainLit",
        extracted_ns="Shieldd.GnarkFormal.Extracted.Poseidon2",
    ),
    "nullifier": dict(
        W=4,
        leaf="Nullifier",                       # Deployed.{leaf} namespace + subdir
        slice_stem="GadgetNullifier310_6eee7c",
        link="Poseidon3Link",                   # provides fr_eq4/pr_eq4/row4
        bridge_ns="Poseidon3Bridge",            # provides p17, permSpec3
        deployed_bridge="NullifierDeployedBridge",  # provides p17_from_rows, seg{i}_sound base
        spec="permSpec3",
        domain_sym="nullifierDomainLit",
        public_args=["w8", "w23", "w24"],       # the rate-3 inputs (lanes 1..W-1)
        # round-0 deployed S-box input for lane i (0-based over public inputs):
        #   cs[0][i+1] + 1 * public_args[i]
        seq=[
            6333346312071277818186618704086159898531924501365547870951425091938056929281,
            6755569399542696339399059951025237225100719468123251062348186764733927391233,
            7037051457856975353540687448984622109479916112628386523279361213264507699201,
            7238110070938603220784707090384182741179342287274911852515914390786350776321,
            7388904030749824121217721821433853214953911918259805849443329273927733084161,
            4691367638571316902360458299323081406319944075085591015519574142176338466134,
            7600015574485533381823942444903391878238309401638657445141710110325668315137,
        ],
    ),
    "statement_hash": dict(
        W=8,
        leaf="StatementHash",
        slice_stem="StatementHash470_5c3d95",
        link="Poseidon7Link",                    # provides fr_eq8/pr_eq8/row8
        bridge_ns="Poseidon7Bridge",             # provides p17, permSpec7
        deployed_bridge="StatementHashDeployedBridge",
        spec="permSpec7",
        domain_sym="statementDomainLit",
        # extracted module backing the bridge/link `F`; its `Order` is defeq to
        # the deployed slice's, so the primality `Fact` is forwarded in-header.
        extracted_ns="Shieldd.GnarkFormal.Extracted.PoseidonHash7",
        # public_args (22 binder wires), spec_inputs (7 LC inputs) and seq come
        # from statement_hash_gendata.json.
    ),
    "state_commitment_node0": dict(
        W=5,
        leaf="StateCommitmentPathNode0",
        slice_stem="GadgetStateCommitmentPathNode0350_28e5d0",
        link="Poseidon4Link",
        bridge_ns="Poseidon4Bridge",
        deployed_bridge="StateCommitmentPathNode0DeployedBridge",
        spec="permSpec4",
        domain_sym="tctNode1DomainLit",
        extracted_ns="Shieldd.GnarkFormal.Extracted.PoseidonHash4",
    ),
}


def p17(a):
    a %= Order
    a2 = a * a % Order
    a4 = a2 * a2 % Order
    a8 = a4 * a4 % Order
    a16 = a8 * a8 % Order
    return a16 * a % Order


def build(cfgname):
    cfg = CONFIGS[cfgname]
    W = cfg["W"]
    stem = cfg["slice_stem"]
    NS = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    MOD = f"{NS}.Order"
    leaf = cfg["leaf"]
    OUT = DEPLOYED / leaf
    OUT.mkdir(parents=True, exist_ok=True)

    gd = json.load(open(HERE / f"{cfgname}_gendata.json"))
    cs = {int(k): [int(x) % Order for x in v] for k, v in gd["cs"].items()}
    groups = gd["groups"]               # round -> [wire,...]
    kind = {int(k): v for k, v in gd["kind"].items()}
    seg2round = {int(k): v for k, v in gd["seg2round"].items()}
    RANGES = gd["ranges"]
    Dlit = int(gd["domain"]) % Order
    NROUNDS = len(cs)                    # 39
    LAST = NROUNDS - 1                   # 38
    public_args = gd.get("public_args", cfg.get("public_args"))
    seq = [int(x) for x in gd.get("seq", cfg.get("seq"))]
    M = [[seq[i + j] % Order for j in range(W)] for i in range(W)]
    # Spec-input expressions feeding the sponge (lanes 1..W-1). For single-wire
    # public inputs these equal `public_args`; for the statement hash they are
    # linear combinations of the binder wires, carried symbolically.
    spec_inputs = gd.get("spec_inputs", public_args)
    spec_in_use = " ".join(f"({e})" for e in spec_inputs)
    # The spec chain (Base/Round/FullTail/SpecLink) is proven over ABSTRACT input
    # binders to keep `fr{W}` defeq cheap; the (possibly large) `spec_inputs`
    # linear combinations are substituted only at the composition step.
    spec_params = [f"sin{k}" for k in range(len(spec_inputs))]
    spec_param_csv = ", ".join(spec_params)

    Sval = p17(Dlit + cs[0][0])
    Sexpr = f"({Sval} : F)"

    # ----- linear-combination algebra (dict: var/'one'/'S' -> coeff) -----
    def add(a, b, mod=True):
        r = dict(a)
        for k, v in b.items():
            r[k] = r.get(k, 0) + v
        return {k: (v % Order if mod else v) for k, v in r.items()
                if (v % Order if mod else v) != 0}

    def scale(a, s, mod=True):
        return {k: ((v * s) % Order if mod else v * s) for k, v in a.items()
                if ((v * s) % Order if mod else v * s) != 0}

    def add_all(xs, mod=True):
        r = {}
        for x in xs:
            r = add(r, x, mod=mod)
        return r

    def mds(state, mod=True):
        return [add_all([scale(state[j], M[i][j], mod=mod) for j in range(W)], mod=mod)
                for i in range(W)]

    def flit(n):
        return f"({n % Order} : F)"

    def lit(n):
        return f"({n} : F)"

    def lc_expr(d):
        parts = []
        c = d.get('one', 0) % Order
        if c != 0:
            parts.append(flit(c))
        if d.get('S', 0) % Order != 0:
            coef = d['S'] % Order
            parts.append(Sexpr if coef == 1 else f"{flit(coef)} * {Sexpr}")
        for k in sorted([k for k in d if k.startswith('w')], key=lambda x: int(x[1:])):
            coef = d.get(k, 0) % Order
            if coef == 0:
                continue
            parts.append(k if coef == 1 else f"{flit(coef)} * {k}")
        return " + ".join(parts) if parts else "(0 : F)"

    def lc_expr_raw(d, var_order):
        parts = []
        if d.get('one', 0) != 0:
            parts.append(lit(d['one']))
        if d.get('S', 0) != 0:
            coef = d['S']
            parts.append(Sexpr if coef == 1 else f"{lit(coef)} * {Sexpr}")
        for k in var_order:
            if d.get(k, 0) != 0:
                coef = d[k]
                parts.append(k if coef == 1 else f"{lit(coef)} * {k}")
        return " + ".join(parts) if parts else "(0 : F)"

    def rowfn():
        return f"row{W}"

    def row_expr(i, args):
        csw = " ".join(flit(M[i][j]) for j in range(W))
        return f"{rowfn()} {csw} {' '.join(args)}"

    def cs_vec(g):
        return "vec![" + ", ".join(flit(x) for x in cs[g]) + "]"

    def is_full(g):
        return kind[g] == "full"

    # ----- state flat forms after each round -----
    state = {}
    state[0] = mds([{'one': Sval}] + [{w: 1} for w in groups["0"]], mod=True)
    g = 1
    while g < NROUNDS and is_full(g):
        state[g] = mds([{w: 1} for w in groups[str(g)]], mod=True)
        g += 1
    first_partial = g
    last_partial = first_partial
    while g < NROUNDS and not is_full(g):
        lane0 = {groups[str(g)][0]: 1}
        lanes = [lane0] + [add(state[g - 1][j], {'one': cs[g][j]}, mod=True) for j in range(1, W)]
        state[g] = mds(lanes, mod=True)
        last_partial = g
        g += 1
    tail_start = g
    while g < NROUNDS:
        state[g] = mds([{w: 1} for w in groups[str(g)]], mod=True)
        g += 1

    def gw(g):
        return groups[str(g)]

    def state_args(g):
        if g == 0:
            return gw(0)
        if 1 <= g < first_partial:
            return gw(g)
        if first_partial <= g <= last_partial:
            args = list(gw(first_partial - 1))
            for k in range(first_partial, g + 1):
                args += gw(k)
            return args
        return gw(g)

    def adecl(args):
        return " ".join(f"({a} : F)" for a in args)

    def ause(args):
        return " ".join(args)

    # Spec-file binders are the abstract spec inputs; composition binds the
    # deployed relation's wires and substitutes the spec_inputs LCs.
    pub_decl = adecl(spec_params)
    pub_use = ause(spec_params)
    rel_decl = adecl(public_args)
    rel_use = ause(public_args)

    def st_call(g):
        a = state_args(g)
        return f"st{g} {ause(a)}" if a else f"st{g}"

    def s_call(g, i):
        return f"s{g}_{i} {ause(state_args(g))}"

    def spec_call(g):
        return f"spec{g} {pub_use}"

    header = (
        "set_option maxRecDepth 1000000\n"
        "set_option maxHeartbeats 2000000\n"
        "set_option linter.unusedVariables false\n"
        "set_option linter.unreachableTactic false\n"
        "set_option linter.unusedTactic false\n\n"
        f"namespace Shieldd.GnarkFormal.Deployed.{leaf}\n\n"
        f"open Shieldd.GnarkFormal.{cfg['bridge_ns']}\n"
        f"open Shieldd.GnarkFormal.Deployed.{cfg['link']}\n\n"
        f"variable [Fact (Nat.Prime {MOD})]\n\n"
        + (f"instance : Fact (Nat.Prime {cfg['extracted_ns']}.Order) :=\n"
           f"  inferInstanceAs (Fact (Nat.Prime {MOD}))\n\n"
           if cfg.get("extracted_ns") else "")
    )
    footer = f"end Shieldd.GnarkFormal.Deployed.{leaf}\n"

    def fr_eq():
        return f"fr_eq{W}"

    def pr_eq():
        return f"pr_eq{W}"

    # ----- per-round emission helpers -----
    def emit_state_full(lines, g):
        args = state_args(g)
        rowargs = [Sexpr] + gw(0) if g == 0 else gw(g)
        for i in range(W):
            lines.append(f"def s{g}_{i} {adecl(args)} : F :=\n  {row_expr(i, rowargs)}\n\n")
        lines.append(f"def st{g} {adecl(args)} : List.Vector F {W} :=\n  vec![{', '.join(f's{g}_{i} {ause(args)}' for i in range(W))}]\n\n")
        raw = mds(([{'one': Sval}] + [{w: 1} for w in gw(0)]) if g == 0 else [{w: 1} for w in gw(g)], mod=False)
        for i in range(W):
            red = lc_expr(state[g][i])
            if g == 0:
                red_const = state[g][i].get('one', 0) % Order
                raw_const = M[i][0] * Sval
                lines.append(
                    f"theorem s{g}_{i}_flat {adecl(args)} :\n    {s_call(g, i)} = {red} := by\n"
                    f"  unfold s{g}_{i} {rowfn()}\n"
                    f"  rw [show {flit(M[i][0])} * {flit(Sval)} = {flit(red_const)} from by\n"
                    f"    change ({raw_const} : F) = {flit(red_const)}\n"
                    f"    exact (ZMod.natCast_eq_natCast_iff' {raw_const} {red_const} {MOD}).mpr (by decide)]\n\n")
            else:
                lines.append(f"theorem s{g}_{i}_flat {adecl(args)} :\n    {s_call(g, i)} = {red} := by\n  unfold s{g}_{i} {rowfn()}\n  rfl\n\n")

    def emit_arg_lemmas_full(lines, g):
        prev = g - 1
        args = state_args(prev)
        for i in range(W):
            dep = add(state[prev][i], {'one': cs[g][i]}, mod=True)
            rhs = lc_expr(state[prev][i])
            dc = dep.get('one', 0) % Order
            sc = state[prev][i].get('one', 0) % Order
            lines.append(
                f"theorem arg{g}_{i}_eq {adecl(args)} :\n    {lc_expr(dep)} = {s_call(prev, i)} + {flit(cs[g][i])} := by\n"
                f"  calc\n    {lc_expr(dep)} = ({rhs}) + {flit(cs[g][i])} := by\n"
                f"      rw [show {flit(dc)} = {flit(sc)} + {flit(cs[g][i])} from by exact (ZMod.natCast_eq_natCast_iff' {(sc + cs[g][i]) % Order} {dc} {MOD}).mpr (by decide)]\n"
                f"      all_goals ring\n    _ = {s_call(prev, i)} + {flit(cs[g][i])} := by rw [← s{prev}_{i}_flat]\n\n")

    def emit_round_eq_full(lines, g):
        ap = state_args(g - 1)
        ac = state_args(g)
        hwdecl = []
        hargs = []
        for i, w in enumerate(gw(g)):
            dep = add(state[g - 1][i], {'one': cs[g][i]}, mod=True)
            hwdecl.append(f"(hw{w[1:]} : {w} = p17 ({lc_expr(dep)}))")
            hargs.append(f"(by rw [hw{w[1:]}, arg{g}_{i}_eq {ause(ap)}]; rfl)")
        lines.append(
            f"theorem round{g}_eq {adecl(ap)} {adecl(ac)}\n    {' '.join(hwdecl)} :\n"
            f"    {'fr' + str(W)} ({st_call(g - 1)}) ({cs_vec(g)}) = st{g} {ause(ac)} := by\n"
            f"  exact {fr_eq()} ({st_call(g - 1)}) ({cs_vec(g)}) {ause(ac)} {' '.join(hargs)}\n\n")

    def emit_spec_def(lines, g):
        if g == 0:
            init = f"vec![{flit(Dlit)}, {spec_param_csv}]"
            lines.append(f"def spec0 {pub_decl} : List.Vector F {W} :=\n  fr{W} {init} ({cs_vec(0)})\n\n")
        else:
            rf = f"fr{W}" if is_full(g) else f"pr{W}"
            lines.append(f"def spec{g} {pub_decl} : List.Vector F {W} :=\n  {rf} ({spec_call(g - 1)}) ({cs_vec(g)})\n\n")

    def hw_use_round0():
        return " ".join(f"hw{w[1:]}" for w in gw(0))

    def emit_spec_eq(lines, g):
        if g == 0:
            lines.append(
                f"theorem spec0_eq {pub_decl} {adecl(gw(0))}\n"
                f"    {' '.join(f'(hw{w[1:]} : {w} = p17 ({flit(cs[0][i + 1])} + (1 : F) * {spec_params[i]}))' for i, w in enumerate(gw(0)))} :\n"
                f"    {spec_call(0)} = {st_call(0)} := by\n"
                f"  unfold spec0\n  exact round0_eq {pub_use} {ause(gw(0))} {hw_use_round0()}\n\n")
        else:
            step_args = list(dict.fromkeys(state_args(g - 1) + state_args(g)))
            hwdecl = []
            hwuse = []
            for i, w in enumerate(gw(g)):
                dep = add(state[g - 1][i], {'one': cs[g][i]}, mod=True)
                hwdecl.append(f"(hw{w[1:]} : {w} = p17 ({lc_expr(dep)}))")
                hwuse.append(f"hw{w[1:]}")
            lines.append(
                f"theorem spec{g}_step {pub_decl} {adecl(step_args)}\n"
                f"    (hprev : {spec_call(g - 1)} = {st_call(g - 1)}) {' '.join(hwdecl)} :\n"
                f"    {spec_call(g)} = {st_call(g)} := by\n"
                f"  unfold spec{g}\n  rw [hprev]\n")
            if is_full(g):
                lines.append(f"  exact round{g}_eq {ause(state_args(g - 1))} {ause(gw(g))} {' '.join(hwuse)}\n\n")
            else:
                lines.append(f"  exact round{g}_eq {ause(state_args(g - 1))} {gw(g)[0]} {' '.join(hwuse)}\n\n")

    def emit_state_partial(lines, g):
        prev = g - 1
        args = state_args(g)
        ap = state_args(prev)
        rowargs = [gw(g)[0]] + [f"({s_call(prev, j)} + {flit(cs[g][j])})" for j in range(1, W)]
        for i in range(W):
            lines.append(f"def s{g}_{i} {adecl(args)} : F :=\n  {row_expr(i, rowargs)}\n\n")
        lines.append(f"def st{g} {adecl(args)} : List.Vector F {W} :=\n  vec![{', '.join(f's{g}_{i} {ause(args)}' for i in range(W))}]\n\n")
        dep = add(state[prev][0], {'one': cs[g][0]}, mod=True)
        rhs = lc_expr(state[prev][0])
        dc = dep.get('one', 0) % Order
        sc = state[prev][0].get('one', 0) % Order
        lines.append(
            f"theorem arg{g}_0_eq {adecl(ap)} :\n    {lc_expr(dep)} = {s_call(prev, 0)} + {flit(cs[g][0])} := by\n"
            f"  calc\n    {lc_expr(dep)} = ({rhs}) + {flit(cs[g][0])} := by\n"
            f"      rw [show {flit(dc)} = {flit(sc)} + {flit(cs[g][0])} from by exact (ZMod.natCast_eq_natCast_iff' {(sc + cs[g][0]) % Order} {dc} {MOD}).mpr (by decide)]\n"
            f"      all_goals ring\n    _ = {s_call(prev, 0)} + {flit(cs[g][0])} := by rw [← s{prev}_0_flat]\n\n")
        raw_lanes = [{gw(g)[0]: 1}] + [add(state[prev][j], {'one': cs[g][j]}, mod=False) for j in range(1, W)]
        raw_state = mds(raw_lanes, mod=False)
        var_order = state_args(g)
        for i in range(W):
            raw_expr = lc_expr_raw(raw_state[i], var_order)
            red = lc_expr(state[g][i])
            rwshows = []
            for k in ['one'] + var_order:
                a = raw_state[i].get(k, 0)
                b = state[g][i].get(k, 0) % Order
                if a == 0 and b == 0:
                    continue
                if a % Order != b:
                    raise AssertionError((g, i, k, a % Order, b))
                if a != b:
                    rwshows.append(f"show ({a} : F) = ({b} : F) from by exact (ZMod.natCast_eq_natCast_iff' {a} {b} {MOD}).mpr (by decide)")
            rwline = ("\n      rw [" + ", ".join(rwshows) + "]") if rwshows else ""
            lines.append(
                f"theorem s{g}_{i}_flat {adecl(args)} :\n    {s_call(g, i)} = {red} := by\n"
                f"  calc\n    {s_call(g, i)} = {raw_expr} := by\n"
                f"      unfold s{g}_{i}\n      rw [{', '.join(f's{prev}_{j}_flat' for j in range(1, W))}]\n"
                f"      unfold {rowfn()}\n      ring\n    _ = {red} := by{rwline}\n      all_goals ring\n\n")
        dep_hw = dep
        hproof = f"(by rw [hw{gw(g)[0][1:]}, arg{g}_0_eq {ause(ap)}]; rfl)"
        lines.append(
            f"theorem round{g}_eq {adecl(ap)} ({gw(g)[0]} : F)\n"
            f"    (hw{gw(g)[0][1:]} : {gw(g)[0]} = p17 ({lc_expr(dep_hw)})) :\n"
            f"    pr{W} ({st_call(prev)}) ({cs_vec(g)}) = st{g} {ause(args)} := by\n"
            f"  exact {pr_eq()} ({st_call(prev)}) ({cs_vec(g)}) {gw(g)[0]} {hproof}\n\n")

    # ===== Base.lean (round 0) =====
    base = [f"import ShielddGnarkFormal.Deployed.{cfg['deployed_bridge']}\n"
            f"import ShielddGnarkFormal.Deployed.{cfg['link']}\n\n", header]
    sumDC = (Dlit + cs[0][0]) % Order
    a2 = sumDC * sumDC % Order
    a4 = a2 * a2 % Order
    a8 = a4 * a4 % Order
    a16 = a8 * a8 % Order
    base.append(
        f"theorem p17_domain_eq :\n    p17 (({Dlit} : F) + ({cs[0][0]} : F)) = {flit(Sval)} := by\n"
        f"  have hx : ({Dlit} : F) + ({cs[0][0]} : F) = {flit(sumDC)} := by\n"
        f"    change ({Dlit + cs[0][0]} : F) = {flit(sumDC)}\n"
        f"    exact (ZMod.natCast_eq_natCast_iff' {Dlit + cs[0][0]} {sumDC} {MOD}).mpr (by decide)\n"
        f"  have h0 : {flit(sumDC)} * {flit(sumDC)} = {flit(a2)} := by\n    change ({sumDC * sumDC} : F) = {flit(a2)}\n    exact (ZMod.natCast_eq_natCast_iff' {sumDC * sumDC} {a2} {MOD}).mpr (by decide)\n"
        f"  have h1 : {flit(a2)} * {flit(a2)} = {flit(a4)} := by\n    change ({a2 * a2} : F) = {flit(a4)}\n    exact (ZMod.natCast_eq_natCast_iff' {a2 * a2} {a4} {MOD}).mpr (by decide)\n"
        f"  have h2 : {flit(a4)} * {flit(a4)} = {flit(a8)} := by\n    change ({a4 * a4} : F) = {flit(a8)}\n    exact (ZMod.natCast_eq_natCast_iff' {a4 * a4} {a8} {MOD}).mpr (by decide)\n"
        f"  have h3 : {flit(a8)} * {flit(a8)} = {flit(a16)} := by\n    change ({a8 * a8} : F) = {flit(a16)}\n    exact (ZMod.natCast_eq_natCast_iff' {a8 * a8} {a16} {MOD}).mpr (by decide)\n"
        f"  have h4 : {flit(a16)} * {flit(sumDC)} = {flit(Sval)} := by\n    change ({a16 * sumDC} : F) = {flit(Sval)}\n    exact (ZMod.natCast_eq_natCast_iff' {a16 * sumDC} {Sval} {MOD}).mpr (by decide)\n"
        f"  rw [hx]\n"
        f"  exact (p17_from_rows {flit(sumDC)} {flit(a2)} {flit(a4)} {flit(a8)} {flit(a16)} {flit(Sval)} h0 h1 h2 h3 h4).symm\n\n")
    emit_state_full(base, 0)
    init = f"vec![{flit(Dlit)}, {spec_param_csv}]"
    hs = ["(by exact p17_domain_eq.symm)"] + [f"(by simpa [add_comm, one_mul] using hw{w[1:]})" for w in gw(0)]
    base.append(
        f"theorem round0_eq {pub_decl} {adecl(gw(0))}\n    "
        + " ".join(f"(hw{w[1:]} : {w} = p17 ({flit(cs[0][i + 1])} + (1 : F) * {spec_params[i]}))" for i, w in enumerate(gw(0)))
        + f" :\n    fr{W} {init} ({cs_vec(0)}) = st0 {ause(gw(0))} := by\n"
        f"  exact {fr_eq()} {init} ({cs_vec(0)}) {Sexpr} {ause(gw(0))} {' '.join(hs)}\n\n")
    emit_spec_def(base, 0)
    emit_spec_eq(base, 0)
    base.append(footer)
    (OUT / "Base.lean").write_text("".join(base))

    # ===== leading full rounds 1..first_partial-1 =====
    for g in range(1, first_partial):
        prev_imp = "Base" if g == 1 else f"Round{g - 1:02d}"
        lines = [f"import ShielddGnarkFormal.Deployed.{leaf}.{prev_imp}\n\n", header]
        emit_state_full(lines, g)
        emit_arg_lemmas_full(lines, g)
        emit_round_eq_full(lines, g)
        emit_spec_def(lines, g)
        emit_spec_eq(lines, g)
        lines.append(footer)
        (OUT / f"Round{g:02d}.lean").write_text("".join(lines))

    # ===== partial rounds =====
    for g in range(first_partial, last_partial + 1):
        lines = [f"import ShielddGnarkFormal.Deployed.{leaf}.Round{g - 1:02d}\n\n", header]
        emit_state_partial(lines, g)
        emit_spec_def(lines, g)
        emit_spec_eq(lines, g)
        lines.append(footer)
        (OUT / f"Round{g:02d}.lean").write_text("".join(lines))

    # ===== full tail =====
    lines = [f"import ShielddGnarkFormal.Deployed.{leaf}.Round{tail_start - 1:02d}\n\n", header]
    for g in range(tail_start, NROUNDS):
        args = state_args(g)
        for i in range(W):
            lines.append(f"def s{g}_{i} {adecl(args)} : F :=\n  {row_expr(i, gw(g))}\n\n")
        lines.append(f"def st{g} {adecl(args)} : List.Vector F {W} :=\n  vec![{', '.join(f's{g}_{i} {ause(args)}' for i in range(W))}]\n\n")
        for i in range(W):
            lines.append(f"theorem s{g}_{i}_flat {adecl(args)} :\n    {s_call(g, i)} = {lc_expr(state[g][i])} := by\n  unfold s{g}_{i} {rowfn()}\n  ring\n\n")
        emit_arg_lemmas_full(lines, g)
        emit_round_eq_full(lines, g)
        emit_spec_def(lines, g)
        emit_spec_eq(lines, g)
    lines.append(footer)
    (OUT / "FullTail.lean").write_text("".join(lines))

    # ===== SpecLink: (spec{LAST} ..)[1] = permSpecW domain inputs =====
    speclink = [f"import ShielddGnarkFormal.Deployed.{leaf}.FullTail\n\n", header]
    speclink.append(
        f"theorem spec{LAST}_eq_permSpec {pub_decl} :\n"
        f"    ({spec_call(LAST)})[1] = {cfg['spec']} {cfg['domain_sym']} {pub_use} := by\n"
        f"  unfold {cfg['spec']} {cfg['domain_sym']}\n  rfl\n\n")
    speclink.append(footer)
    (OUT / "SpecLink.lean").write_text("".join(speclink))

    # ===== seg_sound (parse extracted relation) + range composition =====
    ext = (EXTRACTED / f"{stem}.lean").read_text().splitlines()
    ri = next(i for i, l in enumerate(ext) if l.startswith("def relation"))
    seg_args = {}
    seg_bvs = {}
    for l in ext[ri + 1:]:
        m = re.match(r"\s*seg(\d+) (.+?) \(fun (.+?) =>", l)
        if m:
            seg_args[int(m.group(1))] = m.group(2).split()
            seg_bvs[int(m.group(1))] = m.group(3).split()
        elif l.strip().startswith("k "):
            break

    # seg -> its round's hw input expression (the p17 argument)
    # round r's segs are consecutive; the j-th seg of round r reconstructs gw(r)[j].
    round_segs = {}
    for s, r in seg2round.items():
        round_segs.setdefault(r, []).append(s)
    for r in round_segs:
        round_segs[r].sort()

    def seg_hw_expr(s):
        r = seg2round[s]
        j = round_segs[r].index(s)
        w = gw(r)[j]
        if r == 0:
            return f"{flit(cs[0][j + 1])} + (1 : F) * ({spec_inputs[j]})"
        dep = add(state[r - 1][j] if is_full(r) else (state[r - 1][0] if j == 0 else None),
                  {'one': cs[r][j]}, mod=True) if (is_full(r) or j == 0) else None
        # partial rounds only have lane-0 S-box (j==0)
        if not is_full(r):
            dep = add(state[r - 1][0], {'one': cs[r][0]}, mod=True)
        return lc_expr(dep)

    # seg{i}_sound lemmas: reconstruct the i-th deployed 5-row S-box.
    SEG = [f"import ShielddGnarkFormal.Deployed.{cfg['deployed_bridge']}\nimport ShielddGnarkFormal.Deployed.{leaf}.SpecLink\nimport Mathlib.Tactic.LinearCombination\n\n", header]
    bridge_seg_base = cfg.get("seg_lemmas_in_bridge", set())
    for s in sorted(seg_args):
        r = seg2round[s]
        j = round_segs[r].index(s)
        w = gw(r)[j]
        args = seg_args[s]
        bvs = seg_bvs[s]
        # the 5 existential wires of this seg: parse from extracted def
        # (handled generically: unfold + rintro pattern, like seg0_sound)
        SEG.append(
            f"theorem seg{s}_sound {adecl(args)} (k : {' → '.join(['F'] * len(bvs))} → Prop) :\n"
            f"    {NS}.seg{s} {ause(args)} k →\n"
            f"      ∃ {w} : F, {w} = p17 ({seg_hw_expr(s)}) ∧ k {ause(bvs)} := by\n"
            f"  unfold {NS}.seg{s}\n"
            f"  rintro ⟨v0, v1, v2, v3, {w}, h0, h1, h2, h3, h4, hk⟩\n"
            f"  refine ⟨{w}, ?_, hk⟩\n"
            f"  have h0' : ({seg_hw_expr(s)}) * ({seg_hw_expr(s)}) = v0 := by linear_combination h0\n"
            f"  have h1' : v0 * v0 = v1 := by linear_combination h1\n"
            f"  have h2' : v1 * v1 = v2 := by linear_combination h2\n"
            f"  have h3' : v2 * v2 = v3 := by linear_combination h3\n"
            f"  have h4' : v3 * ({seg_hw_expr(s)}) = {w} := by linear_combination h4\n"
            f"  exact p17_from_rows _ _ _ _ _ _ h0' h1' h2' h3' h4'\n\n")
    SEG.append(footer)
    (OUT / "SegSound.lean").write_text("".join(SEG))

    # ===== range composition + relation_sound_permSpec =====
    round_last_seg = {}
    for s, r in seg2round.items():
        round_last_seg[r] = max(round_last_seg.get(r, -1), s)

    def hw_round_names(r):
        return [f"hw{w[1:]}" for w in gw(r)]

    def spec_step_line(r):
        if r == 0:
            return f"  have hSpec0 := spec0_eq {spec_in_use} {ause(gw(0))} {' '.join(hw_round_names(0))}\n"
        step_args = list(dict.fromkeys(state_args(r - 1) + state_args(r)))
        return f"  have hSpec{r} := spec{r}_step {spec_in_use} {ause(step_args)} hSpec{r - 1} {' '.join(hw_round_names(r))}\n"

    RB = [f"import ShielddGnarkFormal.Deployed.{leaf}.SegSound\n\n", header]
    for R, segs in enumerate(RANGES):
        first, last = segs[0], segs[-1]
        g0 = seg2round[first]
        glast = seg2round[last]
        entry = seg_args[first]
        exitw = seg_bvs[last]
        arity = " → ".join(["F"] * len(exitw)) + " → Prop"
        sig = f"theorem range{R}_sound {rel_decl}"
        if g0 != 0:
            sig += " " + " ".join(f"({v} : F)" for v in entry)
        sig += f" (k : {arity})"
        if g0 != 0:
            sig += f"\n    (hSpec{g0 - 1} : spec{g0 - 1} {spec_in_use} = st{g0 - 1} {ause(entry)})"
        chain = [f"{NS}.seg{i} {ause(seg_args[i])} (fun {ause(seg_bvs[i])} =>" for i in segs]
        nested = "\n      ".join(chain) + f"\n      k {ause(exitw)}" + ")" * len(segs)
        sig += f"\n    (h : {nested}) :"
        concl = f"\n    ∃ {ause(exitw)} : F, spec{glast} {spec_in_use} = st{glast} {ause(exitw)} ∧ k {ause(exitw)} := by\n"
        RB.append(sig + concl)
        for i in segs:
            nw = seg_bvs[i][-1]
            RB.append(f"  have h{i} := seg{i}_sound {ause(seg_args[i])} _ h\n")
            RB.append(f"  rcases h{i} with ⟨{nw}, hw{nw[1:]}, h⟩\n")
            if i == round_last_seg[seg2round[i]]:
                RB.append(spec_step_line(seg2round[i]))
        RB.append(f"  exact ⟨{', '.join(exitw)}, hSpec{glast}, h⟩\n\n")

    # public composition: walk ranges, then close output = permSpec via st{LAST}_1
    final_exit = seg_bvs[RANGES[-1][-1]]
    k_arity = " → ".join(["F"] * len(final_exit)) + " → Prop"
    RB.append(
        f"theorem relation_sound_permSpec {rel_decl} (k : {k_arity}) :\n"
        f"    {NS}.relation {rel_use} k →\n"
        f"      ∃ {ause(final_exit)} : F, k {ause(final_exit)} ∧\n"
        f"        s{LAST}_1 {ause(state_args(LAST))} = {cfg['spec']} {cfg['domain_sym']} {spec_in_use} := by\n"
        f"  unfold {NS}.relation\n  intro h\n")
    for R, segs in enumerate(RANGES):
        first, last = segs[0], segs[-1]
        g0 = seg2round[first]
        glast = seg2round[last]
        entry = seg_args[first]
        exitw = seg_bvs[last]
        if g0 == 0:
            RB.append(f"  have r{R} := range{R}_sound {rel_use} _ h\n")
        else:
            RB.append(f"  have r{R} := range{R}_sound {rel_use} {ause(entry)} _ hSpec{g0 - 1} h\n")
        RB.append(f"  rcases r{R} with ⟨{', '.join(exitw)}, hSpec{glast}, h⟩\n")
    RB.append(f"  refine ⟨{', '.join(final_exit)}, h, ?_⟩\n")
    RB.append(f"  rw [← spec{LAST}_eq_permSpec {spec_in_use}]\n")
    RB.append(f"  rw [hSpec{LAST}]\n")
    RB.append(f"  simp [st{LAST}]\n\n")
    RB.append("#print axioms relation_sound_permSpec\n\n")
    RB.append(footer)
    (OUT / "SemanticBridge.lean").write_text("".join(RB))

    print(f"[{cfgname}] emitted Base + {first_partial - 1} leading + "
          f"{last_partial - first_partial + 1} partial + FullTail + SpecLink + SegSound "
          f"into {OUT.relative_to(ROOT)}")
    return cfg, seg_args, seg_bvs, seg2round, RANGES, state_args, state, gw, pub_use, pub_decl


if __name__ == "__main__":
    name = sys.argv[1] if len(sys.argv) > 1 else "nullifier"
    build(name)
