#!/usr/bin/env python3
"""Generate the compress_to_field deployed-slice bridge theorem.

Mirrors the rvk model: take every rematerialized deployed row (the `step{k}`
conclusion) as an explicit hypothesis over `Extracted.DecafCompressToField.F`,
assemble the extracted `circuit`, and apply `circuit_sound` to land `Relation`.

The two `canonicalFqBitsGadget` blocks are discharged by the reusable
`block1_canonical` / `block2_canonical` lemmas (CompressBlock1Chain.lean): each
takes the block's 253 booleanity rows + 166 comparison rows + ~86 thread rows
(all already present as bridge hypotheses `h{k}`) plus the delegated wide
recomposition row (`hrec{N}`, Workstream-H premise) and yields the gadget. The
inter-block continuation (gates 38..44) and the final select+eq (gates 46..48)
are wired from steps 788/789/790 and 1551.
"""
import re, sys, pathlib

ROOT = pathlib.Path(__file__).resolve().parents[1]
STEPF = ROOT / "ShielddGnarkFormal/Extracted/Deployed/DecafCompressToField1046_c7b7ae.lean"
OUT = ROOT / "ShielddGnarkFormal/Deployed/CompressToField/Bridge.lean"

ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
def pmBit(i): return ((ORDER - 1) >> i) & 1 == 1

def parse_steps():
    src = STEPF.read_text()
    steps = {}
    for m in re.finditer(
        r"theorem step(\d+) \(rho : Nat → F\)\n\s*\(hraw : (.*?)\) :\n\s*(.*?) := by",
        src, re.S):
        steps[int(m.group(1))] = (m.group(2).strip(), m.group(3).strip())
    return steps

def classify(concl):
    c = concl.replace(" ", "")
    if re.search(r"\*\(\(1:F\)\*rho0\+\(-1:F\)\*rho\d+\)=\(\(0:F\)\*rho0\)$", c):
        return "bool"
    if re.search(r"\+\(-1:F\)\*rho\d+\)=\(\(0:F\)\*rho0\)$", c) and c.count("rho") >= 3:
        return "cmp"
    return "struct"

# ---- block flag-ladder reconstruction (mirrors genproofs.build_block) ----
def build_block(base, In, steps):
    mul_by_inputs = {}
    for k, (_, c) in steps.items():
        cc = c.replace(" ", "")
        mm = re.match(r"\(\(1:F\)\*rho(\d+)\)\*\(\(1:F\)\*rho(\d+)\)=\(\(1:F\)\*rho(\d+)\)$", cc)
        if mm:
            A, B, C = int(mm.group(1)), int(mm.group(2)), int(mm.group(3))
            mul_by_inputs[frozenset((A, B))] = (k, A, B, C)
    flagwire = {253: None}; threadcert = {}
    for L in range(252, -1, -1):
        if not pmBit(L):
            flagwire[L] = flagwire[L + 1]
        else:
            prev = flagwire[L + 1]; bitw = base + L
            if prev is None:
                flagwire[L] = bitw; threadcert[L] = None
            else:
                st, A, B, C = mul_by_inputs[frozenset((prev, bitw))]
                flagwire[L] = C; threadcert[L] = st
    return flagwire, threadcert

def concl_step_map(steps):
    m = {}
    for k, (_, c) in steps.items():
        m.setdefault(c.strip(), k)
    return m

def cert_steps(base, In, steps, cmap):
    """Ordered bridge hyp indices matching block{N}_canonical's parameter order."""
    flagwire, threadcert = build_block(base, In, steps)
    out = []
    # 253 booleanity rows
    for j in range(253):
        w = base + j
        c = f"((1 : F) * rho {w}) * ((1 : F) * rho 0 + (-1 : F) * rho {w}) = ((0 : F) * rho 0)"
        out.append(cmap[c])
    # comparison rows for false positions
    for j in range(253):
        if not pmBit(j):
            w = base + j; fw = flagwire[j + 1]
            c = f"((1 : F) * rho {w}) * ((1 : F) * rho 0 + (-1 : F) * rho {w} + (-1 : F) * rho {fw}) = ((0 : F) * rho 0)"
            out.append(cmap[c])
    # thread rows for true positions with a multiply cert
    for Lv in range(253):
        if pmBit(Lv) and threadcert.get(Lv) is not None:
            fw1 = flagwire[Lv + 1]; fw0 = flagwire[Lv]; bw = base + Lv
            c = f"((1 : F) * rho {fw1}) * ((1 : F) * rho {bw}) = ((1 : F) * rho {fw0})"
            out.append(cmap[c])
    return out, flagwire

