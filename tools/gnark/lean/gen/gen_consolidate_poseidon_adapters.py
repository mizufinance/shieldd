#!/usr/bin/env python3
"""Generate consolidate2x1 deployed Poseidon adapter proofs.

The generated Lean files thread deployed `relationPart{k}` rows into the CPS
relations extracted for the Layer-2 Poseidon gadgets.  Statement-hash uses the
full extracted relation; note-commitment intentionally stops before the output
row because the deployed segments contain only the permutation subchain.
"""
import pathlib
import re

HERE = pathlib.Path(__file__).resolve().parent
LEAN = HERE.parent
EXTRACTED = LEAN / "ShielddGnarkFormal/Extracted/Deployed"
CONSOLIDATE = LEAN / "ShielddGnarkFormal/Deployed/Contracts/Consolidate2x1"


def parse_segments(stem):
    text = (EXTRACTED / f"{stem}.lean").read_text()
    out = {}
    pattern = re.compile(
        r"def seg(\d+) \(([^)]*) : F\) \(k : .*?\) : Prop :=\n"
        r"∃ ([^:]+) : F,\n(.*?)(?=\n\ndef seg|\n\ndef relation|\n\nend )",
        re.S,
    )
    for m in pattern.finditer(text):
        i = int(m.group(1))
        binders = m.group(2).split()
        witnesses = m.group(3).split()
        body = m.group(4)
        k_lines = [line.strip() for line in body.splitlines() if line.strip().startswith("k ")]
        if not k_lines:
            raise SystemExit(f"{stem}: seg{i} has no final continuation line")
        cont = k_lines[-1].split()[1:]
        out[i] = {"binders": binders, "witnesses": witnesses, "cont": cont}
    if not out:
        raise SystemExit(f"{stem}: no segments parsed")
    return out


def rho(wire, mapping):
    if wire not in mapping:
        n = int(wire[1:])
        mapped = mapping.get(n, n)
    else:
        mapped = mapping[wire]
    return f"(rho {mapped})"


def arrow_type(n, ftype):
    if n == 0:
        return "Prop"
    return " → ".join([ftype] * n + ["Prop"])


def conj_eq(args, mapping):
    return " ∧ ".join(f"{w} = {rho(w, mapping)}" for w in args) or "True"


def tuple_expr(items):
    return "⟨" + ", ".join(items) + "⟩"


def rcases_parts(n):
    lines = ["  rcases h with ⟨"]
    for start in range(0, n, 8):
        chunk = ", ".join(f"p{i}" for i in range(start, min(start + 8, n)))
        comma = "," if start + 8 < n else ""
        lines.append(f"    {chunk}{comma}")
    lines.append("  ⟩")
    return "\n".join(lines)


def emit_part_helpers(prefix, seg_mod, stem, ns, segments, mapping, start, stop):
    lines = []
    for i in range(start, stop + 1):
        seg = segments[i]
        rows = [f"{seg_mod}.relationRow{j}" for j in range(i * 5, i * 5 + len(seg["witnesses"]))]
        hnames = [f"h{j}" for j in range(len(seg["witnesses"]))]
        lines.extend(
            [
                f"theorem {prefix}_part{i}_to_extracted (rho : Nat → {seg_mod}.F)",
                f"    (h : {seg_mod}.relationPart{i} rho)",
                f"    {{k : {arrow_type(len(seg['cont']), f'{seg_mod}.F')}}} (hk : k {' '.join(rho(w, mapping) for w in seg['cont'])}) :",
                f"    {ns}.seg{i} {' '.join(rho(w, mapping) for w in seg['binders'])} k := by",
                f"  unfold {seg_mod}.relationPart{i} {' '.join(rows)} at h",
                f"  rcases h with {tuple_expr(hnames)}",
                f"  unfold {ns}.seg{i}",
                f"  exact {tuple_expr([rho(w, mapping) for w in seg['witnesses']] + hnames + ['hk'])}",
                "",
            ]
        )
    return "\n".join(lines)


def emit_apply_chain(prefix, start, stop):
    return "\n".join(f"  apply {prefix}_part{i}_to_extracted rho p{i}" for i in range(start, stop + 1))


def build_nested(ns, segments, mapping, start, stop, final_prop, indent="  "):
    def rec(i):
        if i > stop:
            return final_prop
        seg = segments[i]
        args = " ".join(rho(w, mapping) if i == start else w for w in seg["binders"])
        binders = " ".join(seg["cont"])
        tail = rec(i + 1)
        return f"{ns}.seg{i} {args} (fun {binders} =>\n{indent}{tail})"

    return rec(start)


