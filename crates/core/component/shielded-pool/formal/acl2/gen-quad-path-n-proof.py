#!/usr/bin/env python3
"""Generate quad-path-N-proof.lisp from the gadget-quad-path-N R1CS export.

Depth-N VerifyQuadPath = N stacked quad-Merkle layers; each layer = position
decode + 4 Selects + one Poseidon377Hash4(Domain). gnark materializes NO parent
wire between layers: layer L's hash output is the linear extraction
`Sum coeff_i * lane_i` over that layer's 5 final-round state lanes, and gnark
inlines that extraction directly into layer L+1's select-product `:b` vectors
(verified in the export). The top layer's extraction is bound to ROOT by the
final constraint.

Clean nested proof (generalizes the certified depth-1 proof): keep each
intermediate layer's 5 final-lane wires as bridge variables and prove a
per-layer conjunct

  parent_L_expr = poseidon377-hash4-r1cs-axe(DOMAIN, child0_L .. child3_L)

where parent_L_expr is the (signed-normalized) extraction lincomb over layer L's
final lanes (= ROOT for the top layer), and child_k_L = build_lincomb(wire part
of layer L's round-0 input-lane-(k+1) S-box :a). For L>0 the children reference
that layer's select-product wires, which `:subst` resolves to
`isIndex_k * (parent_{L-1}_expr - sibling) + sibling` -- closing the nesting
through the kept bridge lanes of layer L-1. Everything except inputs and the
intermediate bridge lanes is eliminated.

Per-layer chains (71 each) + the top-layer final-output orientation helper are
emitted exactly as in gen-quad-path-1-proof.py. Layers and S-boxes are detected
structurally (no hard-coded offsets) so the same generator serves any depth.

Chain convention identical to gen-hash4-proof.py: multiplicative coeffs
signed-normalized, additive round constants raw/positive, lincomb constant-first
then wire-terms reverse-export-order, right-folded with `add`.

Usage: gen-quad-path-n-proof.py <depth>   (depth in {2,4,16})
"""
import re
import sys

PRIME = 8444461749428370424248824938781546531375899335154063827935233455917409239041
HALF = PRIME // 2
P = "*poseidon377-prime*"
# Poseidon377 t=5 output-extraction coefficients (the MDS output row), as they
# appear raw/unsigned in the export; used to locate each layer's 5 final lanes.
OUT_COEFFS = {
    7037051457856975353540687448984622109479916112628386523279361213264507699201,
    7238110070938603220784707090384182741179342287274911852515914390786350776321,
    7388904030749824121217721821433853214953911918259805849443329273927733084161,
    4691367638571316902360458299323081406319944075085591015519574142176338466134,
    7600015574485533381823942444903391878238309401638657445141710110325668315137,
}
N_INPUT_WIRES = None  # set from manifest: inputs occupy wires 1..N_INPUT_WIRES


def signed(k):
    k = int(k)
    return k - PRIME if k > HALF else k


def parse_vec(s):
    pairs = re.findall(r"\(\s*(-?\d+)\s+([A-Za-z0-9\-]+)\s*\)", s)
    return [(int(c), w) for c, w in pairs]


def term_of_pair(coeff, wire):
    if wire == "1":
        return str(int(coeff))
    if coeff == 1:
        return wire
    return f"(pfield::mul {signed(coeff)} {wire} {P})"


def build_lincomb(vec):
    const = [p for p in vec if p[1] == "1"]
    wires = [p for p in vec if p[1] != "1"]
    elems = [term_of_pair(c, w) for c, w in const]
    for c, w in reversed(wires):
        elems.append(term_of_pair(c, w))
    if not elems:
        return "0"
    term = elems[-1]
    for e in reversed(elems[:-1]):
        term = f"(pfield::add {e} {term} {P})"
    return term


def detect_sbox_starts(cons):
    """An S-box is 4 squarings (:a==:b) then a final mul; return the start index
    of each S-box in export order."""
    starts = []
    for i in range(len(cons) - 4):
        if all(cons[j][0] == cons[j][1] for j in range(i, i + 4)) \
                and cons[i + 4][0] != cons[i + 4][1]:
            if not starts or i >= starts[-1] + 5:
                starts.append(i)
    return starts


def extraction_lincomb(cons, lane_wires):
    """Build the signed output-extraction lincomb over the given 5 lane wires,
    reading the exact coefficients from the constraint that carries them."""
    laneset = set(lane_wires)
    for a, b, c in cons:
        for v in (a, b, c):
            pairs = [(co, w) for co, w in v if w in laneset and co in OUT_COEFFS]
            if len(pairs) == 5:
                return build_lincomb(pairs)
    raise RuntimeError(f"no extraction lincomb found for {lane_wires}")


