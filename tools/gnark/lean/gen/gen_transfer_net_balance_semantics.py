#!/usr/bin/env python3
"""Generate the exact deployed Transfer net-balance provider.

The optimized efd414... relation range-checks four amounts, decomposes the two
129-bit pair sums for exact Window2 ladders, subtracts the output point, adds a
251-bit fixed-base blind, and returns the final commitment.  Every layout pin
is recovered from the digest-authenticated canonical relation.
"""

from __future__ import annotations

import argparse
import contextlib
import gzip
import hashlib
import io
import json
import re
import tempfile
from contextlib import contextmanager
from dataclasses import dataclass, replace
from pathlib import Path
from types import SimpleNamespace
from typing import Iterator

import dtk_recovery as dtk
import gen_poseidon_bridge as poseidon_bridge
import gen_note_reshape_nb_semantics as note_nb
import gen_transfer_ack_semantics as ack
import gen_withdrawal_registry_semantics as withdrawal
import nb_recovery as nb
import poseidon_recovery as poseidon
from lean_zmod_instances import named_instance_block
from write_if_changed import write_if_changed


ROOT = Path(__file__).resolve().parents[4]
LEAN = ROOT / "tools/gnark/lean"
FORMAL = LEAN / "ShielddGnarkFormal"
RELATIONS = FORMAL / "Deployed/Templates/Relations"
OUT = FORMAL / "Deployed/Templates/Semantics"
CANONICAL = (
    ROOT
    / "tools/gnark/artifacts/proof-template-relations"
    / "efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681.sr1cs.gz"
)

DIGEST = "efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681"
NAME = f"TDecafNetBalanceCommitment_{DIGEST}"
KEY = f"decaf.net_balance_commitment@{DIGEST}"
ROW_COUNT = 6202
WIRE_COUNT = 6028
BITS = 128
ORDER = 8444461749428370424248824938781546531375899335154063827935233455917409239041
RELATION = f"Shieldd.GnarkFormal.Deployed.Templates.Relations.{NAME}"
RELATION_MODULE = RELATION.replace("Shieldd.GnarkFormal", "ShielddGnarkFormal")
NAMESPACE = f"Shieldd.GnarkFormal.Deployed.Templates.Semantics.{NAME}.NbSupport"
MODULE_PREFIX = f"ShielddGnarkFormal.Deployed.Templates.Semantics.{NAME}Nb"
POSEIDON_DOMAIN = (
    6888358618106443442961843809729175081075858965522240584763322653509542282215
)
POSEIDON_TEMPLATE = withdrawal.HashTemplate(
    "decaf.net_balance_poseidon",
    DIGEST,
    1,
    POSEIDON_DOMAIN,
    230,
    232,
    (226, 231),
)
BLIND_BIT_BASE = 4216
BLIND_BINARY_ROWS = (4390, 4640)
BLIND_COPY_ROW = 4641
BLIND_WIRE = 4467
BLIND_LADDER_END = 6194
ENCODE_CANON = dtk.CanonicalBlock("Canon1", 250, 254, 258, 511, 512)
ENCODE_CANON_SEG = 5
@dataclass(frozen=True)
class NbEncodeCoefficientCertificate:
    name: str
    raw_value: int
    canonical_residue: int
    signed_residue: int
    owners: tuple[str, ...]


@dataclass(frozen=True)
class NbEncodeSelectResult:
    name: str
    gate: int
    row: int | None
    result: str
    delta: str | None
    flag_endpoints: tuple[tuple[int, str], tuple[int, str]]
    owner: str


NB_ENCODE_A_LITERAL = ORDER - 1
NB_ENCODE_C_LITERAL = (
    2841681278031794617739547238867782961338435681360110683443920362658525667816
)
NB_ENCODE_POSEIDON_COEFF0 = (
    5629641166285580282832549959187697687583932890102709218623488970611606159361
)
NB_ENCODE_POSEIDON_COEFF1 = (
    6333346312071277818186618704086159898531924501365547870951425091938056929281
)
NB_ENCODE_POSEIDON_NEG0 = ORDER - NB_ENCODE_POSEIDON_COEFF0
NB_ENCODE_POSEIDON_NEG1 = ORDER - NB_ENCODE_POSEIDON_COEFF1
NB_ENCODE_POSEIDON_OUTPUT = (
    NAMESPACE.removesuffix(".NbSupport") + ".NbPoseidon.output rho"
)
NB_ENCODE_C3021_RAW = 3021 * NB_ENCODE_C_LITERAL
NB_ENCODE_C3021_RESIDUE = NB_ENCODE_C3021_RAW % ORDER
NB_ENCODE_C3022_RAW = 3022 * NB_ENCODE_C_LITERAL
NB_ENCODE_C3022_RESIDUE = NB_ENCODE_C3022_RAW % ORDER
NB_ENCODE_NEG6043C_RAW = -6043 * NB_ENCODE_C_LITERAL
NB_ENCODE_NEG6043C_RESIDUE = NB_ENCODE_NEG6043C_RAW % ORDER
NB_ENCODE_NEG_C_RAW = -NB_ENCODE_C_LITERAL
NB_ENCODE_NEG_C_RESIDUE = NB_ENCODE_NEG_C_RAW % ORDER
NB_ENCODE_POSEIDON_COEFF0_SQUARE_RAW = (
    NB_ENCODE_POSEIDON_COEFF0 * NB_ENCODE_POSEIDON_COEFF0
)
NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE = (
    NB_ENCODE_POSEIDON_COEFF0_SQUARE_RAW % ORDER
)
NB_ENCODE_POSEIDON_CROSS_RAW = (
    2 * NB_ENCODE_POSEIDON_COEFF0 * NB_ENCODE_POSEIDON_COEFF1
)
NB_ENCODE_POSEIDON_CROSS_RESIDUE = NB_ENCODE_POSEIDON_CROSS_RAW % ORDER
NB_ENCODE_POSEIDON_COEFF1_SQUARE_RAW = (
    NB_ENCODE_POSEIDON_COEFF1 * NB_ENCODE_POSEIDON_COEFF1
)
NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE = (
    NB_ENCODE_POSEIDON_COEFF1_SQUARE_RAW % ORDER
)
NB_ENCODE_G41_RAW = NB_ENCODE_A_LITERAL - 2 * 3021
NB_ENCODE_G41_SQUARE_RAW = NB_ENCODE_G41_RAW * NB_ENCODE_G41_RAW
NB_ENCODE_COEFFICIENT_CERTIFICATES = (
    NbEncodeCoefficientCertificate(
        "hnegOne",
        NB_ENCODE_A_LITERAL,
        ORDER - 1,
        -1,
        (
            "precanon-local/g4-g6-g11",
            "canon-proof[1]/gate57",
            "canon-proof[2]/gate59",
        ),
    ),
    NbEncodeCoefficientCertificate(
        "hC3021",
        NB_ENCODE_C3021_RAW,
        NB_ENCODE_C3021_RESIDUE,
        NB_ENCODE_C3021_RESIDUE - ORDER,
        ("circuit-proof[1]/r231-g4",),
    ),
    NbEncodeCoefficientCertificate(
        "hC3022",
        NB_ENCODE_C3022_RAW,
        NB_ENCODE_C3022_RESIDUE,
        NB_ENCODE_C3022_RESIDUE - ORDER,
        ("circuit-proof[1]/r231-g6",),
    ),
    NbEncodeCoefficientCertificate(
        "hNeg6043C",
        NB_ENCODE_NEG6043C_RAW,
        NB_ENCODE_NEG6043C_RESIDUE,
        NB_ENCODE_NEG6043C_RESIDUE,
        ("circuit-proof[2]/r232-g11", "circuit-proof[14]/r254-g11"),
    ),
    NbEncodeCoefficientCertificate(
        "hNegC",
        NB_ENCODE_NEG_C_RAW,
        NB_ENCODE_NEG_C_RESIDUE,
        -NB_ENCODE_C_LITERAL,
        ("circuit-proof[10]/r249-gate30",),
    ),
    NbEncodeCoefficientCertificate(
        "hPoseidonCoeff0Sq",
        NB_ENCODE_POSEIDON_COEFF0_SQUARE_RAW,
        NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE,
        NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE - ORDER,
        ("circuit-proof[0]/r230-rho226-square",),
    ),
    NbEncodeCoefficientCertificate(
        "hPoseidonCross",
        NB_ENCODE_POSEIDON_CROSS_RAW,
        NB_ENCODE_POSEIDON_CROSS_RESIDUE,
        NB_ENCODE_POSEIDON_CROSS_RESIDUE - ORDER,
        ("circuit-proof[0]/r230-rho226-rho231-cross",),
    ),
    NbEncodeCoefficientCertificate(
        "hPoseidonCoeff1Sq",
        NB_ENCODE_POSEIDON_COEFF1_SQUARE_RAW,
        NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE,
        NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE - ORDER,
        ("circuit-proof[0]/r230-rho231-square",),
    ),
    NbEncodeCoefficientCertificate(
        "hg41",
        NB_ENCODE_G41_RAW,
        ORDER - 6043,
        -6043,
        ("hinv63/r770-base",),
    ),
    NbEncodeCoefficientCertificate(
        "hg41Sq",
        NB_ENCODE_G41_SQUARE_RAW,
        36517849,
        36517849,
        ("hinv63/r770-square",),
    ),
)
NB_ENCODE_PRECANON_ROW_COEFFICIENT_MANIFEST = (
    (
        230,
        (
            (NB_ENCODE_POSEIDON_COEFF0, -NB_ENCODE_POSEIDON_NEG0),
            (NB_ENCODE_POSEIDON_COEFF1, -NB_ENCODE_POSEIDON_NEG1),
        ),
        "circuit-proof[0]",
    ),
    (
        231,
        (
            (NB_ENCODE_C3021_RESIDUE, NB_ENCODE_C3021_RESIDUE - ORDER),
            (NB_ENCODE_C3022_RESIDUE, NB_ENCODE_C3022_RESIDUE - ORDER),
            (ORDER - 3022, -3022),
            (ORDER - 3021, -3021),
        ),
        "circuit-proof[1]",
    ),
    (
        232,
        (
            (NB_ENCODE_NEG6043C_RESIDUE, NB_ENCODE_NEG6043C_RESIDUE),
            (ORDER - 6043, -6043),
        ),
        "circuit-proof[2]",
    ),
    (233, (), "helper/hws+hnotWs"),
    (234, (), "helper/hz[0]"),
    (235, (), "helper/hz[1]"),
    (236, (), "helper/hsel15"),
    (237, (), "helper/hinv16"),
    (238, (), "circuit-proof[3]"),
    (239, (), "circuit-proof[4]"),
    (240, (), "circuit-proof[5]"),
    (241, (), "redundant/duplicate-hws-row"),
    (242, (), "helper/hand22"),
    (243, (), "redundant/hnotZ-derived-from-hz"),
    (244, (), "helper/hand23"),
    (245, (), "circuit-proof[6]"),
    (246, (), "circuit-proof[7]"),
    (247, (), "circuit-proof[8]"),
    (248, (), "circuit-proof[9]"),
    (
        249,
        ((NB_ENCODE_NEG_C_RESIDUE, -NB_ENCODE_C_LITERAL),),
        "circuit-proof[10]",
    ),
    (250, (), "circuit-proof[11]"),
    (251, (), "circuit-proof[12]"),
    (
        252,
        (
            (NB_ENCODE_POSEIDON_NEG1, NB_ENCODE_POSEIDON_NEG1),
            (NB_ENCODE_POSEIDON_NEG0, NB_ENCODE_POSEIDON_NEG0),
        ),
        "helper/hinputSel",
    ),
    (
        253,
        (
            (NB_ENCODE_POSEIDON_COEFF0, -NB_ENCODE_POSEIDON_NEG0),
            (NB_ENCODE_POSEIDON_COEFF1, -NB_ENCODE_POSEIDON_NEG1),
        ),
        "circuit-proof[13]",
    ),
    (
        254,
        (
            (NB_ENCODE_NEG6043C_RESIDUE, NB_ENCODE_NEG6043C_RESIDUE),
            (ORDER - 6043, -6043),
        ),
        "circuit-proof[14]",
    ),
    (255, ((ORDER - 2, -2),), "circuit-proof[16]"),
    (256, (), "circuit-proof[17]"),
    (257, ((NB_ENCODE_C_LITERAL, NB_ENCODE_C_LITERAL),), "circuit-proof[18]"),
)
NB_ENCODE_ROW_COEFFICIENT_MANIFEST = (
    (769, ((2, 2),), "canon-proof[3]"),
    (770, ((36517849, 36517849),), "hinv63"),
    (771, (), "canon-proof[4]"),
    (772, (), "canon-proof[5]"),
    (773, (), "canon-proof[6]"),
    (774, ((3021, 3021),), "canon-proof[7]"),
    (775, (), "canon-proof[8]"),
)
NB_ENCODE_PRECANON_SELECT_RESULT_MANIFEST = (
    NbEncodeSelectResult(
        "hsel15",
        15,
        236,
        "rho 234 + rho 238",
        "rho 238",
        ((0, "rho 234"), (1, "1")),
        "helper/hsel15",
    ),
    NbEncodeSelectResult(
        "hsign",
        36,
        None,
        "2 * rho 235 - 1",
        None,
        ((0, "-1"), (1, "1")),
        "helper/hsign",
    ),
    NbEncodeSelectResult(
        "hinputSel",
        37,
        252,
        "poseidonOutput + rho 248",
        "rho 248",
        ((0, "poseidonOutput"), (1, "1")),
        "helper/hinputSel",
    ),
)
NB_ENCODE_INPUT_SELECT_ROW_BODIES = (
    (
        252,
        "    ((1 : F) * rho 235) * ((1 : F) + "
        f"({NB_ENCODE_POSEIDON_NEG0} : F) * rho 226 + "
        f"({NB_ENCODE_POSEIDON_NEG1} : F) * rho 231) = "
        "((1 : F) * rho 248)",
        "helper/hinputSel/delta",
    ),
    (
        253,
        "    ((1 : F) * rho 240) * ("
        f"({NB_ENCODE_POSEIDON_COEFF0} : F) * rho 226 + "
        f"({NB_ENCODE_POSEIDON_COEFF1} : F) * rho 231 + "
        "(1 : F) * rho 248) = ((1 : F) * rho 249)",
        "circuit-proof[13]/gate38-result",
    ),
)
NB_ENCODE_GATE37_WITNESS_INDEX = 31
NB_ENCODE_GATE38_WITNESS_INDEX = 32
NB_ENCODE_SELECT_CONVENTION = "out = i2 - b * (i2 - i1)"
NB_ENCODE_FIELD_MODULUS_MANIFEST = (
    ("NbSupport.Order", ORDER, "reviewed_order"),
    ("NbPoseidon.Order", ORDER, "rfl"),
)
NB_ENCODE_CIRCUIT_WITNESS_FIELDS = (
    "rho 232", "g1", "g2", "g3", "g4", "g5", "g6", "rho 233",
    "g8", "g9", "g10", "g11", "rho 234", "rho 237",
    "rho 234 + rho 238", "rho 239", "rho 241", "rho 242",
    "1 - rho 235", "1 - rho 237", "rho 243", "rho 244",
    "rho 241 - rho 239", "rho 245", "rho 246",
    "2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 239",
    "rho 241 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 239",
    "rho 247", "rho 235 + rho 243", "rho 235 + rho 243 + rho 244",
    "g36", "poseidonOutput + rho 248", "rho 249", "rho 250", "2 * 3021", "g41",
    "-g36", "rho 251", "rho 252", "g1 - 1", "rho 253",
    "g41 * g41", "rho 253 * (g41 * g41)", "g49",
)
NB_ENCODE_CANON_WITNESS_FIELDS = (
    "rho 254 - rho 235", "rho 594", "-rho 250",
    "rho 250 + rho 595", "rho 596", "2 * (rho 250 + rho 595)",
    "-(rho 596)", "1 - rho 596", "-(rho 596)", "1 + rho 596",
    "rho 597", "rho 598", "rho 599", "rho 600", "rho 601", "rho 602",
    "rho 602 - rho 601", "3021 * rho 601", "rho 603", "1 + rho 603",
)
NB_ENCODE_WITNESS_FIELD_COUNT = 64
NB_ENCODE_RFL_WITNESS_FIELDS = (
    "g1", "g2", "g3", "g4", "g5", "g6", "g8", "g9", "g10", "g11",
    "1 - rho 235", "1 - rho 237", "rho 241 - rho 239",
    "2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 239",
    "rho 241 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 239",
    "rho 235 + rho 243", "rho 235 + rho 243 + rho 244", "2 * 3021",
    "g41", "g1 - 1", "g41 * g41", "rho 253 * (g41 * g41)", "g49",
    "2 * (rho 250 + rho 595)", "3021 * rho 601", "1 + rho 603",
)
NB_ENCODE_NONDEFINITIONAL_RFL_FIELDS = (
    "1 - rho 596",
    "rho 602 - rho 601",
)
NB_ENCODE_PRECANON_HOLE_COUNT = 20
NB_ENCODE_CANON_HOLE_COUNT = 9
NB_ENCODE_PRECANON_COEFFICIENT_CERTIFICATE_BLOCK = (
    f"    have hnegOne : ({NB_ENCODE_A_LITERAL} : F) = -1 := by\n"
    "      decide\n"
    "    have hC3021 :\n"
    f"        (3021 : F) * ({NB_ENCODE_C_LITERAL} : F) =\n"
    f"          ({NB_ENCODE_C3021_RESIDUE} : F) := by\n"
    "      decide\n"
    "    have hC3022 :\n"
    f"        (3022 : F) * ({NB_ENCODE_C_LITERAL} : F) =\n"
    f"          ({NB_ENCODE_C3022_RESIDUE} : F) := by\n"
    "      decide\n"
    "    have hNeg6043C :\n"
    f"        (-6043 : F) * ({NB_ENCODE_C_LITERAL} : F) =\n"
    f"          ({NB_ENCODE_NEG6043C_RESIDUE} : F) := by\n"
    "      decide\n"
    "    have hNegC :\n"
    f"        -({NB_ENCODE_C_LITERAL} : F) =\n"
    f"          ({NB_ENCODE_NEG_C_RESIDUE} : F) := by\n"
    "      decide\n"
    "    have hPoseidonCoeff0Sq :\n"
    f"        ({NB_ENCODE_POSEIDON_COEFF0} : F) * "
    f"({NB_ENCODE_POSEIDON_COEFF0} : F) =\n"
    f"          ({NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE} : F) := by\n"
    "      decide\n"
    "    have hPoseidonCross :\n"
    f"        (2 : F) * ({NB_ENCODE_POSEIDON_COEFF0} : F) * "
    f"({NB_ENCODE_POSEIDON_COEFF1} : F) =\n"
    f"          ({NB_ENCODE_POSEIDON_CROSS_RESIDUE} : F) := by\n"
    "      decide\n"
    "    have hPoseidonCoeff1Sq :\n"
    f"        ({NB_ENCODE_POSEIDON_COEFF1} : F) * "
    f"({NB_ENCODE_POSEIDON_COEFF1} : F) =\n"
    f"          ({NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE} : F) := by\n"
    "      decide\n"
)
NB_ENCODE_PRECANON_ROW_FORM_BLOCK = (
    "    have hPoseidonSquareRow :\n"
    "        poseidonOutput * poseidonOutput =\n"
    f"          {NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE} * "
    "(rho 226 * rho 226) +\n"
    f"          {NB_ENCODE_POSEIDON_CROSS_RESIDUE} * "
    "(rho 226 * rho 231) +\n"
    f"          {NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE} * "
    "(rho 231 * rho 231) := by\n"
    "      calc\n"
    "        poseidonOutput * poseidonOutput =\n"
    f"            (({NB_ENCODE_POSEIDON_COEFF0} : F) * "
    f"({NB_ENCODE_POSEIDON_COEFF0} : F)) * (rho 226 * rho 226) +\n"
    f"            ((2 : F) * ({NB_ENCODE_POSEIDON_COEFF0} : F) * "
    f"({NB_ENCODE_POSEIDON_COEFF1} : F)) * (rho 226 * rho 231) +\n"
    f"            (({NB_ENCODE_POSEIDON_COEFF1} : F) * "
    f"({NB_ENCODE_POSEIDON_COEFF1} : F)) * (rho 231 * rho 231) := by\n"
    "          dsimp [poseidonOutput]\n"
    "          ring\n"
    f"        _ = {NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE} * "
    "(rho 226 * rho 226) +\n"
    f"            {NB_ENCODE_POSEIDON_CROSS_RESIDUE} * "
    "(rho 226 * rho 231) +\n"
    f"            {NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE} * "
    "(rho 231 * rho 231) := by\n"
    "          rw [hPoseidonCoeff0Sq, hPoseidonCross, "
    "hPoseidonCoeff1Sq]\n"
    "    have hg4Row :\n"
    f"        g4 = -3022 + {NB_ENCODE_C3021_RESIDUE} * rho 232 := by\n"
    "      calc\n"
    f"        g4 = (3021 * {NB_ENCODE_C_LITERAL}) * rho 232 - 3022 := by\n"
    "          dsimp [g4, g3, g2, g1]\n"
    "          rw [hnegOne]\n"
    "          ring\n"
    f"        _ = {NB_ENCODE_C3021_RESIDUE} * rho 232 - 3022 := by\n"
    "          rw [hC3021]\n"
    f"        _ = -3022 + {NB_ENCODE_C3021_RESIDUE} * rho 232 := by ring\n"
    "    have hg6Row :\n"
    f"        g6 = -3021 + {NB_ENCODE_C3022_RESIDUE} * rho 232 := by\n"
    "      calc\n"
    f"        g6 = (3022 * {NB_ENCODE_C_LITERAL}) * rho 232 - 3021 := by\n"
    "          dsimp [g6, g5, g2, g1]\n"
    "          rw [hnegOne]\n"
    "          ring\n"
    f"        _ = {NB_ENCODE_C3022_RESIDUE} * rho 232 - 3021 := by\n"
    "          rw [hC3022]\n"
    f"        _ = -3021 + {NB_ENCODE_C3022_RESIDUE} * rho 232 := by ring\n"
    "    have hg11Row :\n"
    f"        g11 = -6043 + {NB_ENCODE_NEG6043C_RESIDUE} * rho 232 := by\n"
    "      calc\n"
    f"        g11 = -6043 + ((-6043 : F) * {NB_ENCODE_C_LITERAL}) * rho 232 := by\n"
    "          dsimp [g11, g8, g10, g9, g1]\n"
    "          rw [hnegOne]\n"
    "          ring\n"
    f"        _ = -6043 + {NB_ENCODE_NEG6043C_RESIDUE} * rho 232 := by\n"
    "          rw [hNeg6043C]\n"
    "    have hgate30Row :\n"
    f"        rho 241 - {NB_ENCODE_C_LITERAL} * rho 239 =\n"
    f"          rho 241 + {NB_ENCODE_NEG_C_RESIDUE} * rho 239 := by\n"
    "      calc\n"
    f"        rho 241 - {NB_ENCODE_C_LITERAL} * rho 239 =\n"
    f"            rho 241 + (-({NB_ENCODE_C_LITERAL} : F)) * rho 239 := by ring\n"
    f"        _ = rho 241 + {NB_ENCODE_NEG_C_RESIDUE} * rho 239 := by\n"
    "          rw [hNegC]\n"
)
NB_ENCODE_TAIL_COEFFICIENT_CERTIFICATE_BLOCK = (
    "      have hg41 : g41 = (-6043 : F) := by\n"
    "        decide\n"
    "      have hg41Sq : g41 * g41 = (36517849 : F) := by\n"
    "        decide\n"
)
NB_ENCODE_POSEIDON_OUTPUT_SEAM_BLOCK = (
    f"  have hNbSupportOrder : Order = {ORDER} := reviewed_order\n"
    f"  have hNbPoseidonOrder : "
    f"{NAMESPACE.removesuffix('.NbSupport')}.NbPoseidon.Order = {ORDER} := by\n"
    "    rfl\n"
    "  have order_eq_zero : (Order : F) = 0 := ZMod.natCast_self Order\n"
    "  let poseidonOutput : F :=\n"
    f"    ({NB_ENCODE_POSEIDON_COEFF0} : F) * rho 226 +\n"
    f"      ({NB_ENCODE_POSEIDON_COEFF1} : F) * rho 231\n"
    "  have hPoseidonOutput :\n"
    f"      poseidonOutput = ({NB_ENCODE_POSEIDON_OUTPUT} : F) := by\n"
    "    dsimp [poseidonOutput]\n"
    f"    unfold {NAMESPACE.removesuffix('.NbSupport')}.NbPoseidon.output "
    f"Shieldd.GnarkFormal.Deployed.{POSEIDON_TEMPLATE.leaf}.s38_1 "
    "Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2\n"
    "    rfl\n"
)
NB_ENCODE_INPUT_SELECT_PROOF_BLOCK = (
    "    refine select_of_row _ _ _ _ hws ?_\n"
    f"    have hPoseidonNeg0 : ({NB_ENCODE_POSEIDON_NEG0} : F) =\n"
    f"        -({NB_ENCODE_POSEIDON_COEFF0} : F) := by\n"
    f"      change (((Order - {NB_ENCODE_POSEIDON_COEFF0} : Nat) : F)) =\n"
    f"        -({NB_ENCODE_POSEIDON_COEFF0} : F)\n"
    "      rw [Nat.cast_sub (by decide)]\n"
    "      rw [order_eq_zero]\n"
    "      ring\n"
    f"    have hPoseidonNeg1 : ({NB_ENCODE_POSEIDON_NEG1} : F) =\n"
    f"        -({NB_ENCODE_POSEIDON_COEFF1} : F) := by\n"
    f"      change (((Order - {NB_ENCODE_POSEIDON_COEFF1} : Nat) : F)) =\n"
    f"        -({NB_ENCODE_POSEIDON_COEFF1} : F)\n"
    "      rw [Nat.cast_sub (by decide)]\n"
    "      rw [order_eq_zero]\n"
    "      ring\n"
    "    rw [hPoseidonNeg0, hPoseidonNeg1] at r252\n"
    "    dsimp [poseidonOutput]\n"
    "    first | linear_combination r252 | linear_combination -r252\n"
)
NB_ENCODE_POSEIDON_SOUNDNESS_SEAM_BLOCK = (
    "  have hsound :=\n"
    "    Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.circuit_sound\n"
    "      poseidonOutput (rho 235) (rho 240) "
    "(rho 598) (rho 600) hcircuit\n"
    "  rw [hPoseidonOutput] at hsound\n"
    "  exact hsound\n"
)
NB_ENCODE_PRECANON_COMPOSITIONAL_REFERENCE = (
    "hnegOne; hC3021; hC3021PlusC; hC3022 via hC3021PlusC; "
    "hNegC; hNegTwoC3021; hNeg6043C via hNegTwoC3021+hNegC; "
    "then hg4Row; hg6Row; hg11Row; hgate30Row"
)
NB_ENCODE_SELECTED_PRECANON_STRATEGY = "eight-direct-decide-certificates"
NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS = (
    (NB_ENCODE_SELECTED_PRECANON_STRATEGY, 8, 5, 13),
    ("compositional-derived-residues", 10, 9, 19),
)
NB_ENCODE_CIRCUIT_PROOF_BLOCKS = (
    "    · change rho 232 = poseidonOutput * poseidonOutput\n"
    "      have hrow : poseidonOutput * poseidonOutput = rho 232 := by\n"
    "        dsimp [poseidonOutput]\n"
    "        simpa only [one_mul] using r230\n"
    "      rw [hPoseidonSquareRow]\n"
    "      rw [hPoseidonSquareRow] at hrow\n"
    "      exact hrow.symm\n",
    "    · rw [hg4Row, hg6Row]\n"
    "      first | linear_combination r231 | linear_combination -r231\n",
    "    · rw [hg11Row]\n"
    "      first | linear_combination r232 | linear_combination -r232\n",
    "    · first | linear_combination r238 | linear_combination -r238\n",
    "    · first | linear_combination r239 | linear_combination -r239\n",
    "    · first | linear_combination r240 | linear_combination -r240\n",
    "    · first | linear_combination r245 | linear_combination -r245\n",
    "    · first | linear_combination r246 | linear_combination -r246\n",
    "    · first | linear_combination r247 | linear_combination -r247\n",
    "    · first | linear_combination r248 | linear_combination -r248\n",
    "    · rw [hgate30Row]\n"
    "      first | linear_combination r249 | linear_combination -r249\n",
    "    · first | linear_combination r250 | linear_combination -r250\n",
    "    · first | linear_combination r251 | linear_combination -r251\n",
    "    · dsimp [poseidonOutput]\n"
    "      first | linear_combination r253 | linear_combination -r253\n",
    "    · rw [hg11Row]\n"
    "      first | linear_combination r254 | linear_combination -r254\n",
    "    · dsimp [g36]\n"
    "      ring\n",
    "    · dsimp [g36]\n"
    "      first | linear_combination r255 | linear_combination -r255\n",
    "    · first | linear_combination r256 | linear_combination -r256\n",
    "    · dsimp [g1]\n"
    "      first | linear_combination r257 | linear_combination -r257\n",
    "    · apply nbEncodeCanon_canonical rho hRelation\n",
)
NB_ENCODE_HINV63_BLOCK = (
    "      have hinv63 : GatesDef.inv g49 (rho 599) := by\n"
    "        refine inv_of_mul _ _ ?_\n"
    "        change rho 599 * (rho 253 * (g41 * g41) - 1) = 1\n"
    "        rw [hg41Sq]\n"
    "        linear_combination r770\n"
)
NB_ENCODE_FORBIDDEN_GENERIC_COEFFICIENT_NORMALIZATION = (
    "norm_num [g49, g41]",
    "simp [g49, g41]",
    "dsimp [g49, g41]",
)
NB_ENCODE_CANON_PROOF_BLOCKS = (
    "      · first | linear_combination r767 | linear_combination -r767\n",
    "      · rw [hnegOne]\n"
    "        ring\n",
    "      · rw [hnegOne]\n"
    "        ring\n",
    "      · first | linear_combination r769 | linear_combination -r769\n",
    "      · first | linear_combination r771 | linear_combination -r771\n",
    "      · first | linear_combination r772 | linear_combination -r772\n",
    "      · first | linear_combination r773 | linear_combination -r773\n",
    "      · first | linear_combination r774 | linear_combination -r774\n",
    "      · have hrow : (-rho 601 + rho 602 : F) = "
    "(1 + rho 603 : F) := by\n"
    "          simpa only [one_mul, neg_one_mul] using r775\n"
    "        calc\n"
    "          (rho 602 - rho 601 : F) = -rho 601 + rho 602 := by ring\n"
    "          _ = 1 + rho 603 := hrow\n",
)