MODLIT = "8444461749428370424248824938781546531375899335154063827935233455917409236019"
ZETA = "2841681278031794617739547238867782961338435681360110683443920362658525667816"
NZETA = "5602780471396575806509277699913763570037463653793953144491313093258883571225"
SIMP_AR = "simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, GatesDef.sub]"
SIMP_EQ = "simp only [Gates, GatesGnark9, GatesGnark8, GatesDef.eq]"

def emit_body(L, steps, cmap):
    def step(k):
        # Narrow binding-gate row: the deployed constraint and the extracted gate
        # are the same equation up to orientation, so exactly one of ±h{k} closes
        # it. No `ring`/`rfl` fallback — if neither sign matches, that is a real
        # rematerialization/extraction mismatch and must fail loud, not be masked.
        return [f"first | ({SIMP_AR}; linear_combination h{k}) | ({SIMP_AR}; linear_combination -h{k})"]
    def rfl():
        return [f"first | rfl | ({SIMP_AR}; ring) | ({SIMP_AR})"]
    def eqs(k):
        return [f"first | ({SIMP_EQ}; rw [hrho0] at h{k}; linear_combination h{k}) | ({SIMP_EQ}; rw [hrho0] at h{k}; linear_combination -h{k})"]
    g12 = [
        "have h215 : rho 215 = rho 210 := by linear_combination h0 - h6",
        "rw [h215] at h7", SIMP_AR, "rw [modlit_eq]",
        "first | linear_combination -h7 | linear_combination h7",
    ]
    isbool = [
        "show GatesDef.is_bool (rho 217)",
        "exact is_bool_of_row _ (by rw [hrho0] at h8; linear_combination h8)",
    ]
    iszero = [
        "show GatesDef.is_zero (rho 216) (rho 219)",
        "refine is_zero_of_hint (rho 216) (rho 220) (rho 219) ?_ ?_",
        "· rw [hrho0] at h9; first | linear_combination -h9 | linear_combination h9",
        "· rw [hrho0] at h10; first | linear_combination h10 | linear_combination -h10",
    ]
    select = [
        "show GatesDef.select (rho 219) 1 (rho 216) (rho 216 + rho 221)",
        "refine select_of_row (rho 219) 1 (rho 216) (rho 216 + rho 221) ?_ ?_",
        "· exact is_bool_of_row _ (by rw [hrho0] at h18; linear_combination h18)",
        "· rw [hrho0] at h11; first | linear_combination -h11 | linear_combination h11",
    ]
    inv = [
        "show GatesDef.inv (rho 216 + rho 221) (rho 222)",
        "exact inv_of_mul (rho 216 + rho 221) (rho 222) (by rw [hrho0] at h12; first | linear_combination h12 | linear_combination -h12)",
    ]
    def andg(a, b, out, k):
        return [
            f"show GatesDef.and ({a}) ({b}) (rho {out})",
            f"refine and_of_row ({a}) ({b}) (rho {out}) ?_ ?_ ?_",
            "· exact is_bool_of_row _ (by rw [hrho0] at h16; linear_combination h16)",
            "· exact is_bool_of_row _ (by rw [hrho0] at h18; linear_combination h18)",
            f"· rw [hrho0] at h{k}; first | linear_combination h{k} | linear_combination -h{k}",
        ]

    # block cert resolution
    b1_certs, fw1 = cert_steps(231, 230, steps, cmap)
    b2_certs, fw2 = cert_steps(573, 572, steps, cmap)
    b1_bool0 = cmap["((1 : F) * rho 231) * ((1 : F) * rho 0 + (-1 : F) * rho 231) = ((0 : F) * rho 0)"]
    b2_bool0 = cmap["((1 : F) * rho 573) * ((1 : F) * rho 0 + (-1 : F) * rho 573) = ((0 : F) * rho 0)"]
    b1_args = " ".join(f"h{k}" for k in b1_certs)
    b2_args = " ".join(f"h{k}" for k in b2_certs)

    # getElem lemma for ofFn head
    def head_eq(base):
        return (f"(by simp only [List.Vector.getElem_def, List.Vector.toList_ofFn, "
                f"List.getElem_ofFn]; norm_num : "
                f"(List.Vector.ofFn (fun i : Fin 253 => rho ({base} + i.val)))[0] = rho {base})")

    # The two-block discharge (replaces the old sorry). This is the final bullet
    # = the goal `canonicalFqBitsGadget (rho 230) <cont1>`.
    block = []
    block.append(f"refine block1_canonical rho {b1_args} hrho0 _ hrec1 ?_")
    # goal now: cont1 (ofFn rho (231+·))
    block.append(f"have hb1head : (List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val)))[0] = rho 231 := by")
    block.append(f"  simp only [List.Vector.getElem_def, List.Vector.toList_ofFn, List.getElem_ofFn]")
    block.append("refine ⟨(1 : F) - rho 231, ?_, Gates.neg (rho 230), rfl, rho 570 - rho 230, ?_,")
    block.append("  (rho 570 - rho 230) - rho 213, rfl, (" + MODLIT + " : F) * rho 218, rfl,")
    block.append("  rho 571, ?_, rho 572, ?_, ?_⟩")
    # hg38 : (1 - rho231) = Gates.sub 1 g37[0]
    block.append(f"· {SIMP_AR}; rw [hb1head]")
    # hsel1 : select (1-rho231) (rho230) (neg rho230) (rho570-rho230)
    block.append("· refine select_of_row ((1 : F) - rho 231) (rho 230) (Gates.neg (rho 230)) (rho 570 - rho 230) ?_ ?_")
    block.append(f"  · exact is_bool_of_row _ (by rw [hrho0] at h{b1_bool0}; linear_combination h{b1_bool0})")
    block.append(f"  · {SIMP_AR[:-1]}, GatesDef.neg]; rw [hrho0] at h788; first | linear_combination h788 | linear_combination -h788")
    # hg43 : rho571 = mul (MODLIT*rho218) ((rho570-rho230)-rho213)  [step789 has no rho0]
    block.append(f"· {SIMP_AR}; rw [modlit_eq]; first | linear_combination h789 | linear_combination -h789")
    # hg44 : rho572 = mul rho571 rho17  [step790 has no rho0]
    block.append(f"· {SIMP_AR}; first | linear_combination h790 | linear_combination -h790")
    # habs2 : canonicalFqBitsGadget (rho 572) cont2
    block.append(f"· refine block2_canonical rho {b2_args} hrho0 _ hrec2 ?_")
    block.append(f"  have hb2head : (List.Vector.ofFn (fun i : Fin 253 => rho (573 + i.val)))[0] = rho 573 := by")
    block.append(f"    simp only [List.Vector.getElem_def, List.Vector.toList_ofFn, List.getElem_ofFn]")
    block.append("  refine ⟨(1 : F) - rho 573, ?_, Gates.neg (rho 572), rfl, rho 912 - rho 572, ?_, ?_, trivial⟩")
    block.append(f"  · {SIMP_AR}; rw [hb2head]")
    block.append("  · refine select_of_row ((1 : F) - rho 573) (rho 572) (Gates.neg (rho 572)) (rho 912 - rho 572) ?_ ?_")
    block.append(f"    · exact is_bool_of_row _ (by rw [hrho0] at h{b2_bool0}; linear_combination h{b2_bool0})")
    block.append(f"    · {SIMP_AR[:-1]}, GatesDef.neg]; rw [hrho0] at h1551; first | linear_combination h1551 | linear_combination -h1551")
    block.append(f"  · {SIMP_EQ}")

    seq = [
        ("rho 210", step(0)), ("rho 211", step(1)),
        ("rho 211 - rho 210", rfl()), (f"(3021 : F) * rho 210", rfl()),
        ("rho 212", step(2)), ("(1 : F) + rho 212", rfl()),
        (None, eqs(3)),
        ("rho 213", step(4)), ("rho 17 + rho 213", rfl()), ("rho 17 - rho 213", rfl()),
        ("rho 214", step(5)), (f"rho 214 * ({MODLIT} : F)", rfl()),
        ("rho 216", g12),
        (None, isbool),
        ("rho 219", iszero), ("rho 216 + rho 221", select), ("rho 222", inv),
        ("rho 223", step(13)), ("rho 224", step(14)), (None, eqs(15)),
        ("(1 : F) - rho 217", rfl()), ("(1 : F) - rho 219", rfl()),
        ("rho 225", andg("(1 : F) - rho 217", "rho 219", 225, 17)),
        ("rho 226", andg("(1 : F) - rho 217", "(1 : F) - rho 219", 226, 19)),
        ("rho 223 - rho 222", rfl()), ("rho 227", step(20)), (None, eqs(21)),
        ("rho 228", step(22)), (None, eqs(23)),
        (f"({ZETA} : F) * rho 222", rfl()),
        (f"rho 223 - ({ZETA} : F) * rho 222", rfl()),
        ("rho 229", [SIMP_AR, "rw [zeta_eq]", "first | linear_combination h24 | linear_combination -h24"]), (None, eqs(25)),
        ("rho 217 + rho 225", rfl()), ("rho 217 + rho 225 + rho 226", rfl()), (None, eqs(26)),
        ("rho 230", step(27)),
        (None, block),
    ]
    L.append(f"  apply circuit_sound (rho 17) (rho 18) (rho 217) (rho 218) (rho 912 - rho 572)")
    tup = []
    for wit, _ in seq:
        if wit is not None:
            tup.append(wit); tup.append("?_")
        else:
            tup.append("?_")
    L.append("  refine ⟨" + ", ".join(tup) + "⟩")
    for _, proof in seq:
        L.append("  · " + proof[0])
        for ln in proof[1:]:
            L.append("    " + ln)