def main():
    depth = int(sys.argv[1])
    # "top" mode: prove only the top conjunct ROOT = hash4(DOMAIN, children_top)
    # and eliminate ALL internal wires (no kept bridge lanes) — the direct
    # generalization of the certified depth-1 recipe. The inner layers' hashes
    # resolve through :subst into the children's `current`, appearing in unfolded
    # (permutation-arithmetic) form rather than as nested hash4 symbols. Sound
    # (ties ROOT to LEAFHASH through the exact circuit arithmetic), just not
    # pretty-nested. "nested" mode keeps bridge lanes + per-layer conjuncts.
    mode = sys.argv[2] if len(sys.argv) > 2 else "nested"
    tag = f"GADGET-QUAD-PATH-{depth}"
    export = f"generated/gadget-quad-path-{depth}-r1cs.lisp"
    out = f"quad-path-{depth}-proof.lisp" if mode == "nested" \
        else f"quad-path-{depth}-top-proof.lisp"

    text = open(export).read()
    # input wires: indices 1.. up to the last "secret"/"public" before internals
    manifest = re.findall(r':index (\d+) :name "[^"]+" :symbol ([A-Za-z0-9-]+) :visibility "(\w+)"', text)
    input_wires = [sym for idx, sym, vis in manifest if vis in ("public", "secret")]
    n_input = len(input_wires)

    body = text.split(f"*{tag}-constraints*", 1)[1]
    blocks = re.findall(r":a\s*'\((.*?)\)\)\s*:b\s*'\((.*?)\)\)\s*:c\s*'\((.*?)\)\)", body, re.S)
    cons = [(parse_vec("(" + a + ")"), parse_vec("(" + b + ")"), parse_vec("(" + c + ")"))
            for a, b, c in blocks]

    starts = detect_sbox_starts(cons)
    assert len(starts) % 71 == 0, len(starts)
    n_layers = len(starts) // 71
    assert n_layers == depth, (n_layers, depth)

    # per-layer S-box starts
    layers = [starts[L * 71:(L + 1) * 71] for L in range(n_layers)]

    # final lanes of each layer: the 5 lane wires carried by the output
    # extraction. Top layer -> last constraint's :b; intermediate L -> the
    # extraction inlined into layer L+1's selects. We find them by scanning for
    # OUT_COEFFS groups whose wires lie in layer L's S-box output range.
    def layer_wire_range(L):
        lo = layers[L][0]
        hi = layers[L][-1] + 5  # one past last S-box of layer L
        wires = set()
        for s in range(lo, hi):
            for _, w in cons[s][2]:
                if w != "1":
                    wires.add(w)
        return wires

    bridge_lanes = []  # intermediate layers' 5 final lanes (kept vars)
    conjuncts = []     # (parent_expr_or_ROOT, [child0..3], is_top)
    top_helper_eout = None

    for L in range(n_layers):
        grp = layers[L]
        # children: round-0 input lanes are S-boxes grp[1..4] (grp[0]=domain lane)
        children = []
        for k in range(4):
            sb = grp[k + 1]
            wires = [pr for pr in cons[sb][0] if pr[1] != "1"]
            children.append(build_lincomb(wires))

        if L == n_layers - 1:
            # top layer: ROOT = Sum coeff*lanes (last constraint). orientation helper.
            out_con = cons[-1]
            top_helper_eout = build_lincomb(out_con[1])
            conjuncts.append(("ROOT", children, True))
        else:
            # Layer L's parent extraction is the one gnark inlines into layer
            # L+1's select block (the gap between layer L's last S-box and layer
            # L+1's first S-box). OUT_COEFFS recur in every internal MixLayer, so
            # the search MUST be confined to that gap to hit the true final lanes.
            gap_lo = layers[L][-1] + 5
            gap_hi = layers[L + 1][0]
            lane_wires = None
            for ci in range(gap_lo, gap_hi):
                for v in cons[ci]:
                    pairs = [(co, w) for co, w in v if co in OUT_COEFFS]
                    if len(pairs) == 5:
                        lane_wires = [w for co, w in pairs]
                        break
                if lane_wires:
                    break
            assert lane_wires, f"layer {L} lanes not found in gap [{gap_lo},{gap_hi})"
            if mode == "nested":
                bridge_lanes.extend(lane_wires)
                parent_expr = extraction_lincomb(cons, lane_wires)
                conjuncts.append((parent_expr, children, False))

    # all S-box chains, in export order
    chains = []
    for L, grp in enumerate(layers):
        for s in grp:
            c0, c1, c2, c3, c4 = cons[s:s + 5]
            E = build_lincomb(c0[0])
            chains.append((len(chains), E,
                           c0[2][0][1], c1[2][0][1], c2[2][0][1], c3[2][0][1], c4[2][0][1]))

    pfx = f"qpn{depth}"
    with open(out, "w") as f:
        w = f.write
        w(f"; Semantic Axe proof target for the compiled gnark depth-{depth} VerifyQuadPath gadget.\n")
        w(f"; Generated by gen-quad-path-n-proof.py from {export}; do not edit by hand.\n")
        w(f"; Nested spec: per-layer parent_L = poseidon377-hash4-r1cs-axe(DOMAIN, child0..3),\n")
        w(f"; intermediate layers' 5 final lanes kept as bridge vars ({n_layers} layers, {len(chains)} S-boxes).\n\n")
        w('(in-package "R1CS")\n\n')
        w(f'(include-book "generated/gadget-quad-path-{depth}-r1cs")\n')
        w('(include-book "generated/poseidon377-spec")\n')
        w('(include-book "kestrel/prime-fields/top" :dir :system)\n\n')

        w("; BEGIN COEFFICIENT NORMALIZERS\n")
        w(f"(defthmd {pfx}-mul-constant-normalize-to-signed\n")
        w("  (implies (and (syntaxp (quotep k))\n")
        w("                (integerp k)\n")
        w("                (< (/ *poseidon377-prime* 2) k)\n")
        w("                (< k *poseidon377-prime*))\n")
        w("           (equal (pfield::mul k x *poseidon377-prime*)\n")
        w("                  (pfield::mul (+ k (- *poseidon377-prime*)) x *poseidon377-prime*)))\n")
        w("  :hints ((\"Goal\" :use (:instance pfield::mul-of-+-same-arg1-arg2\n")
        w("                                  (p *poseidon377-prime*)\n")
        w("                                  (x (+ k (- *poseidon377-prime*)))\n")
        w("                                  (y x)))))\n")
        w(f"(defun {pfx}-coeff-normalization-rules ()\n")
        w("  (declare (xargs :guard t))\n")
        w(f"  '({pfx}-mul-constant-normalize-to-signed))\n")
        w("; END COEFFICIENT NORMALIZERS\n\n")

        for (i, E, w1, w2, w3, w4, w5) in chains:
            w(f"(defthm {pfx}-pow17-chain-{i}\n")
            w("  (implies (and\n")
            w(f"                (equal (pfield::mul {E} {E} {P}) {w1})\n")
            w(f"                (equal (pfield::mul {w1} {w1} {P}) {w2})\n")
            w(f"                (equal (pfield::mul {w2} {w2} {P}) {w3})\n")
            w(f"                (equal (pfield::mul {w3} {w3} {P}) {w4})\n")
            w(f"                (equal (pfield::mul {w4} {E} {P}) {w5})\n")
            w("                )\n")
            w(f"           (equal (poseidon377-pow17 {E})\n")
            w(f"                  {w5}))\n")
            w("  :hints ((\"Goal\" :in-theory (theory 'minimal-theory)\n")
            w("                  :expand ((:free (x) (poseidon377-pow17 x))))))\n\n")

        w(f"(defthm {pfx}-final-output-root-left\n")
        w("  (implies\n")
        w(f"   (equal\n    {top_helper_eout}\n    ROOT)\n")
        w("   (equal\n")
        w(f"    (equal\n     ROOT\n     {top_helper_eout})\n")
        w("    t)))\n\n")

        w('(include-book "kestrel/axe/r1cs/top" :dir :system)\n\n')
        w("(local\n")
        w(f" (lift-r1cs *{tag.lower()}-proof-lifted*\n")
        w(f"            *{tag}-vars*\n")
        w(f"            *{tag}-constraints*\n")
        w(f"            *{tag}-prime*\n")
        w('            :package "R1CS"))\n\n')

        # nested conjunction spec
        spec_lines = []
        for (parent, children, is_top) in conjuncts:
            lhs = "ROOT" if is_top else parent
            spec_lines.append(
                f"  (equal {lhs}\n"
                f"         (poseidon377-hash4-r1cs-axe DOMAIN\n"
                f"           {children[0]}\n"
                f"           {children[1]}\n"
                f"           {children[2]}\n"
                f"           {children[3]}))")
        w("(verify-r1cs\n")
        w(f" *{tag.lower()}-proof-lifted*\n")
        w(" (and\n")
        w("\n".join(spec_lines) + ")\n")
        w(f" *{tag}-prime*\n")
        w(" :tactic '(:seq (:rep :rewrite) :subst)\n")
        w(f" :rule-lists '((poseidon377-hash4-r1cs-axe)\n")
        w(f"               (({pfx}-coeff-normalization-rules)\n")
        for (i, *_rest) in chains:
            w(f"                {pfx}-pow17-chain-{i}\n")
        w(f"                {pfx}-final-output-root-left\n")
        w("                pfield::add-of-0-arg1 pfield::add-of-0-arg2\n")
        w("                pfield::mul-of-1-arg1 pfield::mul-of-1-arg2 acl2::equal-same))\n")
        # eliminate all internals EXCEPT the kept bridge lanes; keep inputs + bridges
        keep = input_wires + bridge_lanes
        keep_sexp = " ".join(f"'{k}" for k in keep)
        bridge_sexp = " ".join(f"'{b}" for b in bridge_lanes)
        w(f" :var-ordering (append (set-difference-eq\n")
        w(f"                         (reverse (nthcdr {n_input} *{tag}-vars*))\n")
        w(f"                         (list {bridge_sexp}))\n")
        w(f"                       (list {keep_sexp}))\n")
        w(" :print :brief)\n")

    print(f"wrote {out}: {n_layers} layers, {len(chains)} chains, "
          f"{len(bridge_lanes)} bridge lanes, {len(conjuncts)} conjuncts")


if __name__ == "__main__":
    main()
