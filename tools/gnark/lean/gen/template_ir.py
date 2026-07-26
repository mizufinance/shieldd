"""Typed access to the proof-template portion of deployed-slice IR v3."""

from __future__ import annotations

from dataclasses import dataclass


@dataclass(frozen=True)
class SegmentTemplate:
    proof_template_id: str
    deployed_normalized_relation_sha256_hex: str
    canonical_wire_seating: tuple[int, ...]

    @classmethod
    def parse(cls, segment: dict) -> "SegmentTemplate":
        proof_template_id = segment.get("proof_template_id")
        deployed_digest = segment.get("deployed_normalized_relation_sha256_hex")
        witness = segment.get("template_equivalence_witness")
        if not isinstance(proof_template_id, str) or not proof_template_id:
            raise ValueError(f"segment {segment.get('index')}: missing proof_template_id")
        if not isinstance(deployed_digest, str) or not deployed_digest:
            raise ValueError(
                f"segment {segment.get('index')}: missing deployed normalized relation digest"
            )
        if not isinstance(witness, dict) or witness.get("proof_template_id") != proof_template_id:
            raise ValueError(f"segment {segment.get('index')}: malformed template witness")
        seating = witness.get("canonical_local_to_deployed_wire_seating")
        if not isinstance(seating, list) or not seating or seating[0] != 0:
            raise ValueError(f"segment {segment.get('index')}: malformed canonical wire seating")
        if len(set(seating)) != len(seating):
            raise ValueError(f"segment {segment.get('index')}: non-injective canonical wire seating")
        return cls(proof_template_id, deployed_digest, tuple(seating))
