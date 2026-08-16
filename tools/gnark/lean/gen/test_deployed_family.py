from __future__ import annotations

import copy
import inspect
import json
import re
import tempfile
import unittest
from collections import Counter
from pathlib import Path
from unittest import mock

import gen_deployed_family as deployed
import gen_note_reshape_family as core


class DeployedFamilyTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls) -> None:
        cls.root = Path(__file__).resolve().parents[4]
        formal = cls.root / "crates/core/component/shielded-pool/formal"
        cls.base_ir = json.loads(
            (formal / "note_reshape1x8-deployed-slice-ir.json").read_text()
        )
        cls.base_previous = json.loads(
            (formal / "note_reshape1x8-coverage-manifest.json").read_text()
        )
        cls.base_constraint_manifest = json.loads(
            (
                cls.root
                / "tools/gnark/artifacts/note_reshape1x8/"
                "note_reshape1x8-manifest.json"
            ).read_text()
        )

    def fixture(self, circuit: str) -> tuple[dict, dict, dict]:
        shapes = {
            "transfer": (2, 2),
            "shielded_ics20_withdrawal": (2, 1),
        }
        n_in, n_out = shapes[circuit]
        ir = copy.deepcopy(self.base_ir)
        previous = copy.deepcopy(self.base_previous)
        constraint_manifest = copy.deepcopy(self.base_constraint_manifest)
        ir["circuit"] = circuit
        previous["circuit"] = circuit
        constraint_manifest["circuit"] = circuit
        constraint_manifest["shape"] = {"n_in": n_in, "n_out": n_out}
        return ir, previous, constraint_manifest

    @staticmethod
    def declaration_names(source: str) -> set[str]:
        """Collect generated declaration names with their lexical namespace."""

        namespaces: list[str] = []
        declarations: set[str] = set()
        for line in source.splitlines():
            stripped = line.strip()
            match = re.fullmatch(
                r"namespace ([A-Za-z0-9_'.]+)", stripped
            )
            if match is not None:
                namespaces.append(match.group(1))
                continue
            if re.fullmatch(r"end(?: [A-Za-z0-9_'.]+)?", stripped):
                if namespaces:
                    namespaces.pop()
                continue
            match = re.match(
                r"(?:private )?"
                r"(?:def|abbrev|inductive|structure|theorem) "
                r"([A-Za-z0-9_']+)",
                stripped,
            )
            if match is not None and not stripped.startswith("private "):
                declarations.add(".".join([*namespaces, match.group(1)]))
        return declarations

    def withdrawal_plan_fixture(self) -> tuple[dict, dict]:
        """Synthetic current extraction with shifted wires and trace indices."""

        source = json.loads(
            (
                self.root
                / "tools/gnark/artifacts/shielded_ics20_withdrawal/"
                "shielded_ics20_withdrawal-manifest.json"
            ).read_text()
        )
        wire_shift = 200_000
        bindings = []
        for source_binding in source["semantic_bindings"]:
            if source_binding["name"] not in (
                deployed.WITHDRAWAL_BINDING_ARITIES
            ):
                continue
            binding = copy.deepcopy(source_binding)
            for expression in binding["expressions"]:
                for term in expression["terms"]:
                    term["wire_id"] += wire_shift
            bindings.append(binding)
        by_name = {binding["name"]: binding for binding in bindings}

        next_wire = max(
            term["wire_id"]
            for binding in bindings
            for expression in binding["expressions"]
            for term in expression["terms"]
        ) + 1
        for name in ("asset.leaf.params_hash", "asset.leaf.ring_hash"):
            by_name[name]["expressions"] = [
                deployed._single_wire_expression(next_wire)
            ]
            next_wire += 1
        segments = []
        trace_segments = []
        for ordinal, spec in enumerate(
            deployed.WITHDRAWAL_TRACE_SPECS, start=1
        ):
            index = 500 + 3 * ordinal
            key = spec.key
            if key is None:
                digest = (
                    "a" * 64
                    if spec.op == "gadget.asset_registry_leaf_hash"
                    else "c" * 64
                )
                key = f"{spec.op}@{digest}"
            inputs, outputs, flexible = (
                deployed._withdrawal_trace_role_support(spec, by_name)
            )
            inputs.update(flexible)
            seating = [0] * spec.local_wire_count
            internal = []
            if spec.label == "sender_transmission_non_identity":
                expression = by_name[
                    "sender.transmission.computed"
                ]["expressions"][0]
                value_wires = [
                    term["wire_id"] for term in expression["terms"]
                ]
                self.assertEqual(inputs, set(value_wires))
                self.assertEqual(len(value_wires), 2)
                seating[1] = next_wire
                seating[2:] = value_wires
                internal.append(next_wire)
                next_wire += 1
            elif spec.op in {
                "assert.decaf_non_identity",
                "assert.ne",
            }:
                self.assertEqual(len(inputs), 1)
                seating[1] = next(iter(inputs))
                seating[2] = next_wire
                internal.append(next_wire)
                next_wire += 1
            else:
                role_wires = sorted(inputs | outputs)
                self.assertLess(len(role_wires), spec.local_wire_count)
                seating[1:1 + len(role_wires)] = role_wires
            if spec.label in {
                "required_state_path",
                "optional_state_path",
            }:
                slot = (
                    "spend0"
                    if spec.label == "required_state_path"
                    else "spend1"
                )
                path_wires = deployed._binding_wire_vector(
                    by_name, f"{slot}.state_proof.path", 72
                )
                for local, source_index in zip(
                    deployed.STATE_PATH_PROVIDER_LOCALS,
                    deployed.STATE_PATH_LEVEL_REVERSAL,
                    strict=True,
                ):
                    current = seating.index(path_wires[source_index])
                    seating[local], seating[current] = (
                        seating[current], seating[local]
                    )
            segment = {
                "index": index,
                "op": spec.op,
                "proof_template_id": key,
                "deployed_normalized_relation_sha256_hex": (
                    spec.deployed_relation_digest
                    or key.rsplit("@", 1)[-1]
                ),
                "constraint_count": spec.constraint_count,
                "wire_roles": {
                    "input": sorted(inputs),
                    "output": sorted(outputs),
                    "internal": internal,
                },
                "template_equivalence_witness": {
                    "proof_template_id": key,
                    "canonical_local_to_deployed_wire_seating": seating,
                },
            }
            segments.append(segment)
            trace_segments.extend([
                {
                    "index": index - 1,
                    "op": "test.marker",
                    "args": [f"before={spec.label}"],
                    "kind": "marker",
                    "constraint_count": 0,
                },
                {
                    "index": index,
                    "op": spec.op,
                    "args": list(spec.args),
                    "kind": spec.kind,
                    "constraint_count": spec.constraint_count,
                },
            ])
        manifest = {
            "circuit": "shielded_ics20_withdrawal",
            "nb_public_variables": next_wire + 1,
            "nb_secret_variables": 0,
            "nb_internal_variables": 0,
            "semantic_bindings": bindings,
            "segments": trace_segments,
        }
        return {
            "circuit": "shielded_ics20_withdrawal",
            "segments": segments,
        }, manifest

    def seat_current_withdrawal_adapters(
        self, ir: dict, manifest: dict
    ) -> deployed.WithdrawalRefinementPlan:
        """Seat the synthetic current providers at audited semantic locals."""

        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)
        bindings = plan.bindings

        def wire(name: str) -> int:
            return deployed._single_binding_wire(bindings, name)

        def terms(name: str) -> tuple[int, ...]:
            return deployed._expression_term_wires(
                deployed._binding_expression(bindings, name, 1)[0],
                name,
            )

        def seat(label: str, pairs: list[tuple[int, int]]) -> None:
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, deployed_wire in pairs:
                if seating[local] == deployed_wire:
                    continue
                try:
                    current = seating.index(deployed_wire)
                except ValueError as error:
                    raise AssertionError(
                        f"{label} does not contain wire {deployed_wire}"
                    ) from error
                seating[local], seating[current] = (
                    seating[current],
                    seating[local],
                )

        auth_ak = deployed._binding_wire_vector(bindings, "auth.ak", 2)
        div_gen = deployed._binding_wire_vector(
            bindings, "sender.div_gen", 2
        )
        seat(
            "sender_dtk",
            [
                (1, auth_ak[0]),
                (3, auth_ak[1]),
                (706, wire("auth.nk")),
                (977, wire("auth.ivk_reduced")),
                (978, wire("auth.ivk_quotient_a")),
                (2211, div_gen[0]),
                (2212, div_gen[1]),
            ],
        )
        seat(
            "required_nullifier_assert",
            [
                (1, wire("spend0.nullifier.claimed")),
                *zip(
                    range(2, 6),
                    terms("spend0.nullifier.real"),
                    strict=True,
                ),
            ],
        )
        seat(
            "optional_synthetic_nullifier",
            [
                (1, wire("spend1.dummy_nullifier_seed")),
                (7, wire("spend1.auth_randomizer")),
                *zip(
                    (292, 297, 302, 307),
                    terms("spend1.nullifier.synthetic"),
                    strict=True,
                ),
            ],
        )
        seat(
            "asset_leaf",
            [
                (1, wire("asset.leaf.value")),
                (7, wire("asset.leaf.next_index")),
                (13, wire("asset.leaf.next_value")),
                (19, wire("asset.leaf.params_hash")),
                (25, wire("asset.leaf.ring_hash")),
                *zip(
                    (370, 375, 380, 385, 390, 395),
                    terms("asset.leaf.commitment"),
                    strict=True,
                ),
            ],
        )
        seat(
            "sender_compliance_leaf",
            [
                *zip(
                    (1, 2),
                    terms("sender.div_gen_fq"),
                    strict=True,
                ),
                *zip(
                    (8, 9),
                    terms("sender.transmission_fq"),
                    strict=True,
                ),
                (15, wire("outbound.asset_id")),
                (21, wire("sender.slot_id")),
                (27, wire("sender.slot_derivation")),
                (33, wire("sender.d")),
                *zip(
                    (408, 413, 418, 423, 428, 433, 438),
                    terms("sender.leaf_commitment"),
                    strict=True,
                ),
            ],
        )
        seat(
            "sender_compliance_assert",
            [
                (1, wire("is_regulated")),
                (2, wire("compliance_anchor")),
                *zip(
                    range(3, 8),
                    terms("sender.compliance_root"),
                    strict=True,
                ),
            ],
        )
        asset_root = terms("asset.root.computed")
        asset_gap = terms("asset.gap_valid")
        sender_root = terms("sender.compliance_root")
        sender_leaf = terms("sender.leaf_commitment")
        seat(
            "asset_path",
            [
                (33, wire("asset.position")),
                *zip(
                    range(39, 45),
                    terms("asset.leaf.commitment"),
                    strict=True,
                ),
                *zip(
                    deployed._path_local_wires("asset"),
                    deployed._binding_wire_vector(
                        bindings, "asset.path", 48
                    ),
                    strict=True,
                ),
                *zip(
                    (5827, 5832, 5837, 5842, 5847),
                    asset_root,
                    strict=True,
                ),
            ],
        )
        seat(
            "asset_root_assert",
            [
                *zip(range(1, 6), asset_root, strict=True),
                (6, wire("asset_anchor")),
            ],
        )
        seat(
            "asset_gap",
            [
                (254, wire("asset.leaf.value")),
                (594, wire("outbound.asset_id")),
                (934, wire("asset.leaf.next_value")),
                (3043, asset_gap[0]),
                (3044, wire("is_regulated")),
                (3045, asset_gap[1]),
            ],
        )
        seat(
            "asset_gap_accept",
            [(1, asset_gap[0]), (2, asset_gap[1])],
        )
        compliance_shift = len(sender_leaf) - 7
        seat(
            "sender_compliance_path",
            [
                (33, wire("sender.position")),
                *zip(
                    range(39, 39 + len(sender_leaf)),
                    sender_leaf,
                    strict=True,
                ),
                *zip(
                    deployed._path_local_wires(
                        "compliance",
                        compliance_leaf_terms=len(sender_leaf),
                    ),
                    deployed._binding_wire_vector(
                        bindings, "sender.path", 48
                    ),
                    strict=True,
                ),
                *zip(
                    (
                        local + compliance_shift
                        for local in (5828, 5833, 5838, 5843, 5848)
                    ),
                    sender_root,
                    strict=True,
                ),
            ],
        )

        states = {
            block: deployed._binding_lc_wires(
                bindings,
                f"statement.hash.{block}",
                deployed.STATEMENT_STATE_COEFFICIENTS,
            )
            for block in ("block0", "block1", "block2", "block3")
        }

        def statement_inputs(
            start: int,
            locals_by_field: tuple[tuple[int, ...], ...],
        ) -> list[tuple[int, int]]:
            inputs: list[tuple[int, int]] = []
            for offset, locals_ in enumerate(locals_by_field):
                field = start + offset
                inputs.extend(
                    zip(
                        locals_,
                        terms(f"statement.field.{field:03d}"),
                        strict=True,
                    )
                )
            return inputs

        first_inputs = statement_inputs(
            0,
            ((1,), (7,), (13, 14), (20,), (26,), (32, 33), (39,)),
        )
        second_inputs = statement_inputs(
            7,
            ((14,), (20, 21), (27,), (33,), (39,), (45,)),
        )
        third_inputs = statement_inputs(
            13,
            ((14,), (20,), (26,), (32,), (38,), (44,)),
        )
        fourth_inputs = statement_inputs(19, ((14,), (20,)))
        seat(
            "statement_block0",
            [
                *first_inputs,
                *zip(
                    (444, 449, 454, 459, 464, 469, 474, 479),
                    states["block0"],
                    strict=True,
                ),
            ],
        )
        seat(
            "statement_block1",
            [
                *zip(range(1, 9), states["block0"], strict=True),
                *second_inputs,
                *zip(
                    (450, 455, 460, 465, 470, 475, 480, 485),
                    states["block1"],
                    strict=True,
                ),
            ],
        )
        seat(
            "statement_block2",
            [
                *zip(range(1, 9), states["block1"], strict=True),
                *third_inputs,
                *zip(
                    (449, 454, 459, 464, 469, 474, 479, 484),
                    states["block2"],
                    strict=True,
                ),
            ],
        )
        seat(
            "statement_block3",
            [
                *zip(range(1, 9), states["block2"], strict=True),
                *fourth_inputs,
                *zip(
                    (425, 430, 435, 440, 445, 450, 455, 460),
                    states["block3"],
                    strict=True,
                ),
            ],
        )
        seat(
            "statement_assert",
            [
                *zip(range(1, 9), states["block3"], strict=True),
                (9, wire("claimed.statement_hash")),
            ],
        )
        return deployed._validate_withdrawal_refinement_plan(ir, manifest)

    def seat_current_withdrawal_core(
        self, ir: dict, manifest: dict
    ) -> deployed.WithdrawalRefinementPlan:
        """Seat every provider consumed by the core static adapters."""

        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)
        expected = deployed._withdrawal_core_provider_seats(plan)
        for label, pairs in expected.items():
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, deployed_wire in pairs:
                if seating[local] == deployed_wire:
                    continue
                current = seating.index(deployed_wire)
                seating[local], seating[current] = (
                    seating[current],
                    seating[local],
                )
        return deployed._validate_withdrawal_refinement_plan(ir, manifest)

    def transfer_refinement_fixture(self) -> tuple[dict, dict]:
        """Synthetic fresh extraction with deliberately noncanonical indices."""

        source = json.loads(
            (
                self.root
                / "tools/gnark/artifacts/transfer/transfer-manifest.json"
            ).read_text()
        )
        bindings = copy.deepcopy(source["semantic_bindings"])
        by_name = {binding["name"]: binding for binding in bindings}
        next_internal = (
            source["nb_public_variables"]
            + source["nb_secret_variables"]
            + source["nb_internal_variables"]
            + 1000
        )
        segments = []
        trace_segments = []
        for ordinal, spec in enumerate(
            deployed.TRANSFER_TRACE_SPECS, start=1
        ):
            index = 100 + 2 * ordinal
            key = spec.key
            if key is None:
                key = spec.op + "@" + "a" * 64
            inputs, outputs, flexible = deployed._transfer_trace_role_support(
                spec, by_name
            )
            inputs.update(flexible)
            seating = [0] * spec.local_wire_count
            internal = []
            if spec.op in {
                "assert.decaf_non_identity",
                "assert.ne",
            }:
                self.assertEqual(len(inputs), 1)
                seating[1] = next(iter(inputs))
                seating[2] = next_internal
                internal.append(next_internal)
                next_internal += 1
            else:
                role_wires = sorted(inputs | outputs)
                self.assertLess(len(role_wires), spec.local_wire_count)
                seating[1:1 + len(role_wires)] = role_wires
            if spec.label in {
                "required_state_path",
                "optional_state_path",
            }:
                slot = (
                    "spend0"
                    if spec.label == "required_state_path"
                    else "spend1"
                )
                path_wires = deployed._binding_wire_vector(
                    by_name, f"{slot}.state_proof.path", 72
                )
                for local, source_index in zip(
                    deployed.STATE_PATH_PROVIDER_LOCALS,
                    deployed.STATE_PATH_LEVEL_REVERSAL,
                    strict=True,
                ):
                    current = seating.index(path_wires[source_index])
                    seating[local], seating[current] = (
                        seating[current], seating[local]
                    )
            segment = {
                "index": index,
                "op": spec.op,
                "proof_template_id": key,
                "deployed_normalized_relation_sha256_hex": (
                    spec.deployed_relation_digest
                    or key.rsplit("@", 1)[-1]
                ),
                "constraint_count": spec.constraint_count,
                "wire_roles": {
                    "input": sorted(inputs),
                    "output": sorted(outputs),
                    "internal": internal,
                },
                "template_equivalence_witness": {
                    "proof_template_id": key,
                    "canonical_local_to_deployed_wire_seating": seating,
                },
            }
            segments.append(segment)
            trace_segments.extend([
                {
                    "index": index - 1,
                    "op": "test.marker",
                    "args": [f"before={spec.label}"],
                    "kind": "marker",
                    "constraint_count": 0,
                },
                {
                    "index": index,
                    "op": spec.op,
                    "args": list(spec.args),
                    "kind": spec.kind,
                    "constraint_count": spec.constraint_count,
                },
            ])
        manifest = {
            "circuit": "transfer",
            "nb_public_variables": source["nb_public_variables"],
            "nb_secret_variables": source["nb_secret_variables"],
            "nb_internal_variables": next_internal,
            "semantic_bindings": bindings,
            "segments": trace_segments,
        }
        ir = {"circuit": "transfer", "segments": segments}
        plan = deployed.TransferRefinementPlan(
            segments={
                spec.label: segment
                for spec, segment in zip(
                    deployed.TRANSFER_TRACE_SPECS,
                    segments,
                    strict=True,
                )
            },
            bindings=by_name,
        )
        routing_join = next_internal
        next_internal += 1
        manifest["nb_internal_variables"] = next_internal
        for label, local, role in (
            ("routing_permutation_compose", 1, "output"),
            ("detection_encryption", 2112, "input"),
        ):
            segment = plan.segments[label]
            seating = segment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            displaced = seating[local]
            if displaced != 0:
                open_local = seating.index(0)
                seating[open_local] = displaced
            seating[local] = routing_join
            segment["wire_roles"][role].append(routing_join)
            segment["wire_roles"][role].sort()
        for label, (expected, _) in (
            deployed._transfer_current_protocol_seats(plan).items()
        ):
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, wire in expected.items():
                if seating[local] == wire:
                    continue
                try:
                    current = seating.index(wire)
                except ValueError as error:
                    raise AssertionError(
                        f"{label} does not contain wire {wire}"
                    ) from error
                seating[local], seating[current] = (
                    seating[current],
                    seating[local],
                )
        for label, (expected, _) in (
            deployed._transfer_transcript_protocol_seats(plan).items()
        ):
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, wire in expected.items():
                if seating[local] == wire:
                    continue
                try:
                    current = seating.index(wire)
                except ValueError as error:
                    raise AssertionError(
                        f"{label} does not contain wire {wire}"
                    ) from error
                seating[local], seating[current] = (
                    seating[current],
                    seating[local],
                )
        for label, (expected, _) in (
            deployed._transfer_action_protocol_seats(plan).items()
        ):
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, wire in expected.items():
                if seating[local] == wire:
                    continue
                try:
                    current = seating.index(wire)
                except ValueError as error:
                    raise AssertionError(
                        f"{label} does not contain wire {wire}"
                    ) from error
                seating[local], seating[current] = (
                    seating[current],
                    seating[local],
                )
        for label, expected in (
            deployed._transfer_core_provider_seats(plan).items()
        ):
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, wire in expected:
                if seating[local] == wire:
                    continue
                try:
                    current = seating.index(wire)
                except ValueError as error:
                    raise AssertionError(
                        f"{label} does not contain wire {wire}"
                    ) from error
                seating[local], seating[current] = (
                    seating[current],
                    seating[local],
                )
        computed = deployed._binding_expression(
            by_name, "sender.transmission.computed", 2
        )
        computed_wires = tuple(
            tuple(term["wire_id"] for term in expression["terms"])
            for expression in computed
        )
        raw = deployed._binding_wire_vector(
            by_name, "sender.transmission", 2
        )
        crypto_seats = {
            "sender_dtk": {
                4961: computed_wires[0][0],
                4969: computed_wires[0][1],
                4962: computed_wires[1][0],
                4970: computed_wires[1][1],
            },
            "sender_transmission_equivalent": {
                1: raw[1],
                2: computed_wires[0][0],
                3: computed_wires[0][1],
                5: raw[0],
                6: computed_wires[1][0],
                7: computed_wires[1][1],
            },
        }
        for label, expected in crypto_seats.items():
            seating = plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            for local, wire in expected.items():
                if seating[local] == wire:
                    continue
                current = seating.index(wire)
                seating[local], seating[current] = (
                    seating[current], seating[local]
                )
        # Some certified providers intentionally reuse one deployed wire at
        # several canonical locals.  The synthetic fixture's role sets erase
        # that multiplicity, so install the complete reviewed map directly
        # and restore any displaced role wire in an otherwise-unused seat.
        reviewed: dict[str, dict[int, int]] = {}

        def merge(label: str, seats: dict[int, int]) -> None:
            target = reviewed.setdefault(label, {})
            for local, wire in seats.items():
                previous = target.get(local)
                if previous is not None and previous != wire:
                    raise AssertionError(
                        f"conflicting reviewed seat {label}[{local}]"
                    )
                target[local] = wire

        for label, (seats, _) in (
            deployed._transfer_current_protocol_seats(plan).items()
        ):
            merge(label, seats)
        for label, (seats, _) in (
            deployed._transfer_transcript_protocol_seats(plan).items()
        ):
            merge(label, seats)
        for label, (seats, _) in (
            deployed._transfer_action_protocol_seats(plan).items()
        ):
            merge(label, seats)
        for label, seats in (
            deployed._transfer_core_provider_seats(plan).items()
        ):
            merge(label, dict(seats))
        for label, seats in crypto_seats.items():
            merge(label, seats)
        for label, expected in reviewed.items():
            segment = plan.segments[label]
            seating = segment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            for local, wire in expected.items():
                seating[local] = wire
            role_wires = set().union(
                *(set(segment["wire_roles"][role])
                  for role in ("input", "output", "internal"))
            )
            missing = sorted(role_wires - set(seating))
            free = (
                local for local in range(1, len(seating))
                if local not in expected and seating[local] == 0
            )
            for wire in missing:
                seating[next(free)] = wire
        return ir, manifest

    def test_supported_shapes_are_strict_and_exact(self) -> None:
        for circuit in sorted(deployed.SUPPORTED_CIRCUITS):
            ir, previous, manifest = self.fixture(circuit)
            deployed.validate_inputs(ir, previous, manifest)
            bad = copy.deepcopy(manifest)
            bad["shape"]["n_out"] += 1
            with self.assertRaisesRegex(ValueError, "shape mismatch"):
                deployed.validate_inputs(ir, previous, bad)

        ir, previous, manifest = self.fixture("transfer")
        ir["circuit"] = "note_reshape1x8"
        previous["circuit"] = "note_reshape1x8"
        manifest["circuit"] = "note_reshape1x8"
        with self.assertRaisesRegex(ValueError, "unsupported deployed-family"):
            deployed.validate_inputs(ir, previous, manifest)

    def test_circuit_facts_enumerate_every_exact_segment_once(self) -> None:
        for circuit in sorted(deployed.SUPPORTED_CIRCUITS):
            ir, _, _ = self.fixture(circuit)
            segments = core.constraint_segments(ir)
            source = deployed.render_circuit_facts(ir)
            self.assertNotIn("rows : relationAll rho", source)
            self.assertNotIn("spec := relation", source)
            fact_sources = deployed.render_circuit_fact_files(ir)
            for segment in segments:
                index = segment["index"]
                self.assertEqual(
                    sum(
                        fact_source.count(f"Seg{index}.contract.spec rho")
                        for fact_source in fact_sources.values()
                    ),
                    1,
                    (circuit, index),
                )
                self.assertEqual(
                    source.count(f"specOf{index} rho h"),
                    1,
                    (circuit, index),
                )
            for fact_source in fact_sources.values():
                self.assertNotIn(".Capstone", fact_source)

            with self.assertRaisesRegex(ValueError, "exact partition"):
                core.render_circuit_facts(
                    ir,
                    groups={"exact": segments[:-1]},
                    generator=deployed.GENERATOR,
                )
            with self.assertRaisesRegex(ValueError, "exact partition"):
                core.render_circuit_facts(
                    ir,
                    groups={"exact": [*segments, segments[0]]},
                    generator=deployed.GENERATOR,
                )

    def test_all_outputs_declare_generic_generator_ownership(self) -> None:
        for circuit in sorted(deployed.SUPPORTED_CIRCUITS):
            ir, _, manifest = self.fixture(circuit)
            sources = (
                deployed.render_bounds(ir),
                deployed.render_capstone(ir),
                deployed.render_circuit_facts(ir),
                deployed.render_role_bindings(ir, manifest),
                deployed.render_semantic_bindings(ir, manifest),
            )
            for source in sources:
                self.assertIn(
                    "GENERATED by gen_deployed_family.py — do not edit by hand.",
                    source,
                )
                self.assertNotIn("fun _ h => h", source)
                self.assertNotIn("caller", source)

    def test_role_and_semantic_bindings_are_namespace_composable(self) -> None:
        for circuit in sorted(deployed.SUPPORTED_CIRCUITS):
            ir, _, manifest = self.fixture(circuit)
            roles = deployed.render_role_bindings(ir, manifest)
            semantics = deployed.render_semantic_bindings(ir, manifest)

            role_declarations = self.declaration_names(roles)
            semantic_declarations = self.declaration_names(semantics)
            self.assertFalse(
                role_declarations & semantic_declarations,
                (
                    circuit,
                    sorted(role_declarations & semantic_declarations),
                ),
            )

            lexical_role_names = {
                name.rsplit(".", 1)[-1] for name in role_declarations
            }
            lexical_semantic_names = {
                name.rsplit(".", 1)[-1] for name in semantic_declarations
            }
            overlaps = lexical_role_names & lexical_semantic_names
            self.assertTrue(overlaps, circuit)
            for name in overlaps:
                self.assertTrue(
                    any(
                        declaration.endswith(f".Witness.{name}")
                        for declaration in role_declarations
                    ),
                    (circuit, name),
                )

    def test_multi_expression_bindings_have_typed_aggregate_accessors(self) -> None:
        ir, _, manifest = self.fixture("transfer")
        source = deployed.render_semantic_bindings(ir, manifest)
        for binding in manifest["semantic_bindings"]:
            count = len(binding["expressions"])
            if count <= 1:
                continue
            base = core.lower_camel(binding["name"])
            self.assertIn(
                f"def {base}Vector (rho : Nat → SemanticF) : "
                f"List.Vector SemanticF {count}",
                source,
            )
            self.assertIn(
                f"def {base}At (rho : Nat → SemanticF) "
                f"(index : Fin {count}) : SemanticF",
                source,
            )
            self.assertIn(f"({base}Vector rho)[index]", source)

    def test_transfer_non_identity_rows_bind_all_guarded_points(self) -> None:
        key = core.DIRECT_NON_IDENTITY_KEY
        guarded = (
            ("auth.ak", 14, 59001, 1),
            ("sender.div_gen", 82, 59002, 2),
            ("sender.transmission", 84, 59003, 1),
            ("output0.recipient.div_gen", 501, 59004, 2),
            ("output0.recipient.transmission", 503, 59005, 1),
        )
        segments = []
        bindings = []
        for index, (name, x_wire, inverse_wire, x_local) in enumerate(
            guarded, start=40
        ):
            seating = (
                [0, x_wire, inverse_wire]
                if x_local == 1
                else [0, inverse_wire, x_wire]
            )
            segments.append(
                {
                    "index": index,
                    "op": "assert.decaf_non_identity",
                    "proof_template_id": key,
                    "deployed_normalized_relation_sha256_hex": "deadbeef",
                    "constraint_count": 1,
                    "wire_roles": {
                        "input": [x_wire],
                        "output": [],
                        "internal": [inverse_wire],
                    },
                    "template_equivalence_witness": {
                        "proof_template_id": key,
                        "canonical_local_to_deployed_wire_seating": seating,
                    },
                }
            )
            bindings.append(
                {
                    "name": name,
                    "expressions": [
                        deployed._single_wire_expression(x_wire),
                        deployed._single_wire_expression(x_wire + 1),
                    ],
                }
            )
        segments.append(
            {
                "index": 45,
                "op": "assert.ne",
                "proof_template_id": core.DIRECT_NONZERO_KEY,
                "deployed_normalized_relation_sha256_hex": "deadbeef",
                "constraint_count": 1,
                "wire_roles": {
                    "input": [86],
                    "output": [],
                    "internal": [59006],
                },
                "template_equivalence_witness": {
                    "proof_template_id": core.DIRECT_NONZERO_KEY,
                    "canonical_local_to_deployed_wire_seating": [
                        0, 86, 59006
                    ],
                },
            }
        )
        bindings.append(
            {
                "name": "auth.ivk_reduced",
                "expressions": [deployed._single_wire_expression(86)],
            }
        )
        ir = {"circuit": "transfer", "segments": segments}
        manifest = {
            "circuit": "transfer",
            "nb_public_variables": 60000,
            "nb_secret_variables": 60000,
            "nb_internal_variables": 1,
            "semantic_bindings": bindings,
        }

        seams = deployed._validate_non_identity_seams(ir, manifest)
        self.assertEqual(
            [seam["x_local"] for seam in seams],
            [1, 2, 1, 2, 1],
        )
        source = deployed.render_non_identity_seams(ir, manifest)
        for theorem, segment, x_local, x_wire in (
            ("authAkNonIdentity_of_exact", 40, 1, 14),
            ("senderDivGenNonIdentity_of_exact", 41, 2, 82),
            ("senderTransmissionNonIdentity_of_exact", 42, 1, 84),
            ("output0RecipientDivGenNonIdentity_of_exact", 43, 2, 501),
            (
                "output0RecipientTransmissionNonIdentity_of_exact",
                44,
                1,
                503,
            ),
        ):
            self.assertIn(f"theorem {theorem}", source)
            self.assertIn(
                f"facts.exact.AssertDecafNonIdentitySeg{segment}.{x_local}",
                source,
            )
            self.assertIn(
                f"Seg{segment}.wireSeating {x_local} = {x_wire}",
                source,
            )
        self.assertIn("theorem authIvkReducedNonzero_of_exact", source)

        reordered = copy.deepcopy(ir)
        reordered["segments"][0], reordered["segments"][1] = (
            reordered["segments"][1],
            reordered["segments"][0],
        )
        with self.assertRaisesRegex(ValueError, "auth.ak non-identity x seating"):
            deployed._validate_non_identity_seams(reordered, manifest)

    def test_transfer_refinement_is_complete_dynamic_and_closed(self) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        plan = deployed._validate_transfer_refinement_plan(ir, manifest)
        self.assertEqual(len(plan.segments), 114)
        self.assertEqual(
            set(spec.fact for spec in deployed.TRANSFER_TRACE_SPECS),
            set(deployed.TRANSFER_FACT_FIELDS),
        )
        self.assertEqual(
            Counter(
                spec.fact for spec in deployed.TRANSFER_TRACE_SPECS
            ),
            Counter(deployed.TRANSFER_FACT_PROVIDER_COUNTS),
        )
        self.assertEqual(
            [plan.segments[spec.label]["index"]
             for spec in deployed.TRANSFER_TRACE_SPECS],
            list(range(102, 330, 2)),
        )
        self.assertEqual(
            sum(
                spec.constraint_count
                for spec in deployed.TRANSFER_TRACE_SPECS
            ),
            130_015,
        )
        self.assertNotIn(
            "effective_threshold",
            plan.segments,
        )
        self.assertEqual(
            (
                plan.segments["threshold_flag"]["constraint_count"],
                len(
                    plan.segments["threshold_flag"][
                        "template_equivalence_witness"
                    ]["canonical_local_to_deployed_wire_seating"]
                ),
            ),
            (896, 898),
        )
        self.assertEqual(
            (
                plan.segments["detection_encryption"][
                    "constraint_count"
                ],
                len(
                    plan.segments["detection_encryption"][
                        "template_equivalence_witness"
                    ]["canonical_local_to_deployed_wire_seating"]
                ),
            ),
            (2446, 2116),
        )
        for label in (
            "sender_compliance_path",
            "receiver_compliance_path",
        ):
            self.assertEqual(
                len(
                    plan.segments[label][
                        "template_equivalence_witness"
                    ]["canonical_local_to_deployed_wire_seating"]
                ),
                5849,
            )
            self.assertEqual(
                plan.segments[label]["proof_template_id"],
                deployed.TRANSFER_COMPLIANCE_PATH_KEY,
            )
        for label in (
            "sender_core_shared_secret",
            "sender_ext_shared_secret",
            "output_core_shared_secret",
            "output_ext_shared_secret",
        ):
            self.assertEqual(
                len(
                    plan.segments[label][
                        "template_equivalence_witness"
                    ]["canonical_local_to_deployed_wire_seating"]
                ),
                7335,
            )

        bindings = {
            binding["name"]: binding
            for binding in manifest["semantic_bindings"]
        }

        def binding_wires(name: str) -> set[int]:
            return {
                term["wire_id"]
                for expression in bindings[name]["expressions"]
                for term in expression["terms"]
            }

        shared_roles = plan.segments[
            "sender_core_shared_secret"
        ]["wire_roles"]
        epk_wires = binding_wires("compliance.sender_core.epk")
        self.assertLessEqual(epk_wires, set(shared_roles["input"]))
        self.assertTrue(epk_wires.isdisjoint(shared_roles["output"]))
        for name in (
            "sender_core.shared.issuer",
            "sender_core.shared.user",
            "sender_core.shared.selected",
        ):
            derived_wires = binding_wires(name)
            self.assertLessEqual(
                derived_wires, set(shared_roles["output"])
            )
            self.assertTrue(
                derived_wires.isdisjoint(shared_roles["input"])
            )

        claimed_ciphertexts = (
            ("detection_encryption", "compliance.detection_ciphertext"),
            (
                "sender_amount_encryption",
                "compliance.sender_core.ciphertext",
            ),
            (
                "sender_address_encryption",
                "compliance.sender_ext.ciphertext",
            ),
            (
                "output_amount_encryption",
                "compliance.output_core.ciphertext",
            ),
            (
                "output_address_encryption",
                "compliance.output_ext.ciphertext",
            ),
        )
        for label, binding in claimed_ciphertexts:
            roles = plan.segments[label]["wire_roles"]
            ciphertext_wires = binding_wires(binding)
            self.assertLessEqual(
                ciphertext_wires, set(roles["input"])
            )
            self.assertTrue(
                ciphertext_wires.isdisjoint(roles["output"])
            )

        action = deployed.render_transfer_refinement_action(ir, manifest)
        self.assertIn(
            "namespace Shieldd.GnarkFormal.Deployed.TransferRefinement.C",
            action,
        )
        self.assertIn("def action (rho : Nat → DeployedF)", action)
        self.assertIn(
            "statePath24 (spend0StateProofPathAt rho)",
            action,
        )
        self.assertIn(
            "statePath24 (spend1StateProofPathAt rho)",
            action,
        )
        self.assertIn("3 * (23 - level.val) + sibling.val", action)
        self.assertNotIn("StateMembership925Bridge", action)
        self.assertNotRegex(action, r"Seg[0-9]+")
        self.assertIn("def directPath16", action)
        self.assertIn("def receiverCompliance", action)
        self.assertIn("def transcript", action)

        wrong_path_order = copy.deepcopy(ir)
        required_segment = next(
            segment
            for segment in wrong_path_order["segments"]
            if segment["index"]
            == plan.segments["required_state_path"]["index"]
        )
        seating = required_segment["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        first, second = deployed.STATE_PATH_PROVIDER_LOCALS[:2]
        seating[first], seating[second] = seating[second], seating[first]
        with self.assertRaisesRegex(
            ValueError, "state-path level reversal drifted"
        ):
            deployed.render_transfer_refinement_action(
                wrong_path_order, manifest
            )

        seams = deployed.render_transfer_refinement_seams(ir, manifest)
        for fact in deployed.TRANSFER_FACT_FIELDS:
            self.assertIn(
                f"structure {core.camel(fact)}ExactProviders",
                seams,
            )
            self.assertIn(f"  {fact} :", seams)
        for spec in deployed.TRANSFER_TRACE_SPECS:
            segment = plan.segments[spec.label]["index"]
            self.assertIn(
                f"{core.lower_camel(spec.label)} : "
                f"Seg{segment}.contract.spec rho",
                seams,
            )
        self.assertIn("theorem isRegulatedBoolean_of_exact", seams)
        self.assertIn("theorem assetIdNonzero_of_exact", seams)
        self.assertIn(
            "facts.assetRegistry.AssertNeSeg",
            seams,
        )

        adapters = deployed.render_transfer_refinement_adapters(
            ir, manifest
        )
        expected_provider_imports = {
            deployed._transfer_semantic_import(
                plan.segments[spec.label]
            )
            for spec in deployed.TRANSFER_TRACE_SPECS
        }
        for module in expected_provider_imports:
            self.assertEqual(
                adapters.splitlines().count(f"import {module}"),
                1,
                module,
            )
        self.assertIn(
            "structure TransferSemanticProviders",
            adapters,
        )
        self.assertIn(
            "theorem transferSemanticProviders_of_exact",
            adapters,
        )
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod", adapters)
        self.assertIn("attribute [-instance] ZMod.instField", adapters)
        self.assertIn(
            "choiceFreeTransferRefinementAdaptersCommRing",
            adapters,
        )
        self.assertNotIn("fin_cases level", adapters)
        self.assertNotIn("fin_cases sibling", adapters)
        self.assertEqual(
            adapters.count("rcases level with ⟨level, level_lt⟩"),
            2,
        )
        self.assertEqual(
            adapters.count("rcases sibling with ⟨sibling, sibling_lt⟩"),
            2,
        )
        for stable, slot in (
            ("RequiredStatePath", "spend0"),
            ("OptionalStatePath", "spend1"),
        ):
            self.assertIn(
                f"change {stable}Valuation rho 290 = "
                f"{slot}StateProofPath69 rho",
                adapters,
            )
            self.assertIn(
                f"{slot}StateProofPath69LC",
                adapters,
            )
            self.assertIn(
                f"change {stable}Valuation rho 8644 = "
                f"{slot}StateProofPath2 rho",
                adapters,
            )
        self.assertIn(
            "private theorem transferNegOneLc (x y : DeployedF)",
            adapters,
        )
        self.assertIn(
            "unfold Deployed.Templates.Semantics."
            "TGadgetIsZero_f86255d819c7c0651266670438637db9143483a034e8100b1d451f78c8ab9991.spec at hzero",
            adapters,
        )
        for spec in deployed.TRANSFER_TRACE_SPECS:
            segment = plan.segments[spec.label]
            stable = core.camel(spec.label)
            field = core.lower_camel(spec.label)
            provider = (
                "Deployed.Templates.Semantics."
                + core.template_name(segment["proof_template_id"])
            )
            self.assertEqual(
                adapters.count(
                    f"def {stable}Valuation "
                ),
                1,
                spec.label,
            )
            self.assertEqual(
                adapters.count(
                    f"def {stable}SemanticSpec "
                ),
                1,
                spec.label,
            )
            self.assertEqual(
                adapters.count(
                    f"  {field} : {stable}SemanticSpec rho"
                ),
                1,
                spec.label,
            )
            self.assertIn(
                f"change {provider}.spec "
                f"(Seg{segment['index']}.localRho rho)",
                adapters,
            )
            self.assertEqual(
                adapters.splitlines().count(
                    f"        exact exactProviders.{spec.fact}.{field}"
                ),
                1,
                spec.label,
            )
            audited = deployed._transfer_current_protocol_seats(plan)
            for label, seats in (
                deployed._transfer_core_provider_seats(plan).items()
            ):
                audited[label] = (
                    dict(seats),
                    f"Transfer {label} core protocol arguments",
                )
            for label, seats in (
                deployed._transfer_transcript_direct_protocol_seats(
                    plan
                ).items()
            ):
                audited[label] = seats
            for label, seats in (
                deployed._transfer_action_direct_protocol_seats(
                    plan
                ).items()
            ):
                audited[label] = seats
            expected_accessors = sorted(
                audited.get(spec.label, ({}, ""))[0].items()
            )
            for local, deployed_wire in expected_accessors:
                lower = core.lower_camel(spec.label)
                self.assertEqual(
                    adapters.count(
                        f"@[simp] theorem {lower}At{local}\n"
                    ),
                    1,
                    (spec.label, local),
                )
                self.assertIn(
                    f"{stable}Valuation rho {local} = "
                    f"rho {deployed_wire}",
                    adapters,
                )
            if spec.label not in audited:
                self.assertNotIn(
                    f"@[simp] theorem {field}At", adapters
                )
        self.assertEqual(
            adapters.count("Valuation (rho : Nat → DeployedF)"),
            len(deployed.TRANSFER_TRACE_SPECS),
        )
        self.assertEqual(
            adapters.count("SemanticSpec (rho : Nat → DeployedF)"),
            len(deployed.TRANSFER_TRACE_SPECS),
        )
        self.assertEqual(
            adapters.count("exact exactProviders."),
            len(deployed.TRANSFER_TRACE_SPECS),
        )
        expected_audited_seats = sum(
            len(seats)
            for seats, _ in
            deployed._transfer_current_protocol_seats(plan).values()
        ) + sum(
            len(seats)
            for seats in
            deployed._transfer_core_provider_seats(plan).values()
        ) + sum(
            len(seats)
            for seats, _ in
            deployed._transfer_transcript_direct_protocol_seats(
                plan
            ).values()
        ) + sum(
            len(seats)
            for seats, _ in
            deployed._transfer_action_direct_protocol_seats(
                plan
            ).values()
        )
        self.assertEqual(
            adapters.count("@[simp] theorem"),
            expected_audited_seats,
        )
        # Curve gadgets contain thousands of repeated internal occurrences
        # of action wires. The adapter exposes reviewed boundary seats only.
        self.assertLess(len(adapters.encode()), 500_000)
        self.assertNotIn("(canonicalSender :", adapters)

        action_modules = deployed.render_transfer_action_seam_modules(
            ir, manifest
        )
        self.assertEqual(
            set(action_modules),
            {
                "ActionRegistrySeams.lean",
                "ActionSelectionSeams.lean",
                "ActionAckSeams.lean",
                "ActionComplianceSeams.lean",
                "ActionBalanceSeams.lean",
                "ActionSeams.lean",
            },
        )
        action_seams = "\n".join(action_modules.values())
        self.assertIn(
            "open Shieldd.GnarkFormal.Deployed.TransferRefinement",
            action_seams,
        )
        for module_source in action_modules.values():
            imports = [
                line for line in module_source.splitlines()
                if line.startswith("import ")
            ]
            self.assertEqual(len(imports), len(set(imports)))
        for theorem in (
            "assetRegistry_of_semanticProviders",
            "senderComplianceFacts_of_semanticProviders",
            "receiverComplianceFacts_of_semanticProviders",
            "balanceFacts_of_semanticProviders",
        ):
            self.assertIn(f"theorem {theorem}", action_seams)
        registry_seams = action_modules["ActionRegistrySeams.lean"]
        self.assertNotIn("fin_cases level", registry_seams)
        self.assertNotIn("fin_cases sibling", registry_seams)
        self.assertIn("rcases level with ⟨level, level_lt⟩", registry_seams)
        self.assertIn(
            "rcases sibling with ⟨sibling, sibling_lt⟩",
            registry_seams,
        )
        self.assertIn("interval_cases level", registry_seams)
        self.assertIn("interval_cases sibling", registry_seams)
        for module_source in action_modules.values():
            if "namespace Shieldd.GnarkFormal.Deployed.Contracts.Transfer" in module_source:
                self.assertIn(
                    "private local instance choiceFreeTransferActionCommRing",
                    module_source,
                )
        self.assertIn("theorem assetPathLeaf_eq", registry_seams)
        self.assertIn("theorem assetPathOutput_eq", registry_seams)
        for index in range(6):
            self.assertIn(
                f"private theorem assetPathCoeff{index}",
                registry_seams,
            )
        for local_boundary in (
            "have hOutput :",
            "have hDkPub :",
            "have hRingPk :",
            "have hParams :",
            "have hRing :",
        ):
            self.assertIn(local_boundary, registry_seams)
        self.assertIn(
            "hOutput, hDkPub, hThreshold, hSlotCount, hChannelsHash",
            registry_seams,
        )
        self.assertIn(
            "hOutput, hRingPk, hRingId, hPolicyId, hPermission, hResource",
            registry_seams,
        )
        self.assertIn(
            "hOutput, hValue, hNextIndex, hNextValue, hParams, hRing",
            registry_seams,
        )
        self.assertIn("Deployed.Poseidon4Link.row5", registry_seams)
        self.assertGreaterEqual(
            registry_seams.count("Deployed.Poseidon5Link.row6"),
            2,
        )
        selection_seams = action_modules["ActionSelectionSeams.lean"]
        for boundary in (
            "EffectiveRingPkValuation rho 3",
            "EffectiveRingPkValuation rho 5",
            "EffectiveDkPubValuation rho 3",
            "EffectiveDkPubValuation rho 5",
            "EffectiveRingIdHashValuation rho 3",
            "EffectivePolicyIdHashValuation rho 3",
            "EffectiveResourceHashValuation rho 3",
            "EffectivePermissionHashValuation rho 3",
        ):
            self.assertIn(boundary, selection_seams)
        self.assertEqual(selection_seams.count("(show DeployedF from"), 8)
        self.assertEqual(
            selection_seams.count(
                "unfold Protocol.Common.Decaf.onCurve"
            ),
            2,
        )
        for normalization in (
            "private theorem unregulatedRingPkNegX",
            "private theorem unregulatedRingPkNegY",
            "private theorem unregulatedDkPubNegX",
            "private theorem unregulatedDkPubNegY",
            "private theorem unregulatedPolicyNeg",
        ):
            self.assertIn(normalization, selection_seams)
        self.assertEqual(
            selection_seams.count("rw [unregulatedPolicyNeg] at h"),
            4,
        )
        self.assertEqual(
            selection_seams.count(
                "simp only [Protocol.Common.Point.mk.injEq]"
            ),
            2,
        )
        self.assertNotIn("Protocol.Common.Point.ext", action_seams)
        ack_seams = action_modules["ActionAckSeams.lean"]
        self.assertIn(".AckSupport.base", ack_seams)
        self.assertNotIn("ackBaseX", ack_seams)
        self.assertNotIn("ackBaseY", ack_seams)
        self.assertEqual(ack_seams.count("AckBridge.AckWindow2Spec"), 2)
        self.assertNotIn("AckBridge.AckSpec", ack_seams)
        self.assertEqual(
            ack_seams.count(
                "Protocol.Transfer.Concrete.unregulatedRingPk,"
            ),
            2,
        )
        compliance_seams = action_modules["ActionComplianceSeams.lean"]
        self.assertNotIn("fin_cases level", compliance_seams)
        self.assertNotIn("fin_cases sibling", compliance_seams)
        self.assertEqual(
            compliance_seams.count(
                "rcases level with ⟨level, level_lt⟩"
            ),
            2,
        )
        self.assertEqual(
            compliance_seams.count(
                "rcases sibling with ⟨sibling, sibling_lt⟩"
            ),
            2,
        )
        self.assertEqual(compliance_seams.count("have hOutput :"), 2)
        self.assertEqual(
            compliance_seams.count(
                "assetPathCoeff1, assetPathCoeff2, assetPathCoeff3,\n"
                "    assetPathCoeff4, assetPathCoeff6, assetPathCoeff7"
            ),
            2,
        )
        self.assertEqual(compliance_seams.count("have enabled' :"), 2)
        self.assertNotIn("ring_nf at h ⊢", compliance_seams)
        balance_seams = action_modules["ActionBalanceSeams.lean"]
        for local in (732, 861, 990, 1119, 4467, 6026, 6027):
            self.assertIn(f"netBalanceAt{local}", balance_seams)
        for stale_local in (2519, 4312, 6105, 8021, 9580, 9581):
            self.assertNotIn(f"netBalanceAt{stale_local}", balance_seams)
        self.assertIn(
            "⟨_, _, h0, h1, h2, h3, hb, _, _, _, hProtocol⟩",
            balance_seams,
        )
        self.assertIn(
            "convert h using 1 <;> (try rw [negOne]) <;> ring",
            balance_seams,
        )
        self.assertIn(
            "(C.assetLeaf rho) (assetLeafDkPubFq rho)",
            balance_seams,
        )
        self.assertIn(
            "cases regulated <;>\n          simpa [Bool.toZMod]",
            registry_seams,
        )
        self.assertNotIn("axiom ", action_seams)
        self.assertNotIn("sorry", action_seams)

        self.assertEqual(
            plan.segments["statement_hash"]["proof_template_id"],
            deployed.TRANSFER_STATEMENT_KEY,
        )

        consequences = (
            deployed.render_transfer_specification_consequences(
                ir, manifest
            )
        )
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZMod", consequences
        )
        self.assertIn(
            "attribute [-instance] ZMod.instField", consequences
        )
        self.assertIn(
            "choiceFreeTransferSpecificationCommRing", consequences
        )
        self.assertIn(
            "theorem circuitFacts_of_relationAll", consequences
        )
        self.assertEqual(
            consequences.count("\ntheorem specification_"),
            len(deployed.TRANSFER_SPECIFICATION_PREDICATES),
        )
        for predicate in deployed.TRANSFER_SPECIFICATION_PREDICATES:
            theorem = deployed._specification_theorem_name(predicate)
            self.assertIn(f"theorem {theorem}", consequences)
        self.assertIn(
            "transferSemanticProviders_of_exact rho exactProviders",
            consequences,
        )
        self.assertIn(
            "circuitFacts_of_semanticProviders", consequences
        )
        self.assertIn(
            "senderTransmissionComputedNonIdentity_of_semantic",
            consequences,
        )
        self.assertIn(
            "Protocol.Common.Decaf.scalarMulWindow2 251",
            consequences,
        )
        self.assertNotIn(
            "spend.authRandomizer.val < 2 ^ 251 ∧\n"
            "        (action rho).optional = .dummy spend",
            consequences,
        )
        for field in deployed.TRANSFER_FACT_FIELDS:
            self.assertNotIn(f"providers.{field}", consequences)
        for seam in (
            "authAkNonIdentity_of_exact",
            "senderDivGenNonIdentity_of_exact",
            "output0RecipientDivGenNonIdentity_of_exact",
            "isRegulatedBoolean_of_exact",
            "assetIdNonzero_of_exact",
        ):
            self.assertIn(seam, consequences)

        root = deployed.render_transfer_refinement_root(ir, manifest)
        self.assertIn(
            "import ShielddGnarkFormal.Deployed.Contracts.Transfer."
            "SpecificationConsequences",
            root,
        )
        self.assertIn(
            "theorem consensusAccepted_of_relationAll", root
        )
        self.assertIn(
            "theorem transactionAccepted_of_relationAll", root
        )
        self.assertIn(
            "Protocol.Common.CommittedTargetTransaction", root
        )
        self.assertIn(
            "Protocol.Transfer.transactionAccepted_of_circuitFacts",
            root,
        )
        self.assertNotIn("(canonicalSender :", root)
        self.assertNotIn("(requiredSpend :", root)
        self.assertIn("ConsensusState SemanticF", root)
        self.assertIn("ActionDelta SemanticF", root)
        self.assertNotIn("TransactionDelta", root)
        self.assertNotIn("Protocol.Transfer.Valid", root)
        self.assertNotIn("Protocol.Transfer.ExternalFacts", root)
        self.assertNotIn("valid_of_circuitFacts", root)

        canonical = deployed.render_transfer_canonical_refinement(
            ir, manifest
        )
        self.assertIn(
            "import ShielddGnarkFormal.Deployed.Contracts.Transfer."
            "RefinementRoot",
            canonical,
        )
        self.assertIn(
            "namespace Shieldd.GnarkFormal.Deployed."
            "TransferRefinement",
            canonical,
        )
        self.assertIn(
            "theorem deployedRelation_to_circuitFacts", canonical
        )
        self.assertIn(
            "theorem consensusAccepted_of_deployedRelation",
            canonical,
        )
        self.assertIn(
            "theorem transactionAccepted_of_deployedRelation",
            canonical,
        )
        self.assertIn(
            "Protocol.Common.CommittedTargetTransaction", canonical
        )
        self.assertNotIn("theorem valid_of", canonical)

        for source in (
            action, seams, adapters, consequences, root, canonical
        ):
            self.assertNotIn("axiom ", source)
            self.assertNotIn("sorry", source)
            self.assertNotIn("954385455be36f", source)

        translator = (
            self.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "TransferSemanticTranslator.lean"
        ).read_text()
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZMod", translator
        )
        self.assertIn(
            "attribute [-instance] ZMod.instField", translator
        )
        self.assertIn(
            "choiceFreeTransferTranslatorCommRing", translator
        )
        self.assertIn("structure SemanticFacts", translator)
        self.assertIn(
            "theorem circuitFacts_of_semanticFacts", translator
        )
        self.assertIn(
            "theorem semanticFacts_of_semanticProviders", translator
        )
        self.assertIn(
            "theorem circuitFacts_of_semanticProviders", translator
        )
        self.assertIn(
            "(authorization rho).authorizationKey", translator
        )
        self.assertIn(
            "authorizationKeyOnCurve rho semantic", translator
        )
        self.assertNotIn(
            "authorizationKeyOnCurve_of_semantic", translator
        )
        self.assertNotIn(
            "(sender rho).authorizationKey", translator
        )
        self.assertIn(
            "(senderDtkSpec_of_semantic rho semantic).1",
            translator,
        )
        self.assertIn(
            "senderTransmissionEquivalentSpec_of_semantic rho semantic",
            translator,
        )
        self.assertNotIn(
            "diversifiedTransmissionKey_of_circuitSpec",
            translator,
        )
        self.assertNotRegex(translator, r"\bSeg[0-9]+\b")
        self.assertNotIn("wireSeating", translator)
        compiler_specs = set(re.findall(
            r"Deployed\.Templates\.Semantics\.(T[A-Za-z0-9_]+)",
            translator,
        ))
        self.assertEqual(len(compiler_specs), 2)
        self.assertTrue(
            all(name.startswith("THistoryClassify_") for name in compiler_specs)
        )
        self.assertNotIn("axiom ", translator)
        self.assertNotIn("sorry", translator)

    def test_transfer_refinement_fails_closed_on_every_join_boundary(
        self,
    ) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        plan = deployed._validate_transfer_refinement_plan(ir, manifest)

        missing = copy.deepcopy(manifest)
        missing["segments"] = [
            segment
            for segment in missing["segments"]
            if not (
                segment["op"] == "assert.ne"
                and segment["constraint_count"] == 1
            )
        ]
        with self.assertRaisesRegex(
            ValueError, "Transfer constraint trace drifted"
        ):
            deployed._validate_transfer_refinement_plan(ir, missing)

        duplicate = copy.deepcopy(manifest)
        duplicate["segments"].append(
            copy.deepcopy(
                next(
                    segment
                    for segment in duplicate["segments"]
                    if segment["op"] == "assert.boolean"
                    and segment["args"] == ["var=is_regulated"]
                )
            )
        )
        with self.assertRaisesRegex(
            ValueError, "Transfer constraint trace drifted"
        ):
            deployed._validate_transfer_refinement_plan(ir, duplicate)

        duplicate_index = copy.deepcopy(manifest)
        positive = [
            segment
            for segment in duplicate_index["segments"]
            if segment["constraint_count"] > 0
        ]
        positive[1]["index"] = positive[0]["index"]
        with self.assertRaisesRegex(
            ValueError, "source trace and IR segment rosters drifted"
        ):
            deployed._validate_transfer_refinement_plan(
                ir, duplicate_index
            )

        wrong_args = copy.deepcopy(manifest)
        asset_nonzero_trace = next(
            segment
            for segment in wrong_args["segments"]
            if segment["op"] == "assert.ne"
        )
        asset_nonzero_trace["args"][1] = "rhs=1"
        with self.assertRaisesRegex(
            ValueError, "Transfer constraint trace drifted"
        ):
            deployed._validate_transfer_refinement_plan(ir, wrong_args)

        wrong_template = copy.deepcopy(ir)
        gap = next(
            segment
            for segment in wrong_template["segments"]
            if segment["op"] == "gadget.asset_registry_gap"
        )
        gap["proof_template_id"] = "gadget.asset_registry_gap@" + "b" * 64
        gap["template_equivalence_witness"]["proof_template_id"] = (
            gap["proof_template_id"]
        )
        with self.assertRaisesRegex(ValueError, "asset_gap.*provider drifted"):
            deployed._validate_transfer_refinement_plan(
                wrong_template, manifest
            )

        wrong_digest = copy.deepcopy(ir)
        wrong_digest["segments"][0][
            "deployed_normalized_relation_sha256_hex"
        ] = "0" * 64
        with self.assertRaisesRegex(
            ValueError, "normalized relation digest/provider drifted"
        ):
            deployed._validate_transfer_refinement_plan(
                wrong_digest, manifest
            )

        missing_witness_key = copy.deepcopy(ir)
        missing_witness_key["segments"][0][
            "template_equivalence_witness"
        ].pop("proof_template_id")
        with self.assertRaisesRegex(
            ValueError, "equivalence-witness provider drifted"
        ):
            deployed._validate_transfer_refinement_plan(
                missing_witness_key, manifest
            )

        obsolete_providers = (
            (
                "threshold_flag",
                next(iter(deployed.TRANSFER_OBSOLETE_THRESHOLD_KEYS)),
            ),
            (
                "detection_encryption",
                next(iter(
                    deployed.TRANSFER_OBSOLETE_DETECTION_ENCRYPTION_KEYS
                )),
            ),
            (
                "sender_compliance_leaf",
                "gadget.compliance_leaf@"
                "a9196c1f31383683ba070d601a8c3118e288bf3c77ebdd12bb6f95fa0c6e5c0c",
            ),
            (
                "sender_core_shared_secret",
                next(iter(
                    deployed.TRANSFER_OBSOLETE_SHARED_SECRET_KEYS
                )),
            ),
            (
                "statement_hash",
                next(iter(deployed.TRANSFER_OBSOLETE_STATEMENT_KEYS)),
            ),
        )
        for label, provider in obsolete_providers:
            obsolete = copy.deepcopy(ir)
            segment = next(
                candidate
                for candidate in obsolete["segments"]
                if candidate["index"] == plan.segments[label]["index"]
            )
            segment["proof_template_id"] = provider
            segment["template_equivalence_witness"][
                "proof_template_id"
            ] = provider
            segment[
                "deployed_normalized_relation_sha256_hex"
            ] = provider.rsplit("@", 1)[-1]
            with self.subTest(obsolete_provider=label):
                with self.assertRaisesRegex(
                    ValueError, rf"Transfer {label} shape/provider drifted"
                ):
                    deployed._validate_transfer_refinement_plan(
                        obsolete, manifest
                    )

        wrong_role = copy.deepcopy(ir)
        boolean = next(
            segment
            for segment in wrong_role["segments"]
            if segment["op"] == "assert.boolean"
            and segment["index"] == 102
        )
        boolean["wire_roles"]["input"] = []
        with self.assertRaisesRegex(ValueError, "role/seating partition"):
            deployed._validate_transfer_refinement_plan(
                wrong_role, manifest
            )

        unexplained_role = copy.deepcopy(ir)
        commitment = next(
            segment
            for segment in unexplained_role["segments"]
            if segment["op"] == "gadget.note_commitment"
        )
        semantic_wires = deployed._semantic_binding_support({
            binding["name"]: binding
            for binding in manifest["semantic_bindings"]
        })
        commitment_wires = set(
            commitment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
        )
        unexplained_wire = next(iter(semantic_wires - commitment_wires))
        commitment["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ][-1] = unexplained_wire
        commitment["wire_roles"]["input"].append(unexplained_wire)
        with self.assertRaisesRegex(
            ValueError,
            "unreviewed semantic role wires|role/seating partition",
        ):
            deployed._validate_transfer_refinement_plan(
                unexplained_role, manifest
            )

        wrong_seating = copy.deepcopy(ir)
        threshold = next(
            segment
            for segment in wrong_seating["segments"]
            if segment["op"] == "threshold.flag"
        )
        threshold["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ][1] += 9000000
        with self.assertRaisesRegex(ValueError, "role/seating partition"):
            deployed._validate_transfer_refinement_plan(
                wrong_seating, manifest
            )

        for op, argument in (
            ("decaf.shared_secret", "epk=unreviewed.epk"),
            (
                "gadget.poseidon_encryption.detection",
                "out=unreviewed.ciphertext",
            ),
        ):
            wrong_trace_role = copy.deepcopy(manifest)
            trace = next(
                segment
                for segment in wrong_trace_role["segments"]
                if segment["op"] == op
            )
            key = argument.partition("=")[0] + "="
            position = next(
                index
                for index, value in enumerate(trace["args"])
                if value.startswith(key)
            )
            trace["args"][position] = argument
            with self.subTest(trace_role=op):
                with self.assertRaisesRegex(
                    ValueError, "Transfer constraint trace drifted"
                ):
                    deployed._validate_transfer_refinement_plan(
                        ir, wrong_trace_role
                    )

        wrong_statement = copy.deepcopy(manifest)
        fields = next(
            binding
            for binding in wrong_statement["semantic_bindings"]
            if binding["name"] == "statement.fields"
        )
        fields["expressions"].extend(
            copy.deepcopy(fields["expressions"][:42])
        )
        with self.assertRaisesRegex(
            ValueError, "statement.fields.*count drifted"
        ):
            deployed._validate_transfer_refinement_plan(
                ir, wrong_statement
            )

    def test_current_transfer_trace_roster_is_exact_and_fails_closed(self) -> None:
        formal = self.root / "crates/core/component/shielded-pool/formal"
        ir = json.loads(
            (formal / "transfer-deployed-slice-ir.json").read_text()
        )
        manifest = json.loads(
            (
                self.root / "tools/gnark/artifacts/transfer/"
                "transfer-manifest.json"
            ).read_text()
        )
        deployed._validate_transfer_trace_roster(ir, manifest)

        targets = {
            "decaf.diversified_transmission_key": [5477],
            "decaf.ack": [3010, 3010],
            "decaf.shared_secret": [7327, 7326, 7326, 7326],
            "decaf.net_balance_commitment": [6202],
        }
        for op, expected_counts in targets.items():
            self.assertEqual(
                [
                    segment["constraint_count"]
                    for segment in manifest["segments"]
                    if segment.get("op") == op
                ],
                expected_counts,
            )

        missing = copy.deepcopy(manifest)
        target = next(
            segment for segment in missing["segments"]
            if segment.get("op") == "decaf.diversified_transmission_key"
        )
        missing["segments"].remove(target)
        with self.assertRaisesRegex(ValueError, "constraint trace drifted"):
            deployed._validate_transfer_trace_roster(ir, missing)

        extra = copy.deepcopy(manifest)
        extra["segments"].append(copy.deepcopy(next(
            segment for segment in extra["segments"]
            if segment.get("op") == "decaf.ack"
        )))
        with self.assertRaisesRegex(ValueError, "constraint trace drifted"):
            deployed._validate_transfer_trace_roster(ir, extra)

        wrong_count = copy.deepcopy(manifest)
        shared_secret = next(
            segment for segment in wrong_count["segments"]
            if segment.get("op") == "decaf.shared_secret"
        )
        shared_secret["constraint_count"] += 1
        with self.assertRaisesRegex(ValueError, "constraint trace drifted"):
            deployed._validate_transfer_trace_roster(ir, wrong_count)

        wrong_ir_count = copy.deepcopy(ir)
        net_balance = next(
            segment for segment in wrong_ir_count["segments"]
            if segment.get("op") == "decaf.net_balance_commitment"
        )
        net_balance["constraint_count"] += 1
        with self.assertRaisesRegex(ValueError, "IR op/count join drifted"):
            deployed._validate_transfer_trace_roster(
                wrong_ir_count, manifest
            )

    def test_current_transfer_plan_census_and_layouts_fail_closed(
        self,
    ) -> None:
        formal = self.root / "crates/core/component/shielded-pool/formal"
        ir = json.loads(
            (formal / "transfer-deployed-slice-ir.json").read_text()
        )
        manifest = json.loads(
            (
                self.root / "tools/gnark/artifacts/transfer/"
                "transfer-manifest.json"
            ).read_text()
        )
        plan = deployed._validate_transfer_refinement_plan(ir, manifest)
        trace_by_index = {
            segment["index"]: segment
            for segment in manifest["segments"]
            if segment.get("constraint_count", 0) > 0
        }
        self.assertEqual(len(plan.segments), len(deployed.TRANSFER_TRACE_SPECS))
        for spec in deployed.TRANSFER_TRACE_SPECS:
            segment = plan.segments[spec.label]
            trace = trace_by_index[segment["index"]]
            with self.subTest(provider=spec.label):
                self.assertEqual(segment["op"], spec.op)
                self.assertEqual(tuple(trace["args"]), spec.args)
                self.assertEqual(
                    segment["constraint_count"], spec.constraint_count
                )
                self.assertEqual(
                    len(segment["template_equivalence_witness"][
                        "canonical_local_to_deployed_wire_seating"
                    ]),
                    spec.local_wire_count,
                )
                if spec.key is not None:
                    self.assertEqual(
                        segment["proof_template_id"], spec.key
                    )

        wrong_provider = copy.deepcopy(ir)
        transmission = next(
            segment for segment in wrong_provider["segments"]
            if segment["index"]
            == plan.segments["sender_transmission_equivalent"]["index"]
        )
        retired = (
            "decaf.assert_equivalent@"
            "9751d805fdd40e93d62fabd52d76b13e4e7ca901146868768b29fc40d8ed9c83"
        )
        transmission["proof_template_id"] = retired
        transmission["template_equivalence_witness"][
            "proof_template_id"
        ] = retired
        with self.assertRaisesRegex(
            ValueError,
            "sender_transmission_equivalent.*provider drifted",
        ):
            deployed._validate_transfer_refinement_plan(
                wrong_provider, manifest
            )

        for label, left, right, failure in (
            ("sender_ack", 3003, 3004, "sender_ack.*seating"),
            (
                "sender_core_shared_secret",
                7333,
                7334,
                "sender_core_shared_secret.*seating",
            ),
            (
                "detection_encryption",
                2113,
                2114,
                "detection transcript.*seating",
            ),
            ("net_balance", 732, 861, "net-balance.*seating"),
        ):
            wrong_layout = copy.deepcopy(ir)
            segment = next(
                candidate for candidate in wrong_layout["segments"]
                if candidate["index"] == plan.segments[label]["index"]
            )
            seating = segment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            seating[left], seating[right] = seating[right], seating[left]
            with self.subTest(layout=label):
                with self.assertRaisesRegex(ValueError, failure):
                    deployed._validate_transfer_refinement_plan(
                        wrong_layout, manifest
                    )

    def test_transfer_asset_nonzero_inverse_seating_is_discovered(
        self,
    ) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        nonzero = next(
            segment for segment in ir["segments"]
            if segment["op"] == "assert.ne"
        )
        seating = nonzero["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[1], seating[2] = seating[2], seating[1]
        source = deployed.render_transfer_refinement_seams(ir, manifest)
        self.assertIn(
            f"facts.assetRegistry.AssertNeSeg{nonzero['index']}.2",
            source,
        )
        self.assertIn(
            f"Seg{nonzero['index']}.wireSeating\n"
            "        2",
            source,
        )

    def test_transfer_protocol_argument_permutations_fail_closed(
        self,
    ) -> None:
        """Equal-support provider permutations cannot change protocol roles."""

        ir, manifest = self.transfer_refinement_fixture()
        plan = deployed._validate_transfer_refinement_plan(ir, manifest)
        cases = (
            (
                "threshold_flag",
                129,
                258,
                "Transfer threshold protocol arguments",
            ),
            (
                "sender_compliance_leaf",
                15,
                21,
                "Transfer sender_compliance_leaf protocol arguments",
            ),
            (
                "receiver_compliance_path",
                39,
                40,
                "Transfer receiver_compliance_path protocol arguments",
            ),
            (
                "statement_hash",
                1,
                7,
                "Transfer statement protocol arguments",
            ),
            (
                "statement_assert",
                1,
                9,
                "Transfer statement assertion protocol arguments",
            ),
        )
        for label, left, right, error in cases:
            bad = copy.deepcopy(ir)
            target_index = plan.segments[label]["index"]
            segment = next(
                item
                for item in bad["segments"]
                if item["index"] == target_index
            )
            seating = segment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            seating[left], seating[right] = seating[right], seating[left]
            with self.subTest(label=label):
                with self.assertRaisesRegex(ValueError, error):
                    deployed._validate_transfer_refinement_plan(
                        bad, manifest
                    )

    def test_withdrawal_plan_is_exhaustive_dynamic_and_current(
        self,
    ) -> None:
        ir, manifest = self.withdrawal_plan_fixture()
        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)
        self.assertEqual(len(plan.segments), 56)
        self.assertEqual(
            set(spec.fact for spec in deployed.WITHDRAWAL_TRACE_SPECS),
            set(deployed.WITHDRAWAL_FACT_FIELDS),
        )
        self.assertEqual(
            Counter(
                spec.fact for spec in deployed.WITHDRAWAL_TRACE_SPECS
            ),
            Counter(deployed.WITHDRAWAL_FACT_PROVIDER_COUNTS),
        )
        self.assertEqual(
            [
                plan.segments[spec.label]["index"]
                for spec in deployed.WITHDRAWAL_TRACE_SPECS
            ],
            list(range(503, 671, 3)),
        )
        self.assertEqual(
            sum(
                spec.constraint_count
                for spec in deployed.WITHDRAWAL_TRACE_SPECS
            ),
            57_689,
        )
        self.assertEqual(
            set(plan.bindings),
            set(deployed.WITHDRAWAL_BINDING_ARITIES),
        )
        self.assertGreater(
            min(
                term["wire_id"]
                for binding in plan.bindings.values()
                for expression in binding["expressions"]
                for term in expression["terms"]
            ),
            200_000,
        )
        self.assertEqual(
            (
                plan.segments["asset_gap"]["constraint_count"],
                len(
                    plan.segments["asset_gap"][
                        "template_equivalence_witness"
                    ]["canonical_local_to_deployed_wire_seating"]
                ),
            ),
            (3542, 3046),
        )
        asset_leaf = plan.segments["asset_leaf"]
        self.assertEqual(
            (
                asset_leaf["constraint_count"],
                len(
                    asset_leaf["template_equivalence_witness"][
                        "canonical_local_to_deployed_wire_seating"
                    ]
                ),
            ),
            (390, 396),
        )
        self.assertEqual(
            asset_leaf["proof_template_id"],
            deployed.WITHDRAWAL_ASSET_LEAF_KEY,
        )
        self.assertEqual(
            plan.segments["sender_compliance_leaf"]["constraint_count"],
            430,
        )
        self.assertEqual(
            len(
                plan.segments["sender_compliance_path"][
                    "template_equivalence_witness"
                ]["canonical_local_to_deployed_wire_seating"]
            ),
            5849,
        )
        self.assertEqual(
            plan.segments["sender_compliance_path"][
                "proof_template_id"
            ],
            deployed.WITHDRAWAL_COMPLIANCE_PATH_KEY,
        )
        self.assertEqual(
            len(
                plan.segments["sender_compliance_leaf"][
                    "template_equivalence_witness"
                ]["canonical_local_to_deployed_wire_seating"]
            ),
            439,
        )
        self.assertEqual(
            plan.segments["sender_compliance_leaf"][
                "proof_template_id"
            ],
            deployed.COMPLIANCE_LEAF_KEY,
        )
        self.assertIn(
            "asset_id=shared.asset_id",
            next(
                spec.args
                for spec in deployed.WITHDRAWAL_TRACE_SPECS
                if spec.label == "sender_compliance_leaf"
            ),
        )
        self.assertEqual(
            [
                spec.label
                for spec in deployed.WITHDRAWAL_TRACE_SPECS
                if spec.op == "assert.decaf_non_identity"
            ],
            [
                "auth_ak_non_identity",
                "sender_div_gen_non_identity",
                "sender_transmission_non_identity",
            ],
        )
        self.assertEqual(
            plan.segments["asset_id_nonzero"]["proof_template_id"],
            deployed.TRANSFER_ASSET_ID_NONZERO_KEY,
        )
        asset_ops = {
            spec.op
            for spec in deployed.WITHDRAWAL_TRACE_SPECS
            if spec.fact == "assetRegistry"
        }
        for obsolete_op in (
            "decaf.compress_to_field",
            "gadget.asset_registry_params_hash",
            "gadget.asset_registry_ring_hash",
        ):
            self.assertNotIn(obsolete_op, asset_ops)

    def test_withdrawal_action_and_exact_provider_inventory_are_dynamic(
        self,
    ) -> None:
        ir, manifest = self.withdrawal_plan_fixture()
        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)

        action = deployed.render_withdrawal_refinement_action(ir, manifest)
        self.assertIn(
            "import ShielddGnarkFormal.Deployed.Contracts."
            "ShieldedIcs20Withdrawal.CircuitFacts",
            action,
        )
        self.assertIn(
            "statePath24 (spend0StateProofPathAt rho)",
            action,
        )
        self.assertIn(
            "statePath24 (spend1StateProofPathAt rho)",
            action,
        )
        self.assertIn("3 * (23 - level.val) + sibling.val", action)
        self.assertNotIn("StateMembership925Bridge", action)
        self.assertNotRegex(action, r"Seg[0-9]+")
        for projection in (
            "def sender ",
            "def authorization ",
            "def required ",
            "def optional ",
            "def change ",
            "def assetProof ",
            "def senderCompliance ",
            "def withdrawal ",
            "def action ",
        ):
            self.assertIn(projection, action)

        wrong_path_order = copy.deepcopy(ir)
        required_segment = next(
            segment
            for segment in wrong_path_order["segments"]
            if segment["index"]
            == plan.segments["required_state_path"]["index"]
        )
        seating = required_segment["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        first, second = deployed.STATE_PATH_PROVIDER_LOCALS[:2]
        seating[first], seating[second] = seating[second], seating[first]
        with self.assertRaisesRegex(
            ValueError, "state-path level reversal drifted"
        ):
            deployed.render_withdrawal_refinement_action(
                wrong_path_order, manifest
            )

        static = (
            self.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "ShieldedIcs20WithdrawalSemanticTranslator.lean"
        ).read_text()
        self.assertIn(
            "import ShielddGnarkFormal.Deployed.Contracts."
            "ShieldedIcs20Withdrawal.RefinementAction",
            static,
        )
        for generated_projection in (
            "def directPath16",
            "def requiredPath",
            "def optionalPath",
            "def action",
        ):
            self.assertNotIn(generated_projection, static)

        providers = deployed.render_withdrawal_exact_providers(
            ir, manifest
        )
        self.assertEqual(providers.count(".contract.spec rho"), 56)
        for fact in deployed.WITHDRAWAL_FACT_FIELDS:
            self.assertIn(
                f"structure {core.camel(fact)}ExactProviders",
                providers,
            )
            self.assertIn(f"  {fact} :", providers)
        for spec in deployed.WITHDRAWAL_TRACE_SPECS:
            segment = plan.segments[spec.label]
            self.assertIn(
                f"  {core.lower_camel(spec.label)} : "
                f"Seg{segment['index']}.contract.spec rho",
                providers,
            )
            self.assertIn(
                f"facts.{spec.fact}."
                f"{core.camel(spec.op)}Seg{segment['index']}",
                providers,
            )
        self.assertNotIn("axiom ", action + providers)
        self.assertNotIn("sorry", action + providers)

    def test_current_withdrawal_plan_census_and_window2_seats_fail_closed(
        self,
    ) -> None:
        formal = self.root / "crates/core/component/shielded-pool/formal"
        ir = deployed.load(
            formal
            / "shielded_ics20_withdrawal-deployed-slice-ir.json"
        )
        manifest = deployed.load(
            self.root
            / "tools/gnark/artifacts/shielded_ics20_withdrawal/"
            "shielded_ics20_withdrawal-manifest.json"
        )
        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)
        trace_by_index = {
            segment["index"]: segment
            for segment in manifest["segments"]
            if segment.get("constraint_count", 0) > 0
        }
        self.assertEqual(
            len(plan.segments), len(deployed.WITHDRAWAL_TRACE_SPECS)
        )
        for spec in deployed.WITHDRAWAL_TRACE_SPECS:
            segment = plan.segments[spec.label]
            trace = trace_by_index[segment["index"]]
            with self.subTest(provider=spec.label):
                self.assertEqual(segment["op"], spec.op)
                self.assertEqual(tuple(trace["args"]), spec.args)
                self.assertEqual(
                    segment["constraint_count"], spec.constraint_count
                )
                self.assertEqual(
                    len(segment["template_equivalence_witness"][
                        "canonical_local_to_deployed_wire_seating"
                    ]),
                    spec.local_wire_count,
                )
                if spec.key is not None:
                    self.assertEqual(
                        segment["proof_template_id"], spec.key
                    )

        config = deployed._withdrawal_dtk_seating_config(plan)
        self.assertEqual(
            (
                config["dtk"],
                config["compress"],
                config["non_identity"],
                config["x0"],
                config["x1"],
                config["y0"],
                config["y1"],
            ),
            (7, 8, 9, 5958, 5966, 5959, 5967),
        )

        for mutation in ("count", "locals", "provider"):
            bad = copy.deepcopy(ir)
            dtk = next(
                segment
                for segment in bad["segments"]
                if segment["index"] == plan.segments["sender_dtk"]["index"]
            )
            if mutation == "count":
                dtk["constraint_count"] += 1
            elif mutation == "locals":
                dtk["template_equivalence_witness"][
                    "canonical_local_to_deployed_wire_seating"
                ].pop()
            else:
                provider = "decaf.diversified_transmission_key@" + "0" * 64
                dtk["proof_template_id"] = provider
                dtk["template_equivalence_witness"][
                    "proof_template_id"
                ] = provider
            with self.subTest(dtk_mutation=mutation):
                with self.assertRaises(ValueError):
                    deployed._validate_withdrawal_refinement_plan(
                        bad, manifest
                    )

        for mutation in ("term_count", "coefficient", "wire_order"):
            bad_manifest = copy.deepcopy(manifest)
            binding = next(
                item
                for item in bad_manifest["semantic_bindings"]
                if item["name"] == "sender.transmission.computed"
            )
            expression = binding["expressions"][0]
            if mutation == "term_count":
                expression["terms"].append(
                    copy.deepcopy(expression["terms"][0])
                )
            elif mutation == "coefficient":
                expression["terms"][0]["coefficient"] = "2"
            else:
                expression["terms"].reverse()
            with self.subTest(transmission_lc_mutation=mutation):
                with self.assertRaises(ValueError):
                    bad_plan = deployed._validate_withdrawal_refinement_plan(
                        ir, bad_manifest
                    )
                    deployed._withdrawal_dtk_seating_config(bad_plan)

        for label, left, right in (
            ("sender_dtk", 4961, 4969),
            ("sender_transmission_compress", 1, 2),
            ("sender_transmission_non_identity", 2, 3),
        ):
            bad = copy.deepcopy(ir)
            segment = next(
                item
                for item in bad["segments"]
                if item["index"] == plan.segments[label]["index"]
            )
            seating = segment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            seating[left], seating[right] = seating[right], seating[left]
            with self.subTest(seating=label):
                with self.assertRaises(ValueError):
                    bad_plan = deployed._validate_withdrawal_refinement_plan(
                        bad, manifest
                    )
                    deployed._withdrawal_dtk_seating_config(bad_plan)

    def test_withdrawal_core_semantic_seams_are_exhaustive_and_dynamic(
        self,
    ) -> None:
        ir, manifest = self.withdrawal_plan_fixture()
        plan = self.seat_current_withdrawal_core(ir, manifest)
        expected = deployed._withdrawal_core_provider_seats(plan)
        source = deployed.render_withdrawal_core_semantic_seams(
            ir, manifest
        )

        self.assertEqual(len(expected), 23)
        self.assertEqual(sum(len(seats) for seats in expected.values()), 306)
        self.assertEqual(
            tuple(expected), deployed.WITHDRAWAL_CORE_PROVIDER_LABELS
        )
        expected_imports = {
            deployed._withdrawal_semantic_import(plan.segments[label])
            for label in deployed.WITHDRAWAL_CORE_PROVIDER_LABELS
        }
        for module in expected_imports:
            self.assertEqual(
                source.splitlines().count(f"import {module}"),
                1,
                module,
            )
        self.assertEqual(
            len(re.findall(
                r"^theorem \w+SemanticSpec_of_exact$",
                source,
                re.MULTILINE,
            )),
            23,
        )
        self.assertEqual(source.count("Valuation (rho"), 23)
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod", source)
        self.assertIn("attribute [-instance] ZMod.instField", source)
        self.assertIn("choiceFreeWithdrawalCoreCommRing", source)
        self.assertNotIn("fin_cases level", source)
        self.assertNotIn("fin_cases sibling", source)
        self.assertEqual(
            source.count("rcases level with ⟨level, level_lt⟩"),
            2,
        )
        self.assertEqual(
            source.count("rcases sibling with ⟨sibling, sibling_lt⟩"),
            2,
        )
        for label, seats in expected.items():
            segment = plan.segments[label]
            stable = core.camel(label)
            lower = core.lower_camel(label)
            self.assertIn(
                f"def {stable}Valuation", source
            )
            self.assertIn(
                f"theorem {lower}SemanticSpec_of_exact", source
            )
            self.assertIn(
                f"Seg{segment['index']}.localRho rho", source
            )
            for local, deployed_wire in seats:
                if label in {
                    "required_state_path",
                    "optional_state_path",
                } and local in {
                    base + 363 * level
                    for level in range(24)
                    for base in deployed.STATE_PATH_PROVIDER_BASES
                }:
                    continue
                self.assertIn(
                    f"theorem {lower}At{local}", source
                )
                self.assertIn(
                    f"wireSeating {local} = {deployed_wire}", source
                )

        for label, slot in (
            ("required_state_path", "spend0"),
            ("optional_state_path", "spend1"),
        ):
            lower = core.lower_camel(label)
            self.assertEqual(
                {
                    int(index)
                    for index in re.findall(
                        rf"{slot}StateProofPath([0-9]+)", source
                    )
                },
                set(range(72)),
            )
            self.assertIn(
                f"theorem {lower}ProviderPath_eq", source
            )
        self.assertIn(
            "change RequiredStatePathValuation rho 290 = "
            "spend0StateProofPath69 rho",
            source,
        )
        self.assertIn(
            "change OptionalStatePathValuation rho 8639 = "
            "spend1StateProofPath0 rho",
            source,
        )
        self.assertIn("private theorem semanticNegOne", source)
        self.assertEqual(source.count("negOne, semanticNegOne"), 3)

        for forbidden in (
            "axiom ",
            "sorry",
            "ShieldedIcs20WithdrawalRefinement.C."
            "senderDivGenCompressedSpec",
        ):
            self.assertNotIn(forbidden, source)
        self.assertIn(
            "theorem senderDivGenCompressedSpec_of_exact", source
        )

        self.seat_current_withdrawal_adapters(ir, manifest)
        refinement = deployed.render_withdrawal_refinement_seams(
            ir, manifest
        )
        for label in (
            "sender_dtk",
            "sender_transmission_compress",
            "asset_leaf",
            "sender_compliance_leaf",
            "sender_compliance_assert",
            "required_nullifier_assert",
            "optional_synthetic_nullifier",
            "conservation_balance_compress",
        ):
            module = deployed._withdrawal_semantic_import(
                plan.segments[label]
            )
            self.assertEqual(
                refinement.splitlines().count(f"import {module}"),
                1,
                module,
            )
        self.assertIn(
            "CoreSemanticSeams", refinement
        )
        self.assertIn(
            "senderDivGenCompressedSpec_of_exact rho facts",
            refinement,
        )
        self.assertNotIn(
            "import ShielddGnarkFormal.Deployed."
            "ShieldedIcs20WithdrawalRefinement",
            refinement,
        )
        root = deployed.render_withdrawal_refinement_root(ir, manifest)
        self.assertTrue(
            root.startswith(
                "import ShielddGnarkFormal.Deployed.Contracts."
                "ShieldedIcs20Withdrawal.SpecificationConsequences\n"
            )
        )

        for label, pairs in expected.items():
            bad = copy.deepcopy(ir)
            segment = next(
                item
                for item in bad["segments"]
                if item["index"] == plan.segments[label]["index"]
            )
            local, deployed_wire = pairs[0]
            seating = segment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            other_local = pairs[1][0] if len(pairs) > 1 else 0
            seating[local], seating[other_local] = (
                seating[other_local],
                seating[local],
            )
            with self.assertRaisesRegex(
                ValueError,
                rf"Withdrawal (?:core )?{label} .*drifted",
            ):
                deployed.render_withdrawal_core_semantic_seams(
                    bad, manifest
                )

    def test_withdrawal_handwritten_translator_has_no_compiler_pins(
        self,
    ) -> None:
        """Compiler identities and seating terminate in generated seams."""

        translator = (
            self.root
            / "tools/gnark/lean/ShielddGnarkFormal/Deployed/"
            "ShieldedIcs20WithdrawalSemanticTranslator.lean"
        ).read_text()
        self.assertIn(
            "Contracts.ShieldedIcs20Withdrawal.CoreSemanticSeams",
            translator,
        )
        self.assertNotRegex(translator, r"\bSeg[0-9]+\b")
        self.assertNotIn("wireSeating", translator)
        compiler_specs = set(re.findall(
            r"Deployed\.Templates\.Semantics\.(T[A-Za-z0-9_]+)",
            translator,
        ))
        self.assertEqual(len(compiler_specs), 2)
        self.assertTrue(
            all(name.startswith("THistoryClassify_") for name in compiler_specs)
        )
        for seam in (
            "changeNoteCommitmentAsserted_of_exact",
            "requiredAnchorAsserted_of_exact",
            "optionalAnchorAsserted_of_exact",
            "optionalNullifierClaimed_eq_selected_of_exact",
            "optionalNullifierClaimed_eq_real_of_exact",
            "optionalNullifierClaimed_eq_synthetic_of_exact",
            "optionalAmount_eq_zero_of_exact",
            "requiredRkEquivalentSpec_of_exact",
            "optionalRkEquivalentSpec_of_exact",
        ):
            self.assertIn(seam, translator)
        self.assertNotIn("axiom ", translator)
        self.assertNotIn("sorry", translator)

    def test_withdrawal_balance_join_is_derived_from_current_plan(
        self,
    ) -> None:
        ir, manifest = self.withdrawal_plan_fixture()
        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)
        net_balance = plan.segments["conservation_net_balance"]
        compressor = plan.segments["conservation_balance_compress"]
        nb_seating = net_balance["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        compress_seating = compressor["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        bindings = plan.bindings
        computed = bindings["balance_commitment.computed"][
            "expressions"
        ]
        compact = [
            core.compact_semantic_expression(expression)
            for expression in computed
        ]
        x_runs, x_residual = compact[0]
        y_runs, y_residual = compact[1]
        seed_wire = x_residual[0]["wire_id"]
        self.assertEqual(seed_wire, y_residual[0]["wire_id"])

        x_wires = [
            run["start"] + run["stride"] * offset
            for run in x_runs
            for offset in range(run["count"])
        ]
        y_wires = [
            run["start"] + run["stride"] * offset
            for run in y_runs
            for offset in range(run["count"])
        ]
        for offset, wire in enumerate(x_wires[:149]):
            nb_seating[772 + 5 * offset] = wire
        for offset, wire in enumerate(x_wires[149:]):
            nb_seating[1520 + 8 * offset] = wire
        for offset, wire in enumerate(y_wires[:149]):
            nb_seating[773 + 5 * offset] = wire
        for offset, wire in enumerate(y_wires[149:]):
            nb_seating[1521 + 8 * offset] = wire
        for offset, wire in enumerate(x_wires):
            compress_seating[2 + offset] = wire
        for offset, wire in enumerate(y_wires):
            compress_seating[253 + offset] = wire

        compressed_terms = bindings["balance_commitment.fq"][
            "expressions"
        ][0]["terms"]
        minus_wire = compressed_terms[0]["wire_id"]
        plus_wire = compressed_terms[1]["wire_id"]
        nb_seating[129] = deployed._single_binding_wire(
            bindings, "spend0.note.amount"
        )
        nb_seating[258] = deployed._single_binding_wire(
            bindings, "spend1.note.amount"
        )
        nb_seating[387] = deployed._single_binding_wire(
            bindings, "output0.note.amount"
        )
        nb_seating[516] = deployed._single_binding_wire(
            bindings, "outbound.amount"
        )
        nb_seating[517] = seed_wire
        nb_seating[768] = deployed._single_binding_wire(
            bindings, "action.balance_blinding"
        )
        nb_seating[2320] = x_wires[-1]
        nb_seating[2321] = y_wires[-1]
        compress_seating[1] = seed_wire
        compress_seating[251] = x_wires[-1]
        compress_seating[502] = y_wires[-1]
        compress_seating[864] = minus_wire
        compress_seating[1204] = plus_wire

        seams = deployed._validate_withdrawal_conservation_seams(
            ir, manifest
        )
        self.assertEqual(
            seams.net_balance["index"],
            net_balance["index"],
        )
        self.assertEqual(
            seams.compressor["index"],
            compressor["index"],
        )
        self.assertGreater(seams.x_runs[0][0], 200_000)
        seating_files = deployed.render_withdrawal_balance_seating(
            ir, manifest
        )
        aggregate = next(
            source
            for path, source in seating_files.items()
            if path.name
            == "ShieldedIcs20WithdrawalBalanceSeating.lean"
        )
        self.assertIn(
            f"Seg{net_balance['index']}.wireSeating", aggregate
        )
        self.assertIn(
            f"Seg{compressor['index']}.wireSeating", aggregate
        )
        self.assertIn(str(seams.x_runs[0][0]), aggregate)
        self.assertNotIn("Seg46.wireSeating", aggregate)
        self.assertNotIn("Seg47.wireSeating", aggregate)

        bad = copy.deepcopy(ir)
        bad_net = next(
            segment
            for segment in bad["segments"]
            if segment["index"] == net_balance["index"]
        )
        bad_net["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ][517] += 1
        with self.assertRaisesRegex(
            ValueError,
            r"conservation_net_balance role/seating partition drifted",
        ):
            deployed._validate_withdrawal_conservation_seams(
                bad, manifest
            )

    def test_withdrawal_plan_fails_closed_on_every_join_boundary(
        self,
    ) -> None:
        ir, manifest = self.withdrawal_plan_fixture()

        missing = copy.deepcopy(manifest)
        missing["segments"] = [
            segment
            for segment in missing["segments"]
            if not (
                segment["op"] == "assert.ne"
                and segment["constraint_count"] == 1
            )
        ]
        with self.assertRaisesRegex(
            ValueError, "Withdrawal constraint trace drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(ir, missing)

        duplicate = copy.deepcopy(manifest)
        duplicate["segments"].append(
            copy.deepcopy(
                next(
                    segment
                    for segment in duplicate["segments"]
                    if segment["op"] == "assert.boolean"
                    and segment["args"] == ["var=is_regulated"]
                )
            )
        )
        with self.assertRaisesRegex(
            ValueError, "Withdrawal constraint trace drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(ir, duplicate)

        duplicate_index = copy.deepcopy(manifest)
        positive = [
            segment
            for segment in duplicate_index["segments"]
            if segment["constraint_count"] > 0
        ]
        positive[1]["index"] = positive[0]["index"]
        with self.assertRaisesRegex(
            ValueError, "positive source trace indices are malformed"
        ):
            deployed._validate_withdrawal_refinement_plan(
                ir, duplicate_index
            )

        wrong_action_binding = copy.deepcopy(manifest)
        routing_tag = next(
            binding
            for binding in wrong_action_binding["semantic_bindings"]
            if binding["name"] == "routing.tag"
        )
        routing_tag["expressions"][0]["terms"][0]["coefficient"] = "2"
        with self.assertRaisesRegex(ValueError, "is not one exact wire"):
            deployed._validate_withdrawal_refinement_plan(
                ir, wrong_action_binding
            )

        wrong_role = copy.deepcopy(ir)
        commitment = next(
            segment
            for segment in wrong_role["segments"]
            if segment["op"] == "gadget.note_commitment"
        )
        semantic_wires = deployed._semantic_binding_support({
            binding["name"]: binding
            for binding in manifest["semantic_bindings"]
        })
        commitment_wires = set(
            commitment["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
        )
        unexplained_wire = next(iter(semantic_wires - commitment_wires))
        commitment["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ][-1] = unexplained_wire
        commitment["wire_roles"]["input"].append(unexplained_wire)
        with self.assertRaisesRegex(
            ValueError, "unreviewed semantic role wires"
        ):
            deployed._validate_withdrawal_refinement_plan(
                wrong_role, manifest
            )

        wrong_provider = copy.deepcopy(ir)
        gap = next(
            segment
            for segment in wrong_provider["segments"]
            if segment["op"] == "gadget.asset_registry_gap"
        )
        gap["proof_template_id"] = (
            "gadget.asset_registry_gap@" + "d" * 64
        )
        gap["template_equivalence_witness"]["proof_template_id"] = (
            gap["proof_template_id"]
        )
        with self.assertRaisesRegex(
            ValueError, "asset_gap shape/provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                wrong_provider, manifest
            )

        wrong_digest = copy.deepcopy(ir)
        wrong_digest["segments"][0][
            "deployed_normalized_relation_sha256_hex"
        ] = "0" * 64
        with self.assertRaisesRegex(
            ValueError, "normalized relation digest/provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                wrong_digest, manifest
            )

        missing_witness_key = copy.deepcopy(ir)
        missing_witness_key["segments"][0][
            "template_equivalence_witness"
        ].pop("proof_template_id")
        with self.assertRaisesRegex(
            ValueError, "equivalence-witness provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                missing_witness_key, manifest
            )

        wrong_statement_provider = copy.deepcopy(ir)
        statement = next(
            segment
            for segment in wrong_statement_provider["segments"]
            if segment["proof_template_id"]
            == deployed.WITHDRAWAL_STATEMENT_FIRST_KEY
        )
        statement["proof_template_id"] = "statement.hash@" + "e" * 64
        statement["template_equivalence_witness"][
            "proof_template_id"
        ] = statement["proof_template_id"]
        with self.assertRaisesRegex(
            ValueError, "statement_block0 shape/provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                wrong_statement_provider, manifest
            )

        wrong_statement_order = copy.deepcopy(manifest)
        fields = next(
            binding
            for binding in wrong_statement_order["semantic_bindings"]
            if binding["name"] == "statement.fields"
        )
        fields["expressions"][0], fields["expressions"][1] = (
            fields["expressions"][1],
            fields["expressions"][0],
        )
        with self.assertRaisesRegex(
            ValueError, "exact ordered 21-field spine"
        ):
            deployed._validate_withdrawal_refinement_plan(
                ir, wrong_statement_order
            )

        wrong_statement_action = copy.deepcopy(manifest)
        statement_bindings = {
            binding["name"]: binding
            for binding in wrong_statement_action["semantic_bindings"]
        }
        field0 = statement_bindings["statement.field.000"]
        field1 = statement_bindings["statement.field.001"]
        field0["expressions"], field1["expressions"] = (
            field1["expressions"],
            field0["expressions"],
        )
        fields = statement_bindings["statement.fields"]["expressions"]
        fields[0], fields[1] = fields[1], fields[0]
        with self.assertRaisesRegex(
            ValueError, "Action projection"
        ):
            deployed._validate_withdrawal_refinement_plan(
                ir, wrong_statement_action
            )

        obsolete_gap = copy.deepcopy(ir)
        gap = next(
            segment
            for segment in obsolete_gap["segments"]
            if segment["op"] == "gadget.asset_registry_gap"
        )
        gap["proof_template_id"] = (
            "gadget.asset_registry_gap@"
            "591fb66ca52e78949435ff7a2c295491598433f2c79f6bc52f502bf9c7dc4b16"
        )
        gap["template_equivalence_witness"][
            "proof_template_id"
        ] = gap["proof_template_id"]
        gap["deployed_normalized_relation_sha256_hex"] = (
            gap["proof_template_id"].rsplit("@", 1)[-1]
        )
        with self.assertRaisesRegex(
            ValueError, "asset_gap shape/provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                obsolete_gap, manifest
            )

        obsolete_compliance = copy.deepcopy(ir)
        compliance = next(
            segment
            for segment in obsolete_compliance["segments"]
            if segment["op"] == "gadget.compliance_leaf"
        )
        compliance["proof_template_id"] = (
            "gadget.compliance_leaf@"
            "a9196c1f31383683ba070d601a8c3118e288bf3c77ebdd12bb6f95fa0c6e5c0c"
        )
        compliance["template_equivalence_witness"][
            "proof_template_id"
        ] = compliance["proof_template_id"]
        compliance[
            "deployed_normalized_relation_sha256_hex"
        ] = compliance["proof_template_id"].rsplit("@", 1)[-1]
        with self.assertRaisesRegex(
            ValueError, "sender_compliance_leaf shape/provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                obsolete_compliance, manifest
            )

        obsolete_asset_leaf = copy.deepcopy(ir)
        asset_leaf = next(
            segment
            for segment in obsolete_asset_leaf["segments"]
            if segment["op"] == "gadget.asset_registry_leaf_hash"
        )
        asset_leaf["proof_template_id"] = (
            next(iter(deployed.WITHDRAWAL_OBSOLETE_ASSET_LEAF_KEYS))
        )
        asset_leaf["template_equivalence_witness"][
            "proof_template_id"
        ] = asset_leaf["proof_template_id"]
        asset_leaf[
            "deployed_normalized_relation_sha256_hex"
        ] = asset_leaf["proof_template_id"].rsplit("@", 1)[-1]
        with self.assertRaisesRegex(
            ValueError, "asset_leaf shape/provider drifted"
        ):
            deployed._validate_withdrawal_refinement_plan(
                obsolete_asset_leaf, manifest
            )

    def test_withdrawal_registry_seams_pin_every_protocol_boundary(self) -> None:
        ir, manifest = self.withdrawal_plan_fixture()
        plan = self.seat_current_withdrawal_adapters(ir, manifest)
        segments = deployed._validate_withdrawal_registry_seams(ir, manifest)
        expected_labels = {
            "boolean": "is_regulated_boolean",
            "asset_path": "asset_path",
            "asset_root": "asset_root_assert",
            "asset_nonzero": "asset_id_nonzero",
            "asset_gap": "asset_gap",
            "gap_accept": "asset_gap_accept",
            "compliance_path": "sender_compliance_path",
        }
        self.assertEqual(
            {name: segment["index"] for name, segment in segments.items()},
            {
                name: plan.segments[label]["index"]
                for name, label in expected_labels.items()
            },
        )
        source = deployed._render_withdrawal_registry_fragment(ir, manifest)
        self.assertNotIn("fin_cases", source)
        self.assertEqual(
            source.count("rcases index with ⟨index, index_lt⟩"),
            2,
        )
        self.assertEqual(
            source.count("rcases level with ⟨level, level_lt⟩"),
            2,
        )
        self.assertEqual(
            source.count("rcases sibling with ⟨sibling, sibling_lt⟩"),
            2,
        )
        for theorem in (
            "assetMember_of_exact",
            "compliancePath_of_exact",
            "outboundAssetIdNonzero_of_exact",
            "isRegulatedBoolean_of_exact",
            "assetGap_of_exact",
        ):
            self.assertIn(f"theorem {theorem}", source)
        for path in ("assetProtocolPath", "senderProtocolPath"):
            self.assertIn(f"def {path}", source)
        for compiler_accessor in ("assetPath16", "senderPath16"):
            self.assertNotIn(f"def {compiler_accessor}", source)
        self.assertNotIn("Gates.select", source)
        for segment in segments.values():
            segment = segment["index"]
            self.assertIn(f"Seg{segment}", source)
        for obsolete in (7, 23, 24, 25, 26, 27, 31):
            self.assertNotIn(f"Seg{obsolete}", source)
        nonzero_index = segments["asset_nonzero"]["index"]
        gap_index = segments["asset_gap"]["index"]
        self.assertIn(
            f"facts.assetRegistry.AssertNeSeg{nonzero_index}.1", source
        )
        self.assertIn(f"Seg{gap_index}.localRho rho 594", source)
        self.assertIn(f"Seg{gap_index}.localRho rho 3044", source)
        self.assertIn(f"Seg{gap_index}.localRho rho 3043", source)
        self.assertIn(f"Seg{gap_index}.localRho rho 3045", source)

        bad_seat = copy.deepcopy(ir)
        bad_asset_path = next(
            segment
            for segment in bad_seat["segments"]
            if segment["index"] == segments["asset_path"]["index"]
        )
        bad_path_seating = bad_asset_path[
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        bad_path_seating[406], bad_path_seating[407] = (
            bad_path_seating[407],
            bad_path_seating[406],
        )
        with self.assertRaisesRegex(
            ValueError, r"asset path seating\[407\] drifted"
        ):
            deployed._validate_withdrawal_registry_seams(
                bad_seat, manifest
            )

        bad_role = copy.deepcopy(manifest)
        asset_path = next(
            binding
            for binding in bad_role["semantic_bindings"]
            if binding["name"] == "asset.path"
        )
        asset_path["expressions"][17]["terms"][0]["wire_id"] += 1
        with self.assertRaisesRegex(
            ValueError, "path run drifted"
        ):
            deployed._validate_withdrawal_registry_seams(ir, bad_role)

        bad_trace = copy.deepcopy(manifest)
        nonzero = next(
            segment
            for segment in bad_trace["segments"]
            if segment["op"] == "assert.ne"
        )
        nonzero["args"][1] = "rhs=1"
        with self.assertRaisesRegex(
            ValueError, "Withdrawal constraint trace drifted"
        ):
            deployed._validate_withdrawal_registry_seams(ir, bad_trace)

        inverse_first = copy.deepcopy(ir)
        nonzero = next(
            segment
            for segment in inverse_first["segments"]
            if segment["index"] == nonzero_index
        )
        nonzero_seating = nonzero[
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        nonzero[
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"][1:] = [
            nonzero_seating[2],
            nonzero_seating[1],
        ]
        source = deployed._render_withdrawal_registry_fragment(
            inverse_first, manifest
        )
        self.assertIn(
            f"facts.assetRegistry.AssertNeSeg{nonzero_index}.2", source
        )

    def test_withdrawal_refinement_root_closes_every_circuit_seam(self) -> None:
        ir, manifest = self.withdrawal_plan_fixture()
        plan = self.seat_current_withdrawal_adapters(
            ir, manifest
        )
        self.assertEqual(
            set(plan.segments),
            {spec.label for spec in deployed.WITHDRAWAL_TRACE_SPECS},
        )
        self.assertEqual(len(plan.segments), 56)
        core_ir = copy.deepcopy(ir)
        self.seat_current_withdrawal_core(core_ir, manifest)
        core_seams = deployed.render_withdrawal_core_semantic_seams(
            core_ir, manifest
        )
        for theorem in (
            "changeNoteCommitmentAsserted_of_exact",
            "requiredAnchorAsserted_of_exact",
            "optionalAnchorAsserted_of_exact",
            "optionalNullifierClaimed_eq_selected_of_exact",
            "optionalNullifierClaimed_eq_real_of_exact",
            "optionalNullifierClaimed_eq_synthetic_of_exact",
            "optionalAmount_eq_zero_of_exact",
            "requiredRkEquivalentSpec_of_exact",
            "optionalRkEquivalentSpec_of_exact",
        ):
            self.assertIn(f"theorem {theorem}", core_seams)

        semantic = inspect.getsource(
            deployed._render_withdrawal_semantic_seams_monolith
        )
        for theorem in (
            "netXPerm",
            "netYPerm",
            "compressXPerm",
            "compressYPerm",
        ):
            self.assertIn(
                "Deployed.ShieldedIcs20WithdrawalBalanceSeating."
                f"{theorem}",
                semantic,
            )
        self.assertEqual(semantic.count(").Perm"), 4)
        cursor = 0
        for _ in range(4):
            start = semantic.index("  have hperm :", cursor)
            end = semantic.index("  have hsum", start)
            self.assertNotIn("decide +kernel", semantic[start:end])
            cursor = end

        balance_plan = deployed.WithdrawalBalanceSeams(
            net_balance=plan.segments["conservation_net_balance"],
            compressor=plan.segments["conservation_balance_compress"],
            spend0_amount_wire=141,
            spend1_amount_wire=220,
            change_amount_wire=299,
            outbound_amount_wire=7,
            blinding_wire=12,
            seed_wire=51716,
            x_runs=((51970, 5, 149), (52718, 8, 101)),
            y_runs=((51971, 5, 149), (52719, 8, 101)),
            compressed_minus_wire=53882,
            compressed_plus_wire=54222,
        )
        with mock.patch.object(
            deployed,
            "_validate_withdrawal_conservation_seams",
            return_value=balance_plan,
        ):
            balance_seating = deployed.render_withdrawal_balance_seating(
                ir, manifest
            )
            semantic_wrapper, semantic_parts = (
                deployed.render_withdrawal_semantic_seams(ir, manifest)
            )
            rendered_semantic = "\n".join(
                [semantic_wrapper, *semantic_parts.values()]
            )
        self.assertEqual(
            set(semantic_parts),
            {
                "SemanticBalanceInputs.lean",
                "SemanticBalanceFacts.lean",
                "SemanticBalanceCompression.lean",
                "SemanticBalanceComputedX.lean",
                "SemanticBalanceComputedY.lean",
                "SemanticBalanceCompressX.lean",
                "SemanticBalanceCompressY.lean",
                "SemanticBalanceSeams.lean",
                "SemanticRegistryPathSeams.lean",
                "SemanticRegistryGapSeams.lean",
            },
        )
        self.assertNotIn("Templates.Semantics.T", semantic_wrapper)
        for filename in (
            "SemanticBalanceSeams.lean",
            "SemanticRegistryPathSeams.lean",
            "SemanticRegistryGapSeams.lean",
        ):
            module = filename.removesuffix(".lean")
            self.assertEqual(
                semantic_wrapper.count(
                    "import ShielddGnarkFormal.Deployed.Contracts."
                    "ShieldedIcs20Withdrawal."
                    f"{module}"
                ),
                1,
            )
        self.assertIn(
            "theorem balanceCommitmentFq_eq_compressOutput",
            semantic_parts["SemanticBalanceCompression.lean"],
        )
        self.assertIn(
            "theorem balanceCommitmentComputed0_eq_netBalanceCommitmentX",
            semantic_parts["SemanticBalanceComputedX.lean"],
        )
        self.assertNotIn(
            "CircuitFacts",
            semantic_parts["SemanticBalanceComputedX.lean"],
        )
        for filename in (
            "SemanticBalanceComputedX.lean",
            "SemanticBalanceComputedY.lean",
        ):
            self.assertIn("rw [← hsum]\n  ac_rfl", semantic_parts[filename])
            self.assertNotIn(
                "linear_combination hsum", semantic_parts[filename]
            )
        for filename in (
            "SemanticBalanceCompressX.lean",
            "SemanticBalanceCompressY.lean",
        ):
            self.assertIn("rw [hsum]\n  ac_rfl", semantic_parts[filename])
            self.assertNotIn(
                "linear_combination hsum", semantic_parts[filename]
            )
        for filename in (
            "SemanticBalanceComputedX.lean",
            "SemanticBalanceComputedY.lean",
            "SemanticBalanceCompressX.lean",
            "SemanticBalanceCompressY.lean",
        ):
            self.assertNotIn("nbBlindAccState", semantic_parts[filename])
        self.assertIn(
            "theorem netBalanceCommitmentX_eq_delta",
            semantic_parts["SemanticBalanceInputs.lean"],
        )
        self.assertIn(
            "theorem compliancePath_of_exact",
            semantic_parts["SemanticRegistryPathSeams.lean"],
        )
        registry_path = semantic_parts["SemanticRegistryPathSeams.lean"]
        self.assertEqual(registry_path.count("] <;> rfl"), 4)
        self.assertEqual(
            registry_path.count("private theorem withdrawalSeamCoeff"), 9
        )
        self.assertEqual(
            registry_path.count(
                "rw [withdrawalSeamCoeff0, withdrawalSeamCoeff1, "
                "withdrawalSeamCoeff2, withdrawalSeamCoeff3, "
                "withdrawalSeamCoeff4]"
            ),
            2,
        )
        self.assertIn(
            "rw [withdrawalSeamCoeff1, withdrawalSeamCoeff2, "
            "withdrawalSeamCoeff3, withdrawalSeamCoeff4, "
            "withdrawalSeamCoeff5, withdrawalSeamCoeff6]",
            registry_path,
        )
        self.assertIn(
            "rw [withdrawalSeamCoeff2, withdrawalSeamCoeff3, "
            "withdrawalSeamCoeff4, withdrawalSeamCoeff5, "
            "withdrawalSeamCoeff6, withdrawalSeamCoeff7, "
            "withdrawalSeamCoeff8]",
            registry_path,
        )
        self.assertIn(
            "zero_add, one_mul, add_zero, add_assoc] using h",
            registry_path,
        )
        self.assertIn(
            "theorem assetGap_of_exact",
            semantic_parts["SemanticRegistryGapSeams.lean"],
        )
        semantic_segments = (
            *deployed._validate_withdrawal_registry_seams(
                ir, manifest
            ).values(),
            balance_plan.net_balance,
            balance_plan.compressor,
        )
        for module in {
            deployed._withdrawal_semantic_import(segment)
            for segment in semantic_segments
        }:
            self.assertEqual(
                rendered_semantic.splitlines().count(
                    f"import {module}"
                ),
                1,
                module,
            )
        self.assertEqual(len(balance_seating), 9)
        aggregate = next(
            source
            for path, source in balance_seating.items()
            if path.name == "ShieldedIcs20WithdrawalBalanceSeating.lean"
        )
        for theorem in (
            "netXPerm",
            "netYPerm",
            "compressXWires",
            "compressYWires",
            "compressXPerm",
            "compressYPerm",
        ):
            self.assertIn(f"theorem {theorem}", aggregate)

        refinement = deployed.render_withdrawal_refinement_seams(ir, manifest)
        for theorem in (
            "diversifiedTransmissionKey_of_exact",
            "transmissionCompressed_of_exact",
            "requiredNullifierAsserted_of_exact",
            "syntheticNullifierHash_of_exact",
            "assetLeafHash_of_exact",
            "complianceLeafHash_of_exact",
            "complianceRootAsserted_of_exact",
            "balanceCompressed_of_exact",
        ):
            self.assertIn(f"theorem {theorem}", refinement)
        self.assertIn(
            "import ShielddGnarkFormal.Deployed.NoteReshapeRefinement",
            refinement,
        )
        self.assertIn(
            "NoteReshapeRefinement."
            "circuitSpec_of_diversifiedTransmissionKey",
            refinement,
        )
        self.assertIn("have hDtkProtocol", refinement)
        leaf_index = plan.segments["asset_leaf"]["index"]
        compliance_index = plan.segments["sender_compliance_leaf"]["index"]
        self.assertEqual(
            refinement.count(
                f"id (α := SemanticF) (Seg{leaf_index}.localRho"
            ),
            6,
        )
        self.assertEqual(
            refinement.count(
                f"id (α := SemanticF) (Seg{compliance_index}.localRho"
            ),
            7,
        )
        self.assertIn("private theorem semanticOneNeZero", refinement)
        self.assertEqual(refinement.count("id_eq, zero_add"), 2)
        self.assertIn(
            "exact (semanticOneNeZero disabled).elim", refinement
        )
        self.assertNotIn("one_ne_zero disabled", refinement)

        statement = deployed.render_withdrawal_statement_seams(ir, manifest)
        for theorem in (
            "statementBlock0_of_exact",
            "statementBlock1_of_exact",
            "statementBlock2_of_exact",
            "statementPublicHash_of_exact",
            "statementHash_of_exact",
        ):
            self.assertIn(f"theorem {theorem}", statement)
        for misplaced in (
            "rw [firstDomain]\n  have",
            "rw [secondDomain]\n  have",
            "simp only [thirdDomain, thirdPad0, thirdPad1]\n  have",
        ):
            self.assertNotIn(misplaced, statement)
        first_block_tail = statement.split("rw [firstDomain]", 1)[1].split(
            "/-- The second exact statement segment", 1
        )[0]
        self.assertNotIn("congr 1 <;> ring", first_block_tail)
        for label in (
            "statement_block0",
            "statement_block1",
            "statement_block2",
            "statement_assert",
        ):
            segment = plan.segments[label]["index"]
            module = deployed._withdrawal_semantic_import(
                plan.segments[label]
            )
            self.assertEqual(
                statement.splitlines().count(f"import {module}"),
                1,
                module,
            )
            self.assertIn("facts.statementBinding.", statement)
            self.assertIn(f"Seg{segment}.localRho rho", statement)
        for obsolete_segment in (49, 50, 51, 52):
            self.assertNotIn(
                f"Seg{obsolete_segment}.localRho rho", statement
            )

        consequences = (
            deployed.render_withdrawal_specification_consequences(
                ir, manifest
            )
        )
        self.assertIn(
            "import ShielddGnarkFormal.ChoiceFreeZMod", consequences
        )
        self.assertIn(
            "attribute [-instance] ZMod.instField", consequences
        )
        self.assertIn(
            "choiceFreeWithdrawalSpecificationCommRing", consequences
        )
        self.assertIn(
            "theorem circuitFacts_of_relationAll", consequences
        )
        self.assertEqual(
            consequences.count("\ntheorem specification_"),
            len(deployed.WITHDRAWAL_SPECIFICATION_PREDICATES),
        )
        for predicate in deployed.WITHDRAWAL_SPECIFICATION_PREDICATES:
            theorem = deployed._specification_theorem_name(predicate)
            self.assertIn(f"theorem {theorem}", consequences)
        self.assertIn(
            "semanticCircuitFacts_of_exactSeams",
            consequences,
        )
        self.assertEqual(
            consequences.count(
                "exact (relationConservation rho h).2.2.2.2.2.2"
            ),
            2,
        )
        self.assertNotIn(
            "(relationConservation rho h).2.2.2.2.2.2.2",
            consequences,
        )
        self.assertNotIn(
            "spend.authRandomizer.val < 2 ^ 251 ∧\n"
            "        (action rho).optional = .dummy spend",
            consequences,
        )
        self.assertNotIn(
            "spend.randomizedVerificationKeyEncoding ∧\n"
            "        (action rho).optional = .dummy spend",
            consequences,
        )
        for seam in (
            "authAkNonIdentity_of_exact",
            "senderDivGenNonIdentity_of_exact",
            "diversifiedTransmissionKey_of_exact",
            "transmissionCompressed_of_exact",
            "requiredNullifierAsserted_of_exact",
            "syntheticNullifierHash_of_exact",
            "assetLeafHash_of_exact",
            "outboundAssetIdNonzero_of_exact",
            "isRegulatedBoolean_of_exact",
            "assetMember_of_exact",
            "assetGap_of_exact",
            "complianceLeafHash_of_exact",
            "compliancePath_of_exact",
            "complianceRootAsserted_of_exact",
            "balanceCompressed_of_exact",
            "statementHash_of_exact",
        ):
            self.assertIn(seam, consequences)

        root = deployed.render_withdrawal_refinement_root(ir, manifest)
        self.assertIn(
            "import ShielddGnarkFormal.Deployed.Contracts."
            "ShieldedIcs20Withdrawal.SpecificationConsequences",
            root,
        )
        self.assertIn(
            "theorem consensusAccepted_of_relationAll", root
        )
        self.assertIn(
            "theorem transactionAccepted_of_relationAll", root
        )
        self.assertIn(
            "Protocol.Common.CommittedTargetTransaction", root
        )
        self.assertIn(
            "CommittedWithdrawalEffects", root
        )
        self.assertIn(
            "transactionAccepted_of_circuitFacts", root
        )
        self.assertIn("ConsensusState SemanticF", root)
        self.assertIn("ActionDelta SemanticF", root)
        self.assertIn("WithdrawalPayload SemanticF", root)
        self.assertNotIn("TransactionDelta", root)
        self.assertNotIn(" Payload)", root)
        self.assertNotIn(
            "Protocol.ShieldedIcs20Withdrawal.Valid", root
        )
        self.assertNotIn(
            "Protocol.ShieldedIcs20Withdrawal.ExternalFacts", root
        )
        self.assertNotIn("valid_of_circuitFacts", root)
        asset_hash = consequences.index(
            "(assetLeafHash_of_exact rho facts)"
        )
        asset_nonzero = consequences.index(
            "(outboundAssetIdNonzero_of_exact rho facts)"
        )
        selector_boolean = consequences.index(
            "(isRegulatedBoolean_of_exact rho facts)"
        )
        asset_member = consequences.index(
            "(assetMember_of_exact rho facts)"
        )
        self.assertTrue(
            asset_hash < asset_nonzero < selector_boolean < asset_member
        )
        canonical = deployed.render_withdrawal_canonical_refinement(
            ir, manifest
        )
        self.assertIn(
            "namespace Shieldd.GnarkFormal.Deployed."
            "ShieldedIcs20WithdrawalRefinement",
            canonical,
        )
        self.assertIn(
            "theorem consensusAccepted_of_deployedRelation",
            canonical,
        )
        self.assertIn(
            "theorem transactionAccepted_of_deployedRelation",
            canonical,
        )
        self.assertIn(
            "Protocol.Common.CommittedTargetTransaction", canonical
        )
        self.assertIn(
            "CommittedWithdrawalEffects", canonical
        )
        self.assertNotIn("theorem valid_of", canonical)
        non_identity = deployed.render_non_identity_seams(ir, manifest)
        for theorem, label, wire in (
            (
                "authAkNonIdentity_of_exact",
                "auth_ak_non_identity",
                deployed._binding_wire_vector(
                    plan.bindings, "auth.ak", 2
                )[0],
            ),
            (
                "senderDivGenNonIdentity_of_exact",
                "sender_div_gen_non_identity",
                deployed._binding_wire_vector(
                    plan.bindings, "sender.div_gen", 2
                )[0],
            ),
        ):
            segment_data = plan.segments[label]
            segment = segment_data["index"]
            seating = segment_data["template_equivalence_witness"][
                "canonical_local_to_deployed_wire_seating"
            ]
            x_local = 1 if seating[1] == wire else 2
            self.assertEqual(seating[x_local], wire)
            self.assertIn(f"theorem {theorem}", non_identity)
            self.assertIn(
                f"facts.canonicalSender.AssertDecafNonIdentitySeg{segment}",
                non_identity,
            )
            self.assertIn(
                f"Seg{segment}.wireSeating {x_local} = {wire}",
                non_identity,
            )
        transmission_segment = plan.segments[
            "sender_transmission_non_identity"
        ]["index"]
        self.assertIn(
            "theorem senderTransmissionComputedNonIdentity_of_exact",
            non_identity,
        )
        self.assertIn(
            f"facts.canonicalSender.AssertDecafNonIdentitySeg{transmission_segment}.2",
            non_identity,
        )
        transmission_x = deployed._binding_expression(
            plan.bindings, "sender.transmission.computed", 2
        )[0]
        self.assertEqual(len(transmission_x["terms"]), 2)
        self.assertIn(
            f"Seg{transmission_segment}.localRho rho 2 + "
            f"Seg{transmission_segment}.localRho rho 3 ≠ 0",
            non_identity,
        )
        for local, term in zip(
            (2, 3), transmission_x["terms"], strict=True
        ):
            self.assertIn(
                f"Seg{transmission_segment}.wireSeating {local} = "
                f"{term['wire_id']}",
                non_identity,
            )
        bad_transmission_seating = copy.deepcopy(ir)
        bad_segment = next(
            segment
            for segment in bad_transmission_seating["segments"]
            if segment["index"] == transmission_segment
        )
        bad_seating = bad_segment["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        bad_seating[2], bad_seating[3] = bad_seating[3], bad_seating[2]
        with self.assertRaisesRegex(
            ValueError, "structured non-identity seating drifted"
        ):
            deployed._validate_non_identity_seams(
                bad_transmission_seating, manifest
            )
        self.assertIn("theorem authIvkReducedNonzero_of_exact", non_identity)
        self.assertNotIn("axiom ", non_identity)
        self.assertNotIn("sorry", non_identity)
        inverse_first = copy.deepcopy(ir)
        sender_index = plan.segments[
            "sender_div_gen_non_identity"
        ]["index"]
        auth_non_identity = next(
            segment
            for segment in inverse_first["segments"]
            if segment.get("index") == sender_index
        )
        sender_x = deployed._binding_wire_vector(
            plan.bindings, "sender.div_gen", 2
        )[0]
        auth_non_identity[
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"][1:] = [
            auth_non_identity["wire_roles"]["internal"][0],
            sender_x,
        ]
        inverse_first_source = deployed.render_non_identity_seams(
            inverse_first, manifest
        )
        self.assertIn(
            f"facts.canonicalSender.AssertDecafNonIdentitySeg{sender_index}.2",
            inverse_first_source,
        )
        self.assertIn(
            f"Seg{sender_index}.wireSeating 2 = {sender_x}",
            inverse_first_source,
        )
        for forbidden in (
            "axiom ",
            "sorry",
            "(dtk :",
            "(transmissionCompressed :",
            "(statementHash :",
        ):
            self.assertNotIn(forbidden, refinement + statement + root)

        bad_seat = copy.deepcopy(ir)
        third_index = plan.segments["statement_block2"]["index"]
        third = next(
            item
            for item in bad_seat["segments"]
            if item["index"] == third_index
        )
        third_seating = third["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        third_seating[483], third_seating[484] = (
            third_seating[484],
            third_seating[483],
        )
        with self.assertRaisesRegex(
            ValueError,
            r"Withdrawal statement block2 seating\[484\] drifted",
        ):
            deployed.render_withdrawal_statement_seams(
                bad_seat, manifest
            )

        bad_role = copy.deepcopy(manifest)
        block2 = next(
            binding
            for binding in bad_role["semantic_bindings"]
            if binding["name"] == "statement.hash.block2"
        )
        block2["expressions"][0]["terms"][3]["coefficient"] = "1"
        with self.assertRaisesRegex(
            ValueError,
            r"statement\.hash\.block2.*LC drifted",
        ):
            deployed.render_withdrawal_statement_seams(ir, bad_role)

        bad_non_identity = copy.deepcopy(ir)
        sender_non_identity_index = plan.segments[
            "sender_div_gen_non_identity"
        ]["index"]
        sender_non_identity = next(
            segment
            for segment in bad_non_identity["segments"]
            if segment.get("index") == sender_non_identity_index
        )
        sender_non_identity[
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"][1] = 14
        with self.assertRaisesRegex(
            ValueError, "sender.div_gen non-identity x seating"
        ):
            deployed._validate_non_identity_seams(
                bad_non_identity, manifest
            )

    def test_withdrawal_crypto_renderer_uses_explicit_roles_without_mutation(
        self,
    ) -> None:
        predecessor = {"index": 1, "op": "assert.boolean"}
        divgen = {"index": 3, "op": "decaf.compress_to_field"}
        dtk = {
            "index": 4,
            "op": "decaf.diversified_transmission_key",
        }
        transmission = {
            "index": 5,
            "op": "decaf.compress_to_field",
        }
        ir = {
            "circuit": "shielded_ics20_withdrawal",
            "segments": [predecessor, divgen, dtk, transmission],
        }
        manifest = {
            "circuit": "shielded_ics20_withdrawal",
            "semantic_bindings": [
                {"name": "sender.div_gen_fq", "expressions": []},
                {
                    "name": "sender.transmission.computed",
                    "expressions": [],
                },
                {"name": "sender.transmission.fq", "expressions": []},
            ],
        }
        original_ir = copy.deepcopy(ir)
        original_manifest = copy.deepcopy(manifest)
        config = {"circuit": "shielded_ics20_withdrawal"}
        rendered_seating = {Path("DtkSeating.lean"): "seating"}
        plan = deployed.WithdrawalRefinementPlan(
            segments={
                "sender_div_gen_compress": divgen,
                "sender_dtk": dtk,
                "sender_transmission_compress": transmission,
            },
            bindings={},
        )

        def render(
            received_ir: dict,
            received_manifest: dict,
            **kwargs: object,
        ) -> str:
            self.assertIs(received_ir, ir)
            self.assertIs(received_manifest, manifest)
            self.assertEqual(
                kwargs["crypto_segments"],
                (divgen, dtk, transmission),
            )
            self.assertEqual(
                kwargs["bindings"],
                core.SharedCryptoBindings(
                    transmission_computed=
                        "sender.transmission.computed",
                    divgen_fq="sender.div_gen_fq",
                    transmission_fq="sender.transmission_fq",
                    transmission_computed_accessor=
                        "senderTransmissionComputed",
                    divgen_fq_accessor="senderDivGenFq",
                    transmission_fq_accessor="senderTransmissionFq",
                ),
            )
            self.assertEqual(
                kwargs["seating_module"],
                "Shieldd.GnarkFormal.Deployed."
                "ShieldedIcs20WithdrawalDtkSeating",
            )
            self.assertEqual(kwargs["generator"], deployed.GENERATOR)
            return "rendered source"

        with (
            mock.patch.object(
                deployed,
                "_validate_withdrawal_refinement_plan",
                return_value=plan,
            ),
            mock.patch.object(
                deployed,
                "_withdrawal_dtk_seating_config",
                return_value=config,
            ),
            mock.patch.object(
                core, "render_semantic_seams", side_effect=render
            ) as render_mock,
            mock.patch.object(
                core,
                "split_semantic_seams",
                return_value=("wrapper", {"Part.lean": "part"}),
            ) as split_mock,
            mock.patch.object(
                deployed,
                "_render_withdrawal_crypto_seating",
                return_value=rendered_seating,
            ),
        ):
            wrapper, parts, seating = (
                deployed.render_withdrawal_crypto_seams(ir, manifest)
            )

        self.assertEqual(ir, original_ir)
        self.assertEqual(manifest, original_manifest)
        self.assertEqual(wrapper, "wrapper")
        self.assertEqual(parts, {"Part.lean": "part"})
        self.assertEqual(seating, rendered_seating)
        render_mock.assert_called_once()
        split_mock.assert_called_once_with(
            ir,
            "rendered source",
            generator=deployed.GENERATOR,
        )

    def test_withdrawal_dtk_seating_config_is_complete_and_exact(self) -> None:
        formal = self.root / "crates/core/component/shielded-pool/formal"
        ir = deployed.load(
            formal
            / "shielded_ics20_withdrawal-deployed-slice-ir.json"
        )
        manifest = deployed.load(
            self.root
            / "tools/gnark/artifacts/shielded_ics20_withdrawal/"
            "shielded_ics20_withdrawal-manifest.json"
        )
        plan = deployed._validate_withdrawal_refinement_plan(ir, manifest)
        self.assertEqual(
            deployed._withdrawal_dtk_seating_config(plan),
            {
                "circuit": "shielded_ics20_withdrawal",
                "module": "ShieldedIcs20Withdrawal",
                "dtk": 7,
                "compress": 8,
                "non_identity": 9,
                "x0": 5958,
                "x1": 5966,
                "y0": 5959,
                "y1": 5967,
            },
        )

    def test_transfer_crypto_renderer_uses_seg15_quotient_invariance(
        self,
    ) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        plan = deployed._validate_transfer_refinement_plan(ir, manifest)

        config = deployed._transfer_dtk_seating_config(plan)
        self.assertEqual(config["dtk"], plan.segments["sender_dtk"]["index"])
        self.assertEqual(
            config["equivalent"],
            plan.segments["sender_transmission_equivalent"]["index"],
        )
        self.assertEqual(
            (config["x0"], config["x1"], config["y0"], config["y1"]),
            (6775, 6783, 6776, 6784),
        )

        wrapper, parts, seating_files = (
            deployed.render_transfer_crypto_seams(ir, manifest)
        )
        self.assertEqual(parts, {})
        self.assertIn("import ShielddGnarkFormal.ChoiceFreeZMod", wrapper)
        self.assertIn("attribute [-instance] ZMod.instField", wrapper)
        self.assertIn("choiceFreeTransferCryptoCommRing", wrapper)
        for theorem in (
            "senderTransmissionComputed0_eq_dtkOutX",
            "senderTransmissionComputed1_eq_dtkOutY",
            "senderTransmissionEquivalentComputedX",
            "senderTransmissionEquivalentComputedY",
            "senderTransmissionEquivalentSpec_of_semantic",
            "senderTransmissionCompressedSpec_of_semantic",
        ):
            self.assertIn(f"theorem {theorem}", wrapper)
        self.assertIn(
            "Decaf377Assumptions.compress_respects_decafEquivalent",
            wrapper,
        )
        self.assertIn(
            "semantic.senderTransmissionEquivalent",
            wrapper,
        )
        self.assertIn(
            "semantic.senderTransmissionCompress",
            wrapper,
        )
        self.assertIn(
            "Protocol.Common.Decaf.diversifiedTransmissionKey",
            wrapper,
        )
        self.assertIn(
            "Protocol.Common.Decaf.onCurve",
            wrapper,
        )
        self.assertIn(
            "unfold Decaf377Assumptions.AssertEquivalentSpec",
            wrapper,
        )
        self.assertEqual(wrapper.count("ring_nf at h ⊢"), 2)
        self.assertNotIn(
            "simpa only [\n"
            "      SenderTransmissionEquivalentValuation",
            wrapper,
        )
        for forbidden in (
            "dtkOutX_eq_transmissionCompressInputX",
            "dtkOutY_eq_transmissionCompressInputY",
        ):
            self.assertNotIn(forbidden, wrapper)
        self.assertEqual(len(seating_files), 1)
        aggregate = next(
            source
            for path, source in seating_files.items()
            if path.name == "TransferCryptoSeating.lean"
        )
        for theorem in (
            "dtkXWires",
            "dtkYWires",
            "equivalentXWires",
            "equivalentYWires",
            "dtkX",
            "dtkY",
            "equivalentX",
            "equivalentY",
        ):
            self.assertIn(f"theorem {theorem}", aggregate)
        self.assertIn(f"abbrev F := Seg{config['dtk']}.F", aggregate)
        self.assertEqual(aggregate.count("(rho : Nat → F)"), 4)
        self.assertNotIn("Nat → DeployedF", aggregate)
        self.assertNotIn("List.range 251", aggregate)
        for source in (wrapper, *seating_files.values()):
            self.assertNotIn("axiom ", source)
            self.assertNotIn("sorry", source)

        wrong_seat = copy.deepcopy(ir)
        wrong_plan = deployed._validate_transfer_refinement_plan(
            wrong_seat, manifest
        )
        seating = wrong_plan.segments[
            "sender_transmission_equivalent"
        ]["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[2], seating[3] = seating[3], seating[2]
        with self.assertRaisesRegex(
            ValueError,
            "Transfer DTK quotient-equivalence seating",
        ):
            deployed.render_transfer_crypto_seams(wrong_seat, manifest)

        for mutation, failure in (
            (
                lambda binding: binding["expressions"][0]["terms"].append(
                    copy.deepcopy(binding["expressions"][0]["terms"][0])
                ),
                "coordinate LC drifted",
            ),
            (
                lambda binding: binding["expressions"][0]["terms"][0].update(
                    coefficient="2"
                ),
                "coordinate LC drifted",
            ),
            (
                lambda binding: binding["expressions"][0]["terms"][0].update(
                    wire_id=6767
                ),
                "Transfer DTK output seating",
            ),
        ):
            wrong_plan = copy.deepcopy(plan)
            binding = wrong_plan.bindings["sender.transmission.computed"]
            mutation(binding)
            with self.subTest(binding_failure=failure):
                with self.assertRaisesRegex(ValueError, failure):
                    deployed._transfer_dtk_seating_config(wrong_plan)

        wrong_consumer = copy.deepcopy(ir)
        wrong_plan = deployed._validate_transfer_refinement_plan(
            wrong_consumer, manifest
        )
        seating = wrong_plan.segments[
            "sender_transmission_compress"
        ]["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[365], seating[364] = seating[364], seating[365]
        with self.assertRaisesRegex(
            ValueError,
            "Transfer core sender_transmission_compress seating",
        ):
            deployed.render_transfer_crypto_seams(
                wrong_consumer, manifest
            )

    def test_transfer_transcript_renderer_closes_action_and_public_hash(
        self,
    ) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        source = deployed.render_transfer_transcript_seams(ir, manifest)

        self.assertTrue(
            all(line == line.rstrip() for line in source.splitlines())
        )
        self.assertIn(
            "open Shieldd.GnarkFormal.Deployed.TransferRefinement",
            source,
        )
        self.assertEqual(
            source.count(
                "import ShielddGnarkFormal.Deployed.Contracts.Transfer."
                "ActionAckSeams"
            ),
            1,
        )
        self.assertNotIn("Protocol.Common.Point.ext", source)

        for theorem in (
            "thresholdFlag_of_semantic",
            "transcriptFlagBooleanCircuit_of_semantic",
            "senderCoreSharedAck_eq_action",
            "senderCoreSharedDkPub_eq_action",
            "senderCoreSharedSecretBody_of_semantic",
            "senderExtSharedSecretBody_of_semantic",
            "outputCoreSharedSecretBody_of_semantic",
            "outputExtSharedSecretBody_of_semantic",
            "senderCoreSharedSecrets_of_semantic",
            "senderAmountEncryptionShared_eq_selected",
            "senderAmountEncryption_of_semantic",
            "senderAddressEncryption_of_semantic",
            "outputAmountEncryption_of_semantic",
            "outputAddressEncryption_of_semantic",
            "detectionIssuerShared_eq_senderCoreIssuer",
            "detectionBody_of_semantic",
            "detectionSpec_of_semantic",
            "metadataBinding_of_semantic",
            "complianceTranscript_of_semanticProviders",
            "statementHash_of_semantic",
            "statementPublicHash_of_semantic",
            "computedStatementHash_eq_protocol",
            "claimedStatementHash_of_semantic",
        ):
            self.assertIn(f"theorem {theorem}", source)
        for definition in (
            "senderCoreSharedAck",
            "senderCoreSharedDkPub",
            "senderCoreSharedSecrets",
            "senderExtSharedAck",
            "senderExtSharedDkPub",
            "senderExtSharedSecrets",
            "outputCoreSharedAck",
            "outputCoreSharedDkPub",
            "outputCoreSharedSecrets",
            "outputExtSharedAck",
            "outputExtSharedDkPub",
            "outputExtSharedSecrets",
            "detectionIssuerShared",
            "detectionIssuerCompressed",
            "computedStatementHash",
        ):
            self.assertIn(f"def {definition}", source)
        self.assertEqual(
            source.count("(semantic : TransferSemanticProviders rho)"),
            49,
        )
        self.assertIn(
            "AckBridge.toProtocolPoint (detectionIssuerShared rho) =",
            source,
        )
        self.assertIn(
            "(senderCoreSharedSecrets rho).issuer",
            source,
        )
        self.assertEqual(
            source.count("Protocol.Common.Point.mk.injEq"),
            9,
        )
        self.assertEqual(
            source.count("SharedSecretAt7332"),
            3,
        )
        self.assertNotIn("SharedSecretAt9534", source)
        self.assertEqual(
            source.count(
                "Decaf377Assumptions.CompressToFieldSpec\n"
                "        ⟨Deployed.Templates.Semantics."
            ),
            4,
        )
        self.assertNotIn(
            "unfold Protocol.Transfer.Concrete.transferSalt at h ⊢",
            source,
        )
        self.assertEqual(source.count("rw [← hcipher"), 8)
        self.assertGreaterEqual(source.count("rw [negOne]\n  ring"), 8)
        for current in (
            "Poseidon.Block0.block0Domain",
            "wireSeating 7323",
            "wireSeating 7331",
            "wireSeating 7333",
            "SenderAmountEncryptionValuation rho 977",
            "SenderAddressEncryptionValuation rho 1658",
            "SenderAddressEncryptionValuation rho 1924",
            "SenderAddressEncryptionValuation rho 2190",
            "DetectionEncryptionValuation rho 2107",
            "DetectionEncryptionValuation rho 2115",
        ):
            self.assertIn(current, source)
        self.assertIn(
            "Protocol.Transfer.Concrete.statementFields (C.action rho)",
            source,
        )
        self.assertIn("Trace.hash7 (StatementHashValuation rho)", source)
        self.assertIn("Trace.flatState7_38Lane1", source)
        self.assertIn("Trace.rawState7_38", source)
        self.assertIn("Trace.rawState7_output_eq_flatStateLane1", source)
        self.assertIn(
            "eight blocks are the independent 47-field protocol sponge",
            source,
        )
        self.assertNotIn("Trace.hash6 (StatementHashValuation rho)", source)

        self.assertIn(
            "change [statementFields0 rho,",
            source,
        )
        self.assertIn(
            "unfold Protocol.Transfer.Concrete.statementFields",
            source,
        )
        self.assertIn("optionalNullifier_of_action", source)
        self.assertIn("optionalRkEncoding_of_action", source)
        self.assertIn("transcript.routingRolesSwapped", source)
        self.assertIn(
            "rw [optionalNullifier_of_action, "
            "optionalRkEncoding_of_action,\n"
            "    optionalHistoryRequired_of_action]",
            source,
        )
        self.assertGreaterEqual(
            source.count("(show DeployedF from"),
            18,
        )
        self.assertIn(
            "(show DeployedF from\n"
            "          Protocol.Transfer.Concrete.unregulatedPolicyHash)",
            source,
        )
        self.assertNotIn(
            "Protocol.Transfer.Concrete.unregulatedPolicyHash +\n"
            "          Deployed.Templates.Semantics.TSelectField_",
            source,
        )
        self.assertIn(
            "] at hblock0 hblock1 hblock2 hblock3",
            source,
        )
        self.assertIn(
            "rw [detectionIssuerShared_eq_senderCoreIssuer rho] at "
            "hsenderCoreIssuerCompress",
            source,
        )
        self.assertNotIn(
            "Shared_eq_selected rho] at\n",
            source,
        )
        for active_local in (3003, 3011, 3004, 3012):
            self.assertIn(f"wireSeating {active_local}", source)
        self.assertIn(
            "TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1"
            ".AckSupport.output",
            source,
        )
        for retired in (
            "TDecafAck_c11f4aaa425fe4a5dc29a3567a300b52bfb748a783ccaff7878c77dd837c46c2",
            "wireSeating (268 + offset * 13)",
            "wireSeating (2206 + offset * 14)",
            "wireSeating (2061 + offset * 2)",
            "wireSeating (2062 + offset * 2)",
            "UserAckSupport.Outputs",
            "IssuerAckSupport.Outputs",
            "PoseidonBlock0.block0Domain",
            "Valuation rho 1475",
            "Valuation rho 2156",
            "Valuation rho 2422",
            "Valuation rho 2688",
            "DetectionEncryptionValuation rho 2605",
            "DetectionEncryptionValuation rho 2612",
        ):
            self.assertNotIn(retired, source)
        self.assertLess(len(source), 200_000)
        for forbidden in ("axiom ", "sorry", "native_decide"):
            self.assertNotIn(forbidden, source)

        adapters = deployed.render_transfer_refinement_adapters(
            ir, manifest
        )
        for accessor in (
            "senderCoreSharedSecretAt253",
            "senderExtSharedSecretAt252",
            "outputCoreSharedSecretAt252",
            "outputExtSharedSecretAt252",
            "detectionEncryptionAt33",
            "detectionEncryptionAt2107",
            "detectionEncryptionAt2115",
        ):
            self.assertIn(f"theorem {accessor}", adapters)
        for deliberately_composite in (
            "senderCoreSharedSecretAt7333",
            "detectionEncryptionAt67",
        ):
            self.assertNotIn(
                f"theorem {deliberately_composite}", adapters
            )

        action = deployed.render_transfer_action_seams(ir, manifest)
        self.assertIn("senderAckAt254", action)
        self.assertIn("receiverAckAt254", action)
        self.assertNotIn("senderAckAt255", action)
        self.assertNotIn("receiverAckAt255", action)
        self.assertNotIn("AckSupport.Outputs", action)

    def test_transfer_transcript_seams_are_split_by_protocol_fact(self) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        modules = deployed.render_transfer_transcript_seam_modules(ir, manifest)

        self.assertEqual(
            set(modules),
            {
                "TranscriptCoreSeams.lean",
                "EncryptionSeams.lean",
                "MetadataSeams.lean",
                "RoutingSeams.lean",
                "StatementSeams.lean",
                "TranscriptSeams.lean",
            },
        )
        self.assertIn(
            "theorem thresholdFlag_of_semantic",
            modules["TranscriptCoreSeams.lean"],
        )
        self.assertIn(
            "theorem detectionSpec_of_semantic",
            modules["EncryptionSeams.lean"],
        )
        self.assertIn(
            "theorem metadataBinding_of_semantic",
            modules["MetadataSeams.lean"],
        )
        self.assertIn(
            "structure TransferRoutingSemanticProviders",
            modules["RoutingSeams.lean"],
        )
        self.assertIn(
            "theorem claimedStatementHash_of_semantic",
            modules["StatementSeams.lean"],
        )
        self.assertNotIn(
            "theorem claimedStatementHash_of_semantic",
            modules["MetadataSeams.lean"],
        )

    def test_transfer_transcript_renderer_fails_closed_on_join_drift(
        self,
    ) -> None:
        ir, manifest = self.transfer_refinement_fixture()
        plan = deployed._validate_transfer_refinement_plan(ir, manifest)

        wrong_direct = copy.deepcopy(ir)
        direct_plan = deployed._validate_transfer_refinement_plan(
            wrong_direct, manifest
        )
        seating = direct_plan.segments["sender_ext_shared_secret"][
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        seating[252], seating[253] = seating[253], seating[252]
        with self.assertRaisesRegex(
            ValueError,
            "sender_ext_shared_secret transcript arguments",
        ):
            deployed.render_transfer_transcript_seams(
                wrong_direct, manifest
            )

        wrong_detection_point = copy.deepcopy(ir)
        detection_plan = deployed._validate_transfer_refinement_plan(
            wrong_detection_point, manifest
        )
        seating = detection_plan.segments["detection_encryption"][
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        seating[67], seating[68] = seating[68], seating[67]
        with self.assertRaisesRegex(
            ValueError,
            "detection transcript arguments",
        ):
            deployed.render_transfer_transcript_seams(
                wrong_detection_point, manifest
            )

        wrong_shared_point = copy.deepcopy(ir)
        shared_plan = deployed._validate_transfer_refinement_plan(
            wrong_shared_point, manifest
        )
        seating = shared_plan.segments["sender_core_shared_secret"][
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        seating[7333], seating[7334] = seating[7334], seating[7333]
        with self.assertRaisesRegex(
            ValueError,
            "sender_core_shared_secret transcript arguments",
        ):
            deployed.render_transfer_transcript_seams(
                wrong_shared_point, manifest
            )

        wrong_shared_ack = copy.deepcopy(ir)
        shared_ack_plan = deployed._validate_transfer_refinement_plan(
            wrong_shared_ack, manifest
        )
        seating = shared_ack_plan.segments[
            "sender_ext_shared_secret"
        ]["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[1810], seating[1811] = seating[1811], seating[1810]
        with self.assertRaisesRegex(
            ValueError,
            "sender_ext_shared_secret transcript arguments",
        ):
            deployed.render_transfer_transcript_seams(
                wrong_shared_ack, manifest
            )

        wrong_shared_dk = copy.deepcopy(ir)
        shared_dk_plan = deployed._validate_transfer_refinement_plan(
            wrong_shared_dk, manifest
        )
        seating = shared_dk_plan.segments[
            "output_core_shared_secret"
        ]["template_equivalence_witness"][
            "canonical_local_to_deployed_wire_seating"
        ]
        seating[4572], seating[4573] = seating[4573], seating[4572]
        with self.assertRaisesRegex(
            ValueError,
            "output_core_shared_secret transcript arguments",
        ):
            deployed.render_transfer_transcript_seams(
                wrong_shared_dk, manifest
            )

        wrong_effective_point = copy.deepcopy(ir)
        effective_point_plan = (
            deployed._validate_transfer_refinement_plan(
                wrong_effective_point, manifest
            )
        )
        seating = effective_point_plan.segments["effective_ring_pk"][
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        seating[2], seating[4] = seating[4], seating[2]
        with self.assertRaisesRegex(
            ValueError,
            "effective_ring_pk complete selection arguments",
        ):
            deployed.render_transfer_refinement_adapters(
                wrong_effective_point, manifest
            )

        wrong_ack_output = copy.deepcopy(ir)
        ack_output_plan = deployed._validate_transfer_refinement_plan(
            wrong_ack_output, manifest
        )
        seating = ack_output_plan.segments["receiver_ack"][
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        seating[3003], seating[3011] = seating[3011], seating[3003]
        with self.assertRaisesRegex(
            ValueError,
            "receiver_ack scalar, effective ring key, and complete output",
        ):
            deployed.render_transfer_refinement_adapters(
                wrong_ack_output, manifest
            )

        wrong_ack_base = copy.deepcopy(ir)
        ack_base_plan = deployed._validate_transfer_refinement_plan(
            wrong_ack_base, manifest
        )
        seating = ack_base_plan.segments["sender_ack"][
            "template_equivalence_witness"
        ]["canonical_local_to_deployed_wire_seating"]
        seating[253], seating[254] = seating[254], seating[253]
        with self.assertRaisesRegex(
            ValueError,
            "sender_ack scalar, effective ring key, and complete output",
        ):
            deployed.render_transfer_action_seams(
                wrong_ack_base, manifest
            )

        def assert_transcript_seat_drift(
            label: str,
            left: int,
            right: int,
            message: str,
        ) -> None:
            wrong = copy.deepcopy(ir)
            wrong_plan = deployed._validate_transfer_refinement_plan(
                wrong, manifest
            )
            seating = wrong_plan.segments[label][
                "template_equivalence_witness"
            ]["canonical_local_to_deployed_wire_seating"]
            seating[left], seating[right] = seating[right], seating[left]
            with self.assertRaisesRegex(ValueError, message):
                deployed.render_transfer_transcript_seams(
                    wrong, manifest
                )

        # Every nested transcript boundary is authenticated in full, even
        # when its provider-local seats are intentionally absent from the
        # stable handwritten adapter.
        for label, left, right, message in (
            (
                "salt0",
                256,
                261,
                "salt0 nonce and complete Poseidon output",
            ),
            (
                "sender_amount_encryption",
                1,
                2,
                "sender_amount_encryption complete shared point",
            ),
            (
                "sender_amount_encryption",
                710,
                976,
                "sender_amount_encryption complete shared point",
            ),
            (
                "sender_address_encryption",
                963,
                964,
                "sender_address_encryption complete shared point",
            ),
            (
                "metadata_ring_id_hash",
                1,
                2,
                "metadata_ring_id_hash metadata equality",
            ),
            (
                "metadata_sender_core_salt",
                2,
                3,
                "metadata_sender_core_salt metadata equality",
            ),
        ):
            assert_transcript_seat_drift(
                label, left, right, message
            )

        wrong_salt = copy.deepcopy(manifest)
        salt = next(
            binding
            for binding in wrong_salt["semantic_bindings"]
            if binding["name"] == "salt0"
        )
        salt["expressions"][0]["terms"][0]["coefficient"] = "1"
        with self.assertRaisesRegex(
            ValueError, "salt0.*LC drifted"
        ):
            deployed.render_transfer_transcript_seams(ir, wrong_salt)

        wrong_statement = copy.deepcopy(manifest)
        for binding_name in (
            "statement.field.003",
            "statement.fields",
        ):
            binding = next(
                candidate
                for candidate in wrong_statement["semantic_bindings"]
                if candidate["name"] == binding_name
            )
            expression = (
                binding["expressions"][0]
                if binding_name == "statement.field.003"
                else binding["expressions"][3]
            )
            expression["terms"][0]["coefficient"] = "1"
        with self.assertRaisesRegex(
            ValueError, "statement field 3 compiler LC drifted"
        ):
            deployed.render_transfer_transcript_seams(
                ir, wrong_statement
            )

    def test_write_check_and_prune_are_deterministic(self) -> None:
        for name in (
            "render_transfer_refinement_action",
            "render_transfer_refinement_seams",
            "render_transfer_refinement_adapters",
            "render_transfer_action_seams",
            "render_transfer_transcript_seams",
            "render_transfer_specification_consequences",
            "render_transfer_refinement_root",
        ):
            patcher = mock.patch.object(
                deployed,
                name,
                return_value=(
                    f"/- deterministic isolated {name}; "
                    "exact refinement is tested separately. -/\n"
                ),
            )
            patcher.start()
            self.addCleanup(patcher.stop)
        action_module_patcher = mock.patch.object(
            deployed,
            "render_transfer_action_seam_modules",
            return_value={
                "ActionSeams.lean":
                    "/- deterministic isolated action seam facade -/\n",
            },
        )
        action_module_patcher.start()
        self.addCleanup(action_module_patcher.stop)
        transcript_module_patcher = mock.patch.object(
            deployed,
            "render_transfer_transcript_seam_modules",
            return_value={
                "TranscriptSeams.lean":
                    "/- deterministic isolated transcript facade -/\n",
            },
        )
        transcript_module_patcher.start()
        self.addCleanup(transcript_module_patcher.stop)
        crypto_patcher = mock.patch.object(
            deployed,
            "render_transfer_crypto_seams",
            return_value=(
                "/- deterministic isolated transfer crypto seams -/\n",
                {},
                {},
            ),
        )
        crypto_patcher.start()
        self.addCleanup(crypto_patcher.stop)
        provider_check_patcher = mock.patch.object(
            core, "check_semantic_providers"
        )
        provider_check_patcher.start()
        self.addCleanup(provider_check_patcher.stop)
        non_identity_patcher = mock.patch.object(
            deployed,
            "render_non_identity_seams",
            return_value=(
                "/- deterministic isolated non-identity seams -/\n"
            ),
        )
        non_identity_patcher.start()
        self.addCleanup(non_identity_patcher.stop)
        fact_group_patcher = mock.patch.object(
            deployed,
            "semantic_fact_groups",
            side_effect=lambda ir, _manifest=None: deployed.exact_groups(ir),
        )
        fact_group_patcher.start()
        self.addCleanup(fact_group_patcher.stop)
        ir, previous, manifest = self.fixture("transfer")
        with tempfile.TemporaryDirectory() as raw_tmp:
            tmp = Path(raw_tmp)
            ir_path = tmp / "ir.json"
            previous_path = tmp / "coverage.json"
            manifest_path = tmp / "manifest.json"
            out_dir = tmp / "contracts"
            out_dir.mkdir()
            ir_path.write_text(json.dumps(ir, indent=2) + "\n")
            previous_path.write_text(json.dumps(previous, indent=2) + "\n")
            manifest_path.write_text(
                json.dumps(manifest, indent=2)
                .replace("&", "\\u0026")
                .replace("<", "\\u003c")
                .replace(">", "\\u003e")
                + "\n"
            )
            (out_dir / "Seg3.lean").write_text("preserved exact row contract\n")
            (out_dir / "Seg999.lean").write_text("stale row contract\n")
            (out_dir / "Obsolete.lean").write_text("obsolete\n")

            kwargs = {
                "ir_path": ir_path,
                "manifest_path": previous_path,
                "constraint_manifest_path": manifest_path,
                "out_dir": out_dir,
                "manifest_out": previous_path,
                "prune": True,
            }
            deployed.generate(check=False, **kwargs)
            first = {
                path.name: path.read_text()
                for path in sorted(out_dir.glob("*.lean"))
            }
            self.assertIn("Seg3.lean", first)
            self.assertNotIn("Seg999.lean", first)
            self.assertNotIn("Obsolete.lean", first)
            deployed.generate(check=True, **kwargs)
            deployed.generate(check=False, **kwargs)
            second = {
                path.name: path.read_text()
                for path in sorted(out_dir.glob("*.lean"))
            }
            self.assertEqual(first, second)

            (out_dir / "Bounds.lean").write_text("stale\n")
            with self.assertRaisesRegex(SystemExit, "stale generated"):
                deployed.generate(check=True, **kwargs)


if __name__ == "__main__":
    unittest.main()