GENERATED_HEADER = """/-
GENERATED by gen/gen_transfer_net_balance_semantics.py — do not edit by hand.
-/
"""


def _typed_f(expression: str) -> str:
    return f"({expression} : F)"


@dataclass(frozen=True)
class Amount:
    label: str
    seg: int
    scalar_wire: int
    bit_wire: int
    boolean_start: int
    recomposition_row: int
    ladder_start: int
    ladder_end: int

    @property
    def boolean_rows(self) -> range:
        return range(self.boolean_start, self.boolean_start + BITS)

    @property
    def module_label(self) -> str:
        return self.label[0].upper() + self.label[1:]

    @property
    def ident(self) -> str:
        return "nb" + self.module_label


AMOUNTS = (
    Amount("input0", 1, 732, 604, 776, 904, -1, -1),
    Amount("input1", 2, 861, 733, 905, 1033, -1, -1),
    Amount("output0", 3, 990, 862, 1034, 1162, -1, -1),
    Amount("output1", 4, 1119, 991, 1163, 1291, -1, -1),
)


@dataclass(frozen=True)
class StructuredLcMetadata:
    const: int
    runs: tuple[tuple[int, int, int, int], ...]
    residual: tuple[tuple[int, int], ...]


FINAL_ADD_SUM_COEFFICIENT = (
    554556695789719013642702519139470527066643240247620509116776151269737032555
)
FINAL_ADD_Y_COEFFICIENT = (
    4337336842509898676347982752646772244181661588533917621717979456142867120377
)
FINAL_ADD_X_COEFFICIENT = (
    4661681602708190761543544705274244814260880986867766715334030151044279151219
)
FINAL_ADD_POINT_LCS = (1518, 1517)
FINAL_ADD_LC_METADATA = {
    1516: StructuredLcMetadata(
        1,
        (
            (1, 4471, 5, 149),
            (1, 4472, 5, 149),
            (1, 5219, 8, 101),
            (1, 5220, 8, 101),
        ),
        ((FINAL_ADD_SUM_COEFFICIENT, 4216),),
    ),
    1517: StructuredLcMetadata(
        1,
        ((1, 4472, 5, 149), (1, 5220, 8, 101)),
        ((FINAL_ADD_Y_COEFFICIENT, 4216),),
    ),
    1518: StructuredLcMetadata(
        0,
        ((1, 4471, 5, 149), (1, 5219, 8, 101)),
        ((FINAL_ADD_X_COEFFICIENT, 4216),),
    ),
}
FINAL_ADD_ROW_BODY_MANIFEST = {
    6195: "    ((1 : F)) * (relationLc1516 rho) = ((1 : F) * rho 6021)",
    6196: "    ((1 : F) * rho 6021) * ((1 : F) * rho 4214 + "
    "(1 : F) * rho 4215) = ((1 : F) * rho 6022)",
    6197: "    ((1 : F) * rho 4214) * (relationLc1517 rho) = "
    "((1 : F) * rho 6023)",
    6198: "    ((1 : F) * rho 4215) * (relationLc1518 rho) = "
    "((1 : F) * rho 6024)",
    6199: "    ((3021 : F) * rho 6023) * ((1 : F) * rho 6024) = "
    "((1 : F) * rho 6025)",
    6200: "    ((1 : F) * rho 6026) * ((1 : F) + (1 : F) * rho 6025) = "
    "((1 : F) * rho 6023 + (1 : F) * rho 6024)",
    6201: "    ((1 : F) * rho 6027) * ((1 : F) + (-1 : F) * rho 6025) = "
    "((1 : F) * rho 6022 + (-1 : F) * rho 6023 + (-1 : F) * rho 6024)",
}


def _relation_source() -> str:
    shards = sorted(
        RELATIONS.glob(f"{NAME}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(NAME + "Defs")),
    )
    facade = RELATIONS / f"{NAME}.lean"
    if not shards or not facade.is_file():
        raise ValueError(f"{KEY}: missing exact normalized relation")
    indices = [int(path.stem.removeprefix(NAME + "Defs")) for path in shards]
    if indices != list(range(len(indices))):
        raise ValueError(f"{KEY}: relation shards are not contiguous")
    source = "\n".join(path.read_text() for path in (*shards, facade))
    rows = {int(value) for value in re.findall(r"def relationRow(\d+) ", source)}
    if rows != set(range(ROW_COUNT)):
        raise ValueError(f"{KEY}: normalized rows are not exact")
    parts = {
        int(value) for value in re.findall(r"def relationPart(\d+) ", source)
    }
    if parts != set(range(78)):
        raise ValueError(f"{KEY}: normalized relation parts drifted")
    return source


def _canonical_rows(
    path: Path = CANONICAL,
) -> list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]]:
    with gzip.open(path, "rb") as source:
        canonical = source.read()
    digest = hashlib.sha256(canonical).hexdigest()
    if digest != DIGEST:
        raise ValueError(f"{KEY}: canonical digest {digest} != {DIGEST}")
    try:
        text = canonical.decode("utf-8")
    except UnicodeDecodeError as error:
        raise ValueError(f"{KEY}: canonical relation is not UTF-8") from error
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]] = []
    for line in text.splitlines():
        if not line.strip().startswith("(constraint "):
            raise ValueError(f"{KEY}: malformed canonical row {len(rows)}")
        rows.append(
            tuple(
                dtk.lc_clean(
                    {
                        wire: int(coefficient, 0)
                        for coefficient, wire in side
                    }
                )
                for side in dtk.parse_constraint(line)
            )
        )
    if len(rows) != ROW_COUNT:
        raise ValueError(
            f"{KEY}: canonical relation has {len(rows)} rows, expected {ROW_COUNT}"
        )
    wires = {
        wire
        for row in rows
        for side in row
        for wire in side
    }
    if wires != set(range(WIRE_COUNT)):
        raise ValueError(
            f"{KEY}: canonical local-wire namespace is not exactly "
            f"0..{WIRE_COUNT - 1}"
        )
    return rows


def _canonical_raw_rows(path: Path = CANONICAL):
    """Canonical rows preserving coefficient spelling and term order."""
    with gzip.open(path, "rb") as source:
        canonical = source.read()
    digest = hashlib.sha256(canonical).hexdigest()
    if digest != DIGEST:
        raise ValueError(f"{KEY}: canonical digest {digest} != {DIGEST}")
    rows = [
        withdrawal._parse_constraint(line)
        for line in canonical.decode("utf-8").splitlines()
    ]
    if len(rows) != ROW_COUNT:
        raise ValueError(
            f"{KEY}: canonical relation has {len(rows)} rows, expected {ROW_COUNT}"
        )
    return rows


def _relation_parts(source: str) -> tuple[tuple[int, ...], ...]:
    result: list[tuple[int, ...]] = []
    for part in range(78):
        body = dtk.def_body(source, f"relationPart{part}")
        rows = tuple(
            int(value)
            for value in re.findall(r"\brelationRow(\d+) rho\b", body)
        )
        if not rows:
            raise ValueError(f"{KEY}: relationPart{part} is empty")
        result.append(rows)
    owned = [row for rows in result for row in rows]
    if owned != list(range(ROW_COUNT)):
        raise ValueError(f"{KEY}: normalized relation parts do not own exact rows")
    return tuple(result)


def _structured_lc_body(metadata: StructuredLcMetadata) -> str:
    runs = ", ".join(
        f"⟨({coefficient} : F), {start}, {stride}, {count}⟩"
        for coefficient, start, stride, count in metadata.runs
    )
    residual = ", ".join(
        f"(({coefficient} : F), {wire})"
        for coefficient, wire in metadata.residual
    )
    return (
        "    Shieldd.GnarkFormal.StructuredLC.eval rho "
        "(({ const := "
        f"({metadata.const} : F), runs := [{runs}], "
        f"residual := [{residual}] }} : "
        "Shieldd.GnarkFormal.StructuredLC F))"
    )


def _validate_final_add_layout(exact_source: str) -> None:
    if set(FINAL_ADD_LC_METADATA) != {1516, 1517, 1518}:
        raise ValueError(f"{KEY}: final-add LC metadata census drifted")
    for lc, metadata in FINAL_ADD_LC_METADATA.items():
        if dtk.def_body(exact_source, f"relationLc{lc}") != _structured_lc_body(
            metadata
        ):
            raise ValueError(f"{KEY}: final-add LC metadata drifted at relationLc{lc}")
    for row, body in FINAL_ADD_ROW_BODY_MANIFEST.items():
        if dtk.def_body(exact_source, f"relationRow{row}") != body:
            raise ValueError(f"{KEY}: final-add row body drifted at relationRow{row}")
    if FINAL_ADD_POINT_LCS != (1518, 1517):
        raise ValueError(f"{KEY}: final-add coordinate mapping drifted")
    if (
        FINAL_ADD_X_COEFFICIENT + FINAL_ADD_Y_COEFFICIENT
    ) % ORDER != FINAL_ADD_SUM_COEFFICIENT:
        raise ValueError(f"{KEY}: final-add coefficient certificate drifted")


def _row_conjunction(rows: range | tuple[int, ...]) -> str:
    return " ∧\n    ".join(
        f"{RELATION}.relationRow{row} rho" for row in rows
    )


def _emit_relation_projection(
    lines: list[str],
    parts: tuple[tuple[int, ...], ...],
    keep_rows: set[int],
    hname: str = "h",
) -> None:
    part_names = [
        f"p{index}" if keep_rows.intersection(rows) else "_"
        for index, rows in enumerate(parts)
    ]
    lines.append(f"  unfold {RELATION}.relation at {hname}\n")
    lines.append(f"  rcases {hname} with ⟨\n")
    for group in dtk.chunks(part_names, 10):
        lines.append("    " + ", ".join(group) + ",\n")
    lines[-1] = lines[-1].rstrip(",\n") + "\n"
    lines.append("  ⟩\n")
    for part_index, rows in enumerate(parts):
        if not keep_rows.intersection(rows):
            continue
        lines.append(
            f"  unfold {RELATION}.relationPart{part_index} at p{part_index}\n"
        )
        names = [f"r{row}" if row in keep_rows else "_" for row in rows]
        if len(names) == 1:
            lines.append(f"  have {names[0]} := p{part_index}\n")
        else:
            lines.append(
                f"  rcases p{part_index} with ⟨{', '.join(names)}⟩\n"
            )


def _poseidon_rows_module(
    source: str,
    parts: tuple[tuple[int, ...], ...],
) -> str:
    rows = set(range(POSEIDON_TEMPLATE.row_count))
    lines = [
        f"import {RELATION_MODULE}\n",
        f"import {MODULE_PREFIX}SupportBase\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 50000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "theorem nbPoseidon_rows (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho) :\n",
        f"    {_row_conjunction(range(POSEIDON_TEMPLATE.row_count))} := by\n",
    ]
    _emit_relation_projection(lines, parts, rows)
    lines.append(
        "  exact ⟨"
        + ", ".join(f"r{row}" for row in range(POSEIDON_TEMPLATE.row_count))
        + "⟩\n\n"
    )
    lines.append(f"end {NAMESPACE}\n")
    return GENERATED_HEADER + "".join(lines)


def _poseidon_helpers(
    segments,
    mapping: dict[int, int],
    lc_names: dict[int, tuple[str, ...]],
) -> str:
    extracted = (
        "Shieldd.GnarkFormal.Extracted.Deployed." + POSEIDON_TEMPLATE.stem
    )
    lines: list[str] = []
    for segment_index in range(POSEIDON_TEMPLATE.row_count // 5):
        segment = segments[segment_index]
        row_indices = list(
            range(segment_index * 5, segment_index * 5 + len(segment["witnesses"]))
        )
        cont_type = poseidon.arrow_type(len(segment["cont"]), "F")
        continuation = " ".join(
            poseidon.rho(wire, mapping) for wire in segment["cont"]
        )
        binders = " ".join(
            poseidon.rho(wire, mapping) for wire in segment["binders"]
        )
        witnesses = [
            poseidon.rho(wire, mapping) for wire in segment["witnesses"]
        ]
        lines.extend(
            [
                f"theorem nbPoseidon_part{segment_index}_to_extracted "
                "(rho : Nat → F)\n",
                *[
                    f"    (r{row} : {RELATION}.relationRow{row} rho)\n"
                    for row in row_indices
                ],
                f"    {{k : {cont_type}}} (hk : k {continuation}) :\n",
                f"    {extracted}.seg{segment_index} {binders} k := by\n",
                f"  unfold {extracted}.seg{segment_index}\n",
                "  refine ⟨"
                + ", ".join(
                    witnesses
                    + ["?_"] * len(row_indices)
                    + ["hk"]
                )
                + "⟩\n",
            ]
        )
        for row in row_indices:
            dependencies = lc_names.get(row, ())
            names = [f"{RELATION}.relationRow{row}"] + [
                f"{RELATION}.{name}" for name in dependencies
            ]
            lines.append(f"  · unfold {' '.join(names)} at r{row}\n")
            if dependencies:
                lines.extend(
                    [
                        "    have choiceFreeAddAssoc (a b c : F) : "
                        "a + b + c = a + (b + c) :=\n",
                        "      @add_assoc F providerAddSemigroup a b c\n",
                        "    simpa only [choiceFreeAddAssoc] using "
                        f"r{row}\n",
                    ]
                )
            else:
                lines.append(f"    exact r{row}\n")
        lines.append("\n")
    return "".join(lines)


def _poseidon_provider(
    source: str,
    segments,
    arguments,
    gendata,
) -> str:
    namespace = (
        "Shieldd.GnarkFormal.Deployed.Templates.Semantics."
        + NAME
        + ".NbPoseidon"
    )
    extracted = (
        "Shieldd.GnarkFormal.Extracted.Deployed." + POSEIDON_TEMPLATE.stem
    )
    bridge = f"Shieldd.GnarkFormal.Deployed.{POSEIDON_TEMPLATE.leaf}"
    mapping = {
        int(wire[1:]): int(wire[1:])
        for segment in segments.values()
        for field in ("binders", "witnesses", "cont")
        for wire in segment[field]
    }
    helpers = _poseidon_helpers(
        segments,
        mapping,
        withdrawal._relation_lc_names(NAME),
    )
    final_wires = [
        int(wire[1:]) for wire in gendata["groups"]["38"]
    ]
    public_inputs = [f"(rho {wire})" for wire in arguments[0]]
    final_names = [f"w{wire}" for wire in final_wires]
    output = (
        f"{bridge}.s38_1 "
        + " ".join(f"(rho {wire})" for wire in final_wires)
    )
    spec_inputs = [
        withdrawal._rho_expression(expression)
        for expression in gendata["spec_inputs"]
    ]
    if spec_inputs != ["rho 1"]:
        raise ValueError(
            f"{KEY}: Poseidon asset seating drifted: {spec_inputs}"
        )
    if public_inputs != ["(rho 1)"]:
        raise ValueError(
            f"{KEY}: Poseidon public arguments drifted: {public_inputs}"
        )
    apply_chain = "\n".join(
        "  apply nbPoseidon_part"
        f"{segment}_to_extracted rho "
        + " ".join(
            f"r{row}" for row in range(segment * 5, segment * 5 + 5)
        )
        for segment in range(POSEIDON_TEMPLATE.row_count // 5)
    )
    return GENERATED_HEADER + f"""import {MODULE_PREFIX}PoseidonRows
import ShielddGnarkFormal.Deployed.{POSEIDON_TEMPLATE.leaf}.SemanticBridge
import ShielddGnarkFormal.Deployed.PrimeOrder
import Mathlib.Tactic.LinearCombination

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace {namespace}

def Order : Nat := {ORDER}
abbrev F := ZMod Order

instance templateFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

{named_instance_block("provider", include_add_semigroup=True)}
def output (rho : Nat → F) : F :=
  {output}

def spec (rho : Nat → F) : Prop :=
  output rho =
    Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1
      ({POSEIDON_DOMAIN} : F) (rho 1)

{helpers}theorem relation_to_poseidon
    (rho : Nat → F) (h : {RELATION}.relation rho) :
    {extracted}.relation {' '.join(public_inputs)}
      (fun {' '.join(final_names)} =>
        {' ∧ '.join(f'{wire} = rho {wire[1:]}' for wire in final_names)}) := by
  rcases {NAMESPACE}.nbPoseidon_rows rho h with ⟨
    {', '.join(f'r{row}' for row in range(POSEIDON_TEMPLATE.row_count))}
  ⟩
  unfold {extracted}.relation
{apply_chain}
  exact ⟨{', '.join('rfl' for _ in final_names)}⟩

theorem sound (rho : Nat → F)
    (h : {RELATION}.relation rho) : spec rho := by
  have hExtracted := relation_to_poseidon rho h
  rcases {bridge}.relation_sound_permSpec
      {' '.join(public_inputs)} _ hExtracted with
    ⟨{', '.join(final_names)}, hk, hperm⟩
  rcases hk with ⟨{', '.join(f'h{wire}' for wire in final_names)}⟩
  simpa [spec, output, {', '.join(f'h{wire}' for wire in final_names)}]
    using hperm

end {namespace}
"""


def _poseidon_files(
    source: str,
    raw_rows,
    parts: tuple[tuple[int, ...], ...],
) -> dict[Path, str]:
    template = POSEIDON_TEMPLATE
    poseidon_rows = raw_rows[: template.row_count]
    groups, segment_to_round, local_outputs = withdrawal._round_layout(
        template, poseidon_rows
    )
    arguments, continuations = withdrawal._cps_layout(
        template, poseidon_rows, groups, local_outputs
    )
    cps_source = withdrawal._emit_cps_source(
        template, poseidon_rows, arguments, continuations
    )
    gendata = withdrawal._gendata(
        template, poseidon_rows, arguments, groups, segment_to_round
    )
    outputs: dict[Path, str] = {
        OUT / f"{NAME}NbPoseidonRows.lean": _poseidon_rows_module(
            source, parts
        )
    }
    with tempfile.TemporaryDirectory(
        prefix=f"transfer-net-balance-{DIGEST[:8]}-"
    ) as temp_name:
        temp = Path(temp_name)
        extracted_dir = temp / "Extracted/Deployed"
        deployed_dir = temp / "Deployed"
        generator_dir = temp / "gen"
        extracted_dir.mkdir(parents=True)
        generator_dir.mkdir(parents=True)
        source_path = extracted_dir / f"{template.stem}.lean"
        source_path.write_text(cps_source)
        (
            generator_dir / f"{template.config_name}_gendata.json"
        ).write_text(json.dumps(gendata, indent=2) + "\n")
        saved = (
            poseidon_bridge.ROOT,
            poseidon_bridge.EXTRACTED,
            poseidon_bridge.DEPLOYED,
            poseidon_bridge.HERE,
            poseidon.EXTRACTED,
        )
        poseidon_bridge.ROOT = temp
        poseidon_bridge.EXTRACTED = extracted_dir
        poseidon_bridge.DEPLOYED = deployed_dir
        poseidon_bridge.HERE = generator_dir
        poseidon.EXTRACTED = extracted_dir
        poseidon_bridge.CONFIGS[template.config_name] = {
            "W": 2,
            "leaf": template.leaf,
            "slice_stem": template.stem,
            "choice_free_zmod": True,
            "link": "Poseidon1Link",
            "bridge_ns": "Poseidon1Bridge",
            "deployed_bridge": f"{template.leaf}DeployedBridge",
            "spec": "permSpec1",
            "domain_sym": "domainLit",
            "extracted_ns": "Shieldd.GnarkFormal.Extracted.PoseidonHash1",
        }
        try:
            with contextlib.redirect_stdout(io.StringIO()):
                poseidon_bridge.build(template.config_name)
            segments = poseidon.parse_segments(template.stem)
            if len(segments) != template.row_count // 5:
                raise ValueError(
                    f"{KEY}: generated Poseidon CPS segment count drifted"
                )
            outputs[
                FORMAL / "Extracted/Deployed" / source_path.name
            ] = source_path.read_text()
            for path in sorted(deployed_dir.rglob("*.lean")):
                outputs[
                    FORMAL / "Deployed" / path.relative_to(deployed_dir)
                ] = path.read_text()
        finally:
            (
                poseidon_bridge.ROOT,
                poseidon_bridge.EXTRACTED,
                poseidon_bridge.DEPLOYED,
                poseidon_bridge.HERE,
                poseidon.EXTRACTED,
            ) = saved
            poseidon_bridge.CONFIGS.pop(template.config_name, None)
    outputs[
        FORMAL / "Deployed" / f"{template.leaf}DeployedBridge.lean"
    ] = withdrawal._shim(template)
    outputs[
        OUT / f"{NAME}NbPoseidon.lean"
    ] = _poseidon_provider(source, segments, arguments, gendata)
    return outputs


def _singleton(side: dtk.Lc, label: str) -> int:
    try:
        return dtk.singleton_wire(side)
    except ValueError as error:
        raise ValueError(f"{KEY} {label}: {error}") from error


def _validate_binary_block(
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]], amount: Amount
) -> None:
    one = {0: 1}
    for index, row_index in enumerate(amount.boolean_rows):
        bit = amount.bit_wire + index
        if rows[row_index] != ({bit: 1}, {0: 1, bit: ORDER - 1}, {}):
            raise ValueError(
                f"{KEY} {amount.label}: Boolean row {row_index} drifted"
            )
    row = rows[amount.recomposition_row]
    if row[0] != one or row[2] != {amount.scalar_wire: 1}:
        raise ValueError(
            f"{KEY} {amount.label}: recomposition boundary drifted"
        )
    expected = {
        amount.bit_wire + index: pow(2, index, ORDER)
        for index in range(BITS)
    }
    if row[1] != expected:
        raise ValueError(
            f"{KEY} {amount.label}: recomposition coefficients drifted"
        )