def emit_statement_hash(segments):
    stem = "StatementHash470_5c3d95"
    ns = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    seg_mod = "Seg59"
    mapping = {}
    final = ["w54128", "w54133", "w54138", "w54143", "w54148", "w54153", "w54158", "w54163"]
    inputs = [
        "w2", "w1637", "w1642", "w1647", "w1652", "w12746", "w13086",
        "w20337", "w20342", "w20347", "w20352", "w31446", "w31786",
        "w38712", "w38717", "w38722", "w38727", "w38732", "w38737",
        "w38742", "w53353", "w53693",
    ]
    body = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg59",
        "import ShielddGnarkFormal.Deployed.StatementHash.SemanticBridge",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
        emit_part_helpers("seg59", seg_mod, stem, ns, segments, mapping, 0, 93),
        "theorem seg59_relation_to_statement_hash (rho : Nat → Seg59.F)",
        "    (h : Seg59.relation rho) :",
        f"    {ns}.relation",
        f"      {' '.join(rho(w, mapping) for w in inputs)}",
        f"      (fun {' '.join(final)} =>",
        f"        {conj_eq(final, mapping)}) := by",
        "  unfold Seg59.relation at h",
        rcases_parts(94),
        f"  unfold {ns}.relation",
        emit_apply_chain("seg59", 0, 93),
        f"  exact {tuple_expr(['rfl'] * len(final))}",
        "",
        "theorem seg59_sound (rho : Nat → Seg59.F) (h : Seg59.relation rho) : Seg59.spec rho := by",
        "  have hExtracted := seg59_relation_to_statement_hash rho h",
        "  rcases Shieldd.GnarkFormal.Deployed.StatementHash.relation_sound_permSpec",
        f"      {' '.join(rho(w, mapping) for w in inputs)} _ hExtracted with",
        f"    ⟨{', '.join(final)}, hk, hperm⟩",
        f"  rcases hk with {tuple_expr([f'h{w}' for w in final])}",
        f"  simpa [Seg59.spec, Specs.deployedSpec59, {', '.join(f'h{w}' for w in final)}] using hperm",
        "",
        "end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    return "\n".join(body)


def note_mapping(low_offset, witness_offset, w572, w912):
    mapping = {
        14: 14 + low_offset,
        15: 15 + low_offset,
        16: 16 + low_offset,
        19: 19 + low_offset,
        22: 22 + low_offset,
        572: w572,
        912: w912,
    }
    for w in range(913, 1343):
        mapping[w] = w + witness_offset
    return mapping