def main():
    steps = parse_steps()
    cmap = concl_step_map(steps)
    ks = sorted(steps)
    by = {"bool": [], "cmp": [], "struct": []}
    for k in ks:
        by[classify(steps[k][1])].append(k)
    print(f"steps={len(ks)} struct={len(by['struct'])} bool={len(by['bool'])} cmp={len(by['cmp'])}",
          file=sys.stderr)

    L = []
    L.append("import ShielddGnarkFormal.CompressToFieldBridge")
    L.append("import ShielddGnarkFormal.CompressDeployedGadgets")
    L.append("import ShielddGnarkFormal.CompressBlock1Chain")
    L.append("")
    L.append("set_option linter.unusedVariables false")
    L.append("set_option linter.unreachableTactic false")
    L.append("set_option maxRecDepth 1000000")
    L.append("set_option maxHeartbeats 20000000")
    L.append("")
    L.append("namespace Shieldd.GnarkFormal.Extracted.DecafCompressToField")
    L.append("")
    L.append("open Shieldd.GnarkFormal.DeployedGadgets")
    L.append("attribute [-instance] ZMod.instField")
    L.append("local instance : CommRing F := ZMod.commRing _")
    L.append("open scoped Shieldd.GnarkFormal.ChoiceFreeZMod")
    L.append("")
    L.append(f"private theorem modlit_eq : ({MODLIT} : F) = -3022 := by decide")
    L.append(f"private theorem zeta_eq : ({ZETA} : F) = -({NZETA} : F) := by decide")
    L.append("")
    L.append("variable [Fact (Nat.Prime Order)]")
    L.append("")
    L.append("/-- Deployed-slice soundness for `decaf.compress_to_field` (shape c7b7ae). -/")
    L.append("theorem inst_compress_deployed_sound (rho : Nat → F)")
    for k in ks:
        L.append(f"    (h{k} : {steps[k][1]})")
    # delegated wide little-endian recomposition rows (Workstream-H premises)
    L.append("    (hrec1 : recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => rho (231 + i.val))) = rho 230)")
    L.append("    (hrec2 : recover_binary_zmod' (List.Vector.ofFn (fun i : Fin 253 => rho (573 + i.val))) = rho 572)")
    L.append("    (hrho0 : rho 0 = 1)")
    L.append("    : Relation (rho 17) (rho 18) (rho 912 - rho 572) := by")
    emit_body(L, steps, cmap)
    L.append("")
    L.append("end Shieldd.GnarkFormal.Extracted.DecafCompressToField")
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text("\n".join(L) + "\n")
    print(f"wrote {OUT} ({len(L)} lines)", file=sys.stderr)

if __name__ == "__main__":
    main()