def _recover_rungs(
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]], amount: Amount
) -> tuple[dtk.ScalarRung, ...]:
    _validate_binary_block(rows, amount)
    rungs: list[dtk.ScalarRung] = []
    cur_x, cur_y = 598, 600
    for index in range(BITS):
        if index == 0:
            select_x_row = amount.ladder_start
            add_rows: tuple[int, ...] = ()
        else:
            block_start = amount.ladder_start + 7 + (index - 1) * 13
            add_rows = tuple(range(block_start, block_start + 6))
            select_x_row = block_start + 6
        select_y_row = select_x_row + 1
        double_rows = tuple(range(select_y_row + 1, select_y_row + 6))
        bit = amount.bit_wire + index
        if rows[select_x_row][0] != {bit: 1}:
            raise ValueError(
                f"{KEY} {amount.label}: X selector row {select_x_row} drifted"
            )
        if rows[select_y_row][0] != {bit: 1}:
            raise ValueError(
                f"{KEY} {amount.label}: Y selector row {select_y_row} drifted"
            )
        delta_x = _singleton(
            rows[select_x_row][2], f"{amount.label} rung {index} X delta"
        )
        delta_y = _singleton(
            rows[select_y_row][2], f"{amount.label} rung {index} Y delta"
        )
        if index == 0:
            sum_x, sum_y = cur_x, cur_y
        else:
            sum_x = _singleton(
                rows[add_rows[4]][0], f"{amount.label} rung {index} sum X"
            )
            sum_y = _singleton(
                rows[add_rows[5]][0], f"{amount.label} rung {index} sum Y"
            )
        next_cur_x = _singleton(
            rows[double_rows[3]][0],
            f"{amount.label} rung {index} doubled X",
        )
        next_cur_y = _singleton(
            rows[double_rows[4]][0],
            f"{amount.label} rung {index} doubled Y",
        )
        rungs.append(
            dtk.ScalarRung(
                index=index,
                bit=bit,
                delta_x=delta_x,
                delta_y=delta_y,
                select_x_row=select_x_row,
                select_y_row=select_y_row,
                add_rows=add_rows,
                double_rows=double_rows,
                sum_x=sum_x,
                sum_y=sum_y,
                cur_x=cur_x,
                cur_y=cur_y,
                next_cur_x=next_cur_x,
                next_cur_y=next_cur_y,
            )
        )
        cur_x, cur_y = next_cur_x, next_cur_y
    if rungs[-1].double_rows[-1] != amount.ladder_end:
        raise ValueError(
            f"{KEY} {amount.label}: ladder endpoint drifted "
            f"({rungs[-1].double_rows[-1]} != {amount.ladder_end})"
        )
    owned = set(amount.boolean_rows) | {amount.recomposition_row}
    for rung in rungs:
        owned.update(dtk.rung_rows(rung, rows))
    expected = set(range(amount.boolean_start, amount.ladder_end + 1))
    if owned != expected:
        raise ValueError(
            f"{KEY} {amount.label}: row ownership drifted; "
            f"missing={sorted(expected - owned)[:8]}, "
            f"extra={sorted(owned - expected)[:8]}"
        )
    return tuple(rungs)


def _reviewed_seating(amount: Amount) -> tuple[int, ...]:
    """Canonical-local to the mature variable-ladder certificate coordinates."""
    offset = amount.seg * 20000
    seating = [offset + local for local in range(WIRE_COUNT)]
    seating[0] = 0
    seating[598] = 17
    seating[600] = 18
    for index in range(BITS):
        seating[amount.bit_wire + index] = dtk.BASE_INTERNAL + 977 + index
    if len(set(seating)) != len(seating):
        raise ValueError(f"{KEY} {amount.label}: reviewed transport is not injective")
    return tuple(seating)


def _transport_rungs(
    rungs: tuple[dtk.ScalarRung, ...], seating: tuple[int, ...]
) -> tuple[dtk.ScalarRung, ...]:
    fields = (
        "bit",
        "delta_x",
        "delta_y",
        "sum_x",
        "sum_y",
        "cur_x",
        "cur_y",
        "next_cur_x",
        "next_cur_y",
    )
    return tuple(
        replace(
            rung,
            **{
                field: seating[getattr(rung, field)]
                for field in fields
            },
        )
        for rung in rungs
    )


def _bits(amount: Amount, cfg: dtk.Instance) -> str:
    rows = set(amount.boolean_rows) | {amount.recomposition_row}
    lines = [
        f"import {RELATION_MODULE}\n",
        "import ShielddGnarkFormal.Deployed.PrimeOrder\n",
        "import ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition\n",
        "import ShielddGnarkFormal.RvkToBinaryChoiceFree\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n",
        "set_option linter.unusedVariables false\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        f"abbrev Order : Nat := {ORDER}\n",
        "abbrev F := ZMod Order\n\n",
        "local instance : Fact (Nat.Prime Order) :=\n",
        "  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩\n\n",
        f"def {amount.ident}Bits (rho : Nat → F) : List.Vector F {BITS} :=\n",
        f"  List.Vector.ofFn (fun i : Fin {BITS} => "
        f"rho ({amount.bit_wire} + i.val))\n\n",
        f"theorem {amount.ident}Bits_get (rho : Nat → F) "
        f"(i : Nat) (hi : i < {BITS}) :\n",
        f"    ({amount.ident}Bits rho)[i]! = "
        f"rho ({amount.bit_wire} + i) := by\n",
        f"  rw [getElem!_pos ({amount.ident}Bits rho) i (by simpa using hi)]\n",
        "  conv_lhs => rw [List.Vector.getElem_def]\n",
        f"  simp only [{amount.ident}Bits, List.Vector.toList_ofFn, "
        "List.getElem_ofFn]\n\n",
        "def onCurveAt (x y : F) : Prop := EdwardsBridge.onCurve ⟨x, y⟩\n\n",
        f"theorem {amount.ident}_toBinary (rho : Nat → F) "
        f"(h : {RELATION}.relation rho) :\n",
        f"    GatesDef.to_binary (rho {amount.scalar_wire}) {BITS} "
        f"({amount.ident}Bits rho) := by\n",
    ]
    dtk.emit_unpack(lines, cfg, rows)
    for row in amount.boolean_rows:
        lines.append(f"  unfold {RELATION}.relationRow{row} at r{row}\n")
    dependencies = dtk.lc_dependencies(cfg.seg, amount.recomposition_row)
    unfolds = " ".join(
        [f"{RELATION}.relationRow{amount.recomposition_row}"]
        + [f"{RELATION}.{name}" for name in dependencies]
    )
    lines.extend(
        [
            f"  have hrecover := recover_ofFn_eq_recBits rho "
            f"{amount.bit_wire} {BITS}\n",
            f"  have hacc : powSumAcc rho 0 {amount.bit_wire} 1 {BITS} = "
            f"rho {amount.scalar_wire} := by\n",
            f"    unfold {unfolds} at r{amount.recomposition_row}\n",
            "    simp only [powSumAcc]\n",
            f"    linear_combination r{amount.recomposition_row}\n",
            f"  have hrec : recover_binary_zmod' ({amount.ident}Bits rho) = "
            f"rho {amount.scalar_wire} := by\n",
            f"    simp only [{amount.ident}Bits]\n",
            "    rw [hrecover]\n",
            "    rw [powSumAcc_eq] at hacc\n",
            "    simpa using hacc\n",
            "  apply Shieldd.GnarkFormal.RvkToBinaryChoiceFree.to_binary_of_deployed\n",
            f"      (rho {amount.scalar_wire}) ({amount.ident}Bits rho)\n",
            "  · intro i hi\n",
            f"    have key : ({amount.ident}Bits rho)[i] = "
            f"rho ({amount.bit_wire} + i) := by\n",
            "      conv_lhs => rw [List.Vector.getElem_def]\n",
            f"      simp only [{amount.ident}Bits, List.Vector.toList_ofFn, "
            "List.getElem_ofFn]\n",
            f"    have hgoal : rho ({amount.bit_wire} + i) * "
            f"(1 - rho ({amount.bit_wire} + i)) = 0 := by\n",
            "      interval_cases i\n",
        ]
    )
    for row in amount.boolean_rows:
        lines.append(f"      · linear_combination r{row}\n")
    lines.extend(
        [
            "    exact key ▸ hgoal\n",
            "  · exact hrec\n\n",
            f"end {NAMESPACE}\n",
        ]
    )
    return "".join(lines)


def _rewrite(source: str, amount: Amount) -> str:
    old_namespace = "Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1"
    label = amount.module_label
    ident = amount.ident
    source = source.replace(
        f"ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
        f"DtkAdapterSeg{amount.seg}",
        MODULE_PREFIX + label,
    )
    source = source.replace(
        f"ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.Seg{amount.seg}",
        RELATION_MODULE,
    )
    source = source.replace(
        "ShielddGnarkFormal.Deployed.Dtk.Outputs",
        MODULE_PREFIX + label + "Outputs",
    )
    source = source.replace(
        "Shieldd.GnarkFormal.Deployed.Dtk.Outputs",
        NAMESPACE + f".{label}Outputs",
    )
    source = source.replace(
        "namespace Shieldd.GnarkFormal.Deployed.Dtk.Outputs",
        f"namespace {NAMESPACE}.{label}Outputs",
    ).replace(
        "end Shieldd.GnarkFormal.Deployed.Dtk.Outputs",
        f"end {NAMESPACE}.{label}Outputs",
    )
    source = source.replace(
        f"namespace {old_namespace}", f"namespace {NAMESPACE}"
    ).replace(
        f"end {old_namespace}", f"end {NAMESPACE}"
    )
    source = source.replace(f"Seg{amount.seg}.F", "F")
    source = source.replace(f"Seg{amount.seg}.", RELATION + ".")
    source = source.replace(f"seg{amount.seg}", ident)
    # The mature Dtk emitter calls this vector `segNScalarBits`; the exact
    # amount certificate above already owns it as `nb{Label}Bits`.
    source = source.replace(f"{ident}ScalarBits", f"{ident}Bits")
    source = source.replace(
        f"dtkOutX{amount.seg}", f"{ident}OutX"
    ).replace(
        f"dtkOutY{amount.seg}", f"{ident}OutY"
    )
    source = source.replace("Specs.onCurveAt", "onCurveAt")
    source = source.replace(
        "Shieldd.GnarkFormal.DtkBridge.dtkLadderK",
        "Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK",
    )
    source = source.replace(
        "Shieldd.GnarkFormal.Deployed.Dtk.stateTrace_to_dtkLadderK",
        "Shieldd.GnarkFormal.Deployed.NetBalance.stateTrace_to_nbLadderK",
    )
    source = source.replace(
        "import ShielddGnarkFormal.Deployed.Dtk.Ladder",
        "import ShielddGnarkFormal.Deployed.Dtk.Ladder\n"
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder",
    )
    forbidden = (
        "NoteReshape2x1",
        f"Seg{amount.seg}.",
        f"seg{amount.seg}",
        f"dtkOutX{amount.seg}",
        f"dtkOutY{amount.seg}",
        "DtkBridge.dtkLadderK",
        "stateTrace_to_dtkLadderK",
    )
    leaked = [marker for marker in forbidden if marker in source]
    if leaked:
        raise ValueError(
            f"{KEY} {amount.label}: provider leaked transport names {leaked}"
        )
    return GENERATED_HEADER + source


def _amount_semantic(amount: Amount) -> str:
    """Compose one exact binary decomposition with its variable-base ladder."""
    label = amount.module_label
    ident = amount.ident
    scalar = amount.scalar_wire
    return f"""import {MODULE_PREFIX}{label}Bits
import {MODULE_PREFIX}{label}Scalar
import ShielddGnarkFormal.ChoiceFreeBinary
import ShielddGnarkFormal.NetBalanceCommitmentBridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {NAMESPACE}

open Shieldd.GnarkFormal.ScalarMulBridge
open {NAMESPACE}.{label}Outputs

theorem {ident}_semantic (rho : Nat → F)
    (h : {RELATION}.relation rho)
    (hbase : EdwardsBridge.onCurve ⟨(rho 598 : F), (rho 600 : F)⟩) :
    (rho {scalar}).val < 2 ^ 128 ∧
    EdwardsBridge.onCurve ⟨({ident}OutX rho : F), ({ident}OutY rho : F)⟩ ∧
    toA ⟨({ident}OutX rho : F), ({ident}OutY rho : F)⟩ =
      Shieldd.GnarkFormal.Decaf377Assumptions.scalarMulLE 128
        (toA ⟨(rho 598 : F), (rho 600 : F)⟩) (rho {scalar}) := by
  have hbin := {ident}_toBinary rho h
  obtain ⟨bits, hbits, _⟩ :=
    Shieldd.GnarkFormal.ChoiceFreeBinary.exists_bool_vector_of_to_binary
      pow128_lt_order hbin
  have hladder := {ident}_scalar_ladder rho h bits hbits hbase
  have hbody : ∃ b, Shieldd.GnarkFormal.Extracted.NetBalanceCommitment.Gates.to_binary
      (rho {scalar}) 128 b ∧
      Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadderK b
        (finalKWithOutputCurve ({ident}OutX rho) ({ident}OutY rho))
        128 0 ⟨0, 1⟩ ⟨(rho 598 : F), (rho 600 : F)⟩ :=
    ⟨{ident}Bits rho, hbin, hladder⟩
  obtain ⟨res, hresOn, hresEq, z, w, hfinal⟩ :=
    Shieldd.GnarkFormal.NetBalanceCommitmentBridge.nbLadder
      pow128_lt_order hbase hbody
  have hfinal' := finalKWithOutputCurve_implies_finalK
    ({ident}OutX rho) ({ident}OutY rho)
    vec![res.x, res.y, z, w] hfinal
  have hresOut : res =
      ⟨({ident}OutX rho : F), ({ident}OutY rho : F)⟩ := by
    change res.x = {ident}OutX rho ∧ res.y = {ident}OutY rho ∧ True at hfinal'
    rcases hfinal' with ⟨hx, hy, -⟩
    cases res
    simp only at hx hy ⊢
    cases hx
    cases hy
    rfl
  refine ⟨
    Shieldd.GnarkFormal.ChoiceFreeBinary.range_of_to_binary
      pow128_lt_order hbin, ?_, ?_⟩
  · simpa only [hresOut] using hresOn
  · simpa only [hresOut] using hresEq

end {NAMESPACE}
"""


@contextmanager
def _configured_amount(
    amount: Amount,
    exact_source: str,
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
    rungs: tuple[dtk.ScalarRung, ...],
) -> Iterator[
    tuple[
        dtk.Instance,
        list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
        tuple[dtk.ScalarRung, ...],
    ]
]:
    seating = _reviewed_seating(amount)
    cfg = dtk.Instance(
        seg=amount.seg,
        internal_base=dtk.BASE_INTERNAL,
        div_x=598,
        div_y=600,
        following_seg=amount.seg + 10,
        wire_seating=seating,
    )
    shadow = ack._reviewed_shadow(exact_source, seating)
    reviewed_rows = ack._transport_rows(rows, seating)
    reviewed_rungs = _transport_rungs(rungs, seating)
    local_output_xs = [rung.delta_x for rung in rungs]
    local_output_ys = [rung.delta_y for rung in rungs]

    saved = (
        dtk.source,
        dtk.INSTANCES,
        dtk.output_wires,
        dtk.ROW_COUNT,
        dtk.LADDER_BITS,
        dict(dtk._SOURCE_CACHE),
        dict(dtk._RELATION_PARTS_CACHE),
    )
    try:
        dtk.source = lambda seg: shadow if seg == cfg.seg else saved[0](seg)
        dtk.INSTANCES = (cfg,)
        dtk.output_wires = lambda _cfg: (local_output_xs, local_output_ys)
        dtk.ROW_COUNT = ROW_COUNT
        dtk.LADDER_BITS = BITS
        dtk._SOURCE_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.clear()
        yield cfg, reviewed_rows, reviewed_rungs
    finally:
        (
            dtk.source,
            dtk.INSTANCES,
            dtk.output_wires,
            dtk.ROW_COUNT,
            dtk.LADDER_BITS,
            source_cache,
            parts_cache,
        ) = saved
        dtk._SOURCE_CACHE.clear()
        dtk._SOURCE_CACHE.update(source_cache)
        dtk._RELATION_PARTS_CACHE.clear()
        dtk._RELATION_PARTS_CACHE.update(parts_cache)


def _amount_files(
    amount: Amount,
    exact_source: str,
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
) -> dict[Path, str]:
    rungs = _recover_rungs(rows, amount)
    label = amount.module_label
    with _configured_amount(
        amount, exact_source, rows, rungs
    ) as (cfg, reviewed_rows, reviewed_rungs):
        sources: dict[str, str] = {
            "Outputs": dtk.emit_outputs(),
            "Bits": _bits(amount, cfg),
            "ScalarDefs": dtk.emit_scalar_defs_module(cfg, reviewed_rungs),
        }
        for chunk_index, subset in enumerate(dtk.scalar_chunks(reviewed_rungs)):
            sources[f"ScalarR{chunk_index}"] = dtk.emit_scalar_chunk(
                cfg, chunk_index, subset, reviewed_rows
            )
        sources["Scalar"] = dtk.emit_scalar(cfg, reviewed_rungs)
        sources["Semantic"] = _amount_semantic(amount)
    result = {
        OUT / f"{NAME}Nb{label}{suffix}.lean": _rewrite(source, amount)
        for suffix, source in sources.items()
    }
    expected = 5 + len(dtk.scalar_chunks(rungs))
    if len(result) != expected:
        raise ValueError(
            f"{KEY} {amount.label}: expected {expected} ladder modules, "
            f"got {len(result)}"
        )
    return result


def _amount_range_module(
    amount: Amount,
    parts: tuple[tuple[int, ...], ...],
    exact_source: str,
) -> str:
    """Emit the exact 128-bit range certificate for one deployed amount."""
    rows = set(amount.boolean_rows) | {amount.recomposition_row}
    ident = amount.ident
    # `lc_dependencies` normally reads a configured shadow relation.  The
    # optimized provider stays in canonical-local coordinates, so derive the
    # small split recomposition closure directly from the exact relation.
    roots = re.findall(
        r"\b(relationLc[A-Za-z0-9]+) rho",
        dtk.def_body(exact_source, f"relationRow{amount.recomposition_row}"),
    )
    closure: list[str] = []

    def visit(name: str) -> None:
        if name in closure:
            return
        # Lean unfolds names left-to-right.  Open the root LC before its split
        # Part0..Part3 dependencies become visible in the row hypothesis.
        closure.append(name)
        for dependency in re.findall(
            r"\b(relationLc[A-Za-z0-9]+) rho",
            dtk.def_body(exact_source, name),
        ):
            visit(dependency)

    for root in roots:
        visit(root)
    dependencies = tuple(closure)
    lines = [
        f"import {RELATION_MODULE}\n",
        f"import {MODULE_PREFIX}SupportBase\n",
        "import ShielddGnarkFormal.ChoiceFreeBinary\n",
        "import ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition\n",
        "import ShielddGnarkFormal.RvkToBinaryChoiceFree\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        f"def {ident}Bits (rho : Nat → F) : List.Vector F 128 :=\n",
        f"  List.Vector.ofFn (fun i : Fin 128 => rho ({amount.bit_wire} + i.val))\n\n",
        f"theorem {ident}Bits_get (rho : Nat → F) (i : Nat) (hi : i < 128) :\n",
        f"    ({ident}Bits rho)[i]! = rho ({amount.bit_wire} + i) := by\n",
        "  rw [getElem!_pos _ i (by simpa using hi)]\n",
        "  conv_lhs => rw [List.Vector.getElem_def]\n",
        f"  simp only [{ident}Bits, List.Vector.toList_ofFn, List.getElem_ofFn]\n\n",
        f"theorem {ident}_toBinary (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho) :\n",
        f"    GatesDef.to_binary (rho {amount.scalar_wire}) 128 ({ident}Bits rho) := by\n",
    ]
    _emit_relation_projection(lines, parts, rows)
    for row in amount.boolean_rows:
        lines.append(f"  unfold {RELATION}.relationRow{row} at r{row}\n")
    unfold = " ".join(
        [f"{RELATION}.relationRow{amount.recomposition_row}"]
        + [f"{RELATION}.{name}" for name in dependencies]
    )
    lines.extend([
        f"  have hrecover := recover_ofFn_eq_recBits rho {amount.bit_wire} 128\n",
        f"  have hacc : powSumAcc rho 0 1 {amount.bit_wire} 128 = rho {amount.scalar_wire} := by\n",
        f"    unfold {unfold} at r{amount.recomposition_row}\n",
        "    simp only [powSumAcc]\n",
        f"    linear_combination r{amount.recomposition_row}\n",
        f"  have hrec : recover_binary_zmod' ({ident}Bits rho) = rho {amount.scalar_wire} := by\n",
        f"    simp only [{ident}Bits]\n",
        "    rw [hrecover]\n",
        "    rw [powSumAcc_eq] at hacc\n",
        "    simpa using hacc\n",
        "  apply Shieldd.GnarkFormal.RvkToBinaryChoiceFree.to_binary_of_deployed\n",
        f"      (rho {amount.scalar_wire}) ({ident}Bits rho)\n",
        "  · intro i hi\n",
        f"    have key := {ident}Bits_get rho i hi\n",
        f"    have hgoal : rho ({amount.bit_wire} + i) * (1 - rho ({amount.bit_wire} + i)) = 0 := by\n",
        "      interval_cases i\n",
    ])
    lines.extend(
        f"      · linear_combination r{row}\n" for row in amount.boolean_rows
    )
    lines.extend([
        f"    rw [getElem!_pos ({ident}Bits rho) i (by simpa using hi)] at key\n",
        "    exact key ▸ hgoal\n",
        "  · exact hrec\n\n",
        f"theorem {ident}_range (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho) :\n",
        f"    (rho {amount.scalar_wire}).val < 2 ^ 128 := by\n",
        "  exact Shieldd.GnarkFormal.ChoiceFreeBinary.range_of_to_binary\n",
        f"    Shieldd.GnarkFormal.ScalarMulBridge.pow128_lt_order ({ident}_toBinary rho h)\n\n",
        f"end {NAMESPACE}\n",
    ])
    return GENERATED_HEADER + "".join(lines)


def _amount_range_files(
    parts: tuple[tuple[int, ...], ...], exact_source: str
) -> dict[Path, str]:
    return {
        OUT / f"{NAME}Nb{amount.module_label}Range.lean":
            _amount_range_module(amount, parts, exact_source)
        for amount in AMOUNTS
    }


def _recover_blind_rungs(
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
) -> tuple[nb.BlindRung, ...]:
    """Recover the exact 251-bit fixed-base tail at rows 4390..6194."""
    one = {0: 1}
    for index, row_index in enumerate(
        range(BLIND_BINARY_ROWS[0], BLIND_BINARY_ROWS[1] + 1)
    ):
        bit = BLIND_BIT_BASE + index
        if rows[row_index] != ({bit: 1}, {0: 1, bit: ORDER - 1}, {}):
            raise ValueError(
                f"{KEY}: blind Boolean row {row_index} drifted"
            )
    recomposition = rows[BLIND_COPY_ROW]
    expected = {
        BLIND_BIT_BASE + index: pow(2, index, ORDER)
        for index in range(251)
    }
    if (
        recomposition[0] != one
        or recomposition[1] != expected
        or recomposition[2] != {BLIND_WIRE: 1}
    ):
        raise ValueError(f"{KEY}: blind recomposition row drifted")

    result: list[nb.BlindRung] = []
    cursor = BLIND_COPY_ROW + 1
    for index in range(250):
        block_size = 5 if index < 149 else 8
        block = tuple(range(cursor, cursor + block_size))
        acc_x_row, acc_y_row = block[-2:]
        acc_x = _singleton(
            rows[acc_x_row][2], f"blind rung {index + 1} X accumulator"
        )
        acc_y = _singleton(
            rows[acc_y_row][2], f"blind rung {index + 1} Y accumulator"
        )
        bit = BLIND_BIT_BASE + 1 + index
        if not any(
            bit in rows[row][0] or bit in rows[row][1] for row in block
        ):
            raise ValueError(
                f"{KEY}: blind rung {index + 1} does not consume bit {bit}"
            )
        result.append(
            nb.BlindRung(
                index,
                bit,
                acc_x,
                acc_y,
                acc_x_row,
                acc_y_row,
                block,
                block_size == 8,
            )
        )
        cursor += block_size
    if cursor != BLIND_LADDER_END + 1:
        raise ValueError(
            f"{KEY}: blind ladder ended at row {cursor - 1}, "
            f"expected {BLIND_LADDER_END}"
        )
    if (result[-1].acc_x, result[-1].acc_y) != (6019, 6020):
        raise ValueError(f"{KEY}: blind accumulator endpoint drifted")
    return tuple(result)