def emit_note_sound(seg_mod, prefix, mapping):
    final = ["w1312", "w1317", "w1322", "w1327", "w1332", "w1337", "w1342"]
    inputs = ["w14", "w15", "w16", "w19", "w22", "w572", "w912"]
    eq_names = [f"h{w}" for w in final]
    lines = [
        f"theorem {prefix}_sound (rho : Nat → {seg_mod}.F) (h : {seg_mod}.relation rho) : {seg_mod}.spec rho := by",
        f"  have hPrefix := {prefix}_relation_to_note_prefix rho h",
        "  have r0 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range0_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " _ hPrefix",
        "  rcases r0 with ⟨w917, w922, w927, w932, w937, w942, hSpec0, h⟩",
        "  have r1 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range1_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w917 w922 w927 w932 w937 w942 _ hSpec0 h",
        "  rcases r1 with ⟨w947, w952, w957, w962, w967, w972, w977, hSpec1, h⟩",
        "  have r2 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range2_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w947 w952 w957 w962 w967 w972 w977 _ hSpec1 h",
        "  rcases r2 with ⟨w982, w987, w992, w997, w1002, w1007, w1012, hSpec2, h⟩",
        "  have r3 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range3_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w982 w987 w992 w997 w1002 w1007 w1012 _ hSpec2 h",
        "  rcases r3 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, hSpec3, h⟩",
        "  have r4 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range4_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1017 w1022 w1027 w1032 w1037 w1042 w1047 _ hSpec3 h",
        "  rcases r4 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, hSpec13, h⟩",
        "  have r5 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range5_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 _ hSpec13 h",
        "  rcases r5 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, hSpec23, h⟩",
        "  have r6 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range6_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 _ hSpec23 h",
        "  rcases r6 with ⟨w1017, w1022, w1027, w1032, w1037, w1042, w1047, w1052, w1057, w1062, w1067, w1072, w1077, w1082, w1087, w1092, w1097, w1102, w1107, w1112, w1117, w1122, w1127, w1132, w1137, w1142, w1147, w1152, w1157, w1162, w1167, w1172, w1177, w1182, w1187, w1192, w1197, w1202, hSpec34, h⟩",
        "  have r7 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range7_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1017 w1022 w1027 w1032 w1037 w1042 w1047 w1052 w1057 w1062 w1067 w1072 w1077 w1082 w1087 w1092 w1097 w1102 w1107 w1112 w1117 w1122 w1127 w1132 w1137 w1142 w1147 w1152 w1157 w1162 w1167 w1172 w1177 w1182 w1187 w1192 w1197 w1202 _ hSpec34 h",
        "  rcases r7 with ⟨w1207, w1212, w1217, w1222, w1227, w1232, w1237, hSpec35, h⟩",
        "  have r8 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range8_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1207 w1212 w1217 w1222 w1227 w1232 w1237 _ hSpec35 h",
        "  rcases r8 with ⟨w1242, w1247, w1252, w1257, w1262, w1267, w1272, hSpec36, h⟩",
        "  have r9 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range9_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1242 w1247 w1252 w1257 w1262 w1267 w1272 _ hSpec36 h",
        "  rcases r9 with ⟨w1277, w1282, w1287, w1292, w1297, w1302, w1307, hSpec37, h⟩",
        "  have r10 := Shieldd.GnarkFormal.Deployed.NoteCommitment.range10_sound "
        + " ".join(rho(w, mapping) for w in inputs)
        + " w1277 w1282 w1287 w1292 w1297 w1302 w1307 _ hSpec37 h",
        f"  rcases r10 with ⟨{', '.join(final)}, hSpec38, hk⟩",
        f"  rcases hk with {tuple_expr(eq_names)}",
        f"  simpa [{seg_mod}.spec, Specs.deployedSpec{seg_mod[3:]}, {', '.join(eq_names)}] using hSpec38",
        "",
    ]
    return "\n".join(lines)


def emit_note(segments):
    stem = "GadgetNoteCommitmentWithOutput431_7f228e"
    ns = f"Shieldd.GnarkFormal.Extracted.Deployed.{stem}"
    configs = [
        ("Seg7", "seg7", note_mapping(0, 0, 572, 912)),
        ("Seg25", "seg25", note_mapping(90, 18700, 19272, 19612)),
        ("Seg43", "seg43", note_mapping(178, 37400, 37972, 38312)),
    ]
    body = [
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg7",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg25",
        "import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg43",
        "import ShielddGnarkFormal.Deployed.NoteCommitment.RawRelationSemanticBridge",
        "",
        "set_option maxRecDepth 1000000",
        "set_option maxHeartbeats 0",
        "",
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1",
        "",
    ]
    final = ["w1312", "w1317", "w1322", "w1327", "w1332", "w1337", "w1342"]
    for seg_mod, prefix, mapping in configs:
        body.append(emit_part_helpers(prefix, seg_mod, stem, ns, segments, mapping, 0, 85))
        final_prop = conj_eq(final, mapping)
        nested = build_nested(ns, segments, mapping, 0, 85, final_prop)
        body.extend(
            [
                f"def {prefix}NotePrefix (rho : Nat → {seg_mod}.F) : Prop :=",
                f"  {nested}",
                "",
                f"theorem {prefix}_relation_to_note_prefix (rho : Nat → {seg_mod}.F)",
                f"    (h : {seg_mod}.relation rho) : {prefix}NotePrefix rho := by",
                f"  unfold {seg_mod}.relation at h",
                rcases_parts(86),
                f"  unfold {prefix}NotePrefix",
                emit_apply_chain(prefix, 0, 85),
                f"  exact {tuple_expr(['rfl'] * len(final))}",
                "",
                emit_note_sound(seg_mod, prefix, mapping),
            ]
        )
    body.extend(["end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1", ""])
    return "\n".join(body)


def main():
    statement = parse_segments("StatementHash470_5c3d95")
    note = parse_segments("GadgetNoteCommitmentWithOutput431_7f228e")
    (CONSOLIDATE / "StatementHashAdapters.lean").write_text(emit_statement_hash(statement))
    (CONSOLIDATE / "NoteCommitmentAdapters.lean").write_text(emit_note(note))
    print("wrote consolidate2x1 StatementHashAdapters.lean and NoteCommitmentAdapters.lean")


if __name__ == "__main__":
    main()
