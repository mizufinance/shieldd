#!/usr/bin/env python3
"""Generate the exact extracted proof spine for a non-NoteReshape circuit.

The Rust extractor owns row fidelity, segment contracts, and template
equivalence. This generator composes every constraint-bearing segment and
exports compiler-derived witness and semantic bindings. Protocol refinements
must consume these generated facts; this layer never accepts or invents
protocol facts.
"""

from __future__ import annotations

import argparse
import json
from collections import Counter
from dataclasses import dataclass
from pathlib import Path

import gen_note_reshape_family as core
import gen_note_reshape_dtk_seating as dtk_seating
from formal_json import read_known_formal_object
from write_if_changed import write_if_changed

GENERATOR = "gen_deployed_family.py"
SUPPORTED_CIRCUITS = {
    "transfer",
    "shielded_ics20_withdrawal",
}

WITHDRAWAL_NET_BALANCE_KEY = (
    "decaf.conservation_net_balance_commitment2@"
    "236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6"
)
WITHDRAWAL_BALANCE_COMPRESS_KEY = (
    "decaf.compress_to_field@"
    "f3cbec6d6a96bb84fc29e09f85870099785fe782098cecfd46860cf9527d762e"
)
WITHDRAWAL_BOOLEAN_KEY = (
    "assert.boolean@"
    "469df3cb92f6ee26f90120fa5a2d5ab48448c3e42be090ebb81d77d5431164fc"
)
WITHDRAWAL_ASSET_PATH_KEY = (
    "gadget.asset_registry_path@"
    "15ce53a7aa20f1e3be74b254ad3c8969ad9eebbd2a6c1efaabc49db1f4e46c67"
)
WITHDRAWAL_ASSET_ROOT_KEY = (
    "assert.eq@"
    "5e5758a2d4a6d172e743a9ad78863e351485ec2c3a01a4ef7fdc4d01f6c826ef"
)
WITHDRAWAL_ASSET_GAP_KEY = (
    "gadget.asset_registry_gap@"
    "065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3"
)
WITHDRAWAL_ASSET_GAP_DEPLOYED_DIGEST = (
    "065363064f972be51f745a7bec46e6e0f0c9c09b4e427ff20db1f565927ea6c3"
)
WITHDRAWAL_GAP_ACCEPT_KEY = (
    "assert.eq@"
    "8d8c35e681ce1b5e96aa42ceee0013036302fc4e1b1594a361d481be589b6d6c"
)
WITHDRAWAL_OBSOLETE_COMPLIANCE_PATH_KEYS = frozenset({
    (
    "gadget.compliance_path@"
    "d7bd82da72fdc629b8c1bdb79c61af6d796050d0428cd4c08fbd6e637b8da686"
    ),
})
WITHDRAWAL_COMPLIANCE_PATH_KEY = (
    "gadget.compliance_path@"
    "3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b"
)
WITHDRAWAL_DIVGEN_COMPRESS_KEY = (
    "decaf.compress_to_field@"
    "231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb"
)
WITHDRAWAL_DTK_KEY = (
    "decaf.diversified_transmission_key@"
    "a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c"
)
WITHDRAWAL_TRANSMISSION_COMPRESS_KEY = (
    "decaf.compress_to_field@"
    "cb894e50f7cc665026bb25271f9bec0190867613208193b18d883d11ce856a46"
)
TRANSFER_EXPANDED_ASSET_LEAF_KEY = (
    "gadget.asset_registry_leaf_hash@"
    "9611146d6691b88badbe8219df76b5cff69b5c18988f315f6fd6af8166393744"
)
WITHDRAWAL_ASSET_LEAF_KEY = (
    "gadget.asset_registry_leaf_hash@"
    "9424c990190c4128118a2906eaddfab647443257691dff0a8fc5b9b9caa7ebff"
)
WITHDRAWAL_OBSOLETE_ASSET_LEAF_KEYS = frozenset({
    TRANSFER_EXPANDED_ASSET_LEAF_KEY,
})
COMPLIANCE_LEAF_KEY = (
    "gadget.compliance_leaf@"
    "89974c69097fec1fe7276409b30d17170b41afc739ec6a0392be21d56a7c6d68"
)
WITHDRAWAL_COMPLIANCE_ASSERT_KEY = (
    "assert.eq_if@"
    "8ce5774e50355d2a29c59780aba5615b3b4386e8925bffa9de0ad683cdc7cf8d"
)
WITHDRAWAL_REQUIRED_NULLIFIER_ASSERT_KEY = (
    "assert.eq@"
    "f65d80594ca3008a765694d28652f6f340f2fac809070ad4534a8c26871bd06b"
)
WITHDRAWAL_SYNTHETIC_NULLIFIER_KEY = (
    "gadget.synthetic_dummy_nullifier@"
    "a10de15a91d3ea84d283d8eb39cda0f9fdbeeab9de2f8d7df5acbc90e22093bb"
)
WITHDRAWAL_STATEMENT_FIRST_KEY = (
    "statement.hash@"
    "8253f80f52335edfca85a06da1c48600b988651a0803cf829d27056e3670eb00"
)
WITHDRAWAL_STATEMENT_SECOND_KEY = (
    "statement.hash@"
    "6c1f41225e160eb2aa699b149bd08dfe3831726da0f6240bba58c892c6e27193"
)
WITHDRAWAL_STATEMENT_THIRD_KEY = (
    "statement.hash@"
    "0cf7625f3041ed713c8f3634f6d3914aad6059b5f8113ba50facad312738e969"
)
WITHDRAWAL_STATEMENT_ASSERT_KEY = (
    "assert.eq@"
    "001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69"
)
WITHDRAWAL_BALANCE_X_SEED = (
    "4661681602708190761543544705274244814260880986867766715334030151044279151219"
)
WITHDRAWAL_BALANCE_Y_SEED = (
    "4337336842509898676347982752646772244181661588533917621717979456142867120377"
)
MODULUS_MINUS_ONE = (
    "8444461749428370424248824938781546531375899335154063827935233455917409239040"
)
POSEIDON_ROOT_COEFFICIENTS = (
    "7037051457856975353540687448984622109479916112628386523279361213264507699201",
    "7238110070938603220784707090384182741179342287274911852515914390786350776321",
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
)
NOTE_COMMITMENT_COEFFICIENTS = (
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
    "2303035022571373752067861346940421781284336182314744680345972760704747974284",
    "7740756603642672888894756193883084320427907723891225175607297334590958469121",
    "7794887768703111160845069174259889105885445540142212764247907805462223912961",
    "7841285910183486822516766014582864636277620811214487840225573923351880007681",
)
ASSET_LEAF_COEFFICIENTS = (
    "7238110070938603220784707090384182741179342287274911852515914390786350776321",
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
    "2303035022571373752067861346940421781284336182314744680345972760704747974284",
    "7740756603642672888894756193883084320427907723891225175607297334590958469121",
)
COMPLIANCE_LEAF_COEFFICIENTS = (
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
    "2303035022571373752067861346940421781284336182314744680345972760704747974284",
    "7740756603642672888894756193883084320427907723891225175607297334590958469121",
    "7794887768703111160845069174259889105885445540142212764247907805462223912961",
    "7841285910183486822516766014582864636277620811214487840225573923351880007681",
)
NULLIFIER_COEFFICIENTS = (
    "6755569399542696339399059951025237225100719468123251062348186764733927391233",
    "7037051457856975353540687448984622109479916112628386523279361213264507699201",
    "7238110070938603220784707090384182741179342287274911852515914390786350776321",
    "7388904030749824121217721821433853214953911918259805849443329273927733084161",
)
STATEMENT_STATE_COEFFICIENTS = (
    "4691367638571316902360458299323081406319944075085591015519574142176338466134",
    "7600015574485533381823942444903391878238309401638657445141710110325668315137",
    "2303035022571373752067861346940421781284336182314744680345972760704747974284",
    "7740756603642672888894756193883084320427907723891225175607297334590958469121",
    "7794887768703111160845069174259889105885445540142212764247907805462223912961",
    "7841285910183486822516766014582864636277620811214487840225573923351880007681",
    "7881497632799812395965569942862776762617506046143792906072884558856248623105",
    "7916682890089097272733273380107699873164905626706934838689281364922571161601",
)
POSEIDON2_OUTPUT_COEFFICIENTS = (
    "6333346312071277818186618704086159898531924501365547870951425091938056929281",
    "6755569399542696339399059951025237225100719468123251062348186764733927391233",
    "7037051457856975353540687448984622109479916112628386523279361213264507699201",
)
WITHDRAWAL_STATEMENT_DOMAIN = (
    "6542197109014338625481468805403361343830770898492685288881450594205384407735"
)
WITHDRAWAL_STATEMENT_PAD0 = (
    "8316700215129846461222301070908575344508840208962317669164119408124330351432"
)
WITHDRAWAL_STATEMENT_PAD1 = (
    "5682740735460291122336980749203409812249641210946398750928017227279864339568"
)
NON_IDENTITY_BINDINGS = {
    "transfer": (
        "auth.ak",
        "sender.div_gen",
        "sender.transmission",
        "output0.recipient.div_gen",
        "output0.recipient.transmission",
    ),
    "shielded_ics20_withdrawal": (
        "auth.ak",
        "sender.div_gen",
        "sender.transmission.computed",
    ),
}

TRANSFER_FACT_FIELDS = (
    "canonicalSender",
    "requiredSpend",
    "optionalSpend",
    "receiverOutput",
    "changeOutput",
    "assetRegistry",
    "senderCompliance",
    "receiverCompliance",
    "complianceTranscript",
    "balanceComputedAndCompressed",
    "statementBinding",
)

TRANSFER_FACT_PROVIDER_COUNTS = {
    "canonicalSender": 8,
    "requiredSpend": 8,
    "optionalSpend": 12,
    "receiverOutput": 8,
    "receiverCompliance": 4,
    "changeOutput": 2,
    "assetRegistry": 11,
    "senderCompliance": 4,
    "complianceTranscript": 36,
    "balanceComputedAndCompressed": 2,
    "statementBinding": 2,
}

# Compiler geometry consumed by the handwritten, protocol-typed Transfer
# translator.  Transcript and registry/path joins have dedicated generated
# modules because their provider surfaces are materially different.
TRANSFER_CORE_PROVIDER_LABELS = (
    "sender_div_gen_compress",
    "sender_dtk",
    "sender_transmission_compress",
    "required_note_commitment",
    "required_nullifier",
    "required_state_path",
    "required_nullifier_assert",
    "required_anchor_assert",
    "required_rvk",
    "required_rk_equivalent",
    "required_rk_compress",
    "optional_is_dummy_boolean",
    "optional_note_commitment",
    "optional_nullifier",
    "optional_state_path",
    "optional_synthetic_nullifier",
    "optional_nullifier_mux",
    "optional_nullifier_assert",
    "optional_anchor_assert",
    "optional_rvk",
    "optional_rk_equivalent",
    "optional_amount_zero",
    "optional_rk_compress",
    "receiver_amount_is_zero",
    "receiver_div_gen_compress",
    "receiver_transmission_compress",
    "receiver_note_commitment",
    "receiver_note_assert",
    "receiver_nonzero_assert",
    "change_note_commitment",
    "change_note_assert",
)

# High/critical circuit predicates whose specification evidence must expose a
# dedicated deployed-relation consequence.  Keep this closed list next to the
# renderer: adding a predicate without an exact theorem is a generation error,
# while removing one leaves the repository-level completeness gate red.
TRANSFER_SPECIFICATION_PREDICATES = (
    "ASSET-ID-NONZERO",
    "ASSET-LEAF-HASH",
    "ASSET-PARAMETERS-HASH",
    "ASSET-POLICY-KEY-ENCODING",
    "ASSET-REGISTRY-GAP-ORDERING",
    "ASSET-REGISTRY-MEMBERSHIP",
    "ASSET-REGULATED-BOOLEAN",
    "ASSET-RING-HASH",
    "CIR-SELECTOR-BOOLEAN",
    "CIR-SHAPE-FIXED",
    "COMPLIANCE-ADDRESS-ENCRYPTION",
    "COMPLIANCE-AMOUNT-ENCRYPTION",
    "COMPLIANCE-DETECTION-ENCRYPTION",
    "COMPLIANCE-FLAG-BOOLEAN",
    "COMPLIANCE-METADATA-BINDING",
    "COMPLIANCE-POLICY-SELECTION",
    "COMPLIANCE-SALT-DERIVATION",
    "COMPLIANCE-SHARED-SECRET-SELECTION",
    "COMPLIANCE-THRESHOLD-FLAG",
    "DEC-ACK-DERIVATION",
    "DEC-BALANCE-COMMITMENT-DERIVATION",
    "DEC-BALANCE-COMMITMENT-ENCODING",
    "DEC-DIVERSIFIED-GENERATOR-ENCODING",
    "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
    "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
    "DEC-SHARED-SECRET-DERIVATION",
    "DEC-INCOMING-VIEWING-KEY-NONZERO",
    "DEC-TRANSMISSION-KEY-DERIVATION",
    "DEC-TRANSMISSION-KEY-ENCODING",
    "DEC-TRANSMISSION-KEY-NONIDENTITY",
    "DUMMY-AMOUNT-ZERO",
    "DUMMY-NULLIFIER-DOMAIN-BINDING",
    "DUMMY-SLOT-POSITION-BINDING",
    "FIELD-AUTH-RANDOMIZER-RANGE",
    "FIELD-BALANCE-BLINDING-RANGE",
    "FIELD-DETECTION-SLOT-RANGE",
    "FIELD-EPHEMERAL-SCALAR-RANGE",
    "FIELD-USER-DERIVATION-RANGE",
    "FIELD-USER-POSITION-RANGE",
    "NOTE-OUTPUT-ASSET-BINDING",
    "NOTE-OUTPUT-CLUE-KEY-BINDING",
    "NOTE-OUTPUT-OWNER-BINDING",
    "NOTE-RECEIVER-AMOUNT-NONZERO",
    "NOTE-SPEND-ASSET-BINDING",
    "NOTE-SPEND-CLUE-KEY-BINDING",
    "NOTE-SPEND-COMMITMENT",
    "NOTE-SPEND-OWNER-BINDING",
    "USER-COMPLIANCE-LEAF-HASH",
    "USER-COMPLIANCE-MEMBERSHIP-GATE",
    "USER-LEAF-ADDRESS-BINDING",
    "USER-LEAF-ASSET-BINDING",
    "USER-LEAF-POLICY-SLOT-BINDING",
    "VALUE-AMOUNT-128-RANGE",
    "VALUE-CONSERVATION",
    "VALUE-THRESHOLD-128-RANGE",
)

TRANSFER_BOOLEAN_KEY = WITHDRAWAL_BOOLEAN_KEY
TRANSFER_INVERSE_ROW_DIGEST = (
    core.DIRECT_INVERSE_RELATION_DIGEST
)
TRANSFER_NON_IDENTITY_KEY = (
    core.DIRECT_NON_IDENTITY_KEY
)
COMPUTED_NON_IDENTITY_KEY = core.STRUCTURED_NON_IDENTITY_KEY
TRANSFER_ASSET_ID_NONZERO_KEY = (
    core.DIRECT_NONZERO_KEY
)
TRANSFER_SELECT_RING_KEY = (
    "select.point@"
    "cd6a18f36bb22ee661a01f3d85090d2686861341dca12d69ab8204ef3780c799"
)
TRANSFER_SELECT_DK_KEY = (
    "select.point@"
    "794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975"
)
TRANSFER_SELECT_POLICY_KEY = (
    "select.field@"
    "0831068cd4400989eb055a4a46c8e3b124fc35949178bdf5efd7e4ce47ea044e"
)
TRANSFER_COMPRESS_KEY = (
    "decaf.compress_to_field@"
    "231c7eb4774f4fae9c807afeb357aa9dcfa341b773263301f31075bbe10795fb"
)
TRANSFER_DTK_KEY = (
    "decaf.diversified_transmission_key@"
    "a03dfc8083159402252a47c3be906c0878137600765dd0717aecbad037a5042c"
)
TRANSFER_DTK_EQUIVALENT_KEY = (
    "decaf.assert_equivalent@"
    "337547ecab9ed69ef703225ce3fb67ba58652a95490dc7e75be736b205e39646"
)
TRANSFER_SPEND_EQUIVALENT_KEY = (
    "decaf.assert_equivalent@"
    "534c1d15097e8b552f82c9624b8deece32b50ee8ae5a2eb96ed1dd0de9146b4e"
)
TRANSFER_EQUIVALENT_IF_KEY = (
    "decaf.assert_equivalent_if@"
    "5153b90a6cbb5f5ba2ec514e6df8b586236dbc591f653a4b7fdd7890eb4be84f"
)
TRANSFER_ASSET_PARAMS_KEY = (
    "gadget.asset_registry_params_hash@"
    "d65f2514fa1b17e8679203e682583ee8344352bd12416241ef63007b11e2c086"
)
TRANSFER_ASSET_RING_KEY = (
    "gadget.asset_registry_ring_hash@"
    "fca220e542b46ac382c73fbe684619e5680e949ef1acb40f697416d4b368dde2"
)
TRANSFER_ASSET_LEAF_KEY = TRANSFER_EXPANDED_ASSET_LEAF_KEY
TRANSFER_ASSET_PATH_KEY = WITHDRAWAL_ASSET_PATH_KEY
TRANSFER_ASSET_GAP_KEY = (
    "gadget.asset_registry_gap@"
    "591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16"
)
TRANSFER_COMPLIANCE_LEAF_KEY = COMPLIANCE_LEAF_KEY
TRANSFER_COMPLIANCE_PATH_KEY = (
    "gadget.compliance_path@"
    "3ff8249e075a1fc804f7a2e16e1c34be87b9dfff1abc41a8936c42980c28104b"
)
TRANSFER_ACK_KEY = (
    "decaf.ack@"
    "e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1"
)
TRANSFER_NOTE_COMMITMENT_KEY = (
    "gadget.note_commitment@"
    "9b647e64b935070c5a61da35d7d16d95f24153ac4b2409e2d4d7e2777d7ea9e5"
)
TRANSFER_NULLIFIER_KEY = (
    "gadget.nullifier@"
    "c3d0f91643b2ac2d6380fa8c1a3cf17d0503dfdee04911f9697fc907f75baef4"
)
TRANSFER_STATE_PATH_KEY = (
    "gadget.state_commitment_path@"
    "925881caa7382e3f2e29b610c396d78e8b7d8aca0859bce49a2f7fb99c5384d0"
)
TRANSFER_RVK_KEY = (
    "decaf.randomized_verification_key@"
    "1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f"
)
TRANSFER_SYNTHETIC_NULLIFIER_KEY = (
    "gadget.synthetic_dummy_nullifier@"
    "baf815f441dc1f36dd4b49d76d50f37ec9e315a12ec74f4c16391bdd9d7017fd"
)
TRANSFER_DUMMY_MUX_KEY = (
    "dummy.mux@"
    "6b4f764130614aef38a5954daa8a7654deca54de7a24217406a68696772579ce"
)
TRANSFER_IS_ZERO_KEY = (
    "gadget.is_zero@"
    "f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991"
)
TRANSFER_OBSOLETE_THRESHOLD_KEYS = frozenset({
    (
        "threshold.flag@"
        "76ed1e05faeee53586314f5c3efda03ae9445d964935e5e2814733fdee72da26"
    ),
    (
        "threshold.flag@"
        "b0d28c55019497b1f0fbd55c4a21dbb9ad498b4a2fbb06493ee3ec19b8d94cd8"
    ),
})
TRANSFER_THRESHOLD_KEY = (
    "threshold.flag@"
    "9cff3d70e943aa401049c5bfb32ca36b67892e27bb28d1be48bb6acb16e8a202"
)
TRANSFER_SALT_KEYS = (
    "gadget.transfer_salt@"
    "f771a421e77b34e798b9a3684411305ddf046c31c0dcdd45f55a3341904f59c7",
    "gadget.transfer_salt@"
    "6102356f10803bf3a14c647c07a6804c8be9ed25097c1247a5f07e703b892326",
    "gadget.transfer_salt@"
    "7ca1f127ae2aba8ae3ff0daa0762a2981d18913d868dc2742d5a74f22684c557",
    "gadget.transfer_salt@"
    "afc1dab7ce4cb1d665f58c0e62c3211c7152d792a45bd80acbbe3444a7be5d4e",
    "gadget.transfer_salt@"
    "c897628fb413fa804e577bd04151d6ba3b460e6052b87493c17e1529720c3945",
)
TRANSFER_SHARED_SECRET_FLAGGED_KEY = (
    "decaf.shared_secret@"
    "8ce201c238a4cc26bd7b26e643f310b315018b7dda86dc87232582627609886f"
)
TRANSFER_SHARED_SECRET_KEY = (
    "decaf.shared_secret@"
    "5624191b0968bbfecd8293d70a732c8ad29efc8dc9e139854448c75dfb847472"
)
TRANSFER_CURRENT_SHARED_SECRET_FLAGGED_KEY = (
    "decaf.shared_secret@"
    "0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b"
)
TRANSFER_CURRENT_SHARED_SECRET_KEY = (
    "decaf.shared_secret@"
    "041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41"
)
TRANSFER_OBSOLETE_SHARED_SECRET_KEYS = frozenset({
    TRANSFER_SHARED_SECRET_FLAGGED_KEY,
    TRANSFER_SHARED_SECRET_KEY,
})
TRANSFER_OBSOLETE_DETECTION_ENCRYPTION_KEYS = frozenset({
    (
        "gadget.poseidon_encryption.detection@"
        "1ede1760feb8eb4e7a35dc33d2663a7f98902446d002d1f978bccca5584141b3"
    ),
    (
        "gadget.poseidon_encryption.detection@"
        "56b52fb3b4471470bf18433fc159d2dcc62582ec4a44e139300b46afae091755"
    ),
})
TRANSFER_DETECTION_ENCRYPTION_KEY = (
    "gadget.poseidon_encryption.detection@"
    "cb69c394a6636349ef1ca32ae7f664980eedd6a7010cb2a2d96541cc47984b25"
)
TRANSFER_STATEMENT_V4_KEY = (
    "statement.hash@"
    "042c03f6fbeb384ad6230b63ee320b87cd0d4f74a820f0cac6e6f7499e9350bd"
)
TRANSFER_OBSOLETE_STATEMENT_KEYS = frozenset({
    (
        "statement.hash@"
        "36ba07cf2e0826414516075584e00c63d6d687817b207807b0e1f177288c914e"
    ),
    (
        "statement.hash@"
        "954385455be36f5111913fb2e5f815b62f04b784911ae898c26d6abd58cead31"
    ),
})
TRANSFER_AMOUNT_ENCRYPTION_KEY = (
    "gadget.poseidon_encryption.amount@"
    "da3ae2f5f8f6a3fba6819c9764c9ee26010f080750d76981e9a4bef43587730e"
)
TRANSFER_ADDRESS_ENCRYPTION_KEY = (
    "gadget.poseidon_encryption.address@"
    "9a677aa48c09d5d9ae8091bb7349f6026be67ea81d0c4df2429a8a1f9aba905f"
)
TRANSFER_NET_BALANCE_KEY = (
    "decaf.net_balance_commitment@"
    "efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681"
)
@dataclass(frozen=True)
class ExactTraceSpec:
    """One source-authenticated exact provider consumed by a refinement."""

    label: str
    fact: str
    op: str
    args: tuple[str, ...]
    key: str | None
    constraint_count: int
    local_wire_count: int
    kind: str = "gadget"
    deployed_relation_digest: str | None = None


def _transfer_trace(
    label: str,
    fact: str,
    op: str,
    args: tuple[str, ...],
    key: str | None,
    rows: int,
    local_wires: int,
    kind: str = "gadget",
) -> ExactTraceSpec:
    return ExactTraceSpec(
        label, fact, op, args, key, rows, local_wires, kind
    )


TRANSFER_TRACE_SPECS = (
    _transfer_trace(
        "is_regulated_boolean", "assetRegistry", "assert.boolean",
        ("var=is_regulated",), TRANSFER_BOOLEAN_KEY, 1, 2, "glue",
    ),
    _transfer_trace(
        "auth_ak_non_identity", "canonicalSender",
        "assert.decaf_non_identity",
        ("point=auth.ak", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "sender_div_gen_non_identity", "canonicalSender",
        "assert.decaf_non_identity",
        ("point=sender.div_gen", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "asset_id_nonzero", "assetRegistry", "assert.ne",
        ("lhs=shared.asset_id", "rhs=0"),
        TRANSFER_ASSET_ID_NONZERO_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "effective_ring_pk", "complianceTranscript", "select.point",
        (
            "cond=is_regulated",
            "if_true=asset.leaf.ring_pk",
            "if_false=unregulated.ring_pk",
            "out=effective.ring_pk",
        ),
        TRANSFER_SELECT_RING_KEY, 2, 6, "glue",
    ),
    _transfer_trace(
        "effective_dk_pub", "complianceTranscript", "select.point",
        (
            "cond=is_regulated",
            "if_true=asset.leaf.dk_pub",
            "if_false=unregulated.dk_pub",
            "out=effective.dk_pub",
        ),
        TRANSFER_SELECT_DK_KEY, 2, 6, "glue",
    ),
    *(
        _transfer_trace(
            f"effective_{field}", "complianceTranscript", "select.field",
            (
                "cond=is_regulated",
                f"if_true=asset.leaf.{field}",
                "if_false=unregulated.policy_hash",
                f"out=effective.{field}",
            ),
            TRANSFER_SELECT_POLICY_KEY, 1, 4, "glue",
        )
        for field in (
            "ring_id_hash",
            "policy_id_hash",
            "resource_hash",
            "permission_hash",
        )
    ),
    _transfer_trace(
        "sender_div_gen_compress", "canonicalSender",
        "decaf.compress_to_field",
        ("in=sender.div_gen", "out=sender.div_gen_fq"),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "sender_transmission_compress", "canonicalSender",
        "decaf.compress_to_field",
        ("in=sender.transmission", "out=sender.transmission_fq"),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "incoming_viewing_key_nonzero", "canonicalSender", "assert.ne",
        ("lhs=auth.ivk_reduced", "rhs=0"),
        TRANSFER_ASSET_ID_NONZERO_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "sender_dtk", "canonicalSender",
        "decaf.diversified_transmission_key",
        (
            "nk=auth.nk",
            "ak=shared.ak",
            "div_gen=sender.div_gen",
            "ivk_reduced=auth.ivk_reduced",
            "ivk_quotient_a=auth.ivk_quotient_a",
            "out=sender.transmission.computed",
        ),
        TRANSFER_DTK_KEY, 5477, 4971,
    ),
    _transfer_trace(
        "sender_transmission_equivalent", "canonicalSender",
        "decaf.assert_equivalent",
        (
            "lhs=sender.transmission.computed",
            "rhs=sender.transmission",
        ),
        TRANSFER_DTK_EQUIVALENT_KEY, 3, 9,
    ),
    _transfer_trace(
        "sender_transmission_non_identity", "canonicalSender",
        "assert.decaf_non_identity",
        ("point=sender.transmission", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "asset_dk_compress", "assetRegistry", "decaf.compress_to_field",
        ("in=asset.leaf.dk_pub", "out=asset.leaf.dk_pub_fq"),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "asset_params_hash", "assetRegistry",
        "gadget.asset_registry_params_hash",
        (
            "dk_pub_fq=asset.leaf.dk_pub_fq",
            "threshold=asset.leaf.threshold",
            "slot_count=asset.leaf.slot_count",
            "channels_hash=asset.leaf.channels_hash",
            "out=asset.leaf.params_hash",
        ),
        TRANSFER_ASSET_PARAMS_KEY, 350, 356,
    ),
    _transfer_trace(
        "asset_ring_pk_compress", "assetRegistry",
        "decaf.compress_to_field",
        ("in=asset.leaf.ring_pk", "out=asset.leaf.ring_pk_fq"),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "asset_ring_hash", "assetRegistry",
        "gadget.asset_registry_ring_hash",
        (
            "ring_pk_fq=asset.leaf.ring_pk_fq",
            "ring_id_hash=asset.leaf.ring_id_hash",
            "policy_id_hash=asset.leaf.policy_id_hash",
            "permission_hash=asset.leaf.permission_hash",
            "resource_hash=asset.leaf.resource_hash",
            "out=asset.leaf.ring_hash",
        ),
        TRANSFER_ASSET_RING_KEY, 390, 397,
    ),
    _transfer_trace(
        "asset_leaf_hash", "assetRegistry",
        "gadget.asset_registry_leaf_hash",
        (
            "value=asset.leaf.value",
            "next_index=asset.leaf.next_index",
            "next_value=asset.leaf.next_value",
            "params_hash=asset.leaf.params_hash",
            "ring_hash=asset.leaf.ring_hash",
            "out=asset.leaf.commitment",
        ),
        TRANSFER_ASSET_LEAF_KEY, 390, 405,
    ),
    _transfer_trace(
        "asset_path", "assetRegistry", "gadget.asset_registry_path",
        (
            "leaf=asset.leaf.commitment",
            "path=asset.path",
            "position=asset.position",
            "out=asset.root.computed",
        ),
        TRANSFER_ASSET_PATH_KEY, 5857, 5848,
    ),
    _transfer_trace(
        "asset_root_assert", "assetRegistry", "assert.eq",
        ("lhs=asset.root.computed", "rhs=asset_anchor"),
        WITHDRAWAL_ASSET_ROOT_KEY, 1, 7, "glue",
    ),
    _transfer_trace(
        "asset_gap", "assetRegistry", "gadget.asset_registry_gap",
        (
            "asset_id=shared.asset_id",
            "is_regulated=is_regulated",
            "value=asset.leaf.value",
            "next_value=asset.leaf.next_value",
            "out=asset.gap_valid",
        ),
        TRANSFER_ASSET_GAP_KEY, 3542, 3046,
    ),
    _transfer_trace(
        "asset_gap_accept", "assetRegistry", "assert.eq",
        ("lhs=asset.gap_valid", "rhs=1"),
        WITHDRAWAL_GAP_ACCEPT_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "sender_compliance_leaf", "senderCompliance",
        "gadget.compliance_leaf",
        (
            "div_gen_fq=sender.div_gen_fq",
            "transmission_fq=sender.transmission_fq",
            "clue_key=sender.clue_key",
            "asset_id=shared.asset_id",
            "slot_id=sender.slot_id",
            "slot_derivation=sender.slot_derivation",
            "d=sender.d",
            "out=sender.leaf_commitment",
        ),
        TRANSFER_COMPLIANCE_LEAF_KEY, 470, 480,
    ),
    _transfer_trace(
        "sender_compliance_path", "senderCompliance",
        "gadget.compliance_path",
        (
            "leaf=sender.leaf_commitment",
            "path=sender.path",
            "position=sender.position",
            "out=sender.compliance_root",
        ),
        TRANSFER_COMPLIANCE_PATH_KEY, 5857, 5850,
    ),
    _transfer_trace(
        "sender_compliance_assert", "senderCompliance", "assert.eq_if",
        (
            "lhs=sender.compliance_root",
            "rhs=compliance_anchor",
            "cond=is_regulated",
        ),
        WITHDRAWAL_COMPLIANCE_ASSERT_KEY, 2, 9, "glue",
    ),
    _transfer_trace(
        "sender_ack", "senderCompliance", "decaf.ack",
        ("ring_pk=effective.ring_pk", "d=sender.d", "out=sender.ack"),
        TRANSFER_ACK_KEY, 3010, 3013,
    ),
    _transfer_trace(
        "required_note_commitment", "requiredSpend",
        "gadget.note_commitment",
        (
            "blinding=spend0.note.blinding",
            "amount=spend0.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_key_s=sender.transmission_fq",
            "clue_key=sender.clue_key",
            "out=spend0.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY, 430, 439,
    ),
    _transfer_trace(
        "required_nullifier", "requiredSpend", "gadget.nullifier",
        (
            "nk=auth.nk",
            "commitment=spend0.note.commitment.computed",
            "position=spend0.state_proof.position",
            "out=spend0.nullifier.real",
        ),
        TRANSFER_NULLIFIER_KEY, 310, 320,
    ),
    _transfer_trace(
        "required_state_path", "requiredSpend",
        "gadget.state_commitment_path",
        (
            "commitment=spend0.note.commitment.computed",
            "position=spend0.state_proof.position",
            "path=spend0.state_proof.path",
            "out=spend0.anchor.computed",
        ),
        TRANSFER_STATE_PATH_KEY, 9015, 8999,
    ),
    _transfer_trace(
        "required_nullifier_assert", "requiredSpend", "assert.eq",
        ("lhs=spend0.nullifier", "rhs=spend0.nullifier.real"),
        WITHDRAWAL_REQUIRED_NULLIFIER_ASSERT_KEY, 1, 6, "glue",
    ),
    _transfer_trace(
        "required_anchor_assert", "requiredSpend", "assert.eq",
        ("lhs=spend0.anchor.computed", "rhs=anchor"),
        WITHDRAWAL_ASSET_ROOT_KEY, 1, 7, "glue",
    ),
    _transfer_trace(
        "required_rvk", "requiredSpend",
        "decaf.randomized_verification_key",
        (
            "ak=shared.ak",
            "randomizer=spend0.auth_randomizer",
            "out=spend0.rk.computed",
        ),
        TRANSFER_RVK_KEY, 1812, 1815,
    ),
    _transfer_trace(
        "required_rk_equivalent", "requiredSpend",
        "decaf.assert_equivalent",
        ("lhs=spend0.rk.computed", "rhs=spend0.rk.claimed"),
        TRANSFER_SPEND_EQUIVALENT_KEY, 3, 7,
    ),
    _transfer_trace(
        "required_rk_compress", "requiredSpend",
        "decaf.compress_to_field",
        ("in=spend0.rk.claimed", "out=spend0.rk.compressed"),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "optional_is_dummy_boolean", "optionalSpend", "assert.boolean",
        ("var=spend1.is_dummy",), TRANSFER_BOOLEAN_KEY, 1, 2, "glue",
    ),
    _transfer_trace(
        "optional_note_commitment", "optionalSpend",
        "gadget.note_commitment",
        (
            "blinding=spend1.note.blinding",
            "amount=spend1.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_key_s=sender.transmission_fq",
            "clue_key=sender.clue_key",
            "out=spend1.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY, 430, 439,
    ),
    _transfer_trace(
        "optional_nullifier", "optionalSpend", "gadget.nullifier",
        (
            "nk=auth.nk",
            "commitment=spend1.note.commitment.computed",
            "position=spend1.state_proof.position",
            "out=spend1.nullifier.real",
        ),
        TRANSFER_NULLIFIER_KEY, 310, 320,
    ),
    _transfer_trace(
        "optional_state_path", "optionalSpend",
        "gadget.state_commitment_path",
        (
            "commitment=spend1.note.commitment.computed",
            "position=spend1.state_proof.position",
            "path=spend1.state_proof.path",
            "out=spend1.anchor.computed",
        ),
        TRANSFER_STATE_PATH_KEY, 9015, 8999,
    ),
    _transfer_trace(
        "optional_synthetic_nullifier", "optionalSpend",
        "gadget.synthetic_dummy_nullifier",
        (
            "seed=spend1.dummy_nullifier_seed",
            "randomizer=spend1.auth_randomizer",
            "slot=spend1",
            "out=spend1.nullifier.synthetic",
        ),
        TRANSFER_SYNTHETIC_NULLIFIER_KEY, 305, 308,
    ),
    _transfer_trace(
        "optional_nullifier_mux", "optionalSpend", "dummy.mux",
        (
            "is_dummy=spend1.is_dummy",
            "real=spend1.nullifier.real",
            "synthetic=spend1.nullifier.synthetic",
            "out=spend1.nullifier.selected",
        ),
        TRANSFER_DUMMY_MUX_KEY, 2, 12, "glue",
    ),
    _transfer_trace(
        "optional_nullifier_assert", "optionalSpend", "assert.eq",
        (
            "lhs=spend1.nullifier.claimed",
            "rhs=spend1.nullifier.selected",
        ),
        "assert.eq@460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3",
        1, 4, "glue",
    ),
    _transfer_trace(
        "optional_anchor_assert", "optionalSpend", "assert.eq_if",
        (
            "lhs=spend1.anchor.computed",
            "rhs=anchor",
            "cond=spend1.is_not_dummy",
        ),
        "assert.eq_if@36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03",
        2, 9, "glue",
    ),
    _transfer_trace(
        "optional_rvk", "optionalSpend",
        "decaf.randomized_verification_key",
        (
            "ak=shared.ak",
            "randomizer=spend1.auth_randomizer",
            "out=spend1.rk.computed",
        ),
        TRANSFER_RVK_KEY, 1812, 1815,
    ),
    _transfer_trace(
        "optional_rk_equivalent", "optionalSpend",
        "decaf.assert_equivalent_if",
        (
            "lhs=spend1.rk.computed",
            "rhs=spend1.rk.claimed",
            "cond=spend1.is_not_dummy",
        ),
        TRANSFER_EQUIVALENT_IF_KEY, 6, 10,
    ),
    _transfer_trace(
        "optional_amount_zero", "optionalSpend", "assert.eq_if",
        (
            "lhs=spend1.note.amount",
            "rhs=0",
            "cond=spend1.is_dummy",
        ),
        "assert.eq_if@ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d",
        2, 4, "glue",
    ),
    _transfer_trace(
        "optional_rk_compress", "optionalSpend",
        "decaf.compress_to_field",
        ("in=spend1.rk.claimed", "out=spend1.rk.compressed"),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "receiver_div_gen_non_identity", "receiverOutput",
        "assert.decaf_non_identity",
        ("point=output0.recipient.div_gen", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "receiver_transmission_non_identity", "receiverOutput",
        "assert.decaf_non_identity",
        ("point=output0.recipient.transmission", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY, 1, 3, "glue",
    ),
    _transfer_trace(
        "receiver_amount_is_zero", "receiverOutput", "gadget.is_zero",
        ("in=output0.note.amount", "out=output0.is_dummy"),
        TRANSFER_IS_ZERO_KEY, 2, 4,
    ),
    _transfer_trace(
        "receiver_div_gen_compress", "receiverOutput",
        "decaf.compress_to_field",
        (
            "in=output0.recipient.div_gen",
            "out=output0.recipient.div_gen_fq",
        ),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "receiver_transmission_compress", "receiverOutput",
        "decaf.compress_to_field",
        (
            "in=output0.recipient.transmission",
            "out=output0.recipient.transmission_fq",
        ),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "receiver_note_commitment", "receiverOutput",
        "gadget.note_commitment",
        (
            "blinding=output0.note.blinding",
            "amount=output0.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=output0.recipient.div_gen_fq",
            "transmission_key_s=output0.recipient.transmission_fq",
            "clue_key=output0.note.clue_key",
            "out=output0.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY, 430, 439,
    ),
    _transfer_trace(
        "receiver_note_assert", "receiverOutput", "assert.eq",
        (
            "lhs=output0.note.commitment.computed",
            "rhs=output0.note_commitment",
        ),
        "assert.eq@2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55",
        1, 9, "glue",
    ),
    _transfer_trace(
        "receiver_compliance_leaf", "receiverCompliance",
        "gadget.compliance_leaf",
        (
            "div_gen_fq=output0.recipient.div_gen_fq",
            "transmission_fq=output0.recipient.transmission_fq",
            "clue_key=output0.note.clue_key",
            "asset_id=shared.asset_id",
            "slot_id=output0.recipient.slot_id",
            "slot_derivation=output0.recipient.slot_derivation",
            "d=output0.recipient.d",
            "out=output0.recipient.leaf_commitment",
        ),
        TRANSFER_COMPLIANCE_LEAF_KEY, 470, 480,
    ),
    _transfer_trace(
        "receiver_compliance_path", "receiverCompliance",
        "gadget.compliance_path",
        (
            "leaf=output0.recipient.leaf_commitment",
            "path=output0.recipient.path",
            "position=output0.recipient.position",
            "out=output0.recipient.compliance_root",
        ),
        TRANSFER_COMPLIANCE_PATH_KEY, 5857, 5850,
    ),
    _transfer_trace(
        "receiver_compliance_assert", "receiverCompliance",
        "assert.eq_if",
        (
            "lhs=output0.recipient.compliance_root",
            "rhs=compliance_anchor",
            "cond=is_regulated",
        ),
        WITHDRAWAL_COMPLIANCE_ASSERT_KEY, 2, 9, "glue",
    ),
    _transfer_trace(
        "receiver_nonzero_assert", "receiverOutput", "assert.eq",
        ("lhs=output0.is_dummy", "rhs=0"),
        "assert.eq@ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd",
        1, 2, "glue",
    ),
    _transfer_trace(
        "receiver_ack", "receiverCompliance", "decaf.ack",
        (
            "ring_pk=effective.ring_pk",
            "d=output0.recipient.d",
            "out=receiver.ack",
        ),
        TRANSFER_ACK_KEY, 3010, 3013,
    ),
    _transfer_trace(
        "change_note_commitment", "changeOutput",
        "gadget.note_commitment",
        (
            "blinding=output1.note.blinding",
            "amount=output1.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_key_s=sender.transmission_fq",
            "clue_key=sender.clue_key",
            "out=output1.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY, 430, 439,
    ),
    _transfer_trace(
        "change_note_assert", "changeOutput", "assert.eq",
        (
            "lhs=output1.note.commitment.computed",
            "rhs=output1.note_commitment",
        ),
        "assert.eq@2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55",
        1, 9, "glue",
    ),
    _transfer_trace(
        "threshold_flag", "complianceTranscript", "threshold.flag",
        (
            "regulated=is_regulated",
            "amount=receiver.amount",
            "threshold=asset.leaf.threshold",
            "out=is_flagged",
        ),
        TRANSFER_THRESHOLD_KEY, 896, 898,
    ),
    *(
        _transfer_trace(
            f"{tier}_epk_compress", "complianceTranscript",
            "decaf.compress_to_field",
            (
                f"in=compliance.{tier}.epk",
                f"out=compliance.{tier}.epk_fq",
            ),
            TRANSFER_COMPRESS_KEY, 1046, 706,
        )
        for tier in ("sender_core", "sender_ext", "output_core", "output_ext")
    ),
    *(
        _transfer_trace(
            f"salt{index}", "complianceTranscript",
            "gadget.transfer_salt",
            (
                f"label=salt{index}",
                "nonce_root=compliance.transfer_nonce_root",
                f"out=salt{index}",
            ),
            TRANSFER_SALT_KEYS[index], 265, 267,
        )
        for index in range(5)
    ),
    _transfer_trace(
        "sender_core_shared_secret", "complianceTranscript",
        "decaf.shared_secret",
        (
            "tier=sender_core",
            "esk=compliance.sender_r_core",
            "ack=sender.ack",
            "dk_pub=effective.dk_pub",
            "flag=is_flagged",
            "epk=compliance.sender_core.epk",
            "issuer=sender_core.shared.issuer",
            "user=sender_core.shared.user",
            "selected=sender_core.shared.selected",
        ),
        TRANSFER_CURRENT_SHARED_SECRET_FLAGGED_KEY, 7327, 7335,
    ),
    *(
        _transfer_trace(
            f"{tier}_shared_secret", "complianceTranscript",
            "decaf.shared_secret",
            (
                f"tier={tier}",
                f"esk=compliance.{esk}",
                f"ack={ack}",
                "dk_pub=effective.dk_pub",
                "flag=is_flagged",
                f"epk=compliance.{tier}.epk",
                f"issuer={tier}.shared.issuer",
                f"user={tier}.shared.user",
                f"selected={tier}.shared.selected",
            ),
            TRANSFER_CURRENT_SHARED_SECRET_KEY, 7326, 7335,
        )
        for tier, esk, ack in (
            ("sender_ext", "sender_r_ext", "sender.ack"),
            ("output_core", "output_r_core", "receiver.ack"),
            ("output_ext", "output_r_ext", "receiver.ack"),
        )
    ),
    _transfer_trace(
        "detection_encryption", "complianceTranscript",
        "gadget.poseidon_encryption.detection",
        (
            "flag=is_flagged",
            "ss=sender_core.shared.issuer",
            "epk_fq=compliance.sender_core.epk_fq",
            "salt=salt0",
            "asset_id=shared.asset_id",
            "sender_slot=sender.slot_id:u32",
            "receiver_slot=receiver.slot_id:u32",
            "sender_word=sender.slot_id+flag*2^32",
            "out=compliance.detection_ciphertext",
        ),
        TRANSFER_DETECTION_ENCRYPTION_KEY, 2446, 2115,
    ),
    _transfer_trace(
        "sender_amount_encryption", "complianceTranscript",
        "gadget.poseidon_encryption.amount",
        (
            "tier=sender_core",
            "ss=sender_core.shared.selected",
            "c2=compliance.sender_core.c2",
            "amount=receiver.amount",
            "out=compliance.sender_core.ciphertext",
        ),
        TRANSFER_AMOUNT_ENCRYPTION_KEY, 1312, 978,
    ),
    _transfer_trace(
        "sender_address_encryption", "complianceTranscript",
        "gadget.poseidon_encryption.address",
        (
            "tier=sender_ext",
            "ss=sender_ext.shared.selected",
            "c2=compliance.sender_ext.c2",
            "div_gen_fq=receiver.div_gen_fq",
            "transmission_fq=receiver.transmission_fq",
            "out=compliance.sender_ext.ciphertext",
        ),
        TRANSFER_ADDRESS_ENCRYPTION_KEY, 2856, 2191,
    ),
    _transfer_trace(
        "output_amount_encryption", "complianceTranscript",
        "gadget.poseidon_encryption.amount",
        (
            "tier=output_core",
            "ss=output_core.shared.selected",
            "c2=compliance.output_core.c2",
            "amount=receiver.amount",
            "out=compliance.output_core.ciphertext",
        ),
        TRANSFER_AMOUNT_ENCRYPTION_KEY, 1312, 978,
    ),
    _transfer_trace(
        "output_address_encryption", "complianceTranscript",
        "gadget.poseidon_encryption.address",
        (
            "tier=output_ext",
            "ss=output_ext.shared.selected",
            "c2=compliance.output_ext.c2",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_fq=sender.transmission_fq",
            "out=compliance.output_ext.ciphertext",
        ),
        TRANSFER_ADDRESS_ENCRYPTION_KEY, 2856, 2191,
    ),
    *(
        _transfer_trace(
            f"metadata_{label}", "complianceTranscript", "assert.eq",
            (f"lhs=compliance.metadata.{lhs}", f"rhs={rhs}"),
            key, 1, local_wires, "glue",
        )
        for label, lhs, rhs, key, local_wires in (
            (
                "sender_subject_derivation",
                "sender_subject_derivation",
                "sender.slot_derivation",
                "assert.eq@d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd",
                3,
            ),
            (
                "output_subject_derivation",
                "output_subject_derivation",
                "receiver.slot_derivation",
                "assert.eq@d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd",
                3,
            ),
            (
                "ring_id_hash", "ring_id_hash", "effective.ring_id_hash",
                "assert.eq@f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707",
                3,
            ),
            (
                "policy_id_hash", "policy_id_hash",
                "effective.policy_id_hash",
                "assert.eq@f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707",
                3,
            ),
            (
                "resource_hash", "resource_hash", "effective.resource_hash",
                "assert.eq@f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707",
                3,
            ),
            (
                "permission_hash", "permission_hash",
                "effective.permission_hash",
                "assert.eq@f74adf493a9dda5b54c25d40735212618ac1c1decd12a6243fb4ebe7840a0707",
                3,
            ),
            (
                "target_timestamp", "target_timestamp", "target_timestamp",
                "assert.eq@d1faf7346a5dbff8ee29cd3032dc35de5268dd9eb13f3bf487edc1ef70d2e0bd",
                3,
            ),
            *(
                (
                    f"{name}_salt", f"{name}_salt", f"salt{index}",
                    "assert.eq@49739cba4707f98bb6b980d3196b1d76b50766e7c367e40816b289e376ddfaed",
                    5,
                )
                for name, index in (
                    ("sender_core", 1),
                    ("sender_ext", 2),
                    ("output_core", 3),
                    ("output_ext", 4),
                )
            ),
        )
    ),
    _transfer_trace(
        "net_balance", "balanceComputedAndCompressed",
        "decaf.net_balance_commitment",
        (
            "inputs=input_amounts",
            "outputs=output_amounts",
            "asset_id=shared.asset_id",
            "blinding=action_balance_blinding",
            "out=balance_commitment.computed",
        ),
        TRANSFER_NET_BALANCE_KEY, 6202, 6028,
    ),
    _transfer_trace(
        "balance_compress", "balanceComputedAndCompressed",
        "decaf.compress_to_field",
        (
            "in=balance_commitment.computed",
            "out=balance_commitment.fq",
        ),
        TRANSFER_COMPRESS_KEY, 1046, 706,
    ),
    _transfer_trace(
        "statement_hash", "statementBinding", "statement.hash",
        (
            "family=transfer",
            "fields=statement_fields",
            "out=statement_hash",
        ),
        TRANSFER_STATEMENT_V4_KEY,
        3280,
        3329,
    ),
    _transfer_trace(
        "statement_assert", "statementBinding", "assert.eq",
        ("lhs=statement_hash", "rhs=claimed_statement_hash"),
        "assert.eq@001662998b48830253568a34945bae30020bcb70574648b9aa58b23510a29b69",
        1, 10, "glue",
    ),
)


WITHDRAWAL_FACT_FIELDS = (
    "canonicalSender",
    "requiredSpend",
    "optionalSpend",
    "changeOutput",
    "assetRegistry",
    "senderCompliance",
    "conservation",
    "statementBinding",
)

WITHDRAWAL_FACT_PROVIDER_COUNTS = {
    "canonicalSender": 7,
    "requiredSpend": 8,
    "optionalSpend": 12,
    "changeOutput": 2,
    "assetRegistry": 7,
    "senderCompliance": 3,
    "conservation": 2,
    "statementBinding": 4,
}

# The 22 reachable handwritten core adapters consume these 21 unique exact
# providers (the optional-nullifier mux supports both real and dummy cases).
WITHDRAWAL_CORE_PROVIDER_LABELS = (
    "required_note_commitment",
    "optional_note_commitment",
    "change_note_commitment",
    "change_note_assert",
    "required_anchor_assert",
    "optional_anchor_assert",
    "required_state_path",
    "optional_state_path",
    "required_nullifier",
    "optional_nullifier",
    "optional_is_dummy_boolean",
    "optional_nullifier_assert",
    "optional_nullifier_mux",
    "optional_amount_zero",
    "sender_div_gen_compress",
    "required_rk_compress",
    "optional_rk_compress",
    "required_rvk",
    "optional_rvk",
    "required_rk_equivalent",
    "optional_rk_equivalent",
)

WITHDRAWAL_SPECIFICATION_PREDICATES = (
    "ASSET-ID-NONZERO",
    "ASSET-LEAF-HASH",
    "ASSET-REGISTRY-GAP-ORDERING",
    "ASSET-REGISTRY-MEMBERSHIP",
    "ASSET-REGULATED-BOOLEAN",
    "CIR-SELECTOR-BOOLEAN",
    "CIR-SHAPE-FIXED",
    "DEC-BALANCE-COMMITMENT-DERIVATION",
    "DEC-BALANCE-COMMITMENT-ENCODING",
    "DEC-DIVERSIFIED-GENERATOR-ENCODING",
    "DEC-INCOMING-VIEWING-KEY-NONZERO",
    "DEC-SPEND-RK-DERIVATION",
    "DEC-SPEND-RK-ENCODING",
    "DEC-TRANSMISSION-KEY-DERIVATION",
    "DEC-TRANSMISSION-KEY-ENCODING",
    "DEC-TRANSMISSION-KEY-NONIDENTITY",
    "DUMMY-AMOUNT-ZERO",
    "DUMMY-NULLIFIER-DOMAIN-BINDING",
    "DUMMY-SLOT-POSITION-BINDING",
    "FIELD-AUTH-RANDOMIZER-RANGE",
    "FIELD-BALANCE-BLINDING-RANGE",
    "FIELD-USER-POSITION-RANGE",
    "NOTE-OUTPUT-ASSET-BINDING",
    "NOTE-OUTPUT-CLUE-KEY-BINDING",
    "NOTE-OUTPUT-COMMITMENT",
    "NOTE-OUTPUT-OWNER-BINDING",
    "NOTE-SPEND-ASSET-BINDING",
    "NOTE-SPEND-CLUE-KEY-BINDING",
    "NOTE-SPEND-COMMITMENT",
    "NOTE-SPEND-NULLIFIER-DERIVATION",
    "NOTE-SPEND-OWNER-BINDING",
    "SCT-SPEND-MEMBERSHIP",
    "USER-COMPLIANCE-LEAF-HASH",
    "USER-COMPLIANCE-MEMBERSHIP-GATE",
    "USER-LEAF-ADDRESS-BINDING",
    "USER-LEAF-ASSET-BINDING",
    "USER-LEAF-POLICY-SLOT-BINDING",
    "VALUE-AMOUNT-128-RANGE",
    "WITHDRAWAL-INTENT-FIELD-BINDING",
)


def _withdrawal_trace(
    label: str,
    fact: str,
    op: str,
    args: tuple[str, ...],
    key: str | None,
    rows: int,
    local_wires: int,
    kind: str = "gadget",
    deployed_relation_digest: str | None = None,
) -> ExactTraceSpec:
    return ExactTraceSpec(
        label,
        fact,
        op,
        args,
        key,
        rows,
        local_wires,
        kind,
        deployed_relation_digest,
    )


WITHDRAWAL_TRACE_SPECS = (
    _withdrawal_trace(
        "is_regulated_boolean",
        "assetRegistry",
        "assert.boolean",
        ("var=is_regulated",),
        WITHDRAWAL_BOOLEAN_KEY,
        1,
        2,
        "glue",
    ),
    _withdrawal_trace(
        "auth_ak_non_identity",
        "canonicalSender",
        "assert.decaf_non_identity",
        ("point=auth.ak", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY,
        1,
        3,
        "glue",
    ),
    _withdrawal_trace(
        "sender_div_gen_non_identity",
        "canonicalSender",
        "assert.decaf_non_identity",
        ("point=sender.div_gen", "coordinate=x"),
        TRANSFER_NON_IDENTITY_KEY,
        1,
        3,
        "glue",
    ),
    _withdrawal_trace(
        "sender_div_gen_compress",
        "canonicalSender",
        "decaf.compress_to_field",
        ("in=sender.div_gen", "out=sender.div_gen_fq"),
        WITHDRAWAL_DIVGEN_COMPRESS_KEY,
        1046,
        706,
    ),
    _withdrawal_trace(
        "incoming_viewing_key_nonzero",
        "canonicalSender",
        "assert.ne",
        ("lhs=auth.ivk_reduced", "rhs=0"),
        TRANSFER_ASSET_ID_NONZERO_KEY,
        1,
        3,
        "glue",
    ),
    _withdrawal_trace(
        "sender_dtk",
        "canonicalSender",
        "decaf.diversified_transmission_key",
        (
            "nk=auth.nk",
            "ak=shared.ak",
            "div_gen=sender.div_gen",
            "ivk_reduced=auth.ivk_reduced",
            "ivk_quotient_a=auth.ivk_quotient_a",
            "out=sender.transmission.computed",
        ),
        WITHDRAWAL_DTK_KEY,
        5477,
        4971,
    ),
    _withdrawal_trace(
        "sender_transmission_compress",
        "canonicalSender",
        "decaf.compress_to_field",
        (
            "in=sender.transmission.computed",
            "out=sender.transmission_fq",
        ),
        WITHDRAWAL_TRANSMISSION_COMPRESS_KEY,
        1046,
        708,
    ),
    _withdrawal_trace(
        "sender_transmission_non_identity",
        "canonicalSender",
        "assert.decaf_non_identity",
        ("point=sender.transmission.computed", "coordinate=x"),
        COMPUTED_NON_IDENTITY_KEY,
        1,
        4,
        "glue",
    ),
    _withdrawal_trace(
        "asset_leaf",
        "assetRegistry",
        "gadget.asset_registry_leaf_hash",
        (
            "value=asset.leaf.value",
            "next_index=asset.leaf.next_index",
            "next_value=asset.leaf.next_value",
            "params_hash=asset.leaf.params_hash",
            "ring_hash=asset.leaf.ring_hash",
            "out=asset.leaf.commitment",
        ),
        # Withdrawal consumes opaque scalar params/ring hashes; Transfer's
        # expanded leaf provider is a different reviewed relation.
        WITHDRAWAL_ASSET_LEAF_KEY,
        390,
        396,
    ),
    _withdrawal_trace(
        "asset_path",
        "assetRegistry",
        "gadget.asset_registry_path",
        (
            "leaf=asset.leaf.commitment",
            "path=asset.path",
            "position=asset.position",
            "out=asset.root.computed",
        ),
        WITHDRAWAL_ASSET_PATH_KEY,
        5857,
        5848,
    ),
    _withdrawal_trace(
        "asset_root_assert",
        "assetRegistry",
        "assert.eq",
        ("lhs=asset.root.computed", "rhs=asset_anchor"),
        WITHDRAWAL_ASSET_ROOT_KEY,
        1,
        7,
        "glue",
    ),
    _withdrawal_trace(
        "asset_id_nonzero",
        "assetRegistry",
        "assert.ne",
        ("lhs=shared.asset_id", "rhs=0"),
        TRANSFER_ASSET_ID_NONZERO_KEY,
        1,
        3,
        "glue",
    ),
    _withdrawal_trace(
        "asset_gap",
        "assetRegistry",
        "gadget.asset_registry_gap",
        (
            "asset_id=shared.asset_id",
            "is_regulated=is_regulated",
            "value=asset.leaf.value",
            "next_value=asset.leaf.next_value",
            "out=asset.gap_valid",
        ),
        WITHDRAWAL_ASSET_GAP_KEY,
        3542,
        3046,
        deployed_relation_digest=WITHDRAWAL_ASSET_GAP_DEPLOYED_DIGEST,
    ),
    _withdrawal_trace(
        "asset_gap_accept",
        "assetRegistry",
        "assert.eq",
        ("lhs=asset.gap_valid", "rhs=1"),
        WITHDRAWAL_GAP_ACCEPT_KEY,
        1,
        3,
        "glue",
    ),
    _withdrawal_trace(
        "sender_compliance_leaf",
        "senderCompliance",
        "gadget.compliance_leaf",
        (
            "div_gen_fq=sender.div_gen_fq",
            "transmission_fq=sender.transmission_fq",
            "clue_key=sender.clue_key",
            "asset_id=shared.asset_id",
            "slot_id=sender.slot_id",
            "slot_derivation=sender.slot_derivation",
            "d=sender.d",
            "out=sender.leaf_commitment",
        ),
        # Poseidon7 binds all seven payload fields plus the domain lane.
        COMPLIANCE_LEAF_KEY,
        470,
        480,
    ),
    _withdrawal_trace(
        "sender_compliance_path",
        "senderCompliance",
        "gadget.compliance_path",
        (
            "leaf=sender.leaf_commitment",
            "path=sender.path",
            "position=sender.position",
            "out=sender.compliance_root",
        ),
        WITHDRAWAL_COMPLIANCE_PATH_KEY,
        5857,
        5850,
    ),
    _withdrawal_trace(
        "sender_compliance_assert",
        "senderCompliance",
        "assert.eq_if",
        (
            "lhs=sender.compliance_root",
            "rhs=compliance_anchor",
            "cond=is_regulated",
        ),
        WITHDRAWAL_COMPLIANCE_ASSERT_KEY,
        2,
        9,
        "glue",
    ),
    _withdrawal_trace(
        "required_note_commitment",
        "requiredSpend",
        "gadget.note_commitment",
        (
            "blinding=spend0.note.blinding",
            "amount=spend0.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_key_s=sender.transmission_fq",
            "clue_key=shared.clue_key",
            "out=spend0.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY,
        430,
        439,
    ),
    _withdrawal_trace(
        "required_nullifier",
        "requiredSpend",
        "gadget.nullifier",
        (
            "nk=auth.nk",
            "commitment=spend0.note.commitment.computed",
            "position=spend0.state_proof.position",
            "out=spend0.nullifier.real",
        ),
        TRANSFER_NULLIFIER_KEY,
        310,
        320,
    ),
    _withdrawal_trace(
        "required_state_path",
        "requiredSpend",
        "gadget.state_commitment_path",
        (
            "commitment=spend0.note.commitment.computed",
            "position=spend0.state_proof.position",
            "path=spend0.state_proof.path",
            "out=spend0.anchor.computed",
        ),
        TRANSFER_STATE_PATH_KEY,
        9015,
        8999,
    ),
    _withdrawal_trace(
        "required_rvk",
        "requiredSpend",
        "decaf.randomized_verification_key",
        (
            "ak=shared.ak",
            "randomizer=spend0.auth_randomizer",
            "out=spend0.rk.computed",
        ),
        TRANSFER_RVK_KEY,
        1812,
        1815,
    ),
    _withdrawal_trace(
        "required_rk_compress",
        "requiredSpend",
        "decaf.compress_to_field",
        ("in=spend0.rk.claimed", "out=spend0.rk.compressed"),
        TRANSFER_COMPRESS_KEY,
        1046,
        706,
    ),
    _withdrawal_trace(
        "required_nullifier_assert",
        "requiredSpend",
        "assert.eq",
        (
            "lhs=spend0.nullifier.claimed",
            "rhs=spend0.nullifier.real",
        ),
        WITHDRAWAL_REQUIRED_NULLIFIER_ASSERT_KEY,
        1,
        6,
        "glue",
    ),
    _withdrawal_trace(
        "required_anchor_assert",
        "requiredSpend",
        "assert.eq",
        ("lhs=spend0.anchor.computed", "rhs=anchor"),
        WITHDRAWAL_ASSET_ROOT_KEY,
        1,
        7,
        "glue",
    ),
    _withdrawal_trace(
        "required_rk_equivalent",
        "requiredSpend",
        "decaf.assert_equivalent",
        ("lhs=spend0.rk.computed", "rhs=spend0.rk.claimed"),
        TRANSFER_SPEND_EQUIVALENT_KEY,
        3,
        7,
    ),
    _withdrawal_trace(
        "optional_note_commitment",
        "optionalSpend",
        "gadget.note_commitment",
        (
            "blinding=spend1.note.blinding",
            "amount=spend1.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_key_s=sender.transmission_fq",
            "clue_key=shared.clue_key",
            "out=spend1.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY,
        430,
        439,
    ),
    _withdrawal_trace(
        "optional_nullifier",
        "optionalSpend",
        "gadget.nullifier",
        (
            "nk=auth.nk",
            "commitment=spend1.note.commitment.computed",
            "position=spend1.state_proof.position",
            "out=spend1.nullifier.real",
        ),
        TRANSFER_NULLIFIER_KEY,
        310,
        320,
    ),
    _withdrawal_trace(
        "optional_state_path",
        "optionalSpend",
        "gadget.state_commitment_path",
        (
            "commitment=spend1.note.commitment.computed",
            "position=spend1.state_proof.position",
            "path=spend1.state_proof.path",
            "out=spend1.anchor.computed",
        ),
        TRANSFER_STATE_PATH_KEY,
        9015,
        8999,
    ),
    _withdrawal_trace(
        "optional_rvk",
        "optionalSpend",
        "decaf.randomized_verification_key",
        (
            "ak=shared.ak",
            "randomizer=spend1.auth_randomizer",
            "out=spend1.rk.computed",
        ),
        TRANSFER_RVK_KEY,
        1812,
        1815,
    ),
    _withdrawal_trace(
        "optional_rk_compress",
        "optionalSpend",
        "decaf.compress_to_field",
        ("in=spend1.rk.claimed", "out=spend1.rk.compressed"),
        TRANSFER_COMPRESS_KEY,
        1046,
        706,
    ),
    _withdrawal_trace(
        "optional_is_dummy_boolean",
        "optionalSpend",
        "assert.boolean",
        ("var=spend1.is_dummy",),
        WITHDRAWAL_BOOLEAN_KEY,
        1,
        2,
        "glue",
    ),
    _withdrawal_trace(
        "optional_synthetic_nullifier",
        "optionalSpend",
        "gadget.synthetic_dummy_nullifier",
        (
            "seed=spend1.dummy_nullifier_seed",
            "randomizer=spend1.auth_randomizer",
            "slot=spend1",
            "out=spend1.nullifier.synthetic",
        ),
        WITHDRAWAL_SYNTHETIC_NULLIFIER_KEY,
        305,
        308,
    ),
    _withdrawal_trace(
        "optional_nullifier_mux",
        "optionalSpend",
        "dummy.mux",
        (
            "is_dummy=spend1.is_dummy",
            "real=spend1.nullifier.real",
            "synthetic=spend1.nullifier.synthetic",
            "out=spend1.nullifier.selected",
        ),
        TRANSFER_DUMMY_MUX_KEY,
        2,
        12,
        "glue",
    ),
    _withdrawal_trace(
        "optional_nullifier_assert",
        "optionalSpend",
        "assert.eq",
        (
            "lhs=spend1.nullifier.claimed",
            "rhs=spend1.nullifier.selected",
        ),
        (
            "assert.eq@"
            "460e4d66ff383bde603d8cffb059ede8f489117c64d82168ec67187bae7e1bc3"
        ),
        1,
        4,
        "glue",
    ),
    _withdrawal_trace(
        "optional_anchor_assert",
        "optionalSpend",
        "assert.eq_if",
        (
            "lhs=spend1.anchor.computed",
            "rhs=anchor",
            "cond=spend1.is_not_dummy",
        ),
        (
            "assert.eq_if@"
            "36366df670e29c988b147701d72d7155b3720bdc777b4429912cc664e80b0b03"
        ),
        2,
        9,
        "glue",
    ),
    _withdrawal_trace(
        "optional_rk_equivalent",
        "optionalSpend",
        "decaf.assert_equivalent_if",
        (
            "lhs=spend1.rk.computed",
            "rhs=spend1.rk.claimed",
            "cond=spend1.is_not_dummy",
        ),
        TRANSFER_EQUIVALENT_IF_KEY,
        6,
        10,
    ),
    _withdrawal_trace(
        "optional_amount_zero",
        "optionalSpend",
        "assert.eq_if",
        (
            "lhs=spend1.note.amount",
            "rhs=0",
            "cond=spend1.is_dummy",
        ),
        (
            "assert.eq_if@"
            "ddee3f5dbb25719dc8ce88820a48ef2b56159138d939c3b768c7bcfad396079d"
        ),
        2,
        4,
        "glue",
    ),
    _withdrawal_trace(
        "change_note_commitment",
        "changeOutput",
        "gadget.note_commitment",
        (
            "blinding=output0.note.blinding",
            "amount=output0.note.amount",
            "asset_id=shared.asset_id",
            "div_gen_fq=sender.div_gen_fq",
            "transmission_key_s=sender.transmission_fq",
            "clue_key=shared.clue_key",
            "out=output0.note.commitment.computed",
        ),
        TRANSFER_NOTE_COMMITMENT_KEY,
        430,
        439,
    ),
    _withdrawal_trace(
        "change_note_assert",
        "changeOutput",
        "assert.eq",
        (
            "lhs=output0.note.commitment.computed",
            "rhs=output0.note_commitment.claimed",
        ),
        (
            "assert.eq@"
            "2f18e0b1e4152025fc1e73ed096bfe9b60336485134a1f7abc982c129828ff55"
        ),
        1,
        9,
        "glue",
    ),
    _withdrawal_trace(
        "conservation_net_balance",
        "conservation",
        "decaf.conservation_net_balance_commitment2",
        (
            "inputs=input_amounts",
            "outputs=change_amount,outbound_amount",
            "blinding=action.balance_blinding",
            "out=balance_commitment.computed",
        ),
        WITHDRAWAL_NET_BALANCE_KEY,
        2322,
        2322,
    ),
    _withdrawal_trace(
        "conservation_balance_compress",
        "conservation",
        "decaf.compress_to_field",
        ("in=balance_commitment.computed", "out=balance_commitment.fq"),
        WITHDRAWAL_BALANCE_COMPRESS_KEY,
        1046,
        1205,
    ),
    _withdrawal_trace(
        "statement_block0",
        "statementBinding",
        "statement.hash",
        (
            "block=0",
            "inputs=statement.field.000..006",
            "out=statement.hash.block0",
        ),
        WITHDRAWAL_STATEMENT_FIRST_KEY,
        470,
        481,
    ),
    _withdrawal_trace(
        "statement_block1",
        "statementBinding",
        "statement.hash",
        (
            "block=1",
            "inputs=statement.hash.block0,statement.field.007..012",
            "out=statement.hash.block1",
        ),
        WITHDRAWAL_STATEMENT_SECOND_KEY,
        470,
        485,
    ),
    _withdrawal_trace(
        "statement_block2",
        "statementBinding",
        "statement.hash",
        (
            "block=2",
            (
                "inputs=statement.hash.block1,"
                "statement.field.013..015,pad1,pad0,pad1"
            ),
            "out=statement.hash.block2",
        ),
        WITHDRAWAL_STATEMENT_THIRD_KEY,
        455,
        467,
    ),
    _withdrawal_trace(
        "statement_assert",
        "statementBinding",
        "assert.eq",
        ("lhs=statement.hash", "rhs=claimed.statement_hash"),
        WITHDRAWAL_STATEMENT_ASSERT_KEY,
        1,
        10,
        "glue",
    ),
)


@dataclass(frozen=True)
class WithdrawalAssetSelectorSeams:
    """Exact source rows binding Withdrawal's asset selector prerequisites."""

    boolean_segment: dict
    asset_id_nonzero_segment: dict
    is_regulated_wire: int
    outbound_asset_id_wire: int
    asset_id_local_wire: int


def load(path: Path) -> dict:
    return read_known_formal_object(path)


def validate_inputs(ir: dict, previous: dict, constraint_manifest: dict) -> None:
    circuit = ir.get("circuit")
    if circuit not in SUPPORTED_CIRCUITS:
        raise ValueError(f"unsupported deployed-family circuit: {circuit!r}")
    if ir.get("schema") != "shieldd.gnark.deployed_slice_ir.v3":
        raise ValueError("unsupported deployed slice IR schema")
    if previous.get("schema") != "shieldd.gnark.deployed_coverage_manifest.v5":
        raise ValueError("unsupported deployed coverage manifest schema")
    if previous.get("circuit") != circuit:
        raise ValueError("coverage manifest/IR circuit mismatch")
    # These validators also pin the compiled shape, circuit name, wire count,
    # LC term ranges, unique names, and exact supported visibility vocabulary.
    core.witness_wires(constraint_manifest, ir)
    core.semantic_bindings(constraint_manifest, ir)
    if not core.constraint_segments(ir):
        raise ValueError("deployed slice IR has no constraint-bearing segments")


def exact_groups(ir: dict) -> dict[str, list[dict]]:
    """Return one typed, exhaustive row group.

    `render_circuit_facts` checks this list as a multiset against every
    constraint-bearing IR segment, so omission and duplication both fail.
    """

    return {"exact": core.constraint_segments(ir)}


def render_bounds(ir: dict) -> str:
    return core.render_bounds(ir, generator=GENERATOR)


def render_capstone(ir: dict) -> str:
    return core.render_capstone(ir, generator=GENERATOR)


def render_circuit_facts(ir: dict) -> str:
    return core.render_circuit_facts(
        ir,
        groups=exact_groups(ir),
        generator=GENERATOR,
    )


def render_role_bindings(ir: dict, constraint_manifest: dict) -> str:
    return core.render_role_bindings(
        ir,
        constraint_manifest,
        generator=GENERATOR,
    )


def render_semantic_bindings(ir: dict, constraint_manifest: dict) -> str:
    return core.render_semantic_bindings(
        ir,
        constraint_manifest,
        generator=GENERATOR,
    )



def _seating(segment: dict) -> list[int]:
    witness = segment.get("template_equivalence_witness")
    if not isinstance(witness, dict):
        raise ValueError(
            f"segment {segment.get('index')}: "
            "missing template-equivalence witness"
        )
    seating = witness.get(
        "canonical_local_to_deployed_wire_seating"
    )
    if not isinstance(seating, list) or any(
        not isinstance(wire, int) for wire in seating
    ):
        raise ValueError(
            f"segment {segment.get('index')}: malformed canonical seating"
        )
    return seating


def _provider_digest(
    key: object, expected_op: str, label: str
) -> str:
    if not isinstance(key, str):
        raise ValueError(f"{label} provider ID is malformed")
    operation, separator, digest = key.rpartition("@")
    if (
        separator != "@"
        or operation != expected_op
        or len(digest) != 64
        or any(character not in "0123456789abcdef" for character in digest)
    ):
        raise ValueError(f"{label} provider ID is malformed")
    return digest


def _exact_trace_segment(
    ir: dict,
    constraint_manifest: dict,
    *,
    circuit_label: str,
    op: str,
    args: tuple[str, ...],
    key: str | None,
    constraint_count: int,
    local_wire_count: int,
    kind: str,
    label: str,
    deployed_relation_digest: str | None = None,
) -> dict:
    """Join one exact source trace entry to its normalized deployed segment."""

    trace_segments = constraint_manifest.get("segments")
    if not isinstance(trace_segments, list):
        raise ValueError(
            f"{circuit_label} constraint manifest has no source segments"
        )
    matches = [
        segment
        for segment in trace_segments
        if segment.get("op") == op
        and segment.get("args") == list(args)
    ]
    if len(matches) != 1:
        raise ValueError(
            f"expected one exact {label} source trace, found {len(matches)}"
        )
    trace = matches[0]
    if (
        trace.get("kind"),
        trace.get("constraint_count"),
    ) != (kind, constraint_count):
        raise ValueError(f"{label} source trace shape drifted")
    index = trace.get("index")
    if not isinstance(index, int) or index <= 0:
        raise ValueError(f"{label} source trace index is invalid")
    ir_matches = [
        segment
        for segment in core.constraint_segments(ir)
        if segment.get("index") == index
    ]
    if len(ir_matches) != 1 or ir_matches[0].get("op") != op:
        raise ValueError(f"{label} source trace/deployed segment join drifted")
    segment = ir_matches[0]
    actual_key = segment.get("proof_template_id")
    if key is None:
        _provider_digest(actual_key, op, label)
        key = actual_key
    digest = _provider_digest(key, op, label)
    actual = (
        segment.get("proof_template_id"),
        segment.get("constraint_count"),
        len(_seating(segment)),
    )
    expected = (key, constraint_count, local_wire_count)
    if actual != expected:
        raise ValueError(
            f"{label} shape/provider drifted: {actual!r} != {expected!r}"
        )
    witness = segment.get("template_equivalence_witness")
    witness_key = witness.get("proof_template_id")
    if witness_key != key:
        raise ValueError(f"{label} equivalence-witness provider drifted")
    expected_deployed_digest = deployed_relation_digest or digest
    if (
        len(expected_deployed_digest) != 64
        or any(
            character not in "0123456789abcdef"
            for character in expected_deployed_digest
        )
    ):
        raise ValueError(f"{label} deployed relation digest is malformed")
    if (
        segment.get("deployed_normalized_relation_sha256_hex")
        != expected_deployed_digest
    ):
        raise ValueError(
            f"{label} normalized relation digest/provider drifted"
        )
    return segment


def _positive_trace_positions(
    trace_segments: list[dict], circuit: str
) -> dict[int, int]:
    """Index positive source traces injectively by their compiler ID."""

    positions: dict[int, int] = {}
    for position, trace in enumerate(trace_segments):
        if trace.get("constraint_count", 0) <= 0:
            continue
        index = trace.get("index")
        if (
            not isinstance(index, int)
            or index <= 0
            or index in positions
        ):
            raise ValueError(
                f"{circuit} positive source trace indices are malformed"
            )
        positions[index] = position
    return positions


def _require_seats(
    segment: dict, expected: dict[int, int], label: str
) -> None:
    seating = _seating(segment)
    for local, deployed in expected.items():
        if local >= len(seating) or seating[local] != deployed:
            actual = seating[local] if local < len(seating) else None
            raise ValueError(
                f"{label} seating[{local}] drifted: "
                f"{actual!r} != {deployed}"
            )


def _binding_expression(
    bindings: dict[str, dict], name: str, count: int
) -> list[dict]:
    binding = bindings.get(name)
    if binding is None:
        raise ValueError(f"missing Withdrawal semantic binding {name!r}")
    expressions = binding.get("expressions")
    if not isinstance(expressions, list) or len(expressions) != count:
        raise ValueError(
            f"Withdrawal semantic binding {name!r} expression count drifted"
        )
    return expressions


def _single_wire_expression(wire: int) -> dict:
    return {
        "constant": "0",
        "terms": [{"wire_id": wire, "coefficient": "1"}],
    }


def _single_binding_wire(
    bindings: dict[str, dict], name: str
) -> int:
    expression = _binding_expression(bindings, name, 1)[0]
    terms = expression.get("terms")
    if (
        expression.get("constant") != "0"
        or not isinstance(terms, list)
        or len(terms) != 1
        or terms[0].get("coefficient") != "1"
        or not isinstance(terms[0].get("wire_id"), int)
    ):
        raise ValueError(
            f"Withdrawal semantic binding {name!r} is not one exact wire"
        )
    return terms[0]["wire_id"]


def _binding_wire_vector(
    bindings: dict[str, dict], name: str, count: int
) -> tuple[int, ...]:
    expressions = _binding_expression(bindings, name, count)
    wires = []
    for index, expression in enumerate(expressions):
        terms = expression.get("terms")
        if (
            expression.get("constant") != "0"
            or not isinstance(terms, list)
            or len(terms) != 1
            or terms[0].get("coefficient") != "1"
            or not isinstance(terms[0].get("wire_id"), int)
        ):
            raise ValueError(
                f"semantic binding {name!r}[{index}] "
                "is not one exact wire"
            )
        wires.append(terms[0]["wire_id"])
    return tuple(wires)


STATE_PATH_PROVIDER_LOCALS = tuple(
    base + 363 * level
    for level in range(24)
    for base in (291, 293, 296)
)
STATE_PATH_LEVEL_REVERSAL = tuple(
    3 * (23 - level) + sibling
    for level in range(24)
    for sibling in range(3)
)


def _validate_state_path_projection(
    plan: TransferRefinementPlan | WithdrawalRefinementPlan,
    *,
    segment_label: str,
    binding_name: str,
    circuit_label: str,
) -> tuple[int, ...]:
    """Derive and authenticate source-path order at the provider boundary."""

    source_wires = _binding_wire_vector(
        plan.bindings, binding_name, 72
    )
    if len(set(source_wires)) != 72:
        raise ValueError(
            f"{circuit_label} {binding_name} wires are not injective"
        )
    source_index = {
        wire: index for index, wire in enumerate(source_wires)
    }
    seating = _seating(plan.segments[segment_label])
    try:
        derived = tuple(
            source_index[seating[local]]
            for local in STATE_PATH_PROVIDER_LOCALS
        )
    except KeyError as error:
        raise ValueError(
            f"{circuit_label} state-path provider lost a source path wire"
        ) from error
    if derived != STATE_PATH_LEVEL_REVERSAL:
        raise ValueError(
            f"{circuit_label} state-path level reversal drifted"
        )
    return derived


def _binding_lc_wires(
    bindings: dict[str, dict],
    name: str,
    coefficients: tuple[str, ...],
) -> tuple[int, ...]:
    expression = _binding_expression(bindings, name, 1)[0]
    terms = expression.get("terms")
    if (
        expression.get("constant") != "0"
        or not isinstance(terms, list)
        or len(terms) != len(coefficients)
        or tuple(term.get("coefficient") for term in terms) != coefficients
        or any(not isinstance(term.get("wire_id"), int) for term in terms)
    ):
        raise ValueError(
            f"Withdrawal semantic binding {name!r} LC drifted"
        )
    return tuple(term["wire_id"] for term in terms)


def _validate_inverse_row_roles(
    segment: dict,
    value_wire: int,
    inverse_wire: int,
    label: str,
) -> None:
    """Authenticate the two inputs of a reviewed one-row inverse relation."""

    roles = segment.get("wire_roles")
    if not isinstance(roles, dict):
        raise ValueError(f"{label} wire roles drifted")
    inputs = roles.get("input")
    outputs = roles.get("output")
    internal = roles.get("internal")
    if (
        not isinstance(inputs, list)
        or not isinstance(outputs, list)
        or not isinstance(internal, list)
        or outputs
        or value_wire not in inputs
        or set(inputs) | set(internal) != {value_wire, inverse_wire}
        or set(inputs) & set(internal)
    ):
        raise ValueError(f"{label} wire roles drifted")


def _withdrawal_asset_selector_from_plan(
    plan: WithdrawalRefinementPlan,
) -> WithdrawalAssetSelectorSeams:
    """Authenticate selector rows already joined by the exhaustive plan."""

    bindings = plan.bindings
    is_regulated_wire = _single_binding_wire(bindings, "is_regulated")
    outbound_asset_id_wire = _single_binding_wire(
        bindings, "outbound.asset_id"
    )
    boolean = plan.segments["is_regulated_boolean"]
    _require_seats(
        boolean,
        {1: is_regulated_wire},
        "Withdrawal is_regulated Boolean",
    )
    if boolean.get("wire_roles") != {
        "input": [is_regulated_wire],
        "output": [],
        "internal": [],
    }:
        raise ValueError("Withdrawal is_regulated Boolean wire roles drifted")

    asset_id_nonzero = plan.segments["asset_id_nonzero"]
    seating = _seating(asset_id_nonzero)
    asset_id_locals = [
        local
        for local in (1, 2)
        if seating[local] == outbound_asset_id_wire
    ]
    if len(asset_id_locals) != 1:
        raise ValueError(
            "Withdrawal outbound asset ID nonzero seating drifted"
        )
    asset_id_local = asset_id_locals[0]
    inverse_local = 3 - asset_id_local
    _validate_inverse_row_roles(
        asset_id_nonzero,
        outbound_asset_id_wire,
        seating[inverse_local],
        "Withdrawal outbound asset ID nonzero",
    )
    return WithdrawalAssetSelectorSeams(
        boolean_segment=boolean,
        asset_id_nonzero_segment=asset_id_nonzero,
        is_regulated_wire=is_regulated_wire,
        outbound_asset_id_wire=outbound_asset_id_wire,
        asset_id_local_wire=asset_id_local,
    )


def _validate_withdrawal_asset_selector_seams(
    ir: dict, constraint_manifest: dict
) -> WithdrawalAssetSelectorSeams:
    """Resolve selector rows through the exhaustive Withdrawal plan."""

    return _withdrawal_asset_selector_from_plan(
        _validate_withdrawal_refinement_plan(ir, constraint_manifest)
    )


def _lc_expression(
    wires: tuple[int, ...], coefficients: tuple[str, ...]
) -> dict:
    if len(wires) != len(coefficients):
        raise ValueError("internal Withdrawal LC pin length mismatch")
    return {
        "constant": "0",
        "terms": [
            {"wire_id": wire, "coefficient": coefficient}
            for wire, coefficient in zip(wires, coefficients, strict=True)
        ],
    }


def _validate_non_identity_seams(
    ir: dict, constraint_manifest: dict
) -> list[dict[str, object]]:
    """Authenticate each inverse assertion with the shared exact-family logic."""
    circuit = ir.get("circuit")
    try:
        binding_names = NON_IDENTITY_BINDINGS[circuit]
    except KeyError as error:
        raise ValueError(
            f"Decaf non-identity seams requested for unsupported circuit {circuit!r}"
        ) from error
    return core.validate_non_identity_seams(
        ir, constraint_manifest, binding_names
    )


def render_non_identity_seams(ir: dict, constraint_manifest: dict) -> str:
    """Render exact R1CS-inverse-row to protocol point-x nonzero seams."""
    circuit = ir["circuit"]
    return core.render_non_identity_seams(
        ir,
        constraint_manifest,
        NON_IDENTITY_BINDINGS[circuit],
        ("auth.ivk_reduced",),
        groups=exact_groups(ir),
        generator=GENERATOR,
    )


@dataclass(frozen=True)
class TransferRefinementPlan:
    """Authenticated dynamic joins used by every generated Transfer module."""

    segments: dict[str, dict]
    bindings: dict[str, dict]


@dataclass(frozen=True)
class TransferSelectorRows:
    is_regulated_wire: int
    asset_id_wire: int
    asset_id_local: int


TRANSFER_METADATA_FIELDS = {
    "sender_subject_derivation": 0,
    "output_subject_derivation": 1,
    "ring_id_hash": 2,
    "policy_id_hash": 3,
    "resource_hash": 4,
    "permission_hash": 5,
    "target_timestamp": 6,
    "sender_core_salt": 7,
    "sender_ext_salt": 8,
    "output_core_salt": 9,
    "output_ext_salt": 10,
}

TRANSFER_BINDING_ALIASES = {
    "shared.ak": "auth.ak",
    "spend0.nullifier": "spend0.nullifier.claimed",
    "output0.note_commitment": "output0.note_commitment.claimed",
    "output1.note_commitment": "output1.note_commitment.claimed",
    "claimed_statement_hash": "claimed.statement_hash",
    "action_balance_blinding": "action.balance_blinding",
    "input_amounts": "balance.inputs",
    "output_amounts": "balance.outputs",
    "statement_fields": "statement.fields",
    "statement_hash": "statement.hash",
}

TRANSFER_ACTION_BINDING_ARITIES = {
    "claimed.statement_hash": 1,
    "anchor": 1,
    "asset_anchor": 1,
    "compliance_anchor": 1,
    "target_timestamp": 1,
    "action.balance_blinding": 1,
    "is_regulated": 1,
    "auth.ak": 2,
    "auth.nk": 1,
    "auth.ivk_reduced": 1,
    "auth.ivk_quotient_a": 1,
    "shared.asset_id": 1,
    "asset.leaf.value": 1,
    "asset.leaf.next_index": 1,
    "asset.leaf.next_value": 1,
    "asset.leaf.dk_pub": 2,
    "asset.leaf.threshold": 1,
    "asset.leaf.slot_count": 1,
    "asset.leaf.channels_hash": 1,
    "asset.leaf.ring_pk": 2,
    "asset.leaf.ring_id_hash": 1,
    "asset.leaf.policy_id_hash": 1,
    "asset.leaf.permission_hash": 1,
    "asset.leaf.resource_hash": 1,
    "asset.path": 48,
    "asset.position": 1,
    "sender.div_gen": 2,
    "sender.transmission": 2,
    "sender.slot_id": 1,
    "sender.slot_derivation": 1,
    "sender.d": 1,
    "sender.path": 48,
    "sender.position": 1,
    "sender.clue_key": 1,
    "spend0.nullifier.claimed": 1,
    "spend0.rk.claimed": 2,
    "spend0.note.blinding": 1,
    "spend0.note.amount": 1,
    "spend0.note.asset_id": 1,
    "spend0.state_proof.position": 1,
    "spend0.state_proof.path": 72,
    "spend0.auth_randomizer": 1,
    "spend1.nullifier.claimed": 1,
    "spend1.rk.claimed": 2,
    "spend1.note.blinding": 1,
    "spend1.note.amount": 1,
    "spend1.state_proof.position": 1,
    "spend1.state_proof.path": 72,
    "spend1.auth_randomizer": 1,
    "spend1.is_dummy": 1,
    "spend1.dummy_nullifier_seed": 1,
    "output0.note_commitment.claimed": 1,
    "output0.note.blinding": 1,
    "output0.note.amount": 1,
    "output0.note.clue_key": 1,
    "output0.recipient.div_gen": 2,
    "output0.recipient.transmission": 2,
    "output0.recipient.slot_id": 1,
    "output0.recipient.slot_derivation": 1,
    "output0.recipient.d": 1,
    "output0.recipient.path": 48,
    "output0.recipient.position": 1,
    "output1.note_commitment.claimed": 1,
    "output1.note.blinding": 1,
    "output1.note.amount": 1,
    "compliance.transfer_nonce_root": 1,
    "compliance.detection_ciphertext": 4,
    "compliance.metadata": 11,
    "compliance.sender_r_core": 1,
    "compliance.sender_r_ext": 1,
    "compliance.output_r_core": 1,
    "compliance.output_r_ext": 1,
    "compliance.sender_core.epk": 2,
    "compliance.sender_core.c2": 1,
    "compliance.sender_core.ciphertext": 1,
    "compliance.sender_ext.epk": 2,
    "compliance.sender_ext.c2": 1,
    "compliance.sender_ext.ciphertext": 3,
    "compliance.output_core.epk": 2,
    "compliance.output_core.c2": 1,
    "compliance.output_core.ciphertext": 1,
    "compliance.output_ext.epk": 2,
    "compliance.output_ext.c2": 1,
    "compliance.output_ext.ciphertext": 3,
    "balance_commitment.fq": 1,
}


def _transfer_binding_expressions(
    bindings: dict[str, dict], label: str
) -> list[dict] | None:
    """Resolve a source-trace label to exact compiler semantic expressions."""

    if label in {"0", "1", "spend1", "transfer"}:
        return None
    if label.startswith("unregulated."):
        return None
    if label == "sender.slot_id+flag*2^32":
        return [
            *_binding_expression(bindings, "sender.slot_id", 1),
            *_binding_expression(bindings, "is_flagged", 1),
        ]
    typed_aliases = {
        "sender.slot_id:u32": "sender.slot_id",
        "receiver.slot_id:u32": "receiver.slot_id",
    }
    label = typed_aliases.get(label, label)
    metadata_prefix = "compliance.metadata."
    if label.startswith(metadata_prefix):
        field = label.removeprefix(metadata_prefix)
        try:
            index = TRANSFER_METADATA_FIELDS[field]
        except KeyError as error:
            raise ValueError(
                f"unknown Transfer compliance metadata role {field!r}"
            ) from error
        expressions = _binding_expression(
            bindings, "compliance.metadata", 11
        )
        return [expressions[index]]
    name = TRANSFER_BINDING_ALIASES.get(label, label)
    binding = bindings.get(name)
    if binding is None:
        raise ValueError(
            f"missing Transfer semantic binding for trace label {label!r}"
        )
    expressions = binding.get("expressions")
    if not isinstance(expressions, list) or not expressions:
        raise ValueError(
            f"Transfer semantic binding {name!r} has no expressions"
        )
    return expressions


def _expression_support(expressions: list[dict]) -> set[int]:
    support: set[int] = set()
    for expression in expressions:
        terms = expression.get("terms")
        if not isinstance(terms, list):
            raise ValueError("Transfer semantic binding terms are malformed")
        for term in terms:
            wire = term.get("wire_id")
            if not isinstance(wire, int) or wire <= 0:
                raise ValueError(
                    "Transfer semantic binding uses an invalid witness wire"
                )
            support.add(wire)
    return support


def _semantic_binding_support(bindings: dict[str, dict]) -> set[int]:
    """Return every witness wire named by a compiler semantic binding."""

    return set().union(*(
        _expression_support(binding["expressions"])
        for binding in bindings.values()
    ))


EQUALITY_ROLE_FLEXIBLE_OPS = frozenset({
    "assert.eq",
    "assert.eq_if",
    "decaf.assert_equivalent",
    "decaf.assert_equivalent_if",
})

TRANSFER_CLAIMED_CIPHERTEXT_OPS = frozenset({
    "gadget.poseidon_encryption.detection",
    "gadget.poseidon_encryption.amount",
    "gadget.poseidon_encryption.address",
})


def _transfer_trace_role_support(
    spec: ExactTraceSpec, bindings: dict[str, dict]
) -> tuple[set[int], set[int], set[int]]:
    """Return required input/output and explicitly role-flexible support.

    Equality providers can expose either side as an input, output, or internal
    boundary depending on which expression is already materialized at that
    point in the compiler trace.  That ambiguity is reviewed only for the four
    equality operations above.  Every other semantic wire has a fixed role.
    """

    inputs: set[int] = set()
    outputs: set[int] = set()
    flexible: set[int] = set()
    ignored_keys = {"coordinate", "family", "label", "slot", "tier"}
    if spec.op == "decaf.shared_secret":
        # DeriveSharedSecretsSpend consumes the published EPK and constrains it
        # against the computed EPK.  Only the three shared-secret branches are
        # returned values.
        output_keys = {"issuer", "user", "selected"}
    elif spec.op in TRANSFER_CLAIMED_CIPHERTEXT_OPS:
        # Verify*Encryption consumes the claimed ciphertext and ends by
        # asserting equality with the computed ciphertext.
        output_keys = set()
    else:
        output_keys = {"out"}
    for raw in spec.args:
        key, separator, label = raw.partition("=")
        if not separator:
            raise ValueError(
                f"Transfer trace argument {raw!r} is not key=value"
            )
        if key in ignored_keys:
            continue
        expressions = _transfer_binding_expressions(bindings, label)
        if expressions is None:
            continue
        if spec.op == "assert.decaf_non_identity" and key == "point":
            expressions = expressions[:1]
        if spec.op in EQUALITY_ROLE_FLEXIBLE_OPS:
            target = flexible
        else:
            target = outputs if key in output_keys else inputs
        target.update(_expression_support(expressions))
    return inputs, outputs, flexible


def _validate_transfer_segment_roles(
    spec: ExactTraceSpec,
    segment: dict,
    bindings: dict[str, dict],
) -> None:
    expected_inputs, expected_outputs, flexible = (
        _transfer_trace_role_support(spec, bindings)
    )
    if spec.op in {"assert.decaf_non_identity", "assert.ne"}:
        # The reviewed inverse-row relation is `value * inverse = 1`.
        # gnark exposes the inverse witness as an input boundary even though
        # it is not a protocol semantic binding.
        flexible.update(
            set(_seating(segment)) - expected_inputs - {0}
        )
    _validate_exact_segment_roles(
        "Transfer",
        spec.label,
        segment,
        expected_inputs,
        expected_outputs,
        flexible,
        _semantic_binding_support(bindings),
    )


def _validate_exact_segment_roles(
    circuit: str,
    label: str,
    segment: dict,
    expected_inputs: set[int],
    expected_outputs: set[int],
    flexible: set[int],
    semantic_binding_wires: set[int],
) -> None:
    """Require every deployed boundary wire to have a reviewed source role."""

    roles = segment.get("wire_roles")
    if not isinstance(roles, dict) or set(roles) != {
        "input", "output", "internal"
    }:
        raise ValueError(f"{circuit} {label} wire roles are malformed")
    normalized: dict[str, list[int]] = {}
    for role in ("input", "output", "internal"):
        wires = roles.get(role)
        if (
            not isinstance(wires, list)
            or any(not isinstance(wire, int) or wire <= 0 for wire in wires)
            or len(wires) != len(set(wires))
        ):
            raise ValueError(
                f"{circuit} {label} {role} wire roles are malformed"
            )
        normalized[role] = wires
    role_sets = {role: set(wires) for role, wires in normalized.items()}
    if (
        role_sets["input"] & role_sets["output"]
        or role_sets["input"] & role_sets["internal"]
        or role_sets["output"] & role_sets["internal"]
    ):
        raise ValueError(f"{circuit} {label} wire roles overlap")

    seating_wires = set(_seating(segment))
    seating_wires.discard(0)
    role_wires = set().union(*role_sets.values())
    if seating_wires != role_wires:
        raise ValueError(
            f"{circuit} {label} role/seating partition drifted"
        )
    semantic_wires = expected_inputs | expected_outputs | flexible
    if not semantic_wires <= role_wires:
        raise ValueError(
            f"{circuit} {label} semantic role support drifted"
        )
    # gnark's allocation-order classification is not semantic direction:
    # asserted claimed values may appear as outputs, while precomputed values
    # may be internal. The authenticated trace labels own direction. Here we
    # require its complete semantic support and reject any unrelated
    # compiler-labelled semantic wire; exact-template auxiliaries remain
    # governed by the certified normalized relation.
    unexplained_semantic = (
        role_wires & semantic_binding_wires
    ) - semantic_wires
    if unexplained_semantic:
        raise ValueError(
            f"{circuit} {label} has unreviewed semantic role wires "
            f"{sorted(unexplained_semantic)}"
        )


def _validate_transfer_binding_spine(bindings: dict[str, dict]) -> None:
    for name, count in TRANSFER_ACTION_BINDING_ARITIES.items():
        _binding_expression(bindings, name, count)

    shared_asset = _binding_expression(bindings, "shared.asset_id", 1)
    required_asset = _binding_expression(
        bindings, "spend0.note.asset_id", 1
    )
    if shared_asset != required_asset:
        raise ValueError(
            "Transfer shared asset ID is not the required-note asset ID"
        )

    aliases = {
        "receiver.amount": "output0.note.amount",
        "receiver.div_gen_fq": "output0.recipient.div_gen_fq",
        "receiver.transmission_fq":
            "output0.recipient.transmission_fq",
        "receiver.slot_id": "output0.recipient.slot_id",
        "receiver.slot_derivation":
            "output0.recipient.slot_derivation",
    }
    for derived, source in aliases.items():
        if _binding_expression(bindings, derived, 1) != _binding_expression(
            bindings, source, 1
        ):
            raise ValueError(
                f"Transfer semantic alias {derived!r} drifted from {source!r}"
            )

    expected_inputs = [
        *_binding_expression(bindings, "spend0.note.amount", 1),
        *_binding_expression(bindings, "spend1.note.amount", 1),
    ]
    if _binding_expression(bindings, "balance.inputs", 2) != expected_inputs:
        raise ValueError("Transfer balance input order drifted")
    expected_outputs = [
        *_binding_expression(bindings, "output0.note.amount", 1),
        *_binding_expression(bindings, "output1.note.amount", 1),
    ]
    if _binding_expression(bindings, "balance.outputs", 2) != expected_outputs:
        raise ValueError("Transfer balance output order drifted")

    statement = _binding_expression(bindings, "statement.fields", 41)
    individual = [
        _binding_expression(bindings, f"statement.field.{index:03d}", 1)[0]
        for index in range(41)
    ]
    if statement != individual:
        raise ValueError(
            "Transfer statement.fields is not the exact ordered 41-field spine"
        )


def _validate_transfer_selector_rows(
    plan: TransferRefinementPlan,
) -> TransferSelectorRows:
    """Pin the two independent prerequisites of the exact registry gap."""

    is_regulated_wire = _single_binding_wire(
        plan.bindings, "is_regulated"
    )
    asset_id_wire = _single_binding_wire(
        plan.bindings, "shared.asset_id"
    )
    boolean = plan.segments["is_regulated_boolean"]
    _require_seats(
        boolean, {1: is_regulated_wire}, "Transfer is_regulated Boolean"
    )
    if boolean.get("wire_roles") != {
        "input": [is_regulated_wire],
        "output": [],
        "internal": [],
    }:
        raise ValueError("Transfer is_regulated Boolean wire roles drifted")

    nonzero = plan.segments["asset_id_nonzero"]
    seating = _seating(nonzero)
    locals_for_asset = [
        local for local in (1, 2) if seating[local] == asset_id_wire
    ]
    if len(locals_for_asset) != 1:
        raise ValueError("Transfer asset ID nonzero seating drifted")
    asset_id_local = locals_for_asset[0]
    inverse_local = 3 - asset_id_local
    _validate_inverse_row_roles(
        nonzero,
        asset_id_wire,
        seating[inverse_local],
        "Transfer asset ID nonzero",
    )
    return TransferSelectorRows(
        is_regulated_wire=is_regulated_wire,
        asset_id_wire=asset_id_wire,
        asset_id_local=asset_id_local,
    )


TRANSFER_COMPLIANCE_PATH_LOCALS = (
    (38, 48, 51),
    *tuple(
        (
            46 + 363 * level,
            48 + 363 * level,
            51 + 363 * level,
        )
        for level in range(1, 16)
    ),
)

TRANSFER_ASSET_PATH_LOCALS = (
    (38, 46, 49),
    *tuple(
        (
            44 + 363 * level,
            46 + 363 * level,
            49 + 363 * level,
        )
        for level in range(1, 16)
    ),
)

# The v4 statement provider absorbs 41 fields in six-field blocks after its
# seven-field first block.  Two-field entries are compiler LCs (compressed
# points); singleton entries are direct wires.  This is provider geometry, not
# a deployed segment index, and is authenticated against the current provider
# digest before it is used.
TRANSFER_STATEMENT_V4_FIELD_LOCALS = (
    (1,),
    (7,),
    (13,),
    (19, 20),
    (26,),
    (32, 33),
    (39,),
    (485, 486),
    (492,),
    (498,),
    (504,),
    (510,),
    (516,),
    (962,),
    (968, 969),
    (975,),
    (981,),
    (987, 988),
    (994,),
    (1440,),
    (1446,),
    (1452,),
    (1458, 1459),
    (1465,),
    (1471,),
    (1917, 1918),
    (1924,),
    (1930,),
    (1936,),
    (1942,),
    (1948,),
    (2394,),
    (2400,),
    (2406,),
    (2412,),
    (2418,),
    (2424,),
    (2870,),
    (2876,),
    (2882,),
    (2888,),
)


def _expression_term_wires_exact(
    expression: dict, label: str
) -> tuple[int, ...]:
    """Return an authenticated compiler LC's ordered witness support."""

    if expression.get("constant") != "0":
        raise ValueError(f"{label} unexpectedly has a constant term")
    terms = expression.get("terms")
    if (
        not isinstance(terms, list)
        or not terms
        or any(
            not isinstance(term.get("wire_id"), int)
            or term["wire_id"] <= 0
            or not isinstance(term.get("coefficient"), str)
            for term in terms
        )
    ):
        raise ValueError(f"{label} compiler LC is malformed")
    wires = tuple(term["wire_id"] for term in terms)
    if len(wires) != len(set(wires)):
        raise ValueError(f"{label} compiler LC repeats a witness wire")
    return wires


def _transfer_expression_seats(
    bindings: dict[str, dict],
    name: str,
    locals_: tuple[int, ...],
) -> tuple[tuple[int, int], ...]:
    """Pair one compiler LC with the reviewed provider-local geometry."""

    expression = _binding_expression(bindings, name, 1)[0]
    wires = _expression_term_wires_exact(expression, name)
    if len(wires) != len(locals_):
        raise ValueError(
            f"Transfer {name} provider-local arity drifted: "
            f"{len(wires)} != {len(locals_)}"
        )
    return tuple(zip(locals_, wires, strict=True))


def _transfer_current_protocol_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[dict[int, int], str]]:
    """Derive high-risk local-to-action joins used by refinement.

    Provider identity and semantic wire support are insufficient on their own:
    a permutation of two source values inside the certified seating still has
    the same exact local relation.  Pin the protocol-facing argument order for
    the current threshold, Poseidon7 leaves/paths, and v4 statement provider.
    """

    bindings = plan.bindings
    expected: dict[str, tuple[dict[int, int], str]] = {
        "threshold_flag": ({
            129: _single_binding_wire(bindings, "receiver.amount"),
            258: _single_binding_wire(bindings, "asset.leaf.threshold"),
            896: _single_binding_wire(bindings, "is_regulated"),
            897: _single_binding_wire(bindings, "is_flagged"),
        }, "Transfer threshold protocol arguments"),
    }

    compliance_specs = (
        (
            "sender_compliance_leaf",
            "sender.div_gen_fq",
            "sender.transmission_fq",
            "sender.clue_key",
            "sender.slot_id",
            "sender.slot_derivation",
            "sender.d",
            "sender.leaf_commitment",
        ),
        (
            "receiver_compliance_leaf",
            "output0.recipient.div_gen_fq",
            "output0.recipient.transmission_fq",
            "output0.note.clue_key",
            "output0.recipient.slot_id",
            "output0.recipient.slot_derivation",
            "output0.recipient.d",
            "output0.recipient.leaf_commitment",
        ),
    )
    for (
        label,
        div_gen,
        transmission,
        clue_key,
        slot_id,
        slot_derivation,
        d,
        output,
    ) in compliance_specs:
        seats = (
            *_transfer_expression_seats(
                bindings, div_gen, (1, 2)
            ),
            *_transfer_expression_seats(
                bindings, transmission, (8, 9)
            ),
            (15, _single_binding_wire(bindings, clue_key)),
            (21, _single_binding_wire(bindings, "shared.asset_id")),
            (27, _single_binding_wire(bindings, slot_id)),
            (33, _single_binding_wire(bindings, slot_derivation)),
            (39, _single_binding_wire(bindings, d)),
            *_transfer_expression_seats(
                bindings,
                output,
                tuple(444 + 5 * index for index in range(8)),
            ),
        )
        expected[label] = (
            dict(seats),
            f"Transfer {label} protocol arguments",
        )

    path_specs = (
        (
            "sender_compliance_path",
            "sender.leaf_commitment",
            "sender.path",
            "sender.position",
            "sender.compliance_root",
        ),
        (
            "receiver_compliance_path",
            "output0.recipient.leaf_commitment",
            "output0.recipient.path",
            "output0.recipient.position",
            "output0.recipient.compliance_root",
        ),
    )
    path_locals = tuple(
        local
        for level in TRANSFER_COMPLIANCE_PATH_LOCALS
        for local in level
    )
    for label, leaf, path, position, output in path_specs:
        seats = (
            *_transfer_expression_seats(
                bindings, leaf, tuple(range(39, 47))
            ),
            *zip(
                path_locals,
                _binding_wire_vector(bindings, path, 48),
                strict=True,
            ),
            (33, _single_binding_wire(bindings, position)),
            *_transfer_expression_seats(
                bindings,
                output,
                tuple(5829 + 5 * index for index in range(5)),
            ),
        )
        expected[label] = (
            dict(seats),
            f"Transfer {label} protocol arguments",
        )

    statement_seats: list[tuple[int, int]] = []
    for index, locals_ in enumerate(TRANSFER_STATEMENT_V4_FIELD_LOCALS):
        expression = _binding_expression(
            bindings, f"statement.field.{index:03d}", 1
        )[0]
        expected_coefficients = (
            ("1",)
            if len(locals_) == 1
            else (MODULUS_MINUS_ONE, "1")
        )
        if (
            expression.get("constant") != "0"
            or tuple(
                term.get("coefficient")
                for term in expression.get("terms", [])
            )
            != expected_coefficients
        ):
            raise ValueError(
                "Transfer statement field "
                f"{index} compiler LC drifted"
            )
        statement_seats.extend(
            _transfer_expression_seats(
                bindings, f"statement.field.{index:03d}", locals_
            )
        )
    statement_seats.extend(zip(
        tuple(3293 + 5 * index for index in range(8)),
        _binding_lc_wires(
            bindings,
            "statement.hash",
            STATEMENT_STATE_COEFFICIENTS,
        ),
        strict=True,
    ))
    expected["statement_hash"] = (
        dict(statement_seats),
        "Transfer statement v4 protocol arguments",
    )

    assert_seats = (
        *_transfer_expression_seats(
            bindings, "statement.hash", tuple(range(1, 9))
        ),
        (9, _single_binding_wire(bindings, "claimed.statement_hash")),
    )
    expected["statement_assert"] = (
        dict(assert_seats),
        "Transfer statement assertion protocol arguments",
    )
    return expected


def _transfer_unit_expression_seats(
    bindings: dict[str, dict],
    name: str,
    *,
    expression_index: int,
    expression_count: int,
    constant: str,
    locals_: tuple[int, ...],
) -> tuple[tuple[int, int], ...]:
    """Authenticate and seat one unit-coefficient compiler expression."""

    expression = _binding_expression(
        bindings, name, expression_count
    )[expression_index]
    terms = expression.get("terms")
    if (
        expression.get("constant") != constant
        or not isinstance(terms, list)
        or len(terms) != len(locals_)
        or any(
            term.get("coefficient") != "1"
            or not isinstance(term.get("wire_id"), int)
            for term in terms
        )
    ):
        raise ValueError(
            f"Transfer {name}[{expression_index}] unit LC drifted"
        )
    return tuple(
        (local, term["wire_id"])
        for local, term in zip(locals_, terms, strict=True)
    )


def _transfer_transcript_protocol_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[dict[int, int], str]]:
    """Authenticate transcript-provider argument and identity-point seats."""

    bindings = plan.bindings
    flag_wire = _single_binding_wire(bindings, "is_flagged")
    shared_specs = (
        (
            "sender_core_shared_secret",
            "compliance.sender_r_core",
            "compliance.sender_core.epk",
            "sender.ack",
            253,
            1809,
            1807,
            1,
            (1811, 1812),
            (1813, 1814),
            4573,
            4574,
        ),
        (
            "sender_ext_shared_secret",
            "compliance.sender_r_ext",
            "compliance.sender_ext.epk",
            "sender.ack",
            252,
            1808,
            1806,
            7332,
            (1810, 1811),
            (1812, 1813),
            4572,
            4573,
        ),
        (
            "output_core_shared_secret",
            "compliance.output_r_core",
            "compliance.output_core.epk",
            "receiver.ack",
            252,
            1808,
            1806,
            7332,
            (1810, 1811),
            (1812, 1813),
            4572,
            4573,
        ),
        (
            "output_ext_shared_secret",
            "compliance.output_r_ext",
            "compliance.output_ext.epk",
            "receiver.ack",
            252,
            1808,
            1806,
            7332,
            (1810, 1811),
            (1812, 1813),
            4572,
            4573,
        ),
    )
    expected: dict[str, tuple[dict[int, int], str]] = {}
    for tier in ("sender_core", "sender_ext", "output_core", "output_ext"):
        point = _binding_wire_vector(
            bindings, f"compliance.{tier}.epk", 2
        )
        expected[f"{tier}_epk_compress"] = (
            {
                1: point[0],
                3: point[1],
                **dict(zip(
                    (365, 705),
                    _binding_lc_wires(
                        bindings,
                        f"compliance.{tier}.epk_fq",
                        (MODULUS_MINUS_ONE, "1"),
                    ),
                    strict=True,
                )),
            },
            f"Transfer {tier} EPK compression arguments",
        )

    for index in range(5):
        expected[f"salt{index}"] = (
            dict((
                (
                    1,
                    _single_binding_wire(
                        bindings, "compliance.transfer_nonce_root"
                    ),
                ),
                *zip(
                    (256, 261, 266),
                    _binding_lc_wires(
                        bindings,
                        f"salt{index}",
                        POSEIDON2_OUTPUT_COEFFICIENTS,
                    ),
                    strict=True,
                ),
            )),
            f"Transfer salt{index} nonce and complete Poseidon output",
        )

    for (
        label,
        esk_binding,
        epk_binding,
        ack_binding,
        esk_local,
        epk_x_local,
        epk_y_local,
        flag_local,
        ack_x_locals,
        ack_y_locals,
        dk_x_local,
        dk_y_local,
    ) in shared_specs:
        epk = _binding_wire_vector(bindings, epk_binding, 2)
        seats = dict((
            (esk_local, _single_binding_wire(bindings, esk_binding)),
            (epk_x_local, epk[0]),
            (epk_y_local, epk[1]),
            (flag_local, flag_wire),
            *_transfer_unit_expression_seats(
                bindings,
                ack_binding,
                expression_index=0,
                expression_count=2,
                constant="0",
                locals_=ack_x_locals,
            ),
            *_transfer_unit_expression_seats(
                bindings,
                ack_binding,
                expression_index=1,
                expression_count=2,
                constant="0",
                locals_=ack_y_locals,
            ),
            *_transfer_unit_expression_seats(
                bindings,
                "effective.dk_pub",
                expression_index=0,
                expression_count=2,
                constant=(
                    "6231913487103609750640950017270618557496021698282624654949751592866266721188"
                ),
                locals_=(dk_x_local,),
            ),
            *_transfer_unit_expression_seats(
                bindings,
                "effective.dk_pub",
                expression_index=1,
                expression_count=2,
                constant=(
                    "2174545944513429084000285632212505083184015391631831920218451010714927555391"
                ),
                locals_=(dk_y_local,),
            ),
        ))
        expected[label] = (
            seats,
            f"Transfer {label} transcript arguments and complete ACK/DK joins",
        )

    for tier in (
        "sender_core",
        "sender_ext",
        "output_core",
        "output_ext",
    ):
        if tier == "sender_core":
            issuer_locals = ((7323, 7331), (7324, 7332))
            user_locals = ((4563, 4571), (4564, 4572))
            selected_locals = (
                (4563, 4571, 7333),
                (4564, 4572, 7334),
            )
        else:
            issuer_locals = ((7322, 7330), (7323, 7331))
            user_locals = ((4562, 4570), (4563, 4571))
            selected_locals = (
                (4562, 4570, 7333),
                (4563, 4571, 7334),
            )
        derived_seats = tuple(
            seat
            for role, role_locals in (
                ("issuer", issuer_locals),
                ("user", user_locals),
                ("selected", selected_locals),
            )
            for coordinate, locals_ in enumerate(role_locals)
            for seat in _transfer_unit_expression_seats(
                bindings,
                f"{tier}.shared.{role}",
                expression_index=coordinate,
                expression_count=2,
                constant="0",
                locals_=locals_,
            )
        )
        label = f"{tier}_shared_secret"
        base_seats, description = expected[label]
        expected[label] = (
            {**base_seats, **dict(derived_seats)},
            description,
        )

    detection_seats = (
        *_transfer_unit_expression_seats(
            bindings,
            "sender_core.shared.issuer",
            expression_index=0,
            expression_count=2,
            constant="0",
            locals_=(67, 68),
        ),
        *_transfer_unit_expression_seats(
            bindings,
            "sender_core.shared.issuer",
            expression_index=1,
            expression_count=2,
            constant="0",
            locals_=(70, 71),
        ),
        (33, _single_binding_wire(bindings, "sender.slot_id")),
        (
            66,
            _single_binding_wire(
                bindings, "output0.recipient.slot_id"
            ),
        ),
        (2106, _single_binding_wire(bindings, "shared.asset_id")),
        *zip(
            (2108, 2109, 2110),
            _binding_lc_wires(
                bindings,
                "salt0",
                POSEIDON2_OUTPUT_COEFFICIENTS,
            ),
            strict=True,
        ),
        (2112, flag_wire),
        *zip(
            (2107, 2111, 2113, 2114),
            _binding_wire_vector(
                bindings, "compliance.detection_ciphertext", 4
            ),
            strict=True,
        ),
        *zip(
            (779, 780),
            _binding_lc_wires(
                bindings,
                "compliance.sender_core.epk_fq",
                (MODULUS_MINUS_ONE, "1"),
            ),
            strict=True,
        ),
    )
    expected["detection_encryption"] = (
        dict(detection_seats),
        "Transfer detection transcript arguments",
    )

    encryption_specs = (
        (
            "sender_amount_encryption",
            "sender_core",
            "compliance.sender_core.c2",
            "compliance.sender_core.ciphertext",
        ),
        (
            "output_amount_encryption",
            "output_core",
            "compliance.output_core.c2",
            "compliance.output_core.ciphertext",
        ),
    )
    for label, tier, c2, ciphertext in encryption_specs:
        expected[label] = (
            dict((
                *_transfer_unit_expression_seats(
                    bindings,
                    f"{tier}.shared.selected",
                    expression_index=0,
                    expression_count=2,
                    constant="0",
                    locals_=(1, 2, 3),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    f"{tier}.shared.selected",
                    expression_index=1,
                    expression_count=2,
                    constant="0",
                    locals_=(5, 6, 7),
                ),
                (710, _single_binding_wire(bindings, c2)),
                (
                    976,
                    _single_binding_wire(bindings, "output0.note.amount"),
                ),
                (977, _single_binding_wire(bindings, ciphertext)),
            )),
            f"Transfer {label} complete shared point and action arguments",
        )

    address_specs = (
        (
            "sender_address_encryption",
            "sender_ext",
            "compliance.sender_ext.c2",
            "output0.recipient.div_gen_fq",
            "output0.recipient.transmission_fq",
            "compliance.sender_ext.ciphertext",
        ),
        (
            "output_address_encryption",
            "output_ext",
            "compliance.output_ext.c2",
            "sender.div_gen_fq",
            "sender.transmission_fq",
            "compliance.output_ext.ciphertext",
        ),
    )
    for (
        label,
        tier,
        c2,
        div_gen,
        transmission,
        ciphertext,
    ) in address_specs:
        expected[label] = (
            dict((
                *_transfer_unit_expression_seats(
                    bindings,
                    f"{tier}.shared.selected",
                    expression_index=0,
                    expression_count=2,
                    constant="0",
                    locals_=(1, 2, 3),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    f"{tier}.shared.selected",
                    expression_index=1,
                    expression_count=2,
                    constant="0",
                    locals_=(5, 6, 7),
                ),
                *_transfer_expression_seats(
                    bindings, div_gen, (963, 964)
                ),
                *_transfer_expression_seats(
                    bindings, transmission, (1304, 1305)
                ),
                (1392, _single_binding_wire(bindings, c2)),
                *zip(
                    (1658, 1924, 2190),
                    _binding_wire_vector(bindings, ciphertext, 3),
                    strict=True,
                ),
            )),
            f"Transfer {label} complete shared point and action arguments",
        )

    metadata_wires = _binding_wire_vector(
        bindings, "compliance.metadata", 11
    )
    direct_metadata = (
        (
            "metadata_sender_subject_derivation",
            0,
            "sender.slot_derivation",
        ),
        (
            "metadata_output_subject_derivation",
            1,
            "output0.recipient.slot_derivation",
        ),
        ("metadata_target_timestamp", 6, "target_timestamp"),
    )
    for label, index, rhs in direct_metadata:
        expected[label] = (
            {
                1: metadata_wires[index],
                2: _single_binding_wire(bindings, rhs),
            },
            f"Transfer {label} metadata equality",
        )

    for label, index, rhs in (
        ("metadata_ring_id_hash", 2, "effective.ring_id_hash"),
        ("metadata_policy_id_hash", 3, "effective.policy_id_hash"),
        ("metadata_resource_hash", 4, "effective.resource_hash"),
        (
            "metadata_permission_hash",
            5,
            "effective.permission_hash",
        ),
    ):
        expected[label] = (
            dict((
                (1, metadata_wires[index]),
                *_transfer_unit_expression_seats(
                    bindings,
                    rhs,
                    expression_index=0,
                    expression_count=1,
                    constant=(
                        "146917404083759493085774782844141783124558702674359650395366636584294839859"
                    ),
                    locals_=(2,),
                ),
            )),
            f"Transfer {label} metadata equality",
        )

    for label, index, salt_index in (
        ("metadata_sender_core_salt", 7, 1),
        ("metadata_sender_ext_salt", 8, 2),
        ("metadata_output_core_salt", 9, 3),
        ("metadata_output_ext_salt", 10, 4),
    ):
        expected[label] = (
            dict((
                (1, metadata_wires[index]),
                *zip(
                    (2, 3, 4),
                    _binding_lc_wires(
                        bindings,
                        f"salt{salt_index}",
                        POSEIDON2_OUTPUT_COEFFICIENTS,
                    ),
                    strict=True,
                ),
            )),
            f"Transfer {label} metadata equality",
        )
    return expected


def _transfer_transcript_direct_protocol_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[dict[int, int], str]]:
    """Expose bounded arguments needed by the stable transcript helpers.

    Complete transcript seating is validated separately and consumed by the
    generated transcript seam. Only the small provider arguments needed to
    terminate its proofs are exposed here; the large point joins stay in the
    generated module and never cross into handwritten composition.
    """

    full = _transfer_transcript_protocol_seats(plan)
    direct_locals = {
        "sender_core_epk_compress": (1, 3, 365, 705),
        "sender_ext_epk_compress": (1, 3, 365, 705),
        "output_core_epk_compress": (1, 3, 365, 705),
        "output_ext_epk_compress": (1, 3, 365, 705),
        "salt0": (1, 256, 261, 266),
        "salt1": (1, 256, 261, 266),
        "salt2": (1, 256, 261, 266),
        "salt3": (1, 256, 261, 266),
        "salt4": (1, 256, 261, 266),
        "sender_core_shared_secret": (
            1, 253, 1807, 1809, 4573, 4574,
        ),
        "sender_ext_shared_secret": (
            252, 1806, 1808, 4572, 4573, 7332,
        ),
        "output_core_shared_secret": (
            252, 1806, 1808, 4572, 4573, 7332,
        ),
        "output_ext_shared_secret": (
            252, 1806, 1808, 4572, 4573, 7332,
        ),
        "detection_encryption": (
            33,
            66,
            779,
            780,
            2106,
            2107,
            2108,
            2109,
            2110,
            2111,
            2112,
            2113,
            2114,
        ),
        "sender_amount_encryption": (710, 976, 977),
        "output_amount_encryption": (710, 976, 977),
        "sender_address_encryption": (
            963, 964, 1304, 1305, 1392, 1658, 1924, 2190,
        ),
        "output_address_encryption": (
            963, 964, 1304, 1305, 1392, 1658, 1924, 2190,
        ),
        "metadata_sender_subject_derivation": (1, 2),
        "metadata_output_subject_derivation": (1, 2),
        "metadata_ring_id_hash": (1, 2),
        "metadata_policy_id_hash": (1, 2),
        "metadata_resource_hash": (1, 2),
        "metadata_permission_hash": (1, 2),
        "metadata_target_timestamp": (1, 2),
        "metadata_sender_core_salt": (1, 2, 3, 4),
        "metadata_sender_ext_salt": (1, 2, 3, 4),
        "metadata_output_core_salt": (1, 2, 3, 4),
        "metadata_output_ext_salt": (1, 2, 3, 4),
    }
    return {
        label: (
            {local: seats[local] for local in direct_locals[label]},
            f"{description} (direct arguments)",
        )
        for label, (seats, description) in full.items()
        if label in direct_locals
    }


def _transfer_action_protocol_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[dict[int, int], str]]:
    """Authenticate non-core action facts consumed by the stable translator."""

    bindings = plan.bindings

    def single(name: str) -> int:
        return _single_binding_wire(bindings, name)

    def expression(
        name: str, locals_: tuple[int, ...]
    ) -> tuple[tuple[int, int], ...]:
        return _transfer_expression_seats(bindings, name, locals_)

    expected: dict[str, tuple[dict[int, int], str]] = {}

    selection_points = (
        (
            "effective_ring_pk",
            "asset.leaf.ring_pk",
            "effective.ring_pk",
            (
                "3826970704928709070049425479926179513359061356766213604174343785803606509560",
                "4435054869909997083204234178514060517908537592280323551921416368800279852461",
            ),
        ),
        (
            "effective_dk_pub",
            "asset.leaf.dk_pub",
            "effective.dk_pub",
            (
                "6231913487103609750640950017270618557496021698282624654949751592866266721188",
                "2174545944513429084000285632212505083184015391631831920218451010714927555391",
            ),
        ),
    )
    for label, when_true, selected, when_false in selection_points:
        expected[label] = (
            dict((
                (1, single("is_regulated")),
                *_transfer_unit_expression_seats(
                    bindings,
                    when_true,
                    expression_index=0,
                    expression_count=2,
                    constant="0",
                    locals_=(2,),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    selected,
                    expression_index=0,
                    expression_count=2,
                    constant=when_false[0],
                    locals_=(3,),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    when_true,
                    expression_index=1,
                    expression_count=2,
                    constant="0",
                    locals_=(4,),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    selected,
                    expression_index=1,
                    expression_count=2,
                    constant=when_false[1],
                    locals_=(5,),
                ),
            )),
            f"Transfer {label} complete selection arguments and deltas",
        )

    for label, when_true, selected in (
        (
            "effective_ring_id_hash",
            "asset.leaf.ring_id_hash",
            "effective.ring_id_hash",
        ),
        (
            "effective_policy_id_hash",
            "asset.leaf.policy_id_hash",
            "effective.policy_id_hash",
        ),
        (
            "effective_resource_hash",
            "asset.leaf.resource_hash",
            "effective.resource_hash",
        ),
        (
            "effective_permission_hash",
            "asset.leaf.permission_hash",
            "effective.permission_hash",
        ),
    ):
        expected[label] = (
            dict((
                (1, single("is_regulated")),
                *_transfer_unit_expression_seats(
                    bindings,
                    when_true,
                    expression_index=0,
                    expression_count=1,
                    constant="0",
                    locals_=(2,),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    selected,
                    expression_index=0,
                    expression_count=1,
                    constant=(
                        "146917404083759493085774782844141783124558702674359650395366636584294839859"
                    ),
                    locals_=(3,),
                ),
            )),
            f"Transfer {label} complete selection arguments and delta",
        )

    for label, point, compressed in (
        (
            "asset_dk_compress",
            "asset.leaf.dk_pub",
            "asset.leaf.dk_pub_fq",
        ),
        (
            "asset_ring_pk_compress",
            "asset.leaf.ring_pk",
            "asset.leaf.ring_pk_fq",
        ),
    ):
        point_wires = _binding_wire_vector(bindings, point, 2)
        expected[label] = (
            dict((
                (1, point_wires[0]),
                (3, point_wires[1]),
                *expression(compressed, (365, 705)),
            )),
            f"Transfer {label} asset compression arguments",
        )

    expected["asset_params_hash"] = (
        dict((
            *expression("asset.leaf.dk_pub_fq", (1, 2)),
            (8, single("asset.leaf.threshold")),
            (14, single("asset.leaf.slot_count")),
            (20, single("asset.leaf.channels_hash")),
            *expression(
                "asset.leaf.params_hash",
                (335, 340, 345, 350, 355),
            ),
        )),
        "Transfer asset parameter hash arguments",
    )
    expected["asset_ring_hash"] = (
        dict((
            *expression("asset.leaf.ring_pk_fq", (1, 2)),
            (8, single("asset.leaf.ring_id_hash")),
            (14, single("asset.leaf.policy_id_hash")),
            (20, single("asset.leaf.permission_hash")),
            (26, single("asset.leaf.resource_hash")),
            *expression(
                "asset.leaf.ring_hash",
                (371, 376, 381, 386, 391, 396),
            ),
        )),
        "Transfer asset ring hash arguments",
    )
    expected["asset_leaf_hash"] = (
        dict((
            (1, single("asset.leaf.value")),
            (7, single("asset.leaf.next_index")),
            (13, single("asset.leaf.next_value")),
            *expression(
                "asset.leaf.params_hash", (19, 20, 21, 22, 23)
            ),
            *expression(
                "asset.leaf.ring_hash",
                (29, 30, 31, 32, 33, 34),
            ),
            *expression(
                "asset.leaf.commitment",
                (379, 384, 389, 394, 399, 404),
            ),
        )),
        "Transfer asset leaf hash arguments",
    )

    asset_path_locals = tuple(
        local
        for level in TRANSFER_ASSET_PATH_LOCALS
        for local in level
    )
    expected["asset_path"] = (
        dict((
            (33, single("asset.position")),
            *expression(
                "asset.leaf.commitment", tuple(range(39, 45))
            ),
            *zip(
                asset_path_locals,
                _binding_wire_vector(bindings, "asset.path", 48),
                strict=True,
            ),
            *expression(
                "asset.root.computed",
                tuple(5827 + 5 * index for index in range(5)),
            ),
        )),
        "Transfer asset membership path arguments",
    )
    expected["asset_root_assert"] = (
        dict((
            *expression("asset.root.computed", tuple(range(1, 6))),
            (6, single("asset_anchor")),
        )),
        "Transfer asset root assertion arguments",
    )
    expected["asset_gap"] = (
        dict((
            (254, single("asset.leaf.value")),
            (594, single("shared.asset_id")),
            (934, single("asset.leaf.next_value")),
            *expression("asset.gap_valid", (3043, 3045)),
            (3044, single("is_regulated")),
        )),
        "Transfer asset registry gap arguments",
    )
    expected["asset_gap_accept"] = (
        dict(expression("asset.gap_valid", (1, 2))),
        "Transfer asset registry gap acceptance",
    )

    for prefix, assert_label, ack_label in (
        ("sender", "sender_compliance_assert", "sender_ack"),
        (
            "output0.recipient",
            "receiver_compliance_assert",
            "receiver_ack",
        ),
    ):
        expected[assert_label] = (
            dict((
                (1, single("is_regulated")),
                (2, single("compliance_anchor")),
                *expression(
                    f"{prefix}.compliance_root",
                    (3, 4, 5, 6, 7),
                ),
            )),
            f"Transfer {assert_label} conditional anchor arguments",
        )
        expected[ack_label] = (
            dict((
                (252, single(f"{prefix}.d")),
                *_transfer_unit_expression_seats(
                    bindings,
                    "effective.ring_pk",
                    expression_index=0,
                    expression_count=2,
                    constant=(
                        "3826970704928709070049425479926179513359061356766213604174343785803606509560"
                    ),
                    locals_=(253,),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    "effective.ring_pk",
                    expression_index=1,
                    expression_count=2,
                    constant=(
                        "4435054869909997083204234178514060517908537592280323551921416368800279852461"
                    ),
                    locals_=(254,),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    f"{'sender' if prefix == 'sender' else 'receiver'}.ack",
                    expression_index=0,
                    expression_count=2,
                    constant="0",
                    locals_=(3003, 3011),
                ),
                *_transfer_unit_expression_seats(
                    bindings,
                    f"{'sender' if prefix == 'sender' else 'receiver'}.ack",
                    expression_index=1,
                    expression_count=2,
                    constant="0",
                    locals_=(3004, 3012),
                ),
            )),
            f"Transfer {ack_label} scalar, effective ring key, and complete output",
        )

    expected["net_balance"] = (
        {
            1: single("shared.asset_id"),
            732: _binding_wire_vector(bindings, "balance.inputs", 2)[0],
            861: _binding_wire_vector(bindings, "balance.inputs", 2)[1],
            990: _binding_wire_vector(bindings, "balance.outputs", 2)[0],
            1119: _binding_wire_vector(bindings, "balance.outputs", 2)[1],
            4467: single("action.balance_blinding"),
            6026: _binding_wire_vector(
                bindings, "balance_commitment.computed", 2
            )[0],
            6027: _binding_wire_vector(
                bindings, "balance_commitment.computed", 2
            )[1],
        },
        "Transfer net-balance protocol arguments and output",
    )
    expected["balance_compress"] = (
        dict((
            (
                1,
                _binding_wire_vector(
                    bindings, "balance_commitment.computed", 2
                )[0],
            ),
            (
                3,
                _binding_wire_vector(
                    bindings, "balance_commitment.computed", 2
                )[1],
            ),
            *expression("balance_commitment.fq", (365, 705)),
        )),
        "Transfer balance commitment compression arguments",
    )
    return expected


def _transfer_action_direct_protocol_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[dict[int, int], str]]:
    """Expose bounded action arguments while keeping curve outputs composite."""

    full = _transfer_action_protocol_seats(plan)
    direct_locals = {
        "sender_ack": (252, 253, 254),
        "receiver_ack": (252, 253, 254),
    }
    return {
        label: (
            (
                {local: seats[local] for local in direct_locals[label]}
                if label in direct_locals
                else seats
            ),
            (
                description + " (direct arguments)"
                if label in direct_locals
                else description
            ),
        )
        for label, (seats, description) in full.items()
    }


def _transfer_core_provider_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[tuple[int, int], ...]]:
    """Derive every compiler-local seat used by the core Transfer adapter."""

    bindings = plan.bindings
    compress_coefficients = (MODULUS_MINUS_ONE, "1")

    def single(name: str) -> int:
        return _single_binding_wire(bindings, name)

    def vector(name: str, count: int) -> tuple[int, ...]:
        return _binding_wire_vector(bindings, name, count)

    def lc(name: str, coefficients: tuple[str, ...]) -> tuple[int, ...]:
        return _binding_lc_wires(bindings, name, coefficients)

    seats: dict[str, tuple[tuple[int, int], ...]] = {}

    sender_point = vector("sender.div_gen", 2)
    seats["sender_div_gen_compress"] = (
        (1, sender_point[0]),
        (3, sender_point[1]),
        *zip(
            (365, 705),
            lc("sender.div_gen_fq", compress_coefficients),
            strict=True,
        ),
    )
    auth_ak = vector("auth.ak", 2)
    seats["sender_dtk"] = (
        (1, auth_ak[0]),
        (3, auth_ak[1]),
        (706, single("auth.nk")),
        (977, single("auth.ivk_reduced")),
        (978, single("auth.ivk_quotient_a")),
        (2211, sender_point[0]),
        (2212, sender_point[1]),
    )
    sender_transmission = vector("sender.transmission", 2)
    seats["sender_transmission_compress"] = (
        (1, sender_transmission[0]),
        (3, sender_transmission[1]),
        *zip(
            (365, 705),
            lc("sender.transmission_fq", compress_coefficients),
            strict=True,
        ),
    )

    note_roles = (
        (
            "required_note_commitment",
            "spend0",
            "sender.div_gen_fq",
            "sender.transmission_fq",
            "sender.clue_key",
        ),
        (
            "optional_note_commitment",
            "spend1",
            "sender.div_gen_fq",
            "sender.transmission_fq",
            "sender.clue_key",
        ),
        (
            "receiver_note_commitment",
            "output0",
            "output0.recipient.div_gen_fq",
            "output0.recipient.transmission_fq",
            "output0.note.clue_key",
        ),
        (
            "change_note_commitment",
            "output1",
            "sender.div_gen_fq",
            "sender.transmission_fq",
            "sender.clue_key",
        ),
    )
    for label, slot, div_gen, transmission, clue_key in note_roles:
        seats[label] = (
            (1, single(f"{slot}.note.blinding")),
            (7, single(f"{slot}.note.amount")),
            (13, single("shared.asset_id")),
            *zip(
                (19, 20),
                lc(div_gen, compress_coefficients),
                strict=True,
            ),
            *zip(
                (26, 27),
                lc(transmission, compress_coefficients),
                strict=True,
            ),
            (33, single(clue_key)),
            *zip(
                (408, 413, 418, 423, 428, 433, 438),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
        )

    for label, slot in (
        ("receiver_note_assert", "output0"),
        ("change_note_assert", "output1"),
    ):
        seats[label] = (
            *zip(
                range(1, 8),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
            (8, single(f"{slot}.note_commitment.claimed")),
        )

    seats["required_nullifier_assert"] = (
        (1, single("spend0.nullifier.claimed")),
        *zip(
            range(2, 6),
            lc("spend0.nullifier.real", NULLIFIER_COEFFICIENTS),
            strict=True,
        ),
    )
    seats["required_anchor_assert"] = (
        *zip(
            range(1, 6),
            lc("spend0.anchor.computed", POSEIDON_ROOT_COEFFICIENTS),
            strict=True,
        ),
        (6, single("anchor")),
    )
    seats["optional_anchor_assert"] = (
        (1, single("spend1.is_dummy")),
        (2, single("anchor")),
        *zip(
            range(3, 8),
            lc("spend1.anchor.computed", POSEIDON_ROOT_COEFFICIENTS),
            strict=True,
        ),
    )

    for label, slot in (
        ("required_state_path", "spend0"),
        ("optional_state_path", "spend1"),
    ):
        seats[label] = (
            *zip(
                range(1, 8),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
            (286, single(f"{slot}.state_proof.position")),
            *zip(
                STATE_PATH_PROVIDER_LOCALS,
                tuple(
                    vector(f"{slot}.state_proof.path", 72)[index]
                    for index in STATE_PATH_LEVEL_REVERSAL
                ),
                strict=True,
            ),
            *zip(
                (8978, 8983, 8988, 8993, 8998),
                lc(f"{slot}.anchor.computed", POSEIDON_ROOT_COEFFICIENTS),
                strict=True,
            ),
        )

    for label, slot in (
        ("required_nullifier", "spend0"),
        ("optional_nullifier", "spend1"),
    ):
        seats[label] = (
            (1, single("auth.nk")),
            *zip(
                range(7, 14),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
            (19, single(f"{slot}.state_proof.position")),
            *zip(
                (304, 309, 314, 319),
                lc(f"{slot}.nullifier.real", NULLIFIER_COEFFICIENTS),
                strict=True,
            ),
        )

    seats["optional_is_dummy_boolean"] = (
        (1, single("spend1.is_dummy")),
    )
    seats["optional_synthetic_nullifier"] = (
        (1, single("spend1.dummy_nullifier_seed")),
        (7, single("spend1.auth_randomizer")),
        *zip(
            (292, 297, 302, 307),
            lc("spend1.nullifier.synthetic", NULLIFIER_COEFFICIENTS),
            strict=True,
        ),
    )
    selected_nullifier = lc(
        "spend1.nullifier.selected", ("1", "1")
    )
    seats["optional_nullifier_mux"] = (
        (1, single("spend1.is_dummy")),
        *zip(
            (2, 3, 4, 5),
            lc("spend1.nullifier.real", NULLIFIER_COEFFICIENTS),
            strict=True,
        ),
        (6, selected_nullifier[0]),
        *zip(
            (7, 8, 9, 10),
            lc("spend1.nullifier.synthetic", NULLIFIER_COEFFICIENTS),
            strict=True,
        ),
        (11, selected_nullifier[1]),
    )
    seats["optional_nullifier_assert"] = (
        (1, single("spend1.nullifier.claimed")),
        *zip((2, 3), selected_nullifier, strict=True),
    )
    seats["optional_amount_zero"] = (
        (1, single("spend1.note.amount")),
        (2, single("spend1.is_dummy")),
    )

    for label, slot in (
        ("required_rvk", "spend0"),
        ("optional_rvk", "spend1"),
    ):
        computed = vector(f"{slot}.rk.computed", 2)
        seats[label] = (
            (252, single(f"{slot}.auth_randomizer")),
            (1807, auth_ak[0]),
            (1808, auth_ak[1]),
            (1813, computed[0]),
            (1814, computed[1]),
        )
    required_computed = vector("spend0.rk.computed", 2)
    required_claimed = vector("spend0.rk.claimed", 2)
    seats["required_rk_equivalent"] = (
        (1, required_computed[0]),
        (2, required_claimed[1]),
        (4, required_claimed[0]),
        (5, required_computed[1]),
    )
    optional_computed = vector("spend1.rk.computed", 2)
    optional_claimed = vector("spend1.rk.claimed", 2)
    seats["optional_rk_equivalent"] = (
        (1, single("spend1.is_dummy")),
        (2, optional_computed[0]),
        (3, optional_claimed[1]),
        (5, optional_claimed[0]),
        (6, optional_computed[1]),
    )
    for label, slot in (
        ("required_rk_compress", "spend0"),
        ("optional_rk_compress", "spend1"),
    ):
        claimed = vector(f"{slot}.rk.claimed", 2)
        seats[label] = (
            (1, claimed[0]),
            (3, claimed[1]),
            *zip(
                (365, 705),
                lc(f"{slot}.rk.compressed", compress_coefficients),
                strict=True,
            ),
        )

    receiver_div_gen = vector("output0.recipient.div_gen", 2)
    receiver_transmission = vector(
        "output0.recipient.transmission", 2
    )
    for label, point, compressed in (
        (
            "receiver_div_gen_compress",
            receiver_div_gen,
            "output0.recipient.div_gen_fq",
        ),
        (
            "receiver_transmission_compress",
            receiver_transmission,
            "output0.recipient.transmission_fq",
        ),
    ):
        seats[label] = (
            (1, point[0]),
            (3, point[1]),
            *zip(
                (365, 705),
                lc(compressed, compress_coefficients),
                strict=True,
            ),
        )
    seats["receiver_amount_is_zero"] = (
        (1, single("output0.note.amount")),
        (3, single("output0.is_dummy")),
    )
    seats["receiver_nonzero_assert"] = (
        (1, single("output0.is_dummy")),
    )

    if set(seats) != set(TRANSFER_CORE_PROVIDER_LABELS):
        raise ValueError(
            "Transfer core provider inventory drifted: "
            f"missing={sorted(set(TRANSFER_CORE_PROVIDER_LABELS) - set(seats))!r}, "
            f"extra={sorted(set(seats) - set(TRANSFER_CORE_PROVIDER_LABELS))!r}"
        )
    ordered = {
        label: seats[label] for label in TRANSFER_CORE_PROVIDER_LABELS
    }
    for label, expected in ordered.items():
        if len(dict(expected)) != len(expected):
            raise ValueError(
                f"Transfer {label} has duplicate audited local seats"
            )
    return ordered


def _validate_transfer_core_provider_seats(
    plan: TransferRefinementPlan,
) -> dict[str, tuple[tuple[int, int], ...]]:
    """Fail closed unless every core provider has its audited exact seats."""

    seats = _transfer_core_provider_seats(plan)
    for label, expected in seats.items():
        _require_seats(
            plan.segments[label],
            dict(expected),
            f"Transfer core {label}",
        )
    return seats


def _validate_transfer_current_protocol_seats(
    plan: TransferRefinementPlan,
) -> None:
    """Authenticate every protocol-facing provider argument ordering."""

    for label, (expected, description) in (
        _transfer_current_protocol_seats(plan).items()
    ):
        _require_seats(plan.segments[label], expected, description)


def _validate_transfer_transcript_protocol_seats(
    plan: TransferRefinementPlan,
) -> None:
    """Fail closed on every transcript and identity-point join."""

    for label, (expected, description) in (
        _transfer_transcript_protocol_seats(plan).items()
    ):
        _require_seats(plan.segments[label], expected, description)


def _validate_transfer_action_protocol_seats(
    plan: TransferRefinementPlan,
) -> None:
    """Fail closed on registry, compliance, and balance action joins."""

    for label, (expected, description) in (
        _transfer_action_protocol_seats(plan).items()
    ):
        _require_seats(plan.segments[label], expected, description)


def _validate_transfer_trace_roster(
    ir: dict, constraint_manifest: dict
) -> list[dict]:
    """Authenticate the exact positive Transfer source trace and IR join."""

    trace_segments = constraint_manifest.get("segments")
    if not isinstance(trace_segments, list):
        raise ValueError("Transfer constraint manifest has no source segments")
    positive_trace = [
        segment for segment in trace_segments
        if segment.get("constraint_count", 0) > 0
    ]
    actual_trace = Counter(
        (
            segment.get("op"),
            tuple(segment.get("args", [])),
            segment.get("kind"),
            segment.get("constraint_count"),
        )
        for segment in positive_trace
    )
    expected_trace = Counter(
        (spec.op, spec.args, spec.kind, spec.constraint_count)
        for spec in TRANSFER_TRACE_SPECS
    )
    if actual_trace != expected_trace:
        missing = expected_trace - actual_trace
        extra = actual_trace - expected_trace
        raise ValueError(
            "Transfer constraint trace drifted: "
            f"missing={list(missing.elements())!r}, "
            f"extra={list(extra.elements())!r}"
        )

    ir_segments = core.constraint_segments(ir)
    ir_by_index = {segment.get("index"): segment for segment in ir_segments}
    trace_indices = [segment.get("index") for segment in positive_trace]
    if len(ir_by_index) != len(ir_segments) or set(trace_indices) != set(ir_by_index):
        raise ValueError("Transfer source trace and IR segment rosters drifted")
    for trace in positive_trace:
        segment = ir_by_index.get(trace.get("index"))
        if (
            segment is None
            or segment.get("op") != trace.get("op")
            or segment.get("constraint_count") != trace.get("constraint_count")
        ):
            raise ValueError(
                "Transfer source trace and IR op/count join drifted at "
                f"index {trace.get('index')!r}"
            )
    return trace_segments


def _validate_transfer_refinement_plan(
    ir: dict, constraint_manifest: dict
) -> TransferRefinementPlan:
    """Authenticate the complete Transfer refinement without fixed indices."""

    if ir.get("circuit") != "transfer":
        raise ValueError("Transfer refinement requested for another circuit")
    if constraint_manifest.get("circuit") != "transfer":
        raise ValueError("Transfer refinement manifest circuit drifted")
    if (
        set(TRANSFER_FACT_PROVIDER_COUNTS) != set(TRANSFER_FACT_FIELDS)
        or Counter(spec.fact for spec in TRANSFER_TRACE_SPECS)
        != Counter(TRANSFER_FACT_PROVIDER_COUNTS)
    ):
        raise ValueError("Transfer refinement does not cover all CircuitFacts")

    trace_segments = _validate_transfer_trace_roster(ir, constraint_manifest)
    trace_position_by_index = _positive_trace_positions(
        trace_segments, "Transfer"
    )

    bindings = {
        binding["name"]: binding
        for binding in core.semantic_bindings(constraint_manifest, ir)
    }
    _validate_transfer_binding_spine(bindings)

    segments: dict[str, dict] = {}
    trace_positions: list[int] = []
    for spec in TRANSFER_TRACE_SPECS:
        segment = _exact_trace_segment(
            ir,
            constraint_manifest,
            circuit_label="Transfer",
            op=spec.op,
            args=spec.args,
            key=spec.key,
            constraint_count=spec.constraint_count,
            local_wire_count=spec.local_wire_count,
            kind=spec.kind,
            label=f"Transfer {spec.label}",
            deployed_relation_digest=spec.deployed_relation_digest,
        )
        segments[spec.label] = segment
        _validate_transfer_segment_roles(spec, segment, bindings)
        trace_positions.append(
            trace_position_by_index[segment["index"]]
        )
    if trace_positions != sorted(trace_positions):
        raise ValueError("Transfer exact providers no longer follow source order")
    if len(set(trace_positions)) != len(trace_positions):
        raise ValueError("Transfer exact provider trace join is not injective")
    if {segment["index"] for segment in segments.values()} != {
        segment["index"] for segment in core.constraint_segments(ir)
    }:
        raise ValueError(
            "Transfer refinement providers are not an exact IR partition"
        )

    current_provider_keys = {
        "sender_compliance_leaf": TRANSFER_COMPLIANCE_LEAF_KEY,
        "receiver_compliance_leaf": TRANSFER_COMPLIANCE_LEAF_KEY,
        "sender_compliance_path": TRANSFER_COMPLIANCE_PATH_KEY,
        "receiver_compliance_path": TRANSFER_COMPLIANCE_PATH_KEY,
        "threshold_flag": TRANSFER_THRESHOLD_KEY,
        "sender_core_shared_secret":
            TRANSFER_CURRENT_SHARED_SECRET_FLAGGED_KEY,
        "sender_ext_shared_secret": TRANSFER_CURRENT_SHARED_SECRET_KEY,
        "output_core_shared_secret": TRANSFER_CURRENT_SHARED_SECRET_KEY,
        "output_ext_shared_secret": TRANSFER_CURRENT_SHARED_SECRET_KEY,
        "detection_encryption": TRANSFER_DETECTION_ENCRYPTION_KEY,
    }
    for label, expected_provider in current_provider_keys.items():
        if segments[label].get("proof_template_id") != expected_provider:
            raise ValueError(
                f"Transfer {label} did not select the reviewed provider"
            )

    statement_key = segments["statement_hash"].get("proof_template_id")
    if statement_key != TRANSFER_STATEMENT_V4_KEY:
        raise ValueError(
            "Transfer statement did not select the reviewed v4 provider"
        )
    plan = TransferRefinementPlan(segments=segments, bindings=bindings)
    _validate_transfer_selector_rows(plan)
    _validate_transfer_current_protocol_seats(plan)
    _validate_transfer_transcript_protocol_seats(plan)
    _validate_transfer_action_protocol_seats(plan)
    return plan


@dataclass(frozen=True)
class WithdrawalRefinementPlan:
    """Authenticated dynamic joins for all eight Withdrawal CircuitFacts."""

    segments: dict[str, dict]
    bindings: dict[str, dict]


@dataclass(frozen=True)
class WithdrawalBalanceSeams:
    """Authenticated Withdrawal net-balance/compressor shared-wire join."""

    net_balance: dict
    compressor: dict
    spend0_amount_wire: int
    spend1_amount_wire: int
    change_amount_wire: int
    outbound_amount_wire: int
    blinding_wire: int
    seed_wire: int
    x_runs: tuple[tuple[int, int, int], ...]
    y_runs: tuple[tuple[int, int, int], ...]
    compressed_minus_wire: int
    compressed_plus_wire: int


WITHDRAWAL_DIRECT_ACTION_BINDING_ARITIES = {
    "claimed.statement_hash": 1,
    "anchor": 1,
    "asset_anchor": 1,
    "compliance_anchor": 1,
    "target_timestamp": 1,
    "outbound.asset_id": 1,
    "outbound.amount": 1,
    "withdrawal_effect_hash_limbs": 4,
    "action.balance_blinding": 1,
    "is_regulated": 1,
    "auth.ak": 2,
    "auth.nk": 1,
    "auth.ivk_reduced": 1,
    "auth.ivk_quotient_a": 1,
    "asset.leaf.value": 1,
    "asset.leaf.next_index": 1,
    "asset.leaf.next_value": 1,
    "asset.leaf.params_hash": 1,
    "asset.leaf.ring_hash": 1,
    "asset.path": 48,
    "asset.position": 1,
    "sender.div_gen": 2,
    "sender.clue_key": 1,
    "sender.slot_id": 1,
    "sender.slot_derivation": 1,
    "sender.d": 1,
    "sender.path": 48,
    "sender.position": 1,
    "spend0.nullifier.claimed": 1,
    "spend0.rk.claimed": 2,
    "spend0.note.blinding": 1,
    "spend0.note.amount": 1,
    "spend0.state_proof.position": 1,
    "spend0.state_proof.path": 72,
    "spend0.auth_randomizer": 1,
    "spend1.nullifier.claimed": 1,
    "spend1.rk.claimed": 2,
    "spend1.note.blinding": 1,
    "spend1.note.amount": 1,
    "spend1.state_proof.position": 1,
    "spend1.state_proof.path": 72,
    "spend1.auth_randomizer": 1,
    "spend1.is_dummy": 1,
    "spend1.dummy_nullifier_seed": 1,
    "output0.note_commitment.claimed": 1,
    "output0.note.blinding": 1,
    "output0.note.amount": 1,
}


WITHDRAWAL_BINDING_ARITIES = {
    **WITHDRAWAL_DIRECT_ACTION_BINDING_ARITIES,
    "shared.asset_id": 1,
    "shared.clue_key": 1,
    "sender.div_gen_fq": 1,
    "sender.transmission.computed": 2,
    "sender.transmission_fq": 1,
    "asset.leaf.commitment": 1,
    "asset.root.computed": 1,
    "asset.gap_valid": 1,
    "sender.leaf_commitment": 1,
    "sender.compliance_root": 1,
    "spend0.note_commitment.inputs": 6,
    "spend0.note.commitment.computed": 1,
    "spend0.nullifier.real": 1,
    "spend0.anchor.computed": 1,
    "spend0.rk.computed": 2,
    "spend0.rk.compressed": 1,
    "spend0.nullifier.selected": 1,
    "spend1.note_commitment.inputs": 6,
    "spend1.note.commitment.computed": 1,
    "spend1.nullifier.real": 1,
    "spend1.anchor.computed": 1,
    "spend1.rk.computed": 2,
    "spend1.rk.compressed": 1,
    "spend1.is_not_dummy": 1,
    "spend1.nullifier.synthetic": 1,
    "spend1.nullifier.selected": 1,
    "output0.note_commitment.inputs": 6,
    "output0.note.commitment.computed": 1,
    "balance_commitment.computed": 2,
    "balance_commitment.fq": 1,
    **{f"statement.field.{index:03d}": 1 for index in range(16)},
    "statement.fields": 16,
    "statement.hash.block0": 1,
    "statement.hash.block1": 1,
    "statement.hash.block2": 1,
    "statement.hash": 1,
}


WITHDRAWAL_BINDING_ALIASES = {
    "shared.ak": "auth.ak",
}


def _withdrawal_statement_expressions(
    bindings: dict[str, dict], start: int, stop: int
) -> list[dict]:
    return [
        _binding_expression(
            bindings, f"statement.field.{index:03d}", 1
        )[0]
        for index in range(start, stop)
    ]


def _withdrawal_binding_expressions(
    bindings: dict[str, dict], label: str
) -> list[dict] | None:
    """Resolve one exact Withdrawal trace label to compiler expressions."""

    if label in {"0", "1", "spend1"}:
        return None
    special = {
        "input_amounts": [
            *_binding_expression(bindings, "spend0.note.amount", 1),
            *_binding_expression(bindings, "spend1.note.amount", 1),
        ],
        "change_amount,outbound_amount": [
            *_binding_expression(bindings, "output0.note.amount", 1),
            *_binding_expression(bindings, "outbound.amount", 1),
        ],
        "statement.field.000..006":
            _withdrawal_statement_expressions(bindings, 0, 7),
        "statement.hash.block0,statement.field.007..012": [
            *_binding_expression(
                bindings, "statement.hash.block0", 1
            ),
            *_withdrawal_statement_expressions(bindings, 7, 13),
        ],
        (
            "statement.hash.block1,"
            "statement.field.013..015,pad1,pad0,pad1"
        ): [
            *_binding_expression(
                bindings, "statement.hash.block1", 1
            ),
            *_withdrawal_statement_expressions(bindings, 13, 16),
        ],
    }
    if label in special:
        return special[label]
    name = WITHDRAWAL_BINDING_ALIASES.get(label, label)
    binding = bindings.get(name)
    if binding is None:
        raise ValueError(
            f"missing Withdrawal semantic binding for trace label {label!r}"
        )
    expressions = binding.get("expressions")
    if not isinstance(expressions, list) or not expressions:
        raise ValueError(
            f"Withdrawal semantic binding {name!r} has no expressions"
        )
    return expressions


def _withdrawal_trace_role_support(
    spec: ExactTraceSpec, bindings: dict[str, dict]
) -> tuple[set[int], set[int], set[int]]:
    inputs: set[int] = set()
    outputs: set[int] = set()
    flexible: set[int] = set()
    for raw in spec.args:
        key, separator, label = raw.partition("=")
        if not separator:
            raise ValueError(
                f"Withdrawal trace argument {raw!r} is not key=value"
            )
        if key in {"block", "coordinate", "slot"}:
            continue
        expressions = _withdrawal_binding_expressions(bindings, label)
        if expressions is None:
            continue
        if spec.op == "assert.decaf_non_identity" and key == "point":
            expressions = expressions[:1]
        if spec.op in EQUALITY_ROLE_FLEXIBLE_OPS:
            target = flexible
        else:
            target = outputs if key == "out" else inputs
        target.update(_expression_support(expressions))
    return inputs, outputs, flexible


def _validate_withdrawal_segment_roles(
    spec: ExactTraceSpec,
    segment: dict,
    bindings: dict[str, dict],
) -> None:
    expected_inputs, expected_outputs, flexible = (
        _withdrawal_trace_role_support(spec, bindings)
    )
    if spec.op in {"assert.decaf_non_identity", "assert.ne"}:
        flexible.update(
            set(_seating(segment)) - expected_inputs - {0}
        )
    _validate_exact_segment_roles(
        "Withdrawal",
        spec.label,
        segment,
        expected_inputs,
        expected_outputs,
        flexible,
        _semantic_binding_support(bindings),
    )


def _validate_withdrawal_binding_spine(
    bindings: dict[str, dict],
) -> None:
    if set(bindings) != set(WITHDRAWAL_BINDING_ARITIES):
        missing = set(WITHDRAWAL_BINDING_ARITIES) - set(bindings)
        extra = set(bindings) - set(WITHDRAWAL_BINDING_ARITIES)
        raise ValueError(
            "Withdrawal semantic binding inventory drifted: "
            f"missing={sorted(missing)!r}, extra={sorted(extra)!r}"
        )
    for name, count in WITHDRAWAL_BINDING_ARITIES.items():
        _binding_expression(bindings, name, count)
    for name, count in WITHDRAWAL_DIRECT_ACTION_BINDING_ARITIES.items():
        _binding_wire_vector(bindings, name, count)

    aliases = {
        "shared.asset_id": "outbound.asset_id",
        "shared.clue_key": "sender.clue_key",
        "spend0.nullifier.selected": "spend0.nullifier.real",
        "statement.hash": "statement.hash.block2",
    }
    for derived, source in aliases.items():
        if _binding_expression(bindings, derived, 1) != _binding_expression(
            bindings, source, 1
        ):
            raise ValueError(
                f"Withdrawal semantic alias {derived!r} drifted "
                f"from {source!r}"
            )

    for slot in ("spend0", "spend1", "output0"):
        expected_note_inputs = [
            *_binding_expression(bindings, f"{slot}.note.blinding", 1),
            *_binding_expression(bindings, f"{slot}.note.amount", 1),
            *_binding_expression(bindings, "shared.asset_id", 1),
            *_binding_expression(bindings, "sender.div_gen_fq", 1),
            *_binding_expression(bindings, "sender.transmission_fq", 1),
            *_binding_expression(bindings, "shared.clue_key", 1),
        ]
        if _binding_expression(
            bindings, f"{slot}.note_commitment.inputs", 6
        ) != expected_note_inputs:
            raise ValueError(
                f"Withdrawal {slot} note-commitment input order drifted"
            )

    is_dummy_wire = _single_binding_wire(bindings, "spend1.is_dummy")
    expected_is_not_dummy = {
        "constant": "1",
        "terms": [
            {
                "wire_id": is_dummy_wire,
                "coefficient": MODULUS_MINUS_ONE,
            }
        ],
    }
    if _binding_expression(
        bindings, "spend1.is_not_dummy", 1
    ) != [expected_is_not_dummy]:
        raise ValueError("Withdrawal optional is_not_dummy binding drifted")

    statement = _binding_expression(bindings, "statement.fields", 16)
    individual = _withdrawal_statement_expressions(bindings, 0, 16)
    if statement != individual:
        raise ValueError(
            "Withdrawal statement.fields is not the exact ordered "
            "16-field spine"
        )
    expected_statement = [
        *_binding_expression(bindings, "anchor", 1),
        *_binding_expression(
            bindings, "output0.note_commitment.claimed", 1
        ),
        *_binding_expression(bindings, "balance_commitment.fq", 1),
        *_binding_expression(bindings, "spend0.nullifier.claimed", 1),
        *_binding_expression(bindings, "spend0.rk.compressed", 1),
        *_binding_expression(bindings, "spend1.nullifier.claimed", 1),
        *_binding_expression(bindings, "spend1.rk.compressed", 1),
        *_binding_expression(bindings, "asset_anchor", 1),
        *_binding_expression(bindings, "compliance_anchor", 1),
        *_binding_expression(bindings, "target_timestamp", 1),
        *_binding_expression(bindings, "outbound.asset_id", 1),
        *_binding_expression(bindings, "outbound.amount", 1),
        *_binding_expression(
            bindings, "withdrawal_effect_hash_limbs", 4
        ),
    ]
    if statement != expected_statement:
        raise ValueError(
            "Withdrawal statement fields no longer match the exact "
            "Action projection"
        )


def _valid_provider_id(key: object, op: str) -> bool:
    if not isinstance(key, str) or not key.startswith(op + "@"):
        return False
    digest = key.removeprefix(op + "@")
    return (
        len(digest) == 64
        and all(character in "0123456789abcdef" for character in digest)
    )


def _validate_withdrawal_refinement_plan(
    ir: dict, constraint_manifest: dict
) -> WithdrawalRefinementPlan:
    """Authenticate all Withdrawal providers without fixed segment indices."""

    circuit = "shielded_ics20_withdrawal"
    if ir.get("circuit") != circuit:
        raise ValueError("Withdrawal refinement requested for another circuit")
    if constraint_manifest.get("circuit") != circuit:
        raise ValueError("Withdrawal refinement manifest circuit drifted")
    if (
        set(WITHDRAWAL_FACT_PROVIDER_COUNTS)
        != set(WITHDRAWAL_FACT_FIELDS)
        or Counter(spec.fact for spec in WITHDRAWAL_TRACE_SPECS)
        != Counter(WITHDRAWAL_FACT_PROVIDER_COUNTS)
    ):
        raise ValueError(
            "Withdrawal refinement does not cover all CircuitFacts"
        )

    trace_segments = constraint_manifest.get("segments")
    if not isinstance(trace_segments, list):
        raise ValueError(
            "Withdrawal constraint manifest has no source segments"
        )
    actual_trace = Counter(
        (
            segment.get("op"),
            tuple(segment.get("args", [])),
            segment.get("kind"),
            segment.get("constraint_count"),
        )
        for segment in trace_segments
        if segment.get("constraint_count", 0) > 0
    )
    expected_trace = Counter(
        (spec.op, spec.args, spec.kind, spec.constraint_count)
        for spec in WITHDRAWAL_TRACE_SPECS
    )
    if actual_trace != expected_trace:
        missing = expected_trace - actual_trace
        extra = actual_trace - expected_trace
        raise ValueError(
            "Withdrawal constraint trace drifted: "
            f"missing={list(missing.elements())!r}, "
            f"extra={list(extra.elements())!r}"
        )
    trace_position_by_index = _positive_trace_positions(
        trace_segments, "Withdrawal"
    )

    bindings = {
        binding["name"]: binding
        for binding in core.semantic_bindings(constraint_manifest, ir)
    }
    _validate_withdrawal_binding_spine(bindings)

    segments: dict[str, dict] = {}
    trace_positions: list[int] = []
    for spec in WITHDRAWAL_TRACE_SPECS:
        segment = _exact_trace_segment(
            ir,
            constraint_manifest,
            circuit_label="Withdrawal",
            op=spec.op,
            args=spec.args,
            key=spec.key,
            constraint_count=spec.constraint_count,
            local_wire_count=spec.local_wire_count,
            kind=spec.kind,
            label=f"Withdrawal {spec.label}",
            deployed_relation_digest=spec.deployed_relation_digest,
        )
        segments[spec.label] = segment
        _validate_withdrawal_segment_roles(spec, segment, bindings)
        trace_positions.append(
            trace_position_by_index[segment["index"]]
        )
    if trace_positions != sorted(trace_positions):
        raise ValueError(
            "Withdrawal exact providers no longer follow source order"
        )
    if len(set(trace_positions)) != len(trace_positions):
        raise ValueError(
            "Withdrawal exact provider trace join is not injective"
        )
    if {segment["index"] for segment in segments.values()} != {
        segment["index"] for segment in core.constraint_segments(ir)
    }:
        raise ValueError(
            "Withdrawal refinement providers are not an exact IR partition"
        )

    current_provider_keys = {
        "asset_leaf": WITHDRAWAL_ASSET_LEAF_KEY,
        "asset_gap": WITHDRAWAL_ASSET_GAP_KEY,
        "sender_compliance_leaf": COMPLIANCE_LEAF_KEY,
        "sender_compliance_path": WITHDRAWAL_COMPLIANCE_PATH_KEY,
    }
    for label, expected_provider in current_provider_keys.items():
        if segments[label].get("proof_template_id") != expected_provider:
            raise ValueError(
                f"Withdrawal {label} did not select the reviewed provider"
            )

    plan = WithdrawalRefinementPlan(
        segments=segments,
        bindings=bindings,
    )
    selector = _withdrawal_asset_selector_from_plan(plan)
    if (
        selector.boolean_segment["index"]
        != plan.segments["is_regulated_boolean"]["index"]
        or selector.asset_id_nonzero_segment["index"]
        != plan.segments["asset_id_nonzero"]["index"]
    ):
        raise ValueError("Withdrawal asset-selector plan join drifted")
    non_identity = _validate_non_identity_seams(ir, constraint_manifest)
    expected_non_identity = (
        plan.segments["auth_ak_non_identity"]["index"],
        plan.segments["sender_div_gen_non_identity"]["index"],
        plan.segments["sender_transmission_non_identity"]["index"],
    )
    actual_non_identity = tuple(
        seam["segment"]["index"] for seam in non_identity
    )
    if actual_non_identity != expected_non_identity:
        raise ValueError("Withdrawal non-identity plan join drifted")
    return plan


def render_withdrawal_refinement_action(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the compiler-owned witness projection into Withdrawal.Action."""

    plan = _validate_withdrawal_refinement_plan(
        ir, constraint_manifest
    )
    _validate_state_path_projection(
        plan,
        segment_label="required_state_path",
        binding_name="spend0.state_proof.path",
        circuit_label="Withdrawal required",
    )
    _validate_state_path_projection(
        plan,
        segment_label="optional_state_path",
        binding_name="spend1.state_proof.path",
        circuit_label="Withdrawal optional",
    )
    return f"""import Lean.Elab.Tactic.Omega
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBindings
import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete
import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Compiler-authenticated Withdrawal action projection.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C

open Shieldd.GnarkFormal
open Protocol.ShieldedIcs20Withdrawal
open Deployed.Contracts.ShieldedIcs20Withdrawal

def directPath16
    (values : Fin 48 → DeployedF) : Protocol.Common.Path16 :=
  fun level sibling =>
    values ⟨3 * level.val + sibling.val, by omega⟩

def assetPath (rho : Nat → DeployedF) : Protocol.Common.Path16 :=
  directPath16 (assetPathAt rho)

def senderPath (rho : Nat → DeployedF) : Protocol.Common.Path16 :=
  directPath16 (senderPathAt rho)

def statePath24
    (values : Fin 72 → DeployedF) : Protocol.Common.Path24 :=
  fun level sibling =>
    values ⟨3 * (23 - level.val) + sibling.val, by omega⟩

def requiredPath (rho : Nat → DeployedF) : Protocol.Common.Path24 :=
  statePath24 (spend0StateProofPathAt rho)

def optionalPath (rho : Nat → DeployedF) : Protocol.Common.Path24 :=
  statePath24 (spend1StateProofPathAt rho)

def sender (rho : Nat → DeployedF) : Address DeployedF :=
  {{
    diversifiedGenerator := ⟨senderDivGen0 rho, senderDivGen1 rho⟩
    diversifiedGeneratorEncoding := senderDivGenFq rho
    transmission :=
      ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
    transmissionEncoding := senderTransmissionFq rho
    clueKey := senderClueKey rho
  }}

def authorization (rho : Nat → DeployedF) : Authorization DeployedF :=
  {{
    authorizationKey := ⟨authAk0 rho, authAk1 rho⟩
    nullifierKey := authNk rho
    ivkReduced := authIvkReduced rho
    ivkQuotientA := authIvkQuotientA rho
  }}

def requiredNote (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := spend0NoteBlinding rho
    amount := spend0NoteAmount rho
    assetId := outboundAssetId rho
    owner := sender rho
    commitment := spend0NoteCommitmentComputed rho
  }}

def required (rho : Nat → DeployedF) :
    RealSpend DeployedF Protocol.Common.Path24 :=
  {{
    note := requiredNote rho
    position := spend0StateProofPosition rho
    path := requiredPath rho
    nullifier := spend0NullifierClaimed rho
    randomizedVerificationKey :=
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizedVerificationKeyEncoding := spend0RkCompressed rho
    authRandomizer := spend0AuthRandomizer rho
  }}

def optionalRealNote (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := spend1NoteBlinding rho
    amount := spend1NoteAmount rho
    assetId := outboundAssetId rho
    owner := sender rho
    commitment := spend1NoteCommitmentComputed rho
  }}

def optionalReal (rho : Nat → DeployedF) :
    RealSpend DeployedF Protocol.Common.Path24 :=
  {{
    note := optionalRealNote rho
    position := spend1StateProofPosition rho
    path := optionalPath rho
    nullifier := spend1NullifierClaimed rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizedVerificationKeyEncoding := spend1RkCompressed rho
    authRandomizer := spend1AuthRandomizer rho
  }}

def optionalDummy (rho : Nat → DeployedF) : DummySpend DeployedF :=
  {{
    amount := spend1NoteAmount rho
    nullifier := spend1NullifierClaimed rho
    nullifierSeed := spend1DummyNullifierSeed rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizedVerificationKeyEncoding := spend1RkCompressed rho
    authRandomizer := spend1AuthRandomizer rho
  }}

def optional (rho : Nat → DeployedF) :
    OptionalSpend DeployedF Protocol.Common.Path24 :=
  if spend1IsDummy rho = 1 then
    .dummy (optionalDummy rho)
  else
    .real (optionalReal rho)

def change (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := output0NoteBlinding rho
    amount := output0NoteAmount rho
    assetId := outboundAssetId rho
    owner := sender rho
    commitment := output0NoteCommitmentClaimed rho
  }}

def assetLeaf (rho : Nat → DeployedF) : IndexedAssetLeaf DeployedF :=
  {{
    value := assetLeafValue rho
    nextIndex := assetLeafNextIndex rho
    nextValue := assetLeafNextValue rho
    paramsHash := assetLeafParamsHash rho
    ringHash := assetLeafRingHash rho
  }}

def assetProof (rho : Nat → DeployedF) :
    AssetProof DeployedF Protocol.Common.Path16 :=
  {{
    leaf := assetLeaf rho
    path := assetPath rho
    position := assetPosition rho
    isRegulated := isRegulated rho
  }}

def senderCompliance (rho : Nat → DeployedF) :
    ComplianceProof DeployedF Protocol.Common.Path16 :=
  {{
    slotId := senderSlotId rho
    slotDerivation := senderSlotDerivation rho
    d := senderD rho
    path := senderPath rho
    position := senderPosition rho
  }}

def withdrawalEffectHashLimb
    (rho : Nat → DeployedF) (index : Fin 4) : DeployedF :=
  withdrawalEffectHashLimbsAt rho index

def withdrawal (rho : Nat → DeployedF) : WithdrawalIntent DeployedF :=
  {{
    outboundAssetId := outboundAssetId rho
    outboundAmount := outboundAmount rho
    effectHashLimbs := withdrawalEffectHashLimb rho
  }}

def action (rho : Nat → DeployedF) :
    Action DeployedF Protocol.Common.Path24 Protocol.Common.Path16 :=
  {{
    authorization := authorization rho
    sender := sender rho
    required := required rho
    optional := optional rho
    change := change rho
    assetProof := assetProof rho
    senderCompliance := senderCompliance rho
    withdrawal := withdrawal rho
    anchor := anchor rho
    assetAnchor := assetAnchor rho
    complianceAnchor := complianceAnchor rho
    targetTimestamp := targetTimestamp rho
    balanceCommitmentEncoding := balanceCommitmentFq rho
    balanceBlinding := actionBalanceBlinding rho
    publicStatementHash := claimedStatementHash rho
  }}

end Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement.C
"""


def _withdrawal_exact_field(
    spec: ExactTraceSpec, segment: dict
) -> str:
    field = core.lower_camel(spec.label)
    return f"  {field} : Seg{segment['index']}.contract.spec rho"


def _withdrawal_exact_projection(
    spec: ExactTraceSpec, segment: dict
) -> str:
    stable = core.lower_camel(spec.label)
    exact = f"{core.camel(spec.op)}Seg{segment['index']}"
    return f"      {stable} := facts.exact.{exact}"


def render_withdrawal_exact_providers(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the exhaustive exact-provider inventory by protocol fact."""

    plan = _validate_withdrawal_refinement_plan(ir, constraint_manifest)
    specs_by_fact = {
        fact: [
            spec for spec in WITHDRAWAL_TRACE_SPECS if spec.fact == fact
        ]
        for fact in WITHDRAWAL_FACT_FIELDS
    }
    group_structures = []
    aggregate_fields = []
    constructors = []
    for fact, specs in specs_by_fact.items():
        structure = f"{core.camel(fact)}ExactProviders"
        fields = "\n".join(
            _withdrawal_exact_field(spec, plan.segments[spec.label])
            for spec in specs
        )
        group_structures.append(
            f"/-- Exact provider inventory for the `{fact}` obligation. -/\n"
            f"structure {structure} (rho : Nat → DeployedF) : Prop where\n"
            f"{fields}"
        )
        aggregate_fields.append(f"  {fact} : {structure} rho")
        projections = "\n".join(
            _withdrawal_exact_projection(spec, plan.segments[spec.label])
            for spec in specs
        )
        constructors.append(
            f"    {fact} := {{\n{projections}\n    }}"
        )

    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CircuitFacts

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-!
Stable exact-provider inventory grouped by all eight Withdrawal protocol
obligations. Semantic refinement is supplied separately by the static
Withdrawal translator.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open Shieldd.GnarkFormal

{"\n\n".join(group_structures)}

structure WithdrawalExactProviders (rho : Nat → DeployedF) : Prop where
{"\n".join(aggregate_fields)}

/-- Exhaustive stable grouping of every exact provider used by refinement. -/
theorem withdrawalExactProviders
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    WithdrawalExactProviders rho := by
  exact {{
{"\n".join(constructors)}
  }}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def _withdrawal_core_provider_seats(
    plan: WithdrawalRefinementPlan,
) -> dict[str, tuple[tuple[int, int], ...]]:
    """Derive every local seat used by the 22 core Withdrawal adapters."""

    bindings = plan.bindings
    compress_coefficients = (MODULUS_MINUS_ONE, "1")

    def single(name: str) -> int:
        return _single_binding_wire(bindings, name)

    def vector(name: str, count: int) -> tuple[int, ...]:
        return _binding_wire_vector(bindings, name, count)

    def lc(name: str, coefficients: tuple[str, ...]) -> tuple[int, ...]:
        return _binding_lc_wires(bindings, name, coefficients)

    seats: dict[str, tuple[tuple[int, int], ...]] = {}

    for label, slot in (
        ("required_note_commitment", "spend0"),
        ("optional_note_commitment", "spend1"),
        ("change_note_commitment", "output0"),
    ):
        seats[label] = (
            (1, single(f"{slot}.note.blinding")),
            (7, single(f"{slot}.note.amount")),
            (13, single("outbound.asset_id")),
            *zip(
                (19, 20),
                lc("sender.div_gen_fq", compress_coefficients),
                strict=True,
            ),
            *zip(
                (26, 27),
                lc("sender.transmission_fq", compress_coefficients),
                strict=True,
            ),
            (33, single("sender.clue_key")),
            *zip(
                (408, 413, 418, 423, 428, 433, 438),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
        )

    seats["change_note_assert"] = (
        *zip(
            range(1, 8),
            lc(
                "output0.note.commitment.computed",
                NOTE_COMMITMENT_COEFFICIENTS,
            ),
            strict=True,
        ),
        (8, single("output0.note_commitment.claimed")),
    )
    seats["required_anchor_assert"] = (
        *zip(
            range(1, 6),
            lc("spend0.anchor.computed", POSEIDON_ROOT_COEFFICIENTS),
            strict=True,
        ),
        (6, single("anchor")),
    )
    seats["optional_anchor_assert"] = (
        (1, single("spend1.is_dummy")),
        (2, single("anchor")),
        *zip(
            range(3, 8),
            lc("spend1.anchor.computed", POSEIDON_ROOT_COEFFICIENTS),
            strict=True,
        ),
    )

    path_locals = STATE_PATH_PROVIDER_LOCALS
    for label, slot in (
        ("required_state_path", "spend0"),
        ("optional_state_path", "spend1"),
    ):
        seats[label] = (
            *zip(
                range(1, 8),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
            (286, single(f"{slot}.state_proof.position")),
            *zip(
                path_locals,
                tuple(
                    vector(f"{slot}.state_proof.path", 72)[index]
                    for index in STATE_PATH_LEVEL_REVERSAL
                ),
                strict=True,
            ),
            *zip(
                (8978, 8983, 8988, 8993, 8998),
                lc(f"{slot}.anchor.computed", POSEIDON_ROOT_COEFFICIENTS),
                strict=True,
            ),
        )

    for label, slot in (
        ("required_nullifier", "spend0"),
        ("optional_nullifier", "spend1"),
    ):
        seats[label] = (
            (1, single("auth.nk")),
            *zip(
                range(7, 14),
                lc(
                    f"{slot}.note.commitment.computed",
                    NOTE_COMMITMENT_COEFFICIENTS,
                ),
                strict=True,
            ),
            (19, single(f"{slot}.state_proof.position")),
            *zip(
                (304, 309, 314, 319),
                lc(f"{slot}.nullifier.real", NULLIFIER_COEFFICIENTS),
                strict=True,
            ),
        )

    seats["optional_is_dummy_boolean"] = (
        (1, single("spend1.is_dummy")),
    )
    seats["optional_nullifier_assert"] = (
        (1, single("spend1.nullifier.claimed")),
        *zip(
            (2, 3),
            lc("spend1.nullifier.selected", ("1", "1")),
            strict=True,
        ),
    )
    selected = lc("spend1.nullifier.selected", ("1", "1"))
    seats["optional_nullifier_mux"] = (
        (1, single("spend1.is_dummy")),
        *zip(
            (2, 3, 4, 5),
            lc("spend1.nullifier.real", NULLIFIER_COEFFICIENTS),
            strict=True,
        ),
        (6, selected[0]),
        *zip(
            (7, 8, 9, 10),
            lc("spend1.nullifier.synthetic", NULLIFIER_COEFFICIENTS),
            strict=True,
        ),
        (11, selected[1]),
    )
    seats["optional_amount_zero"] = (
        (1, single("spend1.note.amount")),
        (2, single("spend1.is_dummy")),
    )

    for label, point, compressed in (
        (
            "sender_div_gen_compress",
            "sender.div_gen",
            "sender.div_gen_fq",
        ),
        (
            "required_rk_compress",
            "spend0.rk.claimed",
            "spend0.rk.compressed",
        ),
        (
            "optional_rk_compress",
            "spend1.rk.claimed",
            "spend1.rk.compressed",
        ),
    ):
        point_wires = vector(point, 2)
        seats[label] = (
            (1, point_wires[0]),
            (3, point_wires[1]),
            *zip(
                (365, 705),
                lc(compressed, compress_coefficients),
                strict=True,
            ),
        )

    auth_ak = vector("auth.ak", 2)
    for label, slot in (
        ("required_rvk", "spend0"),
        ("optional_rvk", "spend1"),
    ):
        computed = vector(f"{slot}.rk.computed", 2)
        seats[label] = (
            (252, single(f"{slot}.auth_randomizer")),
            (1807, auth_ak[0]),
            (1808, auth_ak[1]),
            (1813, computed[0]),
            (1814, computed[1]),
        )

    required_computed = vector("spend0.rk.computed", 2)
    required_claimed = vector("spend0.rk.claimed", 2)
    seats["required_rk_equivalent"] = (
        (1, required_computed[0]),
        (2, required_claimed[1]),
        (4, required_claimed[0]),
        (5, required_computed[1]),
    )
    optional_computed = vector("spend1.rk.computed", 2)
    optional_claimed = vector("spend1.rk.claimed", 2)
    seats["optional_rk_equivalent"] = (
        (1, single("spend1.is_dummy")),
        (2, optional_computed[0]),
        (3, optional_claimed[1]),
        (5, optional_claimed[0]),
        (6, optional_computed[1]),
    )

    if tuple(seats) != WITHDRAWAL_CORE_PROVIDER_LABELS:
        raise ValueError("Withdrawal core provider inventory drifted")
    for label, expected in seats.items():
        if len(dict(expected)) != len(expected):
            raise ValueError(
                f"Withdrawal {label} has duplicate audited local seats"
            )
    return seats


def _validate_withdrawal_core_provider_seats(
    plan: WithdrawalRefinementPlan,
) -> dict[str, tuple[tuple[int, int], ...]]:
    """Fail closed unless every core provider has its audited exact seats."""

    seats = _withdrawal_core_provider_seats(plan)
    for label, expected in seats.items():
        _require_seats(
            plan.segments[label],
            dict(expected),
            f"Withdrawal core {label}",
        )
    return seats


def _withdrawal_core_semantic_provider(segment: dict) -> str:
    provider = segment.get("proof_template_id")
    operation = segment.get("op", "")
    if not _valid_provider_id(provider, operation):
        raise ValueError(
            "Withdrawal core adapter selected a malformed provider ID"
        )
    return "Deployed.Templates.Semantics." + core.template_name(provider)


def _withdrawal_semantic_import(segment: dict) -> str:
    """Return the explicit Lean module owning a Withdrawal provider."""

    return (
        "ShielddGnarkFormal."
        + _withdrawal_core_semantic_provider(segment)
    )


def _withdrawal_core_path_equality(
    label: str, slot: str, stable: str
) -> str:
    path_lemmas = core.lower_camel(label)
    bullets = []
    for index in range(72):
        level, sibling = divmod(index, 3)
        local = (291, 293, 296)[sibling] + 363 * level
        path_index = 3 * (23 - level) + sibling
        bullets.append(
            "  · change "
            f"{stable}Valuation rho {local} = "
            f"{slot}StateProofPath{path_index} rho\n"
            f"    exact {path_lemmas}Path{path_index} rho"
        )
    return f"""\
/-- The provider-local state path is the direct compiler-labelled path. -/
theorem {path_lemmas}ProviderPath_eq
    (rho : Nat → DeployedF) :
    StateMembership925Bridge.segmentPath ({stable}Valuation rho) =
      Deployed.ShieldedIcs20WithdrawalRefinement.C.{
          "requiredPath" if slot == "spend0" else "optionalPath"
      } rho := by
  funext level sibling
  rcases level with ⟨level, level_lt⟩
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling
{"\n".join(bullets)}"""


def render_withdrawal_core_semantic_seams(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the deployment-owned boundary below the static translator."""

    plan = _validate_withdrawal_refinement_plan(ir, constraint_manifest)
    seats_by_label = _validate_withdrawal_core_provider_seats(plan)
    specs = {
        spec.label: spec
        for spec in WITHDRAWAL_TRACE_SPECS
        if spec.label in WITHDRAWAL_CORE_PROVIDER_LABELS
    }
    if set(specs) != set(WITHDRAWAL_CORE_PROVIDER_LABELS):
        raise ValueError("Withdrawal core trace/provider join drifted")
    provider_imports = "\n".join(
        f"import {module}"
        for module in dict.fromkeys(
            _withdrawal_semantic_import(plan.segments[label])
            for label in WITHDRAWAL_CORE_PROVIDER_LABELS
        )
    )

    declarations = []
    for label in WITHDRAWAL_CORE_PROVIDER_LABELS:
        spec = specs[label]
        segment = plan.segments[label]
        index = segment["index"]
        stable = core.camel(label)
        lower = core.lower_camel(label)
        provider = _withdrawal_core_semantic_provider(segment)
        exact_field = core.lower_camel(spec.label)
        declarations.append(f"""\
/-- Stable deployed valuation for the `{label}` exact provider. -/
def {stable}Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg{index}.localRho rho

/-- Stable semantic proposition certified by `{label}`. -/
def {stable}SemanticSpec (rho : Nat → DeployedF) : Prop :=
  {provider}.spec ({stable}Valuation rho)

/-- The `{label}` semantic proposition follows only from exact facts. -/
theorem {lower}SemanticSpec_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    {stable}SemanticSpec rho := by
  change {provider}.spec (Seg{index}.localRho rho)
  exact
    (withdrawalExactProviders rho facts).{spec.fact}.{exact_field}""")
        if label in {"required_nullifier", "optional_nullifier"}:
            declarations.append(f"""\
/-- Stable name for the state-commitment LC consumed by `{label}`. -/
def {stable}StateCommitment (rho : Nat → DeployedF) : DeployedF :=
  {provider}.stateCommitment ({stable}Valuation rho)""")

        path_slot = (
            "spend0" if label == "required_state_path"
            else "spend1" if label == "optional_state_path"
            else None
        )
        path_local_to_index = {}
        if path_slot is not None:
            path_local_to_index = {
                base + 363 * level:
                    3 * (23 - level) + sibling
                for level in range(24)
                for sibling, base in enumerate((291, 293, 296))
            }
        for local, deployed_wire in seats_by_label[label]:
            path_position = path_local_to_index.get(local)
            if path_position is None:
                declarations.append(f"""\
/-- Audited local-to-deployed seating for `{label}` local {local}. -/
theorem {lower}At{local}
    (rho : Nat → DeployedF) :
    {stable}Valuation rho {local} = rho {deployed_wire} := by
  simp only [
    {stable}Valuation, Seg{index}.localRho,
    Deployed.Templates.seated]
  rw [show Seg{index}.wireSeating {local} = {deployed_wire} by
    decide +kernel]""")
            else:
                accessor = f"{path_slot}StateProofPath{path_position}"
                declarations.append(f"""\
/-- Audited path accessor for `{label}` element {path_position}. -/
theorem {lower}Path{path_position}
    (rho : Nat → DeployedF) :
    {stable}Valuation rho {local} = {accessor} rho := by
  simp only [
    {stable}Valuation, Seg{index}.localRho,
    Deployed.Templates.seated,
    {accessor}, {accessor}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    zero_add, one_mul, add_zero]
  rw [show Seg{index}.wireSeating {local} = {deployed_wire} by
    decide +kernel]""")
        if path_slot is not None:
            declarations.append(
                _withdrawal_core_path_equality(label, path_slot, stable)
            )
        if label in {"required_nullifier", "optional_nullifier"}:
            spend = "spend0" if label.startswith("required") else "spend1"
            accessor_names = ", ".join(
                f"{lower}At{local}" for local in range(7, 14)
            )
            declarations.append(f"""\
/-- The `{label}` provider consumes the compiler-labelled note commitment. -/
theorem {lower}StateCommitment_eq
    (rho : Nat → DeployedF) :
    {stable}StateCommitment rho =
      {spend}NoteCommitmentComputed rho := by
  simp only [
    {stable}StateCommitment, {provider}.stateCommitment,
    {spend}NoteCommitmentComputed,
    {spend}NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {accessor_names},
    zero_add, one_mul, add_zero]
  ring""")

    change_assert = _withdrawal_core_semantic_provider(
        plan.segments["change_note_assert"]
    )
    required_anchor_assert = _withdrawal_core_semantic_provider(
        plan.segments["required_anchor_assert"]
    )
    optional_anchor_assert = _withdrawal_core_semantic_provider(
        plan.segments["optional_anchor_assert"]
    )
    optional_dummy_wire = _single_binding_wire(
        plan.bindings, "spend1.is_dummy"
    )
    declarations.append(f"""\
/-- The change note's public commitment equals its computed hash output. -/
theorem changeNoteCommitmentAsserted_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    output0NoteCommitmentClaimed rho =
      output0NoteCommitmentComputed rho := by
  have h := changeNoteAssertSemanticSpec_of_exact rho facts
  unfold ChangeNoteAssertSemanticSpec {change_assert}.spec at h
  simp only [
    one_mul,
    changeNoteAssertAt1, changeNoteAssertAt2,
    changeNoteAssertAt3, changeNoteAssertAt4,
    changeNoteAssertAt5, changeNoteAssertAt6,
    changeNoteAssertAt7, changeNoteAssertAt8
  ] at h
  simp only [
    output0NoteCommitmentClaimed, output0NoteCommitmentClaimedLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

/-- The required state-path root is bound to the action anchor. -/
theorem requiredAnchorAsserted_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    anchor rho = spend0AnchorComputed rho := by
  have h := requiredAnchorAssertSemanticSpec_of_exact rho facts
  unfold RequiredAnchorAssertSemanticSpec
    {required_anchor_assert}.spec at h
  simp only [
    one_mul,
    requiredAnchorAssertAt1, requiredAnchorAssertAt2,
    requiredAnchorAssertAt3, requiredAnchorAssertAt4,
    requiredAnchorAssertAt5, requiredAnchorAssertAt6
  ] at h
  simp only [
    anchor, anchorLC, spend0AnchorComputed, spend0AnchorComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ]
  simpa only [add_assoc] using h

/-- A real optional spend's state-path root is bound to the action anchor. -/
theorem optionalAnchorAsserted_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    anchor rho = spend1AnchorComputed rho := by
  have h := optionalAnchorAssertSemanticSpec_of_exact rho facts
  unfold OptionalAnchorAssertSemanticSpec
    {optional_anchor_assert}.spec
    {optional_anchor_assert}.guard
    {optional_anchor_assert}.residual at h
  simp only [
    optionalAnchorAssertAt1, optionalAnchorAssertAt2,
    optionalAnchorAssertAt3, optionalAnchorAssertAt4,
    optionalAnchorAssertAt5, optionalAnchorAssertAt6,
    optionalAnchorAssertAt7
  ] at h
  have hrealGlobal : rho {optional_dummy_wire} = 0 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual
    ] using real
  rcases h with disabled | enabled
  · rw [hrealGlobal] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 (by linear_combination disabled)).elim
  · simp only [
      anchor, anchorLC, spend1AnchorComputed, spend1AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      zero_add, one_mul, add_zero
    ]
    linear_combination -enabled""")

    optional_nullifier_mux = _withdrawal_core_semantic_provider(
        plan.segments["optional_nullifier_mux"]
    )
    optional_amount_zero = _withdrawal_core_semantic_provider(
        plan.segments["optional_amount_zero"]
    )
    required_rk_equivalent = _withdrawal_core_semantic_provider(
        plan.segments["required_rk_equivalent"]
    )
    optional_rk_equivalent = _withdrawal_core_semantic_provider(
        plan.segments["optional_rk_equivalent"]
    )
    declarations.append(f"""\
/-- The public optional nullifier equals the mux output. -/
theorem optionalNullifierClaimed_eq_selected_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend1NullifierClaimed rho = spend1NullifierSelected rho := by
  have h := optionalNullifierAssertSemanticSpec_of_exact rho facts
  simpa [
    OptionalNullifierAssertSemanticSpec,
    spend1NullifierClaimed, spend1NullifierClaimedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    optionalNullifierAssertAt1, optionalNullifierAssertAt2,
    optionalNullifierAssertAt3
  ] using h.symm

/-- A real optional spend selects its computed nullifier. -/
theorem optionalNullifierClaimed_eq_real_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    spend1NullifierClaimed rho = spend1NullifierReal rho := by
  have h := optionalNullifierMuxSemanticSpec_of_exact rho facts
  simp only [
    OptionalNullifierMuxSemanticSpec,
    {optional_nullifier_mux}.spec,
    optionalNullifierMuxAt1, optionalNullifierMuxAt2,
    optionalNullifierMuxAt3, optionalNullifierMuxAt4,
    optionalNullifierMuxAt5, optionalNullifierMuxAt6,
    optionalNullifierMuxAt7, optionalNullifierMuxAt8,
    optionalNullifierMuxAt9, optionalNullifierMuxAt10,
    optionalNullifierMuxAt11
  ] at h
  have hselected :=
    optionalNullifierClaimed_eq_selected_of_exact rho facts
  simp only [
    spend1NullifierClaimed, spend1NullifierClaimedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1NullifierReal, spend1NullifierRealLC,
    spend1IsDummy, spend1IsDummyLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ] at hselected ⊢
  have hrealGlobal : rho {optional_dummy_wire} = 0 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual
    ] using real
  simp [hrealGlobal] at h
  linear_combination hselected + h.1 + h.2

/-- A dummy optional spend selects its synthetic nullifier. -/
theorem optionalNullifierClaimed_eq_synthetic_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NullifierClaimed rho = spend1NullifierSynthetic rho := by
  have h := optionalNullifierMuxSemanticSpec_of_exact rho facts
  simp only [
    OptionalNullifierMuxSemanticSpec,
    {optional_nullifier_mux}.spec,
    optionalNullifierMuxAt1, optionalNullifierMuxAt2,
    optionalNullifierMuxAt3, optionalNullifierMuxAt4,
    optionalNullifierMuxAt5, optionalNullifierMuxAt6,
    optionalNullifierMuxAt7, optionalNullifierMuxAt8,
    optionalNullifierMuxAt9, optionalNullifierMuxAt10,
    optionalNullifierMuxAt11
  ] at h
  have hselected :=
    optionalNullifierClaimed_eq_selected_of_exact rho facts
  simp only [
    spend1NullifierClaimed, spend1NullifierClaimedLC,
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1NullifierSynthetic, spend1NullifierSyntheticLC,
    spend1IsDummy, spend1IsDummyLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero
  ] at hselected ⊢
  have hdummyGlobal : rho {optional_dummy_wire} = 1 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual
    ] using dummy
  simp [hdummyGlobal] at h
  linear_combination hselected + h.1 + h.2

/-- A dummy optional spend has zero amount. -/
theorem optionalAmount_eq_zero_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NoteAmount rho = 0 := by
  have h := optionalAmountZeroSemanticSpec_of_exact rho facts
  simp only [
    OptionalAmountZeroSemanticSpec,
    {optional_amount_zero}.spec,
    {optional_amount_zero}.guard,
    {optional_amount_zero}.residual,
    optionalAmountZeroAt1, optionalAmountZeroAt2
  ] at h
  rcases h with amountZero | flagZero
  · simpa [
      spend1NoteAmount, spend1NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual
    ] using amountZero
  · have hdummyGlobal : rho {optional_dummy_wire} = 1 := by
      simpa [
        spend1IsDummy, spend1IsDummyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual
      ] using dummy
    rw [hdummyGlobal] at flagZero
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 flagZero).elim

/-- The required computed and claimed randomized keys are equivalent. -/
theorem requiredRkEquivalentSpec_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have h := requiredRkEquivalentSemanticSpec_of_exact rho facts
  simpa [
    RequiredRkEquivalentSemanticSpec,
    {required_rk_equivalent}.spec,
    Decaf377Assumptions.AssertEquivalentSpec,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    requiredRkEquivalentAt1, requiredRkEquivalentAt2,
    requiredRkEquivalentAt4, requiredRkEquivalentAt5
  ] using h

/-- A real optional spend's computed and claimed randomized keys are equivalent. -/
theorem optionalRkEquivalentSpec_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho)
    (real : spend1IsDummy rho = 0) :
    Decaf377Assumptions.AssertEquivalentSpec
      ⟨spend1RkComputed0 rho, spend1RkComputed1 rho⟩
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  have h := optionalRkEquivalentSemanticSpec_of_exact rho facts
  simp only [
    OptionalRkEquivalentSemanticSpec,
    {optional_rk_equivalent}.spec,
    {optional_rk_equivalent}.selectorIsBoolean,
    {optional_rk_equivalent}.selector,
    {optional_rk_equivalent}.guard,
    {optional_rk_equivalent}.leftCrossProduct,
    {optional_rk_equivalent}.rightCrossProduct,
    optionalRkEquivalentAt1, optionalRkEquivalentAt2,
    optionalRkEquivalentAt3, optionalRkEquivalentAt5,
    optionalRkEquivalentAt6
  ] at h
  rcases h.2 with disabled | equal
  · have hselector : rho {optional_dummy_wire} = 0 := by
      simpa [
        spend1IsDummy, spend1IsDummyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual
      ] using real
    rw [hselector] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 (by linear_combination disabled)).elim
  · simpa [
      Decaf377Assumptions.AssertEquivalentSpec,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      spend1RkClaimed0, spend1RkClaimed0LC,
      spend1RkClaimed1, spend1RkClaimed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual
    ] using equal""")

    divgen_segment = plan.segments["sender_div_gen_compress"]
    divgen_provider = _withdrawal_core_semantic_provider(divgen_segment)
    declarations.append(f"""\
/-- Exact diversified-generator compression, upstream of all DTK seams. -/
theorem senderDivGenCompressedSpec_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      (senderDivGenFq rho) := by
  have h := senderDivGenCompressSemanticSpec_of_exact rho facts
  simpa [
    SenderDivGenCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {divgen_provider}.spec,
    {divgen_provider}.inputX,
    {divgen_provider}.inputY,
    {divgen_provider}.templateRho,
    senderDivGen0, senderDivGen0LC,
    senderDivGen1, senderDivGen1LC,
    senderDivGenFq, senderDivGenFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    senderDivGenCompressAt1, senderDivGenCompressAt3,
    senderDivGenCompressAt365, senderDivGenCompressAt705,
    negOne, semanticNegOne, sub_eq_add_neg, add_comm] using h""")
    for label, spend in (
        ("required_rk_compress", "spend0"),
        ("optional_rk_compress", "spend1"),
    ):
        segment = plan.segments[label]
        provider = _withdrawal_core_semantic_provider(segment)
        stable = core.camel(label)
        lower = core.lower_camel(label)
        declarations.append(f"""\
/-- Exact compressed randomized verification key for `{label}`. -/
theorem {lower}Spec_of_exact
    (rho : Nat → DeployedF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨{spend}RkClaimed0 rho, {spend}RkClaimed1 rho⟩
      ({spend}RkCompressed rho) := by
  have h := {lower}SemanticSpec_of_exact rho facts
  simpa [
    {stable}SemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {provider}.spec, {provider}.inputX, {provider}.inputY,
    {provider}.templateRho,
    {spend}RkClaimed0, {spend}RkClaimed0LC,
    {spend}RkClaimed1, {spend}RkClaimed1LC,
    {spend}RkCompressed, {spend}RkCompressedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {lower}At1, {lower}At3,
    {lower}At365, {lower}At705,
    negOne, semanticNegOne, sub_eq_add_neg, add_comm] using h""")

    return f"""import Lean.Elab.Tactic.Omega
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.ExactProviders
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.RefinementAction
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.StateMembership925Bridge
{provider_imports}

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-!
Deployment-owned exact-provider semantics for the 21 providers consumed by
the 22 core Withdrawal adapters. Segment IDs, provider identities, local
geometry, and deployed wire seats terminate in this generated module.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal
open Protocol

attribute [-instance] ZMod.instField
private local instance choiceFreeWithdrawalCoreCommRing :
    CommRing DeployedF :=
  ZMod.commRing _

private theorem negOne :
    ({MODULUS_MINUS_ONE} : DeployedF) = -1 := by
  decide +kernel

private theorem semanticNegOne :
    ({MODULUS_MINUS_ONE} : SemanticF) = -1 := by
  decide +kernel

{"\n\n".join(declarations)}

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def render_transfer_refinement_action(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the compiler-owned witness projection into Transfer.Action."""

    plan = _validate_transfer_refinement_plan(ir, constraint_manifest)
    _validate_state_path_projection(
        plan,
        segment_label="required_state_path",
        binding_name="spend0.state_proof.path",
        circuit_label="Transfer required",
    )
    _validate_state_path_projection(
        plan,
        segment_label="optional_state_path",
        binding_name="spend1.state_proof.path",
        circuit_label="Transfer optional",
    )
    return f"""import Lean.Elab.Tactic.Omega
import ShielddGnarkFormal.Deployed.Contracts.Transfer.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.Transfer.SemanticBindings
import ShielddGnarkFormal.Protocol.Transfer.Concrete
import ShielddGnarkFormal.Protocol.Transfer.Refinement

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Compiler-authenticated Transfer action projection.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.TransferRefinement.C

open Shieldd.GnarkFormal
open Protocol.Transfer
open Deployed.Contracts.Transfer

def directPath16
    (values : Fin 48 → DeployedF) : Protocol.Common.Path16 :=
  fun level sibling =>
    values ⟨3 * level.val + sibling.val, by omega⟩

def assetPath (rho : Nat → DeployedF) : Protocol.Common.Path16 :=
  directPath16 (assetPathAt rho)

def senderPath (rho : Nat → DeployedF) : Protocol.Common.Path16 :=
  directPath16 (senderPathAt rho)

def receiverPath (rho : Nat → DeployedF) : Protocol.Common.Path16 :=
  directPath16 (output0RecipientPathAt rho)

def statePath24
    (values : Fin 72 → DeployedF) : Protocol.Common.Path24 :=
  fun level sibling =>
    values ⟨3 * (23 - level.val) + sibling.val, by omega⟩

def requiredPath (rho : Nat → DeployedF) : Protocol.Common.Path24 :=
  statePath24 (spend0StateProofPathAt rho)

def optionalPath (rho : Nat → DeployedF) : Protocol.Common.Path24 :=
  statePath24 (spend1StateProofPathAt rho)

def sender (rho : Nat → DeployedF) : Address DeployedF :=
  {{
    diversifiedGenerator := ⟨senderDivGen0 rho, senderDivGen1 rho⟩
    diversifiedGeneratorEncoding := senderDivGenFq rho
    transmission :=
      ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
    transmissionEncoding := senderTransmissionFq rho
    clueKey := senderClueKey rho
  }}

def receiverAddress (rho : Nat → DeployedF) : Address DeployedF :=
  {{
    diversifiedGenerator :=
      ⟨output0RecipientDivGen0 rho, output0RecipientDivGen1 rho⟩
    diversifiedGeneratorEncoding := output0RecipientDivGenFq rho
    transmission :=
      ⟨output0RecipientTransmission0 rho,
       output0RecipientTransmission1 rho⟩
    transmissionEncoding := output0RecipientTransmissionFq rho
    clueKey := output0NoteClueKey rho
  }}

def authorization (rho : Nat → DeployedF) : Authorization DeployedF :=
  {{
    authorizationKey := ⟨authAk0 rho, authAk1 rho⟩
    nullifierKey := authNk rho
    ivkReduced := authIvkReduced rho
    ivkQuotientA := authIvkQuotientA rho
  }}

def requiredNote (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := spend0NoteBlinding rho
    amount := spend0NoteAmount rho
    assetId := sharedAssetId rho
    owner := sender rho
    commitment := spend0NoteCommitmentComputed rho
  }}

def required (rho : Nat → DeployedF) :
    RealSpend DeployedF Protocol.Common.Path24 :=
  {{
    note := requiredNote rho
    position := spend0StateProofPosition rho
    path := requiredPath rho
    nullifier := spend0NullifierClaimed rho
    randomizedVerificationKey :=
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩
    randomizedVerificationKeyEncoding := spend0RkCompressed rho
    authRandomizer := spend0AuthRandomizer rho
  }}

def optionalRealNote (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := spend1NoteBlinding rho
    amount := spend1NoteAmount rho
    assetId := sharedAssetId rho
    owner := sender rho
    commitment := spend1NoteCommitmentComputed rho
  }}

def optionalReal (rho : Nat → DeployedF) :
    RealSpend DeployedF Protocol.Common.Path24 :=
  {{
    note := optionalRealNote rho
    position := spend1StateProofPosition rho
    path := optionalPath rho
    nullifier := spend1NullifierClaimed rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizedVerificationKeyEncoding := spend1RkCompressed rho
    authRandomizer := spend1AuthRandomizer rho
  }}

def optionalDummy (rho : Nat → DeployedF) : DummySpend DeployedF :=
  {{
    amount := spend1NoteAmount rho
    nullifier := spend1NullifierClaimed rho
    nullifierSeed := spend1DummyNullifierSeed rho
    randomizedVerificationKey :=
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩
    randomizedVerificationKeyEncoding := spend1RkCompressed rho
    authRandomizer := spend1AuthRandomizer rho
  }}

def optional (rho : Nat → DeployedF) :
    OptionalSpend DeployedF Protocol.Common.Path24 :=
  if spend1IsDummy rho = 1 then
    .dummy (optionalDummy rho)
  else
    .real (optionalReal rho)

def receiverNote (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := output0NoteBlinding rho
    amount := output0NoteAmount rho
    assetId := sharedAssetId rho
    owner := receiverAddress rho
    commitment := output0NoteCommitmentClaimed rho
  }}

def receiver (rho : Nat → DeployedF) : Output DeployedF :=
  {{ note := receiverNote rho }}

def changeNote (rho : Nat → DeployedF) : Note DeployedF :=
  {{
    blinding := output1NoteBlinding rho
    amount := output1NoteAmount rho
    assetId := sharedAssetId rho
    owner := sender rho
    commitment := output1NoteCommitmentClaimed rho
  }}

def change (rho : Nat → DeployedF) : Output DeployedF :=
  {{ note := changeNote rho }}

def assetLeaf (rho : Nat → DeployedF) : IndexedAssetLeaf DeployedF :=
  {{
    value := assetLeafValue rho
    nextIndex := assetLeafNextIndex rho
    nextValue := assetLeafNextValue rho
    dkPub := ⟨assetLeafDkPub0 rho, assetLeafDkPub1 rho⟩
    threshold := assetLeafThreshold rho
    slotCount := assetLeafSlotCount rho
    channelsHash := assetLeafChannelsHash rho
    ringPk := ⟨assetLeafRingPk0 rho, assetLeafRingPk1 rho⟩
    ringIdHash := assetLeafRingIdHash rho
    policyIdHash := assetLeafPolicyIdHash rho
    permissionHash := assetLeafPermissionHash rho
    resourceHash := assetLeafResourceHash rho
  }}

def assetProof (rho : Nat → DeployedF) :
    AssetProof DeployedF Protocol.Common.Path16 :=
  {{
    leaf := assetLeaf rho
    path := assetPath rho
    position := assetPosition rho
    isRegulated := isRegulated rho
  }}

def senderCompliance (rho : Nat → DeployedF) :
    ComplianceProof DeployedF Protocol.Common.Path16 :=
  {{
    address := sender rho
    assetId := sharedAssetId rho
    slotId := senderSlotId rho
    slotDerivation := senderSlotDerivation rho
    d := senderD rho
    path := senderPath rho
    position := senderPosition rho
  }}

def receiverCompliance (rho : Nat → DeployedF) :
    ComplianceProof DeployedF Protocol.Common.Path16 :=
  {{
    address := receiverAddress rho
    assetId := sharedAssetId rho
    slotId := output0RecipientSlotId rho
    slotDerivation := output0RecipientSlotDerivation rho
    d := output0RecipientD rho
    path := receiverPath rho
    position := output0RecipientPosition rho
  }}

def saltAt (rho : Nat → DeployedF) (index : Fin 5) : DeployedF :=
  if index.val = 0 then salt0 rho
  else if index.val = 1 then salt1 rho
  else if index.val = 2 then salt2 rho
  else if index.val = 3 then salt3 rho
  else salt4 rho

def metadata (rho : Nat → DeployedF) : ComplianceMetadata DeployedF :=
  {{
    senderSubjectDerivation := complianceMetadata0 rho
    outputSubjectDerivation := complianceMetadata1 rho
    ringIdHash := complianceMetadata2 rho
    policyIdHash := complianceMetadata3 rho
    resourceHash := complianceMetadata4 rho
    permissionHash := complianceMetadata5 rho
    targetTimestamp := complianceMetadata6 rho
    senderCoreSalt := complianceMetadata7 rho
    senderExtSalt := complianceMetadata8 rho
    outputCoreSalt := complianceMetadata9 rho
    outputExtSalt := complianceMetadata10 rho
  }}

def senderCore (rho : Nat → DeployedF) : CoreTier DeployedF :=
  {{
    epk := ⟨complianceSenderCoreEpk0 rho, complianceSenderCoreEpk1 rho⟩
    epkEncoding := complianceSenderCoreEpkFq rho
    c2 := complianceSenderCoreC2 rho
    ciphertext := complianceSenderCoreCiphertext rho
  }}

def senderExt (rho : Nat → DeployedF) : ExtTier DeployedF :=
  {{
    epk := ⟨complianceSenderExtEpk0 rho, complianceSenderExtEpk1 rho⟩
    epkEncoding := complianceSenderExtEpkFq rho
    c2 := complianceSenderExtC2 rho
    ciphertext := complianceSenderExtCiphertextAt rho
  }}

def outputCore (rho : Nat → DeployedF) : CoreTier DeployedF :=
  {{
    epk := ⟨complianceOutputCoreEpk0 rho, complianceOutputCoreEpk1 rho⟩
    epkEncoding := complianceOutputCoreEpkFq rho
    c2 := complianceOutputCoreC2 rho
    ciphertext := complianceOutputCoreCiphertext rho
  }}

def outputExt (rho : Nat → DeployedF) : ExtTier DeployedF :=
  {{
    epk := ⟨complianceOutputExtEpk0 rho, complianceOutputExtEpk1 rho⟩
    epkEncoding := complianceOutputExtEpkFq rho
    c2 := complianceOutputExtC2 rho
    ciphertext := complianceOutputExtCiphertextAt rho
  }}

def transcript (rho : Nat → DeployedF) : ComplianceTranscript DeployedF :=
  {{
    transferNonceRoot := complianceTransferNonceRoot rho
    senderRCore := complianceSenderRCore rho
    senderRExt := complianceSenderRExt rho
    outputRCore := complianceOutputRCore rho
    outputRExt := complianceOutputRExt rho
    isFlagged := isFlagged rho
    salts := saltAt rho
    detectionCiphertext := complianceDetectionCiphertextAt rho
    metadata := metadata rho
    senderCore := senderCore rho
    senderExt := senderExt rho
    outputCore := outputCore rho
    outputExt := outputExt rho
  }}

def action (rho : Nat → DeployedF) :
    Action DeployedF Protocol.Common.Path24 Protocol.Common.Path16 :=
  {{
    authorization := authorization rho
    sender := sender rho
    assetId := sharedAssetId rho
    required := required rho
    optional := optional rho
    receiver := receiver rho
    change := change rho
    assetProof := assetProof rho
    senderCompliance := senderCompliance rho
    receiverCompliance := receiverCompliance rho
    transcript := transcript rho
    anchor := anchor rho
    assetAnchor := assetAnchor rho
    complianceAnchor := complianceAnchor rho
    targetTimestamp := targetTimestamp rho
    balanceCommitmentEncoding := balanceCommitmentFq rho
    balanceBlinding := actionBalanceBlinding rho
    publicStatementHash := claimedStatementHash rho
  }}

end Shieldd.GnarkFormal.Deployed.TransferRefinement.C
"""


def _transfer_exact_field(spec: ExactTraceSpec, segment: dict) -> str:
    field = core.lower_camel(spec.label)
    index = segment["index"]
    return f"  {field} : Seg{index}.contract.spec rho"


def _transfer_exact_projection(spec: ExactTraceSpec, segment: dict) -> str:
    stable = core.lower_camel(spec.label)
    exact = f"{core.camel(spec.op)}Seg{segment['index']}"
    return f"      {stable} := facts.exact.{exact}"


def _transfer_semantic_provider(segment: dict) -> str:
    """Return the certified local semantic-provider namespace."""

    provider = segment.get("proof_template_id")
    if not _valid_provider_id(provider, segment.get("op", "")):
        raise ValueError(
            "Transfer semantic adapter selected a malformed provider ID"
        )
    return (
        "Deployed.Templates.Semantics."
        + core.template_name(provider)
    )


def _transfer_semantic_import(segment: dict) -> str:
    """Return the explicit Lean module owning one semantic provider."""

    namespace = _transfer_semantic_provider(segment)
    return (
        "ShielddGnarkFormal."
        + namespace
    )


def _transfer_semantic_valuation(spec: ExactTraceSpec, segment: dict) -> str:
    """Render one stable name for a provider's deployed local valuation."""

    name = core.camel(spec.label)
    index = segment["index"]
    return f"""\
/-- Deployed seating for the `{spec.label}` certified local semantics. -/
def {name}Valuation (rho : Nat → DeployedF) : Nat → DeployedF :=
  Seg{index}.localRho rho

/-- Certified local semantics for the `{spec.label}` source operation. -/
def {name}SemanticSpec (rho : Nat → DeployedF) : Prop :=
  {_transfer_semantic_provider(segment)}.spec ({name}Valuation rho)"""


def _transfer_semantic_seat_accessors(
    spec: ExactTraceSpec,
    segment: dict,
    audited_seats: dict[str, tuple[dict[int, int], str]],
) -> str:
    """Render high-risk protocol seating behind stable names.

    Large curve gadgets represent a point with hundreds of internal local
    wires. Emitting a theorem for every repeated semantic-support wire would
    duplicate thousands of declarations and make the adapter itself an
    architecture hazard. Only the independently audited protocol-facing
    seats are exposed here; composite curve facts terminate their geometry in
    dedicated generated seams.
    """

    entry = audited_seats.get(spec.label)
    if entry is None:
        return ""
    seats, _ = entry
    stable = core.camel(spec.label)
    lower = core.lower_camel(spec.label)
    index = segment["index"]
    declarations = []
    for local, deployed_wire in sorted(seats.items()):
        declarations.append(f"""\
/-- Audited action-facing seat for `{spec.label}` local {local}. -/
@[simp] theorem {lower}At{local}
    (rho : Nat → DeployedF) :
    {stable}Valuation rho {local} = rho {deployed_wire} := by
  simp only [
    {stable}Valuation, Seg{index}.localRho,
    Deployed.Templates.seated]
  rw [show Seg{index}.wireSeating {local} = {deployed_wire} by
    decide +kernel]""")
    return "\n\n".join(declarations)


def _transfer_semantic_field(spec: ExactTraceSpec) -> str:
    return (
        f"  {core.lower_camel(spec.label)} : "
        f"{core.camel(spec.label)}SemanticSpec rho"
    )


def _transfer_semantic_projection(
    spec: ExactTraceSpec, segment: dict
) -> str:
    provider = _transfer_semantic_provider(segment)
    fact = spec.fact
    field = core.lower_camel(spec.label)
    index = segment["index"]
    return f"""\
      {field} := by
        change {provider}.spec (Seg{index}.localRho rho)
        exact exactProviders.{fact}.{field}"""


def _transfer_semantic_helpers(plan: TransferRefinementPlan) -> str:
    """Render stable composite accessors used by the protocol translator."""

    helpers = []
    for label, slot, path in (
        ("required_state_path", "spend0", "requiredPath"),
        ("optional_state_path", "spend1", "optionalPath"),
    ):
        stable = core.camel(label)
        lower = core.lower_camel(label)
        bullets = []
        for case_index in range(72):
            level, sibling = divmod(case_index, 3)
            local = (291, 293, 296)[sibling] + 363 * level
            path_index = 3 * (23 - level) + sibling
            bullets.append(
                "  · change "
                f"{stable}Valuation rho {local} = "
                f"{slot}StateProofPath{path_index} rho\n"
                "    simpa only [\n"
                f"      {slot}StateProofPath{path_index},\n"
                f"      {slot}StateProofPath{path_index}LC,\n"
                "      StructuredLC.eval, StructuredLC.sumRuns,\n"
                "      StructuredLC.sumResidual, StrideRun.eval,\n"
                "      zero_add, one_mul, add_zero] using\n"
                f"      {lower}At{local} rho"
            )
        helpers.append(f"""\
/-- The `{label}` provider consumes the generated action path exactly. -/
theorem {lower}ProviderPath_eq
    (rho : Nat → DeployedF) :
    StateMembership925Bridge.segmentPath ({stable}Valuation rho) =
      Deployed.TransferRefinement.C.{path} rho := by
  funext level sibling
  rcases level with ⟨level, level_lt⟩
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling
{"\n".join(bullets)}""")

    for label, slot in (
        ("required_nullifier", "spend0"),
        ("optional_nullifier", "spend1"),
    ):
        stable = core.camel(label)
        lower = core.lower_camel(label)
        provider = _transfer_semantic_provider(plan.segments[label])
        accessor_names = ", ".join(
            f"{lower}At{local}" for local in range(7, 14)
        )
        helpers.append(f"""\
/-- Stable name for the note-commitment LC consumed by `{label}`. -/
def {stable}StateCommitment (rho : Nat → DeployedF) : DeployedF :=
  {provider}.stateCommitment ({stable}Valuation rho)

/-- `{label}` consumes the compiler-labelled note commitment. -/
theorem {lower}StateCommitment_eq
    (rho : Nat → DeployedF) :
    {stable}StateCommitment rho =
      {slot}NoteCommitmentComputed rho := by
  simp only [
    {stable}StateCommitment, {provider}.stateCommitment,
    {slot}NoteCommitmentComputed,
    {slot}NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {accessor_names},
    zero_add, one_mul, add_zero]
  ring""")

    for label, point, compressed in (
        ("required_rk_compress", "spend0RkClaimed", "spend0RkCompressed"),
        ("optional_rk_compress", "spend1RkClaimed", "spend1RkCompressed"),
        (
            "receiver_div_gen_compress",
            "output0RecipientDivGen",
            "output0RecipientDivGenFq",
        ),
        (
            "receiver_transmission_compress",
            "output0RecipientTransmission",
            "output0RecipientTransmissionFq",
        ),
    ):
        stable = core.camel(label)
        lower = core.lower_camel(label)
        provider = _transfer_semantic_provider(plan.segments[label])
        helpers.append(f"""\
/-- Exact Decaf compression certified by `{label}`. -/
theorem {lower}Spec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨{point}0 rho, {point}1 rho⟩ ({compressed} rho) := by
  have h := semantic.{lower}
  simp [
    {stable}SemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {provider}.spec, {provider}.inputX, {provider}.inputY,
    {provider}.templateRho,
    {point}0, {point}0LC, {point}1, {point}1LC,
    {compressed}, {compressed}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {lower}At1, {lower}At3,
    {lower}At365, {lower}At705,
    sub_eq_add_neg, add_comm] at h ⊢
  rw [transferNegOneLc]
  exact h""")

    receiver_zero_label = "receiver_amount_is_zero"
    receiver_zero_stable = core.camel(receiver_zero_label)
    receiver_zero_lower = core.lower_camel(receiver_zero_label)
    receiver_zero_provider = _transfer_semantic_provider(
        plan.segments[receiver_zero_label]
    )
    helpers.append(f"""\
/-- The receiver amount is nonzero by the certified is-zero assertion. -/
theorem receiverAmountNonzero_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output0NoteAmount rho ≠ 0 := by
  have hzero := semantic.{receiver_zero_lower}
  unfold {receiver_zero_stable}SemanticSpec at hzero
  have hflag := semantic.receiverNonzeroAssert
  unfold ReceiverNonzeroAssertSemanticSpec at hflag
  have hflagZero :
      {receiver_zero_stable}Valuation rho 3 = 0 := by
    simpa only [
      Deployed.Templates.Semantics.TAssertEq_ca693c9a644d7a101d49302f9052719ee7e0f45605900d8e80b3c59e6b2e2ddd.spec,
      one_mul,
      receiverNonzeroAssertAt1,
      {receiver_zero_lower}At3,
      eq_comm
    ] using hflag
  have hinput :
      {receiver_zero_stable}Valuation rho 1 =
        output0NoteAmount rho := by
    simpa only [
      output0NoteAmount, output0NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      {receiver_zero_lower}At1,
      zero_add, one_mul, add_zero]
  unfold {receiver_zero_provider}.spec at hzero
  rcases hzero with nonzero | zero
  · simpa only [hinput] using nonzero.1
  · have h01 : (0 : DeployedF) ≠ 1 := by decide
    exact (h01 (hflagZero.symm.trans zero.2)).elim""")

    synthetic_label = "optional_synthetic_nullifier"
    synthetic_stable = core.camel(synthetic_label)
    synthetic_lower = core.lower_camel(synthetic_label)
    synthetic_provider = _transfer_semantic_provider(
        plan.segments[synthetic_label]
    )
    helpers.append(f"""\
/-- The optional dummy nullifier is the certified Poseidon3 output. -/
theorem optionalSyntheticNullifierHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend1NullifierSynthetic rho =
      Poseidon377.hash3
        Protocol.Transfer.Concrete.syntheticDummyNullifierDomain
        (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1 := by
  have h := semantic.{synthetic_lower}
  calc
    spend1NullifierSynthetic rho =
        Deployed.Nullifier.s38_1
          ({synthetic_stable}Valuation rho 292)
          ({synthetic_stable}Valuation rho 297)
          ({synthetic_stable}Valuation rho 302)
          ({synthetic_stable}Valuation rho 307) := by
      simp only [
        spend1NullifierSynthetic, spend1NullifierSyntheticLC,
        Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        {synthetic_lower}At292, {synthetic_lower}At297,
        {synthetic_lower}At302, {synthetic_lower}At307,
        zero_add, one_mul, add_zero]
      ring
    _ = Poseidon377.hash3
          Protocol.Transfer.Concrete.syntheticDummyNullifierDomain
          (spend1DummyNullifierSeed rho)
          (spend1AuthRandomizer rho) 1 := by
      simpa only [
        {synthetic_stable}SemanticSpec,
        {synthetic_provider}.spec,
        {synthetic_provider}.Fixed.syntheticDummyNullifierDomainLit,
        Protocol.Transfer.Concrete.syntheticDummyNullifierDomain,
        Poseidon3Bridge.permSpec3,
        spend1DummyNullifierSeed, spend1DummyNullifierSeedLC,
        spend1AuthRandomizer, spend1AuthRandomizerLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual,
        {synthetic_lower}At1, {synthetic_lower}At7,
        zero_add, one_mul, add_zero] using h""")

    receiver_assert = _transfer_semantic_provider(
        plan.segments["receiver_note_assert"]
    )
    change_assert = _transfer_semantic_provider(
        plan.segments["change_note_assert"]
    )
    required_anchor_assert = _transfer_semantic_provider(
        plan.segments["required_anchor_assert"]
    )
    optional_anchor_assert = _transfer_semantic_provider(
        plan.segments["optional_anchor_assert"]
    )
    required_nullifier_assert = _transfer_semantic_provider(
        plan.segments["required_nullifier_assert"]
    )
    optional_nullifier_mux = _transfer_semantic_provider(
        plan.segments["optional_nullifier_mux"]
    )
    optional_amount_zero = _transfer_semantic_provider(
        plan.segments["optional_amount_zero"]
    )
    required_rk_equivalent = _transfer_semantic_provider(
        plan.segments["required_rk_equivalent"]
    )
    optional_rk_equivalent = _transfer_semantic_provider(
        plan.segments["optional_rk_equivalent"]
    )
    helpers.append(f"""\
/-- The receiver's public note commitment equals its computed hash output. -/
theorem receiverNoteClaimed_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output0NoteCommitmentClaimed rho =
      output0NoteCommitmentComputed rho := by
  have h := semantic.receiverNoteAssert
  unfold ReceiverNoteAssertSemanticSpec {receiver_assert}.spec at h
  simp only [
    one_mul,
    receiverNoteAssertAt1, receiverNoteAssertAt2,
    receiverNoteAssertAt3, receiverNoteAssertAt4,
    receiverNoteAssertAt5, receiverNoteAssertAt6,
    receiverNoteAssertAt7, receiverNoteAssertAt8
  ] at h
  simp only [
    output0NoteCommitmentClaimed, output0NoteCommitmentClaimedLC,
    output0NoteCommitmentComputed, output0NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  simpa only [add_assoc] using h

/-- The change output's public note commitment equals its computed hash. -/
theorem changeNoteClaimed_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    output1NoteCommitmentClaimed rho =
      output1NoteCommitmentComputed rho := by
  have h := semantic.changeNoteAssert
  unfold ChangeNoteAssertSemanticSpec {change_assert}.spec at h
  simp only [
    one_mul,
    changeNoteAssertAt1, changeNoteAssertAt2,
    changeNoteAssertAt3, changeNoteAssertAt4,
    changeNoteAssertAt5, changeNoteAssertAt6,
    changeNoteAssertAt7, changeNoteAssertAt8
  ] at h
  simp only [
    output1NoteCommitmentClaimed, output1NoteCommitmentClaimedLC,
    output1NoteCommitmentComputed, output1NoteCommitmentComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  simpa only [add_assoc] using h

/-- The required state-path root is bound to the action anchor. -/
theorem requiredAnchor_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    anchor rho = spend0AnchorComputed rho := by
  have h := semantic.requiredAnchorAssert
  unfold RequiredAnchorAssertSemanticSpec
    {required_anchor_assert}.spec at h
  simp only [
    one_mul,
    requiredAnchorAssertAt1, requiredAnchorAssertAt2,
    requiredAnchorAssertAt3, requiredAnchorAssertAt4,
    requiredAnchorAssertAt5, requiredAnchorAssertAt6
  ] at h
  simp only [
    anchor, anchorLC, spend0AnchorComputed, spend0AnchorComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    zero_add, one_mul, add_zero]
  simpa only [add_assoc] using h

/-- A real optional spend's state-path root is bound to the action anchor. -/
theorem optionalAnchor_eq_computed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    anchor rho = spend1AnchorComputed rho := by
  have h := semantic.optionalAnchorAssert
  unfold OptionalAnchorAssertSemanticSpec
    {optional_anchor_assert}.spec
    {optional_anchor_assert}.guard
    {optional_anchor_assert}.residual at h
  simp only [
    optionalAnchorAssertAt1, optionalAnchorAssertAt2,
    optionalAnchorAssertAt3, optionalAnchorAssertAt4,
    optionalAnchorAssertAt5, optionalAnchorAssertAt6,
    optionalAnchorAssertAt7] at h
  have hreal : rho 332 = 0 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using real
  rcases h with disabled | enabled
  · rw [hreal] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 (by linear_combination disabled)).elim
  · simp only [
      anchor, anchorLC, spend1AnchorComputed, spend1AnchorComputedLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, zero_add, one_mul, add_zero]
    symm
    linear_combination enabled

/-- The public required nullifier equals the real-nullifier output. -/
theorem requiredNullifierClaimed_eq_real_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    spend0NullifierClaimed rho = spend0NullifierReal rho := by
  have h := semantic.requiredNullifierAssert
  unfold RequiredNullifierAssertSemanticSpec
    {required_nullifier_assert}.spec at h
  simp [
    spend0NullifierClaimed, spend0NullifierClaimedLC,
    spend0NullifierReal, spend0NullifierRealLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    requiredNullifierAssertAt1, requiredNullifierAssertAt2,
    requiredNullifierAssertAt3, requiredNullifierAssertAt4,
    requiredNullifierAssertAt5] at h ⊢
  ring_nf at h ⊢
  exact h.symm

/-- In the real branch the optional mux selects the real nullifier. -/
theorem optionalNullifierSelected_eq_real_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    spend1NullifierSelected rho = spend1NullifierReal rho := by
  have h := semantic.optionalNullifierMux
  unfold OptionalNullifierMuxSemanticSpec
    {optional_nullifier_mux}.spec at h
  simp only [
    optionalNullifierMuxAt1, optionalNullifierMuxAt2,
    optionalNullifierMuxAt3, optionalNullifierMuxAt4,
    optionalNullifierMuxAt5, optionalNullifierMuxAt6,
    optionalNullifierMuxAt7, optionalNullifierMuxAt8,
    optionalNullifierMuxAt9, optionalNullifierMuxAt10,
    optionalNullifierMuxAt11] at h
  simp only [
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1NullifierReal, spend1NullifierRealLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  have hreal : rho 332 = 0 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using real
  simp [hreal] at h
  linear_combination h.1 + h.2

/-- In the dummy branch the optional mux selects the synthetic nullifier. -/
theorem optionalNullifierSelected_eq_synthetic_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NullifierSelected rho = spend1NullifierSynthetic rho := by
  have h := semantic.optionalNullifierMux
  unfold OptionalNullifierMuxSemanticSpec
    {optional_nullifier_mux}.spec at h
  simp only [
    optionalNullifierMuxAt1, optionalNullifierMuxAt2,
    optionalNullifierMuxAt3, optionalNullifierMuxAt4,
    optionalNullifierMuxAt5, optionalNullifierMuxAt6,
    optionalNullifierMuxAt7, optionalNullifierMuxAt8,
    optionalNullifierMuxAt9, optionalNullifierMuxAt10,
    optionalNullifierMuxAt11] at h
  simp only [
    spend1NullifierSelected, spend1NullifierSelectedLC,
    spend1NullifierSynthetic, spend1NullifierSyntheticLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, zero_add, one_mul, add_zero]
  have hdummy : rho 332 = 1 := by
    simpa [
      spend1IsDummy, spend1IsDummyLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using dummy
  simp [hdummy] at h
  linear_combination h.1 + h.2

/-- A dummy optional spend has zero amount. -/
theorem optionalDummyAmountZero_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (dummy : spend1IsDummy rho = 1) :
    spend1NoteAmount rho = 0 := by
  have h := semantic.optionalAmountZero
  unfold OptionalAmountZeroSemanticSpec
    {optional_amount_zero}.spec
    {optional_amount_zero}.guard
    {optional_amount_zero}.residual at h
  simp only [optionalAmountZeroAt1, optionalAmountZeroAt2] at h
  rcases h with amountZero | flagZero
  · simpa [
      spend1NoteAmount, spend1NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using amountZero
  · have hdummy : rho 332 = 1 := by
      simpa [
        spend1IsDummy, spend1IsDummyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual] using dummy
    rw [hdummy] at flagZero
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 flagZero).elim

/-- Required computed and claimed RVKs satisfy the certified cross ratio. -/
theorem requiredRkCrossRatio_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.AssertEquivalentSpec
      ⟨spend0RkComputed0 rho, spend0RkComputed1 rho⟩
      ⟨spend0RkClaimed0 rho, spend0RkClaimed1 rho⟩ := by
  have h := semantic.requiredRkEquivalent
  unfold RequiredRkEquivalentSemanticSpec
    {required_rk_equivalent}.spec at h
  simpa [
    Decaf377Assumptions.AssertEquivalentSpec,
    spend0RkComputed0, spend0RkComputed0LC,
    spend0RkComputed1, spend0RkComputed1LC,
    spend0RkClaimed0, spend0RkClaimed0LC,
    spend0RkClaimed1, spend0RkClaimed1LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual,
    requiredRkEquivalentAt1, requiredRkEquivalentAt2,
    requiredRkEquivalentAt4, requiredRkEquivalentAt5] using h

/-- A real optional spend's RVKs satisfy the certified cross ratio. -/
theorem optionalRkCrossRatio_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (real : spend1IsDummy rho = 0) :
    Decaf377Assumptions.AssertEquivalentSpec
      ⟨spend1RkComputed0 rho, spend1RkComputed1 rho⟩
      ⟨spend1RkClaimed0 rho, spend1RkClaimed1 rho⟩ := by
  have h := semantic.optionalRkEquivalent
  unfold OptionalRkEquivalentSemanticSpec
    {optional_rk_equivalent}.spec
    {optional_rk_equivalent}.selectorIsBoolean
    {optional_rk_equivalent}.selector
    {optional_rk_equivalent}.guard
    {optional_rk_equivalent}.leftCrossProduct
    {optional_rk_equivalent}.rightCrossProduct at h
  simp only [
    optionalRkEquivalentAt1, optionalRkEquivalentAt2,
    optionalRkEquivalentAt3, optionalRkEquivalentAt5,
    optionalRkEquivalentAt6] at h
  rcases h.2 with disabled | equal
  · have hselector : rho 332 = 0 := by
      simpa [
        spend1IsDummy, spend1IsDummyLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual] using real
    rw [hselector] at disabled
    have h10 : (1 : DeployedF) ≠ 0 := by decide
    exact (h10 (by linear_combination disabled)).elim
  · simpa [
      Decaf377Assumptions.AssertEquivalentSpec,
      spend1RkComputed0, spend1RkComputed0LC,
      spend1RkComputed1, spend1RkComputed1LC,
      spend1RkClaimed0, spend1RkClaimed0LC,
      spend1RkClaimed1, spend1RkClaimed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual] using equal""")
    return "\n\n".join(helpers)


def render_transfer_refinement_adapters(
    ir: dict, constraint_manifest: dict
) -> str:
    """Normalize all exact Transfer providers behind stable semantic names.

    Segment indices, provider digests, and local valuations belong in this
    generated layer.  The handwritten protocol composition consumes only the
    stable names emitted here, so a fresh extraction cannot silently preserve
    stale seating assumptions.
    """

    plan = _validate_transfer_refinement_plan(ir, constraint_manifest)
    audited_seats = _transfer_current_protocol_seats(plan)
    for label, entry in (
        _transfer_transcript_direct_protocol_seats(plan).items()
    ):
        if label in audited_seats:
            raise ValueError(
                f"Transfer semantic seat inventory overlaps at {label!r}"
            )
        audited_seats[label] = entry
    for label, entry in (
        _transfer_action_direct_protocol_seats(plan).items()
    ):
        if label in audited_seats:
            raise ValueError(
                f"Transfer semantic seat inventory overlaps at {label!r}"
            )
        audited_seats[label] = entry
    core_seats = _validate_transfer_core_provider_seats(plan)
    for label, seats in core_seats.items():
        if label in audited_seats:
            raise ValueError(
                f"Transfer semantic seat inventory overlaps at {label!r}"
            )
        audited_seats[label] = (
            dict(seats),
            f"Transfer {label} core protocol arguments",
        )
    provider_imports = "\n".join(
        f"import {module}"
        for module in dict.fromkeys(
            _transfer_semantic_import(plan.segments[spec.label])
            for spec in TRANSFER_TRACE_SPECS
        )
    )
    valuations = "\n\n".join(
        "\n\n".join((
            _transfer_semantic_valuation(
                spec, plan.segments[spec.label]
            ),
            _transfer_semantic_seat_accessors(
                spec, plan.segments[spec.label], audited_seats
            ),
        )).rstrip()
        for spec in TRANSFER_TRACE_SPECS
    )
    fields = "\n".join(
        _transfer_semantic_field(spec)
        for spec in TRANSFER_TRACE_SPECS
    )
    projections = "\n".join(
        _transfer_semantic_projection(spec, plan.segments[spec.label])
        for spec in TRANSFER_TRACE_SPECS
    )
    helpers = _transfer_semantic_helpers(plan)
    return f"""import Lean.Elab.Tactic.Omega
import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementSeams
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAction
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.Poseidon3Spec
import ShielddGnarkFormal.StateMembership925Bridge
{provider_imports}

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-!
Exact-to-semantic normalization for every source-authenticated Transfer
provider.  This is the only refinement layer allowed to mention deployed
segment indices, provider namespaces, or local valuations.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal

attribute [-instance] ZMod.instField
private local instance choiceFreeTransferRefinementAdaptersCommRing :
    CommRing DeployedF :=
  ZMod.commRing _

private theorem transferNegOne :
    ({MODULUS_MINUS_ONE} : DeployedF) = -1 := by
  decide +kernel

private theorem transferNegOneLc (x y : DeployedF) :
    y + ({MODULUS_MINUS_ONE} : DeployedF) * x = -x + y := by
  rw [transferNegOne]
  ring_nf

{valuations}

/--
Exhaustive certified local semantics for the 94 operations used by Transfer
protocol refinement.  Every field is produced from an exact relation provider;
there are no caller-supplied semantic premises.
-/
structure TransferSemanticProviders (rho : Nat → DeployedF) : Prop where
{fields}

/-- Normalize every exact provider without weakening or dropping a field. -/
theorem transferSemanticProviders_of_exact
    (rho : Nat → DeployedF)
    (exactProviders : TransferExactProviders rho) :
    TransferSemanticProviders rho := by
  exact {{
{projections}
  }}

{helpers}

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""


def render_transfer_refinement_seams(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render a stable, exact-provider interface with no caller premises."""

    plan = _validate_transfer_refinement_plan(ir, constraint_manifest)
    selectors = _validate_transfer_selector_rows(plan)
    specs_by_fact = {
        fact: [
            spec for spec in TRANSFER_TRACE_SPECS if spec.fact == fact
        ]
        for fact in TRANSFER_FACT_FIELDS
    }
    group_structures = []
    aggregate_fields = []
    constructors = []
    for fact, specs in specs_by_fact.items():
        structure = f"{core.camel(fact)}ExactProviders"
        fields = "\n".join(
            _transfer_exact_field(spec, plan.segments[spec.label])
            for spec in specs
        )
        group_structures.append(
            f"/-- Exact provider inventory for the `{fact}` obligation. -/\n"
            f"structure {structure} (rho : Nat → DeployedF) : Prop where\n"
            f"{fields}"
        )
        aggregate_fields.append(
            f"  {fact} : {structure} rho"
        )
        projections = "\n".join(
            _transfer_exact_projection(spec, plan.segments[spec.label])
            for spec in specs
        )
        constructors.append(
            f"    {fact} := {{\n{projections}\n    }}"
        )

    boolean = plan.segments["is_regulated_boolean"]
    nonzero = plan.segments["asset_id_nonzero"]
    boolean_field = core.lower_camel("is_regulated_boolean")
    nonzero_field = core.lower_camel("asset_id_nonzero")
    boolean_provider = (
        "Deployed.Templates.Semantics."
        + core.template_name(boolean["proof_template_id"])
    )
    boolean_import = boolean_provider.replace(
        "Deployed.Templates", "ShielddGnarkFormal.Deployed.Templates"
    )
    nonzero_projection = "1" if selectors.asset_id_local == 1 else "2"
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAction
import ShielddGnarkFormal.Deployed.Contracts.Transfer.NonIdentitySeams
import {boolean_import}

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-!
Stable exact-provider inventory grouped by the eleven Transfer protocol
obligations. These structures do not themselves prove `CircuitFacts`;
semantic refinement is supplied by `Deployed.TransferRefinement`.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open Shieldd.GnarkFormal

{"\n\n".join(group_structures)}

structure TransferExactProviders (rho : Nat → DeployedF) : Prop where
{"\n".join(aggregate_fields)}

/-- Exhaustive stable grouping of every exact provider used by refinement. -/
theorem transferExactProviders
    (rho : Nat → DeployedF)
    (facts : TransferCircuitFacts rho) :
    TransferExactProviders rho := by
  exact {{
{"\n".join(constructors)}
  }}

/-- The exact source `assert.boolean var=is_regulated` provider. -/
theorem isRegulatedBooleanRow_of_exact
    (rho : Nat → DeployedF)
    (facts : TransferCircuitFacts rho) :
    Seg{boolean["index"]}.contract.spec rho :=
  (transferExactProviders rho facts).assetRegistry.{boolean_field}

/-- The exact source `assert.ne lhs=shared.asset_id rhs=0` provider. -/
theorem assetIdNonzeroRow_of_exact
    (rho : Nat → DeployedF)
    (facts : TransferCircuitFacts rho) :
    Seg{nonzero["index"]}.contract.spec rho :=
  (transferExactProviders rho facts).assetRegistry.{nonzero_field}

/-- The selector is Boolean by the exact traced one-row provider. -/
theorem isRegulatedBoolean_of_exact
    (rho : Nat → DeployedF)
    (facts : TransferCircuitFacts rho) :
    Protocol.Common.boolean (isRegulated rho) := by
  have h := isRegulatedBooleanRow_of_exact rho facts
  change {boolean_provider}.spec
    (Seg{boolean["index"]}.localRho rho) at h
  unfold {boolean_provider}.spec at h
  have hseat :
      Seg{boolean["index"]}.wireSeating 1 =
        {selectors.is_regulated_wire} := by
    decide +kernel
  simpa only [
    Protocol.Common.boolean,
    isRegulated, isRegulatedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{boolean["index"]}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero] using h

/-- The asset ID is nonzero by the exact traced one-row inverse provider. -/
theorem assetIdNonzero_of_exact
    (rho : Nat → DeployedF)
    (facts : TransferCircuitFacts rho) :
    sharedAssetId rho ≠ 0 := by
  have h :=
    facts.exact.AssertNeSeg{nonzero["index"]}.{nonzero_projection}
  change
    Seg{nonzero["index"]}.localRho rho
      {selectors.asset_id_local} ≠ 0 at h
  have hseat :
      Seg{nonzero["index"]}.wireSeating
        {selectors.asset_id_local} =
          {selectors.asset_id_wire} := by
    decide +kernel
  simpa only [
    sharedAssetId, sharedAssetIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{nonzero["index"]}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero] using h

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""


def _specification_theorem_name(predicate_id: str) -> str:
    return "specification_" + predicate_id.lower().replace("-", "_")


def _render_specification_theorem(
    predicate_id: str, conclusion: str, proof: str
) -> str:
    name = _specification_theorem_name(predicate_id)
    return f"""/-- `{predicate_id}` for the exact deployed relation. -/
theorem {name}
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
    {conclusion} := by
{proof}
"""


def _validate_specification_theorems(
    rendered: dict[str, str], expected: tuple[str, ...]
) -> None:
    expected_set = set(expected)
    rendered_set = set(rendered)
    if rendered_set != expected_set:
        missing = sorted(expected_set - rendered_set)
        extra = sorted(rendered_set - expected_set)
        raise ValueError(
            "specification consequence partition drifted: "
            f"missing={missing}, extra={extra}"
        )
    names = [_specification_theorem_name(item) for item in rendered]
    if len(names) != len(set(names)):
        raise ValueError("specification consequence theorem names collide")


def _add_transfer_spend_specification_theorems(add) -> None:
    """Append exact spend, output, and user-registry atoms."""

    add(
        "DUMMY-AMOUNT-ZERO",
        """∀ spend,
      (action rho).optional = .dummy spend → spend.amount = 0""",
        """  intro spend selected
  have fact := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at fact
  rw [selected] at fact
  exact fact.1""",
    )
    dummy_nullifier = """∀ spend,
      (action rho).optional = .dummy spend →
      spend.nullifier =
        Poseidon377.hash3
          Protocol.Transfer.Concrete.syntheticDummyNullifierDomain
          spend.nullifierSeed spend.authRandomizer 1"""
    dummy_nullifier_proof = """  intro spend selected
  have fact := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at fact
  rw [selected] at fact
  exact fact.2.2.1"""
    add(
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        dummy_nullifier,
        dummy_nullifier_proof,
    )
    add(
        "DUMMY-SLOT-POSITION-BINDING",
        dummy_nullifier,
        dummy_nullifier_proof,
    )
    add(
        "FIELD-AUTH-RANDOMIZER-RANGE",
        """(action rho).required.authRandomizer.val < 2 ^ 251 ∧
      (∀ spend,
        (action rho).optional = .real spend →
          spend.authRandomizer.val < 2 ^ 251) ∧
      (∀ spend,
        (action rho).optional = .dummy spend →
          spend.authRandomizer.val < 2 ^ 251)""",
        """  have required := relationRequiredSpend rho h
  rcases required with
    ⟨_, _, _, requiredBound, _, _, _, _, _⟩
  refine ⟨requiredBound, ?_, ?_⟩
  intro spend
  intro selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.1
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.1""",
    )
    add(
        "NOTE-OUTPUT-ASSET-BINDING",
        """(action rho).receiver.note.assetId = (action rho).assetId ∧
      (action rho).change.note.assetId = (action rho).assetId""",
        """  exact
    ⟨(relationReceiverOutput rho h).1,
      (relationChangeOutput rho h).2.2.1⟩""",
    )
    add(
        "NOTE-OUTPUT-CLUE-KEY-BINDING",
        """Protocol.Transfer.Concrete.noteCommitment
        (action rho).receiver.note ∧
      Protocol.Transfer.Concrete.noteCommitment
        (action rho).change.note ∧
      (action rho).receiver.note.clueKey =
        (action rho).receiver.note.owner.clueKey ∧
      (action rho).change.note.clueKey =
        (action rho).sender.clueKey""",
        """  exact
    ⟨(relationReceiverOutput rho h).2.2.1,
      (relationChangeOutput rho h).2.2.2,
      rfl,
      (relationChangeOutput rho h).2.1⟩""",
    )
    add(
        "NOTE-OUTPUT-OWNER-BINDING",
        """Protocol.Transfer.Concrete.noteCommitment
        (action rho).receiver.note ∧
      (action rho).change.note.owner = (action rho).sender ∧
      Protocol.Transfer.Concrete.noteCommitment
        (action rho).change.note""",
        """  exact
    ⟨(relationReceiverOutput rho h).2.2.1,
      (relationChangeOutput rho h).1,
      (relationChangeOutput rho h).2.2.2⟩""",
    )
    add(
        "NOTE-SPEND-ASSET-BINDING",
        """(action rho).required.note.assetId = (action rho).assetId ∧
      ∀ spend,
        (action rho).optional = .real spend →
          spend.note.assetId = (action rho).assetId""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, requiredAsset, _, _, _, _, _, _⟩
  refine ⟨requiredAsset, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.1""",
    )
    add(
        "NOTE-SPEND-CLUE-KEY-BINDING",
        """(action rho).required.note.clueKey =
        (action rho).sender.clueKey ∧
      ∀ spend,
        (action rho).optional = .real spend →
          spend.note.clueKey = (action rho).sender.clueKey""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, requiredClueKey, _, _, _, _, _, _, _⟩
  refine ⟨requiredClueKey, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.1""",
    )
    add(
        "NOTE-SPEND-COMMITMENT",
        """Protocol.Transfer.Concrete.noteCommitment
        (action rho).required.note ∧
      ∀ spend,
        (action rho).optional = .real spend →
          Protocol.Transfer.Concrete.noteCommitment spend.note""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, _, _, requiredCommitment, _, _, _, _⟩
  refine ⟨requiredCommitment, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.2.1""",
    )
    add(
        "NOTE-SPEND-OWNER-BINDING",
        """(action rho).required.note.owner = (action rho).sender ∧
      ∀ spend,
        (action rho).optional = .real spend →
          spend.note.owner = (action rho).sender""",
        """  refine ⟨(relationRequiredSpend rho h).1, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.Transfer.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.1""",
    )
    add(
        "FIELD-USER-DERIVATION-RANGE",
        """(action rho).senderCompliance.d.val < 2 ^ 251 ∧
      (action rho).receiverCompliance.d.val < 2 ^ 251""",
        """  exact
    ⟨(relationSenderCompliance rho h).2.2.1,
      (relationReceiverCompliance rho h).2.2.1⟩""",
    )
    add(
        "FIELD-USER-POSITION-RANGE",
        """(action rho).senderCompliance.position.val < 2 ^ 32 ∧
      (action rho).receiverCompliance.position.val < 2 ^ 32""",
        """  exact
    ⟨(relationSenderCompliance rho h).2.2.2.1,
      (relationReceiverCompliance rho h).2.2.2.1⟩""",
    )
    gated_membership = """((action rho).assetProof.isRegulated = 1 →
        Protocol.Common.quadMember (action rho).complianceAnchor
          (Protocol.Transfer.Concrete.complianceLeafHash
            (action rho).senderCompliance)
          (action rho).senderCompliance.path
          (action rho).senderCompliance.position) ∧
      ((action rho).assetProof.isRegulated = 1 →
        Protocol.Common.quadMember (action rho).complianceAnchor
          (Protocol.Transfer.Concrete.complianceLeafHash
            (action rho).receiverCompliance)
          (action rho).receiverCompliance.path
          (action rho).receiverCompliance.position)"""
    gated_membership_proof = """  exact
    ⟨(relationSenderCompliance rho h).2.2.2.2,
      (relationReceiverCompliance rho h).2.2.2.2⟩"""
    add(
        "USER-COMPLIANCE-LEAF-HASH",
        gated_membership,
        gated_membership_proof,
    )
    add(
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
        gated_membership,
        gated_membership_proof,
    )
    add(
        "USER-LEAF-ADDRESS-BINDING",
        """(action rho).senderCompliance.address = (action rho).sender ∧
      (action rho).receiverCompliance.address =
        (action rho).receiver.note.owner""",
        """  exact
    ⟨(relationSenderCompliance rho h).1,
      (relationReceiverCompliance rho h).1⟩""",
    )
    add(
        "USER-LEAF-ASSET-BINDING",
        """(action rho).senderCompliance.assetId = (action rho).assetId ∧
      (action rho).receiverCompliance.assetId = (action rho).assetId""",
        """  exact
    ⟨(relationSenderCompliance rho h).2.1,
      (relationReceiverCompliance rho h).2.1⟩""",
    )
    add(
        "USER-LEAF-POLICY-SLOT-BINDING",
        """Protocol.Transfer.Concrete.complianceLeafHash
          (action rho).senderCompliance =
        Poseidon377.hash7
          Protocol.Transfer.Concrete.complianceLeafDomain
          (action rho).senderCompliance.address.diversifiedGeneratorEncoding
          (action rho).senderCompliance.address.transmissionEncoding
          (action rho).senderCompliance.address.clueKey
          (action rho).senderCompliance.assetId
          (action rho).senderCompliance.slotId
          (action rho).senderCompliance.slotDerivation
          (action rho).senderCompliance.d ∧
      Protocol.Transfer.Concrete.complianceLeafHash
          (action rho).receiverCompliance =
        Poseidon377.hash7
          Protocol.Transfer.Concrete.complianceLeafDomain
          (action rho).receiverCompliance.address.diversifiedGeneratorEncoding
          (action rho).receiverCompliance.address.transmissionEncoding
          (action rho).receiverCompliance.address.clueKey
          (action rho).receiverCompliance.assetId
          (action rho).receiverCompliance.slotId
          (action rho).receiverCompliance.slotDerivation
          (action rho).receiverCompliance.d""",
        """  exact ⟨rfl, rfl⟩""".replace(
            "scalarMulLE", "scalarMulWindow2"
        ),
    )


def _add_transfer_compliance_specification_theorems(add) -> None:
    """Append exact Transfer transcript and compliance-crypto atoms."""

    action = "(action rho)"
    shared_type = f"""∃ senderCoreIssuer senderCoreUser senderCoreSelected
      senderExtIssuer senderExtUser senderExtSelected
      outputCoreIssuer outputCoreUser outputCoreSelected
      outputExtIssuer outputExtUser outputExtSelected,
      Protocol.Transfer.Concrete.sharedSecrets
        {action}.transcript.senderRCore
        (Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.senderCompliance.d)
        (Protocol.Transfer.Concrete.effectiveDkPub {action})
        {action}.transcript.senderCore.epk
        {action}.transcript.isFlagged
        senderCoreIssuer senderCoreUser senderCoreSelected ∧
      Protocol.Transfer.Concrete.sharedSecrets
        {action}.transcript.senderRExt
        (Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.senderCompliance.d)
        (Protocol.Transfer.Concrete.effectiveDkPub {action})
        {action}.transcript.senderExt.epk
        {action}.transcript.isFlagged
        senderExtIssuer senderExtUser senderExtSelected ∧
      Protocol.Transfer.Concrete.sharedSecrets
        {action}.transcript.outputRCore
        (Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.receiverCompliance.d)
        (Protocol.Transfer.Concrete.effectiveDkPub {action})
        {action}.transcript.outputCore.epk
        {action}.transcript.isFlagged
        outputCoreIssuer outputCoreUser outputCoreSelected ∧
      Protocol.Transfer.Concrete.sharedSecrets
        {action}.transcript.outputRExt
        (Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.receiverCompliance.d)
        (Protocol.Transfer.Concrete.effectiveDkPub {action})
        {action}.transcript.outputExt.epk
        {action}.transcript.isFlagged
        outputExtIssuer outputExtUser outputExtSelected"""
    shared_proof = """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _,
      senderCoreIssuer, senderCoreUser, senderCoreSelected,
      senderExtIssuer, senderExtUser, senderExtSelected,
      outputCoreIssuer, outputCoreUser, outputCoreSelected,
      outputExtIssuer, outputExtUser, outputExtSelected,
      hsenderCore, hsenderExt, houtputCore, houtputExt, _, _⟩
  exact
    ⟨senderCoreIssuer, senderCoreUser, senderCoreSelected,
      senderExtIssuer, senderExtUser, senderExtSelected,
      outputCoreIssuer, outputCoreUser, outputCoreSelected,
      outputExtIssuer, outputExtUser, outputExtSelected,
      hsenderCore, hsenderExt, houtputCore, houtputExt⟩"""
    for predicate in (
        "COMPLIANCE-SHARED-SECRET-SELECTION",
        "DEC-EPHEMERAL-PUBLIC-KEY-DERIVATION",
        "DEC-SHARED-SECRET-DERIVATION",
        "FIELD-EPHEMERAL-SCALAR-RANGE",
    ):
        add(predicate, shared_type, shared_proof)

    add(
        "COMPLIANCE-FLAG-BOOLEAN",
        f"Protocol.Common.boolean {action}.transcript.isFlagged",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, hflag, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hflag""",
    )
    add(
        "COMPLIANCE-THRESHOLD-FLAG",
        f"""{action}.transcript.isFlagged =
      Protocol.Transfer.Concrete.thresholdFlag
        {action}.assetProof.isRegulated
        {action}.receiver.note.amount
        {action}.assetProof.leaf.threshold""",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, hflag, _, _, _, _, _, _, _, _, _, _⟩
  exact hflag""",
    )
    add(
        "VALUE-THRESHOLD-128-RANGE",
        f"Protocol.Common.amount128 {action}.assetProof.leaf.threshold",
        """  rcases relationComplianceTranscript rho h with
    ⟨hthreshold, _, _, _, _, _, _, _, _, _, _, _, _⟩
  exact hthreshold""",
    )
    add(
        "COMPLIANCE-SALT-DERIVATION",
        f"""{action}.transcript.salts 0 =
        Protocol.Transfer.Concrete.transferSalt
          {action}.transcript.transferNonceRoot
          Protocol.Transfer.Concrete.detectionSaltLabel ∧
      {action}.transcript.salts 1 =
        Protocol.Transfer.Concrete.transferSalt
          {action}.transcript.transferNonceRoot
          Protocol.Transfer.Concrete.senderCoreSaltLabel ∧
      {action}.transcript.salts 2 =
        Protocol.Transfer.Concrete.transferSalt
          {action}.transcript.transferNonceRoot
          Protocol.Transfer.Concrete.senderExtSaltLabel ∧
      {action}.transcript.salts 3 =
        Protocol.Transfer.Concrete.transferSalt
          {action}.transcript.transferNonceRoot
          Protocol.Transfer.Concrete.outputCoreSaltLabel ∧
      {action}.transcript.salts 4 =
        Protocol.Transfer.Concrete.transferSalt
          {action}.transcript.transferNonceRoot
          Protocol.Transfer.Concrete.outputExtSaltLabel""",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, hs0, hs1, hs2, hs3, hs4, _, _, _, _, _⟩
  exact ⟨hs0, hs1, hs2, hs3, hs4⟩""",
    )
    add(
        "DEC-EPHEMERAL-PUBLIC-KEY-ENCODING",
        f"""Protocol.Common.Decaf.compressesTo
        {action}.transcript.senderCore.epk
        {action}.transcript.senderCore.epkEncoding ∧
      Protocol.Common.Decaf.compressesTo
        {action}.transcript.senderExt.epk
        {action}.transcript.senderExt.epkEncoding ∧
      Protocol.Common.Decaf.compressesTo
        {action}.transcript.outputCore.epk
        {action}.transcript.outputCore.epkEncoding ∧
      Protocol.Common.Decaf.compressesTo
        {action}.transcript.outputExt.epk
        {action}.transcript.outputExt.epkEncoding""",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, h0, h1, h2, h3, _⟩
  exact ⟨h0, h1, h2, h3⟩""",
    )
    add(
        "COMPLIANCE-METADATA-BINDING",
        f"Protocol.Transfer.Concrete.metadataBinding {action}",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, hmetadata⟩
  exact hmetadata""",
    )
    add(
        "COMPLIANCE-POLICY-SELECTION",
        f"""Protocol.Common.boolean {action}.assetProof.isRegulated ∧
      Protocol.Transfer.Concrete.effectiveRingPk {action} =
        Protocol.Transfer.Concrete.selectPoint
          {action}.assetProof.isRegulated
          {action}.assetProof.leaf.ringPk
          Protocol.Transfer.Concrete.unregulatedRingPk ∧
      Protocol.Transfer.Concrete.effectiveDkPub {action} =
        Protocol.Transfer.Concrete.selectPoint
          {action}.assetProof.isRegulated
          {action}.assetProof.leaf.dkPub
          Protocol.Transfer.Concrete.unregulatedDkPub ∧
      Protocol.Transfer.Concrete.effectiveRingIdHash {action} =
        Protocol.Transfer.Concrete.selectField
          {action}.assetProof.isRegulated
          {action}.assetProof.leaf.ringIdHash
          Protocol.Transfer.Concrete.unregulatedPolicyHash ∧
      Protocol.Transfer.Concrete.effectivePolicyIdHash {action} =
        Protocol.Transfer.Concrete.selectField
          {action}.assetProof.isRegulated
          {action}.assetProof.leaf.policyIdHash
          Protocol.Transfer.Concrete.unregulatedPolicyHash ∧
      Protocol.Transfer.Concrete.effectiveResourceHash {action} =
        Protocol.Transfer.Concrete.selectField
          {action}.assetProof.isRegulated
          {action}.assetProof.leaf.resourceHash
          Protocol.Transfer.Concrete.unregulatedPolicyHash ∧
      Protocol.Transfer.Concrete.effectivePermissionHash {action} =
        Protocol.Transfer.Concrete.selectField
          {action}.assetProof.isRegulated
          {action}.assetProof.leaf.permissionHash
          Protocol.Transfer.Concrete.unregulatedPolicyHash""",
        """  exact
    ⟨(relationAssetRegistry rho h).2.1,
      rfl, rfl, rfl, rfl, rfl, rfl⟩""",
    )
    add(
        "DEC-ACK-DERIVATION",
        f"""Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.senderCompliance.d =
        Protocol.Common.Decaf.scalarMulWindow2 251
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.senderCompliance.d ∧
      Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.receiverCompliance.d =
        Protocol.Common.Decaf.scalarMulWindow2 251
          (Protocol.Transfer.Concrete.effectiveRingPk {action})
          {action}.receiverCompliance.d""",
        "  exact ⟨rfl, rfl⟩",
    )
    detection_type = f"""∃ senderCoreIssuer senderCoreIssuerFq,
      Protocol.Common.Decaf.compressesTo
        senderCoreIssuer senderCoreIssuerFq ∧
      Protocol.Transfer.Concrete.detectionEncryption
        {action} senderCoreIssuerFq"""
    detection_proof = """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _,
      senderCoreIssuer, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, hcrypto, _⟩
  rcases hcrypto with
    ⟨senderCoreIssuerFq, _, _, _, _,
      hcompress, _, _, _, _, hdetection, _, _, _, _⟩
  exact
    ⟨senderCoreIssuer, senderCoreIssuerFq, hcompress, hdetection⟩"""
    add(
        "COMPLIANCE-DETECTION-ENCRYPTION",
        detection_type,
        detection_proof,
    )
    add(
        "FIELD-DETECTION-SLOT-RANGE",
        f"""{action}.senderCompliance.slotId.val < 2 ^ 32 ∧
      {action}.receiverCompliance.slotId.val < 2 ^ 32""",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, hcrypto, _⟩
  rcases hcrypto with
    ⟨_, _, _, _, _, _, _, _, _, _, hdetection, _, _, _, _⟩
  rcases hdetection with ⟨hsender, hreceiver, _, _, _, _⟩
  exact ⟨hsender, hreceiver⟩""",
    )
    add(
        "COMPLIANCE-AMOUNT-ENCRYPTION",
        f"""∃ senderCoreSelected outputCoreSelected
      senderCoreSelectedFq outputCoreSelectedFq,
      Protocol.Common.Decaf.compressesTo
        senderCoreSelected senderCoreSelectedFq ∧
      Protocol.Common.Decaf.compressesTo
        outputCoreSelected outputCoreSelectedFq ∧
      Protocol.Transfer.Concrete.amountEncryption
        senderCoreSelectedFq {action}.transcript.senderCore.c2
        {action}.receiver.note.amount
        {action}.transcript.senderCore.ciphertext ∧
      Protocol.Transfer.Concrete.amountEncryption
        outputCoreSelectedFq {action}.transcript.outputCore.c2
        {action}.receiver.note.amount
        {action}.transcript.outputCore.ciphertext""",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _,
      _, _, senderCoreSelected, _, _, _,
      _, _, outputCoreSelected, _, _, _,
      _, _, _, _, hcrypto, _⟩
  rcases hcrypto with
    ⟨_, senderCoreSelectedFq, _, outputCoreSelectedFq, _,
      _, hsenderCompress, _, houtputCompress, _,
      _, hsenderAmount, _, houtputAmount, _⟩
  exact
    ⟨senderCoreSelected, outputCoreSelected,
      senderCoreSelectedFq, outputCoreSelectedFq,
      hsenderCompress, houtputCompress,
      hsenderAmount, houtputAmount⟩""",
    )
    add(
        "COMPLIANCE-ADDRESS-ENCRYPTION",
        f"""∃ senderExtSelected outputExtSelected
      senderExtSelectedFq outputExtSelectedFq,
      Protocol.Common.Decaf.compressesTo
        senderExtSelected senderExtSelectedFq ∧
      Protocol.Common.Decaf.compressesTo
        outputExtSelected outputExtSelectedFq ∧
      Protocol.Transfer.Concrete.addressEncryption
        senderExtSelectedFq {action}.transcript.senderExt.c2
        {action}.receiver.note.owner
        {action}.transcript.senderExt.ciphertext ∧
      Protocol.Transfer.Concrete.addressEncryption
        outputExtSelectedFq {action}.transcript.outputExt.c2
        {action}.sender
        {action}.transcript.outputExt.ciphertext""",
        """  rcases relationComplianceTranscript rho h with
    ⟨_, _, _, _, _, _, _, _, _, _, _, _,
      _, _, _, _, _, senderExtSelected,
      _, _, _, _, _, outputExtSelected,
      _, _, _, _, hcrypto, _⟩
  rcases hcrypto with
    ⟨_, _, senderExtSelectedFq, _, outputExtSelectedFq,
      _, _, hsenderCompress, _, houtputCompress,
      _, _, hsenderAddress, _, houtputAddress⟩
  exact
    ⟨senderExtSelected, outputExtSelected,
      senderExtSelectedFq, outputExtSelectedFq,
      hsenderCompress, houtputCompress,
      hsenderAddress, houtputAddress⟩""",
    )


def render_transfer_specification_consequences(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render exact, predicate-specific Transfer consequences."""

    _validate_transfer_refinement_plan(ir, constraint_manifest)
    _validate_non_identity_seams(ir, constraint_manifest)
    theorems: dict[str, str] = {}

    def add(predicate: str, conclusion: str, proof: str) -> None:
        if predicate in theorems:
            raise ValueError(
                f"duplicate Transfer specification consequence: {predicate}"
            )
        theorems[predicate] = _render_specification_theorem(
            predicate, conclusion, proof
        )

    add(
        "ASSET-ID-NONZERO",
        "(action rho).assetId ≠ 0",
        "  exact (relationAssetRegistry rho h).1",
    )
    add(
        "ASSET-REGULATED-BOOLEAN",
        "Protocol.Common.boolean (action rho).assetProof.isRegulated",
        "  exact (relationAssetRegistry rho h).2.1",
    )
    add(
        "ASSET-POLICY-KEY-ENCODING",
        """∃ dkPubFq ringPkFq,
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.dkPub dkPubFq ∧
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.ringPk ringPkFq""",
        """  rcases (relationAssetRegistry rho h).2.2 with
    ⟨dkPubFq, ringPkFq, hdk, hring, _, _⟩
  exact ⟨dkPubFq, ringPkFq, hdk, hring⟩""",
    )
    add(
        "ASSET-PARAMETERS-HASH",
        """∃ dkPubFq,
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.dkPub dkPubFq ∧
      Protocol.Transfer.Concrete.assetParamsHash
          (action rho).assetProof.leaf dkPubFq =
        Poseidon377.hash4
          Protocol.Transfer.Concrete.assetParamsDomain dkPubFq
          (action rho).assetProof.leaf.threshold
          (action rho).assetProof.leaf.slotCount
          (action rho).assetProof.leaf.channelsHash""",
        """  rcases (relationAssetRegistry rho h).2.2 with
    ⟨dkPubFq, _, hdk, _, _, _⟩
  exact ⟨dkPubFq, hdk, rfl⟩""",
    )
    add(
        "ASSET-RING-HASH",
        """∃ ringPkFq,
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.ringPk ringPkFq ∧
      Protocol.Transfer.Concrete.assetRingHash
          (action rho).assetProof.leaf ringPkFq =
        Poseidon377.hash5
          Protocol.Transfer.Concrete.assetRingDomain ringPkFq
          (action rho).assetProof.leaf.ringIdHash
          (action rho).assetProof.leaf.policyIdHash
          (action rho).assetProof.leaf.permissionHash
          (action rho).assetProof.leaf.resourceHash""",
        """  rcases (relationAssetRegistry rho h).2.2 with
    ⟨_, ringPkFq, _, hring, _, _⟩
  exact ⟨ringPkFq, hring, rfl⟩""",
    )
    add(
        "ASSET-LEAF-HASH",
        """∃ dkPubFq ringPkFq,
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.dkPub dkPubFq ∧
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.ringPk ringPkFq ∧
      Protocol.Common.quadMember (action rho).assetAnchor
        (Protocol.Transfer.Concrete.assetLeafHash
          (action rho).assetProof.leaf dkPubFq ringPkFq)
        (action rho).assetProof.path (action rho).assetProof.position""",
        """  rcases (relationAssetRegistry rho h).2.2 with
    ⟨dkPubFq, ringPkFq, hdk, hring, hmember, _⟩
  exact ⟨dkPubFq, ringPkFq, hdk, hring, hmember⟩""",
    )
    add(
        "ASSET-REGISTRY-MEMBERSHIP",
        """∃ dkPubFq ringPkFq,
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.dkPub dkPubFq ∧
      Protocol.Common.Decaf.compressesTo
        (action rho).assetProof.leaf.ringPk ringPkFq ∧
      Protocol.Common.quadMember (action rho).assetAnchor
        (Protocol.Transfer.Concrete.assetLeafHash
          (action rho).assetProof.leaf dkPubFq ringPkFq)
        (action rho).assetProof.path (action rho).assetProof.position""",
        """  rcases (relationAssetRegistry rho h).2.2 with
    ⟨dkPubFq, ringPkFq, hdk, hring, hmember, _⟩
  exact ⟨dkPubFq, ringPkFq, hdk, hring, hmember⟩""",
    )
    add(
        "ASSET-REGISTRY-GAP-ORDERING",
        """Protocol.Transfer.Concrete.registryGap
      (action rho).assetId (action rho).assetProof.isRegulated
      (action rho).assetProof.leaf.value
      (action rho).assetProof.leaf.nextValue""",
        """  rcases (relationAssetRegistry rho h).2.2 with
    ⟨_, _, _, _, _, hgap⟩
  exact hgap""",
    )
    add(
        "CIR-SELECTOR-BOOLEAN",
        """spend1IsDummy rho = 0 ∨ spend1IsDummy rho = 1""",
        """  exact
    Deployed.TransferSemanticTranslator.C.optionalIsDummyBoolean
      rho (semanticProvidersOfRelation rho h)""",
    )
    add(
        "CIR-SHAPE-FIXED",
        """(Protocol.Transfer.Concrete.statementFields
      (action rho)).length = 41""",
        """  exact Protocol.Transfer.Concrete.statementFields_length
    (action rho)""",
    )
    add(
        "DEC-DIVERSIFIED-GENERATOR-ENCODING",
        """Protocol.Common.Decaf.compressesTo
        (action rho).sender.diversifiedGenerator
        (action rho).sender.diversifiedGeneratorEncoding ∧
      Protocol.Common.Decaf.compressesTo
        (action rho).receiver.note.owner.diversifiedGenerator
        (action rho).receiver.note.owner.diversifiedGeneratorEncoding""",
        """  have hs := (relationCanonicalSender rho h).1.2.1
  have hr := (relationReceiverOutput rho h).2.1
  exact ⟨hs.1.2.1, hr.1.2.1⟩""",
    )
    add(
        "DEC-INCOMING-VIEWING-KEY-NONZERO",
        """Protocol.Common.Decaf.incomingViewingKeyNonzero
      (action rho).authorization.ivkReduced""",
        "  exact (relationCanonicalSender rho h).2",
    )
    add(
        "DEC-TRANSMISSION-KEY-ENCODING",
        """Protocol.Common.Decaf.compressesTo
        (action rho).sender.transmission
        (action rho).sender.transmissionEncoding ∧
      Protocol.Common.Decaf.compressesTo
        (action rho).receiver.note.owner.transmission
        (action rho).receiver.note.owner.transmissionEncoding""",
        """  have hs := (relationCanonicalSender rho h).1.2.1
  have hr := (relationReceiverOutput rho h).2.1
  exact ⟨hs.1.2.2, hr.1.2.2⟩""",
    )
    add(
        "DEC-TRANSMISSION-KEY-DERIVATION",
        """∃ computedTransmission,
      Protocol.Common.Decaf.diversifiedTransmissionKey
        (action rho).authorization.nullifierKey
        (action rho).authorization.authorizationKey
        (action rho).sender.diversifiedGenerator
        (action rho).authorization.ivkReduced
        (action rho).authorization.ivkQuotientA
        computedTransmission ∧
      Protocol.Common.Decaf.equivalent
        computedTransmission (action rho).sender.transmission""",
        "  exact (relationCanonicalSender rho h).1.2.2.2",
    )
    add(
        "DEC-TRANSMISSION-KEY-NONIDENTITY",
        """Protocol.Common.Decaf.transmissionKeyNonIdentity
        (action rho).sender.transmission ∧
      Protocol.Common.Decaf.transmissionKeyNonIdentity
        (action rho).receiver.note.owner.transmission""",
        """  exact
    ⟨(relationCanonicalSender rho h).1.2.1.2,
      (relationReceiverOutput rho h).2.1.2⟩""",
    )
    add(
        "NOTE-RECEIVER-AMOUNT-NONZERO",
        "(action rho).receiver.note.amount ≠ 0",
        "  exact (relationReceiverOutput rho h).2.2.2",
    )
    add(
        "FIELD-BALANCE-BLINDING-RANGE",
        "(action rho).balanceBlinding.val < 2 ^ 251",
        "  exact (relationBalance rho h).2.2.2.2.1",
    )
    add(
        "DEC-BALANCE-COMMITMENT-DERIVATION",
        """∃ balanceCommitment,
      Protocol.Common.Decaf.netBalanceCommitment2
        (action rho).required.note.amount
        (action rho).optional.amount
        (action rho).receiver.note.amount
        (action rho).change.note.amount
        (action rho).assetId (action rho).balanceBlinding
        balanceCommitment""",
        """  rcases (relationBalance rho h).2.2.2.2.2 with
    ⟨balanceCommitment, hcomputed, _⟩
  exact ⟨balanceCommitment, hcomputed⟩""",
    )
    add(
        "DEC-BALANCE-COMMITMENT-ENCODING",
        """∃ balanceCommitment,
      Protocol.Common.Decaf.netBalanceCommitment2
        (action rho).required.note.amount
        (action rho).optional.amount
        (action rho).receiver.note.amount
        (action rho).change.note.amount
        (action rho).assetId (action rho).balanceBlinding
        balanceCommitment ∧
      Protocol.Common.Decaf.compressesTo
        balanceCommitment (action rho).balanceCommitmentEncoding""",
        "  exact (relationBalance rho h).2.2.2.2.2",
    )
    add(
        "VALUE-AMOUNT-128-RANGE",
        """Protocol.Common.amount128 (action rho).required.note.amount ∧
      Protocol.Common.amount128 (action rho).optional.amount ∧
      Protocol.Common.amount128 (action rho).receiver.note.amount ∧
      Protocol.Common.amount128 (action rho).change.note.amount""",
        """  have hb := relationBalance rho h
  exact ⟨hb.1, hb.2.1, hb.2.2.1, hb.2.2.2.1⟩""",
    )
    add(
        "VALUE-CONSERVATION",
        """∃ balanceCommitment,
      Protocol.Common.Decaf.netBalanceCommitment2
        (action rho).required.note.amount
        (action rho).optional.amount
        (action rho).receiver.note.amount
        (action rho).change.note.amount
        (action rho).assetId (action rho).balanceBlinding
        balanceCommitment ∧
      Protocol.Common.Decaf.compressesTo
        balanceCommitment (action rho).balanceCommitmentEncoding""",
        "  exact (relationBalance rho h).2.2.2.2.2",
    )

    # The remaining declarations are appended below in semantic groups.  This
    # split keeps the exact predicates readable while retaining one fail-closed
    # generated module.
    _add_transfer_spend_specification_theorems(add)
    _add_transfer_compliance_specification_theorems(add)
    _validate_specification_theorems(
        theorems, TRANSFER_SPECIFICATION_PREDICATES
    )
    declarations = "\n".join(
        theorems[predicate]
        for predicate in TRANSFER_SPECIFICATION_PREDICATES
    )
    return f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.TransferSemanticTranslator

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Predicate-specific Transfer consequences.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open Shieldd.GnarkFormal
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
private local instance choiceFreeTransferSpecificationCommRing :
    CommRing SemanticF :=
  ZMod.commRing _

private abbrev action (rho : Nat → SemanticF) :=
  Deployed.TransferRefinement.C.action rho

/-- Exact relation to the complete handwritten Transfer circuit facts. -/
theorem circuitFacts_of_relationAll
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
    Protocol.Transfer.CircuitFacts
      Protocol.Transfer.Concrete.circuitPrimitives
      (action rho) := by
  let facts := transfer_circuitFacts rho h
  let exactProviders := transferExactProviders rho facts
  let semanticProviders :=
    transferSemanticProviders_of_exact rho exactProviders
  exact
    Deployed.TransferSemanticTranslator.C.circuitFacts_of_semanticProviders
      rho
      (authAkNonIdentity_of_exact rho facts)
      (senderDivGenNonIdentity_of_exact rho facts)
      (authIvkReducedNonzero_of_exact rho facts)
      (Deployed.TransferSemanticTranslator.C.senderTransmissionComputedNonIdentity_of_semantic
          rho semanticProviders
          (senderTransmissionNonIdentity_of_exact rho facts))
      (output0RecipientDivGenNonIdentity_of_exact rho facts)
      (output0RecipientTransmissionNonIdentity_of_exact rho facts)
      (isRegulatedBoolean_of_exact rho facts)
      (assetIdNonzero_of_exact rho facts)
      semanticProviders

private def semanticProvidersOfRelation
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
    TransferSemanticProviders rho :=
  transferSemanticProviders_of_exact rho
    (transferExactProviders rho (transfer_circuitFacts rho h))

private theorem relationCanonicalSender
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.canonicalSender (action rho) :=
  (circuitFacts_of_relationAll rho h).canonicalSender

private theorem relationRequiredSpend
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.requiredSpend (action rho) :=
  (circuitFacts_of_relationAll rho h).requiredSpend

private theorem relationOptionalSpend
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.optionalSpend (action rho) :=
  (circuitFacts_of_relationAll rho h).optionalSpend

private theorem relationReceiverOutput
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.receiverOutput (action rho) :=
  (circuitFacts_of_relationAll rho h).receiverOutput

private theorem relationChangeOutput
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.changeOutput (action rho) :=
  (circuitFacts_of_relationAll rho h).changeOutput

private theorem relationAssetRegistry
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.assetRegistry (action rho) :=
  (circuitFacts_of_relationAll rho h).assetRegistry

private theorem relationSenderCompliance
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.senderCompliance (action rho) :=
  (circuitFacts_of_relationAll rho h).senderCompliance

private theorem relationReceiverCompliance
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.receiverCompliance (action rho) :=
  (circuitFacts_of_relationAll rho h).receiverCompliance

private theorem relationComplianceTranscript
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.complianceTranscript (action rho) :=
  (circuitFacts_of_relationAll rho h).complianceTranscript

private theorem relationBalance
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.Transfer.Concrete.balanceComputedAndCompressed (action rho) :=
  (circuitFacts_of_relationAll rho h).balanceComputedAndCompressed

{declarations}
end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""


def render_transfer_refinement_root(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the closed exact relation-to-Transfer consensus composition."""

    _validate_transfer_refinement_plan(ir, constraint_manifest)
    _validate_non_identity_seams(ir, constraint_manifest)
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Transfer.SpecificationConsequences

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Closed exact-relation refinement root for Transfer.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open Shieldd.GnarkFormal
open Protocol

/--
The final theorem takes only the exact relation and genuine external facts;
there are no caller-supplied circuit-semantic seam premises.
-/
theorem consensusAccepted_of_relationAll
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (checks :
      Protocol.Transfer.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (before : Protocol.Transfer.ConsensusState SemanticF)
    (delta : Protocol.Transfer.ActionDelta SemanticF)
    (after : Protocol.Transfer.ConsensusState SemanticF)
    (external :
      Protocol.Transfer.ConsensusExternalFacts
        checks (Deployed.TransferRefinement.C.action rho)
        before delta after) :
    Protocol.Transfer.ConsensusAccepted
      Protocol.Transfer.Concrete.circuitPrimitives
      checks before delta after
      (Deployed.TransferRefinement.C.action rho) :=
  Protocol.Transfer.consensusAccepted_of_circuitFacts
    Protocol.Transfer.Concrete.circuitPrimitives
    checks before delta after
    (Deployed.TransferRefinement.C.action rho)
    (circuitFacts_of_relationAll rho h)
    external

theorem transactionAccepted_of_relationAll
    (checks :
      Protocol.Transfer.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (otherStep :
      Protocol.Transfer.ConsensusState SemanticF →
      Protocol.Transfer.ConsensusState SemanticF → Prop)
    (transactionBefore actionBefore :
      Protocol.Transfer.ConsensusState SemanticF)
    (delta : Protocol.Transfer.ActionDelta SemanticF)
    (actionAfter transactionAfter :
      Protocol.Transfer.ConsensusState SemanticF)
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (external :
      Protocol.Transfer.ConsensusExternalFacts
        checks (Deployed.TransferRefinement.C.action rho)
        actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Protocol.Transfer.actionNullifiers
          (Deployed.TransferRefinement.C.action rho))
        (Protocol.Transfer.actionOutputCommitments
          (Deployed.TransferRefinement.C.action rho))
        otherStep
        (Protocol.Transfer.TargetStep
          (Deployed.TransferRefinement.C.action rho) delta)
        transactionBefore actionBefore actionAfter transactionAfter) :
    Protocol.Transfer.TransactionAccepted
      Protocol.Transfer.Concrete.circuitPrimitives
      checks otherStep transactionBefore actionBefore delta
      actionAfter transactionAfter
      (Deployed.TransferRefinement.C.action rho) :=
  Protocol.Transfer.transactionAccepted_of_circuitFacts
    Protocol.Transfer.Concrete.circuitPrimitives
    checks otherStep transactionBefore actionBefore delta
    actionAfter transactionAfter
    (Deployed.TransferRefinement.C.action rho)
    (circuitFacts_of_relationAll rho h)
    external committed

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""


def render_transfer_canonical_refinement(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the canonical Transfer declarations used by certification."""

    _validate_transfer_refinement_plan(ir, constraint_manifest)
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementRoot

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Canonical Transfer certification declarations.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.TransferRefinement

open Shieldd.GnarkFormal
open Protocol
open Deployed.Contracts.Transfer

theorem deployedRelation_to_circuitFacts
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
      Protocol.Transfer.CircuitFacts
      Protocol.Transfer.Concrete.circuitPrimitives
      (C.action rho) :=
  Deployed.Contracts.Transfer.circuitFacts_of_relationAll rho h

theorem consensusAccepted_of_deployedRelation
    (checks :
      Protocol.Transfer.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (before : Protocol.Transfer.ConsensusState SemanticF)
    (delta : Protocol.Transfer.ActionDelta SemanticF)
    (after : Protocol.Transfer.ConsensusState SemanticF)
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (external :
      Protocol.Transfer.ConsensusExternalFacts
        checks (C.action rho) before delta after) :
    Protocol.Transfer.ConsensusAccepted
      Protocol.Transfer.Concrete.circuitPrimitives
      checks before delta after (C.action rho) :=
  Deployed.Contracts.Transfer.consensusAccepted_of_relationAll
    rho h checks before delta after external

theorem transactionAccepted_of_deployedRelation
    (checks :
      Protocol.Transfer.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (otherStep :
      Protocol.Transfer.ConsensusState SemanticF →
      Protocol.Transfer.ConsensusState SemanticF → Prop)
    (transactionBefore actionBefore :
      Protocol.Transfer.ConsensusState SemanticF)
    (delta : Protocol.Transfer.ActionDelta SemanticF)
    (actionAfter transactionAfter :
      Protocol.Transfer.ConsensusState SemanticF)
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (external :
      Protocol.Transfer.ConsensusExternalFacts
        checks (C.action rho) actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Protocol.Transfer.actionNullifiers (C.action rho))
        (Protocol.Transfer.actionOutputCommitments (C.action rho))
        otherStep
        (Protocol.Transfer.TargetStep (C.action rho) delta)
        transactionBefore actionBefore actionAfter transactionAfter) :
    Protocol.Transfer.TransactionAccepted
      Protocol.Transfer.Concrete.circuitPrimitives
      checks otherStep transactionBefore actionBefore delta
      actionAfter transactionAfter (C.action rho) :=
  Deployed.Contracts.Transfer.transactionAccepted_of_relationAll
    checks otherStep transactionBefore actionBefore delta
    actionAfter transactionAfter rho h external committed

end Shieldd.GnarkFormal.Deployed.TransferRefinement
"""


def render_withdrawal_canonical_refinement(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the canonical Withdrawal declarations used by certification."""

    _validate_withdrawal_refinement_plan(ir, constraint_manifest)
    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.RefinementRoot

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Canonical shielded ICS-20 Withdrawal certification declarations.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement

open Shieldd.GnarkFormal
open Protocol
open Deployed.Contracts.ShieldedIcs20Withdrawal

theorem deployedRelation_to_circuitFacts
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
      Protocol.ShieldedIcs20Withdrawal.CircuitFacts
      Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      (C.action rho) :=
  Deployed.Contracts.ShieldedIcs20Withdrawal.circuitFacts_of_relationAll
    rho h

theorem consensusAccepted_of_deployedRelation
    (checks :
      Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (before :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (delta :
      Protocol.ShieldedIcs20Withdrawal.ActionDelta SemanticF)
    (after :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (payload :
      Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload SemanticF)
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (external :
      Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks (C.action rho) payload before delta after) :
    Protocol.ShieldedIcs20Withdrawal.ConsensusAccepted
      Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      checks before delta after (C.action rho) payload :=
  Deployed.Contracts.ShieldedIcs20Withdrawal.consensusAccepted_of_relationAll
    rho h checks before delta after payload external

theorem transactionAccepted_of_deployedRelation
    (checks :
      Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (otherStep :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF →
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF → Prop)
    (transactionBefore actionBefore :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (delta :
      Protocol.ShieldedIcs20Withdrawal.ActionDelta SemanticF)
    (actionAfter transactionAfter :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (payload :
      Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload SemanticF)
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (external :
      Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks (C.action rho) payload actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Protocol.ShieldedIcs20Withdrawal.actionNullifiers
          (C.action rho))
        (Protocol.ShieldedIcs20Withdrawal.actionOutputCommitments
          (C.action rho))
        otherStep
        (Protocol.ShieldedIcs20Withdrawal.TargetStep
          (C.action rho) payload delta)
        transactionBefore actionBefore actionAfter transactionAfter)
    (withdrawalEffects :
      Protocol.ShieldedIcs20Withdrawal.CommittedWithdrawalEffects
        transactionBefore actionBefore transactionAfter
        (C.action rho) payload) :
    Protocol.ShieldedIcs20Withdrawal.TransactionAccepted
      Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      checks otherStep transactionBefore actionBefore delta
      actionAfter transactionAfter (C.action rho) payload :=
  Deployed.Contracts.ShieldedIcs20Withdrawal.transactionAccepted_of_relationAll
    checks otherStep transactionBefore actionBefore delta
    actionAfter transactionAfter payload rho h external
    committed withdrawalEffects

end Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalRefinement
"""


def _validate_withdrawal_registry_seams(
    ir: dict, constraint_manifest: dict
) -> dict[str, dict]:
    """Authenticate every row boundary and role used by registry capstones."""

    plan = _validate_withdrawal_refinement_plan(
        ir, constraint_manifest
    )
    selectors = _withdrawal_asset_selector_from_plan(plan)
    bindings = plan.bindings
    sender_leaf_wires = _expression_term_wires(
        _binding_expression(
            bindings, "sender.leaf_commitment", 1
        )[0],
        "sender.leaf_commitment",
    )
    compliance_path_local_wires = 5842 + len(sender_leaf_wires)
    segments = {
        "boolean": selectors.boolean_segment,
        "asset_path": plan.segments["asset_path"],
        "asset_root": plan.segments["asset_root_assert"],
        "asset_nonzero": selectors.asset_id_nonzero_segment,
        "asset_gap": plan.segments["asset_gap"],
        "gap_accept": plan.segments["asset_gap_accept"],
        "compliance_path": plan.segments["sender_compliance_path"],
    }
    if len(_seating(segments["compliance_path"])) != (
        compliance_path_local_wires
    ):
        raise ValueError(
            "Withdrawal compliance-path local geometry drifted"
        )
    asset_anchor_wire = _single_binding_wire(bindings, "asset_anchor")
    outbound_asset_id_wire = _single_binding_wire(
        bindings, "outbound.asset_id"
    )
    is_regulated_wire = _single_binding_wire(bindings, "is_regulated")
    asset_leaf_value_wire = _single_binding_wire(
        bindings, "asset.leaf.value"
    )
    asset_leaf_next_value_wire = _single_binding_wire(
        bindings, "asset.leaf.next_value"
    )
    asset_position_wire = _single_binding_wire(bindings, "asset.position")
    sender_position_wire = _single_binding_wire(bindings, "sender.position")
    asset_path_wires = _binding_wire_vector(
        bindings, "asset.path", 48
    )
    sender_path_wires = _binding_wire_vector(
        bindings, "sender.path", 48
    )
    for name, wires in (
        ("asset.path", asset_path_wires),
        ("sender.path", sender_path_wires),
    ):
        if wires != tuple(range(wires[0], wires[0] + len(wires))):
            raise ValueError(
                f"Withdrawal semantic binding {name!r} path run drifted"
            )
    asset_leaf_wires = _binding_lc_wires(
        bindings, "asset.leaf.commitment", ASSET_LEAF_COEFFICIENTS
    )
    asset_root_wires = _binding_lc_wires(
        bindings, "asset.root.computed", POSEIDON_ROOT_COEFFICIENTS
    )
    asset_gap_wires = _binding_lc_wires(
        bindings, "asset.gap_valid", ("1", "1")
    )
    sender_root_wires = _binding_lc_wires(
        bindings, "sender.compliance_root", POSEIDON_ROOT_COEFFICIENTS
    )
    asset_path_locals = _path_local_wires("asset")
    compliance_shift = len(sender_leaf_wires) - 7
    compliance_path_locals = _path_local_wires(
        "compliance",
        compliance_leaf_terms=len(sender_leaf_wires),
    )
    _require_seats(
        segments["asset_path"],
        {
            33: asset_position_wire,
            **dict(
                zip(range(39, 45), asset_leaf_wires, strict=True)
            ),
            **dict(
                zip(asset_path_locals, asset_path_wires, strict=True)
            ),
            **dict(
                zip(
                    (5827, 5832, 5837, 5842, 5847),
                    asset_root_wires,
                    strict=True,
                )
            ),
        },
        "Withdrawal asset path",
    )
    _require_seats(
        segments["asset_root"],
        {
            **dict(zip(range(1, 6), asset_root_wires, strict=True)),
            6: asset_anchor_wire,
        },
        "Withdrawal asset-root assertion",
    )
    _require_seats(
        segments["asset_gap"],
        {
            254: asset_leaf_value_wire,
            594: outbound_asset_id_wire,
            934: asset_leaf_next_value_wire,
            3043: asset_gap_wires[0],
            3044: is_regulated_wire,
            3045: asset_gap_wires[1],
        },
        "Withdrawal asset gap",
    )
    _require_seats(
        segments["gap_accept"],
        {1: asset_gap_wires[0], 2: asset_gap_wires[1]},
        "Withdrawal gap acceptance",
    )
    _require_seats(
        segments["compliance_path"],
        {
            33: sender_position_wire,
            **dict(
                zip(
                    range(39, 39 + len(sender_leaf_wires)),
                    sender_leaf_wires,
                    strict=True,
                )
            ),
            **dict(
                zip(
                    compliance_path_locals,
                    sender_path_wires,
                    strict=True,
                )
            ),
            **dict(
                zip(
                    tuple(
                        local + compliance_shift
                        for local in (5828, 5833, 5838, 5843, 5848)
                    ),
                    sender_root_wires,
                    strict=True,
                )
            ),
        },
        "Withdrawal compliance path",
    )
    return segments


def _validate_withdrawal_conservation_seams(
    ir: dict, constraint_manifest: dict
) -> WithdrawalBalanceSeams:
    """Authenticate every dynamic wire/run in the conservation join."""

    plan = _validate_withdrawal_refinement_plan(
        ir, constraint_manifest
    )
    net_balance = plan.segments["conservation_net_balance"]
    compressor = plan.segments["conservation_balance_compress"]
    nb_seating = _seating(net_balance)
    compress_seating = _seating(compressor)
    if len(nb_seating) != 2322 or len(compress_seating) != 1205:
        raise ValueError("Withdrawal conservation local-wire count drifted")

    bindings = plan.bindings
    spend0_amount_wire = _single_binding_wire(
        bindings, "spend0.note.amount"
    )
    spend1_amount_wire = _single_binding_wire(
        bindings, "spend1.note.amount"
    )
    change_amount_wire = _single_binding_wire(
        bindings, "output0.note.amount"
    )
    outbound_amount_wire = _single_binding_wire(
        bindings, "outbound.amount"
    )
    blinding_wire = _single_binding_wire(
        bindings, "action.balance_blinding"
    )
    computed = _binding_expression(
        bindings, "balance_commitment.computed", 2
    )
    coordinate_runs: list[tuple[tuple[int, int, int], ...]] = []
    seed_wires = []
    for coordinate, (expression, seed_coefficient) in enumerate(zip(
        computed,
        (WITHDRAWAL_BALANCE_X_SEED, WITHDRAWAL_BALANCE_Y_SEED),
        strict=True,
    )):
        runs, residual = core.compact_semantic_expression(expression)
        if (
            expression.get("constant") != str(coordinate)
            or [
                (run.get("stride"), run.get("count"))
                for run in runs
            ]
            != [(5, 149), (8, 101)]
            or len(residual) != 1
            or residual[0].get("coefficient") != seed_coefficient
            or not isinstance(residual[0].get("wire_id"), int)
        ):
            raise ValueError(
                "balance_commitment.computed no longer matches the "
                "reviewed net-balance accumulator presentation"
            )
        coordinate_runs.append(tuple(
            (run["start"], run["stride"], run["count"])
            for run in runs
        ))
        seed_wires.append(residual[0]["wire_id"])
    if seed_wires[0] != seed_wires[1]:
        raise ValueError(
            "Withdrawal balance coordinates no longer share one seed wire"
        )
    seed_wire = seed_wires[0]
    x_runs, y_runs = coordinate_runs
    if any(
        y_start != x_start + 1
        or y_stride != x_stride
        or y_count != x_count
        for (
            (x_start, x_stride, x_count),
            (y_start, y_stride, y_count),
        ) in zip(x_runs, y_runs, strict=True)
    ):
        raise ValueError(
            "Withdrawal balance coordinate wire runs drifted"
        )

    compressed_expression = _binding_expression(
        bindings, "balance_commitment.fq", 1
    )[0]
    runs, residual = core.compact_semantic_expression(
        compressed_expression
    )
    if (
        compressed_expression.get("constant") != "0"
        or runs
        or len(residual) != 2
        or [term.get("coefficient") for term in residual]
        != [MODULUS_MINUS_ONE, "1"]
        or any(
            not isinstance(term.get("wire_id"), int)
            for term in residual
        )
    ):
        raise ValueError(
            "balance_commitment.fq no longer matches the exact "
            "compressor output"
        )
    compressed_minus_wire = residual[0]["wire_id"]
    compressed_plus_wire = residual[1]["wire_id"]
    final_x_wire = (
        x_runs[-1][0] + x_runs[-1][1] * (x_runs[-1][2] - 1)
    )
    final_y_wire = (
        y_runs[-1][0] + y_runs[-1][1] * (y_runs[-1][2] - 1)
    )
    expected_nb = {
        129: spend0_amount_wire,
        258: spend1_amount_wire,
        387: change_amount_wire,
        516: outbound_amount_wire,
        517: seed_wire,
        768: blinding_wire,
        2320: final_x_wire,
        2321: final_y_wire,
    }
    expected_compress = {
        1: seed_wire,
        2: x_runs[0][0],
        151: x_runs[1][0],
        251: final_x_wire,
        253: y_runs[0][0],
        402: y_runs[1][0],
        502: final_y_wire,
        864: compressed_minus_wire,
        1204: compressed_plus_wire,
    }
    for local, deployed in expected_nb.items():
        if nb_seating[local] != deployed:
            raise ValueError(
                f"Withdrawal net-balance seating[{local}] drifted: "
                f"{nb_seating[local]} != {deployed}"
            )
    for local, deployed in expected_compress.items():
        if compress_seating[local] != deployed:
            raise ValueError(
                f"Withdrawal compressor seating[{local}] drifted: "
                f"{compress_seating[local]} != {deployed}"
            )

    expected_x_wires = [
        *(
            start + stride * offset
            for start, stride, count in x_runs
            for offset in range(count)
        ),
    ]
    expected_y_wires = [
        *(
            start + stride * offset
            for start, stride, count in y_runs
            for offset in range(count)
        ),
    ]
    actual_nb_x = [
        *(nb_seating[772 + 5 * offset] for offset in range(149)),
        *(nb_seating[1520 + 8 * offset] for offset in range(101)),
    ]
    actual_nb_y = [
        *(nb_seating[773 + 5 * offset] for offset in range(149)),
        *(nb_seating[1521 + 8 * offset] for offset in range(101)),
    ]
    actual_compress_x = [
        compress_seating[2 + offset] for offset in range(250)
    ]
    actual_compress_y = [
        compress_seating[253 + offset] for offset in range(250)
    ]
    if actual_nb_x != expected_x_wires or actual_compress_x != expected_x_wires:
        raise ValueError("Withdrawal balance x-coordinate shared-wire run drifted")
    if actual_nb_y != expected_y_wires or actual_compress_y != expected_y_wires:
        raise ValueError("Withdrawal balance y-coordinate shared-wire run drifted")

    return WithdrawalBalanceSeams(
        net_balance=net_balance,
        compressor=compressor,
        spend0_amount_wire=spend0_amount_wire,
        spend1_amount_wire=spend1_amount_wire,
        change_amount_wire=change_amount_wire,
        outbound_amount_wire=outbound_amount_wire,
        blinding_wire=blinding_wire,
        seed_wire=seed_wire,
        x_runs=x_runs,
        y_runs=y_runs,
        compressed_minus_wire=compressed_minus_wire,
        compressed_plus_wire=compressed_plus_wire,
    )


def _path_local_wires(
    kind: str, *, compliance_leaf_terms: int = 7
) -> tuple[int, ...]:
    if kind == "asset":
        level_zero = (38, 46, 49)
        later = (407, 409, 412)
    elif kind == "compliance":
        shift = compliance_leaf_terms - 7
        if shift < 0:
            raise ValueError(
                "Withdrawal compliance leaf has too few state terms"
            )
        level_zero = (38, 47 + shift, 50 + shift)
        later = (408 + shift, 410 + shift, 413 + shift)
    else:
        raise ValueError(
            f"unsupported Withdrawal path kind {kind!r}"
        )
    return level_zero + tuple(
        local + 363 * (level - 1)
        for level in range(1, 16)
        for local in later
    )


def _withdrawal_dtk_seating_config(
    plan: WithdrawalRefinementPlan,
) -> dict[str, int | str]:
    """Authenticate the active two-term DTK/compressor/nonidentity seam."""

    expressions = _binding_expression(
        plan.bindings, "sender.transmission.computed", 2
    )
    expected_wires = ((5950, 5958), (5951, 5959))
    computed_wires: list[tuple[int, int]] = []
    for expression, expected in zip(
        expressions, expected_wires, strict=True
    ):
        terms = expression.get("terms")
        if (
            expression.get("constant") != "0"
            or not isinstance(terms, list)
            or len(terms) != 2
            or any(
                term.get("coefficient") != "1"
                or not isinstance(term.get("wire_id"), int)
                for term in terms
            )
        ):
            raise ValueError(
                "Withdrawal sender transmission coordinate LC drifted"
            )
        wires = tuple(term["wire_id"] for term in terms)
        if wires != expected:
            raise ValueError(
                "Withdrawal sender transmission coordinate wires drifted"
            )
        computed_wires.append(wires)
    x_wires, y_wires = computed_wires
    dtk = plan.segments["sender_dtk"]
    compress = plan.segments["sender_transmission_compress"]
    non_identity = plan.segments["sender_transmission_non_identity"]
    _require_seats(
        dtk,
        {
            1: _binding_wire_vector(plan.bindings, "auth.ak", 2)[0],
            3: _binding_wire_vector(plan.bindings, "auth.ak", 2)[1],
            706: _single_binding_wire(plan.bindings, "auth.nk"),
            977: _single_binding_wire(
                plan.bindings, "auth.ivk_reduced"
            ),
            978: _single_binding_wire(
                plan.bindings, "auth.ivk_quotient_a"
            ),
            2211: _binding_wire_vector(
                plan.bindings, "sender.div_gen", 2
            )[0],
            2212: _binding_wire_vector(
                plan.bindings, "sender.div_gen", 2
            )[1],
            4961: x_wires[0],
            4969: x_wires[1],
            4962: y_wires[0],
            4970: y_wires[1],
        },
        "Withdrawal DTK inputs and output",
    )
    transmission_fq = _binding_expression(
        plan.bindings, "sender.transmission_fq", 1
    )[0]
    expected_transmission_fq = _lc_expression(
        (6322, 6662), (MODULUS_MINUS_ONE, "1")
    )
    if transmission_fq != expected_transmission_fq:
        raise ValueError("Withdrawal transmission compressor output LC drifted")
    _require_seats(
        compress,
        {
            1: x_wires[0],
            2: x_wires[1],
            4: y_wires[0],
            5: y_wires[1],
            367: 6322,
            707: 6662,
        },
        "Withdrawal transmission compressor input and output",
    )
    _require_seats(
        non_identity,
        {1: 6663, 2: x_wires[0], 3: x_wires[1]},
        "Withdrawal transmission non-identity inverse and x input",
    )
    return {
        "circuit": "shielded_ics20_withdrawal",
        "module": "ShieldedIcs20Withdrawal",
        "dtk": dtk["index"],
        "compress": compress["index"],
        "non_identity": non_identity["index"],
        "x0": x_wires[0],
        "x1": x_wires[1],
        "y0": y_wires[0],
        "y1": y_wires[1],
    }


def _withdrawal_crypto_seating_aggregate(
    config: dict[str, int | str],
) -> str:
    """Render exact active DTK, compressor, and nonidentity seating."""

    dtk = config["dtk"]
    compress = config["compress"]
    non_identity = config["non_identity"]
    x0 = config["x0"]
    x1 = config["x1"]
    y0 = config["y0"]
    y1 = config["y1"]
    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg{dtk}
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg{compress}
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg{non_identity}

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact active Window2 DTK/compressor/nonidentity seating.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalDtkSeating

open Contracts.ShieldedIcs20Withdrawal

theorem dtkXWires :
    (Seg{dtk}.wireSeating 4961, Seg{dtk}.wireSeating 4969) =
      ({x0}, {x1}) := by
  decide +kernel

theorem dtkYWires :
    (Seg{dtk}.wireSeating 4962, Seg{dtk}.wireSeating 4970) =
      ({y0}, {y1}) := by
  decide +kernel

theorem compressXWires :
    (Seg{compress}.wireSeating 1, Seg{compress}.wireSeating 2) =
      ({x0}, {x1}) := by
  decide +kernel

theorem compressYWires :
    (Seg{compress}.wireSeating 4, Seg{compress}.wireSeating 5) =
      ({y0}, {y1}) := by
  decide +kernel

theorem nonIdentityXWires :
    (Seg{non_identity}.wireSeating 2,
      Seg{non_identity}.wireSeating 3) = ({x0}, {x1}) := by
  decide +kernel

end Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalDtkSeating
"""


def _render_withdrawal_crypto_seating(
    config: dict[str, int | str],
) -> dict[Path, str]:
    """Render the single bounded active Window2 seating module."""

    return {
        dtk_seating.LEAN / "ShieldedIcs20WithdrawalDtkSeating.lean":
            _withdrawal_crypto_seating_aggregate(config)
    }


def render_withdrawal_crypto_seams(
    ir: dict, constraint_manifest: dict
) -> tuple[str, dict[str, str], dict[Path, str]]:
    """Reuse the reviewed DTK join renderer with Withdrawal-authenticated roles."""

    plan = _validate_withdrawal_refinement_plan(
        ir, constraint_manifest
    )
    seating_config = _withdrawal_dtk_seating_config(plan)
    seating_module = (
        "Shieldd.GnarkFormal.Deployed."
        "ShieldedIcs20WithdrawalDtkSeating"
    )
    source = core.render_semantic_seams(
        ir,
        constraint_manifest,
        crypto_segments=(
            plan.segments["sender_div_gen_compress"],
            plan.segments["sender_dtk"],
            plan.segments["sender_transmission_compress"],
        ),
        bindings=core.SharedCryptoBindings(
            transmission_computed="sender.transmission.computed",
            divgen_fq="sender.div_gen_fq",
            transmission_fq="sender.transmission_fq",
            transmission_computed_accessor="senderTransmissionComputed",
            divgen_fq_accessor="senderDivGenFq",
            transmission_fq_accessor="senderTransmissionFq",
        ),
        seating_module=seating_module,
        generator=GENERATOR,
    )
    wrapper, parts = core.split_semantic_seams(
        ir, source, generator=GENERATOR
    )
    seating_files = _render_withdrawal_crypto_seating(seating_config)
    return wrapper, parts, seating_files


def _transfer_dtk_seating_config(
    plan: TransferRefinementPlan,
) -> dict[str, int | str]:
    """Authenticate the active two-term DTK/quotient seam."""

    expressions = _binding_expression(
        plan.bindings, "sender.transmission.computed", 2
    )
    expected_wires = ((6768, 6776), (6769, 6777))
    computed_wires: list[tuple[int, int]] = []
    for expression, expected in zip(
        expressions, expected_wires, strict=True
    ):
        terms = expression.get("terms")
        if (
            expression.get("constant") != "0"
            or not isinstance(terms, list)
            or len(terms) != 2
            or any(
                term.get("coefficient") != "1"
                or not isinstance(term.get("wire_id"), int)
                for term in terms
            )
        ):
            raise ValueError(
                "Transfer sender transmission coordinate LC drifted"
            )
        wires = tuple(term["wire_id"] for term in terms)
        if wires != expected:
            raise ValueError(
                "Transfer sender transmission coordinate wires drifted"
            )
        computed_wires.append(wires)
    x_wires, y_wires = computed_wires
    raw = _binding_wire_vector(plan.bindings, "sender.transmission", 2)
    if raw != (78, 79):
        raise ValueError(
            "Transfer sender transmission raw wires drifted"
        )
    dtk = plan.segments["sender_dtk"]
    equivalent = plan.segments["sender_transmission_equivalent"]
    _require_seats(
        dtk,
        {
            4961: x_wires[0],
            4969: x_wires[1],
            4962: y_wires[0],
            4970: y_wires[1],
        },
        "Transfer DTK output",
    )
    _require_seats(
        equivalent,
        {
            1: raw[1],
            2: x_wires[0],
            3: x_wires[1],
            5: raw[0],
            6: y_wires[0],
            7: y_wires[1],
        },
        "Transfer DTK quotient-equivalence",
    )
    return {
        "circuit": "transfer",
        "module": "Transfer",
        "dtk": dtk["index"],
        "equivalent": equivalent["index"],
        "x0": x_wires[0],
        "x1": x_wires[1],
        "y0": y_wires[0],
        "y1": y_wires[1],
    }


def _transfer_crypto_seating_aggregate(
    config: dict[str, int | str],
) -> str:
    """Render exact active DTK and quotient two-term seating equalities."""

    dtk = config["dtk"]
    equivalent = config["equivalent"]
    x0 = config["x0"]
    x1 = config["x1"]
    y0 = config["y0"]
    y1 = config["y1"]
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg{dtk}
import ShielddGnarkFormal.Deployed.Contracts.Transfer.Seg{equivalent}

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-!
Exact active Window2 DTK-output and quotient-equivalence seating.  No direct
coordinate equality with the prover-supplied affine representative is asserted.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.TransferCryptoSeating

open Contracts.Transfer

abbrev F := Seg{dtk}.F

theorem dtkXWires :
    (Seg{dtk}.wireSeating 4961, Seg{dtk}.wireSeating 4969) =
      ({x0}, {x1}) := by
  decide +kernel

theorem dtkYWires :
    (Seg{dtk}.wireSeating 4962, Seg{dtk}.wireSeating 4970) =
      ({y0}, {y1}) := by
  decide +kernel

theorem equivalentXWires :
    (Seg{equivalent}.wireSeating 2, Seg{equivalent}.wireSeating 3) =
      ({x0}, {x1}) := by
  decide +kernel

theorem equivalentYWires :
    (Seg{equivalent}.wireSeating 6, Seg{equivalent}.wireSeating 7) =
      ({y0}, {y1}) := by
  decide +kernel

theorem dtkX (rho : Nat → F) :
    rho (Seg{dtk}.wireSeating 4961) +
        rho (Seg{dtk}.wireSeating 4969) =
      rho {x0} + rho {x1} := by
  rw [show Seg{dtk}.wireSeating 4961 = {x0} by decide +kernel]
  rw [show Seg{dtk}.wireSeating 4969 = {x1} by decide +kernel]

theorem dtkY (rho : Nat → F) :
    rho (Seg{dtk}.wireSeating 4962) +
        rho (Seg{dtk}.wireSeating 4970) =
      rho {y0} + rho {y1} := by
  rw [show Seg{dtk}.wireSeating 4962 = {y0} by decide +kernel]
  rw [show Seg{dtk}.wireSeating 4970 = {y1} by decide +kernel]

theorem equivalentX (rho : Nat → F) :
    rho (Seg{equivalent}.wireSeating 2) +
        rho (Seg{equivalent}.wireSeating 3) =
      rho {x0} + rho {x1} := by
  rw [show Seg{equivalent}.wireSeating 2 = {x0} by decide +kernel]
  rw [show Seg{equivalent}.wireSeating 3 = {x1} by decide +kernel]

theorem equivalentY (rho : Nat → F) :
    rho (Seg{equivalent}.wireSeating 6) +
        rho (Seg{equivalent}.wireSeating 7) =
      rho {y0} + rho {y1} := by
  rw [show Seg{equivalent}.wireSeating 6 = {y0} by decide +kernel]
  rw [show Seg{equivalent}.wireSeating 7 = {y1} by decide +kernel]

end Shieldd.GnarkFormal.Deployed.TransferCryptoSeating
"""


def _render_transfer_crypto_seating(
    config: dict[str, int | str],
) -> dict[Path, str]:
    """Render the single bounded active Window2 seating module."""

    return {
        dtk_seating.LEAN / "TransferCryptoSeating.lean":
            _transfer_crypto_seating_aggregate(config)
    }


def render_transfer_crypto_seams(
    ir: dict, constraint_manifest: dict
) -> tuple[str, dict[str, str], dict[Path, str]]:
    """Render the exact DTK/Seg15 quotient-invariance composition."""

    plan = _validate_transfer_refinement_plan(ir, constraint_manifest)
    _validate_transfer_core_provider_seats(plan)
    config = _transfer_dtk_seating_config(plan)
    dtk_index = plan.segments["sender_dtk"]["index"]
    equivalent_index = plan.segments[
        "sender_transmission_equivalent"
    ]["index"]
    dtk_provider = _transfer_semantic_provider(
        plan.segments["sender_dtk"]
    )
    dtk_support = f"{dtk_provider}.DtkSupport"
    dtk_output = f"{dtk_provider}.DtkWindowSupport.output"
    divgen_provider = _transfer_semantic_provider(
        plan.segments["sender_div_gen_compress"]
    )
    transmission_provider = _transfer_semantic_provider(
        plan.segments["sender_transmission_compress"]
    )
    equivalent_provider = _transfer_semantic_provider(
        plan.segments["sender_transmission_equivalent"]
    )
    raw_transmission = _binding_wire_vector(
        plan.bindings, "sender.transmission", 2
    )
    source = f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAdapters
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAction
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
import ShielddGnarkFormal.Deployed.TransferCryptoSeating

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-!
Exact Transfer DTK composition.  The prover-supplied affine transmission point
is joined to the computed DTK only through Seg{equivalent_index}'s certified
Decaf quotient relation; compression invariance, never coordinate equality,
transfers its encoding to the computed point.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open Shieldd.GnarkFormal
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
private local instance choiceFreeTransferCryptoCommRing : CommRing DeployedF :=
  ZMod.commRing _

private theorem negOne :
    ({MODULUS_MINUS_ONE} : DeployedF) = -1 := by
  decide +kernel

/-- The action's computed x-coordinate is the exact DTK output LC. -/
theorem senderTransmissionComputed0_eq_dtkOutX
    (rho : Nat → DeployedF) :
    senderTransmissionComputed0 rho =
      ({dtk_output} (SenderDtkValuation rho)).x := by
  have hsum := Deployed.TransferCryptoSeating.dtkX rho
  simpa only [
    senderTransmissionComputed0, senderTransmissionComputed0LC,
    {dtk_output},
    SenderDtkValuation, Seg{dtk_index}.localRho,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsum.symm

/-- The action's computed y-coordinate is the exact DTK output LC. -/
theorem senderTransmissionComputed1_eq_dtkOutY
    (rho : Nat → DeployedF) :
    senderTransmissionComputed1 rho =
      ({dtk_output} (SenderDtkValuation rho)).y := by
  have hsum := Deployed.TransferCryptoSeating.dtkY rho
  simpa only [
    senderTransmissionComputed1, senderTransmissionComputed1LC,
    {dtk_output},
    SenderDtkValuation, Seg{dtk_index}.localRho,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsum.symm

/-- Seg{equivalent_index}'s left x-expression is the computed DTK LC. -/
theorem senderTransmissionEquivalentComputedX
    (rho : Nat → DeployedF) :
    SenderTransmissionEquivalentValuation rho 2 +
        SenderTransmissionEquivalentValuation rho 3 =
      senderTransmissionComputed0 rho := by
  have hsum := Deployed.TransferCryptoSeating.equivalentX rho
  simpa only [
    senderTransmissionComputed0, senderTransmissionComputed0LC,
    SenderTransmissionEquivalentValuation,
    Seg{equivalent_index}.localRho,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsum.symm

/-- Seg{equivalent_index}'s left y-expression is the computed DTK LC. -/
theorem senderTransmissionEquivalentComputedY
    (rho : Nat → DeployedF) :
    SenderTransmissionEquivalentValuation rho 6 +
        SenderTransmissionEquivalentValuation rho 7 =
      senderTransmissionComputed1 rho := by
  have hsum := Deployed.TransferCryptoSeating.equivalentY rho
  simpa only [
    senderTransmissionComputed1, senderTransmissionComputed1LC,
    SenderTransmissionEquivalentValuation,
    Seg{equivalent_index}.localRho,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Deployed.Templates.seated,
    zero_add, one_mul, add_zero] using hsum.symm

/-- Exact diversified-generator compression upstream of the DTK. -/
theorem senderDivGenCompressedSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      (senderDivGenFq rho) := by
  have h := semantic.senderDivGenCompress
  simp [
    SenderDivGenCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {divgen_provider}.spec,
    {divgen_provider}.inputX, {divgen_provider}.inputY,
    {divgen_provider}.templateRho,
    senderDivGen0, senderDivGen0LC,
    senderDivGen1, senderDivGen1LC,
    senderDivGenFq, senderDivGenFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    senderDivGenCompressAt1, senderDivGenCompressAt3,
    senderDivGenCompressAt365, senderDivGenCompressAt705,
    negOne, sub_eq_add_neg, add_comm] at h ⊢
  rw [negOne]
  ring_nf at h ⊢
  exact h

/-- The exact DTK provider produces the action's computed transmission point. -/
theorem senderDtkSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Protocol.Common.Decaf.diversifiedTransmissionKey
        (authNk rho)
        ⟨authAk0 rho, authAk1 rho⟩
        ⟨senderDivGen0 rho, senderDivGen1 rho⟩
        (authIvkReduced rho) (authIvkQuotientA rho)
        ⟨senderTransmissionComputed0 rho,
         senderTransmissionComputed1 rho⟩ ∧
      Protocol.Common.Decaf.onCurve
        ⟨senderTransmissionComputed0 rho,
         senderTransmissionComputed1 rho⟩ := by
  have h := semantic.senderDtk
  change {dtk_support}.spec (SenderDtkValuation rho) at h
  have hCurveProtocol :=
    Decaf377Assumptions.onCurve_of_compress
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      (senderDivGenFq rho)
      (senderDivGenCompressedSpec_of_semantic rho semantic)
  have hCurve :
      {dtk_support}.onCurveAt
        (SenderDtkValuation rho 2211)
        (SenderDtkValuation rho 2212) := by
    simpa only [
      {dtk_support}.onCurveAt,
      EdwardsBridge.onCurve, EdwardsBridge.d,
      senderDivGen0, senderDivGen0LC,
      senderDivGen1, senderDivGen1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      senderDtkAt2211, senderDtkAt2212,
      zero_add, one_mul, add_zero] using hCurveProtocol
  rcases h hCurve with ⟨hDtk, hOnCurve⟩
  constructor
  · rw [
      senderTransmissionComputed0_eq_dtkOutX,
      senderTransmissionComputed1_eq_dtkOutY
    ]
    simpa only [
      authNk, authNkLC, authAk0, authAk0LC, authAk1, authAk1LC,
      authIvkReduced, authIvkReducedLC,
      authIvkQuotientA, authIvkQuotientALC,
      senderDivGen0, senderDivGen0LC,
      senderDivGen1, senderDivGen1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      senderDtkAt1, senderDtkAt3, senderDtkAt706,
      senderDtkAt977, senderDtkAt978,
      senderDtkAt2211, senderDtkAt2212,
      zero_add, one_mul, add_zero] using hDtk
  · rw [
      senderTransmissionComputed0_eq_dtkOutX,
      senderTransmissionComputed1_eq_dtkOutY
    ]
    exact hOnCurve

/-- The raw affine representative consumed by the compressor is exact. -/
theorem senderTransmissionRawCompressedSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨senderTransmission0 rho, senderTransmission1 rho⟩
      (senderTransmissionFq rho) := by
  have h := semantic.senderTransmissionCompress
  simp [
    SenderTransmissionCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {transmission_provider}.spec,
    {transmission_provider}.inputX,
    {transmission_provider}.inputY,
    {transmission_provider}.templateRho,
    senderTransmission0, senderTransmission0LC,
    senderTransmission1, senderTransmission1LC,
    senderTransmissionFq, senderTransmissionFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    senderTransmissionCompressAt1, senderTransmissionCompressAt3,
    senderTransmissionCompressAt365,
    senderTransmissionCompressAt705,
    negOne, sub_eq_add_neg, add_comm] at h ⊢
  rw [negOne]
  ring_nf at h ⊢
  exact h

/--
Seg{equivalent_index} proves quotient equality between the computed DTK and
the raw affine representative supplied to the compressor.
-/
theorem senderTransmissionEquivalentSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.DecafEquivalent
      ⟨senderTransmissionComputed0 rho,
       senderTransmissionComputed1 rho⟩
      ⟨senderTransmission0 rho, senderTransmission1 rho⟩ := by
  have hEq := semantic.senderTransmissionEquivalent
  change {equivalent_provider}.spec
    (SenderTransmissionEquivalentValuation rho) at hEq
  have hRawX :
      SenderTransmissionEquivalentValuation rho 5 =
        senderTransmission0 rho := by
    simp only [
      SenderTransmissionEquivalentValuation,
      Seg{equivalent_index}.localRho, Deployed.Templates.seated,
      senderTransmission0, senderTransmission0LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero]
    rw [show Seg{equivalent_index}.wireSeating 5 =
      {raw_transmission[0]}
      by decide +kernel]
  have hRawY :
      SenderTransmissionEquivalentValuation rho 1 =
        senderTransmission1 rho := by
    simp only [
      SenderTransmissionEquivalentValuation,
      Seg{equivalent_index}.localRho, Deployed.Templates.seated,
      senderTransmission1, senderTransmission1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      zero_add, one_mul, add_zero]
    rw [show Seg{equivalent_index}.wireSeating 1 =
      {raw_transmission[1]}
      by decide +kernel]
  refine ⟨?_, ?_, ?_⟩
  · have hOn := (senderDtkSpec_of_semantic rho semantic).2
    simpa only [
      Protocol.Common.Decaf.onCurve,
      Protocol.Common.Decaf.curveD,
      EdwardsBridge.onCurve, EdwardsBridge.d,
      sub_eq_add_neg, add_comm
    ] using hOn
  · exact Decaf377Assumptions.onCurve_of_compress
      ⟨senderTransmission0 rho, senderTransmission1 rho⟩
      (senderTransmissionFq rho)
      (senderTransmissionRawCompressedSpec_of_semantic rho semantic)
  · unfold {equivalent_provider}.spec at hEq
    unfold Decaf377Assumptions.AssertEquivalentSpec
    simp only [one_mul] at hEq
    rw [
      hRawX, hRawY,
      senderTransmissionEquivalentComputedX,
      senderTransmissionEquivalentComputedY
    ] at hEq
    simpa only [mul_comm] using hEq

/--
Compression is transferred from the raw affine representative to the computed
DTK only by the certified Decaf quotient-invariance theorem.
-/
theorem senderTransmissionCompressedSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨senderTransmissionComputed0 rho,
       senderTransmissionComputed1 rho⟩
      (senderTransmissionFq rho) := by
  exact Decaf377Assumptions.compress_respects_decafEquivalent
    ⟨senderTransmissionComputed0 rho,
     senderTransmissionComputed1 rho⟩
    ⟨senderTransmission0 rho, senderTransmission1 rho⟩
    (senderTransmissionFq rho)
    (senderTransmissionEquivalentSpec_of_semantic rho semantic)
    (senderTransmissionRawCompressedSpec_of_semantic rho semantic)

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""
    forbidden = (
        "dtkOutX_eq_transmissionCompressInputX",
        "dtkOutY_eq_transmissionCompressInputY",
    )
    if any(marker in source for marker in forbidden):
        raise ValueError(
            "Transfer crypto seam attempted direct DTK coordinate equality"
        )
    return source, {}, _render_transfer_crypto_seating(config)


def _render_transfer_shared_transcript_bodies(
    plan: TransferRefinementPlan,
) -> str:
    """Render the four shared-secret bodies behind deployment-stable names."""

    tiers = (
        (
            "senderCore",
            "sender_core_shared_secret",
            "senderRCore",
            "senderCore",
            "complianceSenderRCore",
            "complianceSenderCoreEpk",
            253,
            1809,
            1807,
            1,
        ),
        (
            "senderExt",
            "sender_ext_shared_secret",
            "senderRExt",
            "senderExt",
            "complianceSenderRExt",
            "complianceSenderExtEpk",
            252,
            1808,
            1806,
            7332,
        ),
        (
            "outputCore",
            "output_core_shared_secret",
            "outputRCore",
            "outputCore",
            "complianceOutputRCore",
            "complianceOutputCoreEpk",
            252,
            1808,
            1806,
            7332,
        ),
        (
            "outputExt",
            "output_ext_shared_secret",
            "outputRExt",
            "outputExt",
            "complianceOutputRExt",
            "complianceOutputExtEpk",
            252,
            1808,
            1806,
            7332,
        ),
    )
    rendered = []
    for (
        stable,
        label,
        transcript_scalar,
        transcript_tier,
        scalar_binding,
        epk_binding,
        esk_local,
        epk_x_local,
        epk_y_local,
        flag_local,
    ) in tiers:
        provider = _transfer_semantic_provider(plan.segments[label])
        valuation = f"{core.camel(label)}Valuation"
        semantic_spec = f"{core.camel(label)}SemanticSpec"
        semantic_field = core.lower_camel(label)
        accessor = core.lower_camel(label)
        rendered.append(f"""\
/-- Provider-derived ACK point used by the `{stable}` shared-secret body. -/
def {stable}SharedAck (rho : Nat → DeployedF) :
    Protocol.Common.Point DeployedF :=
  {provider}.ack ({valuation} rho)

/-- Provider-derived diversified transmission key for `{stable}`. -/
def {stable}SharedDkPub (rho : Nat → DeployedF) :
    Protocol.Common.Point DeployedF :=
  {provider}.dkPub ({valuation} rho)

/-- Exact issuer, user, and selected shared points for `{stable}`. -/
def {stable}SharedSecrets (rho : Nat → DeployedF) :
    SharedSecretBridge.SharedSecrets :=
  {provider}.output ({valuation} rho)

/-- The certified `{stable}` body consumes the exact action transcript. -/
theorem {stable}SharedSecretBody_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    SharedSecretBridge.SharedSecretsBody
      (C.action rho).transcript.{transcript_scalar}
      ({stable}SharedAck rho)
      ({stable}SharedDkPub rho)
      (C.action rho).transcript.{transcript_tier}.epk
      (C.action rho).transcript.isFlagged
      ({stable}SharedSecrets rho) := by
  simpa only [
    {semantic_spec}, {provider}.spec,
    {provider}.esk, {provider}.publishedEpk,
    {provider}.isFlagged,
    {stable}SharedAck, {stable}SharedDkPub,
    {stable}SharedSecrets,
    C.action, C.transcript, C.{transcript_tier},
    {scalar_binding}, {scalar_binding}LC,
    {epk_binding}0, {epk_binding}0LC,
    {epk_binding}1, {epk_binding}1LC,
    isFlagged, isFlaggedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {accessor}At{esk_local},
    {accessor}At{epk_x_local},
    {accessor}At{epk_y_local},
    {accessor}At{flag_local},
    zero_add, one_mul, add_zero
  ] using semantic.{semantic_field}""")
    return "\n\n".join(rendered)


def _render_transfer_epk_and_salt_seams(
    plan: TransferRefinementPlan,
) -> str:
    """Render exact transcript EPK compression and salt derivation facts."""

    epk_facts = []
    for stable, label, tier, binding in (
        (
            "senderCore",
            "sender_core_epk_compress",
            "senderCore",
            "complianceSenderCoreEpk",
        ),
        (
            "senderExt",
            "sender_ext_epk_compress",
            "senderExt",
            "complianceSenderExtEpk",
        ),
        (
            "outputCore",
            "output_core_epk_compress",
            "outputCore",
            "complianceOutputCoreEpk",
        ),
        (
            "outputExt",
            "output_ext_epk_compress",
            "outputExt",
            "complianceOutputExtEpk",
        ),
    ):
        provider = _transfer_semantic_provider(plan.segments[label])
        valuation = f"{core.camel(label)}Valuation"
        semantic_spec = f"{core.camel(label)}SemanticSpec"
        field = core.lower_camel(label)
        accessor = core.lower_camel(label)
        epk_facts.append(f"""\
/-- The `{stable}` published EPK is compressed to its action encoding. -/
theorem {stable}EpkCompressed_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Protocol.Common.Decaf.compressesTo
      (C.action rho).transcript.{tier}.epk
      (C.action rho).transcript.{tier}.epkEncoding := by
  have hspec :
      Decaf377Assumptions.CompressToFieldSpec
        ⟨{provider}.inputX ({valuation} rho),
         {provider}.inputY ({valuation} rho)⟩
        ({provider}.templateRho ({valuation} rho) 912 -
          {provider}.templateRho ({valuation} rho) 572) := by
    simpa [
      {semantic_spec}, {provider}.spec,
      Decaf377Assumptions.CompressToFieldSpec
    ] using semantic.{field}
  have hprotocol :=
    DecafCompressionBridge.compressesTo_of_spec _ _ hspec
  simp [
    AckBridge.toProtocolPoint,
    {provider}.inputX, {provider}.inputY,
    {provider}.templateRho,
    C.action, C.transcript, C.{tier},
    {binding}0, {binding}0LC,
    {binding}1, {binding}1LC,
    {binding}Fq, {binding}FqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {accessor}At1, {accessor}At3,
    {accessor}At365, {accessor}At705,
    negOne, sub_eq_add_neg,
    zero_add, one_mul, add_zero
  ] at hprotocol ⊢
  rw [negOne]
  ring_nf at hprotocol ⊢
  exact hprotocol""")

    salt_facts = []
    salt_labels = (
        "detectionSaltLabel",
        "senderCoreSaltLabel",
        "senderExtSaltLabel",
        "outputCoreSaltLabel",
        "outputExtSaltLabel",
    )
    for index, protocol_label in enumerate(salt_labels):
        label = f"salt{index}"
        provider = _transfer_semantic_provider(plan.segments[label])
        valuation = f"Salt{index}Valuation"
        accessor = f"salt{index}"
        salt_facts.append(f"""\
/-- The action's salt {index} is the exact domain-separated transfer salt. -/
theorem salt{index}_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (C.action rho).transcript.salts {index} =
      Protocol.Transfer.Concrete.transferSalt
        (C.action rho).transcript.transferNonceRoot
        Protocol.Transfer.Concrete.{protocol_label} := by
  have h := semantic.salt{index}
  unfold Salt{index}SemanticSpec {provider}.spec
    TransferSaltBridge.TransferSaltSpec at h
  have hdomain :
      {provider}.domain =
        Protocol.Transfer.Concrete.transferSaltDomain := by
    decide +kernel
  have hlabel :
      {provider}.label =
        Protocol.Transfer.Concrete.{protocol_label} := by
    decide +kernel
  rw [hdomain, hlabel] at h
  unfold Protocol.Transfer.Concrete.transferSalt
  simp [
    {provider}.endpoint38Lane1,
    C.action, C.transcript, C.saltAt,
    complianceTransferNonceRoot, complianceTransferNonceRootLC,
    salt{index}, salt{index}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {accessor}At1, {accessor}At256,
    {accessor}At261, {accessor}At266,
    zero_add, one_mul, add_zero
  ] at h ⊢
  norm_num at h ⊢
  ring_nf at h ⊢
  exact h""")

    return "\n\n".join((*epk_facts, *salt_facts))


def _render_transfer_shared_protocol_seams(
    plan: TransferRefinementPlan,
) -> str:
    """Promote all four shared-secret bodies to protocol relations."""

    tiers = (
        (
            "senderCore",
            "sender_core_shared_secret",
            "sender",
            "sender_ack",
            (1811, 1812),
            (1813, 1814),
            4573,
            4574,
            "senderRCore",
            "senderCore",
        ),
        (
            "senderExt",
            "sender_ext_shared_secret",
            "sender",
            "sender_ack",
            (1810, 1811),
            (1812, 1813),
            4572,
            4573,
            "senderRExt",
            "senderExt",
        ),
        (
            "outputCore",
            "output_core_shared_secret",
            "receiver",
            "receiver_ack",
            (1810, 1811),
            (1812, 1813),
            4572,
            4573,
            "outputRCore",
            "outputCore",
        ),
        (
            "outputExt",
            "output_ext_shared_secret",
            "receiver",
            "receiver_ack",
            (1810, 1811),
            (1812, 1813),
            4572,
            4573,
            "outputRExt",
            "outputExt",
        ),
    )
    rendered = ["""\
/-- The exact threshold output is Boolean at the circuit boundary. -/
theorem transcriptFlagBooleanCircuit_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    ThresholdRegulatedBridge.BooleanCircuit
      (C.action rho).transcript.isFlagged := by
  have h := thresholdFlag_of_semantic rho semantic
  rw [h.2.2.1]
  rcases isRegulatedBoolean with hzero | hone
  · simp [
      ThresholdRegulatedBridge.BooleanCircuit,
      Protocol.Transfer.Concrete.thresholdFlag,
      hzero
    ]
  · by_cases hthreshold :
      (C.action rho).receiver.note.amount.val <
        (C.action rho).assetProof.leaf.threshold.val
    · simp [
        ThresholdRegulatedBridge.BooleanCircuit,
        Protocol.Transfer.Concrete.thresholdFlag,
        Protocol.Transfer.Concrete.thresholdReached,
        hthreshold
      ]
    · simp [
        ThresholdRegulatedBridge.BooleanCircuit,
        Protocol.Transfer.Concrete.thresholdFlag,
        Protocol.Transfer.Concrete.thresholdReached,
        hthreshold, hone
      ]"""]

    for (
        stable,
        label,
        ack_stable,
        ack_label,
        shared_x_locals,
        shared_y_locals,
        dk_x_local,
        dk_y_local,
        transcript_scalar,
        transcript_tier,
    ) in tiers:
        segment = plan.segments[label]
        provider = _transfer_semantic_provider(segment)
        shared_index = segment["index"]
        ack_index = plan.segments[ack_label]["index"]
        ack_provider = _transfer_semantic_provider(
            plan.segments[ack_label]
        )
        ack_output = f"{ack_provider}.AckSupport.output"
        valuation = f"{core.camel(label)}Valuation"
        accessor = core.lower_camel(label)
        user_support = f"{provider}.UserWindowSupport"
        issuer_support = f"{provider}.IssuerWindowSupport"
        action_point = f"{ack_stable}AckPoint"
        action_spec = f"{ack_stable}AckSpec_of_semantic"
        action_d = f"{ack_stable}Compliance"
        rendered.append(f"""\
/-- The `{stable}` shared ladder consumes the complete action ACK point. -/
theorem {stable}SharedAck_eq_action
    (rho : Nat → DeployedF) :
    {stable}SharedAck rho = {action_point} rho := by
  simp only [
    {stable}SharedAck, {provider}.ack,
    {user_support}.base, {action_point}, {ack_output},
    Protocol.Common.Point.mk.injEq
  ]
  constructor
  · simp only [
      {stable}SharedAck, {provider}.ack,
      {user_support}.base, {action_point}, {ack_output},
      {valuation}, Seg{shared_index}.localRho,
      SenderAckValuation, ReceiverAckValuation,
      Seg{ack_index}.localRho, Deployed.Templates.seated]
    rw [show Seg{shared_index}.wireSeating {shared_x_locals[0]} =
      Seg{ack_index}.wireSeating 3003 by decide +kernel]
    rw [show Seg{shared_index}.wireSeating {shared_x_locals[1]} =
      Seg{ack_index}.wireSeating 3011 by decide +kernel]
  · simp only [
      {stable}SharedAck, {provider}.ack,
      {user_support}.base, {action_point}, {ack_output},
      {valuation}, Seg{shared_index}.localRho,
      SenderAckValuation, ReceiverAckValuation,
      Seg{ack_index}.localRho, Deployed.Templates.seated]
    rw [show Seg{shared_index}.wireSeating {shared_y_locals[0]} =
      Seg{ack_index}.wireSeating 3004 by decide +kernel]
    rw [show Seg{shared_index}.wireSeating {shared_y_locals[1]} =
      Seg{ack_index}.wireSeating 3012 by decide +kernel]

/-- The `{stable}` shared ladder consumes the selected action detection key. -/
theorem {stable}SharedDkPub_eq_action
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    {stable}SharedDkPub rho =
      Protocol.Transfer.Concrete.effectiveDkPub (C.action rho) := by
  rw [← effectiveDkPoint_eq_action rho semantic]
  simp [
    {stable}SharedDkPub, {provider}.dkPub,
    {issuer_support}.base,
    Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.selectedX,
    Deployed.Templates.Semantics.TSelectPoint_794c37cf14a957fde2cc9026bf435729f36540de636670284dc233839047d975.selectedY,
    Protocol.Transfer.Concrete.unregulatedDkPub,
    {accessor}At{dk_x_local}, {accessor}At{dk_y_local},
    effectiveDkPubAt4, effectiveDkPubAt5
  ]

/-- The `{stable}` body proves the independent protocol shared-secret relation. -/
theorem {stable}SharedSecrets_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    Protocol.Transfer.Concrete.sharedSecrets
      (C.action rho).transcript.{transcript_scalar}
      (Protocol.Transfer.Concrete.ack
        (Protocol.Transfer.Concrete.effectiveRingPk (C.action rho))
        (C.action rho).{action_d}.d)
      (Protocol.Transfer.Concrete.effectiveDkPub (C.action rho))
      (C.action rho).transcript.{transcript_tier}.epk
      (C.action rho).transcript.isFlagged
      ({stable}SharedSecrets rho).issuer
      ({stable}SharedSecrets rho).user
      ({stable}SharedSecrets rho).selected := by
  have hAck :=
    {action_spec} rho semantic isRegulatedBoolean
  have hAckEq :
      {action_point} rho =
        Protocol.Transfer.Concrete.ack
          (Protocol.Transfer.Concrete.effectiveRingPk (C.action rho))
          (C.action rho).{action_d}.d := by
    simpa only [Protocol.Transfer.Concrete.ack] using hAck.2.2.2
  have hBody :=
    {stable}SharedSecretBody_of_semantic rho semantic
  rw [
    {stable}SharedAck_eq_action rho,
    hAckEq,
    {stable}SharedDkPub_eq_action rho semantic
  ] at hBody
  exact (SharedSecretBridge.shared_secrets_sound
    (C.action rho).transcript.{transcript_scalar}
    (Protocol.Transfer.Concrete.ack
      (Protocol.Transfer.Concrete.effectiveRingPk (C.action rho))
      (C.action rho).{action_d}.d)
    (Protocol.Transfer.Concrete.effectiveDkPub (C.action rho))
    (C.action rho).transcript.{transcript_tier}.epk
    (C.action rho).transcript.isFlagged
    ({stable}SharedSecrets rho)
    (transcriptFlagBooleanCircuit_of_semantic
      rho semantic isRegulatedBoolean)
    (by simpa only [← hAckEq] using hAck.2.2.1)
    (effectiveDkPub_onCurve rho semantic isRegulatedBoolean)
    ({stable}EpkCompressed_of_semantic rho semantic).1
    hBody).2""")
    return "\n\n".join(rendered)


def _render_transfer_metadata_seams(
    plan: TransferRefinementPlan,
) -> str:
    """Render all eleven metadata equalities and their protocol bundle."""

    direct = []
    for (
        stable,
        label,
        metadata_field,
        metadata_binding,
        action_projection,
        action_field,
        action_binding,
    ) in (
        (
            "SenderSubjectDerivation",
            "metadata_sender_subject_derivation",
            "senderSubjectDerivation",
            "complianceMetadata0",
            "senderCompliance",
            "slotDerivation",
            "senderSlotDerivation",
        ),
        (
            "OutputSubjectDerivation",
            "metadata_output_subject_derivation",
            "outputSubjectDerivation",
            "complianceMetadata1",
            "receiverCompliance",
            "slotDerivation",
            "output0RecipientSlotDerivation",
        ),
        (
            "TargetTimestamp",
            "metadata_target_timestamp",
            "targetTimestamp",
            "complianceMetadata6",
            "",
            "targetTimestamp",
            "targetTimestamp",
        ),
    ):
        provider = _transfer_semantic_provider(plan.segments[label])
        camel = core.camel(label)
        lower = core.lower_camel(label)
        projection = (
            f"(C.action rho).{action_projection}.{action_field}"
            if action_projection
            else f"(C.action rho).{action_field}"
        )
        projection_unfold = (
            f"C.{action_projection}, " if action_projection else ""
        )
        direct.append(f"""\
/-- Exact metadata binding for `{metadata_field}`. -/
theorem metadata{stable}_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (C.action rho).transcript.metadata.{metadata_field} =
      {projection} := by
  have h := semantic.{lower}
  unfold {camel}SemanticSpec {provider}.spec at h
  simpa [
    C.action, C.transcript, C.metadata, {projection_unfold}
    {metadata_binding}, {metadata_binding}LC,
    {action_binding}, {action_binding}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {lower}At1, {lower}At2,
    zero_add, one_mul, add_zero
  ] using h.symm""")

    hashes = []
    selector_provider = _transfer_semantic_provider(
        plan.segments["effective_ring_id_hash"]
    )
    for (
        stable,
        label,
        metadata_field,
        metadata_binding,
        effective_label,
    ) in (
        (
            "RingIdHash",
            "metadata_ring_id_hash",
            "ringIdHash",
            "complianceMetadata2",
            "effective_ring_id_hash",
        ),
        (
            "PolicyIdHash",
            "metadata_policy_id_hash",
            "policyIdHash",
            "complianceMetadata3",
            "effective_policy_id_hash",
        ),
        (
            "ResourceHash",
            "metadata_resource_hash",
            "resourceHash",
            "complianceMetadata4",
            "effective_resource_hash",
        ),
        (
            "PermissionHash",
            "metadata_permission_hash",
            "permissionHash",
            "complianceMetadata5",
            "effective_permission_hash",
        ),
    ):
        provider = _transfer_semantic_provider(plan.segments[label])
        camel = core.camel(label)
        lower = core.lower_camel(label)
        effective_camel = core.camel(effective_label)
        effective_lower = core.lower_camel(effective_label)
        hashes.append(f"""\
/-- Exact effective-policy metadata binding for `{metadata_field}`. -/
theorem metadata{stable}_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (C.action rho).transcript.metadata.{metadata_field} =
      Protocol.Transfer.Concrete.effective{stable} (C.action rho) := by
  have h := semantic.{lower}
  unfold {camel}SemanticSpec {provider}.spec at h
  calc
    (C.action rho).transcript.metadata.{metadata_field} =
        (show DeployedF from
          Protocol.Transfer.Concrete.unregulatedPolicyHash) +
          {effective_camel}Valuation rho 3 := by
      simpa [
        C.action, C.transcript, C.metadata,
        {metadata_binding}, {metadata_binding}LC,
        {selector_provider}.selected,
        Protocol.Transfer.Concrete.unregulatedPolicyHash,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        {lower}At1, {lower}At2,
        {effective_lower}At3,
        zero_add, one_mul, add_zero
      ] using h.symm
    _ = _ := effective{stable}_eq_action rho semantic""")

    salts = []
    for (
        stable,
        label,
        metadata_field,
        metadata_binding,
        salt_index,
    ) in (
        (
            "SenderCoreSalt",
            "metadata_sender_core_salt",
            "senderCoreSalt",
            "complianceMetadata7",
            1,
        ),
        (
            "SenderExtSalt",
            "metadata_sender_ext_salt",
            "senderExtSalt",
            "complianceMetadata8",
            2,
        ),
        (
            "OutputCoreSalt",
            "metadata_output_core_salt",
            "outputCoreSalt",
            "complianceMetadata9",
            3,
        ),
        (
            "OutputExtSalt",
            "metadata_output_ext_salt",
            "outputExtSalt",
            "complianceMetadata10",
            4,
        ),
    ):
        provider = _transfer_semantic_provider(plan.segments[label])
        camel = core.camel(label)
        lower = core.lower_camel(label)
        salts.append(f"""\
/-- Exact metadata binding for transcript salt {salt_index}. -/
theorem metadata{stable}_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (C.action rho).transcript.metadata.{metadata_field} =
      (C.action rho).transcript.salts {salt_index} := by
  have h := semantic.{lower}
  unfold {camel}SemanticSpec {provider}.spec at h
  simp [
    C.action, C.transcript, C.metadata, C.saltAt,
    {metadata_binding}, {metadata_binding}LC,
    salt{salt_index}, salt{salt_index}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {lower}At1, {lower}At2,
    {lower}At3, {lower}At4,
    zero_add, one_mul, add_zero
  ] at h ⊢
  norm_num at h ⊢
  ring_nf at h ⊢
  exact h.symm""")

    bundle = """\
/-- All eleven metadata fields are bound to the exact action transcript. -/
theorem metadataBinding_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Protocol.Transfer.Concrete.metadataBinding (C.action rho) := by
  unfold Protocol.Transfer.Concrete.metadataBinding
  dsimp only
  exact ⟨
    metadataSenderSubjectDerivation_of_semantic rho semantic,
    metadataOutputSubjectDerivation_of_semantic rho semantic,
    metadataRingIdHash_of_semantic rho semantic,
    metadataPolicyIdHash_of_semantic rho semantic,
    metadataResourceHash_of_semantic rho semantic,
    metadataPermissionHash_of_semantic rho semantic,
    metadataTargetTimestamp_of_semantic rho semantic,
    metadataSenderCoreSalt_of_semantic rho semantic,
    metadataSenderExtSalt_of_semantic rho semantic,
    metadataOutputCoreSalt_of_semantic rho semantic,
    metadataOutputExtSalt_of_semantic rho semantic
  ⟩"""
    return "\n\n".join((*direct, *hashes, *salts, bundle))


def _render_transfer_encryption_seams(
    plan: TransferRefinementPlan,
) -> str:
    """Render selected-point joins and four protocol encryption bodies."""

    tiers = (
        (
            "senderAmount",
            "sender_amount_encryption",
            "senderCore",
            "sender_core_shared_secret",
            (4563, 4571, 7333),
            (4564, 4572, 7334),
            "amount",
            "senderCore",
            "complianceSenderCoreC2",
            "complianceSenderCoreCiphertext",
            "",
            "",
        ),
        (
            "senderAddress",
            "sender_address_encryption",
            "senderExt",
            "sender_ext_shared_secret",
            (4562, 4570, 7333),
            (4563, 4571, 7334),
            "address",
            "senderExt",
            "complianceSenderExtC2",
            "complianceSenderExtCiphertext",
            "receiverAddress",
            "output0Recipient",
        ),
        (
            "outputAmount",
            "output_amount_encryption",
            "outputCore",
            "output_core_shared_secret",
            (4562, 4570, 7333),
            (4563, 4571, 7334),
            "amount",
            "outputCore",
            "complianceOutputCoreC2",
            "complianceOutputCoreCiphertext",
            "",
            "",
        ),
        (
            "outputAddress",
            "output_address_encryption",
            "outputExt",
            "output_ext_shared_secret",
            (4562, 4570, 7333),
            (4563, 4571, 7334),
            "address",
            "outputExt",
            "complianceOutputExtC2",
            "complianceOutputExtCiphertext",
            "sender",
            "sender",
        ),
    )
    rendered = []
    for (
        stable,
        label,
        shared_stable,
        shared_label,
        shared_selected_x,
        shared_selected_y,
        kind,
        transcript_tier,
        c2_binding,
        ciphertext_binding,
        address_projection,
        address_binding_prefix,
    ) in tiers:
        segment = plan.segments[label]
        provider = _transfer_semantic_provider(segment)
        compress = f"{provider}Compress"
        poseidon = f"{provider}Poseidon"
        block_count = 1 if kind == "amount" else 3
        blocks = tuple(
            f"{provider}Poseidon.Block{index}"
            for index in range(block_count)
        )
        shared_segment = plan.segments[shared_label]
        shared_provider = _transfer_semantic_provider(shared_segment)
        shared_index = shared_segment["index"]
        encryption_index = segment["index"]
        shared_user_output = f"{shared_provider}.UserWindowSupport.output"
        valuation = f"{core.camel(label)}Valuation"
        semantic_spec = f"{core.camel(label)}SemanticSpec"
        semantic_field = core.lower_camel(label)
        accessor = core.lower_camel(label)
        rendered.append(f"""\
/-- Circuit point compressed by the `{stable}` encryption provider. -/
def {stable}EncryptionShared (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨{compress}.inputX ({valuation} rho),
   {compress}.inputY ({valuation} rho)⟩

/-- Exact compressed field for the `{stable}` selected shared point. -/
def {stable}EncryptionSharedFq (rho : Nat → DeployedF) : DeployedF :=
  {compress}.templateRho ({valuation} rho) 912 -
    {compress}.templateRho ({valuation} rho) 572

/-- The `{stable}` compressor consumes the complete selected shared point. -/
theorem {stable}EncryptionShared_eq_selected
    (rho : Nat → DeployedF) :
    AckBridge.toProtocolPoint ({stable}EncryptionShared rho) =
      ({shared_stable}SharedSecrets rho).selected := by
  simp only [
    {stable}EncryptionShared, AckBridge.toProtocolPoint,
    {shared_stable}SharedSecrets, {shared_provider}.output,
    Protocol.Common.Point.mk.injEq
  ]
  constructor
  · simp only [
      {stable}EncryptionShared, AckBridge.toProtocolPoint,
      {compress}.inputX,
      {shared_stable}SharedSecrets, {shared_provider}.output,
      {shared_provider}.userOutX, {shared_user_output},
      {valuation}, Seg{encryption_index}.localRho,
      {core.camel(shared_label)}Valuation,
      Seg{shared_index}.localRho, Deployed.Templates.seated,
      one_mul
    ]
    rw [show Seg{encryption_index}.wireSeating 1 =
      Seg{shared_index}.wireSeating {shared_selected_x[0]} by decide +kernel]
    rw [show Seg{encryption_index}.wireSeating 2 =
      Seg{shared_index}.wireSeating {shared_selected_x[1]} by decide +kernel]
    rw [show Seg{encryption_index}.wireSeating 3 =
      Seg{shared_index}.wireSeating {shared_selected_x[2]} by decide +kernel]
  · simp only [
      {stable}EncryptionShared, AckBridge.toProtocolPoint,
      {compress}.inputY,
      {shared_stable}SharedSecrets, {shared_provider}.output,
      {shared_provider}.userOutY, {shared_user_output},
      {valuation}, Seg{encryption_index}.localRho,
      {core.camel(shared_label)}Valuation,
      Seg{shared_index}.localRho, Deployed.Templates.seated,
      one_mul
    ]
    rw [show Seg{encryption_index}.wireSeating 5 =
      Seg{shared_index}.wireSeating {shared_selected_y[0]} by decide +kernel]
    rw [show Seg{encryption_index}.wireSeating 6 =
      Seg{shared_index}.wireSeating {shared_selected_y[1]} by decide +kernel]
    rw [show Seg{encryption_index}.wireSeating 7 =
      Seg{shared_index}.wireSeating {shared_selected_y[2]} by decide +kernel]

/-- Exact `{stable}` compression before protocol-point promotion. -/
theorem {stable}EncryptionCompressSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ({stable}EncryptionShared rho)
      ({stable}EncryptionSharedFq rho) := by
  have h := semantic.{semantic_field}.1
  simpa [
    {semantic_spec}, {provider}.spec,
    {compress}.spec,
    Decaf377Assumptions.CompressToFieldSpec,
    {stable}EncryptionShared,
    {stable}EncryptionSharedFq
  ] using h

/-- The `{stable}` stream seed is exactly `c2 - compress(shared)`. -/
private theorem {stable}StreamInput_eq_action
    (rho : Nat → DeployedF) :
    {blocks[0]}.block0Input0 ({valuation} rho) =
      (C.action rho).transcript.{transcript_tier}.c2 -
        {stable}EncryptionSharedFq rho := by
  simp [
    {blocks[0]}.block0Input0,
    {stable}EncryptionSharedFq,
    {compress}.templateRho,
    C.action, C.transcript, C.{transcript_tier},
    {c2_binding}, {c2_binding}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {accessor}At{710 if kind == "amount" else 1392},
    negOne, sub_eq_add_neg,
    zero_add, one_mul, add_zero
  ]
  rw [negOne]
  ring""")

        if kind == "amount":
            rendered.append(f"""\
/-- Exact `{stable}` amount encryption in protocol form. -/
theorem {stable}Encryption_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    PoseidonEncryptionBridge.AmountBodySpec
      ({stable}EncryptionShared rho)
      (C.action rho).transcript.{transcript_tier}.c2
      (C.action rho).receiver.note.amount
      (C.action rho).transcript.{transcript_tier}.ciphertext := by
  rcases semantic.{semantic_field} with
    ⟨hcompress, hposeidon, hcipher⟩
  unfold {poseidon}.spec {blocks[0]}.spec
    TransferSaltBridge.TransferSaltSpec at hposeidon
  have hdomain :
      {blocks[0]}.block0Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  rw [
    hdomain,
    {stable}StreamInput_eq_action
  ] at hposeidon
  have hcounter :
      {blocks[0]}.block0Input1 ({valuation} rho) = 0 := by
    rfl
  rw [hcounter] at hposeidon
  unfold {provider}.CiphertextSpec {provider}.Equality at hcipher
  refine ⟨{stable}EncryptionSharedFq rho, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec _ _
      ({stable}EncryptionCompressSpec_of_semantic rho semantic)
  · unfold Protocol.Transfer.Concrete.amountEncryption
    calc
      (C.action rho).transcript.{transcript_tier}.ciphertext =
          {valuation} rho 977 := by
        simp [
          C.action, C.transcript, C.{transcript_tier},
          {ciphertext_binding}, {ciphertext_binding}LC,
          StructuredLC.eval, StructuredLC.sumRuns,
          StructuredLC.sumResidual, StrideRun.eval,
          {accessor}At977
        ]
      _ = (show DeployedF from
            (C.action rho).receiver.note.amount) +
          (show DeployedF from
            Protocol.Transfer.Concrete.streamBlock
              ((C.action rho).transcript.{transcript_tier}.c2 -
                {stable}EncryptionSharedFq rho) 0) := by
        rw [← hcipher, hposeidon]
        simp [
          Protocol.Transfer.Concrete.streamBlock,
          C.action, C.receiver, C.receiverNote,
          output0NoteAmount, output0NoteAmountLC,
          StructuredLC.eval, StructuredLC.sumRuns,
          StructuredLC.sumResidual, StrideRun.eval,
          {accessor}At976
        ]""")
        else:
            packing = f"{provider}.AddressPacking"
            address_expr = (
                f"(C.action rho).{address_projection}"
                if address_projection == "sender"
                else "(C.action rho).receiver.note.owner"
            )
            address_action_unfolds = (
                "C.sender"
                if address_projection == "sender"
                else "C.receiver, C.receiverNote, C.receiverAddress"
            )
            div_binding = f"{address_binding_prefix}DivGenFq"
            transmission_binding = (
                f"{address_binding_prefix}TransmissionFq"
            )
            rendered.append(f"""\
/-- Exact `{stable}` address encryption in protocol form. -/
theorem {stable}Encryption_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    PoseidonEncryptionBridge.AddressBodySpec
      ({stable}EncryptionShared rho)
      (C.action rho).transcript.{transcript_tier}.c2
      {address_expr}
      (C.action rho).transcript.{transcript_tier}.ciphertext := by
  rcases semantic.{semantic_field} with
    ⟨hcompress, hposeidon, hpacking, hcipher⟩
  rcases hposeidon with ⟨hblock0, hblock1, hblock2⟩
  have hdiv :
      {packing}.diversifiedEncoding ({valuation} rho) =
        {address_expr}.diversifiedGeneratorEncoding := by
    simp [
      {packing}.diversifiedEncoding,
      C.action, {address_action_unfolds},
      {div_binding}, {div_binding}LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      {accessor}At963, {accessor}At964,
      negOne
    ]
    rw [negOne]
    ring
  have htransmission :
      {packing}.transmissionEncoding ({valuation} rho) =
        {address_expr}.transmissionEncoding := by
    simp [
      {packing}.transmissionEncoding,
      C.action, {address_action_unfolds},
      {transmission_binding}, {transmission_binding}LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      {accessor}At1304, {accessor}At1305,
      negOne
    ]
    rw [negOne]
    ring
  have hpackingSpec :=
    PoseidonEncryptionBridge.addressPacking_of_backend
      ({packing}.diversifiedEncoding ({valuation} rho))
      ({packing}.transmissionEncoding ({valuation} rho))
      ({packing}.plaintext0 ({valuation} rho))
      ({packing}.plaintext1 ({valuation} rho))
      ({packing}.plaintext2 ({valuation} rho))
      hpacking
  rw [hdiv, htransmission] at hpackingSpec
  unfold {blocks[0]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock0
  unfold {blocks[1]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock1
  unfold {blocks[2]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock2
  have hdomain0 :
      {blocks[0]}.block0Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  have hdomain1 :
      {blocks[1]}.block1Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  have hdomain2 :
      {blocks[2]}.block2Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  have hinput1 :
      {blocks[1]}.block1Input0 ({valuation} rho) =
        (C.action rho).transcript.{transcript_tier}.c2 -
          {stable}EncryptionSharedFq rho := by
    simpa [
      {blocks[1]}.block1Input0,
      {blocks[0]}.block0Input0
    ] using {stable}StreamInput_eq_action rho
  have hinput2 :
      {blocks[2]}.block2Input0 ({valuation} rho) =
        (C.action rho).transcript.{transcript_tier}.c2 -
          {stable}EncryptionSharedFq rho := by
    simpa [
      {blocks[2]}.block2Input0,
      {blocks[0]}.block0Input0
    ] using {stable}StreamInput_eq_action rho
  rw [hdomain0, {stable}StreamInput_eq_action] at hblock0
  rw [hdomain1, hinput1] at hblock1
  rw [hdomain2, hinput2] at hblock2
  have hcounter0 :
      {blocks[0]}.block0Input1 ({valuation} rho) = 0 := by rfl
  have hcounter1 :
      {blocks[1]}.block1Input1 ({valuation} rho) = 1 := by rfl
  have hcounter2 :
      {blocks[2]}.block2Input1 ({valuation} rho) = 2 := by rfl
  rw [hcounter0] at hblock0
  rw [hcounter1] at hblock1
  rw [hcounter2] at hblock2
  rcases hcipher with ⟨hcipher0, hcipher1, hcipher2⟩
  unfold {provider}.Equality at hcipher0 hcipher1 hcipher2
  refine ⟨{stable}EncryptionSharedFq rho, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec _ _
      ({stable}EncryptionCompressSpec_of_semantic rho semantic)
  · unfold Protocol.Transfer.Concrete.addressEncryption
    refine ⟨?_, ?_, ?_⟩
    · calc
        (C.action rho).transcript.{transcript_tier}.ciphertext 0 =
            {valuation} rho 1658 := by
          simp [
            C.action, C.transcript, C.{transcript_tier},
            {ciphertext_binding}At,
            {ciphertext_binding}Vector,
            {ciphertext_binding}0, {ciphertext_binding}0LC,
            StructuredLC.eval, StructuredLC.sumRuns,
            StructuredLC.sumResidual, StrideRun.eval,
          {accessor}At1658
          ] <;> rfl
        _ = Protocol.Transfer.Concrete.addressPlaintext0 {address_expr} +
            Protocol.Transfer.Concrete.streamBlock
              ((C.action rho).transcript.{transcript_tier}.c2 -
                {stable}EncryptionSharedFq rho) 0 := by
          rw [← hcipher0, hpackingSpec.1, hblock0]
          rfl
    · calc
        (C.action rho).transcript.{transcript_tier}.ciphertext 1 =
            {valuation} rho 1924 := by
          simp [
            C.action, C.transcript, C.{transcript_tier},
            {ciphertext_binding}At,
            {ciphertext_binding}Vector,
            {ciphertext_binding}1, {ciphertext_binding}1LC,
            StructuredLC.eval, StructuredLC.sumRuns,
            StructuredLC.sumResidual, StrideRun.eval,
            {accessor}At1924
          ] <;> rfl
        _ = Protocol.Transfer.Concrete.addressPlaintext1 {address_expr} +
            Protocol.Transfer.Concrete.streamBlock
              ((C.action rho).transcript.{transcript_tier}.c2 -
                {stable}EncryptionSharedFq rho) 1 := by
          rw [← hcipher1, hpackingSpec.2.1, hblock1]
          rfl
    · calc
        (C.action rho).transcript.{transcript_tier}.ciphertext 2 =
            {valuation} rho 2190 := by
          simp [
            C.action, C.transcript, C.{transcript_tier},
            {ciphertext_binding}At,
            {ciphertext_binding}Vector,
            {ciphertext_binding}2, {ciphertext_binding}2LC,
            StructuredLC.eval, StructuredLC.sumRuns,
            StructuredLC.sumResidual, StrideRun.eval,
            {accessor}At2190
          ] <;> rfl
        _ = Protocol.Transfer.Concrete.addressPlaintext2 {address_expr} +
            Protocol.Transfer.Concrete.streamBlock
              ((C.action rho).transcript.{transcript_tier}.c2 -
                {stable}EncryptionSharedFq rho) 2 := by
          rw [← hcipher2, hpackingSpec.2.2, hblock2]
          rfl""")
    return "\n\n".join(rendered)


def _render_transfer_statement_field_seams() -> tuple[str, str, str]:
    """Render exact v4 input LCs and the action's ordered field spine."""

    declarations = []
    rewrites = []
    action_fields = []
    source_fields = []
    for index, locals_ in enumerate(
        TRANSFER_STATEMENT_V4_FIELD_LOCALS
    ):
        stable = f"statementField{index:03d}"
        if len(locals_) == 1:
            expression = (
                f"StatementHashValuation rho {locals_[0]}"
            )
        else:
            expression = (
                "(-1 : DeployedF) * "
                f"StatementHashValuation rho {locals_[0]} + "
                f"StatementHashValuation rho {locals_[1]}"
            )
        theorem = f"statementProviderField{index}"
        normalize = "" if len(locals_) == 1 else "\n  rw [negOne]\n  ring"
        declarations.append(f"""\
private theorem {theorem} (rho : Nat → DeployedF) :
    {expression} = {stable} rho := by
  simp [
    {stable}, {stable}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    negOne
  ]{normalize}""")
        rewrites.append(f"{theorem} rho")
        action_fields.append(f"{stable} rho")
        source_fields.append(f"statementFields{index} rho")
    fields = ",\n      ".join(action_fields)
    sources = ",\n      ".join(source_fields)
    action_seam = f"""\
private theorem optionalNullifier_of_action (rho : Nat → DeployedF) :
    (C.action rho).optional.nullifier =
      spend1NullifierClaimed rho := by
  by_cases h : spend1IsDummy rho = 1
  · simp [
      C.action, C.optional, C.optionalDummy, C.optionalReal,
      Protocol.Transfer.OptionalSpend.nullifier, h
    ]
  · simp [
      C.action, C.optional, C.optionalDummy, C.optionalReal,
      Protocol.Transfer.OptionalSpend.nullifier, h
    ]

private theorem optionalRkEncoding_of_action (rho : Nat → DeployedF) :
    (C.action rho).optional.rkEncoding = spend1RkCompressed rho := by
  by_cases h : spend1IsDummy rho = 1
  · simp [
      C.action, C.optional, C.optionalDummy, C.optionalReal,
      Protocol.Transfer.OptionalSpend.rkEncoding, h
    ]
  · simp [
      C.action, C.optional, C.optionalDummy, C.optionalReal,
      Protocol.Transfer.OptionalSpend.rkEncoding, h
    ]

private theorem statementFields_of_action (rho : Nat → DeployedF) :
    Protocol.Transfer.Concrete.statementFields (C.action rho) =
      [{fields}] := by
  unfold Protocol.Transfer.Concrete.statementFields
  rw [optionalNullifier_of_action, optionalRkEncoding_of_action]
  change [{sources}] =
    [{fields}]
  rfl"""
    return (
        "\n\n".join(declarations),
        action_seam,
        ",\n    ".join(rewrites),
    )


def render_transfer_action_seams(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the registry, compliance, ACK, and balance proof boundary."""

    plan = _validate_transfer_refinement_plan(ir, constraint_manifest)
    _validate_transfer_action_protocol_seats(plan)
    providers = {
        label: _transfer_semantic_provider(plan.segments[label])
        for label in (
            "effective_ring_pk",
            "effective_dk_pub",
            "effective_ring_id_hash",
            "effective_policy_id_hash",
            "effective_resource_hash",
            "effective_permission_hash",
            "asset_dk_compress",
            "asset_ring_pk_compress",
            "asset_params_hash",
            "asset_ring_hash",
            "asset_leaf_hash",
            "asset_path",
            "asset_root_assert",
            "asset_gap",
            "asset_gap_accept",
            "sender_compliance_leaf",
            "sender_compliance_path",
            "sender_compliance_assert",
            "receiver_compliance_leaf",
            "receiver_compliance_path",
            "receiver_compliance_assert",
            "sender_ack",
            "receiver_ack",
            "net_balance",
            "balance_compress",
        )
    }
    asset_path = providers["asset_path"]
    compliance_path = providers["sender_compliance_path"]
    ack = providers["sender_ack"]
    ack_support = f"{ack}.AckSupport"
    ack_output = f"{ack_support}.output"
    balance = providers["net_balance"]
    balance_compress = providers["balance_compress"]
    asset_path_accessors = ", ".join(
        f"assetPathAt{local}"
        for level in TRANSFER_ASSET_PATH_LOCALS
        for local in level
    )
    compliance_path_accessors = {
        prefix: ", ".join(
            f"{prefix}CompliancePathAt{local}"
            for level in TRANSFER_COMPLIANCE_PATH_LOCALS
            for local in level
        )
        for prefix in ("sender", "receiver")
    }
    action_path_unfolds = {
        "asset": ", ".join(
            item
            for index in range(48)
            for item in (f"assetPath{index}", f"assetPath{index}LC")
        ),
        "sender": ", ".join(
            item
            for index in range(48)
            for item in (f"senderPath{index}", f"senderPath{index}LC")
        ),
        "receiver": ", ".join(
            item
            for index in range(48)
            for item in (
                f"output0RecipientPath{index}",
                f"output0RecipientPath{index}LC",
            )
        ),
    }

    def compliance_fragment(
        *,
        stable: str,
        lower: str,
        action_projection: str,
        action_path: str,
        binding_path: str,
        leaf_value: str,
        root_value: str,
        d_value: str,
        d_lc: str,
        position_value: str,
        position_lc: str,
        ack_point: str,
        ack_theorem: str,
    ) -> str:
        """Render one fully seated compliance leaf/path/assert composition."""

        leaf_label = f"{lower}_compliance_leaf"
        path_label = f"{lower}_compliance_path"
        assert_label = f"{lower}_compliance_assert"
        leaf_provider = providers[leaf_label]
        path_provider = providers[path_label]
        assert_provider = providers[assert_label]
        leaf_accessors = ", ".join(
            f"{lower}ComplianceLeafAt{local}"
            for local in (
                1, 2, 8, 9, 15, 21, 27, 33, 39,
                444, 449, 454, 459, 464, 469, 474, 479,
            )
        )
        path_leaf_accessors = ", ".join(
            f"{lower}CompliancePathAt{local}"
            for local in range(39, 47)
        )
        path_output_accessors = ", ".join(
            f"{lower}CompliancePathAt{5829 + 5 * index}"
            for index in range(5)
        )
        assert_accessors = ", ".join(
            f"{lower}ComplianceAssertAt{local}"
            for local in range(1, 8)
        )
        path_bindings = action_path_unfolds[lower]
        path_accessors = compliance_path_accessors[lower]
        path_at = (
            "senderPathAt"
            if lower == "sender"
            else "output0RecipientPathAt"
        )
        path_vector = (
            "senderPathVector"
            if lower == "sender"
            else "output0RecipientPathVector"
        )
        return f"""\
/-! ## {stable} compliance -/

/-- The `{lower}` compliance leaf is the exact protocol Poseidon7 leaf. -/
theorem {lower}ComplianceLeafHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    {leaf_value} rho =
      Protocol.Transfer.Concrete.complianceLeafHash
        (C.{action_projection} rho) := by
  have h := semantic.{lower}ComplianceLeaf
  unfold {stable}ComplianceLeafSemanticSpec
    {leaf_provider}.spec at h
  have hOutput :
      {leaf_value} rho =
        {leaf_provider}.output
          ({stable}ComplianceLeafValuation rho) := by
    simp only [
      {leaf_provider}.output,
      Deployed.CertifiedGadgetComplianceLeaf_89974c69097fPoseidon.s38_1,
      Poseidon7Bridge.row8,
      {leaf_value}, {leaf_value}LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      {leaf_accessors},
      zero_add, one_mul, add_zero
    ]
    ring
  have hLeaf :
      {leaf_value} rho =
        Poseidon7Bridge.permSpec7
          Protocol.Transfer.Concrete.complianceLeafDomain
          ((C.{action_projection} rho).address.diversifiedGeneratorEncoding)
          ((C.{action_projection} rho).address.transmissionEncoding)
          ((C.{action_projection} rho).address.clueKey)
          ((C.{action_projection} rho).assetId)
          ((C.{action_projection} rho).slotId)
          ((C.{action_projection} rho).slotDerivation)
          ((C.{action_projection} rho).d) := by
    rw [hOutput]
    simpa only [
      Protocol.Transfer.Concrete.complianceLeafDomain,
      C.{action_projection}, C.sender, C.receiverAddress,
      senderDivGenFq, senderDivGenFqLC,
      senderTransmissionFq, senderTransmissionFqLC,
      senderClueKey, senderClueKeyLC,
      output0RecipientDivGenFq, output0RecipientDivGenFqLC,
      output0RecipientTransmissionFq,
      output0RecipientTransmissionFqLC,
      output0NoteClueKey, output0NoteClueKeyLC,
      sharedAssetId, sharedAssetIdLC,
      senderSlotId, senderSlotIdLC,
      senderSlotDerivation, senderSlotDerivationLC,
      senderD, senderDLC,
      output0RecipientSlotId, output0RecipientSlotIdLC,
      output0RecipientSlotDerivation,
      output0RecipientSlotDerivationLC,
      output0RecipientD, output0RecipientDLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      {leaf_accessors},
      negOne, zero_add, one_mul, add_zero
    ] using h
  rw [hLeaf]
  simp only [
    Protocol.Transfer.Concrete.complianceLeafHash,
    Poseidon7Bridge.permSpec7
  ]

/-- The provider-local `{lower}` path is exactly the action path. -/
theorem {lower}ComplianceProviderPath_eq_action
    (rho : Nat → DeployedF) :
    {path_provider}.path ({stable}CompliancePathValuation rho) =
      QuadPathProtocolBridge.vectorPath (C.{action_path} rho) := by
  apply List.Vector.ext
  intro level
  rcases level with ⟨level, level_lt⟩
  apply List.Vector.ext
  intro sibling
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling <;>
    simp [
      {path_provider}.path,
      QuadPathProtocolBridge.vectorPath,
      C.{action_path}, C.directPath16,
      {path_at}, {path_vector},
      {path_bindings},
      {path_accessors},
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval
    ] <;> rfl

/-- The `{lower}` path consumes the exact certified leaf. -/
theorem {lower}CompliancePathLeaf_eq
    (rho : Nat → DeployedF) :
    {path_provider}.leaf ({stable}CompliancePathValuation rho) =
      {leaf_value} rho := by
  simp only [
    {path_provider}.leaf,
    {leaf_value}, {leaf_value}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {path_leaf_accessors},
    zero_add, one_mul, add_zero
  ]
  rw [
    assetPathCoeff2, assetPathCoeff3, assetPathCoeff4,
    assetPathCoeff6, assetPathCoeff7,
    assetPathCoeff8, assetPathCoeff9
  ]
  ring

/-- The `{lower}` path position is exactly the action position. -/
theorem {lower}CompliancePathPosition_eq
    (rho : Nat → DeployedF) :
    {stable}CompliancePathValuation rho 33 =
      (C.{action_projection} rho).position := by
  simpa [
    C.{action_projection},
    {position_value}, {position_lc},
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] using {lower}CompliancePathAt33 rho

/-- The `{lower}` path output is the compiler-labelled computed root. -/
theorem {lower}CompliancePathOutput_eq
    (rho : Nat → DeployedF) :
    {path_provider}.output ({stable}CompliancePathValuation rho) =
      {root_value} rho := by
  simp only [
    {path_provider}.output, {path_provider}.nodeOut15,
    {root_value}, {root_value}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {path_output_accessors},
    zero_add, one_mul, add_zero
  ]
  rw [
    assetPathCoeff5, assetPathCoeff0, assetPathCoeff1,
    assetPathCoeff2, assetPathCoeff3
  ]
  ring

/-- Exact `{lower}` path facts before the regulated root assertion. -/
theorem {lower}CompliancePathFacts_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    ((C.{action_projection} rho).position).val < 2 ^ 32 ∧
      Protocol.Common.quadRoot
        ({leaf_value} rho) (C.{action_path} rho)
        (C.{action_projection} rho).position =
          {root_value} rho := by
  have hPath := semantic.{lower}CompliancePath
  unfold {stable}CompliancePathSemanticSpec at hPath
  have hBinary := {path_provider}.toBinary_of_spec
    ({stable}CompliancePathValuation rho) hPath
  rw [{lower}CompliancePathPosition_eq] at hBinary
  have hComputed := hPath.2.2
  rw [
    {lower}CompliancePathLeaf_eq,
    {lower}CompliancePathOutput_eq
  ] at hComputed
  exact QuadPathProtocolBridge.pathFacts_of_toBinary
    (C.{action_projection} rho).position
    ({leaf_value} rho) ({root_value} rho)
    (C.{action_path} rho)
    ({path_provider}.path ({stable}CompliancePathValuation rho))
    ({path_provider}.bits ({stable}CompliancePathValuation rho))
    hBinary ({lower}ComplianceProviderPath_eq_action rho) hComputed

/-- The regulated conditional assertion binds the `{lower}` root publicly. -/
theorem {lower}ComplianceRootAsserted_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (regulated : (C.action rho).assetProof.isRegulated = 1) :
    (C.action rho).complianceAnchor = {root_value} rho := by
  have h := semantic.{lower}ComplianceAssert
  unfold {stable}ComplianceAssertSemanticSpec
    {assert_provider}.spec at h
  rcases h with disabled | enabled
  · have hzero :
        (C.action rho).assetProof.isRegulated = 0 := by
      simpa [
        {assert_provider}.guard,
        C.action, C.assetProof,
        isRegulated, isRegulatedLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        {lower}ComplianceAssertAt1
      ] using disabled
    have h01 : (0 : DeployedF) ≠ 1 := by decide
    exact (h01 (hzero.symm.trans regulated)).elim
  · unfold {assert_provider}.residual at enabled
    have enabled' :
        -(C.action rho).complianceAnchor +
          (show DeployedF from {root_value} rho) = 0 := by
      simp only [
        C.action,
        complianceAnchor, complianceAnchorLC,
        {root_value}, {root_value}LC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        {assert_accessors},
        zero_add, one_mul, add_zero
      ] at enabled ⊢
      linear_combination enabled
    have hEq :
        (C.action rho).complianceAnchor =
          (show DeployedF from {root_value} rho) := by
      apply sub_eq_zero.mp
      linear_combination -enabled'
    exact hEq

/-- Exact `{lower}` membership under the regulated branch. -/
theorem {lower}ComplianceMember_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (regulated : (C.action rho).assetProof.isRegulated = 1) :
    Protocol.Common.quadMember
      (C.action rho).complianceAnchor
      (Protocol.Transfer.Concrete.complianceLeafHash
        (C.{action_projection} rho))
      (C.{action_path} rho) (C.{action_projection} rho).position := by
  have hPath :=
    {lower}CompliancePathFacts_of_semantic rho semantic
  rw [← {lower}ComplianceLeafHash_of_semantic rho semantic]
  exact ⟨hPath.1,
    ({lower}ComplianceRootAsserted_of_semantic
      rho semantic regulated).trans hPath.2.symm⟩

/-- Stable `{lower}` bounds and membership consumed by static composition. -/
theorem {lower}ComplianceFacts_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    ((C.{action_projection} rho).d).val < 2 ^ 251 ∧
      ((C.{action_projection} rho).position).val < 2 ^ 32 ∧
      ((C.action rho).assetProof.isRegulated = 1 →
        Protocol.Common.quadMember
          (C.action rho).complianceAnchor
          (Protocol.Transfer.Concrete.complianceLeafHash
            (C.{action_projection} rho))
          (C.{action_path} rho) (C.{action_projection} rho).position) := by
  refine ⟨
    ({ack_theorem} rho semantic isRegulatedBoolean).1,
    ({lower}CompliancePathFacts_of_semantic rho semantic).1,
    {lower}ComplianceMember_of_semantic rho semantic
  ⟩
"""

    compliance_proofs = "\n\n".join((
        compliance_fragment(
            stable="Sender",
            lower="sender",
            action_projection="senderCompliance",
            action_path="senderPath",
            binding_path="sender",
            leaf_value="senderLeafCommitment",
            root_value="senderComplianceRoot",
            d_value="senderD",
            d_lc="senderDLC",
            position_value="senderPosition",
            position_lc="senderPositionLC",
            ack_point="senderAckPoint",
            ack_theorem="senderAckSpec_of_semantic",
        ),
        compliance_fragment(
            stable="Receiver",
            lower="receiver",
            action_projection="receiverCompliance",
            action_path="receiverPath",
            binding_path="output0Recipient",
            leaf_value="output0RecipientLeafCommitment",
            root_value="output0RecipientComplianceRoot",
            d_value="output0RecipientD",
            d_lc="output0RecipientDLC",
            position_value="output0RecipientPosition",
            position_lc="output0RecipientPositionLC",
            ack_point="receiverAckPoint",
            ack_theorem="receiverAckSpec_of_semantic",
        ),
    ))
    effective_field_proofs = "\n\n".join(
        f"""\
/-- The action's effective {description} is the certified selected field. -/
theorem effective{stable}Hash_eq_action
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (show DeployedF from
      Protocol.Transfer.Concrete.unregulatedPolicyHash) +
        {core.camel(label)}Valuation rho 3 =
      Protocol.Transfer.Concrete.effective{stable}Hash (C.action rho) := by
  have h := semantic.{lower}
  unfold {core.camel(label)}SemanticSpec {providers[label]}.spec at h
  unfold Protocol.Transfer.Concrete.effective{stable}Hash
    Protocol.Transfer.Concrete.selectField
  simp only [
    C.action, C.assetProof, C.assetLeaf,
    {providers[label]}.selector,
    {providers[label]}.delta,
    {providers[label]}.selected,
    Protocol.Transfer.Concrete.unregulatedPolicyHash,
    isRegulated, isRegulatedLC,
    {leaf_value}, {leaf_value}LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    {lower}At1, {lower}At2, {lower}At3,
    zero_add, one_mul, add_zero
  ] at h ⊢
  rw [unregulatedPolicyNeg] at h
  rw [h]
  ring"""
        for (
            label,
            stable,
            lower,
            leaf_value,
            description,
        ) in (
            (
                "effective_ring_id_hash",
                "RingId",
                "effectiveRingIdHash",
                "assetLeafRingIdHash",
                "ring-id hash",
            ),
            (
                "effective_policy_id_hash",
                "PolicyId",
                "effectivePolicyIdHash",
                "assetLeafPolicyIdHash",
                "policy-id hash",
            ),
            (
                "effective_resource_hash",
                "Resource",
                "effectiveResourceHash",
                "assetLeafResourceHash",
                "resource hash",
            ),
            (
                "effective_permission_hash",
                "Permission",
                "effectivePermissionHash",
                "assetLeafPermissionHash",
                "permission hash",
            ),
        )
    )
    provider_imports = "\n".join(
        f"import {module}"
        for module in dict.fromkeys(
            _transfer_semantic_import(plan.segments[label])
            for label in (
                *providers,
                "effective_ring_id_hash",
                "effective_policy_id_hash",
                "effective_resource_hash",
                "effective_permission_hash",
            )
        )
    )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAdapters
{provider_imports}
import ShielddGnarkFormal.AckBridge
import ShielddGnarkFormal.DecafCompressionBridge
import ShielddGnarkFormal.ImtGapBridge
import ShielddGnarkFormal.QuadPathProtocolBridge
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 12000000

/-!
Exact Transfer action joins. The generator authenticates every selection,
registry, compliance, ACK, and net-balance boundary before emitting this
module; deployment-owned provider identities remain confined here.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open Shieldd.GnarkFormal
open Shieldd.GnarkFormal.Deployed.TransferRefinement
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
private local instance choiceFreeTransferActionCommRing : CommRing DeployedF :=
  ZMod.commRing _

private theorem negOne :
    ({MODULUS_MINUS_ONE} : DeployedF) = -1 := by
  decide +kernel

private theorem assetPathCoeff0 :
    (1206351678489767203464117848397363790196557047879151975419319065131058462720 : DeployedF) =
      -7238110070938603220784707090384182741179342287274911852515914390786350776321 := by
  decide +kernel

private theorem assetPathCoeff1 :
    (1055557718678546303031103117347693316421987416894257978491904181989676154880 : DeployedF) =
      -7388904030749824121217721821433853214953911918259805849443329273927733084161 := by
  decide +kernel

private theorem assetPathCoeff2 :
    (3753094110857053521888366639458465125055955260068472812415659313741070772907 : DeployedF) =
      -4691367638571316902360458299323081406319944075085591015519574142176338466134 := by
  decide +kernel

private theorem assetPathCoeff3 :
    (844446174942837042424882493878154653137589933515406382793523345591740923904 : DeployedF) =
      -7600015574485533381823942444903391878238309401638657445141710110325668315137 := by
  decide +kernel

private theorem assetPathCoeff4 :
    (703705145785697535354068744898462210947991611262838652327936121326450769920 : DeployedF) =
      -7740756603642672888894756193883084320427907723891225175607297334590958469121 := by
  decide +kernel

private theorem assetPathCoeff5 :
    (1407410291571395070708137489796924421895983222525677304655872242652901539840 : DeployedF) =
      -7037051457856975353540687448984622109479916112628386523279361213264507699201 := by
  decide +kernel

private theorem assetPathCoeff6 :
    (649573980725259263403755764521657425490453795011851063687325650455185326080 : DeployedF) =
      -7794887768703111160845069174259889105885445540142212764247907805462223912961 := by
  decide +kernel

private theorem assetPathCoeff7 :
    (603175839244883601732058924198681895098278523939575987709659532565529231360 : DeployedF) =
      -7841285910183486822516766014582864636277620811214487840225573923351880007681 := by
  decide +kernel

private theorem assetPathCoeff8 :
    (562964116628558028283254995918769768758393289010270921862348897061160615936 : DeployedF) =
      -7881497632799812395965569942862776762617506046143792906072884558856248623105 := by
  decide +kernel

private theorem assetPathCoeff9 :
    (527778859339273151515551558673846658210993708447128989245952090994838077440 : DeployedF) =
      -7916682890089097272733273380107699873164905626706934838689281364922571161601 := by
  decide +kernel

private theorem unregulatedRingPkNegX :
    (4617491044499661354199399458855367018016837978387850223760889670113802729481 : DeployedF) =
      -(3826970704928709070049425479926179513359061356766213604174343785803606509560 : DeployedF) := by
  decide +kernel

private theorem unregulatedRingPkNegY :
    (4009406879518373341044590760267486013467361742873740276013817087117129386580 : DeployedF) =
      -(4435054869909997083204234178514060517908537592280323551921416368800279852461 : DeployedF) := by
  decide +kernel

private theorem unregulatedDkPubNegX :
    (2212548262324760673607874921510927973879877636871439172985481863051142517853 : DeployedF) =
      -(6231913487103609750640950017270618557496021698282624654949751592866266721188 : DeployedF) := by
  decide +kernel

private theorem unregulatedDkPubNegY :
    (6269915804914941340248539306569041448191883943522231907716782445202481683650 : DeployedF) =
      -(2174545944513429084000285632212505083184015391631831920218451010714927555391 : DeployedF) := by
  decide +kernel

private theorem unregulatedPolicyNeg :
    (8297544345344610931163050155937404748251340632479704177539866819333114399182 : DeployedF) =
      -(146917404083759493085774782844141783124558702674359650395366636584294839859 : DeployedF) := by
  decide +kernel

/-! ## Asset-registry hashes and membership -/

/-- Exact compression of the registered detection key. -/
theorem assetDkCompressedSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨assetLeafDkPub0 rho, assetLeafDkPub1 rho⟩
      (assetLeafDkPubFq rho) := by
  have h := semantic.assetDkCompress
  simp [
    AssetDkCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {providers["asset_dk_compress"]}.spec,
    {providers["asset_dk_compress"]}.inputX,
    {providers["asset_dk_compress"]}.inputY,
    {providers["asset_dk_compress"]}.templateRho,
    assetLeafDkPub0, assetLeafDkPub0LC,
    assetLeafDkPub1, assetLeafDkPub1LC,
    assetLeafDkPubFq, assetLeafDkPubFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    assetDkCompressAt1, assetDkCompressAt3,
    assetDkCompressAt365, assetDkCompressAt705,
    negOne, sub_eq_add_neg, add_comm
  ] at h ⊢
  rw [negOne]
  convert h using 1 <;> ring

/-- Exact compression of the registered ring key. -/
theorem assetRingPkCompressedSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨assetLeafRingPk0 rho, assetLeafRingPk1 rho⟩
      (assetLeafRingPkFq rho) := by
  have h := semantic.assetRingPkCompress
  simp [
    AssetRingPkCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {providers["asset_ring_pk_compress"]}.spec,
    {providers["asset_ring_pk_compress"]}.inputX,
    {providers["asset_ring_pk_compress"]}.inputY,
    {providers["asset_ring_pk_compress"]}.templateRho,
    assetLeafRingPk0, assetLeafRingPk0LC,
    assetLeafRingPk1, assetLeafRingPk1LC,
    assetLeafRingPkFq, assetLeafRingPkFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    assetRingPkCompressAt1, assetRingPkCompressAt3,
    assetRingPkCompressAt365, assetRingPkCompressAt705,
    negOne, sub_eq_add_neg, add_comm
  ] at h ⊢
  rw [negOne]
  convert h using 1 <;> ring

/-- Exact asset-parameter Poseidon output in compiler-labelled roles. -/
theorem assetParamsHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    assetLeafParamsHash rho =
      Poseidon4Bridge.permSpec4
        Protocol.Transfer.Concrete.assetParamsDomain
        (assetLeafDkPubFq rho)
        (assetLeafThreshold rho) (assetLeafSlotCount rho)
        (assetLeafChannelsHash rho) := by
  have h := semantic.assetParamsHash
  unfold AssetParamsHashSemanticSpec
    {providers["asset_params_hash"]}.spec at h
  have hOutput :
      {providers["asset_params_hash"]}.output
          (AssetParamsHashValuation rho) =
        assetLeafParamsHash rho := by
    simp only [
      {providers["asset_params_hash"]}.output,
      Deployed.CertifiedGadgetAssetRegistryParamsHash_d65f2514fa1bPoseidon.s38_1,
      Deployed.Poseidon4Link.row5,
      assetLeafParamsHash, assetLeafParamsHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetParamsHashAt335, assetParamsHashAt340,
      assetParamsHashAt345, assetParamsHashAt350,
      assetParamsHashAt355,
      zero_add, one_mul, add_zero
    ]
    ring
  have hDkPub :
      (-1 : DeployedF) * AssetParamsHashValuation rho 1 +
          AssetParamsHashValuation rho 2 =
        assetLeafDkPubFq rho := by
    simp [
      assetLeafDkPubFq, assetLeafDkPubFqLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetParamsHashAt1, assetParamsHashAt2
    ]
    rw [negOne]
    ring
  have hThreshold :
      AssetParamsHashValuation rho 8 =
        assetLeafThreshold rho := by
    simp [
      assetLeafThreshold, assetLeafThresholdLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetParamsHashAt8
    ]
  have hSlotCount :
      AssetParamsHashValuation rho 14 =
        assetLeafSlotCount rho := by
    simp [
      assetLeafSlotCount, assetLeafSlotCountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetParamsHashAt14
    ]
  have hChannelsHash :
      AssetParamsHashValuation rho 20 =
        assetLeafChannelsHash rho := by
    simp [
      assetLeafChannelsHash, assetLeafChannelsHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetParamsHashAt20
    ]
  rw [
    hOutput, hDkPub, hThreshold, hSlotCount, hChannelsHash
  ] at h
  simpa only [Protocol.Transfer.Concrete.assetParamsDomain] using h

/-- Exact asset-ring Poseidon output in compiler-labelled roles. -/
theorem assetRingHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    assetLeafRingHash rho =
      Poseidon5Bridge.permSpec5
        Protocol.Transfer.Concrete.assetRingDomain
        (assetLeafRingPkFq rho)
        (assetLeafRingIdHash rho) (assetLeafPolicyIdHash rho)
        (assetLeafPermissionHash rho) (assetLeafResourceHash rho) := by
  have h := semantic.assetRingHash
  unfold AssetRingHashSemanticSpec
    {providers["asset_ring_hash"]}.spec at h
  have hOutput :
      {providers["asset_ring_hash"]}.output
          (AssetRingHashValuation rho) =
        assetLeafRingHash rho := by
    simp only [
      {providers["asset_ring_hash"]}.output,
      Deployed.CertifiedGadgetAssetRegistryRingHash_fca220e542b4Poseidon.s38_1,
      Deployed.Poseidon5Link.row6,
      assetLeafRingHash, assetLeafRingHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetRingHashAt371, assetRingHashAt376,
      assetRingHashAt381, assetRingHashAt386,
      assetRingHashAt391, assetRingHashAt396,
      zero_add, one_mul, add_zero
    ]
    ring
  have hRingPk :
      (-1 : DeployedF) * AssetRingHashValuation rho 1 +
          AssetRingHashValuation rho 2 =
        assetLeafRingPkFq rho := by
    simp [
      assetLeafRingPkFq, assetLeafRingPkFqLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetRingHashAt1, assetRingHashAt2
    ]
    rw [negOne]
    ring
  have hRingId :
      AssetRingHashValuation rho 8 = assetLeafRingIdHash rho := by
    simp [
      assetLeafRingIdHash, assetLeafRingIdHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetRingHashAt8
    ]
  have hPolicyId :
      AssetRingHashValuation rho 14 = assetLeafPolicyIdHash rho := by
    simp [
      assetLeafPolicyIdHash, assetLeafPolicyIdHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetRingHashAt14
    ]
  have hPermission :
      AssetRingHashValuation rho 20 = assetLeafPermissionHash rho := by
    simp [
      assetLeafPermissionHash, assetLeafPermissionHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetRingHashAt20
    ]
  have hResource :
      AssetRingHashValuation rho 26 = assetLeafResourceHash rho := by
    simp [
      assetLeafResourceHash, assetLeafResourceHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetRingHashAt26
    ]
  rw [
    hOutput, hRingPk, hRingId, hPolicyId, hPermission, hResource
  ] at h
  simpa only [Protocol.Transfer.Concrete.assetRingDomain] using h

/-- Exact indexed-asset leaf hash in compiler-labelled roles. -/
theorem assetLeafHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    assetLeafCommitment rho =
      Protocol.Transfer.Concrete.assetLeafHash
        (C.assetLeaf rho) (assetLeafDkPubFq rho)
        (assetLeafRingPkFq rho) := by
  have h := semantic.assetLeafHash
  unfold AssetLeafHashSemanticSpec
    {providers["asset_leaf_hash"]}.spec at h
  have hOutput :
      {providers["asset_leaf_hash"]}.output
          (AssetLeafHashValuation rho) =
        assetLeafCommitment rho := by
    simp only [
      {providers["asset_leaf_hash"]}.output,
      Deployed.CertifiedGadgetAssetRegistryLeafHash_9611146d6691Poseidon.s38_1,
      Deployed.Poseidon5Link.row6,
      assetLeafCommitment, assetLeafCommitmentLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetLeafHashAt379, assetLeafHashAt384,
      assetLeafHashAt389, assetLeafHashAt394,
      assetLeafHashAt399, assetLeafHashAt404,
      zero_add, one_mul, add_zero
    ]
    ring
  have hValue :
      AssetLeafHashValuation rho 1 = assetLeafValue rho := by
    simp [
      assetLeafValue, assetLeafValueLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetLeafHashAt1
    ]
  have hNextIndex :
      AssetLeafHashValuation rho 7 = assetLeafNextIndex rho := by
    simp [
      assetLeafNextIndex, assetLeafNextIndexLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetLeafHashAt7
    ]
  have hNextValue :
      AssetLeafHashValuation rho 13 = assetLeafNextValue rho := by
    simp [
      assetLeafNextValue, assetLeafNextValueLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetLeafHashAt13
    ]
  have hParams :
      (7037051457856975353540687448984622109479916112628386523279361213264507699201 : DeployedF) *
            AssetLeafHashValuation rho 19 +
          7238110070938603220784707090384182741179342287274911852515914390786350776321 *
            AssetLeafHashValuation rho 20 +
          7388904030749824121217721821433853214953911918259805849443329273927733084161 *
            AssetLeafHashValuation rho 21 +
          4691367638571316902360458299323081406319944075085591015519574142176338466134 *
            AssetLeafHashValuation rho 22 +
          7600015574485533381823942444903391878238309401638657445141710110325668315137 *
            AssetLeafHashValuation rho 23 =
        assetLeafParamsHash rho := by
    simp [
      assetLeafParamsHash, assetLeafParamsHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetLeafHashAt19, assetLeafHashAt20, assetLeafHashAt21,
      assetLeafHashAt22, assetLeafHashAt23
    ]
    ring
  have hRing :
      (7238110070938603220784707090384182741179342287274911852515914390786350776321 : DeployedF) *
            AssetLeafHashValuation rho 29 +
          7388904030749824121217721821433853214953911918259805849443329273927733084161 *
            AssetLeafHashValuation rho 30 +
          4691367638571316902360458299323081406319944075085591015519574142176338466134 *
            AssetLeafHashValuation rho 31 +
          7600015574485533381823942444903391878238309401638657445141710110325668315137 *
            AssetLeafHashValuation rho 32 +
          2303035022571373752067861346940421781284336182314744680345972760704747974284 *
            AssetLeafHashValuation rho 33 +
          7740756603642672888894756193883084320427907723891225175607297334590958469121 *
            AssetLeafHashValuation rho 34 =
        assetLeafRingHash rho := by
    simp [
      assetLeafRingHash, assetLeafRingHashLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetLeafHashAt29, assetLeafHashAt30, assetLeafHashAt31,
      assetLeafHashAt32, assetLeafHashAt33, assetLeafHashAt34
    ]
    ring
  rw [
    hOutput, hValue, hNextIndex, hNextValue, hParams, hRing
  ] at h
  have hLeaf :
      assetLeafCommitment rho =
        Poseidon5Bridge.permSpec5
          Protocol.Transfer.Concrete.assetLeafDomain
          (assetLeafValue rho) (assetLeafNextIndex rho)
          (assetLeafNextValue rho)
          (assetLeafParamsHash rho) (assetLeafRingHash rho) := by
    simpa only [Protocol.Transfer.Concrete.assetLeafDomain] using h
  rw [hLeaf, assetParamsHash_of_semantic rho semantic,
    assetRingHash_of_semantic rho semantic]
  rfl

/-- The provider-local asset path is the exact action path. -/
theorem assetProviderPath_eq_action
    (rho : Nat → DeployedF) :
    {asset_path}.path (AssetPathValuation rho) =
      QuadPathProtocolBridge.vectorPath (C.assetPath rho) := by
  apply List.Vector.ext
  intro level
  rcases level with ⟨level, level_lt⟩
  apply List.Vector.ext
  intro sibling
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling <;>
    simp [
      {asset_path}.path,
      QuadPathProtocolBridge.vectorPath,
      C.assetPath, C.directPath16,
      assetPathAt, assetPathVector,
      {action_path_unfolds["asset"]},
      {asset_path_accessors},
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval
    ] <;> rfl

/-- The asset path consumes the certified leaf hash exactly. -/
theorem assetPathLeaf_eq
    (rho : Nat → DeployedF) :
    {asset_path}.leaf (AssetPathValuation rho) =
      assetLeafCommitment rho := by
  simp only [
    {asset_path}.leaf,
    assetLeafCommitment, assetLeafCommitmentLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    assetPathAt39, assetPathAt40, assetPathAt41,
    assetPathAt42, assetPathAt43, assetPathAt44,
    zero_add, one_mul, add_zero
  ]
  rw [
    assetPathCoeff0, assetPathCoeff1, assetPathCoeff2,
    assetPathCoeff3, assetPathCoeff4
  ]
  ring

/-- The asset path position is the action position. -/
theorem assetPathPosition_eq
    (rho : Nat → DeployedF) :
    AssetPathValuation rho 33 = (C.assetProof rho).position := by
  simpa [
    C.assetProof, assetPosition, assetPositionLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] using assetPathAt33 rho

/-- The asset path output is the compiler-labelled computed root. -/
theorem assetPathOutput_eq
    (rho : Nat → DeployedF) :
    {asset_path}.output (AssetPathValuation rho) =
      assetRootComputed rho := by
  simp only [
    {asset_path}.output, {asset_path}.nodeOut15,
    assetRootComputed, assetRootComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    assetPathAt5827, assetPathAt5832, assetPathAt5837,
    assetPathAt5842, assetPathAt5847,
    zero_add, one_mul, add_zero
  ]
  rw [
    assetPathCoeff5, assetPathCoeff0, assetPathCoeff1,
    assetPathCoeff2, assetPathCoeff3
  ]
  ring

/-- The separate equality row binds the computed registry root publicly. -/
theorem assetRootAsserted_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (C.action rho).assetAnchor = assetRootComputed rho := by
  have h := semantic.assetRootAssert
  unfold AssetRootAssertSemanticSpec
    {providers["asset_root_assert"]}.spec at h
  simp [
    C.action,
    assetAnchor, assetAnchorLC,
    assetRootComputed, assetRootComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    assetRootAssertAt1, assetRootAssertAt2,
    assetRootAssertAt3, assetRootAssertAt4,
    assetRootAssertAt5, assetRootAssertAt6
  ] at h ⊢
  convert h using 1 <;> (try rw [negOne]) <;> ring

/-- Certified asset path plus the asserted root gives exact membership. -/
theorem assetMember_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Protocol.Common.quadMember
      (C.action rho).assetAnchor
      (assetLeafCommitment rho)
      (C.assetPath rho) (C.assetProof rho).position := by
  have hPath := semantic.assetPath
  unfold AssetPathSemanticSpec at hPath
  have hBinary := {asset_path}.toBinary_of_spec
    (AssetPathValuation rho) hPath
  rw [assetPathPosition_eq] at hBinary
  have hComputed := hPath.2.2
  rw [assetPathLeaf_eq, assetPathOutput_eq] at hComputed
  exact QuadPathProtocolBridge.member_of_toBinary
    (C.action rho).assetAnchor
    (C.assetProof rho).position
    (assetLeafCommitment rho) (assetRootComputed rho)
    (C.assetPath rho)
    ({asset_path}.path (AssetPathValuation rho))
    ({asset_path}.bits (AssetPathValuation rho))
    hBinary (assetProviderPath_eq_action rho) hComputed
    (assetRootAsserted_of_semantic rho semantic)

/-! ## Gap and effective-key seams -/

/-- The exact gap body, Boolean selector, and acceptance row imply registry gap. -/
theorem assetGap_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    Protocol.Transfer.Concrete.registryGap
      (C.action rho).assetId
      (C.action rho).assetProof.isRegulated
      (C.action rho).assetProof.leaf.value
      (C.action rho).assetProof.leaf.nextValue := by
  have hBoolean :
      GatesDef.is_bool (C.action rho).assetProof.isRegulated := by
    rcases isRegulatedBoolean with hzero | hone
    · rw [hzero]
      simp [GatesDef.is_bool]
    · rw [hone]
      simp [GatesDef.is_bool]
  have hBody := semantic.assetGap
  unfold AssetGapSemanticSpec
    {providers["asset_gap"]}.spec at hBody
  have hBodyRoles :
      Extracted.ImtGap.BodyRelationSpec
        (C.action rho).assetId
        (C.action rho).assetProof.isRegulated
        (C.action rho).assetProof.leaf.value
        (C.action rho).assetProof.leaf.nextValue
        (assetGapValid rho) := by
    simpa [
      {providers["asset_gap"]}.selected,
      C.action, C.assetProof, C.assetLeaf,
      sharedAssetId, sharedAssetIdLC,
      isRegulated, isRegulatedLC,
      assetLeafValue, assetLeafValueLC,
      assetLeafNextValue, assetLeafNextValueLC,
      assetGapValid, assetGapValidLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetGapAt254, assetGapAt594, assetGapAt934,
      assetGapAt3043, assetGapAt3044, assetGapAt3045
    ] using hBody
  have hAccept := semantic.assetGapAccept
  unfold AssetGapAcceptSemanticSpec
    {providers["asset_gap_accept"]}.spec at hAccept
  have hAccepted : GatesDef.eq (assetGapValid rho) (1 : DeployedF) := by
    dsimp [GatesDef.eq]
    simpa [
      assetGapValid, assetGapValidLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      assetGapAcceptAt1, assetGapAcceptAt2
    ] using hAccept.symm
  obtain ⟨regulated, hRegulated, hValid⟩ :=
    Extracted.ImtGap.body_relation_spec_sound
      (C.action rho).assetId
      (C.action rho).assetProof.isRegulated
      (C.action rho).assetProof.leaf.value
      (C.action rho).assetProof.leaf.nextValue
      (assetGapValid rho) hBoolean hBodyRoles hAccepted
  have hGap :=
    Shieldd.GnarkFormal.assetMembershipValidSpec_registryGap
      (C.action rho).assetId
      (C.action rho).assetProof.isRegulated
      (C.action rho).assetProof.leaf.value
      (C.action rho).assetProof.leaf.nextValue
      regulated (by
        cases regulated <;>
          simpa [Bool.toZMod] using hRegulated) hValid
  simpa [Protocol.Transfer.Concrete.registryGap] using hGap

/-- The action's effective ring key is exactly the certified selected point. -/
theorem effectiveRingPoint_eq_action
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (⟨
      (show DeployedF from
        Protocol.Transfer.Concrete.unregulatedRingPk.x) +
        EffectiveRingPkValuation rho 3,
      (show DeployedF from
        Protocol.Transfer.Concrete.unregulatedRingPk.y) +
        EffectiveRingPkValuation rho 5
    ⟩ : Protocol.Common.Point DeployedF) =
      Protocol.Transfer.Concrete.effectiveRingPk (C.action rho) := by
  have h := semantic.effectiveRingPk
  unfold EffectiveRingPkSemanticSpec
    {providers["effective_ring_pk"]}.spec at h
  rcases h with ⟨hx, hy⟩
  unfold Protocol.Transfer.Concrete.effectiveRingPk
    Protocol.Transfer.Concrete.selectPoint
  simp only [
    C.action, C.assetProof, C.assetLeaf,
    {providers["effective_ring_pk"]}.selector,
    {providers["effective_ring_pk"]}.deltaX,
    {providers["effective_ring_pk"]}.deltaY,
    {providers["effective_ring_pk"]}.selectedX,
    {providers["effective_ring_pk"]}.selectedY,
    Protocol.Transfer.Concrete.unregulatedRingPk,
    isRegulated, isRegulatedLC,
    assetLeafRingPk0, assetLeafRingPk0LC,
    assetLeafRingPk1, assetLeafRingPk1LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    effectiveRingPkAt1, effectiveRingPkAt2,
    effectiveRingPkAt3, effectiveRingPkAt4,
    effectiveRingPkAt5,
    zero_add, one_mul, add_zero
  ] at hx hy ⊢
  rw [unregulatedRingPkNegX] at hx
  rw [unregulatedRingPkNegY] at hy
  simp only [Protocol.Common.Point.mk.injEq]
  constructor
  · rw [hx]
    ring
  · rw [hy]
    ring

/-- The action's effective detection key is the certified selected point. -/
theorem effectiveDkPoint_eq_action
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (⟨
      (show DeployedF from
        Protocol.Transfer.Concrete.unregulatedDkPub.x) +
        EffectiveDkPubValuation rho 3,
      (show DeployedF from
        Protocol.Transfer.Concrete.unregulatedDkPub.y) +
        EffectiveDkPubValuation rho 5
    ⟩ : Protocol.Common.Point DeployedF) =
      Protocol.Transfer.Concrete.effectiveDkPub (C.action rho) := by
  have h := semantic.effectiveDkPub
  unfold EffectiveDkPubSemanticSpec
    {providers["effective_dk_pub"]}.spec at h
  rcases h with ⟨hx, hy⟩
  unfold Protocol.Transfer.Concrete.effectiveDkPub
    Protocol.Transfer.Concrete.selectPoint
  simp only [
    C.action, C.assetProof, C.assetLeaf,
    {providers["effective_dk_pub"]}.selector,
    {providers["effective_dk_pub"]}.deltaX,
    {providers["effective_dk_pub"]}.deltaY,
    {providers["effective_dk_pub"]}.selectedX,
    {providers["effective_dk_pub"]}.selectedY,
    Protocol.Transfer.Concrete.unregulatedDkPub,
    isRegulated, isRegulatedLC,
    assetLeafDkPub0, assetLeafDkPub0LC,
    assetLeafDkPub1, assetLeafDkPub1LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    effectiveDkPubAt1, effectiveDkPubAt2,
    effectiveDkPubAt3, effectiveDkPubAt4,
    effectiveDkPubAt5,
    zero_add, one_mul, add_zero
  ] at hx hy ⊢
  rw [unregulatedDkPubNegX] at hx
  rw [unregulatedDkPubNegY] at hy
  simp only [Protocol.Common.Point.mk.injEq]
  constructor
  · rw [hx]
    ring
  · rw [hy]
    ring

{effective_field_proofs}

/-- Selection preserves an independently certified ring-key curve fact. -/
theorem effectiveRingPk_onCurve
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    Protocol.Common.Decaf.onCurve
      (Protocol.Transfer.Concrete.effectiveRingPk (C.action rho)) := by
  have hRegistered :
      Protocol.Common.Decaf.onCurve
        (C.action rho).assetProof.leaf.ringPk :=
    (DecafCompressionBridge.compressesTo_of_spec
      ⟨assetLeafRingPk0 rho, assetLeafRingPk1 rho⟩
      (assetLeafRingPkFq rho)
      (assetRingPkCompressedSpec_of_semantic rho semantic)).1
  have hUnregulated :
      Protocol.Common.Decaf.onCurve
        Protocol.Transfer.Concrete.unregulatedRingPk := by
    unfold Protocol.Common.Decaf.onCurve
      Protocol.Common.Decaf.curveD
      Protocol.Transfer.Concrete.unregulatedRingPk
    decide +kernel
  rcases isRegulatedBoolean with hzero | hone
  · simpa [
      Protocol.Transfer.Concrete.effectiveRingPk,
      Protocol.Transfer.Concrete.selectPoint, hzero
    ] using hUnregulated
  · simpa [
      Protocol.Transfer.Concrete.effectiveRingPk,
      Protocol.Transfer.Concrete.selectPoint, hone
    ] using hRegistered

/-- Selection preserves an independently certified detection-key curve fact. -/
theorem effectiveDkPub_onCurve
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    Protocol.Common.Decaf.onCurve
      (Protocol.Transfer.Concrete.effectiveDkPub (C.action rho)) := by
  have hRegistered :
      Protocol.Common.Decaf.onCurve
        (C.action rho).assetProof.leaf.dkPub :=
    (DecafCompressionBridge.compressesTo_of_spec
      ⟨assetLeafDkPub0 rho, assetLeafDkPub1 rho⟩
      (assetLeafDkPubFq rho)
      (assetDkCompressedSpec_of_semantic rho semantic)).1
  have hUnregulated :
      Protocol.Common.Decaf.onCurve
        Protocol.Transfer.Concrete.unregulatedDkPub := by
    unfold Protocol.Common.Decaf.onCurve
      Protocol.Common.Decaf.curveD
      Protocol.Transfer.Concrete.unregulatedDkPub
    decide +kernel
  rcases isRegulatedBoolean with hzero | hone
  · simpa [
      Protocol.Transfer.Concrete.effectiveDkPub,
      Protocol.Transfer.Concrete.selectPoint, hzero
    ] using hUnregulated
  · simpa [
      Protocol.Transfer.Concrete.effectiveDkPub,
      Protocol.Transfer.Concrete.selectPoint, hone
    ] using hRegistered

/-- Full output of the exact sender ACK ladder. -/
def senderAckPoint (rho : Nat → DeployedF) :
    Protocol.Common.Point DeployedF :=
  ⟨({ack_output} (SenderAckValuation rho)).x,
   ({ack_output} (SenderAckValuation rho)).y⟩

/-- Full output of the exact receiver ACK ladder. -/
def receiverAckPoint (rho : Nat → DeployedF) :
    Protocol.Common.Point DeployedF :=
  ⟨({ack_output} (ReceiverAckValuation rho)).x,
   ({ack_output} (ReceiverAckValuation rho)).y⟩

/-- The sender ACK body consumes the exact effective ring key. -/
theorem senderAckSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    AckBridge.AckWindow2Spec
      (Protocol.Transfer.Concrete.effectiveRingPk (C.action rho))
      (C.action rho).senderCompliance.d
      (senderAckPoint rho) := by
  have h := semantic.senderAck
  unfold SenderAckSemanticSpec {ack}.spec {ack_support}.spec at h
  have hbase :
      (⟨({ack_support}.base (SenderAckValuation rho)).x,
        ({ack_support}.base (SenderAckValuation rho)).y⟩ :
          Protocol.Common.Point DeployedF) =
        Protocol.Transfer.Concrete.effectiveRingPk (C.action rho) := by
    rw [← effectiveRingPoint_eq_action rho semantic]
    simp [
      {ack_support}.base,
      Protocol.Transfer.Concrete.unregulatedRingPk,
      {providers["effective_ring_pk"]}.selectedX,
      {providers["effective_ring_pk"]}.selectedY,
      senderAckAt253, senderAckAt254,
      effectiveRingPkAt3, effectiveRingPkAt5
    ]
  have result := h (hbase ▸
    effectiveRingPk_onCurve rho semantic isRegulatedBoolean)
  simpa only [
    hbase, senderAckPoint,
    C.action, C.senderCompliance,
    senderD, senderDLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    senderAckAt252, zero_add, one_mul, add_zero
  ] using result

/-- The receiver ACK body consumes the same exact effective ring key. -/
theorem receiverAckSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    AckBridge.AckWindow2Spec
      (Protocol.Transfer.Concrete.effectiveRingPk (C.action rho))
      (C.action rho).receiverCompliance.d
      (receiverAckPoint rho) := by
  have h := semantic.receiverAck
  unfold ReceiverAckSemanticSpec {ack}.spec {ack_support}.spec at h
  have hbase :
      (⟨({ack_support}.base (ReceiverAckValuation rho)).x,
        ({ack_support}.base (ReceiverAckValuation rho)).y⟩ :
          Protocol.Common.Point DeployedF) =
        Protocol.Transfer.Concrete.effectiveRingPk (C.action rho) := by
    rw [← effectiveRingPoint_eq_action rho semantic]
    simp [
      {ack_support}.base,
      Protocol.Transfer.Concrete.unregulatedRingPk,
      {providers["effective_ring_pk"]}.selectedX,
      {providers["effective_ring_pk"]}.selectedY,
      receiverAckAt253, receiverAckAt254,
      effectiveRingPkAt3, effectiveRingPkAt5
    ]
  have result := h (hbase ▸
    effectiveRingPk_onCurve rho semantic isRegulatedBoolean)
  simpa only [
    hbase, receiverAckPoint,
    C.action, C.receiverCompliance,
    output0RecipientD, output0RecipientDLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    receiverAckAt252, zero_add, one_mul, add_zero
  ] using result

{compliance_proofs}

/-! ## Net-balance computation and compression -/

/-- Protocol point emitted by the exact two-input/two-output accumulator. -/
def balancePoint (rho : Nat → DeployedF) :
    Protocol.Common.Point DeployedF :=
  ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩

/-- Exact net-balance provider in compiler-labelled action roles. -/
theorem netBalanceFacts_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (spend0NoteAmount rho).val < 2 ^ 128 ∧
      (spend1NoteAmount rho).val < 2 ^ 128 ∧
      (output0NoteAmount rho).val < 2 ^ 128 ∧
      (output1NoteAmount rho).val < 2 ^ 128 ∧
      (actionBalanceBlinding rho).val < 2 ^ 251 ∧
      Protocol.Common.Decaf.netBalanceCommitment2
        (spend0NoteAmount rho) (spend1NoteAmount rho)
        (output0NoteAmount rho) (output1NoteAmount rho)
        (sharedAssetId rho) (actionBalanceBlinding rho)
        (balancePoint rho) := by
  have h := semantic.netBalance
  unfold NetBalanceSemanticSpec {balance}.spec at h
  rcases h with
    ⟨_, _, h0, h1, h2, h3, hb, _, _, _, hProtocol⟩
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · simpa [
      spend0NoteAmount, spend0NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      netBalanceAt732
    ] using h0
  · simpa [
      spend1NoteAmount, spend1NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      netBalanceAt861
    ] using h1
  · simpa [
      output0NoteAmount, output0NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      netBalanceAt990
    ] using h2
  · simpa [
      output1NoteAmount, output1NoteAmountLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      netBalanceAt1119
    ] using h3
  · simpa [
      actionBalanceBlinding, actionBalanceBlindingLC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      netBalanceAt4467
    ] using hb
  · simpa [
      balancePoint,
      spend0NoteAmount, spend0NoteAmountLC,
      spend1NoteAmount, spend1NoteAmountLC,
      output0NoteAmount, output0NoteAmountLC,
      output1NoteAmount, output1NoteAmountLC,
      sharedAssetId, sharedAssetIdLC,
      actionBalanceBlinding, actionBalanceBlindingLC,
      balanceCommitmentComputed0, balanceCommitmentComputed0LC,
      balanceCommitmentComputed1, balanceCommitmentComputed1LC,
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval,
      netBalanceAt1, netBalanceAt732, netBalanceAt861,
      netBalanceAt990, netBalanceAt1119, netBalanceAt4467,
      netBalanceAt6026, netBalanceAt6027
    ] using hProtocol

/-- The exact accumulator output is the exact compressor input and output LC. -/
theorem balanceCompressedSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩
      (balanceCommitmentFq rho) := by
  have h := semantic.balanceCompress
  simp [
    BalanceCompressSemanticSpec,
    Decaf377Assumptions.CompressToFieldSpec,
    {balance_compress}.spec,
    {balance_compress}.inputX, {balance_compress}.inputY,
    {balance_compress}.templateRho,
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    balanceCommitmentFq, balanceCommitmentFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    balanceCompressAt1, balanceCompressAt3,
    balanceCompressAt365, balanceCompressAt705,
    sub_eq_add_neg, add_comm
  ] at h ⊢
  convert h using 1 <;> (try rw [negOne]) <;> ring

/-- Stable balance facts consumed by the handwritten composition. -/
theorem balanceFacts_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    (spend0NoteAmount rho).val < 2 ^ 128 ∧
      (spend1NoteAmount rho).val < 2 ^ 128 ∧
      (output0NoteAmount rho).val < 2 ^ 128 ∧
      (output1NoteAmount rho).val < 2 ^ 128 ∧
      (actionBalanceBlinding rho).val < 2 ^ 251 ∧
      Protocol.Common.Decaf.netBalanceCommitment2
        (spend0NoteAmount rho) (spend1NoteAmount rho)
        (output0NoteAmount rho) (output1NoteAmount rho)
        (sharedAssetId rho) (actionBalanceBlinding rho)
        (balancePoint rho) ∧
      Protocol.Common.Decaf.compressesTo
        (balancePoint rho) (balanceCommitmentFq rho) := by
  have h := netBalanceFacts_of_semantic rho semantic
  exact ⟨h.1, h.2.1, h.2.2.1, h.2.2.2.1,
    h.2.2.2.2.1, h.2.2.2.2.2,
    DecafCompressionBridge.compressesTo_of_spec _ _
      (balanceCompressedSpec_of_semantic rho semantic)⟩

/-- The complete asset-registry fact is closed from certified providers. -/
theorem assetRegistry_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (assetIdNonzero : (C.action rho).assetId ≠ 0)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    Protocol.Transfer.Concrete.assetRegistry (C.action rho) := by
  refine ⟨assetIdNonzero, isRegulatedBoolean,
    assetLeafDkPubFq rho, assetLeafRingPkFq rho, ?_, ?_, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec _ _
      (assetDkCompressedSpec_of_semantic rho semantic)
  · exact DecafCompressionBridge.compressesTo_of_spec _ _
      (assetRingPkCompressedSpec_of_semantic rho semantic)
  · change Protocol.Common.quadMember
      (C.action rho).assetAnchor
      (Protocol.Transfer.Concrete.assetLeafHash
        (C.assetLeaf rho) (assetLeafDkPubFq rho)
        (assetLeafRingPkFq rho))
      (C.assetPath rho) (C.assetProof rho).position
    rw [← assetLeafHash_of_semantic rho semantic]
    exact assetMember_of_semantic rho semantic
  · exact assetGap_of_semantic rho semantic isRegulatedBoolean

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""


def render_transfer_action_seam_modules(
    ir: dict, constraint_manifest: dict
) -> dict[str, str]:
    """Split the authenticated action joins into memory-bounded Lean roots."""

    source = render_transfer_action_seams(ir, constraint_manifest)
    namespace_end = (
        "end Shieldd.GnarkFormal.Deployed.Contracts.Transfer"
    )
    source_body, found_end, trailing = source.rpartition(namespace_end)
    if not found_end or trailing.strip():
        raise ValueError("Transfer action seam namespace trailer drifted")

    asset_marker = "/-! ## Asset-registry hashes and membership -/"
    gap_marker = "/-! ## Gap and effective-key seams -/"
    selection_marker = (
        "/-- The action's effective ring key is exactly the certified "
        "selected point. -/"
    )
    ack_marker = "/-- Full output of the exact sender ACK ladder. -/"
    compliance_marker = "/-! ## Sender compliance -/"
    balance_marker = "/-! ## Net-balance computation and compression -/"

    preamble, asset_marker_found, remainder = source_body.partition(
        asset_marker
    )
    asset_body, gap_marker_found, remainder = remainder.partition(
        gap_marker
    )
    gap_body, selection_marker_found, remainder = remainder.partition(
        selection_marker
    )
    selection_and_ack_body, compliance_marker_found, remainder = (
        remainder.partition(compliance_marker)
    )
    selection_body, ack_marker_found, ack_body = (
        selection_and_ack_body.partition(ack_marker)
    )
    compliance_body, balance_marker_found, balance_body = (
        remainder.partition(balance_marker)
    )
    if not all((
        asset_marker_found,
        gap_marker_found,
        selection_marker_found,
        ack_marker_found,
        compliance_marker_found,
        balance_marker_found,
    )):
        raise ValueError("Transfer action seam section markers drifted")

    def module(
        body: str,
        *,
        dependencies: tuple[str, ...] = (),
    ) -> str:
        imports = "".join(
            f"import ShielddGnarkFormal.Deployed.Contracts.Transfer.{name}\n"
            for name in dependencies
        )
        return (
            imports
            + preamble
            + body.strip()
            + "\n\n"
            + namespace_end
            + "\n"
        )

    registry = module(
        "\n\n".join((
            asset_marker,
            asset_body.strip(),
            gap_marker,
            gap_body.strip(),
        ))
    )
    selection = module(
        "\n\n".join((
            "/-! ## Effective keys -/",
            selection_marker,
            selection_body.strip(),
        )),
        dependencies=("ActionRegistrySeams",),
    )
    ack = module(
        "\n\n".join((
            "/-! ## ACK -/",
            ack_marker,
            ack_body.strip(),
        )),
        dependencies=("ActionSelectionSeams",),
    )
    compliance = module(
        "\n\n".join((
            compliance_marker,
            compliance_body.strip(),
        )),
        dependencies=("ActionAckSeams",),
    )
    balance = module(
        "\n\n".join((
            balance_marker,
            balance_body.strip(),
        )),
        dependencies=("ActionRegistrySeams",),
    )
    facade = """\
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionRegistrySeams
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionSelectionSeams
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionAckSeams
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionComplianceSeams
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionBalanceSeams

/-!
Memory-bounded facade for all exact Transfer action joins.
GENERATED by tools/gnark/lean/gen/gen_deployed_family.py — do not edit by hand.
-/
"""
    return {
        "ActionRegistrySeams.lean": registry,
        "ActionSelectionSeams.lean": selection,
        "ActionAckSeams.lean": ack,
        "ActionComplianceSeams.lean": compliance,
        "ActionBalanceSeams.lean": balance,
        "ActionSeams.lean": facade,
    }


def render_transfer_transcript_seams(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render threshold, shared-secret, detection, and statement joins."""

    plan = _validate_transfer_refinement_plan(ir, constraint_manifest)
    _validate_transfer_transcript_protocol_seats(plan)
    threshold = _transfer_semantic_provider(
        plan.segments["threshold_flag"]
    )
    shared = _transfer_semantic_provider(
        plan.segments["sender_core_shared_secret"]
    )
    detection = _transfer_semantic_provider(
        plan.segments["detection_encryption"]
    )
    statement = _transfer_semantic_provider(
        plan.segments["statement_hash"]
    )
    statement_assert = _transfer_semantic_provider(
        plan.segments["statement_assert"]
    )
    shared_index = plan.segments[
        "sender_core_shared_secret"
    ]["index"]
    detection_index = plan.segments["detection_encryption"]["index"]
    shared_issuer_output = f"{shared}.IssuerWindowSupport.output"
    detection_compress = f"{detection}Compress"
    detection_poseidon = f"{detection}Poseidon"
    detection_slot_bits = f"{detection}.SlotBits"
    detection_blocks = tuple(
        f"{detection}Poseidon.Block{index}" for index in range(5)
    )
    epk_and_salt_seams = _render_transfer_epk_and_salt_seams(plan)
    shared_bodies = _render_transfer_shared_transcript_bodies(plan)
    shared_protocol_seams = _render_transfer_shared_protocol_seams(plan)
    encryption_seams = _render_transfer_encryption_seams(plan)
    metadata_seams = _render_transfer_metadata_seams(plan)
    (
        statement_field_seams,
        action_statement_fields,
        statement_field_rewrites,
    ) = _render_transfer_statement_field_seams()
    pad0 = (
        "4243652548877116749704988283021201788971127181163826868708775321329827099552"
    )
    pad1 = (
        "5306524934727303560250685535492792380180521173926313128273288118715055024538"
    )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAdapters
import ShielddGnarkFormal.Deployed.Contracts.Transfer.RefinementAction
import ShielddGnarkFormal.Deployed.Contracts.Transfer.ActionAckSeams
import ShielddGnarkFormal.DecafCompressionBridge
import ShielddGnarkFormal.PoseidonEncryptionBridge
import ShielddGnarkFormal.Poseidon7Bridge
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 12000000

/-!
Exact Transfer transcript and statement joins.  Every theorem consumes only
the exhaustive certified semantic-provider record; provider identities,
argument order, full issuer-point identity, and public-output seating are
authenticated by the generator before this source is emitted.
GENERATED by {GENERATOR} — do not edit by hand.
-/

namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer

open Shieldd.GnarkFormal
open Shieldd.GnarkFormal.Deployed.TransferRefinement
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeTransferTranscriptCommRing : CommRing DeployedF :=
  ZMod.commRing _

private theorem negOne :
    ({MODULUS_MINUS_ONE} : DeployedF) = -1 := by
  decide +kernel

/-- The gated comparator output is exactly the action transcript flag. -/
theorem thresholdFlag_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    ThresholdRegulatedBridge.ThresholdFlagSpec
      (C.action rho).assetProof.isRegulated
      (C.action rho).receiver.note.amount
      (C.action rho).assetProof.leaf.threshold
      (C.action rho).transcript.isFlagged := by
  simpa only [
    ThresholdFlagSemanticSpec, {threshold}.spec,
    C.action, C.assetProof, C.assetLeaf,
    C.receiver, C.receiverNote, C.transcript,
    isRegulated, isRegulatedLC,
    output0NoteAmount, output0NoteAmountLC,
    assetLeafThreshold, assetLeafThresholdLC,
    isFlagged, isFlaggedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    thresholdFlagAt129, thresholdFlagAt258,
    thresholdFlagAt896, thresholdFlagAt897,
    zero_add, one_mul, add_zero
  ] using semantic.thresholdFlag

{epk_and_salt_seams}

{shared_bodies}

{shared_protocol_seams}

{encryption_seams}

/-- Circuit representative compressed by the detection-encryption provider. -/
def detectionIssuerShared (rho : Nat → DeployedF) :
    Decaf377Assumptions.Point :=
  ⟨{detection_compress}.inputX (DetectionEncryptionValuation rho),
   {detection_compress}.inputY (DetectionEncryptionValuation rho)⟩

/-- Field encoding produced by the exact issuer-point compressor. -/
def detectionIssuerCompressed (rho : Nat → DeployedF) : DeployedF :=
  {detection_compress}.templateRho
      (DetectionEncryptionValuation rho) 912 -
    {detection_compress}.templateRho
      (DetectionEncryptionValuation rho) 572

/--
Detection compression consumes the complete issuer point produced by the
sender-core shared-secret ladder, not merely one coordinate or a free point.
-/
theorem detectionIssuerShared_eq_senderCoreIssuer
    (rho : Nat → DeployedF) :
    AckBridge.toProtocolPoint (detectionIssuerShared rho) =
      (senderCoreSharedSecrets rho).issuer := by
  simp only [
    detectionIssuerShared, AckBridge.toProtocolPoint,
    senderCoreSharedSecrets, {shared}.output,
    Protocol.Common.Point.mk.injEq
  ]
  constructor
  · simp only [
      detectionIssuerShared, AckBridge.toProtocolPoint,
      {detection_compress}.inputX,
      senderCoreSharedSecrets, {shared}.output,
      {shared}.issuerOutX, {shared_issuer_output},
      Seg{shared_index}.localRho, Seg{detection_index}.localRho,
      DetectionEncryptionValuation,
      SenderCoreSharedSecretValuation,
      Deployed.Templates.seated, one_mul
    ]
    rw [show Seg{detection_index}.wireSeating 67 =
      Seg{shared_index}.wireSeating 7323 by decide +kernel]
    rw [show Seg{detection_index}.wireSeating 68 =
      Seg{shared_index}.wireSeating 7331 by decide +kernel]
  · simp only [
      detectionIssuerShared, AckBridge.toProtocolPoint,
      {detection_compress}.inputY,
      senderCoreSharedSecrets, {shared}.output,
      {shared}.issuerOutY, {shared_issuer_output},
      Seg{shared_index}.localRho, Seg{detection_index}.localRho,
      DetectionEncryptionValuation,
      SenderCoreSharedSecretValuation,
      Deployed.Templates.seated, one_mul
    ]
    rw [show Seg{detection_index}.wireSeating 70 =
      Seg{shared_index}.wireSeating 7324 by decide +kernel]
    rw [show Seg{detection_index}.wireSeating 71 =
      Seg{shared_index}.wireSeating 7332 by decide +kernel]

private theorem detectionSeedDomain :
    {detection_blocks[0]}.block0Domain =
      Protocol.Transfer.Concrete.issuerDetectionDomain := by
  decide +kernel

private theorem detectionStreamDomain :
    {detection_blocks[1]}.block1Domain =
      Protocol.Transfer.Concrete.streamDomain := by
  decide +kernel

private theorem detectionSeedInput0 (rho : Nat → DeployedF) :
    {detection_blocks[0]}.block0Input0
        (DetectionEncryptionValuation rho) =
      detectionIssuerCompressed rho := by
  simp [
    {detection_blocks[0]}.block0Input0,
    detectionIssuerCompressed,
    {detection_compress}.templateRho,
    negOne
  ]
  rw [negOne]
  ring

private theorem detectionSeedInput1 (rho : Nat → DeployedF) :
    {detection_blocks[0]}.block0Input1
        (DetectionEncryptionValuation rho) =
      (C.action rho).transcript.senderCore.epkEncoding := by
  simp [
    {detection_blocks[0]}.block0Input1,
    C.action, C.transcript, C.senderCore,
    complianceSenderCoreEpkFq, complianceSenderCoreEpkFqLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    negOne
  ]

private theorem detectionSenderSlot_eq_action (rho : Nat → DeployedF) :
    {detection_slot_bits}.senderSlot
        (DetectionEncryptionValuation rho) =
      (C.action rho).senderCompliance.slotId := by
  simp [
    {detection_slot_bits}.senderSlot,
    C.action, C.senderCompliance,
    senderSlotId, senderSlotIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ]

private theorem detectionReceiverSlot_eq_action (rho : Nat → DeployedF) :
    {detection_slot_bits}.receiverSlot
        (DetectionEncryptionValuation rho) =
      (C.action rho).receiverCompliance.slotId := by
  simp [
    {detection_slot_bits}.receiverSlot,
    C.action, C.receiverCompliance,
    output0RecipientSlotId, output0RecipientSlotIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ]

private theorem detectionPlaintext0_eq_action (rho : Nat → DeployedF) :
    {detection_slot_bits}.plaintext0
        (DetectionEncryptionValuation rho) =
      (C.action rho).assetId := by
  simp [
    {detection_slot_bits}.plaintext0,
    C.action, sharedAssetId, sharedAssetIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ]

private theorem detectionPlaintext1_eq_action (rho : Nat → DeployedF) :
    {detection_slot_bits}.plaintext1
        (DetectionEncryptionValuation rho) =
      (C.action rho).transcript.salts 0 := by
  simp [
    {detection_slot_bits}.plaintext1,
    C.action, C.transcript, C.saltAt,
    salt0, salt0LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ]
  ring

private theorem detectionPlaintext2_eq_action (rho : Nat → DeployedF) :
    {detection_slot_bits}.plaintext2
        (DetectionEncryptionValuation rho) =
      (C.action rho).senderCompliance.slotId +
        (C.action rho).transcript.isFlagged * (2 ^ 32 : DeployedF) := by
  simp [
    {detection_slot_bits}.plaintext2,
    C.action, C.senderCompliance, C.transcript,
    senderSlotId, senderSlotIdLC,
    isFlagged, isFlaggedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ]
  ring

private theorem detectionPlaintext3_eq_action (rho : Nat → DeployedF) :
    {detection_slot_bits}.plaintext3
        (DetectionEncryptionValuation rho) =
      (C.action rho).receiverCompliance.slotId := by
  simp [
    {detection_slot_bits}.plaintext3,
    C.action, C.receiverCompliance,
    output0RecipientSlotId, output0RecipientSlotIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ]

private theorem detectionCiphertext0_eq_action (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2107 =
      (C.action rho).transcript.detectionCiphertext 0 := by
  simp [
    C.action, C.transcript,
    complianceDetectionCiphertextAt,
    complianceDetectionCiphertextVector,
    complianceDetectionCiphertext0,
    complianceDetectionCiphertext0LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] <;> rfl

private theorem detectionCiphertext1_eq_action (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2111 =
      (C.action rho).transcript.detectionCiphertext 1 := by
  simp [
    C.action, C.transcript,
    complianceDetectionCiphertextAt,
    complianceDetectionCiphertextVector,
    complianceDetectionCiphertext1,
    complianceDetectionCiphertext1LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] <;> rfl

private theorem detectionCiphertext2_eq_action (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2113 =
      (C.action rho).transcript.detectionCiphertext 2 := by
  simp [
    C.action, C.transcript,
    complianceDetectionCiphertextAt,
    complianceDetectionCiphertextVector,
    complianceDetectionCiphertext2,
    complianceDetectionCiphertext2LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] <;> rfl

private theorem detectionCiphertext3_eq_action (rho : Nat → DeployedF) :
    DetectionEncryptionValuation rho 2114 =
      (C.action rho).transcript.detectionCiphertext 3 := by
  simp [
    C.action, C.transcript,
    complianceDetectionCiphertextAt,
    complianceDetectionCiphertextVector,
    complianceDetectionCiphertext3,
    complianceDetectionCiphertext3LC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] <;> rfl

/-- Exact detection encryption for the action-bound sender issuer point. -/
theorem detectionBody_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    PoseidonEncryptionBridge.DetectionBodySpec
      (C.action rho) (detectionIssuerShared rho) := by
  rcases semantic.detectionEncryption with
    ⟨hcompress, hposeidon, hslots, hcipher⟩
  rcases hposeidon with
    ⟨hseed, hblock0, hblock1, hblock2, hblock3⟩
  rcases hcipher with
    ⟨hcipher0, hcipher1, hcipher2, hcipher3⟩
  have hcompressSpec :
      Decaf377Assumptions.CompressToFieldSpec
        (detectionIssuerShared rho)
        (detectionIssuerCompressed rho) := by
    simpa [
      {detection_compress}.spec,
      detectionIssuerShared, detectionIssuerCompressed,
      Decaf377Assumptions.CompressToFieldSpec
    ] using hcompress
  unfold {detection_blocks[0]}.spec
    TransferSaltBridge.TransferSaltSpec at hseed
  rw [
    detectionSeedDomain,
    detectionSeedInput0,
    detectionSeedInput1
  ] at hseed
  unfold {detection_blocks[1]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock0
  unfold {detection_blocks[2]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock1
  unfold {detection_blocks[3]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock2
  unfold {detection_blocks[4]}.spec
    TransferSaltBridge.TransferSaltSpec at hblock3
  rw [detectionStreamDomain] at hblock0
  have hstreamDomain2 :
      {detection_blocks[2]}.block2Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  have hstreamDomain3 :
      {detection_blocks[3]}.block3Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  have hstreamDomain4 :
      {detection_blocks[4]}.block4Domain =
        Protocol.Transfer.Concrete.streamDomain := by
    decide +kernel
  rw [hstreamDomain2] at hblock1
  rw [hstreamDomain3] at hblock2
  rw [hstreamDomain4] at hblock3
  simp only [
    {detection_blocks[1]}.block1Input0,
    {detection_blocks[1]}.block1Input1
  ] at hblock0
  simp only [
    {detection_blocks[2]}.block2Input0,
    {detection_blocks[2]}.block2Input1
  ] at hblock1
  simp only [
    {detection_blocks[3]}.block3Input0,
    {detection_blocks[3]}.block3Input1
  ] at hblock2
  simp only [
    {detection_blocks[4]}.block4Input0,
    {detection_blocks[4]}.block4Input1
  ] at hblock3
  rw [
    ← {detection_poseidon}.block0Endpoint38Lane1
  ] at hblock0 hblock1 hblock2 hblock3
  have hbounds :=
    {detection_slot_bits}.slotBounds_of_spec
      (DetectionEncryptionValuation rho) hslots
  refine ⟨detectionIssuerCompressed rho, ?_, ?_⟩
  · exact DecafCompressionBridge.compressesTo_of_spec
      (detectionIssuerShared rho)
      (detectionIssuerCompressed rho) hcompressSpec
  · unfold Protocol.Transfer.Concrete.detectionEncryption
    dsimp only
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
    · simpa only [detectionSenderSlot_eq_action] using hbounds.1
    · simpa only [detectionReceiverSlot_eq_action] using hbounds.2
    · calc
        (C.action rho).transcript.detectionCiphertext 0 =
            DetectionEncryptionValuation rho 2107 :=
          (detectionCiphertext0_eq_action rho).symm
        _ = (show DeployedF from
              {detection_slot_bits}.plaintext0
                (DetectionEncryptionValuation rho)) +
            (show DeployedF from
              ({detection_poseidon}.block1Endpoint38
                (DetectionEncryptionValuation rho))[1]) := hcipher0.symm
        _ = (C.action rho).assetId +
              (show DeployedF from
                Protocol.Transfer.Concrete.streamBlock
                  (Poseidon377.hash2
                    Protocol.Transfer.Concrete.issuerDetectionDomain
                    (detectionIssuerCompressed rho)
                    (C.action rho).transcript.senderCore.epkEncoding) 0) := by
          rw [
            detectionPlaintext0_eq_action,
            hblock0,
            hseed
          ]
          rfl
    · calc
        (C.action rho).transcript.detectionCiphertext 1 =
            DetectionEncryptionValuation rho 2111 :=
          (detectionCiphertext1_eq_action rho).symm
        _ = (show DeployedF from
              {detection_slot_bits}.plaintext1
                (DetectionEncryptionValuation rho)) +
            (show DeployedF from
              ({detection_poseidon}.block2Endpoint38
                (DetectionEncryptionValuation rho))[1]) := hcipher1.symm
        _ = (C.action rho).transcript.salts 0 +
              (show DeployedF from
                Protocol.Transfer.Concrete.streamBlock
                  (Poseidon377.hash2
                    Protocol.Transfer.Concrete.issuerDetectionDomain
                    (detectionIssuerCompressed rho)
                    (C.action rho).transcript.senderCore.epkEncoding) 1) := by
          rw [
            detectionPlaintext1_eq_action,
            hblock1,
            hseed
          ]
          rfl
    · calc
        (C.action rho).transcript.detectionCiphertext 2 =
            DetectionEncryptionValuation rho 2113 :=
          (detectionCiphertext2_eq_action rho).symm
        _ = (show DeployedF from
              {detection_slot_bits}.plaintext2
                (DetectionEncryptionValuation rho)) +
            (show DeployedF from
              ({detection_poseidon}.block3Endpoint38
                (DetectionEncryptionValuation rho))[1]) := hcipher2.symm
        _ = (C.action rho).senderCompliance.slotId +
              (C.action rho).transcript.isFlagged * (2 ^ 32 : DeployedF) +
              (show DeployedF from
                Protocol.Transfer.Concrete.streamBlock
                  (Poseidon377.hash2
                    Protocol.Transfer.Concrete.issuerDetectionDomain
                    (detectionIssuerCompressed rho)
                    (C.action rho).transcript.senderCore.epkEncoding) 2) := by
          rw [
            detectionPlaintext2_eq_action,
            hblock2,
            hseed
          ]
          rfl
    · calc
        (C.action rho).transcript.detectionCiphertext 3 =
            DetectionEncryptionValuation rho 2114 :=
          (detectionCiphertext3_eq_action rho).symm
        _ = (show DeployedF from
              {detection_slot_bits}.plaintext3
                (DetectionEncryptionValuation rho)) +
            (show DeployedF from
              ({detection_poseidon}.block4Endpoint38
                (DetectionEncryptionValuation rho))[1]) := hcipher3.symm
        _ = (C.action rho).receiverCompliance.slotId +
              (show DeployedF from
                Protocol.Transfer.Concrete.streamBlock
                  (Poseidon377.hash2
                    Protocol.Transfer.Concrete.issuerDetectionDomain
                    (detectionIssuerCompressed rho)
                    (C.action rho).transcript.senderCore.epkEncoding) 3) := by
          rw [
            detectionPlaintext3_eq_action,
            hblock3,
            hseed
          ]
          rfl

/-- Stable alias matching the protocol's detection-spec name. -/
theorem detectionSpec_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    PoseidonEncryptionBridge.DetectionSpec
      (C.action rho) (detectionIssuerShared rho) := by
  simpa only [PoseidonEncryptionBridge.DetectionSpec] using
    detectionBody_of_semantic rho semantic

{metadata_seams}

/-- The entire compliance transcript is derived from exact deployed providers. -/
theorem complianceTranscript_of_semanticProviders
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho)
    (isRegulatedBoolean :
      Protocol.Common.boolean (C.action rho).assetProof.isRegulated) :
    Protocol.Transfer.Concrete.complianceTranscript (C.action rho) := by
  have hthreshold := thresholdFlag_of_semantic rho semantic
  have hflag :
      Protocol.Common.boolean
        (C.action rho).transcript.isFlagged := by
    simpa only [
      Protocol.Common.boolean,
      ThresholdRegulatedBridge.BooleanSpec
    ] using ThresholdRegulatedBridge.boolean_sound
      (C.action rho).transcript.isFlagged
      (transcriptFlagBooleanCircuit_of_semantic
        rho semantic isRegulatedBoolean)
  rcases detectionSpec_of_semantic rho semantic with
    ⟨senderCoreIssuerFq, hsenderCoreIssuerCompress, hdetection⟩
  rw [detectionIssuerShared_eq_senderCoreIssuer rho] at hsenderCoreIssuerCompress
  rcases senderAmountEncryption_of_semantic rho semantic with
    ⟨senderCoreSelectedFq, hsenderCoreSelectedCompress,
      hsenderAmount⟩
  rw [senderAmountEncryptionShared_eq_selected rho] at hsenderCoreSelectedCompress
  rcases senderAddressEncryption_of_semantic rho semantic with
    ⟨senderExtSelectedFq, hsenderExtSelectedCompress,
      hsenderAddress⟩
  rw [senderAddressEncryptionShared_eq_selected rho] at hsenderExtSelectedCompress
  rcases outputAmountEncryption_of_semantic rho semantic with
    ⟨outputCoreSelectedFq, houtputCoreSelectedCompress,
      houtputAmount⟩
  rw [outputAmountEncryptionShared_eq_selected rho] at houtputCoreSelectedCompress
  rcases outputAddressEncryption_of_semantic rho semantic with
    ⟨outputExtSelectedFq, houtputExtSelectedCompress,
      houtputAddress⟩
  rw [outputAddressEncryptionShared_eq_selected rho] at houtputExtSelectedCompress
  unfold Protocol.Transfer.Concrete.complianceTranscript
  dsimp only
  refine ⟨
    hthreshold.2.1,
    hflag,
    hthreshold.2.2.1,
    salt0_of_semantic rho semantic,
    salt1_of_semantic rho semantic,
    salt2_of_semantic rho semantic,
    salt3_of_semantic rho semantic,
    salt4_of_semantic rho semantic,
    senderCoreEpkCompressed_of_semantic rho semantic,
    senderExtEpkCompressed_of_semantic rho semantic,
    outputCoreEpkCompressed_of_semantic rho semantic,
    outputExtEpkCompressed_of_semantic rho semantic,
    (senderCoreSharedSecrets rho).issuer,
    (senderCoreSharedSecrets rho).user,
    (senderCoreSharedSecrets rho).selected,
    (senderExtSharedSecrets rho).issuer,
    (senderExtSharedSecrets rho).user,
    (senderExtSharedSecrets rho).selected,
    (outputCoreSharedSecrets rho).issuer,
    (outputCoreSharedSecrets rho).user,
    (outputCoreSharedSecrets rho).selected,
    (outputExtSharedSecrets rho).issuer,
    (outputExtSharedSecrets rho).user,
    (outputExtSharedSecrets rho).selected,
    ?_
  ⟩
  exact ⟨
    senderCoreSharedSecrets_of_semantic
      rho semantic isRegulatedBoolean,
    senderExtSharedSecrets_of_semantic
      rho semantic isRegulatedBoolean,
    outputCoreSharedSecrets_of_semantic
      rho semantic isRegulatedBoolean,
    outputExtSharedSecrets_of_semantic
      rho semantic isRegulatedBoolean,
    ⟨
      senderCoreIssuerFq,
      senderCoreSelectedFq,
      senderExtSelectedFq,
      outputCoreSelectedFq,
      outputExtSelectedFq,
      hsenderCoreIssuerCompress,
      hsenderCoreSelectedCompress,
      hsenderExtSelectedCompress,
      houtputCoreSelectedCompress,
      houtputExtSelectedCompress,
      hdetection,
      hsenderAmount,
      hsenderAddress,
      houtputAmount,
      houtputAddress
    ⟩,
    metadataBinding_of_semantic rho semantic
  ⟩

/-- Exact seven-block provider output before the public equality assertion. -/
def computedStatementHash (rho : Nat → DeployedF) : DeployedF :=
  {statement}.Trace.hash6 (StatementHashValuation rho)

private theorem statementDomain :
    {statement}.Trace.domainLit =
      Protocol.Transfer.Concrete.statementDomain := by
  decide +kernel

private theorem statementPad0 :
    ({pad0} : DeployedF) =
      Protocol.Transfer.Concrete.statementPad0 := by
  decide +kernel

private theorem statementPad1 :
    ({pad1} : DeployedF) =
      Protocol.Transfer.Concrete.statementPad1 := by
  decide +kernel

{statement_field_seams}

{action_statement_fields}

/-- The compiler's final state LC is the certified seven-block output. -/
theorem statementHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    statementHash rho = computedStatementHash rho := by
  have h := semantic.statementHash
  change {statement}.spec (StatementHashValuation rho) at h
  unfold {statement}.spec at h
  calc
    statementHash rho =
        {statement}.Trace.flatState6_38Lane1
          (StatementHashValuation rho) := by
      simp [
        statementHash, statementHashLC,
        {statement}.Trace.flatState6_38Lane1,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval
      ]
      ring
    _ = ({statement}.Trace.rawState6_38
          (StatementHashValuation rho))[1] :=
      ({statement}.Trace.rawState6_output_eq_flatStateLane1
        (StatementHashValuation rho)).symm
    _ = {statement}.Trace.hash6
          (StatementHashValuation rho) := h
    _ = computedStatementHash rho := rfl

/-- The sole public input is exactly the compiler's final state LC. -/
theorem statementPublicHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := semantic.statementAssert
  change {statement_assert}.spec
    (StatementAssertValuation rho) at h
  simp [
    {statement_assert}.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval
  ] at h ⊢
  ring_nf at h ⊢
  exact h

/-- The provider's seven blocks are the independent 41-field protocol sponge. -/
theorem computedStatementHash_eq_protocol
    (rho : Nat → DeployedF) :
    computedStatementHash rho =
      Protocol.Common.statementHash
        Protocol.Transfer.Concrete.statementDomain
        Protocol.Transfer.Concrete.statementPad0
        Protocol.Transfer.Concrete.statementPad1
        (Protocol.Transfer.Concrete.statementFields (C.action rho)) := by
  rw [statementFields_of_action]
  unfold computedStatementHash
    {statement}.Trace.hash6
    {statement}.Trace.hash5
    {statement}.Trace.hash4
    {statement}.Trace.hash3
    {statement}.Trace.hash2
    {statement}.Trace.hash1
    {statement}.Trace.hash0
  rw [
    statementDomain, statementPad0, statementPad1,
    {statement_field_rewrites}
  ]
  rfl

/-- The public input binds the exact action field list with no caller seam. -/
theorem claimedStatementHash_of_semantic
    (rho : Nat → DeployedF)
    (semantic : TransferSemanticProviders rho) :
    claimedStatementHash rho =
      Protocol.Common.statementHash
        Protocol.Transfer.Concrete.statementDomain
        Protocol.Transfer.Concrete.statementPad0
        Protocol.Transfer.Concrete.statementPad1
        (Protocol.Transfer.Concrete.statementFields (C.action rho)) := by
  calc
    claimedStatementHash rho = statementHash rho :=
      statementPublicHash_of_semantic rho semantic
    _ = computedStatementHash rho :=
      statementHash_of_semantic rho semantic
    _ = _ := computedStatementHash_eq_protocol rho

end Shieldd.GnarkFormal.Deployed.Contracts.Transfer
"""


def _withdrawal_balance_seating_leaf(
    suffix: str,
    segment: int,
    local_start: str,
    count: int,
    global_start: int,
    stride: int,
) -> str:
    """Render one bounded exact run used by the net-balance seam."""

    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg{segment}

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact compiler-seating run. GENERATED by {GENERATOR}. -/

namespace Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalBalance{suffix}

open Contracts.ShieldedIcs20Withdrawal

theorem wires :
    (List.range {count}).map
        (fun offset => Seg{segment}.wireSeating ({local_start})) =
      (List.range {count}).map
        (fun offset => {global_start} + offset * {stride}) := by
  decide +kernel

end Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalBalance{suffix}
"""


def _withdrawal_balance_seating_aggregate(
    seams: WithdrawalBalanceSeams,
) -> str:
    """Render resource-bounded aggregate net-balance seating facts."""

    module = "ShieldedIcs20WithdrawalBalance"
    nb_segment = seams.net_balance["index"]
    compress_segment = seams.compressor["index"]
    x0, x1 = (run[0] for run in seams.x_runs)
    y0, y1 = (run[0] for run in seams.y_runs)
    return f"""import ShielddGnarkFormal.Deployed.{module}NetSeatingX0
import ShielddGnarkFormal.Deployed.{module}NetSeatingX1
import ShielddGnarkFormal.Deployed.{module}NetSeatingY0
import ShielddGnarkFormal.Deployed.{module}NetSeatingY1
import ShielddGnarkFormal.Deployed.{module}CompressSeatingX0
import ShielddGnarkFormal.Deployed.{module}CompressSeatingX1
import ShielddGnarkFormal.Deployed.{module}CompressSeatingY0
import ShielddGnarkFormal.Deployed.{module}CompressSeatingY1

set_option maxRecDepth 1000000
set_option maxHeartbeats 2000000

/-! Exact aggregate net-balance seating certificate.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalBalanceSeating

open Contracts.ShieldedIcs20Withdrawal

theorem netXPerm :
    ((List.range 149).map
        (fun offset => Seg{nb_segment}.wireSeating (772 + offset * 5)) ++
      (List.range 101).map
        (fun offset => Seg{nb_segment}.wireSeating
          (1520 + offset * 8))).Perm
      ((List.range 149).map (fun offset => {x0} + offset * 5) ++
        (List.range 101).map (fun offset => {x1} + offset * 8)) := by
  rw [
    {module}NetSeatingX0.wires,
    {module}NetSeatingX1.wires
  ]

theorem netYPerm :
    ((List.range 149).map
        (fun offset => Seg{nb_segment}.wireSeating (773 + offset * 5)) ++
      (List.range 101).map
        (fun offset => Seg{nb_segment}.wireSeating
          (1521 + offset * 8))).Perm
      ((List.range 149).map (fun offset => {y0} + offset * 5) ++
        (List.range 101).map (fun offset => {y1} + offset * 8)) := by
  rw [
    {module}NetSeatingY0.wires,
    {module}NetSeatingY1.wires
  ]

theorem compressXWires :
    (List.range 250).map
        (fun offset => Seg{compress_segment}.wireSeating (2 + offset)) =
      (List.range 149).map (fun offset => {x0} + offset * 5) ++
        (List.range 101).map (fun offset => {x1} + offset * 8) := by
  have hrange :
      List.range 250 =
        List.range 149 ++
          (List.range 101).map (fun offset => 149 + offset) := by
    decide +kernel
  rw [hrange, List.map_append, List.map_map]
  rw [{module}CompressSeatingX0.wires]
  have htail :
      (List.range 101).map
          ((fun offset =>
              Seg{compress_segment}.wireSeating (2 + offset)) ∘
            fun offset => 149 + offset) =
        (List.range 101).map (fun offset => {x1} + offset * 8) := by
    simpa only [Function.comp_def] using
      {module}CompressSeatingX1.wires
  rw [htail]

theorem compressYWires :
    (List.range 250).map
        (fun offset =>
          Seg{compress_segment}.wireSeating (253 + offset)) =
      (List.range 149).map (fun offset => {y0} + offset * 5) ++
        (List.range 101).map (fun offset => {y1} + offset * 8) := by
  have hrange :
      List.range 250 =
        List.range 149 ++
          (List.range 101).map (fun offset => 149 + offset) := by
    decide +kernel
  rw [hrange, List.map_append, List.map_map]
  rw [{module}CompressSeatingY0.wires]
  have htail :
      (List.range 101).map
          ((fun offset =>
              Seg{compress_segment}.wireSeating (253 + offset)) ∘
            fun offset => 149 + offset) =
        (List.range 101).map (fun offset => {y1} + offset * 8) := by
    simpa only [Function.comp_def] using
      {module}CompressSeatingY1.wires
  rw [htail]

theorem compressXPerm :
    ((List.range 149).map
        (fun offset => Seg{nb_segment}.wireSeating (772 + offset * 5)) ++
      (List.range 101).map
        (fun offset => Seg{nb_segment}.wireSeating
          (1520 + offset * 8))).Perm
      ((List.range 250).map
        (fun offset =>
          Seg{compress_segment}.wireSeating (2 + offset))) := by
  rw [
    {module}NetSeatingX0.wires,
    {module}NetSeatingX1.wires,
    compressXWires
  ]

theorem compressYPerm :
    ((List.range 149).map
        (fun offset => Seg{nb_segment}.wireSeating (773 + offset * 5)) ++
      (List.range 101).map
        (fun offset => Seg{nb_segment}.wireSeating
          (1521 + offset * 8))).Perm
      ((List.range 250).map
        (fun offset =>
          Seg{compress_segment}.wireSeating (253 + offset))) := by
  rw [
    {module}NetSeatingY0.wires,
    {module}NetSeatingY1.wires,
    compressYWires
  ]

end Shieldd.GnarkFormal.Deployed.ShieldedIcs20WithdrawalBalanceSeating
"""


def render_withdrawal_balance_seating(
    ir: dict, constraint_manifest: dict
) -> dict[Path, str]:
    """Render split exact certificates for all 250-wire balance joins."""

    seams = _validate_withdrawal_conservation_seams(
        ir, constraint_manifest
    )
    module = "ShieldedIcs20WithdrawalBalance"
    nb_segment = seams.net_balance["index"]
    compress_segment = seams.compressor["index"]
    x0, x1 = (run[0] for run in seams.x_runs)
    y0, y1 = (run[0] for run in seams.y_runs)
    leaves = {
        "NetSeatingX0": (
            nb_segment, "772 + offset * 5", 149, x0, 5
        ),
        "NetSeatingX1": (
            nb_segment, "1520 + offset * 8", 101, x1, 8
        ),
        "NetSeatingY0": (
            nb_segment, "773 + offset * 5", 149, y0, 5
        ),
        "NetSeatingY1": (
            nb_segment, "1521 + offset * 8", 101, y1, 8
        ),
        "CompressSeatingX0": (
            compress_segment, "2 + offset", 149, x0, 5
        ),
        "CompressSeatingX1": (
            compress_segment,
            "2 + (149 + offset)",
            101,
            x1,
            8,
        ),
        "CompressSeatingY0": (
            compress_segment, "253 + offset", 149, y0, 5
        ),
        "CompressSeatingY1": (
            compress_segment,
            "253 + (149 + offset)",
            101,
            y1,
            8,
        ),
    }
    files = {
        dtk_seating.LEAN / f"{module}{suffix}.lean":
            _withdrawal_balance_seating_leaf(suffix, *arguments)
        for suffix, arguments in leaves.items()
    }
    files[dtk_seating.LEAN / f"{module}Seating.lean"] = (
        _withdrawal_balance_seating_aggregate(seams)
    )
    return files


def _seat_haves(
    segment_index: int, seats: list[tuple[int, int]], prefix: str
) -> str:
    return "\n".join(
        f"  have {prefix}{local} : Seg{segment_index}.wireSeating "
        f"{local} = {deployed} := by\n"
        "    decide +kernel"
        for local, deployed in seats
    )


def _expression_term_wires(expression: dict, label: str) -> tuple[int, ...]:
    """Return the ordered exact wire support of one authenticated LC."""

    terms = expression.get("terms")
    if (
        expression.get("constant") != "0"
        or not isinstance(terms, list)
        or not terms
        or any(
            not isinstance(term.get("wire_id"), int)
            for term in terms
        )
    ):
        raise ValueError(
            f"Withdrawal semantic expression {label!r} is malformed"
        )
    return tuple(term["wire_id"] for term in terms)


def _semantic_path_unfolds(prefix: str) -> str:
    names = [f"{prefix}Path{index}" for index in range(48)]
    definitions = [
        item
        for name in names
        for item in (name, f"{name}LC")
    ]
    return ", ".join(definitions)


def _render_withdrawal_registry_fragment(
    ir: dict, constraint_manifest: dict
) -> str:
    segments = _validate_withdrawal_registry_seams(
        ir, constraint_manifest
    )
    selectors = _validate_withdrawal_asset_selector_seams(
        ir, constraint_manifest
    )
    bindings = {
        binding["name"]: binding
        for binding in core.semantic_bindings(constraint_manifest, ir)
    }
    boolean_index = segments["boolean"]["index"]
    asset_path_index = segments["asset_path"]["index"]
    asset_root_index = segments["asset_root"]["index"]
    asset_nonzero_index = segments["asset_nonzero"]["index"]
    asset_gap_index = segments["asset_gap"]["index"]
    gap_accept_index = segments["gap_accept"]["index"]
    compliance_path_index = segments["compliance_path"]["index"]
    asset_path_wires = _binding_wire_vector(
        bindings, "asset.path", 48
    )
    sender_path_wires = _binding_wire_vector(
        bindings, "sender.path", 48
    )
    asset_leaf_wires = _binding_lc_wires(
        bindings, "asset.leaf.commitment", ASSET_LEAF_COEFFICIENTS
    )
    asset_root_wires = _binding_lc_wires(
        bindings, "asset.root.computed", POSEIDON_ROOT_COEFFICIENTS
    )
    asset_gap_wires = _binding_lc_wires(
        bindings, "asset.gap_valid", ("1", "1")
    )
    sender_leaf_expression = _binding_expression(
        bindings, "sender.leaf_commitment", 1
    )[0]
    sender_leaf_wires = _expression_term_wires(
        sender_leaf_expression,
        "sender.leaf_commitment",
    )
    sender_leaf_coefficients = tuple(
        term["coefficient"]
        for term in sender_leaf_expression["terms"]
    )
    if any(
        not isinstance(coefficient, str) or not coefficient.isdigit()
        for coefficient in sender_leaf_coefficients
    ):
        raise ValueError(
            "Withdrawal sender leaf coefficients are malformed"
        )
    sender_root_wires = _binding_lc_wires(
        bindings, "sender.compliance_root", POSEIDON_ROOT_COEFFICIENTS
    )
    asset_anchor_wire = _single_binding_wire(bindings, "asset_anchor")
    asset_position_wire = _single_binding_wire(bindings, "asset.position")
    sender_position_wire = _single_binding_wire(bindings, "sender.position")
    asset_leaf_value_wire = _single_binding_wire(
        bindings, "asset.leaf.value"
    )
    asset_leaf_next_value_wire = _single_binding_wire(
        bindings, "asset.leaf.next_value"
    )
    asset_id_nonzero_projection = (
        "1" if selectors.asset_id_local_wire == 1 else "2"
    )
    asset_name = core.template_name(
        segments["asset_path"]["proof_template_id"]
    )
    gap_name = core.template_name(
        segments["asset_gap"]["proof_template_id"]
    )
    compliance_name = core.template_name(
        segments["compliance_path"]["proof_template_id"]
    )
    boolean_name = core.template_name(
        segments["boolean"]["proof_template_id"]
    )
    root_name = core.template_name(
        segments["asset_root"]["proof_template_id"]
    )
    accept_name = core.template_name(
        segments["gap_accept"]["proof_template_id"]
    )
    asset_provider = f"Deployed.Templates.Semantics.{asset_name}"
    gap_provider = f"Deployed.Templates.Semantics.{gap_name}"
    compliance_provider = (
        f"Deployed.Templates.Semantics.{compliance_name}"
    )
    boolean_provider = f"Deployed.Templates.Semantics.{boolean_name}"
    root_provider = f"Deployed.Templates.Semantics.{root_name}"
    accept_provider = f"Deployed.Templates.Semantics.{accept_name}"

    asset_local_path = _path_local_wires("asset")
    compliance_shift = len(sender_leaf_wires) - 7
    compliance_local_path = _path_local_wires(
        "compliance",
        compliance_leaf_terms=len(sender_leaf_wires),
    )
    compliance_leaf_locals = tuple(
        range(39, 39 + len(sender_leaf_wires))
    )
    compliance_output_locals = tuple(
        local + compliance_shift
        for local in (5828, 5833, 5838, 5843, 5848)
    )
    asset_path_haves = _seat_haves(
        asset_path_index,
        list(zip(asset_local_path, asset_path_wires, strict=True)),
        "ha",
    )
    compliance_path_haves = _seat_haves(
        compliance_path_index,
        list(zip(compliance_local_path, sender_path_wires, strict=True)),
        "hc",
    )
    asset_path_facts = ", ".join(f"ha{wire}" for wire in asset_local_path)
    compliance_path_facts = ", ".join(
        f"hc{wire}" for wire in compliance_local_path
    )
    asset_path_unfolds = _semantic_path_unfolds("asset")
    sender_path_unfolds = _semantic_path_unfolds("sender")
    semantic_order = int(MODULUS_MINUS_ONE) + 1
    seam_coefficients = tuple(dict.fromkeys((
        *POSEIDON_ROOT_COEFFICIENTS,
        *ASSET_LEAF_COEFFICIENTS,
        *sender_leaf_coefficients,
    )))
    coefficient_names = {
        coefficient: f"withdrawalSeamCoeff{index}"
        for index, coefficient in enumerate(seam_coefficients)
    }
    seam_coefficient_lemmas = "\n\n".join(
        f"""private theorem {coefficient_names[coefficient]} :
    ({coefficient} : SemanticF) =
      -({semantic_order - int(coefficient)} : SemanticF) := by
  decide +kernel"""
        for coefficient in seam_coefficients
    )
    root_coefficient_names = ", ".join(
        coefficient_names[coefficient]
        for coefficient in POSEIDON_ROOT_COEFFICIENTS
    )
    asset_leaf_coefficient_names = ", ".join(
        coefficient_names[coefficient]
        for coefficient in ASSET_LEAF_COEFFICIENTS
    )
    sender_leaf_coefficient_names = ", ".join(
        coefficient_names[coefficient]
        for coefficient in sender_leaf_coefficients
    )
    return f"""
/-! ## Registry membership, gap, and compliance-path seams -/

/-- Asset path reshaped from the compiler's flat 48-lane binding. -/
def assetProtocolPath (rho : Nat → SemanticF) :
    Protocol.Common.Path16 :=
  fun level sibling =>
    assetPathAt rho
      ⟨3 * level.val + sibling.val, by omega⟩

/-- Sender-compliance path reshaped from the flat compiler binding. -/
def senderProtocolPath (rho : Nat → SemanticF) :
    Protocol.Common.Path16 :=
  fun level sibling =>
    senderPathAt rho
      ⟨3 * level.val + sibling.val, by omega⟩

{seam_coefficient_lemmas}

theorem assetPathAt_eq_deployedWire
    (rho : Nat → SemanticF) (index : Fin 48) :
    assetPathAt rho index = rho ({asset_path_wires[0]} + index.val) := by
  rcases index with ⟨index, index_lt⟩
  interval_cases index <;>
    simp [
      assetPathAt, assetPathVector, {asset_path_unfolds},
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval] <;> rfl

theorem senderPathAt_eq_deployedWire
    (rho : Nat → SemanticF) (index : Fin 48) :
    senderPathAt rho index = rho ({sender_path_wires[0]} + index.val) := by
  rcases index with ⟨index, index_lt⟩
  interval_cases index <;>
    simp [
      senderPathAt, senderPathVector, {sender_path_unfolds},
      StructuredLC.eval, StructuredLC.sumRuns,
      StructuredLC.sumResidual, StrideRun.eval] <;> rfl

theorem assetPosition_eq_pathPosition
    (rho : Nat → SemanticF) :
    assetPosition rho = Seg{asset_path_index}.localRho rho 33 := by
  have hseat :
      Seg{asset_path_index}.wireSeating 33 = {asset_position_wire} := by
    decide +kernel
  simp only [
    assetPosition, assetPositionLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_path_index}.localRho, Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem senderPosition_eq_pathPosition
    (rho : Nat → SemanticF) :
    senderPosition rho =
      Seg{compliance_path_index}.localRho rho 33 := by
  have hseat :
      Seg{compliance_path_index}.wireSeating 33 =
        {sender_position_wire} := by
    decide +kernel
  simp only [
    senderPosition, senderPositionLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{compliance_path_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem assetLeafCommitment_eq_pathLeaf
    (rho : Nat → SemanticF) :
    assetLeafCommitment rho =
      {asset_provider}.leaf
        (Seg{asset_path_index}.localRho rho) := by
{_seat_haves(asset_path_index, list(zip(range(39, 45), asset_leaf_wires, strict=True)), "hl")}
  simp only [
    assetLeafCommitment, assetLeafCommitmentLC,
    {asset_provider}.leaf,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_path_index}.localRho, Deployed.Templates.seated,
    {", ".join(f"hl{local}" for local in range(39, 45))},
    zero_add, one_mul, add_zero]
  rw [{asset_leaf_coefficient_names}]
  ring

theorem senderLeafCommitment_eq_pathLeaf
    (rho : Nat → SemanticF) :
    senderLeafCommitment rho =
      {compliance_provider}.leaf
        (Seg{compliance_path_index}.localRho rho) := by
{_seat_haves(compliance_path_index, list(zip(compliance_leaf_locals, sender_leaf_wires, strict=True)), "hl")}
  simp only [
    senderLeafCommitment, senderLeafCommitmentLC,
    {compliance_provider}.leaf,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{compliance_path_index}.localRho,
    Deployed.Templates.seated,
    {", ".join(f"hl{local}" for local in compliance_leaf_locals)},
    zero_add, one_mul, add_zero]
  rw [{sender_leaf_coefficient_names}]
  ring

theorem assetProviderPath_eq_protocolPath
    (rho : Nat → SemanticF) :
    {asset_provider}.path (Seg{asset_path_index}.localRho rho) =
      Shieldd.GnarkFormal.QuadPathProtocolBridge.vectorPath
        (assetProtocolPath rho) := by
{asset_path_haves}
  apply List.Vector.ext
  intro level
  apply List.Vector.ext
  intro sibling
  rcases level with ⟨level, level_lt⟩
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling <;>
    simp [
      {asset_provider}.path,
      Shieldd.GnarkFormal.QuadPathProtocolBridge.vectorPath,
      assetProtocolPath, assetPathAt_eq_deployedWire,
      Seg{asset_path_index}.localRho, Deployed.Templates.seated,
      {asset_path_facts}] <;> rfl

theorem complianceProviderPath_eq_protocolPath
    (rho : Nat → SemanticF) :
    {compliance_provider}.path
      (Seg{compliance_path_index}.localRho rho) =
      Shieldd.GnarkFormal.QuadPathProtocolBridge.vectorPath
        (senderProtocolPath rho) := by
{compliance_path_haves}
  apply List.Vector.ext
  intro level
  apply List.Vector.ext
  intro sibling
  rcases level with ⟨level, level_lt⟩
  rcases sibling with ⟨sibling, sibling_lt⟩
  interval_cases level <;> interval_cases sibling <;>
    simp [
      {compliance_provider}.path,
      Shieldd.GnarkFormal.QuadPathProtocolBridge.vectorPath,
      senderProtocolPath, senderPathAt_eq_deployedWire,
      Seg{compliance_path_index}.localRho,
      Deployed.Templates.seated,
      {compliance_path_facts}] <;> rfl

theorem assetRootComputed_eq_pathOutput
    (rho : Nat → SemanticF) :
    assetRootComputed rho =
      {asset_provider}.output
        (Seg{asset_path_index}.localRho rho) := by
{_seat_haves(asset_path_index, list(zip((5827, 5832, 5837, 5842, 5847), asset_root_wires, strict=True)), "ho")}
  simp only [
    assetRootComputed, assetRootComputedLC,
    {asset_provider}.output, {asset_provider}.nodeOut15,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_path_index}.localRho, Deployed.Templates.seated,
    {", ".join(f"ho{local}" for local in (5827, 5832, 5837, 5842, 5847))},
    zero_add, one_mul, add_zero]
  rw [{root_coefficient_names}]
  ring

theorem senderComplianceRoot_eq_pathOutput
    (rho : Nat → SemanticF) :
    senderComplianceRoot rho =
      {compliance_provider}.output
        (Seg{compliance_path_index}.localRho rho) := by
{_seat_haves(compliance_path_index, list(zip(compliance_output_locals, sender_root_wires, strict=True)), "ho")}
  simp only [
    senderComplianceRoot, senderComplianceRootLC,
    {compliance_provider}.output,
    {compliance_provider}.nodeOut15,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{compliance_path_index}.localRho,
    Deployed.Templates.seated,
    {", ".join(f"ho{local}" for local in compliance_output_locals)},
    zero_add, one_mul, add_zero]
  rw [{root_coefficient_names}]
  ring

theorem assetAnchor_eq_computedRoot_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    assetAnchor rho = assetRootComputed rho := by
  have h := facts.exact.AssertEqSeg{asset_root_index}
  change {root_provider}.spec
    (Seg{asset_root_index}.localRho rho) at h
  unfold {root_provider}.spec at h
{_seat_haves(asset_root_index, [*zip(range(1, 6), asset_root_wires, strict=True), (6, asset_anchor_wire)], "hr")}
  simpa only [
    assetAnchor, assetAnchorLC,
    assetRootComputed, assetRootComputedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_root_index}.localRho, Deployed.Templates.seated,
    hr1, hr2, hr3, hr4, hr5, hr6,
    zero_add, one_mul, add_zero, add_assoc] using h

/-- Exact asset path plus the separate asserted root yields protocol membership. -/
theorem assetMember_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Protocol.Common.quadMember
      (assetAnchor rho) (assetLeafCommitment rho)
      (assetProtocolPath rho) (assetPosition rho) := by
  have hPath :=
    facts.exact.GadgetAssetRegistryPathSeg{asset_path_index}
  change {asset_provider}.spec
    (Seg{asset_path_index}.localRho rho) at hPath
  have hBinary :=
    {asset_provider}.toBinary_of_spec
      (Seg{asset_path_index}.localRho rho) hPath
  rw [← assetPosition_eq_pathPosition] at hBinary
  have hComputed := hPath.2.2
  rw [← assetLeafCommitment_eq_pathLeaf] at hComputed
  apply Shieldd.GnarkFormal.QuadPathProtocolBridge.member_of_toBinary
    (assetAnchor rho) (assetPosition rho)
    (assetLeafCommitment rho)
    ({asset_provider}.output (Seg{asset_path_index}.localRho rho))
    (assetProtocolPath rho)
    ({asset_provider}.path (Seg{asset_path_index}.localRho rho))
    ({asset_provider}.bits (Seg{asset_path_index}.localRho rho))
    hBinary
    (assetProviderPath_eq_protocolPath rho)
    hComputed
  exact (assetAnchor_eq_computedRoot_of_exact rho facts).trans
    (assetRootComputed_eq_pathOutput rho)

/--
The compliance path segment proves the bounded position and computed root.
The following exact conditional-assertion segment binds it to the public anchor.
-/
theorem compliancePath_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    (senderPosition rho).val < 2 ^ 32 ∧
      Protocol.Common.quadRoot
        (senderLeafCommitment rho) (senderProtocolPath rho)
        (senderPosition rho) =
          senderComplianceRoot rho := by
  have hPath :=
    facts.exact.GadgetCompliancePathSeg{compliance_path_index}
  change {compliance_provider}.spec
    (Seg{compliance_path_index}.localRho rho) at hPath
  have hBinary :=
    {compliance_provider}.toBinary_of_spec
      (Seg{compliance_path_index}.localRho rho) hPath
  rw [← senderPosition_eq_pathPosition] at hBinary
  have hComputed := hPath.2.2
  rw [← senderLeafCommitment_eq_pathLeaf] at hComputed
  have result :=
    Shieldd.GnarkFormal.QuadPathProtocolBridge.pathFacts_of_toBinary
      (senderPosition rho) (senderLeafCommitment rho)
      ({compliance_provider}.output
        (Seg{compliance_path_index}.localRho rho))
      (senderProtocolPath rho)
      ({compliance_provider}.path
        (Seg{compliance_path_index}.localRho rho))
      ({compliance_provider}.bits
        (Seg{compliance_path_index}.localRho rho))
      hBinary (complianceProviderPath_eq_protocolPath rho) hComputed
  rw [← senderComplianceRoot_eq_pathOutput] at result
  exact result

theorem isRegulated_eq_booleanInput
    (rho : Nat → SemanticF) :
    isRegulated rho =
      Seg{boolean_index}.localRho rho 1 := by
  have hseat :
      Seg{boolean_index}.wireSeating 1 =
        {selectors.is_regulated_wire} := by
    decide +kernel
  simp only [
    isRegulated, isRegulatedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{boolean_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem isRegulatedBoolean_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    isRegulated rho = 0 ∨ isRegulated rho = 1 := by
  have h := facts.exact.AssertBooleanSeg{boolean_index}
  change {boolean_provider}.spec
    (Seg{boolean_index}.localRho rho) at h
  unfold {boolean_provider}.spec at h
  rw [isRegulated_eq_booleanInput]
  exact h

theorem outboundAssetId_eq_nonzeroInput
    (rho : Nat → SemanticF) :
    outboundAssetId rho =
      Seg{asset_nonzero_index}.localRho rho
        {selectors.asset_id_local_wire} := by
  have hseat :
      Seg{asset_nonzero_index}.wireSeating
        {selectors.asset_id_local_wire} =
          {selectors.outbound_asset_id_wire} := by
    decide +kernel
  simp only [
    outboundAssetId, outboundAssetIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_nonzero_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem outboundAssetIdNonzero_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    outboundAssetId rho ≠ 0 := by
  have h :=
    facts.exact.AssertNeSeg{asset_nonzero_index}.{asset_id_nonzero_projection}
  change
    Seg{asset_nonzero_index}.localRho rho
      {selectors.asset_id_local_wire} ≠ 0 at h
  rw [outboundAssetId_eq_nonzeroInput]
  exact h

theorem outboundAssetId_eq_gapInput
    (rho : Nat → SemanticF) :
    outboundAssetId rho =
      Seg{asset_gap_index}.localRho rho 594 := by
  have hseat :
      Seg{asset_gap_index}.wireSeating 594 =
        {selectors.outbound_asset_id_wire} := by
    decide +kernel
  simp only [
    outboundAssetId, outboundAssetIdLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_gap_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem isRegulated_eq_gapInput
    (rho : Nat → SemanticF) :
    isRegulated rho =
      Seg{asset_gap_index}.localRho rho 3044 := by
  have hseat :
      Seg{asset_gap_index}.wireSeating 3044 =
        {selectors.is_regulated_wire} := by
    decide +kernel
  simp only [
    isRegulated, isRegulatedLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_gap_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem assetLeafValue_eq_gapInput
    (rho : Nat → SemanticF) :
    assetLeafValue rho =
      Seg{asset_gap_index}.localRho rho 254 := by
  have hseat :
      Seg{asset_gap_index}.wireSeating 254 =
        {asset_leaf_value_wire} := by
    decide +kernel
  simp only [
    assetLeafValue, assetLeafValueLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_gap_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem assetLeafNextValue_eq_gapInput
    (rho : Nat → SemanticF) :
    assetLeafNextValue rho =
      Seg{asset_gap_index}.localRho rho 934 := by
  have hseat :
      Seg{asset_gap_index}.wireSeating 934 =
        {asset_leaf_next_value_wire} := by
    decide +kernel
  simp only [
    assetLeafNextValue, assetLeafNextValueLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_gap_index}.localRho,
    Deployed.Templates.seated, hseat,
    zero_add, one_mul, add_zero]

theorem assetGapValid_eq_gapOutput
    (rho : Nat → SemanticF) :
    assetGapValid rho =
      Seg{asset_gap_index}.localRho rho 3043 +
        Seg{asset_gap_index}.localRho rho 3045 := by
  have hleft :
      Seg{asset_gap_index}.wireSeating 3043 =
        {asset_gap_wires[0]} := by
    decide +kernel
  have hright :
      Seg{asset_gap_index}.wireSeating 3045 =
        {asset_gap_wires[1]} := by
    decide +kernel
  simp only [
    assetGapValid, assetGapValidLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{asset_gap_index}.localRho,
    Deployed.Templates.seated,
    hleft, hright, zero_add, one_mul, add_zero]

theorem gapAcceptanceInputs_eq_gapOutput
    (rho : Nat → SemanticF) :
    Seg{gap_accept_index}.localRho rho 1 +
        Seg{gap_accept_index}.localRho rho 2 =
      assetGapValid rho := by
  have hleft :
      Seg{gap_accept_index}.wireSeating 1 =
        {asset_gap_wires[0]} := by
    decide +kernel
  have hright :
      Seg{gap_accept_index}.wireSeating 2 =
        {asset_gap_wires[1]} := by
    decide +kernel
  simp only [
    assetGapValid, assetGapValidLC,
    StructuredLC.eval, StructuredLC.sumRuns,
    StructuredLC.sumResidual, StrideRun.eval,
    Seg{gap_accept_index}.localRho,
    Deployed.Templates.seated,
    hleft, hright, zero_add, one_mul, add_zero]

/-- Exact gap body plus its separate Booleanity and acceptance rows. -/
theorem assetGap_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.registryGap
      (outboundAssetId rho) (isRegulated rho)
      (assetLeafValue rho) (assetLeafNextValue rho) := by
  have hBooleanSpec := isRegulatedBoolean_of_exact rho facts
  have hBoolean : GatesDef.is_bool (isRegulated rho) := by
    rcases hBooleanSpec with hzero | hone
    · rw [hzero]
      simp [GatesDef.is_bool]
    · rw [hone]
      simp [GatesDef.is_bool]
  have hBody :=
    facts.exact.GadgetAssetRegistryGapSeg{asset_gap_index}
  change {gap_provider}.spec
    (Seg{asset_gap_index}.localRho rho) at hBody
  unfold {gap_provider}.spec at hBody
  have hBodyRoles :
      Shieldd.GnarkFormal.Extracted.ImtGap.BodyRelationSpec
        (outboundAssetId rho) (isRegulated rho)
        (assetLeafValue rho) (assetLeafNextValue rho)
        (assetGapValid rho) := by
    rw [
      outboundAssetId_eq_gapInput,
      isRegulated_eq_gapInput,
      assetLeafValue_eq_gapInput,
      assetLeafNextValue_eq_gapInput,
      assetGapValid_eq_gapOutput]
    exact hBody
  have hAcceptSpec := facts.exact.AssertEqSeg{gap_accept_index}
  change {accept_provider}.spec
    (Seg{gap_accept_index}.localRho rho) at hAcceptSpec
  unfold {accept_provider}.spec at hAcceptSpec
  have hAccepted : GatesDef.eq (assetGapValid rho) (1 : SemanticF) := by
    dsimp [GatesDef.eq]
    rw [← gapAcceptanceInputs_eq_gapOutput]
    simpa using hAcceptSpec.symm
  obtain ⟨regulated, hRegulated, hValid⟩ :=
    Shieldd.GnarkFormal.Extracted.ImtGap.body_relation_spec_sound
      (outboundAssetId rho) (isRegulated rho)
      (assetLeafValue rho) (assetLeafNextValue rho)
      (assetGapValid rho) hBoolean hBodyRoles hAccepted
  have hGap :=
    Shieldd.GnarkFormal.assetMembershipValidSpec_registryGap
      (outboundAssetId rho) (isRegulated rho)
      (assetLeafValue rho) (assetLeafNextValue rho)
      regulated (by
        cases regulated <;>
          simpa [Bool.toZMod] using hRegulated) hValid
  simpa [
    Protocol.ShieldedIcs20Withdrawal.Concrete.registryGap
  ] using hGap
"""


def _render_withdrawal_semantic_seams_monolith(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the source body later split into bounded Withdrawal seam modules."""

    balance = _validate_withdrawal_conservation_seams(
        ir, constraint_manifest
    )
    registry_segments = _validate_withdrawal_registry_seams(
        ir, constraint_manifest
    )
    registry_fragment = _render_withdrawal_registry_fragment(
        ir, constraint_manifest
    )
    registry_indices = sorted({
        segment["index"] for segment in registry_segments.values()
    })
    registry_imports = "\n".join(
        "import "
        "ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal."
        f"Seg{index}"
        for index in registry_indices
    )
    provider_imports = "\n".join(
        f"import {module}"
        for module in dict.fromkeys(
            _withdrawal_semantic_import(segment)
            for segment in (
                *registry_segments.values(),
                balance.net_balance,
                balance.compressor,
            )
        )
    )
    nb_index = balance.net_balance["index"]
    compress_index = balance.compressor["index"]
    nb_name = core.template_name(
        balance.net_balance["proof_template_id"]
    )
    compress_name = core.template_name(
        balance.compressor["proof_template_id"]
    )
    x0, x1 = (run[0] for run in balance.x_runs)
    y0, y1 = (run[0] for run in balance.y_runs)
    nb = f"Deployed.Templates.Semantics.{nb_name}.NbSupport"
    compress = f"Deployed.Templates.Semantics.{compress_name}"
    compress_relation = f"Deployed.Templates.Relations.{compress_name}"
    return f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.PrimeOrder
{registry_imports}
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg{nb_index}
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.Seg{compress_index}
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CircuitFacts
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBindings
import ShielddGnarkFormal.Deployed.ShieldedIcs20WithdrawalBalanceSeating
import ShielddGnarkFormal.ImtGapBridge
import ShielddGnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete
import ShielddGnarkFormal.QuadPathProtocolBridge
{provider_imports}
import Mathlib.Tactic.LinearCombination
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact conservation shared-wire seams for the shielded_ics20_withdrawal deployment.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open Shieldd.GnarkFormal
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeWithdrawalSeamCommRing : CommRing SemanticF := ZMod.commRing _
local instance withdrawalSeamPrime : Fact (Nat.Prime SemanticOrder) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

/-- Exact x-coordinate emitted by the deployed net-balance accumulator. -/
def netBalanceCommitmentX (rho : Nat → SemanticF) : SemanticF :=
  ({nb}.nbBlindAccState (Seg{nb_index}.localRho rho) 251).x

/-- Exact y-coordinate emitted by the deployed net-balance accumulator. -/
def netBalanceCommitmentY (rho : Nat → SemanticF) : SemanticF :=
  ({nb}.nbBlindAccState (Seg{nb_index}.localRho rho) 251).y

/-- Specialized final x-coordinate equation, avoiding the 252-arm state match. -/
theorem netBalanceCommitmentX_eq_delta
    (rho : Nat → SemanticF) :
    netBalanceCommitmentX rho =
      ({WITHDRAWAL_BALANCE_X_SEED} : {nb}.F) *
          (id (α := {nb}.F) (Seg{nb_index}.localRho rho 517)) +
        {nb}.nbBlindDeltaX250 (Seg{nb_index}.localRho rho) := by
  rfl

/-- Specialized final y-coordinate equation, avoiding the 252-arm state match. -/
theorem netBalanceCommitmentY_eq_delta
    (rho : Nat → SemanticF) :
    netBalanceCommitmentY rho =
      (1 : {nb}.F) +
        ({WITHDRAWAL_BALANCE_Y_SEED} : {nb}.F) *
          (id (α := {nb}.F) (Seg{nb_index}.localRho rho 517)) +
        {nb}.nbBlindDeltaY250 (Seg{nb_index}.localRho rho) := by
  rfl

/-- The required spend amount is the first exact net-balance input. -/
theorem spend0NoteAmount_eq_netBalanceInput0
    (rho : Nat → SemanticF) :
    spend0NoteAmount rho = Seg{nb_index}.localRho rho 129 := by
  have hseat :
      Seg{nb_index}.wireSeating 129 =
        {balance.spend0_amount_wire} := by
    decide +kernel
  simp only [
    spend0NoteAmount, spend0NoteAmountLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseat, zero_add, one_mul, add_zero]

/-- The optional spend amount is the second exact net-balance input. -/
theorem spend1NoteAmount_eq_netBalanceInput1
    (rho : Nat → SemanticF) :
    spend1NoteAmount rho = Seg{nb_index}.localRho rho 258 := by
  have hseat :
      Seg{nb_index}.wireSeating 258 =
        {balance.spend1_amount_wire} := by
    decide +kernel
  simp only [
    spend1NoteAmount, spend1NoteAmountLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseat, zero_add, one_mul, add_zero]

/-- The change output amount is the first exact net-balance output. -/
theorem output0NoteAmount_eq_netBalanceOutput0
    (rho : Nat → SemanticF) :
    output0NoteAmount rho = Seg{nb_index}.localRho rho 387 := by
  have hseat :
      Seg{nb_index}.wireSeating 387 =
        {balance.change_amount_wire} := by
    decide +kernel
  simp only [
    output0NoteAmount, output0NoteAmountLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseat, zero_add, one_mul, add_zero]

/-- The outbound amount is the second exact net-balance output. -/
theorem outboundAmount_eq_netBalanceOutput1
    (rho : Nat → SemanticF) :
    outboundAmount rho = Seg{nb_index}.localRho rho 516 := by
  have hseat :
      Seg{nb_index}.wireSeating 516 =
        {balance.outbound_amount_wire} := by
    decide +kernel
  simp only [
    outboundAmount, outboundAmountLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseat, zero_add, one_mul, add_zero]

/-- The action balance blinding is the exact net-balance scalar input. -/
theorem actionBalanceBlinding_eq_netBalanceBlind
    (rho : Nat → SemanticF) :
    actionBalanceBlinding rho = Seg{nb_index}.localRho rho 768 := by
  have hseat :
      Seg{nb_index}.wireSeating 768 =
        {balance.blinding_wire} := by
    decide +kernel
  simp only [
    actionBalanceBlinding, actionBalanceBlindingLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseat, zero_add, one_mul, add_zero]

/-- Protocol-facing conservation statement in compiler-labelled roles. -/
def ConservationSpec (rho : Nat → SemanticF) : Prop :=
  (spend0NoteAmount rho).val < 2 ^ 128 ∧
  (spend1NoteAmount rho).val < 2 ^ 128 ∧
  (output0NoteAmount rho).val < 2 ^ 128 ∧
  (outboundAmount rho).val < 2 ^ 128 ∧
  (actionBalanceBlinding rho).val < 2 ^ 251 ∧
  spend0NoteAmount rho + spend1NoteAmount rho =
    output0NoteAmount rho + outboundAmount rho ∧
  Shieldd.GnarkFormal.Decaf377Assumptions.Point.mk
      (netBalanceCommitmentX rho) (netBalanceCommitmentY rho) =
    Shieldd.GnarkFormal.Decaf377Assumptions.scalarMulLE 251
      Shieldd.GnarkFormal.Decaf377Assumptions.valueBlindingGenerator
      (actionBalanceBlinding rho)

/-- The exact segment specification implies compiler-labelled conservation. -/
theorem conservationSpec_of_segmentSpec
    (rho : Nat → SemanticF) (h : Seg{nb_index}.contract.spec rho) :
    ConservationSpec rho := by
  change Deployed.Templates.Semantics.{nb_name}.spec
    (Seg{nb_index}.localRho rho) at h
  unfold Deployed.Templates.Semantics.{nb_name}.spec at h
  unfold ConservationSpec
  rw [
    spend0NoteAmount_eq_netBalanceInput0,
    spend1NoteAmount_eq_netBalanceInput1,
    output0NoteAmount_eq_netBalanceOutput0,
    outboundAmount_eq_netBalanceOutput1,
    actionBalanceBlinding_eq_netBalanceBlind]
  exact h

/-- Typed whole-circuit facts expose the exact conservation segment fact. -/
theorem conservationSpec_of_circuitFacts
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    ConservationSpec rho :=
  conservationSpec_of_segmentSpec rho
    facts.exact.DecafConservationNetBalanceCommitment2Seg{nb_index}

/-- The compiler-labelled x-coordinate is exactly the net-balance output. -/
theorem balanceCommitmentComputed0_eq_netBalanceCommitmentX
    (rho : Nat → SemanticF) :
    balanceCommitmentComputed0 rho = netBalanceCommitmentX rho := by
  have hperm :
      ((List.range 149).map (fun offset =>
          Seg{nb_index}.wireSeating (772 + offset * 5)) ++
        (List.range 101).map (fun offset =>
          Seg{nb_index}.wireSeating (1520 + offset * 8))).Perm
        ((List.range 149).map
            (fun offset => {x0} + offset * 5) ++
          (List.range 101).map
            (fun offset => {x1} + offset * 8)) := by
    exact
      Deployed.ShieldedIcs20WithdrawalBalanceSeating.netXPerm
  have hsum := sumAux_pair_eq_pair_of_perm rho
    Seg{nb_index}.wireSeating (fun wire => wire)
    772 5 149 1520 8 101
    {x0} 5 149 {x1} 8 101 hperm
  change
    StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          772 5 149 +
        StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          1520 8 101 =
      StrideRun.sumAux rho {x0} 5 149 +
        StrideRun.sumAux rho {x1} 8 101 at hsum
  have hseed :
      Seg{nb_index}.wireSeating 517 = {balance.seed_wire} := by
    decide +kernel
  simp only [
    balanceCommitmentComputed0, balanceCommitmentComputed0LC,
    netBalanceCommitmentX_eq_delta,
    {nb}.nbBlindDeltaX250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseed, zero_add, one_mul, add_zero]
  rw [← hsum]
  ac_rfl

/-- The compiler-labelled y-coordinate is exactly the net-balance output. -/
theorem balanceCommitmentComputed1_eq_netBalanceCommitmentY
    (rho : Nat → SemanticF) :
    balanceCommitmentComputed1 rho = netBalanceCommitmentY rho := by
  have hperm :
      ((List.range 149).map (fun offset =>
          Seg{nb_index}.wireSeating (773 + offset * 5)) ++
        (List.range 101).map (fun offset =>
          Seg{nb_index}.wireSeating (1521 + offset * 8))).Perm
        ((List.range 149).map
            (fun offset => {y0} + offset * 5) ++
          (List.range 101).map
            (fun offset => {y1} + offset * 8)) := by
    exact
      Deployed.ShieldedIcs20WithdrawalBalanceSeating.netYPerm
  have hsum := sumAux_pair_eq_pair_of_perm rho
    Seg{nb_index}.wireSeating (fun wire => wire)
    773 5 149 1521 8 101
    {y0} 5 149 {y1} 8 101 hperm
  change
    StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          773 5 149 +
        StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          1521 8 101 =
      StrideRun.sumAux rho {y0} 5 149 +
        StrideRun.sumAux rho {y1} 8 101 at hsum
  have hseed :
      Seg{nb_index}.wireSeating 517 = {balance.seed_wire} := by
    decide +kernel
  simp only [
    balanceCommitmentComputed1, balanceCommitmentComputed1LC,
    netBalanceCommitmentY_eq_delta,
    {nb}.nbBlindDeltaY250,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Deployed.Templates.seated,
    hseed, zero_add, one_mul, add_zero]
  rw [← hsum]
  ac_rfl

/--
The net-balance x output and compression input are the identical 251 shared
wires, including the coefficient-bearing seed wire.
-/
theorem netBalanceCommitmentX_eq_compressInputX
    (rho : Nat → SemanticF) :
    netBalanceCommitmentX rho =
      {compress}.inputX (Seg{compress_index}.localRho rho) := by
  have hperm :
      ((List.range 149).map (fun offset =>
          Seg{nb_index}.wireSeating (772 + offset * 5)) ++
        (List.range 101).map (fun offset =>
          Seg{nb_index}.wireSeating (1520 + offset * 8))).Perm
        ((List.range 250).map (fun offset =>
          Seg{compress_index}.wireSeating (2 + offset))) := by
    exact
      Deployed.ShieldedIcs20WithdrawalBalanceSeating.compressXPerm
  have hsum := sumAux_pair_eq_of_perm rho
    Seg{nb_index}.wireSeating Seg{compress_index}.wireSeating
    772 5 149 1520 8 101 2 1 250 hperm
  change
    StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          772 5 149 +
        StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          1520 8 101 =
      StrideRun.sumAux (Deployed.Templates.seated rho Seg{compress_index}.wireSeating)
        2 1 250 at hsum
  have hseed :
      Seg{nb_index}.wireSeating 517 = Seg{compress_index}.wireSeating 1 := by
    decide +kernel
  simp only [
    netBalanceCommitmentX_eq_delta,
    {nb}.nbBlindDeltaX250, {compress}.inputX,
    {compress_relation}.relationLc0,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Seg{compress_index}.localRho,
    Deployed.Templates.seated, hseed, zero_add, one_mul, add_zero]
  rw [hsum]
  ac_rfl

/--
The net-balance y output and compression input are the identical 251 shared
wires, including the coefficient-bearing seed wire.
-/
theorem netBalanceCommitmentY_eq_compressInputY
    (rho : Nat → SemanticF) :
    netBalanceCommitmentY rho =
      {compress}.inputY (Seg{compress_index}.localRho rho) := by
  have hperm :
      ((List.range 149).map (fun offset =>
          Seg{nb_index}.wireSeating (773 + offset * 5)) ++
        (List.range 101).map (fun offset =>
          Seg{nb_index}.wireSeating (1521 + offset * 8))).Perm
        ((List.range 250).map (fun offset =>
          Seg{compress_index}.wireSeating (253 + offset))) := by
    exact
      Deployed.ShieldedIcs20WithdrawalBalanceSeating.compressYPerm
  have hsum := sumAux_pair_eq_of_perm rho
    Seg{nb_index}.wireSeating Seg{compress_index}.wireSeating
    773 5 149 1521 8 101 253 1 250 hperm
  change
    StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          773 5 149 +
        StrideRun.sumAux (Deployed.Templates.seated rho Seg{nb_index}.wireSeating)
          1521 8 101 =
      StrideRun.sumAux (Deployed.Templates.seated rho Seg{compress_index}.wireSeating)
        253 1 250 at hsum
  have hseed :
      Seg{nb_index}.wireSeating 517 = Seg{compress_index}.wireSeating 1 := by
    decide +kernel
  simp only [
    netBalanceCommitmentY_eq_delta,
    {nb}.nbBlindDeltaY250, {compress}.inputY,
    {compress_relation}.relationLc1,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{nb_index}.localRho, Seg{compress_index}.localRho,
    Deployed.Templates.seated, hseed, zero_add, one_mul, add_zero]
  rw [hsum]
  ac_rfl

/-- The compiler-labelled balance field is exactly the compression output. -/
theorem balanceCommitmentFq_eq_compressOutput
    (rho : Nat → SemanticF) :
    balanceCommitmentFq rho =
      {compress}.templateRho (Seg{compress_index}.localRho rho) 912 -
        {compress}.templateRho (Seg{compress_index}.localRho rho) 572 := by
  have hplus :
      Seg{compress_index}.wireSeating 1204 =
        {balance.compressed_plus_wire} := by
    decide +kernel
  have hminus :
      Seg{compress_index}.wireSeating 864 =
        {balance.compressed_minus_wire} := by
    decide +kernel
  have hneg : ({MODULUS_MINUS_ONE} : SemanticF) = -1 := by
    decide +kernel
  simp only [
    balanceCommitmentFq, balanceCommitmentFqLC,
    {compress}.templateRho,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    StrideRun.eval, Seg{compress_index}.localRho, Deployed.Templates.seated,
    zero_add, one_mul, add_zero,
    if_pos (by decide +kernel : 231 ≤ 912 ∧ 912 ≤ 912),
    if_pos (by decide +kernel : 231 ≤ 572 ∧ 572 ≤ 912),
    hplus, hminus, hneg]
  ring

{registry_fragment}
end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def render_withdrawal_semantic_seams(
    ir: dict, constraint_manifest: dict
) -> tuple[str, dict[str, str]]:
    """Render bounded Withdrawal seam modules and their import-only wrapper."""

    balance = _validate_withdrawal_conservation_seams(
        ir, constraint_manifest
    )
    registry_segments = _validate_withdrawal_registry_seams(
        ir, constraint_manifest
    )
    monolith = _render_withdrawal_semantic_seams_monolith(
        ir, constraint_manifest
    )
    namespace = (
        "Shieldd.GnarkFormal.Deployed.Contracts."
        "ShieldedIcs20Withdrawal"
    )
    namespace_marker = f"namespace {namespace}\n"
    end_marker = f"\nend {namespace}\n"
    balance_marker = (
        "/-- Exact x-coordinate emitted by the deployed net-balance "
        "accumulator. -/"
    )
    path_marker = (
        "/-- Asset path reshaped from the compiler's flat 48-lane "
        "binding. -/"
    )
    balance_facts_marker = (
        "/-- Typed whole-circuit facts expose the exact conservation "
        "segment fact. -/"
    )
    balance_coordinates_marker = (
        "/-- The compiler-labelled x-coordinate is exactly the "
        "net-balance output. -/"
    )
    balance_compression_marker = (
        "/-- The compiler-labelled balance field is exactly the "
        "compression output. -/"
    )
    balance_computed_y_marker = (
        "/-- The compiler-labelled y-coordinate is exactly the "
        "net-balance output. -/"
    )
    balance_compress_x_marker = (
        "/--\nThe net-balance x output and compression input are the "
        "identical 251 shared"
    )
    balance_compress_y_marker = (
        "/--\nThe net-balance y output and compression input are the "
        "identical 251 shared"
    )
    gap_marker = "theorem isRegulated_eq_booleanInput"
    try:
        _, namespace_source = monolith.split(namespace_marker, 1)
        namespace_source, _ = namespace_source.rsplit(end_marker, 1)
        setup, declarations = namespace_source.split(balance_marker, 1)
        balance_tail, registry_tail = declarations.split(path_marker, 1)
        path_tail, gap_tail = registry_tail.split(gap_marker, 1)
    except ValueError as error:
        raise ValueError(
            "Withdrawal semantic seam split markers drifted"
        ) from error

    balance_body = balance_marker + balance_tail
    path_body = path_marker + path_tail
    gap_body = gap_marker + gap_tail
    try:
        balance_inputs_body, balance_remainder = balance_body.split(
            balance_facts_marker, 1
        )
        balance_facts_tail, balance_remainder = balance_remainder.split(
            balance_coordinates_marker, 1
        )
        balance_coordinates_tail, balance_compression_tail = (
            balance_remainder.split(balance_compression_marker, 1)
        )
    except ValueError as error:
        raise ValueError(
            "Withdrawal balance seam split markers drifted"
        ) from error
    balance_facts_body = balance_facts_marker + balance_facts_tail
    balance_coordinates_body = (
        balance_coordinates_marker + balance_coordinates_tail
    )
    balance_compression_body = (
        balance_compression_marker + balance_compression_tail
    )
    try:
        balance_computed_x_body, coordinate_remainder = (
            balance_coordinates_body.split(balance_computed_y_marker, 1)
        )
        balance_computed_y_tail, coordinate_remainder = (
            coordinate_remainder.split(balance_compress_x_marker, 1)
        )
        balance_compress_x_tail, balance_compress_y_tail = (
            coordinate_remainder.split(balance_compress_y_marker, 1)
        )
    except ValueError as error:
        raise ValueError(
            "Withdrawal balance coordinate split markers drifted"
        ) from error
    balance_computed_y_body = (
        balance_computed_y_marker + balance_computed_y_tail
    )
    balance_compress_x_body = (
        balance_compress_x_marker + balance_compress_x_tail
    )
    balance_compress_y_body = (
        balance_compress_y_marker + balance_compress_y_tail
    )
    foundation_imports = (
        "import ShielddGnarkFormal.ChoiceFreeZMod\n"
        "import ShielddGnarkFormal.Deployed.PrimeOrder\n"
    )
    semantic_imports = (
        "import ShielddGnarkFormal.Deployed.Contracts."
        "ShieldedIcs20Withdrawal.SemanticBindings\n"
        "import ShielddGnarkFormal.Protocol."
        "ShieldedIcs20Withdrawal.Concrete\n"
    )
    circuit_facts_import = (
        "import ShielddGnarkFormal.Deployed.Contracts."
        "ShieldedIcs20Withdrawal.CircuitFacts\n"
    )
    tactic_imports = (
        "import Mathlib.Tactic.FinCases\n"
        "import Mathlib.Tactic.LinearCombination\n"
        "import Lean.Elab.Tactic.Omega\n"
        "import Mathlib.Tactic.Ring\n"
    )

    def imports_for_segments(segments: tuple[dict, ...]) -> str:
        segment_imports = [
            "import ShielddGnarkFormal.Deployed.Contracts."
            f"ShieldedIcs20Withdrawal.Seg{segment['index']}"
            for segment in segments
        ]
        provider_imports = [
            f"import {_withdrawal_semantic_import(segment)}"
            for segment in segments
        ]
        return "\n".join(dict.fromkeys(
            [*segment_imports, *provider_imports]
        ))

    def module_source(
        imports: str, title: str, body: str, instance_suffix: str
    ) -> str:
        module_setup = setup.replace(
            "choiceFreeWithdrawalSeamCommRing",
            f"choiceFreeWithdrawalSeamCommRing{instance_suffix}",
        ).replace(
            "withdrawalSeamPrime",
            f"withdrawalSeamPrime{instance_suffix}",
        )
        return f"""{imports}
{tactic_imports}
set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! {title}
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace {namespace}
{module_setup}{body}
end {namespace}
"""

    path_segments = tuple(
        registry_segments[label]
        for label in ("asset_path", "asset_root", "compliance_path")
    )
    gap_segments = tuple(
        registry_segments[label]
        for label in ("boolean", "asset_nonzero", "asset_gap", "gap_accept")
    )
    balance_inputs_imports = (
        foundation_imports
        + semantic_imports
        + imports_for_segments((balance.net_balance,))
    )
    balance_facts_imports = (
        foundation_imports
        + circuit_facts_import
        + "import ShielddGnarkFormal.Deployed.Contracts."
        "ShieldedIcs20Withdrawal.SemanticBalanceInputs\n"
    )
    balance_compression_imports = (
        foundation_imports
        + semantic_imports
        + imports_for_segments((balance.compressor,))
    )
    balance_coordinates_imports = (
        foundation_imports
        + semantic_imports
        + "import ShielddGnarkFormal.Deployed.Contracts."
        "ShieldedIcs20Withdrawal.SemanticBalanceInputs\n"
        "import ShielddGnarkFormal.Deployed.Contracts."
        "ShieldedIcs20Withdrawal.SemanticBalanceCompression\n"
        "import ShielddGnarkFormal.Deployed."
        "ShieldedIcs20WithdrawalBalanceSeating"
    )
    path_imports = (
        foundation_imports
        + semantic_imports
        + circuit_facts_import
        + imports_for_segments(path_segments)
        + "\nimport ShielddGnarkFormal.QuadPathProtocolBridge"
    )
    gap_imports = (
        foundation_imports
        + semantic_imports
        + circuit_facts_import
        + imports_for_segments(gap_segments)
        + "\nimport ShielddGnarkFormal.ImtGapBridge"
    )
    parts = {
        "SemanticBalanceInputs.lean": module_source(
            balance_inputs_imports,
            "Exact conservation inputs and the net-balance specification.",
            balance_inputs_body,
            "BalanceInputs",
        ),
        "SemanticBalanceFacts.lean": module_source(
            balance_facts_imports,
            "Typed whole-circuit adapter for exact conservation.",
            balance_facts_body,
            "BalanceFacts",
        ),
        "SemanticBalanceCompression.lean": module_source(
            balance_compression_imports,
            "Exact balance-compression output seam.",
            balance_compression_body,
            "BalanceCompression",
        ),
        "SemanticBalanceComputedX.lean": module_source(
            balance_coordinates_imports,
            "Exact net-balance computed x-coordinate seam.",
            balance_computed_x_body,
            "BalanceComputedX",
        ),
        "SemanticBalanceComputedY.lean": module_source(
            balance_coordinates_imports,
            "Exact net-balance computed y-coordinate seam.",
            balance_computed_y_body,
            "BalanceComputedY",
        ),
        "SemanticBalanceCompressX.lean": module_source(
            balance_coordinates_imports,
            "Exact net-balance to compression x-input seam.",
            balance_compress_x_body,
            "BalanceCompressX",
        ),
        "SemanticBalanceCompressY.lean": module_source(
            balance_coordinates_imports,
            "Exact net-balance to compression y-input seam.",
            balance_compress_y_body,
            "BalanceCompressY",
        ),
        "SemanticRegistryPathSeams.lean": module_source(
            path_imports,
            "Exact asset and compliance registry-path shared-wire seams.",
            path_body,
            "RegistryPath",
        ),
        "SemanticRegistryGapSeams.lean": module_source(
            gap_imports,
            "Exact asset-registry Boolean, nonzero, and gap seams.",
            gap_body,
            "RegistryGap",
        ),
        "SemanticBalanceSeams.lean": f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceInputs
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceFacts
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceCompression
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceComputedX
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceComputedY
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceCompressX
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceCompressY

/-! Bounded exact conservation and balance-compression seams.
GENERATED by {GENERATOR} — do not edit by hand. -/
""",
    }
    wrapper = f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticBalanceSeams
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticRegistryPathSeams
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticRegistryGapSeams

/-! Bounded exact shared-wire seams for Withdrawal.
GENERATED by {GENERATOR} — do not edit by hand. -/
"""
    return wrapper, parts


def render_withdrawal_refinement_seams(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render all finite exact adapters consumed by the Withdrawal capstone."""

    plan = _validate_withdrawal_refinement_plan(
        ir, constraint_manifest
    )
    dtk_segment = plan.segments["sender_dtk"]
    transmission_segment = plan.segments[
        "sender_transmission_compress"
    ]
    leaf_segment = plan.segments["asset_leaf"]
    compliance_segment = plan.segments["sender_compliance_leaf"]
    compliance_assert_segment = plan.segments[
        "sender_compliance_assert"
    ]
    nullifier_assert_segment = plan.segments[
        "required_nullifier_assert"
    ]
    synthetic_segment = plan.segments[
        "optional_synthetic_nullifier"
    ]
    balance_segment = plan.segments[
        "conservation_balance_compress"
    ]
    dtk_index = dtk_segment["index"]
    transmission_index = transmission_segment["index"]
    leaf_index = leaf_segment["index"]
    compliance_index = compliance_segment["index"]
    compliance_assert_index = compliance_assert_segment["index"]
    nullifier_assert_index = nullifier_assert_segment["index"]
    synthetic_index = synthetic_segment["index"]
    balance_index = balance_segment["index"]
    dtk = core.template_name(dtk_segment["proof_template_id"])
    transmission = core.template_name(
        transmission_segment["proof_template_id"]
    )
    leaf_hash = core.template_name(
        leaf_segment["proof_template_id"]
    )
    compliance = core.template_name(
        compliance_segment["proof_template_id"]
    )
    compliance_assert = core.template_name(
        compliance_assert_segment["proof_template_id"]
    )
    nullifier_assert = core.template_name(
        nullifier_assert_segment["proof_template_id"]
    )
    synthetic = core.template_name(
        synthetic_segment["proof_template_id"]
    )
    balance_compress = core.template_name(
        balance_segment["proof_template_id"]
    )
    dtk_support = f"Deployed.Templates.Semantics.{dtk}.DtkSupport"
    transmission_sem = f"Deployed.Templates.Semantics.{transmission}"
    leaf_sem = f"Deployed.Templates.Semantics.{leaf_hash}"
    compliance_sem = f"Deployed.Templates.Semantics.{compliance}"
    compliance_assert_sem = (
        f"Deployed.Templates.Semantics.{compliance_assert}"
    )
    nullifier_assert_sem = (
        f"Deployed.Templates.Semantics.{nullifier_assert}"
    )
    synthetic_sem = f"Deployed.Templates.Semantics.{synthetic}"
    balance_sem = f"Deployed.Templates.Semantics.{balance_compress}"
    bindings = plan.bindings

    dtk_seats = [
        (1, _binding_wire_vector(bindings, "auth.ak", 2)[0]),
        (3, _binding_wire_vector(bindings, "auth.ak", 2)[1]),
        (706, _single_binding_wire(bindings, "auth.nk")),
        (977, _single_binding_wire(bindings, "auth.ivk_reduced")),
        (978, _single_binding_wire(bindings, "auth.ivk_quotient_a")),
        (2211, _binding_wire_vector(bindings, "sender.div_gen", 2)[0]),
        (2212, _binding_wire_vector(bindings, "sender.div_gen", 2)[1]),
    ]
    required_nullifier_wires = _expression_term_wires(
        _binding_expression(
            bindings, "spend0.nullifier.real", 1
        )[0],
        "spend0.nullifier.real",
    )
    required_nullifier_seats = [
        (1, _single_binding_wire(
            bindings, "spend0.nullifier.claimed"
        )),
        *zip(
            range(2, 2 + len(required_nullifier_wires)),
            required_nullifier_wires,
            strict=True,
        ),
    ]
    synthetic_output_wires = _expression_term_wires(
        _binding_expression(
            bindings, "spend1.nullifier.synthetic", 1
        )[0],
        "spend1.nullifier.synthetic",
    )
    synthetic_output_locals = (292, 297, 302, 307)
    if len(synthetic_output_wires) != len(synthetic_output_locals):
        raise ValueError(
            "Withdrawal synthetic-nullifier output geometry drifted"
        )
    synthetic_seats = [
        (1, _single_binding_wire(
            bindings, "spend1.dummy_nullifier_seed"
        )),
        (7, _single_binding_wire(
            bindings, "spend1.auth_randomizer"
        )),
        *zip(
            synthetic_output_locals,
            synthetic_output_wires,
            strict=True,
        ),
    ]
    asset_params_wires = _expression_term_wires(
        _binding_expression(
            bindings, "asset.leaf.params_hash", 1
        )[0],
        "asset.leaf.params_hash",
    )
    asset_ring_wires = _expression_term_wires(
        _binding_expression(
            bindings, "asset.leaf.ring_hash", 1
        )[0],
        "asset.leaf.ring_hash",
    )
    asset_output_wires = _expression_term_wires(
        _binding_expression(
            bindings, "asset.leaf.commitment", 1
        )[0],
        "asset.leaf.commitment",
    )
    asset_ring_start = 25 + len(asset_params_wires) - 1
    asset_output_start = (
        370 + len(asset_params_wires) - 1
        + len(asset_ring_wires) - 1
    )
    asset_output_locals = tuple(
        asset_output_start + 5 * index
        for index in range(len(asset_output_wires))
    )
    if (
        len(asset_params_wires) != 1
        or len(asset_ring_wires) != 1
        or len(asset_output_wires) != 6
        or asset_output_locals[-1] != 395
    ):
        raise ValueError(
            "Withdrawal opaque-hash asset-leaf geometry drifted"
        )
    asset_seats = [
        (1, _single_binding_wire(bindings, "asset.leaf.value")),
        (7, _single_binding_wire(
            bindings, "asset.leaf.next_index"
        )),
        (13, _single_binding_wire(
            bindings, "asset.leaf.next_value"
        )),
        *zip(
            range(19, 19 + len(asset_params_wires)),
            asset_params_wires,
            strict=True,
        ),
        *zip(
            range(
                asset_ring_start,
                asset_ring_start + len(asset_ring_wires),
            ),
            asset_ring_wires,
            strict=True,
        ),
        *zip(
            asset_output_locals,
            asset_output_wires,
            strict=True,
        ),
    ]
    compliance_output_wires = _expression_term_wires(
        _binding_expression(
            bindings, "sender.leaf_commitment", 1
        )[0],
        "sender.leaf_commitment",
    )
    compliance_output_locals = tuple(
        444 + 5 * index
        for index in range(len(compliance_output_wires))
    )
    if len(compliance_output_wires) != 8:
        raise ValueError(
            "Withdrawal Poseidon7 compliance output is not eight lanes"
        )
    compliance_seats = [
        *zip(
            (1, 2),
            _expression_term_wires(
                _binding_expression(
                    bindings, "sender.div_gen_fq", 1
                )[0],
                "sender.div_gen_fq",
            ),
            strict=True,
        ),
        *zip(
            (8, 9),
            _expression_term_wires(
                _binding_expression(
                    bindings, "sender.transmission_fq", 1
                )[0],
                "sender.transmission_fq",
            ),
            strict=True,
        ),
        (15, _single_binding_wire(bindings, "sender.clue_key")),
        (21, _single_binding_wire(bindings, "outbound.asset_id")),
        (27, _single_binding_wire(bindings, "sender.slot_id")),
        (33, _single_binding_wire(
            bindings, "sender.slot_derivation"
        )),
        (39, _single_binding_wire(bindings, "sender.d")),
        *zip(
            compliance_output_locals,
            compliance_output_wires,
            strict=True,
        ),
    ]
    compliance_root_wires = _expression_term_wires(
        _binding_expression(
            bindings, "sender.compliance_root", 1
        )[0],
        "sender.compliance_root",
    )
    compliance_assert_seats = [
        (1, _single_binding_wire(bindings, "is_regulated")),
        (2, _single_binding_wire(bindings, "compliance_anchor")),
        *zip(
            range(3, 3 + len(compliance_root_wires)),
            compliance_root_wires,
            strict=True,
        ),
    ]
    for segment, seats, label in (
        (dtk_segment, dtk_seats, "Withdrawal DTK"),
        (
            nullifier_assert_segment,
            required_nullifier_seats,
            "Withdrawal required nullifier assertion",
        ),
        (
            synthetic_segment,
            synthetic_seats,
            "Withdrawal synthetic nullifier",
        ),
        (leaf_segment, asset_seats, "Withdrawal asset leaf"),
        (
            compliance_segment,
            compliance_seats,
            "Withdrawal Poseidon7 compliance leaf",
        ),
        (
            compliance_assert_segment,
            compliance_assert_seats,
            "Withdrawal compliance assertion",
        ),
    ):
        _require_seats(segment, dict(seats), label)
    dtk_haves = _seat_haves(dtk_index, dtk_seats, "hw")
    required_nullifier_haves = _seat_haves(
        nullifier_assert_index, required_nullifier_seats, "hw"
    )
    synthetic_haves = _seat_haves(
        synthetic_index, synthetic_seats, "hw"
    )
    asset_haves = _seat_haves(leaf_index, asset_seats, "hw")
    asset_have_names = ", ".join(
        f"hw{local}" for local, _ in asset_seats
    )
    asset_expression = _binding_expression(
        bindings, "asset.leaf.commitment", 1
    )[0]
    asset_output_lc = " +\n        ".join(
        f"({term['coefficient']} : SemanticF) * "
        f"id (α := SemanticF) "
        f"(Seg{leaf_index}.localRho rho {local})"
        for local, term in zip(
            asset_output_locals,
            asset_expression["terms"],
            strict=True,
        )
    )
    compliance_haves = _seat_haves(
        compliance_index, compliance_seats, "hw"
    )
    compliance_have_names = ", ".join(
        f"hw{local}" for local, _ in compliance_seats
    )
    compliance_expression = _binding_expression(
        bindings, "sender.leaf_commitment", 1
    )[0]
    compliance_output_lc = " +\n        ".join(
        f"({term['coefficient']} : SemanticF) * "
        f"id (α := SemanticF) "
        f"(Seg{compliance_index}.localRho rho {local})"
        for local, term in zip(
            compliance_output_locals,
            compliance_expression["terms"],
            strict=True,
        )
    )
    compliance_assert_haves = _seat_haves(
        compliance_assert_index, compliance_assert_seats, "hw"
    )
    provider_imports = "\n".join(
        f"import {module}"
        for module in dict.fromkeys(
            _withdrawal_semantic_import(segment)
            for segment in (
                dtk_segment,
                transmission_segment,
                leaf_segment,
                compliance_segment,
                compliance_assert_segment,
                nullifier_assert_segment,
                synthetic_segment,
                balance_segment,
            )
        )
    )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CoreSemanticSeams
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.CryptoSeams
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SemanticSeams
import ShielddGnarkFormal.Deployed.NoteReshapeRefinement
{provider_imports}
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact semantic projections used by the Withdrawal refinement root.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open Shieldd.GnarkFormal
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeWithdrawalRefinementCommRing : CommRing SemanticF :=
  ZMod.commRing _
local instance withdrawalRefinementPrime : Fact (Nat.Prime SemanticOrder) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

private theorem negOne :
    ({MODULUS_MINUS_ONE} : SemanticF) = -1 := by
  decide +kernel

private theorem semanticOneNeZero : (1 : SemanticF) ≠ 0 := by
  decide +kernel

/-- The exact DTK row and its compressed diversified-generator input. -/
theorem diversifiedTransmissionKey_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.DiversifiedTransmissionKeySpec
      (authNk rho)
      ⟨authAk0 rho, authAk1 rho⟩
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      (authIvkReduced rho) (authIvkQuotientA rho)
      ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩ := by
  have h :=
    facts.exact.DecafDiversifiedTransmissionKeySeg{dtk_index}
  change {dtk_support}.spec
    (Seg{dtk_index}.localRho rho) at h
{dtk_haves}
  have hCurveProtocol :=
    Decaf377Assumptions.onCurve_of_compress
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩ (senderDivGenFq rho)
      (senderDivGenCompressedSpec_of_exact rho facts)
  have hCurve :
      {dtk_support}.onCurveAt
        (Seg{dtk_index}.localRho rho 2211)
        (Seg{dtk_index}.localRho rho 2212) := by
    simpa only [
      {dtk_support}.onCurveAt, EdwardsBridge.onCurve, EdwardsBridge.d,
      senderDivGen0, senderDivGen0LC,
      senderDivGen1, senderDivGen1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{dtk_index}.localRho, Deployed.Templates.seated,
      hw2211, hw2212, zero_add, one_mul, add_zero
    ] using hCurveProtocol
  have hDtk := (h hCurve).1
  rw [
    senderTransmissionComputed0_eq_dtkOutX,
    senderTransmissionComputed1_eq_dtkOutY
  ]
  have hDtkProtocol :
      Protocol.Common.Decaf.diversifiedTransmissionKey
        (authNk rho)
        ⟨authAk0 rho, authAk1 rho⟩
        ⟨senderDivGen0 rho, senderDivGen1 rho⟩
        (authIvkReduced rho) (authIvkQuotientA rho)
        ⟨({dtk_support.replace('.DtkSupport', '.DtkWindowSupport')}.output
              (Seg{dtk_index}.localRho rho)).x,
          ({dtk_support.replace('.DtkSupport', '.DtkWindowSupport')}.output
              (Seg{dtk_index}.localRho rho)).y⟩ := by
    simpa only [
      authNk, authNkLC, authAk0, authAk0LC, authAk1, authAk1LC,
      authIvkReduced, authIvkReducedLC,
      authIvkQuotientA, authIvkQuotientALC,
      senderDivGen0, senderDivGen0LC,
      senderDivGen1, senderDivGen1LC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      Seg{dtk_index}.localRho, Deployed.Templates.seated,
      hw1, hw3, hw706, hw977, hw978, hw2211, hw2212,
      zero_add, one_mul, add_zero
    ] using hDtk
  have hCircuit :=
    NoteReshapeRefinement.circuitSpec_of_diversifiedTransmissionKey
      (authNk rho)
      ⟨authAk0 rho, authAk1 rho⟩
      ⟨senderDivGen0 rho, senderDivGen1 rho⟩
      ⟨({dtk_support.replace('.DtkSupport', '.DtkWindowSupport')}.output
            (Seg{dtk_index}.localRho rho)).x,
        ({dtk_support.replace('.DtkSupport', '.DtkWindowSupport')}.output
            (Seg{dtk_index}.localRho rho)).y⟩
      (authIvkReduced rho) (authIvkQuotientA rho)
      hDtkProtocol
  simpa only [NoteReshapeCanonical.toDecafPoint] using hCircuit

/-- The DTK output is exactly the input and output of its following compressor. -/
theorem transmissionCompressed_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨senderTransmissionComputed0 rho, senderTransmissionComputed1 rho⟩
      (senderTransmissionFq rho) := by
  have h := facts.exact.DecafCompressToFieldSeg{transmission_index}
  change {transmission_sem}.spec
    (Seg{transmission_index}.localRho rho) at h
  unfold {transmission_sem}.spec at h
  unfold Decaf377Assumptions.CompressToFieldSpec
  rw [
    senderTransmissionComputed0_eq_dtkOutX,
    dtkOutX_eq_transmissionCompressInputX,
    senderTransmissionComputed1_eq_dtkOutY,
    dtkOutY_eq_transmissionCompressInputY,
    senderTransmissionFq_eq_compressOutput
  ]
  exact h

/-- The required public nullifier is the exact real-nullifier output. -/
theorem requiredNullifierAsserted_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend0NullifierClaimed rho = spend0NullifierReal rho := by
  have h := facts.exact.AssertEqSeg{nullifier_assert_index}
  change {nullifier_assert_sem}.spec
    (Seg{nullifier_assert_index}.localRho rho) at h
{required_nullifier_haves}
  simp only [
    {nullifier_assert_sem}.spec,
    spend0NullifierClaimed, spend0NullifierClaimedLC,
    spend0NullifierReal, spend0NullifierRealLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg{nullifier_assert_index}.localRho,
    Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5,
    zero_add, one_mul, add_zero
  ] at h ⊢
  ring_nf at h ⊢
  exact h.symm

/-- The optional dummy nullifier is the exact certified Poseidon3 output. -/
theorem syntheticNullifierHash_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    spend1NullifierSynthetic rho =
      Poseidon377.hash3
        Protocol.ShieldedIcs20Withdrawal.Concrete.syntheticDummyNullifierDomain
        (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1 := by
  have h :=
    facts.exact.GadgetSyntheticDummyNullifierSeg{synthetic_index}
  change {synthetic_sem}.spec
    (Seg{synthetic_index}.localRho rho) at h
{synthetic_haves}
  calc
    spend1NullifierSynthetic rho =
        Deployed.Nullifier.s38_1
          (Seg{synthetic_index}.localRho rho 292)
          (Seg{synthetic_index}.localRho rho 297)
          (Seg{synthetic_index}.localRho rho 302)
          (Seg{synthetic_index}.localRho rho 307) := by
      simp only [
        spend1NullifierSynthetic, spend1NullifierSyntheticLC,
        Deployed.Nullifier.s38_1, Deployed.Poseidon3Link.row4,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{synthetic_index}.localRho, Deployed.Templates.seated,
        hw292, hw297, hw302, hw307,
        zero_add, one_mul, add_zero
      ]
      ring
    _ = Poseidon377.hash3
          Protocol.ShieldedIcs20Withdrawal.Concrete.syntheticDummyNullifierDomain
          (spend1DummyNullifierSeed rho) (spend1AuthRandomizer rho) 1 := by
      simpa only [
        {synthetic_sem}.spec,
        {synthetic_sem}.Fixed.syntheticDummyNullifierDomainLit,
        Protocol.ShieldedIcs20Withdrawal.Concrete.syntheticDummyNullifierDomain,
        Poseidon3Bridge.permSpec3,
        spend1DummyNullifierSeed, spend1DummyNullifierSeedLC,
        spend1AuthRandomizer, spend1AuthRandomizerLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{synthetic_index}.localRho, Deployed.Templates.seated,
        hw1, hw7, zero_add, one_mul, add_zero
      ] using h

/-- The exact indexed-asset leaf Poseidon output in compiler-labelled roles. -/
theorem assetLeafHash_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    assetLeafCommitment rho =
      Poseidon5Bridge.permSpec5
        Protocol.ShieldedIcs20Withdrawal.Concrete.assetLeafDomain
        (assetLeafValue rho) (assetLeafNextIndex rho)
        (assetLeafNextValue rho)
        (assetLeafParamsHash rho) (assetLeafRingHash rho) := by
  have h := facts.exact.GadgetAssetRegistryLeafHashSeg{leaf_index}
  change {leaf_sem}.spec (Seg{leaf_index}.localRho rho) at h
{asset_haves}
  unfold {leaf_sem}.spec at h
  calc
    assetLeafCommitment rho =
        {leaf_sem}.output (Seg{leaf_index}.localRho rho) := by
      change
        assetLeafCommitment rho =
          {asset_output_lc}
      simp only [
        assetLeafCommitment, assetLeafCommitmentLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        Seg{leaf_index}.localRho, Deployed.Templates.seated,
        {asset_have_names},
        id_eq, zero_add, one_mul, add_zero
      ]
      ring
    _ = Poseidon5Bridge.permSpec5
          Protocol.ShieldedIcs20Withdrawal.Concrete.assetLeafDomain
          (assetLeafValue rho) (assetLeafNextIndex rho)
          (assetLeafNextValue rho)
          (assetLeafParamsHash rho) (assetLeafRingHash rho) := by
      simpa only [
        Protocol.ShieldedIcs20Withdrawal.Concrete.assetLeafDomain,
        assetLeafValue, assetLeafValueLC,
        assetLeafNextIndex, assetLeafNextIndexLC,
        assetLeafNextValue, assetLeafNextValueLC,
        assetLeafParamsHash, assetLeafParamsHashLC,
        assetLeafRingHash, assetLeafRingHashLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        Seg{leaf_index}.localRho, Deployed.Templates.seated,
        {asset_have_names},
        zero_add, one_mul, add_zero
      ] using h

/-- The exact compliance-leaf Poseidon output in compiler-labelled roles. -/
theorem complianceLeafHash_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    senderLeafCommitment rho =
      Poseidon7Bridge.permSpec7
        Protocol.ShieldedIcs20Withdrawal.Concrete.complianceLeafDomain
        (senderDivGenFq rho) (senderTransmissionFq rho)
        (senderClueKey rho) (outboundAssetId rho) (senderSlotId rho)
        (senderSlotDerivation rho) (senderD rho) := by
  have h := facts.exact.GadgetComplianceLeafSeg{compliance_index}
  change {compliance_sem}.spec
    (Seg{compliance_index}.localRho rho) at h
{compliance_haves}
  unfold {compliance_sem}.spec at h
  calc
    senderLeafCommitment rho =
        {compliance_sem}.output
          (Seg{compliance_index}.localRho rho) := by
      change
        senderLeafCommitment rho =
          {compliance_output_lc}
      simp only [
        senderLeafCommitment, senderLeafCommitmentLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        Seg{compliance_index}.localRho,
        Deployed.Templates.seated,
        {compliance_have_names},
        id_eq, zero_add, one_mul, add_zero
      ]
      ring
    _ = Poseidon7Bridge.permSpec7
          Protocol.ShieldedIcs20Withdrawal.Concrete.complianceLeafDomain
          (senderDivGenFq rho) (senderTransmissionFq rho)
          (senderClueKey rho) (outboundAssetId rho)
          (senderSlotId rho) (senderSlotDerivation rho)
          (senderD rho) := by
      simpa only [
        Protocol.ShieldedIcs20Withdrawal.Concrete.complianceLeafDomain,
        senderDivGenFq, senderDivGenFqLC,
        senderTransmissionFq, senderTransmissionFqLC,
        senderClueKey, senderClueKeyLC,
        outboundAssetId, outboundAssetIdLC,
        senderSlotId, senderSlotIdLC,
        senderSlotDerivation, senderSlotDerivationLC,
        senderD, senderDLC,
        StructuredLC.eval, StructuredLC.sumRuns,
        StructuredLC.sumResidual, StrideRun.eval,
        Seg{compliance_index}.localRho,
        Deployed.Templates.seated,
        {compliance_have_names},
        negOne, zero_add, one_mul, add_zero
      ] using h

/-- Regulation activates the exact compliance-root/public-anchor equality. -/
theorem complianceRootAsserted_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    isRegulated rho = 1 →
      senderComplianceRoot rho = complianceAnchor rho := by
  intro regulated
  have h := facts.exact.AssertEqIfSeg{compliance_assert_index}
  change {compliance_assert_sem}.spec
    (Seg{compliance_assert_index}.localRho rho) at h
{compliance_assert_haves}
  simp only [
    {compliance_assert_sem}.spec,
    {compliance_assert_sem}.guard,
    {compliance_assert_sem}.residual,
    Seg{compliance_assert_index}.localRho,
    Deployed.Templates.seated,
    hw1, hw2, hw3, hw4, hw5, hw6, hw7,
    one_mul
  ] at h
  have regulatedGlobal :
      rho {compliance_assert_seats[0][1]} = 1 := by
    simpa only [
      isRegulated, isRegulatedLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      zero_add, one_mul, add_zero
    ] using regulated
  rcases h with disabled | asserted
  · rw [regulatedGlobal] at disabled
    exact (semanticOneNeZero disabled).elim
  · simp only [
      senderComplianceRoot, senderComplianceRootLC,
      complianceAnchor, complianceAnchorLC,
      StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
      zero_add, one_mul, add_zero
    ]
    linear_combination asserted

/-- The exact net-balance point is exactly the following compression input. -/
theorem balanceCompressed_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    Decaf377Assumptions.CompressToFieldSpec
      ⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩
      (balanceCommitmentFq rho) := by
  have h := facts.exact.DecafCompressToFieldSeg{balance_index}
  change {balance_sem}.spec
    (Seg{balance_index}.localRho rho) at h
  unfold {balance_sem}.spec at h
  unfold Decaf377Assumptions.CompressToFieldSpec
  rw [
    balanceCommitmentComputed0_eq_netBalanceCommitmentX,
    netBalanceCommitmentX_eq_compressInputX,
    balanceCommitmentComputed1_eq_netBalanceCommitmentY,
    netBalanceCommitmentY_eq_compressInputY,
    balanceCommitmentFq_eq_compressOutput
  ]
  exact h

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def render_withdrawal_statement_seams(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the exact three-segment statement sponge and public-input join."""

    plan = _validate_withdrawal_refinement_plan(
        ir, constraint_manifest
    )
    first_segment = plan.segments["statement_block0"]
    second_segment = plan.segments["statement_block1"]
    third_segment = plan.segments["statement_block2"]
    asserted_segment = plan.segments["statement_assert"]
    first_index = first_segment["index"]
    second_index = second_segment["index"]
    third_index = third_segment["index"]
    asserted_index = asserted_segment["index"]
    first = core.template_name(first_segment["proof_template_id"])
    second = core.template_name(second_segment["proof_template_id"])
    third = core.template_name(third_segment["proof_template_id"])
    asserted = core.template_name(asserted_segment["proof_template_id"])
    first_sem = f"Deployed.Templates.Semantics.{first}"
    second_sem = f"Deployed.Templates.Semantics.{second}"
    third_sem = f"Deployed.Templates.Semantics.{third}"
    asserted_sem = f"Deployed.Templates.Semantics.{asserted}"
    bindings = plan.bindings
    first_state = _binding_lc_wires(
        bindings, "statement.hash.block0", STATEMENT_STATE_COEFFICIENTS
    )
    second_state = _binding_lc_wires(
        bindings, "statement.hash.block1", STATEMENT_STATE_COEFFICIENTS
    )
    third_state = _binding_lc_wires(
        bindings, "statement.hash.block2", STATEMENT_STATE_COEFFICIENTS
    )
    first_field_locals = (
        (1,),
        (7,),
        (13, 14),
        (20,),
        (26, 27),
        (33,),
        (39, 40),
    )
    first_input_seats = []
    for field, locals_ in enumerate(first_field_locals):
        wires = _expression_term_wires(
            _binding_expression(
                bindings, f"statement.field.{field:03d}", 1
            )[0],
            f"statement.field.{field:03d}",
        )
        if len(wires) != len(locals_):
            raise ValueError(
                "Withdrawal statement block0 input LC geometry drifted"
            )
        first_input_seats.extend(zip(locals_, wires, strict=True))
    later_field_locals = (14, 20, 26, 32, 38, 44)
    second_field_wires = tuple(
        _single_binding_wire(
            bindings, f"statement.field.{field:03d}"
        )
        for field in range(7, 13)
    )
    third_field_wires = tuple(
        _single_binding_wire(
            bindings, f"statement.field.{field:03d}"
        )
        for field in range(13, 16)
    )
    claimed_wire = _single_binding_wire(
        bindings, "claimed.statement_hash"
    )
    first_output_haves = _seat_haves(
        first_index,
        list(
            zip(
                (445, 450, 455, 460, 465, 470, 475, 480),
                first_state,
                strict=True,
            )
        ),
        "hw",
    )
    second_input_haves = _seat_haves(
        second_index,
        list(zip(range(1, 9), first_state, strict=True)),
        "hi",
    )
    second_output_haves = _seat_haves(
        second_index,
        list(
            zip(
                (449, 454, 459, 464, 469, 474, 479, 484),
                second_state,
                strict=True,
            )
        ),
        "hw",
    )
    third_input_haves = _seat_haves(
        third_index,
        list(zip(range(1, 9), second_state, strict=True)),
        "hi",
    )
    third_output_haves = _seat_haves(
        third_index,
        list(
            zip(
                (431, 436, 441, 446, 451, 456, 461, 466),
                third_state,
                strict=True,
            )
        ),
        "hw",
    )
    first_input_haves = _seat_haves(
        first_index, first_input_seats, "hi"
    )
    second_field_haves = _seat_haves(
        second_index,
        list(zip(later_field_locals, second_field_wires, strict=True)),
        "hf",
    )
    third_field_haves = _seat_haves(
        third_index,
        list(zip((14, 20, 26), third_field_wires, strict=True)),
        "hf",
    )
    asserted_haves = _seat_haves(
        asserted_index,
        [
            *zip(range(1, 9), third_state, strict=True),
            (9, claimed_wire),
        ],
        "ha",
    )
    _require_seats(
        first_segment,
        {
            **dict(first_input_seats),
            **dict(zip(
                (445, 450, 455, 460, 465, 470, 475, 480),
                first_state,
                strict=True,
            )),
        },
        "Withdrawal statement block0",
    )
    _require_seats(
        second_segment,
        {
            **dict(zip(range(1, 9), first_state, strict=True)),
            **dict(zip(
                later_field_locals, second_field_wires, strict=True
            )),
            **dict(zip(
                (449, 454, 459, 464, 469, 474, 479, 484),
                second_state,
                strict=True,
            )),
        },
        "Withdrawal statement block1",
    )
    _require_seats(
        third_segment,
        {
            **dict(zip(range(1, 9), second_state, strict=True)),
            **dict(zip(
                (14, 20, 26), third_field_wires, strict=True
            )),
            **dict(zip(
                (431, 436, 441, 446, 451, 456, 461, 466),
                third_state,
                strict=True,
            )),
        },
        "Withdrawal statement block2",
    )
    _require_seats(
        asserted_segment,
        {
            **dict(zip(range(1, 9), third_state, strict=True)),
            9: claimed_wire,
        },
        "Withdrawal statement assertion",
    )
    provider_imports = "\n".join(
        f"import {module}"
        for module in dict.fromkeys(
            _withdrawal_semantic_import(segment)
            for segment in (
                first_segment,
                second_segment,
                third_segment,
                asserted_segment,
            )
        )
    )
    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.RefinementSeams
import ShielddGnarkFormal.Poseidon7Bridge
{provider_imports}
import Mathlib.Tactic.Ring

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Exact three-block statement sponge and public-input join for Withdrawal.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open Shieldd.GnarkFormal
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
local instance choiceFreeWithdrawalStatementCommRing : CommRing SemanticF :=
  ZMod.commRing _

private theorem negOne :
    ({MODULUS_MINUS_ONE} : SemanticF) = -1 := by
  decide +kernel

private theorem firstDomain :
    {first_sem}.Trace.domainLit =
      Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain := by
  decide +kernel

private theorem secondDomain :
    {second_sem}.Trace.domainLit =
      Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain := by
  decide +kernel

private theorem thirdDomain :
    {third_sem}.Trace.domainLit =
      Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain := by
  decide +kernel

private theorem thirdPad0 :
    ({WITHDRAWAL_STATEMENT_PAD0} : SemanticF) =
      Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0 := by
  decide +kernel

private theorem thirdPad1 :
    ({WITHDRAWAL_STATEMENT_PAD1} : SemanticF) =
      Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1 := by
  decide +kernel

/-- The first exact statement segment absorbs fields zero through six. -/
theorem statementBlock0_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    statementHashBlock0 rho =
      Poseidon7Bridge.permSpec7
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
        (anchor rho) (output0NoteCommitmentClaimed rho)
        (balanceCommitmentFq rho)
        (spend0NullifierClaimed rho) (spend0RkCompressed rho)
        (spend1NullifierClaimed rho) (spend1RkCompressed rho) := by
  have h := facts.exact.StatementHashSeg{first_index}
  change {first_sem}.spec (Seg{first_index}.localRho rho) at h
  unfold {first_sem}.spec at h
{first_output_haves}
{first_input_haves}
  calc
    statementHashBlock0 rho =
        ({first_sem}.Trace.rawState0_38
          (Seg{first_index}.localRho rho))[1] := by
      simp [
        statementHashBlock0, statementHashBlock0LC,
        {first_sem}.Trace.rawState0_38,
        {first_sem}.Trace.flatState0_38Lane1,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{first_index}.localRho, Deployed.Templates.seated,
        hw445, hw450, hw455, hw460, hw465, hw470, hw475, hw480
      ]
      ring
    _ = {first_sem}.Trace.hash0
          (Seg{first_index}.localRho rho) := h
    _ = Poseidon7Bridge.permSpec7
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
          (anchor rho) (output0NoteCommitmentClaimed rho)
          (balanceCommitmentFq rho)
          (spend0NullifierClaimed rho) (spend0RkCompressed rho)
          (spend1NullifierClaimed rho) (spend1RkCompressed rho) := by
      unfold {first_sem}.Trace.hash0
      rw [firstDomain]
      simp only [
        anchor, anchorLC,
        output0NoteCommitmentClaimed, output0NoteCommitmentClaimedLC,
        balanceCommitmentFq, balanceCommitmentFqLC,
        spend0NullifierClaimed, spend0NullifierClaimedLC,
        spend0RkCompressed, spend0RkCompressedLC,
        spend1NullifierClaimed, spend1NullifierClaimedLC,
        spend1RkCompressed, spend1RkCompressedLC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{first_index}.localRho, Deployed.Templates.seated,
        hi1, hi7, hi13, hi14, hi20, hi26, hi27, hi33, hi39, hi40,
        negOne, zero_add, one_mul, add_zero
      ]

/-- The second exact statement segment chains block zero and fields 7–12. -/
theorem statementBlock1_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    statementHashBlock1 rho =
      Poseidon7Bridge.permSpec7
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
        (statementHashBlock0 rho)
        (assetAnchor rho) (complianceAnchor rho) (targetTimestamp rho)
        (outboundAssetId rho) (outboundAmount rho)
        (withdrawalEffectHashLimbs0 rho) := by
  have h := facts.exact.StatementHashSeg{second_index}
  change {second_sem}.spec (Seg{second_index}.localRho rho) at h
  unfold {second_sem}.spec at h
{second_output_haves}
{second_input_haves}
{second_field_haves}
  calc
    statementHashBlock1 rho =
        ({second_sem}.Trace.rawState0_38
          (Seg{second_index}.localRho rho))[1] := by
      simp [
        statementHashBlock1, statementHashBlock1LC,
        {second_sem}.Trace.rawState0_38,
        {second_sem}.Trace.flatState0_38Lane1,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{second_index}.localRho, Deployed.Templates.seated,
        hw449, hw454, hw459, hw464, hw469, hw474, hw479, hw484
      ]
      ring
    _ = {second_sem}.Trace.hash0
          (Seg{second_index}.localRho rho) := h
    _ = Poseidon7Bridge.permSpec7
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
          (statementHashBlock0 rho)
          (assetAnchor rho) (complianceAnchor rho) (targetTimestamp rho)
          (outboundAssetId rho) (outboundAmount rho)
          (withdrawalEffectHashLimbs0 rho) := by
      unfold {second_sem}.Trace.hash0
      rw [secondDomain]
      simp only [
        statementHashBlock0, statementHashBlock0LC,
        assetAnchor, assetAnchorLC,
        complianceAnchor, complianceAnchorLC,
        targetTimestamp, targetTimestampLC,
        outboundAssetId, outboundAssetIdLC,
        outboundAmount, outboundAmountLC,
        withdrawalEffectHashLimbs0, withdrawalEffectHashLimbs0LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{second_index}.localRho, Deployed.Templates.seated,
        hi1, hi2, hi3, hi4, hi5, hi6, hi7, hi8,
        hf14, hf20, hf26, hf32, hf38, hf44,
        zero_add, one_mul, add_zero
      ]
      congr 1 <;> ring

/-- The third exact segment chains block one, fields 13–15, and fixed padding. -/
theorem statementBlock2_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    statementHashBlock2 rho =
      Poseidon7Bridge.permSpec7
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
        (statementHashBlock1 rho)
        (withdrawalEffectHashLimbs1 rho)
        (withdrawalEffectHashLimbs2 rho)
        (withdrawalEffectHashLimbs3 rho)
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1 := by
  have h := facts.exact.StatementHashSeg{third_index}
  change {third_sem}.spec (Seg{third_index}.localRho rho) at h
  unfold {third_sem}.spec at h
{third_output_haves}
{third_input_haves}
{third_field_haves}
  calc
    statementHashBlock2 rho =
        ({third_sem}.Trace.rawState0_38
          (Seg{third_index}.localRho rho))[1] := by
      simp [
        statementHashBlock2, statementHashBlock2LC,
        {third_sem}.Trace.rawState0_38,
        {third_sem}.Trace.flatState0_38Lane1,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{third_index}.localRho, Deployed.Templates.seated,
        hw431, hw436, hw441, hw446, hw451, hw456, hw461, hw466
      ]
      ring
    _ = {third_sem}.Trace.hash0
          (Seg{third_index}.localRho rho) := h
    _ = Poseidon7Bridge.permSpec7
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
          (statementHashBlock1 rho)
          (withdrawalEffectHashLimbs1 rho)
          (withdrawalEffectHashLimbs2 rho)
          (withdrawalEffectHashLimbs3 rho)
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1 := by
      unfold {third_sem}.Trace.hash0
      simp only [thirdDomain, thirdPad0, thirdPad1]
      simp only [
        statementHashBlock1, statementHashBlock1LC,
        withdrawalEffectHashLimbs1, withdrawalEffectHashLimbs1LC,
        withdrawalEffectHashLimbs2, withdrawalEffectHashLimbs2LC,
        withdrawalEffectHashLimbs3, withdrawalEffectHashLimbs3LC,
        StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
        Seg{third_index}.localRho, Deployed.Templates.seated,
        hi1, hi2, hi3, hi4, hi5, hi6, hi7, hi8,
        hf14, hf20, hf26,
        zero_add, one_mul, add_zero
      ]
      congr 1 <;> ring

/-- The final exact assertion binds the last state LC to the sole public input. -/
theorem statementPublicHash_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    claimedStatementHash rho = statementHash rho := by
  have h := facts.exact.AssertEqSeg{asserted_index}
  change {asserted_sem}.spec
    (Seg{asserted_index}.localRho rho) at h
{asserted_haves}
  simp [
    {asserted_sem}.spec,
    claimedStatementHash, claimedStatementHashLC,
    statementHash, statementHashLC,
    StructuredLC.eval, StructuredLC.sumRuns, StructuredLC.sumResidual,
    Seg{asserted_index}.localRho, Deployed.Templates.seated,
    ha1, ha2, ha3, ha4, ha5, ha6, ha7, ha8, ha9
  ] at h ⊢
  ring_nf at h ⊢
  exact h

/-- The exact three-block transcript is the independent protocol statement. -/
theorem statementHash_of_exact
    (rho : Nat → SemanticF)
    (facts : ShieldedIcs20WithdrawalCircuitFacts rho) :
    claimedStatementHash rho =
      Protocol.Common.statementHash
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
        [anchor rho,
         output0NoteCommitmentClaimed rho,
         balanceCommitmentFq rho,
         spend0NullifierClaimed rho,
         spend0RkCompressed rho,
         spend1NullifierClaimed rho,
         spend1RkCompressed rho,
         assetAnchor rho,
         complianceAnchor rho,
         targetTimestamp rho,
         outboundAssetId rho,
         outboundAmount rho,
         Deployed.ShieldedIcs20WithdrawalRefinement.C.withdrawalEffectHashLimb rho 0,
         Deployed.ShieldedIcs20WithdrawalRefinement.C.withdrawalEffectHashLimb rho 1,
         Deployed.ShieldedIcs20WithdrawalRefinement.C.withdrawalEffectHashLimb rho 2,
         Deployed.ShieldedIcs20WithdrawalRefinement.C.withdrawalEffectHashLimb rho 3] := by
  simp [
    Deployed.ShieldedIcs20WithdrawalRefinement.C.withdrawalEffectHashLimb,
    withdrawalEffectHashLimbsAt, withdrawalEffectHashLimbsVector
  ]
  calc
    claimedStatementHash rho = statementHash rho :=
      statementPublicHash_of_exact rho facts
    _ = statementHashBlock2 rho := by rfl
    _ = Poseidon7Bridge.permSpec7
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
          (statementHashBlock1 rho)
          (withdrawalEffectHashLimbs1 rho)
          (withdrawalEffectHashLimbs2 rho)
          (withdrawalEffectHashLimbs3 rho)
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1 :=
      statementBlock2_of_exact rho facts
    _ = Poseidon7Bridge.permSpec7
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
          (Poseidon7Bridge.permSpec7
            Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
            (statementHashBlock0 rho)
            (assetAnchor rho) (complianceAnchor rho) (targetTimestamp rho)
            (outboundAssetId rho) (outboundAmount rho)
            (withdrawalEffectHashLimbs0 rho))
          (withdrawalEffectHashLimbs1 rho)
          (withdrawalEffectHashLimbs2 rho)
          (withdrawalEffectHashLimbs3 rho)
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1 := by
      rw [statementBlock1_of_exact rho facts]
    _ = Protocol.Common.statementHash
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
          Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
          [anchor rho,
           output0NoteCommitmentClaimed rho,
           balanceCommitmentFq rho,
           spend0NullifierClaimed rho,
           spend0RkCompressed rho,
           spend1NullifierClaimed rho,
           spend1RkCompressed rho,
           assetAnchor rho,
           complianceAnchor rho,
           targetTimestamp rho,
           outboundAssetId rho,
           outboundAmount rho,
           withdrawalEffectHashLimbs0 rho,
           withdrawalEffectHashLimbs1 rho,
           withdrawalEffectHashLimbs2 rho,
           withdrawalEffectHashLimbs3 rho] := by
      rw [statementBlock0_of_exact rho facts]
      rfl

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def render_withdrawal_specification_consequences(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render exact, predicate-specific Withdrawal consequences."""

    _validate_withdrawal_refinement_plan(ir, constraint_manifest)
    _validate_non_identity_seams(ir, constraint_manifest)
    theorems: dict[str, str] = {}

    def add(predicate: str, conclusion: str, proof: str) -> None:
        if predicate in theorems:
            raise ValueError(
                "duplicate Withdrawal specification consequence: "
                f"{predicate}"
            )
        theorems[predicate] = _render_specification_theorem(
            predicate, conclusion, proof
        )

    add(
        "ASSET-ID-NONZERO",
        "(action rho).withdrawal.outboundAssetId ≠ 0",
        "  exact (relationAssetRegistry rho h).1",
    )
    add(
        "ASSET-REGULATED-BOOLEAN",
        "Protocol.Common.boolean (action rho).assetProof.isRegulated",
        "  exact (relationAssetRegistry rho h).2.1",
    )
    asset_membership = """Protocol.Common.quadMember
      (action rho).assetAnchor
      (Protocol.ShieldedIcs20Withdrawal.Concrete.assetLeafHash
        (action rho).assetProof.leaf)
      (action rho).assetProof.path (action rho).assetProof.position"""
    add(
        "ASSET-LEAF-HASH",
        asset_membership,
        "  exact (relationAssetRegistry rho h).2.2.1",
    )
    add(
        "ASSET-REGISTRY-MEMBERSHIP",
        asset_membership,
        "  exact (relationAssetRegistry rho h).2.2.1",
    )
    add(
        "ASSET-REGISTRY-GAP-ORDERING",
        """Protocol.ShieldedIcs20Withdrawal.Concrete.registryGap
      (action rho).withdrawal.outboundAssetId
      (action rho).assetProof.isRegulated
      (action rho).assetProof.leaf.value
      (action rho).assetProof.leaf.nextValue""",
        "  exact (relationAssetRegistry rho h).2.2.2",
    )
    add(
        "CIR-SELECTOR-BOOLEAN",
        "spend1IsDummy rho = 0 ∨ spend1IsDummy rho = 1",
        """  exact
    Deployed.ShieldedIcs20WithdrawalSemanticTranslator.C.spend1IsDummyBoolean
      rho (exactFactsOfRelation rho h)""",
    )
    add(
        "CIR-SHAPE-FIXED",
        """(Protocol.ShieldedIcs20Withdrawal.Concrete.statementFields
      (action rho)).length = 16""",
        """  exact
    Protocol.ShieldedIcs20Withdrawal.Concrete.statementFields_length
      (action rho)""",
    )
    add(
        "DEC-DIVERSIFIED-GENERATOR-ENCODING",
        """Protocol.Common.Decaf.compressesTo
      (action rho).sender.diversifiedGenerator
      (action rho).sender.diversifiedGeneratorEncoding""",
        "  exact (relationCanonicalSender rho h).1.2.1.1.2.1",
    )
    add(
        "DEC-INCOMING-VIEWING-KEY-NONZERO",
        """Protocol.Common.Decaf.incomingViewingKeyNonzero
      (action rho).authorization.ivkReduced""",
        "  exact (relationCanonicalSender rho h).2",
    )
    add(
        "DEC-TRANSMISSION-KEY-ENCODING",
        """Protocol.Common.Decaf.compressesTo
      (action rho).sender.transmission
      (action rho).sender.transmissionEncoding""",
        "  exact (relationCanonicalSender rho h).1.2.1.1.2.2",
    )
    add(
        "DEC-TRANSMISSION-KEY-DERIVATION",
        """Protocol.Common.Decaf.diversifiedTransmissionKey
      (action rho).authorization.nullifierKey
      (action rho).authorization.authorizationKey
      (action rho).sender.diversifiedGenerator
      (action rho).authorization.ivkReduced
      (action rho).authorization.ivkQuotientA
      (action rho).sender.transmission""",
        "  exact (relationCanonicalSender rho h).1.2.2",
    )
    add(
        "DEC-TRANSMISSION-KEY-NONIDENTITY",
        """Protocol.Common.Decaf.transmissionKeyNonIdentity
      (action rho).sender.transmission""",
        "  exact (relationCanonicalSender rho h).1.2.1.2",
    )
    add(
        "DUMMY-AMOUNT-ZERO",
        """∀ spend,
      (action rho).optional = .dummy spend → spend.amount = 0""",
        """  intro spend selected
  have fact := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at fact
  rw [selected] at fact
  exact fact.1""",
    )
    withdrawal_dummy_nullifier = """∀ spend,
      (action rho).optional = .dummy spend →
      spend.nullifier =
        Poseidon377.hash3
          Protocol.ShieldedIcs20Withdrawal.Concrete.syntheticDummyNullifierDomain
          spend.nullifierSeed spend.authRandomizer 1"""
    withdrawal_dummy_nullifier_proof = """  intro spend selected
  have fact := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at fact
  rw [selected] at fact
  exact fact.2.2.2"""
    add(
        "DUMMY-NULLIFIER-DOMAIN-BINDING",
        withdrawal_dummy_nullifier,
        withdrawal_dummy_nullifier_proof,
    )
    add(
        "DUMMY-SLOT-POSITION-BINDING",
        withdrawal_dummy_nullifier,
        withdrawal_dummy_nullifier_proof,
    )
    add(
        "FIELD-AUTH-RANDOMIZER-RANGE",
        """(action rho).required.authRandomizer.val < 2 ^ 251 ∧
      (∀ spend,
        (action rho).optional = .real spend →
          spend.authRandomizer.val < 2 ^ 251) ∧
      (∀ spend,
        (action rho).optional = .dummy spend →
          spend.authRandomizer.val < 2 ^ 251)""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, requiredBound, _, _, _, _, _⟩
  refine ⟨requiredBound, ?_, ?_⟩
  intro spend
  intro selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.1
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.1""",
    )
    add(
        "DEC-SPEND-RK-ENCODING",
        """Protocol.Common.Decaf.compressesTo
        (action rho).required.randomizedVerificationKey
        (action rho).required.randomizedVerificationKeyEncoding ∧
      (∀ spend,
        (action rho).optional = .real spend →
          Protocol.Common.Decaf.compressesTo
            spend.randomizedVerificationKey
            spend.randomizedVerificationKeyEncoding) ∧
      (∀ spend,
        (action rho).optional = .dummy spend →
          Protocol.Common.Decaf.compressesTo
            spend.randomizedVerificationKey
            spend.randomizedVerificationKeyEncoding)""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, _, _, _, _, requiredCompressed, _⟩
  refine ⟨requiredCompressed, ?_, ?_⟩
  intro spend
  intro selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.2.2.2.1
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.1""",
    )
    add(
        "DEC-SPEND-RK-DERIVATION",
        """(∃ computed,
        Protocol.Common.Decaf.randomizedVerificationKey
          (action rho).authorization.authorizationKey
          (action rho).required.authRandomizer computed ∧
        Protocol.Common.Decaf.equivalent computed
          (action rho).required.randomizedVerificationKey) ∧
      ∀ spend,
        (action rho).optional = .real spend →
          ∃ computed,
            Protocol.Common.Decaf.randomizedVerificationKey
              (action rho).authorization.authorizationKey
              spend.authRandomizer computed ∧
            Protocol.Common.Decaf.equivalent computed
              spend.randomizedVerificationKey""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, _, _, _, _, _, requiredRk⟩
  refine ⟨requiredRk, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.2.2.2.2""",
    )
    add(
        "NOTE-OUTPUT-ASSET-BINDING",
        """(action rho).change.assetId =
      (action rho).withdrawal.outboundAssetId""",
        "  exact (relationChangeOutput rho h).2.1",
    )
    add(
        "NOTE-OUTPUT-CLUE-KEY-BINDING",
        """(action rho).change.commitment =
      Protocol.Common.noteCommitmentHash
        (action rho).change.blinding (action rho).change.amount
        (action rho).change.assetId
        (action rho).change.owner.diversifiedGeneratorEncoding
        (action rho).change.owner.transmissionEncoding
        (action rho).change.owner.clueKey""",
        "  exact (relationChangeOutput rho h).2.2",
    )
    add(
        "NOTE-OUTPUT-COMMITMENT",
        """Protocol.ShieldedIcs20Withdrawal.Concrete.noteCommitment
      (action rho).change""",
        "  exact (relationChangeOutput rho h).2.2",
    )
    add(
        "NOTE-OUTPUT-OWNER-BINDING",
        """(action rho).change.owner = (action rho).sender ∧
      Protocol.ShieldedIcs20Withdrawal.Concrete.noteCommitment
        (action rho).change""",
        """  exact
    ⟨(relationChangeOutput rho h).1,
      (relationChangeOutput rho h).2.2⟩""",
    )
    add(
        "NOTE-SPEND-ASSET-BINDING",
        """(action rho).required.note.assetId =
        (action rho).withdrawal.outboundAssetId ∧
      ∀ spend,
        (action rho).optional = .real spend →
          spend.note.assetId =
            (action rho).withdrawal.outboundAssetId""",
        """  refine ⟨(relationRequiredSpend rho h).2.1, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.1""",
    )
    spend_commitment = """Protocol.ShieldedIcs20Withdrawal.Concrete.noteCommitment
        (action rho).required.note ∧
      ∀ spend,
        (action rho).optional = .real spend →
          Protocol.ShieldedIcs20Withdrawal.Concrete.noteCommitment
            spend.note"""
    spend_commitment_proof = """  rcases relationRequiredSpend rho h with
    ⟨_, _, _, requiredCommitment, _, _, _, _⟩
  refine ⟨requiredCommitment, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.1"""
    add(
        "NOTE-SPEND-CLUE-KEY-BINDING",
        spend_commitment,
        spend_commitment_proof,
    )
    add(
        "NOTE-SPEND-COMMITMENT",
        spend_commitment,
        spend_commitment_proof,
    )
    add(
        "NOTE-SPEND-OWNER-BINDING",
        """(action rho).required.note.owner = (action rho).sender ∧
      ∀ spend,
        (action rho).optional = .real spend →
          spend.note.owner = (action rho).sender""",
        """  refine ⟨(relationRequiredSpend rho h).1, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.1""",
    )
    add(
        "NOTE-SPEND-NULLIFIER-DERIVATION",
        """(action rho).required.nullifier =
        Protocol.Common.nullifier
          (action rho).authorization.nullifierKey
          (action rho).required.note.commitment
          (action rho).required.position ∧
      ∀ spend,
        (action rho).optional = .real spend →
          spend.nullifier =
            Protocol.Common.nullifier
              (action rho).authorization.nullifierKey
              spend.note.commitment spend.position""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, _, _, _, requiredNullifier, _, _⟩
  refine ⟨requiredNullifier, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.2.2.1""",
    )
    add(
        "SCT-SPEND-MEMBERSHIP",
        """Protocol.Common.stateMember (action rho).anchor
        (action rho).required.note.commitment
        (action rho).required.position (action rho).required.path ∧
      ∀ spend,
        (action rho).optional = .real spend →
          Protocol.Common.stateMember (action rho).anchor
            spend.note.commitment spend.position spend.path""",
        """  rcases relationRequiredSpend rho h with
    ⟨_, _, _, _, requiredMember, _, _, _⟩
  refine ⟨requiredMember, ?_⟩
  intro spend selected
  have optional := relationOptionalSpend rho h
  unfold Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend at optional
  rw [selected] at optional
  exact optional.2.2.2.2.1""",
    )
    add(
        "FIELD-BALANCE-BLINDING-RANGE",
        "(action rho).balanceBlinding.val < 2 ^ 251",
        "  exact (relationConservation rho h).2.2.2.2.1",
    )
    add(
        "VALUE-AMOUNT-128-RANGE",
        """Protocol.Common.amount128 (action rho).required.note.amount ∧
      Protocol.Common.amount128 (action rho).optional.amount ∧
      Protocol.Common.amount128 (action rho).change.amount ∧
      Protocol.Common.amount128
        (action rho).withdrawal.outboundAmount""",
        """  have fact := relationConservation rho h
  exact ⟨fact.1, fact.2.1, fact.2.2.1, fact.2.2.2.1⟩""",
    )
    add(
        "DEC-BALANCE-COMMITMENT-DERIVATION",
        """∃ balanceCommitment,
      balanceCommitment =
        Protocol.Common.Decaf.scalarMulLE 251
          Protocol.Common.Decaf.valueBlindingGenerator
          (action rho).balanceBlinding ∧
      Protocol.Common.Decaf.compressesTo
        balanceCommitment (action rho).balanceCommitmentEncoding""",
        """  refine
    ⟨Protocol.Common.Decaf.scalarMulLE 251
      Protocol.Common.Decaf.valueBlindingGenerator
      (action rho).balanceBlinding, rfl, ?_⟩
  exact (relationConservation rho h).2.2.2.2.2.2""",
    )
    add(
        "DEC-BALANCE-COMMITMENT-ENCODING",
        """Protocol.Common.Decaf.compressesTo
      (Protocol.Common.Decaf.scalarMulLE 251
        Protocol.Common.Decaf.valueBlindingGenerator
        (action rho).balanceBlinding)
      (action rho).balanceCommitmentEncoding""",
        "  exact (relationConservation rho h).2.2.2.2.2.2",
    )
    add(
        "FIELD-USER-POSITION-RANGE",
        "(action rho).senderCompliance.position.val < 2 ^ 32",
        "  exact (relationSenderCompliance rho h).1",
    )
    compliance_hash = """Protocol.ShieldedIcs20Withdrawal.Concrete.complianceLeafHash
        (action rho) =
      Poseidon377.hash7
        Protocol.ShieldedIcs20Withdrawal.Concrete.complianceLeafDomain
        (action rho).sender.diversifiedGeneratorEncoding
        (action rho).sender.transmissionEncoding
        (action rho).sender.clueKey
        (action rho).withdrawal.outboundAssetId
        (action rho).senderCompliance.slotId
        (action rho).senderCompliance.slotDerivation
        (action rho).senderCompliance.d"""
    for predicate in (
        "USER-COMPLIANCE-LEAF-HASH",
        "USER-LEAF-ADDRESS-BINDING",
        "USER-LEAF-ASSET-BINDING",
        "USER-LEAF-POLICY-SLOT-BINDING",
    ):
        add(predicate, compliance_hash, "  rfl")
    add(
        "USER-COMPLIANCE-MEMBERSHIP-GATE",
        """(action rho).assetProof.isRegulated = 1 →
      Protocol.Common.quadRoot
        (Protocol.ShieldedIcs20Withdrawal.Concrete.complianceLeafHash
          (action rho))
        (action rho).senderCompliance.path
        (action rho).senderCompliance.position =
          (action rho).complianceAnchor""",
        "  exact (relationSenderCompliance rho h).2",
    )
    add(
        "WITHDRAWAL-INTENT-FIELD-BINDING",
        """(action rho).publicStatementHash =
      Protocol.Common.statementHash
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementDomain
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad0
        Protocol.ShieldedIcs20Withdrawal.Concrete.statementPad1
        [(action rho).anchor,
         (action rho).change.commitment,
         (action rho).balanceCommitmentEncoding,
         (action rho).required.nullifier,
         (action rho).required.randomizedVerificationKeyEncoding,
         (action rho).optional.nullifier,
         (action rho).optional.rkEncoding,
         (action rho).assetAnchor,
         (action rho).complianceAnchor,
         (action rho).targetTimestamp,
         (action rho).withdrawal.outboundAssetId,
         (action rho).withdrawal.outboundAmount,
         (action rho).withdrawal.effectHashLimbs 0,
         (action rho).withdrawal.effectHashLimbs 1,
         (action rho).withdrawal.effectHashLimbs 2,
         (action rho).withdrawal.effectHashLimbs 3]""",
        """  exact relationStatementBinding rho h""",
    )
    _validate_specification_theorems(
        theorems, WITHDRAWAL_SPECIFICATION_PREDICATES
    )
    declarations = "\n".join(
        theorems[predicate]
        for predicate in WITHDRAWAL_SPECIFICATION_PREDICATES
    )
    return f"""import ShielddGnarkFormal.ChoiceFreeZMod
import ShielddGnarkFormal.Deployed.ShieldedIcs20WithdrawalSemanticTranslator
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.StatementSeams
import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.NonIdentitySeams

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Predicate-specific shielded ICS-20 Withdrawal consequences.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open Shieldd.GnarkFormal
open Protocol
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

attribute [-instance] ZMod.instField
private local instance choiceFreeWithdrawalSpecificationCommRing :
    CommRing SemanticF :=
  ZMod.commRing _

private abbrev action (rho : Nat → SemanticF) :=
  Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho

private def exactFactsOfRelation
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
    ShieldedIcs20WithdrawalCircuitFacts rho :=
  shielded_ics20_withdrawal_circuitFacts rho h

/-- Exact relation to the complete handwritten Withdrawal circuit facts. -/
theorem circuitFacts_of_relationAll
    (rho : Nat → SemanticF)
    (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.CircuitFacts
      Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      (action rho) := by
  let facts := exactFactsOfRelation rho h
  have conservation := conservationSpec_of_circuitFacts rho facts
  rcases conservation with
    ⟨requiredAmountBound, optionalAmountBound, changeAmountBound,
      outboundAmountBound, balanceBlindingBound, amountsConserved,
      netBalancePoint⟩
  have balancePoint :
      (⟨balanceCommitmentComputed0 rho, balanceCommitmentComputed1 rho⟩ :
          Decaf377Assumptions.Point) =
        Decaf377Assumptions.scalarMulLE 251
          Decaf377Assumptions.valueBlindingGenerator
          (actionBalanceBlinding rho) := by
    rw [
      balanceCommitmentComputed0_eq_netBalanceCommitmentX,
      balanceCommitmentComputed1_eq_netBalanceCommitmentY
    ]
    exact netBalancePoint
  have compliancePath := compliancePath_of_exact rho facts
  exact
    Deployed.ShieldedIcs20WithdrawalSemanticTranslator.C.semanticCircuitFacts_of_exactSeams
      rho facts
      (authAkNonIdentity_of_exact rho facts)
      (senderDivGenNonIdentity_of_exact rho facts)
      (authIvkReducedNonzero_of_exact rho facts)
      (senderTransmissionComputedNonIdentity_of_exact rho facts)
      (diversifiedTransmissionKey_of_exact rho facts)
      (transmissionCompressed_of_exact rho facts)
      (requiredNullifierAsserted_of_exact rho facts)
      (syntheticNullifierHash_of_exact rho facts)
      (assetLeafHash_of_exact rho facts)
      (outboundAssetIdNonzero_of_exact rho facts)
      (isRegulatedBoolean_of_exact rho facts)
      (assetMember_of_exact rho facts)
      (assetGap_of_exact rho facts)
      (complianceLeafHash_of_exact rho facts)
      compliancePath.1 compliancePath.2
      (complianceRootAsserted_of_exact rho facts)
      requiredAmountBound optionalAmountBound
      changeAmountBound outboundAmountBound balanceBlindingBound
      amountsConserved balancePoint
      (balanceCompressed_of_exact rho facts)
      (statementHash_of_exact rho facts)

private theorem relationCanonicalSender
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.canonicalSender
      (action rho) :=
  (circuitFacts_of_relationAll rho h).canonicalSender

private theorem relationRequiredSpend
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.requiredSpend
      (action rho) :=
  (circuitFacts_of_relationAll rho h).requiredSpend

private theorem relationOptionalSpend
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.optionalSpend
      (action rho) :=
  (circuitFacts_of_relationAll rho h).optionalSpend

private theorem relationChangeOutput
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.changeOutput
      (action rho) :=
  (circuitFacts_of_relationAll rho h).changeOutput

private theorem relationAssetRegistry
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.assetRegistry
      (action rho) :=
  (circuitFacts_of_relationAll rho h).assetRegistry

private theorem relationSenderCompliance
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.senderCompliance
      (action rho) :=
  (circuitFacts_of_relationAll rho h).senderCompliance

private theorem relationConservation
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.conservation
      (action rho) :=
  (circuitFacts_of_relationAll rho h).conservation

private theorem relationStatementBinding
    (rho : Nat → SemanticF) (h : relationAll rho) :
    Protocol.ShieldedIcs20Withdrawal.Concrete.statementBinding
      (action rho) :=
  (circuitFacts_of_relationAll rho h).statementBinding

{declarations}
end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def render_withdrawal_refinement_root(
    ir: dict, constraint_manifest: dict
) -> str:
    """Render the exact-relation to Withdrawal consensus capstone."""

    _validate_withdrawal_refinement_plan(ir, constraint_manifest)
    return f"""import ShielddGnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal.SpecificationConsequences

set_option maxRecDepth 1000000
set_option maxHeartbeats 8000000

/-! Closed exact-relation refinement root for Withdrawal.
GENERATED by {GENERATOR} — do not edit by hand. -/

namespace Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal

open Shieldd.GnarkFormal
open Protocol

/--
The final theorem exposes only the exact relation and genuine external facts;
there are no caller-supplied circuit-semantic seam premises.
-/
theorem consensusAccepted_of_relationAll
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (checks :
      Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (before :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (delta :
      Protocol.ShieldedIcs20Withdrawal.ActionDelta SemanticF)
    (after :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (payload :
      Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload SemanticF)
    (external :
      Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks
        (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
        payload before delta after) :
    Protocol.ShieldedIcs20Withdrawal.ConsensusAccepted
      Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      checks before delta after
      (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
      payload :=
  Protocol.ShieldedIcs20Withdrawal.consensusAccepted_of_circuitFacts
    Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
    checks before delta after
    (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
    payload
    (circuitFacts_of_relationAll rho h)
    external

theorem transactionAccepted_of_relationAll
    (checks :
      Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        SemanticF Protocol.Common.Path24 Protocol.Common.Path16)
    (otherStep :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF →
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF → Prop)
    (transactionBefore actionBefore :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (delta :
      Protocol.ShieldedIcs20Withdrawal.ActionDelta SemanticF)
    (actionAfter transactionAfter :
      Protocol.ShieldedIcs20Withdrawal.ConsensusState SemanticF)
    (payload :
      Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload SemanticF)
    (rho : Nat → SemanticF)
    (h : relationAll rho)
    (external :
      Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks
        (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
        payload actionBefore delta actionAfter)
    (committed :
      Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Protocol.ShieldedIcs20Withdrawal.actionNullifiers
          (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho))
        (Protocol.ShieldedIcs20Withdrawal.actionOutputCommitments
          (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho))
        otherStep
        (Protocol.ShieldedIcs20Withdrawal.TargetStep
          (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
          payload delta)
        transactionBefore actionBefore actionAfter transactionAfter)
    (withdrawalEffects :
      Protocol.ShieldedIcs20Withdrawal.CommittedWithdrawalEffects
        transactionBefore actionBefore transactionAfter
        (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
        payload) :
    Protocol.ShieldedIcs20Withdrawal.TransactionAccepted
      Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      checks otherStep transactionBefore actionBefore delta
      actionAfter transactionAfter
      (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
      payload :=
  Protocol.ShieldedIcs20Withdrawal.transactionAccepted_of_circuitFacts
    Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
    checks otherStep transactionBefore actionBefore delta
    actionAfter transactionAfter
    (Deployed.ShieldedIcs20WithdrawalRefinement.C.action rho)
    payload
    (circuitFacts_of_relationAll rho h)
    external committed withdrawalEffects

end Shieldd.GnarkFormal.Deployed.Contracts.ShieldedIcs20Withdrawal
"""


def owned_files(
    ir: dict,
    constraint_manifest: dict,
    out_dir: Path,
    manifest_out: Path | None,
    previous: dict,
    canonical_out: Path | None = None,
) -> dict[Path, str]:
    files = {
        out_dir / "Bounds.lean": render_bounds(ir),
        out_dir / "Capstone.lean": render_capstone(ir),
        out_dir / "CircuitFacts.lean": render_circuit_facts(ir),
        out_dir / "RoleBindings.lean": render_role_bindings(
            ir, constraint_manifest
        ),
        out_dir / "SemanticBindings.lean": render_semantic_bindings(
            ir, constraint_manifest
        ),
    }
    if any(
        segment.get("op") == "assert.decaf_non_identity"
        for segment in core.constraint_segments(ir)
    ):
        files[out_dir / "NonIdentitySeams.lean"] = (
            render_non_identity_seams(ir, constraint_manifest)
        )
    if ir["circuit"] == "transfer":
        files[out_dir / "RefinementAction.lean"] = (
            render_transfer_refinement_action(ir, constraint_manifest)
        )
        files[out_dir / "RefinementSeams.lean"] = (
            render_transfer_refinement_seams(ir, constraint_manifest)
        )
        files[out_dir / "RefinementAdapters.lean"] = (
            render_transfer_refinement_adapters(ir, constraint_manifest)
        )
        files.update(
            (out_dir / filename, source)
            for filename, source in
            render_transfer_action_seam_modules(
                ir, constraint_manifest
            ).items()
        )
        files[out_dir / "TranscriptSeams.lean"] = (
            render_transfer_transcript_seams(ir, constraint_manifest)
        )
        files[out_dir / "SpecificationConsequences.lean"] = (
            render_transfer_specification_consequences(
                ir, constraint_manifest
            )
        )
        crypto_wrapper, crypto_parts, seating_files = (
            render_transfer_crypto_seams(ir, constraint_manifest)
        )
        files[out_dir / "CryptoSeams.lean"] = crypto_wrapper
        files.update(
            (out_dir / filename, source)
            for filename, source in crypto_parts.items()
        )
        files.update(seating_files)
        files[out_dir / "RefinementRoot.lean"] = (
            render_transfer_refinement_root(ir, constraint_manifest)
        )
        if canonical_out is not None:
            files[canonical_out] = render_transfer_canonical_refinement(
                ir, constraint_manifest
            )
    if ir["circuit"] == "shielded_ics20_withdrawal":
        files[out_dir / "RefinementAction.lean"] = (
            render_withdrawal_refinement_action(ir, constraint_manifest)
        )
        files[out_dir / "ExactProviders.lean"] = (
            render_withdrawal_exact_providers(ir, constraint_manifest)
        )
        files[out_dir / "CoreSemanticSeams.lean"] = (
            render_withdrawal_core_semantic_seams(
                ir, constraint_manifest
            )
        )
        semantic_wrapper, semantic_parts = (
            render_withdrawal_semantic_seams(ir, constraint_manifest)
        )
        files[out_dir / "SemanticSeams.lean"] = semantic_wrapper
        files.update(
            (out_dir / filename, source)
            for filename, source in semantic_parts.items()
        )
        crypto_wrapper, crypto_parts, seating_files = (
            render_withdrawal_crypto_seams(ir, constraint_manifest)
        )
        files[out_dir / "CryptoSeams.lean"] = crypto_wrapper
        files.update(
            (out_dir / filename, source)
            for filename, source in crypto_parts.items()
        )
        files.update(seating_files)
        files.update(
            render_withdrawal_balance_seating(ir, constraint_manifest)
        )
        files[out_dir / "RefinementSeams.lean"] = (
            render_withdrawal_refinement_seams(ir, constraint_manifest)
        )
        files[out_dir / "StatementSeams.lean"] = (
            render_withdrawal_statement_seams(ir, constraint_manifest)
        )
        files[out_dir / "SpecificationConsequences.lean"] = (
            render_withdrawal_specification_consequences(
                ir, constraint_manifest
            )
        )
        files[out_dir / "RefinementRoot.lean"] = (
            render_withdrawal_refinement_root(ir, constraint_manifest)
        )
        if canonical_out is not None:
            files[canonical_out] = (
                render_withdrawal_canonical_refinement(
                    ir, constraint_manifest
                )
            )
    if manifest_out is not None:
        files[manifest_out] = (
            json.dumps(core.render_manifest(ir, previous), indent=2) + "\n"
        )
    return files


def obsolete_files(
    ir: dict, out_dir: Path, owned: set[Path]
) -> list[Path]:
    owned_with_segments = set(owned)
    owned_with_segments.update(
        out_dir / f"Seg{segment['index']}.lean"
        for segment in core.constraint_segments(ir)
    )
    return sorted(set(out_dir.rglob("*.lean")) - owned_with_segments)


def generate(
    *,
    ir_path: Path,
    manifest_path: Path,
    constraint_manifest_path: Path,
    out_dir: Path,
    manifest_out: Path | None,
    check: bool,
    prune: bool,
    canonical_out: Path | None = None,
) -> None:
    ir = load(ir_path)
    previous = load(manifest_path)
    constraint_manifest = load(constraint_manifest_path)
    validate_inputs(ir, previous, constraint_manifest)
    core.check_semantic_providers(ir)
    if (
        canonical_out is None
        and out_dir.parent.name == "Contracts"
    ):
        canonical_names = {
            "transfer": "TransferRefinement.lean",
            "shielded_ics20_withdrawal":
                "ShieldedIcs20WithdrawalRefinement.lean",
        }
        canonical_out = (
            out_dir.parent.parent / canonical_names[ir["circuit"]]
        )
    files = owned_files(
        ir,
        constraint_manifest,
        out_dir,
        manifest_out,
        previous,
        canonical_out,
    )
    obsolete = obsolete_files(ir, out_dir, set(files)) if prune else []
    if check:
        for path, contents in files.items():
            if not path.is_file() or path.read_text() != contents:
                raise SystemExit(f"stale generated family artifact: {path}")
        if obsolete:
            raise SystemExit(
                "obsolete family-local generated files:\n"
                + "\n".join(map(str, obsolete))
            )
        return

    for path, contents in files.items():
        write_if_changed(path, contents)
    if prune:
        for path in obsolete:
            path.unlink()
        for directory in sorted(
            (path for path in out_dir.rglob("*") if path.is_dir()),
            reverse=True,
        ):
            if not any(directory.iterdir()):
                directory.rmdir()
    print(
        f"wrote {core.camel(ir['circuit'])} family proof artifacts "
        f"({len(files)})"
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--ir", type=Path, required=True)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--constraint-manifest", type=Path, required=True)
    parser.add_argument("--out-dir", type=Path, required=True)
    parser.add_argument("--manifest-out", type=Path)
    parser.add_argument(
        "--canonical-out",
        type=Path,
        help=(
            "canonical family refinement output; inferred for a "
            "repository Contracts/<Family> directory"
        ),
    )
    parser.add_argument("--check", action="store_true")
    parser.add_argument(
        "--prune",
        action="store_true",
        help="delete obsolete family-local Lean files not owned by this generator",
    )
    args = parser.parse_args()
    generate(
        ir_path=args.ir,
        manifest_path=args.manifest,
        constraint_manifest_path=args.constraint_manifest,
        out_dir=args.out_dir,
        manifest_out=args.manifest_out,
        check=args.check,
        prune=args.prune,
        canonical_out=args.canonical_out,
    )


if __name__ == "__main__":
    main()