@contextmanager
def _configured_blind(
    exact_source: str,
    rungs: tuple[nb.BlindRung, ...],
) -> Iterator[None]:
    """Temporarily seat the mature fixed-base emitter on the exact template."""
    nb_names = (
        "ROW_COUNT",
        "AMOUNT_BLOCKS",
        "BLIND_BIT_BASE",
        "BLIND_BINARY_ROWS",
        "BLIND_COPY_ROW",
        "BLIND_WIRE",
        "BLIND_ACCS",
        "OUT_X_WIRE",
        "OUT_Y_WIRE",
        "CONTRACTS_SOURCE",
    )
    saved_nb = {name: getattr(nb, name) for name in nb_names}
    saved_dtk_source = dtk.SOURCE_CONTRACTS
    saved_dtk_rows = dtk.ROW_COUNT
    virtual_source = RELATIONS / (".transfer-nb-provider-" + DIGEST)
    cache_key = (str(virtual_source.resolve()), 46)
    parts_key = (str(virtual_source.resolve()), 46, ROW_COUNT)
    old_cache = dtk._SOURCE_CACHE.get(cache_key)
    old_parts = dtk._RELATION_PARTS_CACHE.get(parts_key)
    try:
        nb.ROW_COUNT = ROW_COUNT
        nb.AMOUNT_BLOCKS = ()
        nb.BLIND_BIT_BASE = BLIND_BIT_BASE
        nb.BLIND_BINARY_ROWS = BLIND_BINARY_ROWS
        nb.BLIND_COPY_ROW = BLIND_COPY_ROW
        nb.BLIND_WIRE = BLIND_WIRE
        nb.BLIND_ACCS = tuple((rung.acc_x, rung.acc_y) for rung in rungs)
        nb.OUT_X_WIRE, nb.OUT_Y_WIRE = nb.BLIND_ACCS[-1]
        nb.CONTRACTS_SOURCE = virtual_source
        dtk.SOURCE_CONTRACTS = virtual_source
        dtk.ROW_COUNT = ROW_COUNT
        dtk._SOURCE_CACHE[cache_key] = exact_source
        dtk._RELATION_PARTS_CACHE.pop(parts_key, None)
        yield
    finally:
        for name, value in saved_nb.items():
            setattr(nb, name, value)
        dtk.SOURCE_CONTRACTS = saved_dtk_source
        dtk.ROW_COUNT = saved_dtk_rows
        if old_cache is None:
            dtk._SOURCE_CACHE.pop(cache_key, None)
        else:
            dtk._SOURCE_CACHE[cache_key] = old_cache
        if old_parts is None:
            dtk._RELATION_PARTS_CACHE.pop(parts_key, None)
        else:
            dtk._RELATION_PARTS_CACHE[parts_key] = old_parts


def _support_base() -> str:
    return GENERATED_HEADER + f"""import ShielddGnarkFormal.Deployed.PrimeOrder
import ShielddGnarkFormal.EdwardsBridge

namespace {NAMESPACE}

abbrev Order : Nat := Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order
abbrev F := Shieldd.GnarkFormal.EdwardsBridge.F

theorem reviewed_order : Order = {ORDER} := by
  rfl

instance nbSupportFactPrime : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

end {NAMESPACE}
"""


def _blind_base() -> str:
    return GENERATED_HEADER + f"""import {MODULE_PREFIX}SupportBase
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.Extracted.DecafEdwardsAdd

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {NAMESPACE}

def nbBlindBits (rho : Nat → F) : List.Vector F 251 :=
  List.Vector.ofFn (fun i : Fin 251 => rho ({BLIND_BIT_BASE} + i.val))

theorem nbBlindBits_get (rho : Nat → F) (i : Nat) (hi : i < 251) :
    (nbBlindBits rho)[i]! = rho ({BLIND_BIT_BASE} + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [nbBlindBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end {NAMESPACE}
"""


def _blind_on_curve() -> str:
    return GENERATED_HEADER + f"""import {MODULE_PREFIX}BlindStep
import ShielddGnarkFormal.Deployed.NetBalance.ChoiceFreeLadder

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace {NAMESPACE}

theorem nbBlind_onCurve (rho : Nat → F) (h : {RELATION}.relation rho)
    (bits : List.Vector Bool 251)
    (hbits : nbBlindBits rho = bits.map Bool.toZMod) :
    EdwardsBridge.onCurve (nbBlindAccState rho 251) := by
  have hbitAt : ∀ i, i < 251 →
      rho ({BLIND_BIT_BASE} + i) = Bool.toZMod bits[i]! := by
    intro i hi
    rw [← nbBlindBits_get rho i hi, hbits]
    rw [getElem!_pos (bits.map Bool.toZMod) i (by simpa using hi),
      getElem!_pos bits i (by simpa using hi), List.Vector.getElem_map]
  have hstep := nbBlind_hstep rho h bits hbitAt
  exact (Shieldd.GnarkFormal.Deployed.NetBalanceChoiceFree.fixedTrace_eq_fixedAccFrom
      bits (nbBlindAccState rho) hstep
      251 0 (by omega) EdwardsBridge.identity_onCurve).2

end {NAMESPACE}
"""


def _blind_semantic() -> str:
    return GENERATED_HEADER + f"""import {MODULE_PREFIX}BlindBits
import {MODULE_PREFIX}BlindScalar
import {MODULE_PREFIX}BlindOnCurve
import ShielddGnarkFormal.ChoiceFreeBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {NAMESPACE}

open Shieldd.GnarkFormal.ScalarMulBridge

theorem nbBlind_semantic (rho : Nat → F)
    (h : {RELATION}.relation rho) :
    (rho {BLIND_WIRE}).val < 2 ^ 251 ∧
    EdwardsBridge.onCurve (nbBlindAccState rho 251) ∧
    toA (nbBlindAccState rho 251) =
      Shieldd.GnarkFormal.Decaf377Assumptions.scalarMulLE 251
        Shieldd.GnarkFormal.Decaf377Assumptions.valueBlindingGenerator
        (rho {BLIND_WIRE}) := by
  have hbin := nbBlindBits_toBinary rho h
  obtain ⟨bits, hbits, hvalue⟩ :=
    Shieldd.GnarkFormal.ChoiceFreeBinary.exists_bool_vector_of_to_binary
      pow251_lt_order hbin
  have hscalar := nbBlind_scalarMul rho h bits hbits hvalue
  have hon := nbBlind_onCurve rho h bits hbits
  refine ⟨
    Shieldd.GnarkFormal.ChoiceFreeBinary.range_of_to_binary
      pow251_lt_order hbin, hon, ?_⟩
  simpa only [
      Shieldd.GnarkFormal.Deployed.NetBalanceChoiceFree.blindGen,
      Shieldd.GnarkFormal.Decaf377Assumptions.valueBlindingGenerator,
      toA] using hscalar

end {NAMESPACE}
"""


def _blind_files(
    exact_source: str,
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
) -> dict[Path, str]:
    rungs = _recover_blind_rungs(rows)
    template = SimpleNamespace(
        blind_bit_base=BLIND_BIT_BASE,
        blind_wire=BLIND_WIRE,
        amount_blocks=(),
    )
    with _configured_blind(exact_source, rungs):
        modules = nb.emit_blind_modules({"rows": rows, "blind": rungs})
        modules.pop("NbAdapterSeg46BlindEndpoint")
        modules.pop("NbAdapterSeg46Blind")
        binary = nb.emit_to_binary_modules()
    if set(binary) != {"NbAdapterSeg46BlindBits"}:
        raise ValueError(f"{KEY}: unexpected fixed-base binary modules")
    modules.update(binary)

    def preserve_structured_lc(source: str) -> str:
        direct = (
            "Shieldd.GnarkFormal.StructuredLC.eval, "
            "Shieldd.GnarkFormal.StructuredLC.sumRuns, "
            "Shieldd.GnarkFormal.StructuredLC.sumResidual, "
            "Shieldd.GnarkFormal.StrideRun.eval"
        )
        opaque = (
            "Shieldd.GnarkFormal.StructuredLC.eval_def, "
            "Shieldd.GnarkFormal.StructuredLC.sumRuns_cons, "
            "Shieldd.GnarkFormal.StructuredLC.sumRuns_nil, "
            "Shieldd.GnarkFormal.StructuredLC.sumResidual_cons, "
            "Shieldd.GnarkFormal.StructuredLC.sumResidual_nil, "
            "Shieldd.GnarkFormal.StrideRun.eval"
        )
        return source.replace(direct, opaque)

    result: dict[Path, str] = {
        OUT / f"{NAME}NbBase.lean": _blind_base(),
        OUT / f"{NAME}NbBlindScalar.lean": GENERATED_HEADER
        + note_nb._emit_blind_semantic(
            template, MODULE_PREFIX, NAMESPACE, RELATION
        ),
        OUT / f"{NAME}NbBlindOnCurve.lean": _blind_on_curve(),
        OUT / f"{NAME}NbBlind.lean": _blind_semantic(),
    }
    for old_name, source in modules.items():
        suffix = old_name.removeprefix("NbAdapterSeg46")
        result[OUT / f"{NAME}Nb{suffix}.lean"] = preserve_structured_lc(
            GENERATED_HEADER + note_nb._rewrite(
                source, template, MODULE_PREFIX, NAMESPACE, RELATION
            )
        )
    return result


@contextmanager
def _configured_encode_canon(exact_source: str) -> Iterator[dtk.Instance]:
    """Seat the mature canonical-Fq emitter on rows 258..763 exactly."""
    cfg = dtk.Instance(
        seg=ENCODE_CANON_SEG,
        internal_base=dtk.BASE_INTERNAL,
        div_x=17,
        div_y=18,
        following_seg=ENCODE_CANON_SEG + 1,
        wire_seating=tuple(range(WIRE_COUNT)),
    )
    virtual_source = RELATIONS / (".transfer-nb-encode-" + DIGEST)
    cache_key = (str(virtual_source.resolve()), cfg.seg)
    parts_key = (str(virtual_source.resolve()), cfg.seg, ROW_COUNT)
    saved_source = dtk.SOURCE_CONTRACTS
    saved_rows = dtk.ROW_COUNT
    old_cache = dtk._SOURCE_CACHE.get(cache_key)
    old_parts = dtk._RELATION_PARTS_CACHE.get(parts_key)
    try:
        dtk.SOURCE_CONTRACTS = virtual_source
        dtk.ROW_COUNT = ROW_COUNT
        dtk._SOURCE_CACHE[cache_key] = exact_source
        dtk._RELATION_PARTS_CACHE.pop(parts_key, None)
        yield cfg
    finally:
        dtk.SOURCE_CONTRACTS = saved_source
        dtk.ROW_COUNT = saved_rows
        if old_cache is None:
            dtk._SOURCE_CACHE.pop(cache_key, None)
        else:
            dtk._SOURCE_CACHE[cache_key] = old_cache
        if old_parts is None:
            dtk._RELATION_PARTS_CACHE.pop(parts_key, None)
        else:
            dtk._RELATION_PARTS_CACHE[parts_key] = old_parts


def _rewrite_encode_canon(source: str) -> str:
    source = "import ShielddGnarkFormal.ChoiceFreeZMod\n" + source
    source = source.replace(
        "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1."
        "CompressAdapterCommon",
        "ShielddGnarkFormal.Deployed.Templates.Semantics."
        "BinaryRecomposition",
    )
    source = source.replace(
        "ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.",
        "ShielddGnarkFormal.Deployed.Templates.Semantics.",
    )
    source = source.replace(
        "namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1",
        f"namespace {NAMESPACE}",
    ).replace(
        "end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1",
        f"end {NAMESPACE}",
    )
    source = source.replace(f"Seg{ENCODE_CANON_SEG}.F", "F")
    source = source.replace(
        f"Seg{ENCODE_CANON_SEG}.relation", RELATION + ".relation"
    )
    source = source.replace(
        f"Seg{ENCODE_CANON_SEG}.", RELATION + "."
    )
    source = source.replace(
        f"seg{ENCODE_CANON_SEG}Canon1", "nbEncodeCanon"
    )
    namespace_header = f"namespace {NAMESPACE}\n\n"
    choice_free_header = (
        namespace_header
        + "attribute [-instance] ZMod.instField\n"
        + "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n"
    )
    if source.count(namespace_header) != 1:
        raise ValueError(f"{KEY}: encode-canonical namespace header drifted")
    source = source.replace(namespace_header, choice_free_header, 1)
    forbidden = (
        "Contracts.NoteReshape2x1",
        f"Seg{ENCODE_CANON_SEG}.",
        f"seg{ENCODE_CANON_SEG}Canon1",
    )
    leaked = [marker for marker in forbidden if marker in source]
    if leaked:
        raise ValueError(f"{KEY}: encode-canonical transport leaked {leaked}")
    return GENERATED_HEADER + source


def _encode_base() -> str:
    return GENERATED_HEADER + f"""import {RELATION_MODULE}
import {MODULE_PREFIX}SupportBase
import ShielddGnarkFormal.Extracted.CanonicalFqBits

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000

namespace {NAMESPACE}

def nbEncodeCanonBits (rho : Nat → F) :
    List.Vector Shieldd.GnarkFormal.Extracted.CanonicalFqBits.F 253 :=
  List.Vector.ofFn (fun i : Fin 253 => rho (254 + i.val))

theorem nbEncodeCanonBits_get (rho : Nat → F) (i : Nat) (hi : i < 253) :
    (nbEncodeCanonBits rho)[i]! = rho (254 + i) := by
  rw [getElem!_pos _ i (by simpa using hi)]
  conv_lhs => rw [List.Vector.getElem_def]
  simp only [nbEncodeCanonBits, List.Vector.toList_ofFn, List.getElem_ofFn]

end {NAMESPACE}
"""


def _encode_canon_files(
    exact_source: str,
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
) -> dict[Path, str]:
    """Emit the exact 253-bit canonical field certificate at rows 258..763."""
    for index, row in enumerate(range(258, 511)):
        bit = 254 + index
        if rows[row] != ({bit: 1}, {0: 1, bit: ORDER - 1}, {}):
            raise ValueError(f"{KEY}: encode canonical Boolean row {row} drifted")
    expected_rec = {
        254 + index: pow(2, index, ORDER) for index in range(253)
    }
    if rows[511] != ({0: 1}, expected_rec, {250: 1}):
        raise ValueError(f"{KEY}: encode canonical recomposition drifted")

    base_stem = f"{NAME}NbEncodeBase"
    result = {OUT / f"{base_stem}.lean": _encode_base()}
    with _configured_encode_canon(exact_source) as cfg:
        relation_rows = dtk.relation_rows(cfg.seg)
        flags, row_for_j = dtk.flag_wire_map(
            cfg, ENCODE_CANON, relation_rows
        )
        if set(flags) != set(range(253)):
            raise ValueError(f"{KEY}: encode canonical flag map is incomplete")
        if set(row_for_j.values()) != set(range(512, 764)):
            raise ValueError(f"{KEY}: encode canonical comparison rows drifted")

        chain: list[tuple[str, str]] = []
        rec_stem = f"{NAME}NbEncodeCanonRec"
        chain.append(
            (
                rec_stem,
                dtk.emit_canon_recover(
                    cfg,
                    ENCODE_CANON,
                    None,
                    base_component=base_stem,
                ),
            )
        )
        binary_stem = f"{NAME}NbEncodeCanonBinary"
        chain.append(
            (
                binary_stem,
                dtk.emit_canon_binary(cfg, ENCODE_CANON, rec_stem),
            )
        )
        true_defs_stem = f"{NAME}NbEncodeCanonTrueDefs"
        chain.append(
            (
                true_defs_stem,
                dtk.emit_canon_true_defs(
                    cfg, ENCODE_CANON, relation_rows, binary_stem
                ),
            )
        )
        previous = true_defs_stem
        for chunk_index, _ in enumerate(dtk.canon_chunks()):
            stem = f"{NAME}NbEncodeCanonTrueR{chunk_index}"
            chain.append(
                (
                    stem,
                    dtk.emit_canon_true_chunk(
                        cfg,
                        ENCODE_CANON,
                        relation_rows,
                        previous,
                        chunk_index,
                    ),
                )
            )
            previous = stem
        true_stem = f"{NAME}NbEncodeCanonTrue"
        chain.append(
            (
                true_stem,
                dtk.emit_canon_true_thread(cfg, ENCODE_CANON, previous),
            )
        )
        previous = true_stem
        for chunk_index, _ in enumerate(dtk.canon_chunks()):
            stem = f"{NAME}NbEncodeCanonCompareR{chunk_index}"
            chain.append(
                (
                    stem,
                    dtk.emit_canon_compare_chunk(
                        cfg,
                        ENCODE_CANON,
                        relation_rows,
                        previous,
                        chunk_index,
                    ),
                )
            )
            previous = stem
        compare_stem = f"{NAME}NbEncodeCanonCompare"
        chain.append(
            (
                compare_stem,
                dtk.emit_canon_compare(cfg, ENCODE_CANON, previous),
            )
        )
        chain_stem = f"{NAME}NbEncodeCanonChain"
        chain.append(
            (
                chain_stem,
                dtk.emit_canon_chain(cfg, ENCODE_CANON, compare_stem),
            )
        )
        canon_stem = f"{NAME}NbEncodeCanon"
        chain.append(
            (
                canon_stem,
                dtk.emit_canon_block(
                    cfg,
                    block=ENCODE_CANON,
                    previous=chain_stem,
                ),
            )
        )
    for stem, source in chain:
        result[OUT / f"{stem}.lean"] = _rewrite_encode_canon(source)
    if len(result) != 40:
        raise ValueError(
            f"{KEY}: expected 40 encode-canonical modules, got {len(result)}"
        )
    return result


def _encode_semantic(
    parts: tuple[tuple[int, ...], ...],
) -> str:
    """Build the exact extracted encode circuit around the canonical block."""
    keep = set(range(230, 258)) | set(range(764, 776))
    poseidon_ns = NAMESPACE.removesuffix(".NbSupport") + ".NbPoseidon"
    lines = [
        f"import {MODULE_PREFIX}EncodeCanon\n",
        f"import {MODULE_PREFIX}Poseidon\n",
        "import ShielddGnarkFormal.Decaf377Assumptions\n",
        "import ShielddGnarkFormal.CompressDeployedGadgets\n",
        "import Mathlib.Tactic.LinearCombination\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 30000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
        "open Shieldd.GnarkFormal.DeployedGadgets\n\n",
        f"{named_instance_block('nbEncode', include_add_semigroup=True)}",
        "theorem nbEncode_spec (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho) :\n",
        "    Shieldd.GnarkFormal.Decaf377Assumptions.EncodeToCurveSpec\n",
        f"      ({poseidon_ns}.output rho)\n",
        "      ⟨(rho 598 : F), (rho 600 : F)⟩ := by\n",
        "  have hRelation := h\n",
    ]
    _emit_relation_projection(lines, parts, keep)
    for row in sorted(keep):
        lines.append(
            f"  unfold {RELATION}.relationRow{row} at r{row}\n"
        )
    lines.extend(
        [
            "  have hws : GatesDef.is_bool (rho 235) :=\n",
            "    is_bool_of_row _ (by linear_combination r233)\n",
            "  have hz : GatesDef.is_zero (rho 234) (rho 237) := by\n",
            "    refine is_zero_of_hint _ (rho 236) _ ?_ ?_\n",
            "    · linear_combination -r234\n",
            "    · linear_combination r235\n",
            "  have hzBool : GatesDef.is_bool (rho 237) := by\n",
            "    rcases hz with ⟨_, hout⟩ | ⟨_, hout⟩\n",
            "    · rw [hout]; unfold GatesDef.is_bool; ring\n",
            "    · rw [hout]; unfold GatesDef.is_bool; ring\n",
            "  have hsel15 : GatesDef.select (rho 237) 1 (rho 234) "
            "(rho 234 + rho 238) := by\n",
            "    refine select_of_row _ _ _ _ hzBool ?_\n",
            "    linear_combination -r236\n",
            "  have hinv16 : GatesDef.inv (rho 234 + rho 238) "
            "(rho 239) :=\n",
            "    inv_of_mul _ _ (by linear_combination r237)\n",
            "  have hnotWs : GatesDef.is_bool (1 - rho 235) := by\n",
            "    unfold GatesDef.is_bool\n",
            "    linear_combination r233\n",
            "  have hnotZ : GatesDef.is_bool (1 - rho 237) := by\n",
            "    unfold GatesDef.is_bool\n",
            "    rcases hz with ⟨_, hout⟩ | ⟨_, hout⟩\n",
            "    · rw [hout]; ring\n",
            "    · rw [hout]; ring\n",
            "  have hand22 : GatesDef.and (1 - rho 235) (rho 237) "
            "(rho 243) := by\n",
            "    refine and_of_row _ _ _ hnotWs hzBool ?_\n",
            "    linear_combination -r242\n",
            "  have hand23 : GatesDef.and (1 - rho 235) (1 - rho 237) "
            "(rho 244) := by\n",
            "    refine and_of_row _ _ _ hnotWs hnotZ ?_\n",
            "    linear_combination -r244\n",
            NB_ENCODE_POSEIDON_OUTPUT_SEAM_BLOCK,
            "  have hsign : GatesDef.select (rho 235) 1 (-1) "
            "(2 * rho 235 - 1) := by\n",
            "    refine select_of_row _ _ _ _ hws ?_\n",
            "    ring\n",
            "  have hinputSel : GatesDef.select (rho 235) 1 "
            "poseidonOutput (poseidonOutput + rho 248) := by\n",
            NB_ENCODE_INPUT_SELECT_PROOF_BLOCK,
            "  let g1 : F := "
            "(2841681278031794617739547238867782961338435681360110683443920362658525667816 : F) "
            "* rho 232\n",
            "  let g2 : F := (3021 : F) - "
            "(8444461749428370424248824938781546531375899335154063827935233455917409239040 : F)\n",
            "  let g3 : F := (3021 : F) * g1\n",
            "  let g4 : F := g3 - g2\n",
            "  let g5 : F := g2 * g1\n",
            "  let g6 : F := g5 - 3021\n",
            "  let g8 : F := g1 + 1\n",
            "  let g9 : F := 2 * 3021\n",
            "  let g10 : F := "
            "(8444461749428370424248824938781546531375899335154063827935233455917409239040 : F) "
            "- g9\n",
            "  let g11 : F := g8 * g10\n",
            "  let g36 : F := 2 * rho 235 - 1\n",
            "  let g41 : F := "
            "(8444461749428370424248824938781546531375899335154063827935233455917409239040 : F) "
            "- 2 * 3021\n",
            "  let g49 : F := "
            "(rho 253) * (g41 * g41) - 1\n",
            "  have hcircuit : "
            "Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.circuit\n",
            "      poseidonOutput (rho 235) (rho 240) "
            "(rho 598) (rho 600) := by\n",
            "    unfold Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.circuit\n",
            "    simp only [Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.Gates,\n",
            "      GatesGnark9, GatesGnark8, GatesDef.mul, GatesDef.add, "
            "GatesDef.sub, GatesDef.neg, GatesDef.eq]\n",
            NB_ENCODE_PRECANON_COEFFICIENT_CERTIFICATE_BLOCK,
            NB_ENCODE_PRECANON_ROW_FORM_BLOCK,
            "    refine ⟨\n",
            f"      {_typed_f('rho 232')}, ?_,\n",
            f"      {_typed_f('g1')}, rfl,\n",
            f"      {_typed_f('g2')}, rfl,\n",
            f"      {_typed_f('g3')}, rfl,\n",
            f"      {_typed_f('g4')}, rfl,\n",
            f"      {_typed_f('g5')}, rfl,\n",
            f"      {_typed_f('g6')}, rfl,\n",
            f"      {_typed_f('rho 233')}, ?_,\n",
            f"      {_typed_f('g8')}, rfl,\n",
            f"      {_typed_f('g9')}, rfl,\n",
            f"      {_typed_f('g10')}, rfl,\n",
            f"      {_typed_f('g11')}, rfl,\n",
            f"      {_typed_f('rho 234')}, ?_,\n",
            "      hws,\n",
            f"      {_typed_f('rho 237')}, hz,\n",
            f"      {_typed_f('rho 234 + rho 238')}, hsel15,\n",
            f"      {_typed_f('rho 239')}, hinv16,\n",
            f"      {_typed_f('rho 241')}, ?_,\n",
            f"      {_typed_f('rho 242')}, ?_,\n",
            "      ?_,\n",
            f"      {_typed_f('1 - rho 235')}, rfl,\n",
            f"      {_typed_f('1 - rho 237')}, rfl,\n",
            f"      {_typed_f('rho 243')}, hand22,\n",
            f"      {_typed_f('rho 244')}, hand23,\n",
            f"      {_typed_f('rho 241 - rho 239')}, rfl,\n",
            f"      {_typed_f('rho 245')}, ?_,\n",
            "      ?_,\n",
            f"      {_typed_f('rho 246')}, ?_,\n",
            "      ?_,\n",
            f"      {_typed_f('2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 239')}, rfl,\n",
            f"      {_typed_f('rho 241 - 2841681278031794617739547238867782961338435681360110683443920362658525667816 * rho 239')}, rfl,\n",
            f"      {_typed_f('rho 247')}, ?_,\n",
            "      ?_,\n",
            f"      {_typed_f('rho 235 + rho 243')}, rfl,\n",
            f"      {_typed_f('rho 235 + rho 243 + rho 244')}, rfl,\n",
            "      ?_,\n",
            f"      {_typed_f('g36')}, hsign,\n",
            f"      {_typed_f('poseidonOutput + rho 248')}, hinputSel,\n",
            f"      {_typed_f('rho 249')}, ?_,\n",
            f"      {_typed_f('rho 250')}, ?_,\n",
            f"      {_typed_f('2 * 3021')}, rfl,\n",
            f"      {_typed_f('g41')}, rfl,\n",
            f"      {_typed_f('-g36')}, ?_,\n",
            f"      {_typed_f('rho 251')}, ?_,\n",
            f"      {_typed_f('rho 252')}, ?_,\n",
            f"      {_typed_f('g1 - 1')}, rfl,\n",
            f"      {_typed_f('rho 253')}, ?_,\n",
            f"      {_typed_f('g41 * g41')}, rfl,\n",
            f"      {_typed_f('rho 253 * (g41 * g41)')}, rfl,\n",
            f"      {_typed_f('g49')}, rfl, ?_⟩\n",
            *NB_ENCODE_CIRCUIT_PROOF_BLOCKS,
            "      have hb : (nbEncodeCanonBits rho)[0]! = rho 254 :=\n",
            "        nbEncodeCanonBits_get rho 0 (by omega)\n",
            "      have hz2 : GatesDef.is_zero (rho 254 - rho 235) "
            "(rho 594) := by\n",
            "        refine is_zero_of_hint _ (rho 593) _ ?_ ?_\n",
            "        · linear_combination -r764\n",
            "        · linear_combination r765\n",
            "      have hz2Bool : GatesDef.is_bool (rho 594) := by\n",
            "        rcases hz2 with ⟨_, hout⟩ | ⟨_, hout⟩\n",
            "        · rw [hout]; unfold GatesDef.is_bool; ring\n",
            "        · rw [hout]; unfold GatesDef.is_bool; ring\n",
            "      have hsel54 : GatesDef.select (rho 594) (-rho 250) "
            "(rho 250) (rho 250 + rho 595) := by\n",
            "        refine select_of_row _ _ _ _ hz2Bool ?_\n",
            "        linear_combination -r766\n",
            "      have hinv61 : GatesDef.inv (1 - rho 596) (rho 597) :=\n",
            "        inv_of_mul _ _ (by linear_combination r768)\n",
            NB_ENCODE_TAIL_COEFFICIENT_CERTIFICATE_BLOCK,
            NB_ENCODE_HINV63_BLOCK,
            "      refine ⟨\n",
            f"        {_typed_f('rho 254 - rho 235')}, (by\n",
            "          exact congrArg (fun x : F => x - rho 235) hb.symm),\n",
            f"        {_typed_f('rho 594')}, hz2,\n",
            f"        {_typed_f('-rho 250')}, (by ring),\n",
            f"        {_typed_f('rho 250 + rho 595')}, hsel54,\n",
            f"        {_typed_f('rho 596')}, ?_,\n",
            f"        {_typed_f('2 * (rho 250 + rho 595)')}, rfl,\n",
            f"        {_typed_f('-(rho 596)')}, ?_,\n",
            f"        {_typed_f('1 - rho 596')}, (by ring),\n",
            f"        {_typed_f('-(rho 596)')}, ?_,\n",
            f"        {_typed_f('1 + rho 596')}, (by ring),\n",
            f"        {_typed_f('rho 597')}, hinv61,\n",
            f"        {_typed_f('rho 598')}, ?_,\n",
            f"        {_typed_f('rho 599')}, hinv63,\n",
            f"        {_typed_f('rho 600')}, ?_,\n",
            f"        {_typed_f('rho 601')}, ?_,\n",
            f"        {_typed_f('rho 602')}, ?_,\n",
            f"        {_typed_f('rho 602 - rho 601')}, (by ring),\n",
            f"        {_typed_f('3021 * rho 601')}, rfl,\n",
            f"        {_typed_f('rho 603')}, ?_,\n",
            f"        {_typed_f('1 + rho 603')}, rfl,\n",
            "        ?_, rfl, rfl, trivial⟩\n",
            *NB_ENCODE_CANON_PROOF_BLOCKS,
            NB_ENCODE_POSEIDON_SOUNDNESS_SEAM_BLOCK,
            "\n",
            f"end {NAMESPACE}\n",
        ]
    )
    return GENERATED_HEADER + "".join(lines)


def _add_module(
    parts: tuple[tuple[int, ...], ...],
    *,
    label: str,
    start: int,
    px: str,
    py: str,
    qx: str,
    qy: str,
    t0: int,
    out_x: int,
    out_y: int,
    imports: tuple[str, ...],
    opens: tuple[str, ...],
    unfold_points: tuple[str, ...],
) -> str:
    """Emit one exact six-row complete-Edwards-add certificate."""
    rows = set(range(start, start + 6))
    lc_names = withdrawal._relation_lc_names(NAME)
    lines = [
        *(f"import {module}\n" for module in imports),
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n",
        *(
            f"open {NAMESPACE}.{namespace}\n"
            for namespace in opens
        ),
        "\n",
        f"theorem nb{label}_spec (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        f"    (hp : EdwardsBridge.onCurve ⟨{px}, {py}⟩)\n",
        f"    (hq : EdwardsBridge.onCurve ⟨{qx}, {qy}⟩) :\n",
        "    EdwardsBridge.addSpec\n",
        f"      ⟨{px}, {py}⟩ ⟨{qx}, {qy}⟩\n",
        f"      ⟨(rho {out_x} : F), (rho {out_y} : F)⟩ := by\n",
    ]
    _emit_relation_projection(lines, parts, rows)
    for row in range(start, start + 6):
        names = [f"{RELATION}.relationRow{row}"] + [
            f"{RELATION}.{name}" for name in lc_names.get(row, ())
        ]
        lines.append(f"  unfold {' '.join(names)} at r{row}\n")
    simp = (
        "Shieldd.GnarkFormal.StructuredLC.eval "
        "Shieldd.GnarkFormal.StructuredLC.sumRuns "
        "Shieldd.GnarkFormal.StructuredLC.sumResidual "
        "Shieldd.GnarkFormal.StrideRun.eval"
    )
    point_unfold = " ".join(unfold_points)
    equations = (
        ("h0", f"({px} + {py}) * ({qx} + {qy}) = rho {t0}", start),
        ("h1", f"{px} * {qy} = rho {t0 + 1}", start + 1),
        ("h2raw", f"{qx} * {py} = rho {t0 + 2}", start + 2),
        (
            "h3",
            f"(3021 : F) * rho {t0 + 1} * rho {t0 + 2} = rho {t0 + 3}",
            start + 3,
        ),
        (
            "h4",
            f"rho {out_x} * (1 + rho {t0 + 3}) = "
            f"rho {t0 + 1} + rho {t0 + 2}",
            start + 4,
        ),
        (
            "h5",
            f"rho {out_y} * (1 - rho {t0 + 3}) = "
            f"rho {t0} - rho {t0 + 1} - rho {t0 + 2}",
            start + 5,
        ),
    )
    for hname, proposition, row in equations:
        lines.extend(
            [
                f"  have {hname} : {proposition} := by\n",
                f"    unfold {point_unfold}\n" if point_unfold else "",
                f"    simp only [{simp}, one_mul, zero_mul, add_zero, "
                f"zero_add] at r{row} ⊢\n",
                f"    linear_combination r{row}\n",
            ]
        )
    lines.extend(
        [
            f"  have h2 : {py} * {qx} = rho {t0 + 2} := by\n",
            "    simpa only [mul_comm] using h2raw\n",
            "  exact Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows\n",
            f"    {px} {py} {qx} {qy}\n",
            f"    (rho {t0}) (rho {t0 + 1}) (rho {t0 + 2}) "
            f"(rho {t0 + 3}) (rho {out_x}) (rho {out_y})\n",
            "    hp hq h0 h1 h2 h3 h4 h5\n\n",
            f"end {NAMESPACE}\n",
        ]
    )
    return GENERATED_HEADER + "".join(lines)


def _final_add_module(parts: tuple[tuple[int, ...], ...]) -> str:
    """Emit the seven-row final add over the opaque fixed-base accumulator."""
    rows = set(range(9747, 9754))
    lc_names = withdrawal._relation_lc_names(NAME)
    lines = [
        f"import {MODULE_PREFIX}BlindDefs\n",
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        "theorem nbFinalAdd_spec (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        "    (hp : EdwardsBridge.onCurve ⟨(rho 7768 : F), (rho 7769 : F)⟩)\n",
        "    (hq : EdwardsBridge.onCurve (nbBlindAccState rho 251)) :\n",
        "    EdwardsBridge.addSpec\n",
        "      ⟨(rho 7768 : F), (rho 7769 : F)⟩ (nbBlindAccState rho 251)\n",
        "      ⟨(rho 9580 : F), (rho 9581 : F)⟩ := by\n",
    ]
    _emit_relation_projection(lines, parts, rows)
    for row in range(9747, 9754):
        names = [f"{RELATION}.relationRow{row}"] + [
            f"{RELATION}.{name}" for name in lc_names.get(row, ())
        ]
        lines.append(f"  unfold {' '.join(names)} at r{row}\n")
    simp = (
        "Shieldd.GnarkFormal.StructuredLC.eval "
        "Shieldd.GnarkFormal.StructuredLC.sumRuns "
        "Shieldd.GnarkFormal.StructuredLC.sumResidual "
        "Shieldd.GnarkFormal.StrideRun.eval"
    )
    lines.extend(
        [
            "  have hqsum : (nbBlindAccState rho 251).x + "
            "(nbBlindAccState rho 251).y = rho 9575 := by\n",
            "    unfold nbBlindAccState nbBlindDeltaX250 nbBlindDeltaY250\n",
            f"    simp only [{simp}, one_mul, zero_mul, add_zero, zero_add] "
            "at r9747 ⊢\n",
            "    linear_combination r9747\n",
            "  have h0 : ((rho 7768 : F) + rho 7769) * "
            "((nbBlindAccState rho 251).x + "
            "(nbBlindAccState rho 251).y) = rho 9576 := by\n",
            "    rw [hqsum]\n",
            "    simpa only [one_mul, mul_comm] using r9748\n",
            "  have h1 : (rho 7768 : F) * "
            "(nbBlindAccState rho 251).y = rho 9577 := by\n",
            "    unfold nbBlindAccState nbBlindDeltaY250\n",
            f"    simp only [{simp}, one_mul, zero_mul, add_zero, zero_add] "
            "at r9749 ⊢\n",
            "    linear_combination r9749\n",
            "  have h2raw : (nbBlindAccState rho 251).x * "
            "(rho 7769 : F) = rho 9578 := by\n",
            "    unfold nbBlindAccState nbBlindDeltaX250\n",
            f"    simp only [{simp}, one_mul, zero_mul, add_zero, zero_add] "
            "at r9750 ⊢\n",
            "    linear_combination r9750\n",
            "  have h2 : (rho 7769 : F) * "
            "(nbBlindAccState rho 251).x = rho 9578 := by\n",
            "    simpa only [mul_comm] using h2raw\n",
            "  have h3 : (3021 : F) * rho 9577 * rho 9578 = rho 9579 := by\n",
            "    simpa only [one_mul] using r9751\n",
            "  have h4 : (rho 9580 : F) * (1 + rho 9579) = "
            "rho 9577 + rho 9578 := by\n",
            "    simpa only [one_mul] using r9752\n",
            "  have h5 : (rho 9581 : F) * (1 - rho 9579) = "
            "rho 9576 - rho 9577 - rho 9578 := by\n",
            "    linear_combination r9753\n",
            "  exact Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows\n",
            "    (rho 7768) (rho 7769)\n",
            "    (nbBlindAccState rho 251).x (nbBlindAccState rho 251).y\n",
            "    (rho 9576) (rho 9577) (rho 9578) (rho 9579)\n",
            "    (rho 9580) (rho 9581) hp hq h0 h1 h2 h3 h4 h5\n\n",
            f"end {NAMESPACE}\n",
        ]
    )
    return GENERATED_HEADER + "".join(lines)


def _add_files(
    parts: tuple[tuple[int, ...], ...],
) -> dict[Path, str]:
    def out(label: str, axis: str) -> str:
        return f"(nb{label}Out{axis} rho : F)"

    specs = (
        (
            "Add0",
            4350,
            out("Input0", "X"),
            out("Input0", "Y"),
            out("Input1", "X"),
            out("Input1", "Y"),
            4178,
            4182,
            4183,
            (
                f"{MODULE_PREFIX}Input0Outputs",
                f"{MODULE_PREFIX}Input1Outputs",
            ),
            ("Input0Outputs", "Input1Outputs"),
            (
                "nbInput0OutX",
                "nbInput0AccX128",
                "nbInput0OutY",
                "nbInput0AccY128",
                "nbInput1OutX",
                "nbInput1AccX128",
                "nbInput1OutY",
                "nbInput1AccY128",
            ),
        ),
        (
            "Add1",
            6143,
            "(rho 4182 : F)",
            "(rho 4183 : F)",
            f"-{out('Output0', 'X')}",
            out("Output0", "Y"),
            5971,
            5975,
            5976,
            (f"{MODULE_PREFIX}Output0Outputs",),
            ("Output0Outputs",),
            (
                "nbOutput0OutX",
                "nbOutput0AccX128",
                "nbOutput0OutY",
                "nbOutput0AccY128",
            ),
        ),
        (
            "Add2",
            7936,
            "(rho 5975 : F)",
            "(rho 5976 : F)",
            f"-{out('Output1', 'X')}",
            out("Output1", "Y"),
            7764,
            7768,
            7769,
            (f"{MODULE_PREFIX}Output1Outputs",),
            ("Output1Outputs",),
            (
                "nbOutput1OutX",
                "nbOutput1AccX128",
                "nbOutput1OutY",
                "nbOutput1AccY128",
            ),
        ),
    )
    result: dict[Path, str] = {}
    for (
        label,
        start,
        px,
        py,
        qx,
        qy,
        t0,
        out_x,
        out_y,
        imports,
        opens,
        unfolds,
    ) in specs:
        result[OUT / f"{NAME}Nb{label}.lean"] = _add_module(
            parts,
            label=label,
            start=start,
            px=px,
            py=py,
            qx=qx,
            qy=qy,
            t0=t0,
            out_x=out_x,
            out_y=out_y,
            imports=imports,
            opens=opens,
            unfold_points=unfolds,
        )
    result[OUT / f"{NAME}NbFinalAdd.lean"] = _final_add_module(parts)
    return result


def _optimized_signed_add_module(
    parts: tuple[tuple[int, ...], ...],
) -> str:
    """Subtract the output pair-sum point from the input pair-sum point."""
    inputs = f"{NAMESPACE.removesuffix('.NbSupport')}.InputsWindowSupport"
    outputs = f"{NAMESPACE.removesuffix('.NbSupport')}.OutputsWindowSupport"
    rows = set(range(4384, 4390))
    lines = [
        f"import {MODULE_PREFIX}SupportBase\n",
        f"import {MODULE_PREFIX.removesuffix('Nb')}InputsWindow2Defs\n",
        f"import {MODULE_PREFIX.removesuffix('Nb')}OutputsWindow2Defs\n",
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        "theorem nbValueAdd_spec (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        f"    (hp : EdwardsBridge.onCurve ({inputs}.output rho))\n",
        f"    (hq : EdwardsBridge.onCurve ⟨-({outputs}.output rho).x, ({outputs}.output rho).y⟩) :\n",
        "    EdwardsBridge.addSpec\n",
        f"      ({inputs}.output rho)\n",
        f"      ⟨-({outputs}.output rho).x, ({outputs}.output rho).y⟩\n",
        "      ⟨(rho 4214 : F), (rho 4215 : F)⟩ := by\n",
    ]
    _emit_relation_projection(lines, parts, rows)
    for row in sorted(rows):
        lines.append(f"  unfold {RELATION}.relationRow{row} at r{row}\n")
    point_unfold = f"{inputs}.output {outputs}.output"
    equations = (
        ("h0", f"(({inputs}.output rho).x + ({inputs}.output rho).y) * (-({outputs}.output rho).x + ({outputs}.output rho).y) = rho 4210", 4384),
        ("h1", f"({inputs}.output rho).x * ({outputs}.output rho).y = rho 4211", 4385),
        ("h2raw", f"(-({outputs}.output rho).x) * ({inputs}.output rho).y = rho 4212", 4386),
        ("h3", "(3021 : F) * rho 4211 * rho 4212 = rho 4213", 4387),
        ("h4", "rho 4214 * (1 + rho 4213) = rho 4211 + rho 4212", 4388),
        ("h5", "rho 4215 * (1 - rho 4213) = rho 4210 - rho 4211 - rho 4212", 4389),
    )
    for hname, proposition, row in equations:
        lines.extend([
            f"  have {hname} : {proposition} := by\n",
            f"    unfold {point_unfold}\n" if row < 4387 else "",
            f"    linear_combination r{row}\n",
        ])
    lines.extend([
        f"  have h2 : ({inputs}.output rho).y * (-({outputs}.output rho).x) = rho 4212 := by\n",
        "    simpa only [mul_comm] using h2raw\n",
        "  exact Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows\n",
        f"    ({inputs}.output rho).x ({inputs}.output rho).y\n",
        f"    (-({outputs}.output rho).x) ({outputs}.output rho).y\n",
        "    (rho 4210) (rho 4211) (rho 4212) (rho 4213)\n",
        "    (rho 4214) (rho 4215) hp hq h0 h1 h2 h3 h4 h5\n\n",
        f"end {NAMESPACE}\n",
    ])
    return GENERATED_HEADER + "".join(lines)


def _optimized_final_add_module(
    parts: tuple[tuple[int, ...], ...],
) -> str:
    """Add the value point to the blind point without expanding wide LCs."""
    rows = set(range(6195, 6202))
    x_lc, y_lc = FINAL_ADD_POINT_LCS
    lines = [
        f"import {MODULE_PREFIX}BlindDefs\n",
        "import ShielddGnarkFormal.Deployed.NetBalance.Ladder\n\n",
        "set_option maxRecDepth 1000000\n",
        "set_option maxHeartbeats 20000000\n\n",
        f"namespace {NAMESPACE}\n\n",
        "open scoped Shieldd.GnarkFormal.ChoiceFreeZMod\n\n",
        "def nbBlindPoint (rho : Nat → F) : EdwardsBridge.Point :=\n",
        f"  ⟨{RELATION}.relationLc{x_lc} rho, {RELATION}.relationLc{y_lc} rho⟩\n\n",
        "theorem nbBlindPoint_eq_state (rho : Nat → F) :\n",
        "    nbBlindPoint rho = nbBlindAccState rho 251 := by\n",
        "  unfold nbBlindPoint nbBlindAccState\n",
        "  congr 1\n",
        "  · change _ = _\n",
        f"    unfold {RELATION}.relationLc{x_lc} nbBlindDeltaX250\n",
        "    rw [Shieldd.GnarkFormal.StructuredLC.eval_def]\n",
        "    simp only [Shieldd.GnarkFormal.StructuredLC.sumRuns_cons,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumRuns_nil,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumResidual_cons,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumResidual_nil,\n",
        "      Shieldd.GnarkFormal.StrideRun.eval, zero_add, add_zero, one_mul]\n",
        "    ring\n",
        "  · change _ = _\n",
        f"    unfold {RELATION}.relationLc{y_lc} nbBlindDeltaY250\n",
        "    rw [Shieldd.GnarkFormal.StructuredLC.eval_def]\n",
        "    simp only [Shieldd.GnarkFormal.StructuredLC.sumRuns_cons,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumRuns_nil,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumResidual_cons,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumResidual_nil,\n",
        "      Shieldd.GnarkFormal.StrideRun.eval, zero_add, add_zero, one_mul]\n",
        "    ring\n\n",
        "theorem nbFinalAdd_spec (rho : Nat → F)\n",
        f"    (h : {RELATION}.relation rho)\n",
        "    (hp : EdwardsBridge.onCurve ⟨(rho 4214 : F), (rho 4215 : F)⟩)\n",
        "    (hq : EdwardsBridge.onCurve (nbBlindAccState rho 251)) :\n",
        "    EdwardsBridge.addSpec\n",
        "      ⟨(rho 4214 : F), (rho 4215 : F)⟩ (nbBlindAccState rho 251)\n",
        "      ⟨(rho 6026 : F), (rho 6027 : F)⟩ := by\n",
    ]
    _emit_relation_projection(lines, parts, rows)
    for row in sorted(rows):
        lines.append(f"  unfold {RELATION}.relationRow{row} at r{row}\n")
    lines.extend([
        "  have hBlindSumCoeff :\n",
        f"      ({FINAL_ADD_SUM_COEFFICIENT} : F) =\n",
        f"        ({FINAL_ADD_X_COEFFICIENT} : F) +\n",
        f"          ({FINAL_ADD_Y_COEFFICIENT} : F) := by\n",
        "    calc\n",
        f"      ({FINAL_ADD_SUM_COEFFICIENT} : F) =\n",
        f"          (({FINAL_ADD_X_COEFFICIENT} +\n",
        f"            {FINAL_ADD_Y_COEFFICIENT} : Nat) : F) :=\n",
        "        Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq\n",
        f"          Order {FINAL_ADD_SUM_COEFFICIENT}\n",
        f"          ({FINAL_ADD_X_COEFFICIENT} +\n",
        f"            {FINAL_ADD_Y_COEFFICIENT}) (by decide) (by decide)\n",
        f"      _ = ({FINAL_ADD_X_COEFFICIENT} : F) +\n",
        f"          ({FINAL_ADD_Y_COEFFICIENT} : F) := by\n",
        "        rw [Nat.cast_add]\n",
        "        rfl\n",
        "  have hsumLc :\n",
        f"      {RELATION}.relationLc1516 rho =\n",
        f"        {RELATION}.relationLc{x_lc} rho + {RELATION}.relationLc{y_lc} rho := by\n",
        f"    unfold {RELATION}.relationLc1516 {RELATION}.relationLc{x_lc} {RELATION}.relationLc{y_lc}\n",
        "    rw [Shieldd.GnarkFormal.StructuredLC.eval_def,\n",
        "      Shieldd.GnarkFormal.StructuredLC.eval_def,\n",
        "      Shieldd.GnarkFormal.StructuredLC.eval_def]\n",
        "    simp only [Shieldd.GnarkFormal.StructuredLC.sumRuns_cons,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumRuns_nil,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumResidual_cons,\n",
        "      Shieldd.GnarkFormal.StructuredLC.sumResidual_nil,\n",
        "      Shieldd.GnarkFormal.StrideRun.eval, zero_add, add_zero, one_mul]\n",
        "    rw [hBlindSumCoeff]\n",
        "    ring\n",
        "  have hsum : (nbBlindPoint rho).x + (nbBlindPoint rho).y = rho 6021 := by\n",
        "    unfold nbBlindPoint\n",
        "    rw [← hsumLc]\n",
        "    simpa only [one_mul] using r6195\n",
        "  have h0 : ((rho 4214 : F) + rho 4215) *\n",
        "      ((nbBlindPoint rho).x + (nbBlindPoint rho).y) = rho 6022 := by\n",
        "    rw [hsum]\n",
        "    have h0comm : ((rho 4214 : F) + rho 4215) * rho 6021 =\n",
        "        rho 6021 * ((rho 4214 : F) + rho 4215) := mul_comm _ _\n",
        "    rw [h0comm]\n",
        "    simpa only [one_mul] using r6196\n",
        "  have h1 : (rho 4214 : F) * (nbBlindPoint rho).y = rho 6023 := by\n",
        "    unfold nbBlindPoint\n",
        "    simpa only [one_mul] using r6197\n",
        "  have h2comm : (nbBlindPoint rho).x * (rho 4215 : F) =\n",
        "      (rho 4215 : F) * (nbBlindPoint rho).x := mul_comm _ _\n",
        "  have h2raw : (nbBlindPoint rho).x * (rho 4215 : F) = rho 6024 := by\n",
        "    rw [h2comm]\n",
        "    unfold nbBlindPoint\n",
        "    simpa only [one_mul] using r6198\n",
        "  have h2 : (rho 4215 : F) * (nbBlindPoint rho).x = rho 6024 := by\n",
        "    exact h2comm.symm.trans h2raw\n",
        "  have h3 : (3021 : F) * rho 6023 * rho 6024 = rho 6025 := by\n",
        "    simpa only [one_mul] using r6199\n",
        "  have h4 : (rho 6026 : F) * (1 + rho 6025) = rho 6023 + rho 6024 := by\n",
        "    simpa only [one_mul] using r6200\n",
        "  have h5 : (rho 6027 : F) * (1 - rho 6025) = rho 6022 - rho 6023 - rho 6024 := by\n",
        "    linear_combination r6201\n",
        "  rw [← nbBlindPoint_eq_state rho] at hq ⊢\n",
        "  exact Shieldd.GnarkFormal.Deployed.NetBalance.addSpec_of_rows\n",
        "    (rho 4214) (rho 4215) (nbBlindPoint rho).x (nbBlindPoint rho).y\n",
        "    (rho 6022) (rho 6023) (rho 6024) (rho 6025)\n",
        "    (rho 6026) (rho 6027) hp hq h0 h1 h2 h3 h4 h5\n\n",
        f"end {NAMESPACE}\n",
    ])
    return GENERATED_HEADER + "".join(lines)


def _optimized_add_files(
    parts: tuple[tuple[int, ...], ...],
) -> dict[Path, str]:
    return {
        OUT / f"{NAME}NbValueAdd.lean": _optimized_signed_add_module(parts),
        OUT / f"{NAME}NbFinalAdd.lean": _optimized_final_add_module(parts),
    }


def _provider() -> str:
    """Compose every exact block into the independent net-balance spec."""
    namespace = (
        "Shieldd.GnarkFormal.Deployed.Templates.Semantics." + NAME
    )
    return GENERATED_HEADER + f"""import {MODULE_PREFIX}Encode
import {MODULE_PREFIX}Input0Semantic
import {MODULE_PREFIX}Input1Semantic
import {MODULE_PREFIX}Output0Semantic
import {MODULE_PREFIX}Output1Semantic
import {MODULE_PREFIX}Add0
import {MODULE_PREFIX}Add1
import {MODULE_PREFIX}Add2
import {MODULE_PREFIX}Blind
import {MODULE_PREFIX}FinalAdd
import ShielddGnarkFormal.NetBalanceCommitment2Bridge

set_option maxRecDepth 1000000
set_option maxHeartbeats 30000000

namespace {namespace}

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.ScalarMulBridge
open NbSupport
open NbSupport.Input0Outputs
open NbSupport.Input1Outputs
open NbSupport.Output0Outputs
open NbSupport.Output1Outputs

abbrev Order : Nat := NbSupport.Order
abbrev F := NbSupport.F

def relation (rho : Nat → F) : Prop :=
  {RELATION}.relation rho

def spec (rho : Nat → F) : Prop :=
  (rho 732).val < 2 ^ 128 ∧
  (rho 2519).val < 2 ^ 128 ∧
  (rho 4312).val < 2 ^ 128 ∧
  (rho 6105).val < 2 ^ 128 ∧
  (rho 8021).val < 2 ^ 251 ∧
  Shieldd.GnarkFormal.Decaf377Assumptions.NetBalanceCommitment2Spec
    (rho 732) (rho 2519) (rho 4312) (rho 6105) (rho 1) (rho 8021)
    ⟨(rho 9580 : F), (rho 9581 : F)⟩ ∧
  Shieldd.GnarkFormal.Protocol.Common.Decaf.netBalanceCommitment2
    (rho 732) (rho 2519) (rho 4312) (rho 6105) (rho 1) (rho 8021)
    ⟨(rho 9580 : F), (rho 9581 : F)⟩

private theorem identity_add (p :
    Shieldd.GnarkFormal.Decaf377Assumptions.Point) :
    Shieldd.GnarkFormal.Decaf377Assumptions.add
      Shieldd.GnarkFormal.Decaf377Assumptions.identity p = p := by
  cases p
  simp only [
    Shieldd.GnarkFormal.Decaf377Assumptions.add,
    Shieldd.GnarkFormal.Decaf377Assumptions.identity,
    zero_mul, mul_zero, zero_add, add_zero, one_mul, mul_one,
    inv_one, sub_zero, neg_zero]

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  have hrel : {RELATION}.relation rho := h
  have hPose := NbPoseidon.sound rho hrel
  unfold NbPoseidon.spec at hPose
  have hEncode := nbEncode_spec rho hrel
  have hVgEq :=
    Shieldd.GnarkFormal.Decaf377Assumptions.encode_spec_eq hEncode
  have hEncodeFields := hEncode
  rcases hEncodeFields with
    ⟨_, _, _, _, _, _, _, _, _, hVgCurve⟩
  have hVgOn :
      EdwardsBridge.onCurve ⟨(rho 598 : F), (rho 600 : F)⟩ := by
    unfold Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.OnCurve
      Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.d
      Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.dNat at hVgCurve
    unfold EdwardsBridge.onCurve EdwardsBridge.d
    exact hVgCurve

  obtain ⟨hInput0Range, hInput0On, hInput0Eq⟩ :=
    nbInput0_semantic rho hrel hVgOn
  obtain ⟨hInput1Range, hInput1On, hInput1Eq⟩ :=
    nbInput1_semantic rho hrel hVgOn
  obtain ⟨hOutput0Range, hOutput0On, hOutput0Eq⟩ :=
    nbOutput0_semantic rho hrel hVgOn
  obtain ⟨hOutput1Range, hOutput1On, hOutput1Eq⟩ :=
    nbOutput1_semantic rho hrel hVgOn

  have hAdd0 := nbAdd0_spec rho hrel hInput0On hInput1On
  have hSum0Eq := EdwardsBridge.addSpec_eq
    ⟨nbInput0OutX rho, nbInput0OutY rho⟩
    ⟨nbInput1OutX rho, nbInput1OutY rho⟩
    ⟨(rho 4182 : F), (rho 4183 : F)⟩
    hInput0On hInput1On hAdd0
  have hSum0On :
      EdwardsBridge.onCurve ⟨(rho 4182 : F), (rho 4183 : F)⟩ :=
    hSum0Eq ▸ EdwardsBridge.add_onCurve _ _ hInput0On hInput1On

  have hNegOutput0 :
      EdwardsBridge.negF
        ⟨nbOutput0OutX rho, nbOutput0OutY rho⟩ =
      ⟨-nbOutput0OutX rho, nbOutput0OutY rho⟩ := rfl
  have hNegOutput0On :
      EdwardsBridge.onCurve
        ⟨(-nbOutput0OutX rho : F), nbOutput0OutY rho⟩ := by
    rw [← hNegOutput0]
    exact EdwardsBridge.neg_onCurve _ hOutput0On
  have hAdd1 := nbAdd1_spec rho hrel hSum0On hNegOutput0On
  have hSum1Eq := EdwardsBridge.addSpec_eq
    ⟨(rho 4182 : F), (rho 4183 : F)⟩
    ⟨-nbOutput0OutX rho, nbOutput0OutY rho⟩
    ⟨(rho 5975 : F), (rho 5976 : F)⟩
    hSum0On hNegOutput0On hAdd1
  have hSum1On :
      EdwardsBridge.onCurve ⟨(rho 5975 : F), (rho 5976 : F)⟩ :=
    hSum1Eq ▸ EdwardsBridge.add_onCurve _ _ hSum0On hNegOutput0On

  have hNegOutput1 :
      EdwardsBridge.negF
        ⟨nbOutput1OutX rho, nbOutput1OutY rho⟩ =
      ⟨-nbOutput1OutX rho, nbOutput1OutY rho⟩ := rfl
  have hNegOutput1On :
      EdwardsBridge.onCurve
        ⟨(-nbOutput1OutX rho : F), nbOutput1OutY rho⟩ := by
    rw [← hNegOutput1]
    exact EdwardsBridge.neg_onCurve _ hOutput1On
  have hAdd2 := nbAdd2_spec rho hrel hSum1On hNegOutput1On
  have hSum2Eq := EdwardsBridge.addSpec_eq
    ⟨(rho 5975 : F), (rho 5976 : F)⟩
    ⟨-nbOutput1OutX rho, nbOutput1OutY rho⟩
    ⟨(rho 7768 : F), (rho 7769 : F)⟩
    hSum1On hNegOutput1On hAdd2
  have hSum2On :
      EdwardsBridge.onCurve ⟨(rho 7768 : F), (rho 7769 : F)⟩ :=
    hSum2Eq ▸ EdwardsBridge.add_onCurve _ _ hSum1On hNegOutput1On

  obtain ⟨hBlindRange, hBlindOn, hBlindEq⟩ :=
    nbBlind_semantic rho hrel
  have hFinal := nbFinalAdd_spec rho hrel hSum2On hBlindOn
  have hFinalEq := EdwardsBridge.addSpec_eq
    ⟨(rho 7768 : F), (rho 7769 : F)⟩
    (nbBlindAccState rho 251)
    ⟨(rho 9580 : F), (rho 9581 : F)⟩
    hSum2On hBlindOn hFinal

  have hCircuitSpec :
      Shieldd.GnarkFormal.Decaf377Assumptions.NetBalanceCommitment2Spec
        (rho 732) (rho 2519) (rho 4312) (rho 6105)
        (rho 1) (rho 8021)
        ⟨(rho 9580 : F), (rho 9581 : F)⟩ := by
    show Shieldd.GnarkFormal.Decaf377Assumptions.Point.mk
        (rho 9580) (rho 9581) =
      Shieldd.GnarkFormal.Decaf377Assumptions.netBalanceCommit2
        (rho 732) (rho 2519) (rho 4312) (rho 6105) (rho 1) (rho 8021)
    have hGoal :
        Shieldd.GnarkFormal.Decaf377Assumptions.Point.mk
          (rho 9580) (rho 9581) =
        toA ⟨(rho 9580 : F), (rho 9581 : F)⟩ := rfl
    rw [hGoal, hFinalEq, toA_addF, hSum2Eq, toA_addF,
      hNegOutput1.symm, toA_negF, hSum1Eq, toA_addF,
      hNegOutput0.symm, toA_negF, hSum0Eq, toA_addF,
      hInput0Eq, hInput1Eq, hOutput0Eq, hOutput1Eq, hBlindEq]
    simp only [
      Shieldd.GnarkFormal.Decaf377Assumptions.netBalanceCommit2,
      Shieldd.GnarkFormal.Decaf377Assumptions.valueGeneratorDomain]
    rw [← hPose, hVgEq,
      Shieldd.GnarkFormal.ScalarMulBridge.scalarMulLE_zero, identity_add]
  have hProtocolSpec :=
    Shieldd.GnarkFormal.NetBalanceCommitment2Bridge.
      protocol_netBalanceCommitment2_of_spec
        (rho 732) (rho 2519) (rho 4312) (rho 6105)
        (rho 1) (rho 8021)
        ⟨(rho 598 : F), (rho 600 : F)⟩
        ⟨(rho 9580 : F), (rho 9581 : F)⟩
        hEncode hCircuitSpec
  exact ⟨hInput0Range, hInput1Range, hOutput0Range, hOutput1Range,
    hBlindRange, hCircuitSpec, hProtocolSpec⟩

end {namespace}
"""


def _optimized_provider() -> str:
    """Compose every exact block of the optimized deployed relation."""
    namespace = NAMESPACE.removesuffix(".NbSupport")
    inputs = namespace + ".InputsWindowSupport"
    outputs = namespace + ".OutputsWindowSupport"
    poseidon_ns = namespace + ".NbPoseidon"
    return GENERATED_HEADER + f"""import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.Protocol.Common
import ShielddGnarkFormal.Window2ScalarMulBridge
import {MODULE_PREFIX}Encode
import {MODULE_PREFIX}Input0Range
import {MODULE_PREFIX}Input1Range
import {MODULE_PREFIX}Output0Range
import {MODULE_PREFIX}Output1Range
import {MODULE_PREFIX.removesuffix('Nb')}InputsWindow2Boolean
import {MODULE_PREFIX.removesuffix('Nb')}InputsWindow2Semantic
import {MODULE_PREFIX.removesuffix('Nb')}OutputsWindow2Boolean
import {MODULE_PREFIX.removesuffix('Nb')}OutputsWindow2Semantic
import {MODULE_PREFIX}ValueAdd
import {MODULE_PREFIX}Blind
import {MODULE_PREFIX}FinalAdd

set_option maxRecDepth 1000000
set_option maxHeartbeats 30000000

namespace {namespace}

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod
open Shieldd.GnarkFormal.ScalarMulBridge
open NbSupport

abbrev Order : Nat := NbSupport.Order
abbrev F := NbSupport.F

def relation (rho : Nat → F) : Prop :=
  {RELATION}.relation rho

def spec (rho : Nat → F) : Prop :=
  {poseidon_ns}.spec rho ∧
  Shieldd.GnarkFormal.Decaf377Assumptions.EncodeToCurveSpec
    ({poseidon_ns}.output rho) ⟨(rho 598 : F), (rho 600 : F)⟩ ∧
  (rho 732).val < 2 ^ 128 ∧
  (rho 861).val < 2 ^ 128 ∧
  (rho 990).val < 2 ^ 128 ∧
  (rho 1119).val < 2 ^ 128 ∧
  (rho 4467).val < 2 ^ 251 ∧
  {inputs}.spec rho ∧
  {outputs}.spec rho ∧
  toA ⟨(rho 6026 : F), (rho 6027 : F)⟩ =
    Shieldd.GnarkFormal.Decaf377Assumptions.add
      (Shieldd.GnarkFormal.Decaf377Assumptions.add
        (toA ({inputs}.output rho))
        (Shieldd.GnarkFormal.Decaf377Assumptions.neg
          (toA ({outputs}.output rho))))
      (Shieldd.GnarkFormal.Decaf377Assumptions.scalarMulLE 251
        Shieldd.GnarkFormal.Decaf377Assumptions.valueBlindingGenerator
        (rho 4467)) ∧
  Shieldd.GnarkFormal.Protocol.Common.Decaf.netBalanceCommitment2
    (rho 732) (rho 861) (rho 990) (rho 1119)
    (rho 1) (rho 4467) ⟨(rho 6026 : F), (rho 6027 : F)⟩

theorem sound (rho : Nat → F) (h : relation rho) : spec rho := by
  have hrel : {RELATION}.relation rho := h
  have hPose := {poseidon_ns}.sound rho hrel
  have hEncode := nbEncode_spec rho hrel
  have hEncodeFields := hEncode
  rcases hEncodeFields with ⟨_, _, _, _, _, _, _, _, _, hVgCurve⟩
  have hVgOn :
      EdwardsBridge.onCurve ⟨(rho 598 : F), (rho 600 : F)⟩ := by
    unfold Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.OnCurve
      Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.d
      Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.dNat at hVgCurve
    unfold EdwardsBridge.onCurve EdwardsBridge.d
    exact hVgCurve

  have hInputsSpec := {inputs}.relation_sound rho hrel
  have hInputs := hInputsSpec hVgOn
  rcases hInputs with ⟨inputBits, hInputBits, hInputOn, hInputEq⟩
  have hOutputsSpec := {outputs}.relation_sound rho hrel
  have hOutputs := hOutputsSpec hVgOn
  rcases hOutputs with ⟨outputBits, hOutputBits, hOutputOn, hOutputEq⟩

  have hNeg : EdwardsBridge.negF ({outputs}.output rho) =
      ⟨-({outputs}.output rho).x, ({outputs}.output rho).y⟩ := rfl
  have hNegOn : EdwardsBridge.onCurve
      ⟨-({outputs}.output rho).x, ({outputs}.output rho).y⟩ := by
    rw [← hNeg]
    exact EdwardsBridge.neg_onCurve _ hOutputOn
  have hValue := nbValueAdd_spec rho hrel hInputOn hNegOn
  have hValueEq := EdwardsBridge.addSpec_eq
    ({inputs}.output rho)
    ⟨-({outputs}.output rho).x, ({outputs}.output rho).y⟩
    ⟨(rho 4214 : F), (rho 4215 : F)⟩ hInputOn hNegOn hValue
  have hValueOn : EdwardsBridge.onCurve
      ⟨(rho 4214 : F), (rho 4215 : F)⟩ :=
    hValueEq ▸ EdwardsBridge.add_onCurve _ _ hInputOn hNegOn

  obtain ⟨hBlindRange, hBlindOn, hBlindEq⟩ :=
    nbBlind_semantic rho hrel
  have hFinal := nbFinalAdd_spec rho hrel hValueOn hBlindOn
  have hFinalEq := EdwardsBridge.addSpec_eq
    ⟨(rho 4214 : F), (rho 4215 : F)⟩ (nbBlindAccState rho 251)
    ⟨(rho 6026 : F), (rho 6027 : F)⟩ hValueOn hBlindOn hFinal
  have hEquation : toA ⟨(rho 6026 : F), (rho 6027 : F)⟩ =
      Shieldd.GnarkFormal.Decaf377Assumptions.add
        (Shieldd.GnarkFormal.Decaf377Assumptions.add
          (toA ({inputs}.output rho))
          (Shieldd.GnarkFormal.Decaf377Assumptions.neg
            (toA ({outputs}.output rho))))
        (Shieldd.GnarkFormal.Decaf377Assumptions.scalarMulLE 251
          Shieldd.GnarkFormal.Decaf377Assumptions.valueBlindingGenerator
          (rho 4467)) := by
    rw [hFinalEq, toA_addF, hValueEq, toA_addF, ← hNeg, toA_negF,
      hBlindEq]

  have hInputBinary := {inputs}.scalar_toBinary rho hrel
  have hInputRecover := hInputBinary.1
  rw [hInputBits,
    Shieldd.GnarkFormal.ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE]
      at hInputRecover
  have hInputFit : (Fin.ofBitsLE inputBits).val < Order :=
    Nat.lt_trans (Fin.ofBitsLE inputBits).isLt (by decide)
  have hInputScalarVal :
      ({inputs}.scalar rho).val = (Fin.ofBitsLE inputBits).val := by
    have hval := congrArg ZMod.val hInputRecover
    simpa [ZMod.val_natCast_of_lt hInputFit] using hval.symm
  have hInputBitsScalar :
      inputBits =
        Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarBits 129
          ({inputs}.scalar rho) := by
    apply List.Vector.ext
    intro i
    rw [Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarBits,
      List.Vector.get_ofFn]
    rw [hInputScalarVal,
      Shieldd.GnarkFormal.ChoiceFreeBinary.ofBitsLE_testBit
        inputBits i.val i.isLt,
      getElem!_pos inputBits i.val i.isLt]
    rfl
  have hInputMapped := congrArg
    Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint hInputEq
  have hInputProtocol :
      Shieldd.GnarkFormal.AckBridge.toProtocolPoint
          (toA ({inputs}.output rho)) =
        Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarMulWindow2 129
          (Shieldd.GnarkFormal.AckBridge.toProtocolPoint
            (toA ⟨(rho 598 : F), (rho 600 : F)⟩))
          ({inputs}.scalar rho) := by
    calc
      _ = Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint
          ({inputs}.output rho) := rfl
      _ = Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint
          (Shieldd.GnarkFormal.Window2ScalarMulBridge.scalarMulWindow2OddFromBits
            64 inputBits
              ⟨(rho 598 : F), (rho 600 : F)⟩) := hInputMapped
      _ = Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarMulWindow2OddFromBits
          64 inputBits
            (Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint
              ⟨(rho 598 : F), (rho 600 : F)⟩) :=
        Shieldd.GnarkFormal.Window2ScalarMulBridge.scalarMulWindow2OddFromBits_maps
          64 inputBits
            ⟨(rho 598 : F), (rho 600 : F)⟩
      _ = Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarMulWindow2 129
          (Shieldd.GnarkFormal.AckBridge.toProtocolPoint
            (toA ⟨(rho 598 : F), (rho 600 : F)⟩))
          ({inputs}.scalar rho) := by
        rw [hInputBitsScalar]
        rfl

  have hOutputBinary := {outputs}.scalar_toBinary rho hrel
  have hOutputRecover := hOutputBinary.1
  rw [hOutputBits,
    Shieldd.GnarkFormal.ChoiceFreeBinary.recover_binary_map_toZMod_eq_ofBitsLE]
      at hOutputRecover
  have hOutputFit : (Fin.ofBitsLE outputBits).val < Order :=
    Nat.lt_trans (Fin.ofBitsLE outputBits).isLt (by decide)
  have hOutputScalarVal :
      ({outputs}.scalar rho).val = (Fin.ofBitsLE outputBits).val := by
    have hval := congrArg ZMod.val hOutputRecover
    simpa [ZMod.val_natCast_of_lt hOutputFit] using hval.symm
  have hOutputBitsScalar :
      outputBits =
        Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarBits 129
          ({outputs}.scalar rho) := by
    apply List.Vector.ext
    intro i
    rw [Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarBits,
      List.Vector.get_ofFn]
    rw [hOutputScalarVal,
      Shieldd.GnarkFormal.ChoiceFreeBinary.ofBitsLE_testBit
        outputBits i.val i.isLt,
      getElem!_pos outputBits i.val i.isLt]
    rfl
  have hOutputMapped := congrArg
    Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint hOutputEq
  have hOutputProtocol :
      Shieldd.GnarkFormal.AckBridge.toProtocolPoint
          (toA ({outputs}.output rho)) =
        Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarMulWindow2 129
          (Shieldd.GnarkFormal.AckBridge.toProtocolPoint
            (toA ⟨(rho 598 : F), (rho 600 : F)⟩))
          ({outputs}.scalar rho) := by
    calc
      _ = Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint
          ({outputs}.output rho) := rfl
      _ = Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint
          (Shieldd.GnarkFormal.Window2ScalarMulBridge.scalarMulWindow2OddFromBits
            64 outputBits
              ⟨(rho 598 : F), (rho 600 : F)⟩) := hOutputMapped
      _ = Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarMulWindow2OddFromBits
          64 outputBits
            (Shieldd.GnarkFormal.Window2ScalarMulBridge.toProtocolPoint
              ⟨(rho 598 : F), (rho 600 : F)⟩) :=
        Shieldd.GnarkFormal.Window2ScalarMulBridge.scalarMulWindow2OddFromBits_maps
          64 outputBits
            ⟨(rho 598 : F), (rho 600 : F)⟩
      _ = Shieldd.GnarkFormal.Protocol.Common.Decaf.scalarMulWindow2 129
          (Shieldd.GnarkFormal.AckBridge.toProtocolPoint
            (toA ⟨(rho 598 : F), (rho 600 : F)⟩))
          ({outputs}.scalar rho) := by
        rw [hOutputBitsScalar]
        rfl

  have hEncodeProtocol :
      Shieldd.GnarkFormal.Protocol.Common.EncodeToCurve.relation
        (Shieldd.GnarkFormal.Poseidon377.hash1
          Shieldd.GnarkFormal.Protocol.Common.Decaf.valueGeneratorDomain
          (rho 1))
        (Shieldd.GnarkFormal.AckBridge.toProtocolPoint
          (toA ⟨(rho 598 : F), (rho 600 : F)⟩)) := by
    have hEncodeForProtocol := hEncode
    rw [hPose] at hEncodeForProtocol
    simpa only [
      Shieldd.GnarkFormal.Poseidon1Bridge.permSpec1,
      Shieldd.GnarkFormal.Decaf377Assumptions.valueGeneratorDomain,
      Shieldd.GnarkFormal.Protocol.Common.Decaf.valueGeneratorDomain,
      Shieldd.GnarkFormal.AckBridge.toProtocolPoint,
      toA
    ] using Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve.relation_to_protocol
      hEncodeForProtocol

  have hEquationMapped :=
    congrArg Shieldd.GnarkFormal.AckBridge.toProtocolPoint hEquation
  simp only [
    Shieldd.GnarkFormal.AckBridge.toProtocolPoint_add,
    Shieldd.GnarkFormal.AckBridge.toProtocolPoint_neg,
    Shieldd.GnarkFormal.AckBridge.toProtocolPoint_scalarMulLE,
    Shieldd.GnarkFormal.AckBridge.toProtocolPoint_valueBlindingGenerator
  ] at hEquationMapped
  rw [hInputProtocol, hOutputProtocol] at hEquationMapped
  have hProtocolSpec :
      Shieldd.GnarkFormal.Protocol.Common.Decaf.netBalanceCommitment2
        (rho 732) (rho 861) (rho 990) (rho 1119)
        (rho 1) (rho 4467)
        ⟨(rho 6026 : F), (rho 6027 : F)⟩ := by
    unfold Shieldd.GnarkFormal.Protocol.Common.Decaf.netBalanceCommitment2
    refine ⟨
      Shieldd.GnarkFormal.AckBridge.toProtocolPoint
        (toA ⟨(rho 598 : F), (rho 600 : F)⟩),
      hEncodeProtocol, ?_⟩
    simpa only [
      {inputs}.scalar,
      {outputs}.scalar,
      Shieldd.GnarkFormal.AckBridge.toProtocolPoint,
      toA
    ] using hEquationMapped
  exact ⟨hPose, hEncode,
    nbInput0_range rho hrel, nbInput1_range rho hrel,
    nbOutput0_range rho hrel, nbOutput1_range rho hrel,
    hBlindRange, hInputsSpec, hOutputsSpec, hEquation, hProtocolSpec⟩

end {namespace}
"""


def _validate_partition(
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]]
) -> None:
    blocks = {
        "poseidon": set(range(0, 230)),
        "encode": set(range(230, 776)),
        "input_sum": set(range(1292, 2838)),
        "output_sum": set(range(2838, 4384)),
        "value_add": set(range(4384, 4390)),
        "blind": set(range(4390, 6195)),
        "final_add": set(range(6195, 6202)),
    }
    for amount in AMOUNTS:
        blocks[amount.label] = set(amount.boolean_rows) | {
            amount.recomposition_row
        }
    owners: dict[int, str] = {}
    duplicates: list[tuple[int, str, str]] = []
    for label, owned in blocks.items():
        for row in owned:
            previous = owners.setdefault(row, label)
            if previous != label:
                duplicates.append((row, previous, label))
    if duplicates or set(owners) != set(range(ROW_COUNT)):
        raise ValueError(
            f"{KEY}: semantic row partition is not exact; "
            f"duplicates={duplicates[:8]}, "
            f"missing={sorted(set(range(ROW_COUNT)) - set(owners))[:8]}"
        )
    # Keep the endpoint pins explicit: the normalized template returns exactly
    # local wires 6026/6027, with no hidden post-template assertion.
    if rows[6200][0] != {6026: 1} or rows[6201][0] != {6027: 1}:
        raise ValueError(f"{KEY}: final output seating drifted")


BLIND_SELECTOR_SUFFIXES = (
    "0_3", "1_3", "3_6", "4_6", "0_6", "6_9", "7_9",
    "9_12", "10_12", "6_12", "0_12", "12_15", "13_15",
    "15_18", "16_18", "12_18", "18_21", "19_21", "21_23",
    "23_25", "21_25", "18_25", "12_25", "0_25",
)

BLIND_RUNG_SUFFIXES = tuple(f"NbBlindR{i}" for i in range(25))

# The legacy generated CPS wrapper had exactly one active exact-provider
# consumer, and that consumer projected only its on-curve component.  Keep the
# reviewed census beside the replacement topology so a future consumer cannot
# silently reopen the 251-fuel CPS result.
LEGACY_BLIND_LADDER_CONSUMER_CENSUS = (
    (
        "NbBlind",
        "have hl := nbBlind_ladder rho h bits hbits True trivial",
        "have hon := hl.2",
    ),
)

BLIND_ON_CURVE_CONSUMER_MANIFEST = {
    "NbBlindOnCurve": "theorem nbBlind_onCurve",
    "NbBlind": "have hon := nbBlind_onCurve rho h bits hbits",
}

# `scripts/lean-leaf-bench.sh` enforces the first three limits against fresh
# oleans.  Source lines/bytes keep generated fan-in modules structurally small
# enough that a regression is rejected before running Lean.
BLIND_AGGREGATOR_BUDGET_MANIFEST = {
    "NbBlindScalar": (120, 4096, 50, 64, 8192),
    "NbBlindOnCurve": (120, 4096, 50, 64, 8192),
    "NbBlind": (120, 4096, 50, 64, 8192),
}

EXTERNAL_IMPORT_MANIFEST = frozenset({
    "Mathlib.Tactic.LinearCombination",
    "ProvenZk.Gates",
    "ShielddGnarkFormal.AckBridge",
    "ShielddGnarkFormal.CanonicalFqBitsChainAcc",
    "ShielddGnarkFormal.CanonicalFqBitsDeployedKernel",
    "ShielddGnarkFormal.ChoiceFreeBinary",
    "ShielddGnarkFormal.ChoiceFreeZMod",
    "ShielddGnarkFormal.ChoiceFreeZModCast",
    "ShielddGnarkFormal.CompressDeployedGadgets",
    "ShielddGnarkFormal.Decaf377Assumptions",
    "ShielddGnarkFormal.Deployed.NetBalance.ChoiceFreeLadder",
    "ShielddGnarkFormal.Deployed.NetBalance.Ladder",
    "ShielddGnarkFormal.Deployed.Poseidon1Link",
    "ShielddGnarkFormal.Deployed.PrimeOrder",
    "ShielddGnarkFormal.Deployed.PrimeOrderCertificate",
    "ShielddGnarkFormal.EdwardsBridge",
    RELATION_MODULE,
    "ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
    MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Defs",
    MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Boolean",
    MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Semantic",
    MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Defs",
    MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Boolean",
    MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Semantic",
    "ShielddGnarkFormal.Extracted.CanonicalFqBits",
    "ShielddGnarkFormal.Extracted.DecafEdwardsAdd",
    "ShielddGnarkFormal.Extracted.PoseidonHash1",
    "ShielddGnarkFormal.NbFixedBaseLiteralChoiceFree",
    "ShielddGnarkFormal.NbFixedGenSeg46ChoiceFree",
    "ShielddGnarkFormal.Poseidon1Bridge",
    "ShielddGnarkFormal.Poseidon377",
    "ShielddGnarkFormal.Protocol.Common",
    "ShielddGnarkFormal.RvkFixedSplitRungChoiceFree",
    "ShielddGnarkFormal.RvkToBinary",
    "ShielddGnarkFormal.RvkToBinaryChoiceFree",
    "ShielddGnarkFormal.StructuredLC",
    "ShielddGnarkFormal.Window2ScalarMulBridge",
})

EXTERNAL_SUPPORT_IMPORT_MANIFEST = EXTERNAL_IMPORT_MANIFEST - {RELATION_MODULE}
if len(EXTERNAL_SUPPORT_IMPORT_MANIFEST) != 36:
    raise ValueError(
        f"{KEY}: reviewed external support manifest has "
        f"{len(EXTERNAL_SUPPORT_IMPORT_MANIFEST)} modules"
    )

SEMANTICS_NAMESPACE = NAMESPACE.removesuffix(".NbSupport")
INPUTS_WINDOW_NAMESPACE = SEMANTICS_NAMESPACE + ".InputsWindowSupport"
OUTPUTS_WINDOW_NAMESPACE = SEMANTICS_NAMESPACE + ".OutputsWindowSupport"

# Fully-qualified generated references are fail-closed against this reviewed
# ownership table.  Some source modules intentionally own a support namespace
# exported by their dependency (for example the deployed Ladder owns the
# NetBalanceCommitmentBridge seam used by generated providers).
EXTERNAL_SYMBOL_PREFIX_TO_OWNER_MODULE = {
    "Shieldd.GnarkFormal.AckBridge":
        "ShielddGnarkFormal.AckBridge",
    RELATION: RELATION_MODULE,
    "Shieldd.GnarkFormal.CanonicalFqBitsChainAcc":
        "ShielddGnarkFormal.CanonicalFqBitsChainAcc",
    "Shieldd.GnarkFormal.CanonicalFqBitsDeployedKernel":
        "ShielddGnarkFormal.CanonicalFqBitsDeployedKernel",
    "Shieldd.GnarkFormal.ChoiceFreeBinary":
        "ShielddGnarkFormal.ChoiceFreeBinary",
    "Shieldd.GnarkFormal.ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq":
        "ShielddGnarkFormal.ChoiceFreeZModCast",
    "Shieldd.GnarkFormal.ChoiceFreeZMod":
        "ShielddGnarkFormal.ChoiceFreeZMod",
    "Shieldd.GnarkFormal.DeployedGadgets":
        "ShielddGnarkFormal.CompressDeployedGadgets",
    "Shieldd.GnarkFormal.Decaf377Assumptions":
        "ShielddGnarkFormal.Decaf377Assumptions",
    "Shieldd.GnarkFormal.Extracted.DecafEncodeToCurve":
        "ShielddGnarkFormal.Decaf377Assumptions",
    "Shieldd.GnarkFormal.Deployed.NetBalanceChoiceFree":
        "ShielddGnarkFormal.Deployed.NetBalance.ChoiceFreeLadder",
    "Shieldd.GnarkFormal.Deployed.NetBalance":
        "ShielddGnarkFormal.Deployed.NetBalance.Ladder",
    "Shieldd.GnarkFormal.NetBalanceCommitmentBridge":
        "ShielddGnarkFormal.Deployed.NetBalance.Ladder",
    "Shieldd.GnarkFormal.Deployed.Poseidon1Link":
        "ShielddGnarkFormal.Deployed.Poseidon1Link",
    "Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime":
        "ShielddGnarkFormal.Deployed.PrimeOrderCertificate",
    "Shieldd.GnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition":
        "ShielddGnarkFormal.Deployed.Templates.Semantics.BinaryRecomposition",
    INPUTS_WINDOW_NAMESPACE + ".output":
        MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Defs",
    INPUTS_WINDOW_NAMESPACE + ".scalar":
        MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Boolean",
    INPUTS_WINDOW_NAMESPACE + ".scalar_toBinary":
        MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Boolean",
    INPUTS_WINDOW_NAMESPACE + ".spec":
        MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Semantic",
    INPUTS_WINDOW_NAMESPACE + ".relation_sound":
        MODULE_PREFIX.removesuffix("Nb") + "InputsWindow2Semantic",
    OUTPUTS_WINDOW_NAMESPACE + ".output":
        MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Defs",
    OUTPUTS_WINDOW_NAMESPACE + ".scalar":
        MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Boolean",
    OUTPUTS_WINDOW_NAMESPACE + ".scalar_toBinary":
        MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Boolean",
    OUTPUTS_WINDOW_NAMESPACE + ".spec":
        MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Semantic",
    OUTPUTS_WINDOW_NAMESPACE + ".relation_sound":
        MODULE_PREFIX.removesuffix("Nb") + "OutputsWindow2Semantic",
    "Shieldd.GnarkFormal.EdwardsBridge":
        "ShielddGnarkFormal.EdwardsBridge",
    "Shieldd.GnarkFormal.Extracted.CanonicalFqBits":
        "ShielddGnarkFormal.Extracted.CanonicalFqBits",
    "Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd":
        "ShielddGnarkFormal.Extracted.DecafEdwardsAdd",
    "Shieldd.GnarkFormal.Extracted.PoseidonHash1":
        "ShielddGnarkFormal.Extracted.PoseidonHash1",
    "Shieldd.GnarkFormal.NbFixedBaseLiteralChoiceFree":
        "ShielddGnarkFormal.NbFixedBaseLiteralChoiceFree",
    "Shieldd.GnarkFormal.NbFixedGenSeg46ChoiceFree":
        "ShielddGnarkFormal.NbFixedGenSeg46ChoiceFree",
    "Shieldd.GnarkFormal.Poseidon1Bridge":
        "ShielddGnarkFormal.Poseidon1Bridge",
    "Shieldd.GnarkFormal.Poseidon377":
        "ShielddGnarkFormal.Poseidon377",
    "Shieldd.GnarkFormal.Protocol.Common":
        "ShielddGnarkFormal.Protocol.Common",
    "Shieldd.GnarkFormal.RvkFixedSplitRungChoiceFree":
        "ShielddGnarkFormal.RvkFixedSplitRungChoiceFree",
    "Shieldd.GnarkFormal.RvkToBinary":
        "ShielddGnarkFormal.RvkToBinary",
    "Shieldd.GnarkFormal.RvkToBinaryChoiceFree":
        "ShielddGnarkFormal.RvkToBinaryChoiceFree",
    "Shieldd.GnarkFormal.ScalarMulBridge":
        "ShielddGnarkFormal.RvkToBinary",
    "Shieldd.GnarkFormal.StrideRun":
        "ShielddGnarkFormal.StructuredLC",
    "Shieldd.GnarkFormal.StructuredLC":
        "ShielddGnarkFormal.StructuredLC",
    "Shieldd.GnarkFormal.Window2ScalarMulBridge":
        "ShielddGnarkFormal.Window2ScalarMulBridge",
}

# These reviewed modules are consumed through unqualified names, instances, or
# tactics, so no fully-qualified symbol can trigger their direct-import rule.
UNQUALIFIED_EXTERNAL_SUPPORT_MODULES = frozenset({
    "Mathlib.Tactic.LinearCombination",
    "ProvenZk.Gates",
    "ShielddGnarkFormal.Deployed.PrimeOrder",
})
if (
    set(EXTERNAL_SYMBOL_PREFIX_TO_OWNER_MODULE.values())
    | UNQUALIFIED_EXTERNAL_SUPPORT_MODULES
) - {RELATION_MODULE} != EXTERNAL_SUPPORT_IMPORT_MANIFEST:
    raise ValueError(f"{KEY}: external symbol owner map does not cover allowlist")

PROVIDER_SUPPORT_MANIFEST = (
    "NbPoseidon.sound rho hrel",
    "nbEncode_spec rho hrel",
    "nbInput0_range rho hrel",
    "nbInput1_range rho hrel",
    "nbOutput0_range rho hrel",
    "nbOutput1_range rho hrel",
    "InputsWindowSupport.relation_sound rho hrel",
    "OutputsWindowSupport.relation_sound rho hrel",
    "nbValueAdd_spec rho hrel",
    "nbBlind_semantic rho hrel",
    "nbFinalAdd_spec rho hrel",
    "theorem sound",
)

NB_SUPPORT_IMPORTERS = (
    "NbPoseidonRows",
    "NbEncodeBase",
    "NbInput0Range",
    "NbInput1Range",
    "NbOutput0Range",
    "NbOutput1Range",
    "NbBase",
    "NbValueAdd",
)

NB_SUPPORT_DECLARATION_COUNT = 1127
NB_SUPPORT_OWNER_MODULE_COUNT = 106


def _expected_nb_support_declaration_owners(
    out: Path = OUT,
) -> dict[str, Path]:
    """Exact source-declaration ownership inside the shared NbSupport namespace."""
    owners: dict[str, Path] = {}

    def own(suffix: str, declarations) -> None:
        path = out / f"{NAME}{suffix}.lean"
        for declaration in declarations:
            previous = owners.setdefault(declaration, path)
            if previous != path:
                raise ValueError(
                    f"{KEY}: internal NbSupport owner manifest duplicates "
                    f"{declaration}: {previous.name}, {path.name}"
                )

    own(
        "NbSupportBase",
        ("Order", "F", "reviewed_order", "nbSupportFactPrime"),
    )
    own("NbPoseidonRows", ("nbPoseidon_rows",))
    own("NbBase", ("nbBlindBits", "nbBlindBits_get"))
    own("NbBlind", ("nbBlind_semantic",))
    own("NbBlindBits", ("nbBlindBits_toBinary",))
    own(
        "NbBlindDefs",
        (
            *(f"nbBlindDeltaX{i}" for i in range(251)),
            *(f"nbBlindDeltaY{i}" for i in range(251)),
            "nbBlindAccState",
        ),
    )
    own("NbBlindOnCurve", ("nbBlind_onCurve",))
    for chunk in range(25):
        declarations: list[str] = []
        for rung in range(10 * chunk + 1, 10 * chunk + 11):
            declarations.extend((f"nbBlind_rows{rung}", f"nbBlind_rung{rung}"))
        declarations.append(f"nbBlind_hstep_c{chunk}")
        own(f"NbBlindR{chunk}", declarations)
    own("NbBlindScalar", ("nbBlind_scalarMul",))
    own("NbBlindSeed", ("nbBlind_hstep_zero",))
    for suffix in BLIND_SELECTOR_SUFFIXES:
        own(f"NbBlindSel{suffix}", (f"nbBlind_hstep_s{suffix}",))
    own("NbBlindStep", ("nbBlind_hstep",))
    own("NbEncode", ("nbEncode_spec",))
    own("NbEncodeBase", ("nbEncodeCanonBits", "nbEncodeCanonBits_get"))
    own("NbEncodeCanon", ("nbEncodeCanon_canonical",))
    own("NbEncodeCanonBinary", ("nbEncodeCanon_binary",))
    own("NbEncodeCanonChain", ("nbEncodeCanon_chain",))
    own("NbEncodeCanonCompare", ("nbEncodeCanon_compare",))
    for chunk in range(16):
        own(
            f"NbEncodeCanonCompareR{chunk}",
            (f"nbEncodeCanon_compare_chunk{chunk}",),
        )
    own("NbEncodeCanonRec", ("nbEncodeCanon_recover",))
    own("NbEncodeCanonTrue", ("nbEncodeCanon_flag_step",))
    own("NbEncodeCanonTrueDefs", ("nbEncodeCanonFlag",))
    for chunk in range(16):
        own(
            f"NbEncodeCanonTrueR{chunk}",
            (f"nbEncodeCanon_flag_step_chunk{chunk}",),
        )
    own(
        "NbFinalAdd",
        ("nbBlindPoint", "nbBlindPoint_eq_state", "nbFinalAdd_spec"),
    )
    for amount in AMOUNTS:
        ident = amount.ident
        own(
            f"Nb{amount.module_label}Range",
            (
                f"{ident}Bits",
                f"{ident}Bits_get",
                f"{ident}_toBinary",
                f"{ident}_range",
            ),
        )
    own("NbValueAdd", ("nbValueAdd_spec",))
    if len(owners) != NB_SUPPORT_DECLARATION_COUNT:
        raise ValueError(
            f"{KEY}: internal NbSupport declaration manifest has {len(owners)} names"
        )
    if len(set(owners.values())) != NB_SUPPORT_OWNER_MODULE_COUNT:
        raise ValueError(
            f"{KEY}: internal NbSupport owner manifest has "
            f"{len(set(owners.values()))} modules"
        )
    return owners


NB_SUPPORT_DECLARATION_RE = re.compile(
    r"^(?:(?:noncomputable|private|protected) +)*"
    r"(?:abbrev|def|opaque|theorem|lemma|instance|structure|class|inductive|"
    r"axiom|constant) +([^\s(:{]+|:)",
)


def _nb_support_declarations(source: str) -> list[str]:
    """Census declarations whose exact enclosing namespace is NbSupport."""
    current_namespace = ""
    scopes: list[tuple[str, str]] = []
    declarations: list[str] = []
    for line_number, line in enumerate(source.splitlines(), 1):
        namespace = re.fullmatch(r"namespace +([A-Za-z0-9_.]+)", line)
        if namespace is not None:
            scopes.append(("namespace", current_namespace))
            entered = namespace.group(1)
            current_namespace = (
                f"{current_namespace}.{entered}" if current_namespace else entered
            )
            continue
        if re.fullmatch(r"section(?: +[A-Za-z0-9_]+)?", line):
            scopes.append(("section", current_namespace))
            continue
        if re.fullmatch(r"end(?: +[A-Za-z0-9_.]+)?", line):
            if scopes:
                kind, previous = scopes.pop()
                if kind == "namespace":
                    current_namespace = previous
            continue
        if current_namespace != NAMESPACE:
            continue
        declaration = NB_SUPPORT_DECLARATION_RE.match(line)
        if declaration is None:
            continue
        name = declaration.group(1)
        if name == ":":
            raise ValueError(
                f"{KEY}: anonymous NbSupport declaration at line {line_number}"
            )
        declarations.append(name)
    return declarations


def _validate_nb_support_declaration_owners(
    outputs: dict[Path, str], out: Path = OUT
) -> None:
    expected = _expected_nb_support_declaration_owners(out)
    actual: dict[str, list[Path]] = {}
    for path, source in outputs.items():
        for declaration in _nb_support_declarations(source):
            actual.setdefault(declaration, []).append(path)
    duplicates = {
        declaration: paths
        for declaration, paths in actual.items()
        if len(paths) != 1
    }
    if duplicates:
        sample = {
            declaration: [path.name for path in paths]
            for declaration, paths in sorted(duplicates.items())[:4]
        }
        raise ValueError(
            f"{KEY}: duplicate NbSupport declaration owners: {sample}"
        )
    out_of_owner = {
        declaration: path.name
        for declaration, (path,) in actual.items()
        if expected.get(declaration) != path
    }
    if out_of_owner:
        raise ValueError(
            f"{KEY}: out-of-owner NbSupport declarations: "
            f"{dict(sorted(out_of_owner.items())[:4])}"
        )
    missing = sorted(set(expected) - set(actual))
    if missing:
        raise ValueError(
            f"{KEY}: NbSupport declaration owner manifest missing {missing[:4]}"
        )
    if len(actual) != NB_SUPPORT_DECLARATION_COUNT:
        raise ValueError(
            f"{KEY}: NbSupport declaration census has {len(actual)} names"
        )


def _expected_output_paths(out: Path = OUT) -> set[Path]:
    """Independent, fail-closed roster for the 149 generated modules."""
    semantics_suffixes = {
        "", "NbPoseidonRows", "NbPoseidon", "NbEncode", "NbEncodeBase",
        "NbEncodeCanonRec", "NbEncodeCanonBinary", "NbEncodeCanonTrueDefs",
        "NbEncodeCanonTrue", "NbEncodeCanonCompare", "NbEncodeCanonChain",
        "NbEncodeCanon", "NbInput0Range", "NbInput1Range", "NbOutput0Range",
        "NbOutput1Range", "NbBase", "NbBlindScalar", "NbBlindOnCurve",
        "NbBlind", "NbBlindDefs", "NbBlindSeed", "NbBlindStep", "NbBlindBits",
        "NbSupportBase", "NbValueAdd", "NbFinalAdd",
    }
    semantics_suffixes.update(f"NbEncodeCanonTrueR{i}" for i in range(16))
    semantics_suffixes.update(f"NbEncodeCanonCompareR{i}" for i in range(16))
    semantics_suffixes.update(BLIND_RUNG_SUFFIXES)
    semantics_suffixes.update(
        f"NbBlindSel{suffix}" for suffix in BLIND_SELECTOR_SUFFIXES
    )
    expected = {out / f"{NAME}{suffix}.lean" for suffix in semantics_suffixes}
    poseidon_stem = POSEIDON_TEMPLATE.leaf
    deployed = FORMAL / "Deployed" / poseidon_stem
    expected.update({
        deployed / "Base.lean",
        deployed / "FullTail.lean",
        deployed / "SegSound.lean",
        deployed / "SemanticBridge.lean",
        deployed / "SpecLink.lean",
        FORMAL / "Deployed" / f"{poseidon_stem}DeployedBridge.lean",
        FORMAL / "Extracted/Deployed" / f"{POSEIDON_TEMPLATE.stem}.lean",
    })
    expected.update(deployed / f"Round{i:02d}.lean" for i in range(1, 35))
    if len(expected) != 149:
        raise ValueError(f"{KEY}: internal output manifest has {len(expected)} paths")
    return expected


def _module_name(path: Path) -> str | None:
    try:
        relative = path.relative_to(FORMAL)
    except ValueError:
        return None
    return "ShielddGnarkFormal." + ".".join(relative.with_suffix("").parts)


FULLY_QUALIFIED_SUPPORT_RE = re.compile(
    r"(?<![A-Za-z0-9_])(?:Shieldd\.GnarkFormal|ProvenZk|Mathlib)"
    r"(?:\.[A-Za-z0-9_]+)+"
)
QUALIFIED_IDENTIFIER_LINE_SPLIT_RE = re.compile(
    r"\.[ \t]*\r?\n[ \t]*[A-Za-z_][A-Za-z0-9_]*"
)
QUALIFIED_IDENTIFIER_CONTINUITY_MAX_SECONDS = 1.0


def _declared_namespaces(source: str) -> set[str]:
    return set(re.findall(r"^namespace ([A-Za-z0-9_.]+)(?:\s|$)", source, re.M))


def _generated_namespaces(outputs: dict[Path, str]) -> set[str]:
    return {
        namespace
        for source in outputs.values()
        for namespace in _declared_namespaces(source)
    }


def _fully_qualified_support_references(source: str) -> set[str]:
    body = "\n".join(
        line
        for line in source.splitlines()
        if not line.startswith(("import ", "namespace ", "end "))
    )
    return set(FULLY_QUALIFIED_SUPPORT_RE.findall(body))


def _validate_qualified_identifier_contiguity(
    outputs: dict[Path, str],
) -> None:
    combined = "\n".join(outputs.values())
    if QUALIFIED_IDENTIFIER_LINE_SPLIT_RE.search(combined):
        raise ValueError(
            f"{KEY}: qualified identifier continuity invariant drifted"
        )


def _symbol_owner(reference: str) -> tuple[str, str] | None:
    matches = [
        (prefix, owner)
        for prefix, owner in EXTERNAL_SYMBOL_PREFIX_TO_OWNER_MODULE.items()
        if reference == prefix or reference.startswith(prefix + ".")
    ]
    if not matches:
        return None
    return max(matches, key=lambda item: len(item[0]))


def _required_direct_owner_imports(
    source: str, generated_namespaces: set[str]
) -> set[str]:
    declared = _declared_namespaces(source)
    required: set[str] = set()
    for reference in _fully_qualified_support_references(source):
        owned = _symbol_owner(reference)
        if owned is not None:
            prefix, owner = owned
            if prefix not in declared:
                required.add(owner)
            continue
        if any(
            reference == namespace or reference.startswith(namespace + ".")
            for namespace in generated_namespaces
        ):
            continue
        raise ValueError(
            f"{KEY}: unknown external symbol prefix at {reference}"
        )
    return required


def _directly_references_relation(source: str) -> bool:
    declared = _declared_namespaces(source)
    return RELATION not in declared and any(
        (owned := _symbol_owner(reference)) is not None
        and owned[0] == RELATION
        for reference in _fully_qualified_support_references(source)
    )


def _add_direct_owner_imports(
    source: str, generated_namespaces: set[str]
) -> str:
    required = _required_direct_owner_imports(source, generated_namespaces)
    missing = sorted(
        owner
        for owner in required
        if f"import {owner}\n" not in source
    )
    if not missing:
        return source
    first_import = source.find("import ")
    if first_import < 0:
        raise ValueError(f"{KEY}: external support consumer has no import block")
    imports = "".join(f"import {owner}\n" for owner in missing)
    return source[:first_import] + imports + source[first_import:]


def _signed_residue(value: int) -> int:
    canonical = value % ORDER
    return canonical - ORDER if canonical > ORDER // 2 else canonical


def _validate_nb_encode_select_routing(
    exact_source: str,
    select_manifest: tuple[NbEncodeSelectResult, ...] =
        NB_ENCODE_PRECANON_SELECT_RESULT_MANIFEST,
    row_bodies: tuple[tuple[int, str, str], ...] =
        NB_ENCODE_INPUT_SELECT_ROW_BODIES,
    circuit_fields: tuple[str, ...] = NB_ENCODE_CIRCUIT_WITNESS_FIELDS,
) -> None:
    expected_selects = (
        (
            "hsel15",
            15,
            236,
            "rho 234 + rho 238",
            "rho 238",
            ((0, "rho 234"), (1, "1")),
            "helper/hsel15",
        ),
        (
            "hsign",
            36,
            None,
            "2 * rho 235 - 1",
            None,
            ((0, "-1"), (1, "1")),
            "helper/hsign",
        ),
        (
            "hinputSel",
            37,
            252,
            "poseidonOutput + rho 248",
            "rho 248",
            ((0, "poseidonOutput"), (1, "1")),
            "helper/hinputSel",
        ),
    )
    rendered_selects = tuple(
        (
            entry.name,
            entry.gate,
            entry.row,
            entry.result,
            entry.delta,
            entry.flag_endpoints,
            entry.owner,
        )
        for entry in select_manifest
    )
    if (
        NB_ENCODE_SELECT_CONVENTION != "out = i2 - b * (i2 - i1)"
        or rendered_selects != expected_selects
    ):
        raise ValueError(f"{KEY}: NbEncode select/result census drifted")
    if NB_ENCODE_FIELD_MODULUS_MANIFEST != (
        ("NbSupport.Order", ORDER, "reviewed_order"),
        ("NbPoseidon.Order", ORDER, "rfl"),
    ):
        raise ValueError(f"{KEY}: NbEncode field modulus seam drifted")
    expected_row_owners = {
        252: "helper/hinputSel",
        253: "circuit-proof[13]",
    }
    precanon_owners = {
        row: owner
        for row, _, owner in NB_ENCODE_PRECANON_ROW_COEFFICIENT_MANIFEST
    }
    if (
        tuple((row, owner) for row, _, owner in row_bodies)
        != (
            (252, "helper/hinputSel/delta"),
            (253, "circuit-proof[13]/gate38-result"),
        )
        or any(
            precanon_owners.get(row) != owner
            for row, owner in expected_row_owners.items()
        )
    ):
        raise ValueError(f"{KEY}: NbEncode input-select row ownership drifted")
    for row, expected_body, _ in row_bodies:
        if dtk.def_body(exact_source, f"relationRow{row}") != expected_body:
            raise ValueError(
                f"{KEY}: NbEncode input-select algebra drifted at r{row}"
            )
    if (
        NB_ENCODE_GATE37_WITNESS_INDEX != 31
        or NB_ENCODE_GATE38_WITNESS_INDEX != 32
        or circuit_fields[NB_ENCODE_GATE37_WITNESS_INDEX]
        != "poseidonOutput + rho 248"
        or circuit_fields[NB_ENCODE_GATE38_WITNESS_INDEX] != "rho 249"
    ):
        raise ValueError(f"{KEY}: NbEncode gate37/gate38 witness order drifted")


def _validate_nb_encode_coefficient_manifest(
    rows: list[tuple[dtk.Lc, dtk.Lc, dtk.Lc]],
    certificates: tuple[NbEncodeCoefficientCertificate, ...] =
        NB_ENCODE_COEFFICIENT_CERTIFICATES,
    precanon_row_manifest: tuple[
        tuple[int, tuple[tuple[int, int], ...], str], ...
    ] = NB_ENCODE_PRECANON_ROW_COEFFICIENT_MANIFEST,
    row_manifest: tuple[tuple[int, tuple[tuple[int, int], ...], str], ...] =
        NB_ENCODE_ROW_COEFFICIENT_MANIFEST,
) -> None:
    expected_certificates = (
        (
            "hnegOne",
            ORDER - 1,
            ORDER - 1,
            -1,
            (
                "precanon-local/g4-g6-g11",
                "canon-proof[1]/gate57",
                "canon-proof[2]/gate59",
            ),
        ),
        (
            "hC3021",
            3021 * NB_ENCODE_C_LITERAL,
            NB_ENCODE_C3021_RESIDUE,
            NB_ENCODE_C3021_RESIDUE - ORDER,
            ("circuit-proof[1]/r231-g4",),
        ),
        (
            "hC3022",
            3022 * NB_ENCODE_C_LITERAL,
            NB_ENCODE_C3022_RESIDUE,
            NB_ENCODE_C3022_RESIDUE - ORDER,
            ("circuit-proof[1]/r231-g6",),
        ),
        (
            "hNeg6043C",
            -6043 * NB_ENCODE_C_LITERAL,
            NB_ENCODE_NEG6043C_RESIDUE,
            NB_ENCODE_NEG6043C_RESIDUE,
            (
                "circuit-proof[2]/r232-g11",
                "circuit-proof[14]/r254-g11",
            ),
        ),
        (
            "hNegC",
            -NB_ENCODE_C_LITERAL,
            NB_ENCODE_NEG_C_RESIDUE,
            -NB_ENCODE_C_LITERAL,
            ("circuit-proof[10]/r249-gate30",),
        ),
        (
            "hPoseidonCoeff0Sq",
            NB_ENCODE_POSEIDON_COEFF0 ** 2,
            NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE,
            NB_ENCODE_POSEIDON_COEFF0_SQUARE_RESIDUE - ORDER,
            ("circuit-proof[0]/r230-rho226-square",),
        ),
        (
            "hPoseidonCross",
            2 * NB_ENCODE_POSEIDON_COEFF0 * NB_ENCODE_POSEIDON_COEFF1,
            NB_ENCODE_POSEIDON_CROSS_RESIDUE,
            NB_ENCODE_POSEIDON_CROSS_RESIDUE - ORDER,
            ("circuit-proof[0]/r230-rho226-rho231-cross",),
        ),
        (
            "hPoseidonCoeff1Sq",
            NB_ENCODE_POSEIDON_COEFF1 ** 2,
            NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE,
            NB_ENCODE_POSEIDON_COEFF1_SQUARE_RESIDUE - ORDER,
            ("circuit-proof[0]/r230-rho231-square",),
        ),
        (
            "hg41",
            (ORDER - 1) - 2 * 3021,
            ORDER - 6043,
            -6043,
            ("hinv63/r770-base",),
        ),
        (
            "hg41Sq",
            ((ORDER - 1) - 2 * 3021) ** 2,
            36517849,
            36517849,
            ("hinv63/r770-square",),
        ),
    )
    rendered_values = tuple(
        (
            cert.name,
            cert.raw_value,
            cert.canonical_residue,
            cert.signed_residue,
        )
        for cert in certificates
    )
    for cert in certificates:
        if (
            cert.raw_value % ORDER != cert.canonical_residue
            or _signed_residue(cert.raw_value) != cert.signed_residue
        ):
            raise ValueError(
                f"{KEY}: NbEncode coefficient residue certificate drifted"
            )
    if rendered_values != tuple(entry[:4] for entry in expected_certificates):
        raise ValueError(
            f"{KEY}: NbEncode coefficient certificate manifest drifted"
        )
    if tuple(cert.owners for cert in certificates) != tuple(
        entry[4] for entry in expected_certificates
    ):
        raise ValueError(
            f"{KEY}: NbEncode coefficient certificate ownership drifted"
        )
    expected_precanon_owners = (
        (230, "circuit-proof[0]"),
        (231, "circuit-proof[1]"),
        (232, "circuit-proof[2]"),
        (233, "helper/hws+hnotWs"),
        (234, "helper/hz[0]"),
        (235, "helper/hz[1]"),
        (236, "helper/hsel15"),
        (237, "helper/hinv16"),
        (238, "circuit-proof[3]"),
        (239, "circuit-proof[4]"),
        (240, "circuit-proof[5]"),
        (241, "redundant/duplicate-hws-row"),
        (242, "helper/hand22"),
        (243, "redundant/hnotZ-derived-from-hz"),
        (244, "helper/hand23"),
        (245, "circuit-proof[6]"),
        (246, "circuit-proof[7]"),
        (247, "circuit-proof[8]"),
        (248, "circuit-proof[9]"),
        (249, "circuit-proof[10]"),
        (250, "circuit-proof[11]"),
        (251, "circuit-proof[12]"),
        (252, "helper/hinputSel"),
        (253, "circuit-proof[13]"),
        (254, "circuit-proof[14]"),
        (255, "circuit-proof[16]"),
        (256, "circuit-proof[17]"),
        (257, "circuit-proof[18]"),
    )
    if tuple(
        (row, owner) for row, _, owner in precanon_row_manifest
    ) != expected_precanon_owners:
        raise ValueError(
            f"{KEY}: NbEncode precanonical proof ownership drifted"
        )
    expected_row_owners = (
        (769, "canon-proof[3]"),
        (770, "hinv63"),
        (771, "canon-proof[4]"),
        (772, "canon-proof[5]"),
        (773, "canon-proof[6]"),
        (774, "canon-proof[7]"),
        (775, "canon-proof[8]"),
    )
    if tuple((row, owner) for row, _, owner in row_manifest) != expected_row_owners:
        raise ValueError(
            f"{KEY}: NbEncode coefficient bullet ownership drifted"
        )
    for row, expected_coefficients, _ in (
        precanon_row_manifest + row_manifest
    ):
        actual_canonical = tuple(
            sorted(
                {
                    coefficient % ORDER
                    for side in rows[row]
                    for coefficient in side.values()
                    if coefficient % ORDER not in (0, 1, ORDER - 1)
                }
            )
        )
        expected_canonical = tuple(
            coefficient for coefficient, _ in expected_coefficients
        )
        if actual_canonical != expected_canonical or any(
            _signed_residue(coefficient) != signed
            for coefficient, signed in expected_coefficients
        ):
            raise ValueError(
                f"{KEY}: NbEncode row coefficient census drifted at r{row}"
            )


def _validate_rendered(outputs: dict[Path, str], out: Path = OUT) -> None:
    expected = _expected_output_paths(out)
    if set(outputs) != expected:
        missing = sorted(str(path) for path in expected - set(outputs))
        extra = sorted(str(path) for path in set(outputs) - expected)
        raise ValueError(
            f"{KEY}: output manifest drifted; missing={missing[:4]}, extra={extra[:4]}"
        )
    x_lc, y_lc = FINAL_ADD_POINT_LCS
    final_add = outputs[out / f"{NAME}NbFinalAdd.lean"]
    point_token = (
        f"⟨{RELATION}.relationLc{x_lc} rho, "
        f"{RELATION}.relationLc{y_lc} rho⟩"
    )
    if final_add.count(point_token) != 1:
        raise ValueError(f"{KEY}: final-add coordinate render manifest drifted")
    coefficient_tokens = {
        f"({FINAL_ADD_SUM_COEFFICIENT} : F) =": 2,
        f"({FINAL_ADD_X_COEFFICIENT} : F) +": 2,
        f"({FINAL_ADD_Y_COEFFICIENT} : F) := by": 2,
        "ChoiceFreeZMod.natCast_eq_natCast_of_mod_eq": 1,
        "rw [hBlindSumCoeff]": 1,
    }
    if any(
        final_add.count(token) != count
        for token, count in coefficient_tokens.items()
    ):
        raise ValueError(f"{KEY}: final-add coefficient render manifest drifted")
    for token in ("have h0comm :", "have h2comm :"):
        if final_add.count(token) != 1:
            raise ValueError(
                f"{KEY}: final-add row normalization render manifest drifted"
            )
    blind_defs = outputs[out / f"{NAME}NbBlindDefs.lean"]
    coordinate_tokens = (
        "def nbBlindDeltaX250 (rho : Nat -> F) : F := (0 : F) + "
        "((1 : F) * Shieldd.GnarkFormal.StrideRun.sumAux rho 4471 5 149) + "
        "((1 : F) * Shieldd.GnarkFormal.StrideRun.sumAux rho 5219 8 101)",
        "def nbBlindDeltaY250 (rho : Nat -> F) : F := (0 : F) + "
        "((1 : F) * Shieldd.GnarkFormal.StrideRun.sumAux rho 4472 5 149) + "
        "((1 : F) * Shieldd.GnarkFormal.StrideRun.sumAux rho 5220 8 101)",
        f"| 251 => ⟨(({FINAL_ADD_X_COEFFICIENT} : F) * rho 4216 + "
        "nbBlindDeltaX250 rho : F), ((1 : F) + "
        f"({FINAL_ADD_Y_COEFFICIENT} : F) * rho 4216 + "
        "nbBlindDeltaY250 rho : F)⟩",
    )
    if any(blind_defs.count(token) != 1 for token in coordinate_tokens):
        raise ValueError(f"{KEY}: final-add coordinate render manifest drifted")
    generated_modules = {
        module for path in outputs if (module := _module_name(path)) is not None
    }
    _validate_qualified_identifier_contiguity(outputs)
    imports = {
        module
        for source in outputs.values()
        for module in re.findall(r"^import ([A-Za-z0-9_.]+)$", source, re.M)
    }
    external = imports - generated_modules
    if external != EXTERNAL_IMPORT_MANIFEST:
        raise ValueError(
            f"{KEY}: import manifest drifted; missing="
            f"{sorted(EXTERNAL_IMPORT_MANIFEST - external)}, "
            f"extra={sorted(external - EXTERNAL_IMPORT_MANIFEST)}"
        )
    provider = outputs[out / f"{NAME}.lean"]
    missing_support = [
        token for token in PROVIDER_SUPPORT_MANIFEST if token not in provider
    ]
    if missing_support:
        raise ValueError(f"{KEY}: top support manifest missing {missing_support}")
    encode = outputs[out / f"{NAME}NbEncode.lean"]
    poseidon_ns = NAMESPACE.removesuffix(".NbSupport") + ".NbPoseidon"
    poseidon_leaf = "Shieldd.GnarkFormal.Deployed." + POSEIDON_TEMPLATE.leaf
    redundant_row_unfold = (
        f"  unfold {poseidon_ns}.output {poseidon_leaf}.s38_1\n"
        "    Shieldd.GnarkFormal.Deployed.Poseidon1Link.row2 at "
        "r230 r252 r253\n"
    )
    if redundant_row_unfold in encode:
        raise ValueError(
            f"{KEY}: NbEncode flat-row proof frontier regressed"
        )
    flat_row_frontier = (
        f"  unfold {RELATION}.relationRow775 at r775\n"
        "  have hws : GatesDef.is_bool (rho 235) :=\n"
    )
    if encode.count(flat_row_frontier) != 1:
        raise ValueError(
            f"{KEY}: NbEncode flat-row proof frontier render drifted"
        )
    input_select_block = (
        "  have hinputSel : GatesDef.select (rho 235) 1 "
        "poseidonOutput (poseidonOutput + rho 248) := by\n"
        + NB_ENCODE_INPUT_SELECT_PROOF_BLOCK
    )
    if (
        encode.count(NB_ENCODE_POSEIDON_OUTPUT_SEAM_BLOCK) != 1
        or encode.count(NB_ENCODE_POSEIDON_SOUNDNESS_SEAM_BLOCK) != 1
        or encode.count(input_select_block) != 1
    ):
        raise ValueError(
            f"{KEY}: NbEncode gate37 select-result render drifted"
        )
    relation_snapshot = (
        "  have hRelation := h\n"
        f"  unfold {RELATION}.relation at h\n"
    )
    if encode.count(relation_snapshot) != 1:
        raise ValueError(
            f"{KEY}: NbEncode full-relation snapshot ownership drifted"
        )
    circuit_start = encode.index("    refine ⟨\n", encode.index("have hcircuit"))
    circuit_end = encode.index("    · ", circuit_start)
    circuit_proof_end = encode.index(
        "      have hb : (nbEncodeCanonBits rho)[0]! = rho 254 :=\n",
        circuit_end,
    )
    canon_start = encode.index("      refine ⟨\n", circuit_end)
    canon_end = encode.index(
        "      · first | linear_combination r767", canon_start
    )
    typed_field_re = re.compile(r"^\s+\((.*) : F\),", re.M)
    rfl_field_re = re.compile(r"^\s+\((.*) : F\), rfl,", re.M)
    circuit_fields = tuple(
        typed_field_re.findall(encode[circuit_start:circuit_end])
    )
    canon_fields = tuple(
        typed_field_re.findall(encode[canon_start:canon_end])
    )
    if (
        circuit_fields != NB_ENCODE_CIRCUIT_WITNESS_FIELDS
        or canon_fields != NB_ENCODE_CANON_WITNESS_FIELDS
        or len(circuit_fields) + len(canon_fields)
        != NB_ENCODE_WITNESS_FIELD_COUNT
    ):
        raise ValueError(
            f"{KEY}: NbEncode witness field manifest drifted"
        )
    if (
        circuit_fields[NB_ENCODE_GATE37_WITNESS_INDEX]
        != "poseidonOutput + rho 248"
        or circuit_fields[NB_ENCODE_GATE38_WITNESS_INDEX] != "rho 249"
    ):
        raise ValueError(
            f"{KEY}: NbEncode gate37/gate38 witness order drifted"
        )
    bit_bridge = (
        "        (rho 254 - rho 235 : F), (by\n"
        "          exact congrArg (fun x : F => x - rho 235) hb.symm),\n"
    )
    if encode.count(bit_bridge) != 1:
        raise ValueError(
            f"{KEY}: NbEncode canonical-bit bridge render drifted"
        )
    nondefinitional_rfl_tokens = tuple(
        f"        {_typed_f(expression)}, (by ring),\n"
        for expression in NB_ENCODE_NONDEFINITIONAL_RFL_FIELDS
    )
    if any(
        encode.count(token) != 1 for token in nondefinitional_rfl_tokens
    ):
        raise ValueError(
            f"{KEY}: NbEncode non-definitional rfl normalization drifted"
        )
    row775_bridge = (
        "      · have hrow : (-rho 601 + rho 602 : F) = "
        "(1 + rho 603 : F) := by\n"
        "          simpa only [one_mul, neg_one_mul] using r775\n"
        "        calc\n"
        "          (rho 602 - rho 601 : F) = -rho 601 + rho 602 := by ring\n"
        "          _ = 1 + rho 603 := hrow\n"
    )
    if encode.count(row775_bridge) != 1:
        raise ValueError(
            f"{KEY}: NbEncode row775 normalization render drifted"
        )
    if any(
        token in encode
        for token in NB_ENCODE_FORBIDDEN_GENERIC_COEFFICIENT_NORMALIZATION
    ):
        raise ValueError(
            f"{KEY}: NbEncode generic coefficient normalization reintroduced"
        )
    if (
        encode.count(NB_ENCODE_PRECANON_COEFFICIENT_CERTIFICATE_BLOCK) != 1
        or encode.count(NB_ENCODE_PRECANON_ROW_FORM_BLOCK) != 1
    ):
        raise ValueError(
            f"{KEY}: NbEncode precanonical coefficient block drifted"
        )
    if encode.count(NB_ENCODE_TAIL_COEFFICIENT_CERTIFICATE_BLOCK) != 1:
        raise ValueError(
            f"{KEY}: NbEncode tail coefficient certificate block drifted"
        )
    if encode.count(NB_ENCODE_HINV63_BLOCK) != 1:
        raise ValueError(
            f"{KEY}: NbEncode hinv63 coefficient ownership drifted"
        )
    circuit_constructor = encode[circuit_start:circuit_end]
    circuit_proofs = encode[circuit_end:circuit_proof_end]
    circuit_bullet_count = len(re.findall(r"^    · ", circuit_proofs, re.M))
    if (
        circuit_constructor.count("?_") != NB_ENCODE_PRECANON_HOLE_COUNT
        or circuit_bullet_count != NB_ENCODE_PRECANON_HOLE_COUNT
        or circuit_proofs != "".join(NB_ENCODE_CIRCUIT_PROOF_BLOCKS)
    ):
        raise ValueError(
            f"{KEY}: NbEncode precanonical constructor proof arity/mapping drifted"
        )
    if (
        NB_ENCODE_SELECTED_PRECANON_STRATEGY
        != "eight-direct-decide-certificates"
        or NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS
        != (
            ("eight-direct-decide-certificates", 8, 5, 13),
            ("compositional-derived-residues", 10, 9, 19),
        )
        or NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS[0][3]
        >= NB_ENCODE_PRECANON_STRATEGY_SOURCE_COSTS[1][3]
    ):
        raise ValueError(
            f"{KEY}: NbEncode precanonical proof strategy cost drifted"
        )
    canon_proof_end = encode.index("  have hsound :=\n", canon_end)
    canon_constructor = encode[canon_start:canon_end]
    canon_proofs = encode[canon_end:canon_proof_end]
    canon_bullet_count = len(re.findall(r"^      · ", canon_proofs, re.M))
    if (
        canon_constructor.count("?_") != NB_ENCODE_CANON_HOLE_COUNT
        or canon_bullet_count != NB_ENCODE_CANON_HOLE_COUNT
        or canon_proofs != "".join(NB_ENCODE_CANON_PROOF_BLOCKS)
    ):
        raise ValueError(
            f"{KEY}: NbEncode canonical constructor proof arity/mapping drifted"
        )
    rfl_fields = tuple(
        rfl_field_re.findall(encode[circuit_start:circuit_end])
        + rfl_field_re.findall(encode[canon_start:canon_end])
    )
    if rfl_fields != NB_ENCODE_RFL_WITNESS_FIELDS:
        raise ValueError(
            f"{KEY}: NbEncode definitional-rfl witness manifest drifted"
        )
    support_module = MODULE_PREFIX + "SupportBase"
    support_import = f"import {support_module}\n"
    for suffix in NB_SUPPORT_IMPORTERS:
        path = out / f"{NAME}{suffix}.lean"
        if outputs[path].count(support_import) != 1:
            raise ValueError(
                f"{KEY}: canonical NbSupport import topology drifted at {path.name}"
            )
    generated_namespaces = _generated_namespaces(outputs)
    for path, source in outputs.items():
        for owner in _required_direct_owner_imports(source, generated_namespaces):
            if source.count(f"import {owner}\n") != 1:
                raise ValueError(
                    f"{KEY}: direct external owner import invariant drifted "
                    f"at {path.name}: {owner}"
                )
    expected_on_curve_consumers = {
        out / f"{NAME}{suffix}.lean"
        for suffix in BLIND_ON_CURVE_CONSUMER_MANIFEST
    }
    on_curve_consumers = {
        path for path, source in outputs.items() if "nbBlind_onCurve" in source
    }
    if on_curve_consumers != expected_on_curve_consumers:
        raise ValueError(
            f"{KEY}: blind on-curve consumer census drifted; "
            f"found={sorted(path.name for path in on_curve_consumers)}"
        )
    for suffix, token in BLIND_ON_CURVE_CONSUMER_MANIFEST.items():
        source = outputs[out / f"{NAME}{suffix}.lean"]
        if source.count(token) != 1:
            raise ValueError(
                f"{KEY}: blind on-curve consumer token drifted at {suffix}"
            )
    combined = "\n".join(outputs.values())
    for obsolete in (
        "nbBlind_ladder",
        "fixedTrace_to_nbLadderK",
        "fixedTrace_final_onCurve",
    ):
        if obsolete in combined:
            raise ValueError(f"{KEY}: obsolete blind CPS consumer survived: {obsolete}")
    for suffix, budget in BLIND_AGGREGATOR_BUDGET_MANIFEST.items():
        max_seconds, max_rss_mb, max_olean_mb, max_lines, max_bytes = budget
        if (max_seconds, max_rss_mb, max_olean_mb) != (120, 4096, 50):
            raise ValueError(f"{KEY}: blind aggregator runtime budget drifted")
        source = outputs[out / f"{NAME}{suffix}.lean"]
        if len(source.splitlines()) > max_lines or len(source.encode()) > max_bytes:
            raise ValueError(
                f"{KEY}: blind aggregator source size budget drifted at {suffix}"
            )
        heartbeat = re.search(r"^set_option maxHeartbeats ([0-9]+)$", source, re.M)
        if heartbeat is None or int(heartbeat.group(1)) == 0:
            raise ValueError(
                f"{KEY}: blind aggregator finite heartbeat budget drifted at {suffix}"
            )
    _validate_nb_support_declaration_owners(outputs, out)
    support = outputs[out / f"{NAME}NbSupportBase.lean"]
    for token in (
        "abbrev Order : Nat := "
        "Shieldd.GnarkFormal.Extracted.DecafEdwardsAdd.Order",
        "abbrev F := Shieldd.GnarkFormal.EdwardsBridge.F",
        f"theorem reviewed_order : Order = {ORDER}",
        "instance nbSupportFactPrime : Fact (Nat.Prime Order)",
    ):
        if support.count(token) != 1:
            raise ValueError(f"{KEY}: canonical NbSupport owner drifted at {token}")
    for forbidden in (
        "unfold Shieldd.GnarkFormal.StructuredLC.eval",
        "unfold Shieldd.GnarkFormal.StructuredLC.sumRuns",
        "simp only [Shieldd.GnarkFormal.StructuredLC.eval,",
    ):
        offenders = [path.name for path, source in outputs.items() if forbidden in source]
        if offenders:
            raise ValueError(
                f"{KEY}: generated proof opened opaque LC via {forbidden}: "
                f"{offenders[:4]}"
            )


def generated_files(out: Path = OUT) -> dict[Path, str]:
    exact_source = _relation_source()
    _validate_final_add_layout(exact_source)
    _validate_nb_encode_select_routing(exact_source)
    rows = _canonical_rows()
    raw_rows = _canonical_raw_rows()
    parts = _relation_parts(exact_source)
    _validate_partition(rows)
    _validate_nb_encode_coefficient_manifest(rows)
    outputs: dict[Path, str] = _poseidon_files(
        exact_source, raw_rows, parts
    )
    support_path = out / f"{NAME}NbSupportBase.lean"
    if support_path in outputs:
        raise ValueError(f"{KEY}: duplicate generated path {support_path}")
    outputs[support_path] = _support_base()
    encode_canon = _encode_canon_files(exact_source, rows)
    overlap = set(outputs).intersection(encode_canon)
    if overlap:
        raise ValueError(f"{KEY}: duplicate generated paths {sorted(overlap)}")
    outputs.update(encode_canon)
    encode_path = out / f"{NAME}NbEncode.lean"
    if encode_path in outputs:
        raise ValueError(f"{KEY}: duplicate generated path {encode_path}")
    outputs[encode_path] = _encode_semantic(parts)
    ranges = _amount_range_files(parts, exact_source)
    overlap = set(outputs).intersection(ranges)
    if overlap:
        raise ValueError(f"{KEY}: duplicate generated paths {sorted(overlap)}")
    outputs.update(ranges)
    blind = _blind_files(exact_source, rows)
    overlap = set(outputs).intersection(blind)
    if overlap:
        raise ValueError(f"{KEY}: duplicate generated paths {sorted(overlap)}")
    outputs.update(blind)
    adds = _optimized_add_files(parts)
    overlap = set(outputs).intersection(adds)
    if overlap:
        raise ValueError(f"{KEY}: duplicate generated paths {sorted(overlap)}")
    outputs.update(adds)
    provider_path = out / f"{NAME}.lean"
    if provider_path in outputs:
        raise ValueError(f"{KEY}: duplicate generated path {provider_path}")
    outputs[provider_path] = _optimized_provider()
    generated_namespaces = _generated_namespaces(outputs)
    outputs = {
        path: _add_direct_owner_imports(source, generated_namespaces)
        for path, source in outputs.items()
    }
    combined = "\n".join(outputs.values())
    for forbidden in (
        "representativeRho",
        "representativeSeating",
        "Contracts.Transfer",
        "axiom ",
        "sorry",
        "native_decide",
    ):
        if forbidden in combined:
            raise ValueError(f"{KEY}: generated ladder proof contains {forbidden!r}")
    expected_ranges = {
        out / f"{NAME}Nb{amount.module_label}Range.lean"
        for amount in AMOUNTS
    }
    if not expected_ranges.issubset(outputs):
        raise ValueError(f"{KEY}: amount range-provider set is incomplete")
    if out / f"{NAME}NbBlind.lean" not in outputs:
        raise ValueError(f"{KEY}: fixed-base blind provider is incomplete")
    _validate_rendered(outputs, out)
    return outputs


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--check", action="store_true")
    args = parser.parse_args()
    outputs = generated_files()
    if args.check:
        stale = [
            str(path)
            for path, source in outputs.items()
            if not path.is_file() or path.read_text() != source
        ]
        if stale:
            raise SystemExit(
                "stale Transfer net-balance semantic providers:\n"
                + "\n".join(stale)
            )
        return
    for path, source in outputs.items():
        path.parent.mkdir(parents=True, exist_ok=True)
        if write_if_changed(path, source):
            print(f"wrote {path}")


if __name__ == "__main__":
    main()
