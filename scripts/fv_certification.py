#!/usr/bin/env python3
"""Code-owned identities and exact Lean types for certified FV families."""

from __future__ import annotations

import re
from dataclasses import dataclass
from functools import lru_cache
from pathlib import Path
from types import MappingProxyType
from typing import Iterable, Mapping

try:
    from .fv_strict_json import StrictJsonError, load as load_strict_json
except ImportError:
    from fv_strict_json import StrictJsonError, load as load_strict_json


ROOT = Path(__file__).resolve().parents[1]
PREDICATE_CONSEQUENCE_ROSTER = (
    ROOT
    / "crates/core/component/shielded-pool/formal/"
    "fv-predicate-consequence-roster.json"
)
LEAN = ROOT / "tools/gnark/lean"
EXPECTED_PREDICATE_CONSEQUENCE_COUNTS: Mapping[str, int] = MappingProxyType(
    {
        "note_reshape1x8": 22,
        "note_reshape8x1": 26,
        "shielded_ics20_withdrawal": 39,
        "transfer": 55,
    }
)


@dataclass(frozen=True)
class CertificationIdentity:
    label: str
    kind: str
    contract_module: str
    theorem_root: str
    theorem_namespace: str
    action_namespace: str
    refinement_declaration: str
    final_declaration: str
    transaction_declaration: str
    specification_root: str
    specification_namespace: str
    security_root: str
    security_declaration: str
    transaction_security_root: str
    transaction_security_declarations: tuple[str, ...]
    generation_backend: str
    public_variable_count: int


def _identity(
    *,
    label: str,
    kind: str,
    contract_module: str,
    theorem_root: str,
    theorem_namespace: str,
    action_namespace: str | None = None,
    security_root: str,
    security_declaration: str,
    generation_backend: str,
    public_variable_count: int = 2,
) -> CertificationIdentity:
    protocol_namespace = {
        "note_reshape": "Shieldd.GnarkFormal.Protocol.NoteReshape",
        "transfer": "Shieldd.GnarkFormal.Protocol.Transfer",
        "shielded_ics20_withdrawal": (
            "Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal"
        ),
    }[kind]
    transaction_security_names = {
        "note_reshape": (
            "transactionAcceptedNullifiersUnique",
            "transactionAcceptedIncludesTargetOutputs",
        ),
        "transfer": (
            "transactionAcceptedNullifiersUnique",
            "transactionAcceptedIncludesTargetOutputs",
        ),
        "shielded_ics20_withdrawal": (
            "transactionAcceptedNullifiersUnique",
            "transactionAcceptedIncludesTargetChange",
            "transactionAcceptedIncludesTargetWithdrawalEffects",
        ),
    }[kind]
    specification_namespace = (
        "Shieldd.GnarkFormal.Deployed.Contracts."
        f"{contract_module}"
    )
    return CertificationIdentity(
        label=label,
        kind=kind,
        contract_module=contract_module,
        theorem_root=theorem_root,
        theorem_namespace=theorem_namespace,
        action_namespace=action_namespace or theorem_namespace,
        refinement_declaration=f"{theorem_namespace}.deployedRelation_to_circuitFacts",
        final_declaration=(
            f"{theorem_namespace}.consensusAccepted_of_deployedRelation"
        ),
        transaction_declaration=(
            f"{theorem_namespace}.transactionAccepted_of_deployedRelation"
        ),
        specification_root=(
            "ShielddGnarkFormal.Deployed.Contracts."
            f"{contract_module}.SpecificationConsequences"
        ),
        specification_namespace=specification_namespace,
        security_root=security_root,
        security_declaration=security_declaration,
        transaction_security_root=(
            f"ShielddGnarkFormal.Protocol."
            f"{protocol_namespace.rsplit('.', 1)[-1]}.Semantics"
        ),
        transaction_security_declarations=tuple(
            f"{protocol_namespace}.{name}"
            for name in transaction_security_names
        ),
        generation_backend=generation_backend,
        public_variable_count=public_variable_count,
    )


CERTIFICATION_IDENTITIES: Mapping[str, CertificationIdentity] = MappingProxyType(
    {
        identity.label: identity
        for identity in (
            _identity(
                label="note_reshape8x1",
                kind="note_reshape",
                contract_module="NoteReshape8x1",
                theorem_root=(
                    "ShielddGnarkFormal.Deployed.NoteReshape8x1Soundness"
                ),
                theorem_namespace=(
                    "Shieldd.GnarkFormal.Deployed."
                    "NoteReshape8x1Refinement.C"
                ),
                security_root=(
                    "ShielddGnarkFormal.Protocol.NoteReshape.Security"
                ),
                security_declaration=(
                    "Shieldd.GnarkFormal.Protocol.NoteReshape."
                    "consensusAccepted_atomicSecurityConsequences"
                ),
                generation_backend="note_reshape",
            ),
            _identity(
                label="note_reshape1x8",
                kind="note_reshape",
                contract_module="NoteReshape1x8",
                theorem_root=(
                    "ShielddGnarkFormal.Deployed.NoteReshape1x8Soundness"
                ),
                theorem_namespace=(
                    "Shieldd.GnarkFormal.Deployed."
                    "NoteReshape1x8Refinement.C"
                ),
                security_root=(
                    "ShielddGnarkFormal.Protocol.NoteReshape.Security"
                ),
                security_declaration=(
                    "Shieldd.GnarkFormal.Protocol.NoteReshape."
                    "consensusAccepted_atomicSecurityConsequences"
                ),
                generation_backend="note_reshape",
            ),
            _identity(
                label="transfer",
                kind="transfer",
                contract_module="Transfer",
                theorem_root="ShielddGnarkFormal.Deployed.TransferRefinement",
                theorem_namespace=(
                    "Shieldd.GnarkFormal.Deployed.TransferRefinement"
                ),
                action_namespace=(
                    "Shieldd.GnarkFormal.Deployed.TransferRefinement.C"
                ),
                security_root=(
                    "ShielddGnarkFormal.Protocol.Transfer.Security"
                ),
                security_declaration=(
                    "Shieldd.GnarkFormal.Protocol.Transfer."
                    "consensusAccepted_atomicSecurityConsequences"
                ),
                generation_backend="deployed_family",
            ),
            _identity(
                label="shielded_ics20_withdrawal",
                kind="shielded_ics20_withdrawal",
                contract_module="ShieldedIcs20Withdrawal",
                theorem_root=(
                    "ShielddGnarkFormal.Deployed."
                    "ShieldedIcs20WithdrawalRefinement"
                ),
                theorem_namespace=(
                    "Shieldd.GnarkFormal.Deployed."
                    "ShieldedIcs20WithdrawalRefinement"
                ),
                action_namespace=(
                    "Shieldd.GnarkFormal.Deployed."
                    "ShieldedIcs20WithdrawalRefinement.C"
                ),
                security_root=(
                    "ShielddGnarkFormal.Protocol."
                    "ShieldedIcs20Withdrawal.Security"
                ),
                security_declaration=(
                    "Shieldd.GnarkFormal.Protocol."
                    "ShieldedIcs20Withdrawal."
                    "consensusAccepted_atomicSecurityConsequences"
                ),
                generation_backend="deployed_family",
            ),
        )
    }
)


@lru_cache(maxsize=1)
def predicate_consequence_declarations(
) -> Mapping[str, tuple[str, ...]]:
    """Load the reviewed exact predicate roster as qualified Lean declarations."""

    try:
        data = load_strict_json(
            PREDICATE_CONSEQUENCE_ROSTER,
            "predicate consequence roster",
        )
    except StrictJsonError as error:
        raise ValueError(
            f"cannot load predicate consequence roster: {error}"
        ) from error
    if (
        not isinstance(data, dict)
        or set(data) != {"schema", "profiles"}
        or data.get("schema")
        != "shieldd.gnark.predicate_consequence_roster.v1"
        or not isinstance(data.get("profiles"), list)
    ):
        raise ValueError("predicate consequence roster schema drifted")

    result: dict[str, tuple[str, ...]] = {}
    theorem_pattern = re.compile(r"theorem ([a-z][a-z0-9_]*)")
    for row in data["profiles"]:
        if (
            not isinstance(row, dict)
            or set(row) != {"profile", "path", "consequences"}
        ):
            raise ValueError("predicate consequence roster row fields drifted")
        profile = row["profile"]
        path = row["path"]
        consequences = row["consequences"]
        if (
            not isinstance(profile, str)
            or profile in result
            or not isinstance(path, str)
            or not isinstance(consequences, list)
            or not consequences
        ):
            raise ValueError("invalid predicate consequence roster row")
        identity = CERTIFICATION_IDENTITIES.get(profile)
        if identity is None:
            raise ValueError(
                f"predicate consequence roster has unknown profile {profile!r}"
            )
        expected_source = LEAN.joinpath(
            *identity.specification_root.split(".")
        ).with_suffix(".lean")
        expected_path = expected_source.relative_to(ROOT).as_posix()
        if path != expected_path:
            raise ValueError(
                f"{profile}: predicate consequence path {path!r} "
                f"!= {expected_path!r}"
            )
        names = []
        seen_predicates: set[str] = set()
        for item in consequences:
            if (
                not isinstance(item, list)
                or len(item) != 2
                or not all(isinstance(value, str) for value in item)
            ):
                raise ValueError(
                    f"{profile}: invalid predicate consequence entry"
                )
            predicate, theorem = item
            match = theorem_pattern.fullmatch(theorem)
            if predicate in seen_predicates or match is None:
                raise ValueError(
                    f"{profile}: duplicate or invalid predicate consequence"
                )
            seen_predicates.add(predicate)
            names.append(match.group(1))
        if len(names) != len(set(names)):
            raise ValueError(
                f"{profile}: predicate consequence theorem names are not unique"
            )

        try:
            source = expected_source.read_text(encoding="utf-8")
        except (OSError, UnicodeError) as error:
            raise ValueError(
                f"{profile}: cannot load specification consequences: {error}"
            ) from error
        source_names = set(
            re.findall(r"(?m)^theorem ([A-Za-z][A-Za-z0-9_]*)\b", source)
        )
        required_names = {"circuitFacts_of_relationAll", *names}
        if not required_names <= source_names:
            raise ValueError(
                f"{profile}: specification consequence declaration missing: "
                f"{sorted(required_names - source_names)}"
            )
        result[profile] = tuple(
            f"{identity.specification_namespace}.{name}"
            for name in ("circuitFacts_of_relationAll", *names)
        )

    if set(result) != set(CERTIFICATION_IDENTITIES):
        raise ValueError(
            "predicate consequence roster profile set drifted: "
            f"missing={sorted(set(CERTIFICATION_IDENTITIES) - set(result))}, "
            f"extra={sorted(set(result) - set(CERTIFICATION_IDENTITIES))}"
        )
    actual_counts = {
        profile: len(declarations) - 1
        for profile, declarations in result.items()
    }
    if actual_counts != dict(EXPECTED_PREDICATE_CONSEQUENCE_COUNTS):
        raise ValueError(
            "predicate consequence roster count drifted: "
            f"expected={dict(EXPECTED_PREDICATE_CONSEQUENCE_COUNTS)}, "
            f"actual={actual_counts}"
        )
    return MappingProxyType(result)


def backend_identity_errors(backend: Mapping[str, object]) -> list[str]:
    """Return every way a mutable backend entry departs from code-owned identity."""

    label = backend.get("label")
    if not isinstance(label, str) or label not in CERTIFICATION_IDENTITIES:
        return [f"no code-owned certification identity for {label!r}"]
    identity = CERTIFICATION_IDENTITIES[label]
    errors = []
    try:
        specification_declarations = predicate_consequence_declarations()[label]
    except ValueError as error:
        return [str(error)]
    for field in ("contract_module", "theorem_root", "generation_backend"):
        actual = backend.get(field)
        expected = getattr(identity, field)
        if actual != expected:
            errors.append(f"{field} {actual!r} != code-owned {expected!r}")

    targets = backend.get("axiom_targets")
    if not isinstance(targets, list):
        return errors + ["axiom_targets is not an array"]
    declarations: list[tuple[object, object]] = []
    for target in targets:
        if not isinstance(target, dict):
            continue
        root = target.get("root_module")
        target_declarations = target.get("declarations")
        if isinstance(target_declarations, list):
            declarations.extend((root, declaration) for declaration in target_declarations)

    required_locations = {
        identity.refinement_declaration: identity.theorem_root,
        identity.final_declaration: identity.theorem_root,
        identity.transaction_declaration: identity.theorem_root,
        identity.security_declaration: identity.security_root,
        **{
            declaration: identity.transaction_security_root
            for declaration in identity.transaction_security_declarations
        },
        **{
            declaration: identity.specification_root
            for declaration in specification_declarations
        },
    }
    seen = [declaration for _, declaration in declarations]
    for declaration, expected_root in required_locations.items():
        locations = [
            root for root, candidate in declarations if candidate == declaration
        ]
        if locations != [expected_root]:
            errors.append(
                f"{declaration} must occur exactly once under root "
                f"{expected_root!r}, got {locations!r}"
            )
    for root, declaration in declarations:
        if not isinstance(declaration, str):
            continue
        if declaration.endswith(".deployedRelation_to_circuitFacts"):
            if declaration != identity.refinement_declaration:
                errors.append(
                    "noncanonical deployedRelation_to_circuitFacts declaration "
                    f"{declaration!r} under {root!r}"
                )
        if declaration.endswith(".consensusAccepted_of_deployedRelation"):
            if declaration != identity.final_declaration:
                errors.append(
                    "noncanonical consensusAccepted_of_deployedRelation declaration "
                    f"{declaration!r} under {root!r}"
                )
        if declaration.endswith(".transactionAccepted_of_deployedRelation"):
            if declaration != identity.transaction_declaration:
                errors.append(
                    "noncanonical transactionAccepted_of_deployedRelation "
                    "declaration "
                    f"{declaration!r} under {root!r}"
                )
        if declaration.endswith(
            ".consensusAccepted_atomicSecurityConsequences"
        ):
            if declaration != identity.security_declaration:
                errors.append(
                    "noncanonical consensusAccepted_atomicSecurityConsequences "
                    "declaration "
                    f"{declaration!r} under {root!r}"
                )
        if declaration.endswith(
            (
                ".valid_of_deployedRelation",
                ".valid_requiredSecurityPredicates",
                ".consensusAccepted_requiredSecurityPredicates",
            )
        ):
            errors.append(
                f"obsolete accepted-language declaration {declaration!r} "
                f"under {root!r}"
            )
    build_modules = backend.get("build_modules")
    if (
        not isinstance(build_modules, list)
        or identity.security_root not in build_modules
    ):
        errors.append(
            f"security root {identity.security_root!r} is not a build target"
        )
    if (
        not isinstance(build_modules, list)
        or identity.transaction_security_root not in build_modules
    ):
        errors.append(
            "transaction security root "
            f"{identity.transaction_security_root!r} is not a build target"
        )
    if (
        not isinstance(build_modules, list)
        or identity.specification_root not in build_modules
    ):
        errors.append(
            f"specification root {identity.specification_root!r} "
            "is not a build target"
        )
    if len(seen) != len(set(seen)):
        errors.append("axiom target declarations are not globally unique")
    return errors


def _note_reshape_checks(identity: CertificationIdentity) -> str:
    contract = (
        "Shieldd.GnarkFormal.Deployed.Contracts."
        f"{identity.contract_module}"
    )
    namespace = identity.action_namespace
    return f"""
example
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho) :
    Shieldd.GnarkFormal.Protocol.NoteReshape.CircuitFacts
      Shieldd.GnarkFormal.NoteReshapeCanonical.circuitPrimitives
      ({namespace}.action rho) :=
  {identity.refinement_declaration} rho h

example
    (authorizationChecks :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ExternalAuthorization
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.Path24)
    (stateChecks :
      Shieldd.GnarkFormal.Protocol.NoteReshape.StateChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.Path24)
    (before :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ActionDelta
        {contract}.DeployedF)
    (after :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (signatures :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusSignatureFacts
        authorizationChecks ({namespace}.action rho))
    (state :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusStateFacts
        stateChecks ({namespace}.action rho) before delta after) :
    Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusAccepted
      Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.circuitPrimitives
      authorizationChecks stateChecks before delta after
      ({namespace}.action rho) :=
  {identity.final_declaration}
    authorizationChecks stateChecks before delta after rho h signatures state

example
    (authorizationChecks :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ExternalAuthorization
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.Path24)
    (stateChecks :
      Shieldd.GnarkFormal.Protocol.NoteReshape.StateChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.Path24)
    (otherStep :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
          {contract}.DeployedF →
        Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
          {contract}.DeployedF → Prop)
    (transactionBefore actionBefore :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ActionDelta
        {contract}.DeployedF)
    (actionAfter transactionAfter :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (signatures :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusSignatureFacts
        authorizationChecks ({namespace}.action rho))
    (state :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusStateFacts
        stateChecks ({namespace}.action rho)
        actionBefore delta actionAfter)
    (committed :
      Shieldd.GnarkFormal.Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Shieldd.GnarkFormal.Protocol.NoteReshape.actionNullifiers
          ({namespace}.action rho))
        (Shieldd.GnarkFormal.Protocol.NoteReshape.actionOutputCommitments
          ({namespace}.action rho))
        otherStep
        (Shieldd.GnarkFormal.Protocol.NoteReshape.TargetStep
          ({namespace}.action rho) delta)
        transactionBefore actionBefore actionAfter transactionAfter) :
    Shieldd.GnarkFormal.Protocol.NoteReshape.TransactionAccepted
      Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.circuitPrimitives
      authorizationChecks stateChecks otherStep
      transactionBefore actionBefore delta actionAfter transactionAfter
      ({namespace}.action rho) :=
  {identity.transaction_declaration}
    authorizationChecks stateChecks otherStep
    transactionBefore actionBefore delta actionAfter transactionAfter
    rho h signatures state committed

example
    (authorizationChecks :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ExternalAuthorization
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.Path24)
    (stateChecks :
      Shieldd.GnarkFormal.Protocol.NoteReshape.StateChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.NoteReshape.Concrete.Path24)
    (before :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ActionDelta
        {contract}.DeployedF)
    (after :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (signatures :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusSignatureFacts
        authorizationChecks ({namespace}.action rho))
    (state :
      Shieldd.GnarkFormal.Protocol.NoteReshape.ConsensusStateFacts
        stateChecks ({namespace}.action rho) before delta after) :
    Shieldd.GnarkFormal.Protocol.NoteReshape.AtomicSecurityConsequences
      ({namespace}.action rho) :=
  {identity.security_declaration}
    authorizationChecks stateChecks ({namespace}.action rho)
    ({identity.final_declaration}
      authorizationChecks stateChecks before delta after
      rho h signatures state)
"""


def _transfer_checks(identity: CertificationIdentity) -> str:
    contract = (
        "Shieldd.GnarkFormal.Deployed.Contracts."
        f"{identity.contract_module}"
    )
    namespace = identity.action_namespace
    return f"""
example
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho) :
    Shieldd.GnarkFormal.Protocol.Transfer.CircuitFacts
      Shieldd.GnarkFormal.Protocol.Transfer.Concrete.circuitPrimitives
      ({namespace}.action rho) :=
  {identity.refinement_declaration} rho h

example
    (checks :
      Shieldd.GnarkFormal.Protocol.Transfer.ExternalChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.Common.Path24
        Shieldd.GnarkFormal.Protocol.Common.Path16)
    (before :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.Transfer.ActionDelta
        {contract}.DeployedF)
    (after :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (external :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusExternalFacts
        checks ({namespace}.action rho) before delta after) :
    Shieldd.GnarkFormal.Protocol.Transfer.ConsensusAccepted
      Shieldd.GnarkFormal.Protocol.Transfer.Concrete.circuitPrimitives
      checks before delta after ({namespace}.action rho) :=
  {identity.final_declaration} checks before delta after rho h external

example
    (checks :
      Shieldd.GnarkFormal.Protocol.Transfer.ExternalChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.Common.Path24
        Shieldd.GnarkFormal.Protocol.Common.Path16)
    (otherStep :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
          {contract}.DeployedF →
        Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
          {contract}.DeployedF → Prop)
    (transactionBefore actionBefore :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.Transfer.ActionDelta
        {contract}.DeployedF)
    (actionAfter transactionAfter :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (external :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusExternalFacts
        checks ({namespace}.action rho)
        actionBefore delta actionAfter)
    (committed :
      Shieldd.GnarkFormal.Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Shieldd.GnarkFormal.Protocol.Transfer.actionNullifiers
          ({namespace}.action rho))
        (Shieldd.GnarkFormal.Protocol.Transfer.actionOutputCommitments
          ({namespace}.action rho))
        otherStep
        (Shieldd.GnarkFormal.Protocol.Transfer.TargetStep
          ({namespace}.action rho) delta)
        transactionBefore actionBefore actionAfter transactionAfter) :
    Shieldd.GnarkFormal.Protocol.Transfer.TransactionAccepted
      Shieldd.GnarkFormal.Protocol.Transfer.Concrete.circuitPrimitives
      checks otherStep transactionBefore actionBefore delta
      actionAfter transactionAfter ({namespace}.action rho) :=
  {identity.transaction_declaration}
    checks otherStep transactionBefore actionBefore delta
    actionAfter transactionAfter rho h external committed

example
    (checks :
      Shieldd.GnarkFormal.Protocol.Transfer.ExternalChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.Common.Path24
        Shieldd.GnarkFormal.Protocol.Common.Path16)
    (before :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.Transfer.ActionDelta
        {contract}.DeployedF)
    (after :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (external :
      Shieldd.GnarkFormal.Protocol.Transfer.ConsensusExternalFacts
        checks ({namespace}.action rho) before delta after) :
    Shieldd.GnarkFormal.Protocol.Transfer.AtomicSecurityConsequences
      ({namespace}.action rho) :=
  {identity.security_declaration}
    checks ({namespace}.action rho)
    ({identity.final_declaration}
      checks before delta after rho h external)
"""


def _withdrawal_checks(identity: CertificationIdentity) -> str:
    contract = (
        "Shieldd.GnarkFormal.Deployed.Contracts."
        f"{identity.contract_module}"
    )
    namespace = identity.action_namespace
    return f"""
example
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho) :
    Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.CircuitFacts
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      ({namespace}.action rho) :=
  {identity.refinement_declaration} rho h

example
    (checks :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.Common.Path24
        Shieldd.GnarkFormal.Protocol.Common.Path16)
    (before :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ActionDelta
        {contract}.DeployedF)
    (after :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (payload :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload
        {contract}.DeployedF)
    (external :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks ({namespace}.action rho) payload before delta after) :
    Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusAccepted
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      checks before delta after ({namespace}.action rho) payload :=
  {identity.final_declaration}
    checks before delta after payload rho h external

example
    (checks :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.Common.Path24
        Shieldd.GnarkFormal.Protocol.Common.Path16)
    (otherStep :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
          {contract}.DeployedF →
        Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
          {contract}.DeployedF → Prop)
    (transactionBefore actionBefore :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ActionDelta
        {contract}.DeployedF)
    (actionAfter transactionAfter :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
        {contract}.DeployedF)
    (payload :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (external :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks ({namespace}.action rho) payload
        actionBefore delta actionAfter)
    (committed :
      Shieldd.GnarkFormal.Protocol.Common.CommittedTargetTransaction
        (fun state => state.spentNullifiers)
        (fun state => state.proofBoundOutputCommitments)
        (Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.actionNullifiers
          ({namespace}.action rho))
        (Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.actionOutputCommitments
          ({namespace}.action rho))
        otherStep
        (Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.TargetStep
          ({namespace}.action rho) payload delta)
        transactionBefore actionBefore actionAfter transactionAfter)
    (withdrawalEffects :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.CommittedWithdrawalEffects
        transactionBefore actionBefore transactionAfter
        ({namespace}.action rho) payload) :
    Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.TransactionAccepted
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.Concrete.circuitPrimitives
      checks otherStep transactionBefore actionBefore delta
      actionAfter transactionAfter ({namespace}.action rho) payload :=
  {identity.transaction_declaration}
    checks otherStep transactionBefore actionBefore delta
    actionAfter transactionAfter payload rho h external
    committed withdrawalEffects

example
    (checks :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ExternalChecks
        {contract}.DeployedF
        Shieldd.GnarkFormal.Protocol.Common.Path24
        Shieldd.GnarkFormal.Protocol.Common.Path16)
    (before :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
        {contract}.DeployedF)
    (delta :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ActionDelta
        {contract}.DeployedF)
    (after :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusState
        {contract}.DeployedF)
    (rho : Nat → {contract}.DeployedF)
    (h : {contract}.relationAll rho)
    (payload :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.WithdrawalPayload
        {contract}.DeployedF)
    (external :
      Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.ConsensusExternalFacts
        checks ({namespace}.action rho) payload before delta after) :
    Shieldd.GnarkFormal.Protocol.ShieldedIcs20Withdrawal.AtomicSecurityConsequences
      ({namespace}.action rho) :=
  {identity.security_declaration}
    checks ({namespace}.action rho) payload
    ({identity.final_declaration}
      checks before delta after payload rho h external)
"""


def render_lean_certification_checks(labels: Iterable[str]) -> str:
    """Render exact theorem applications for selected certified families."""

    selected = list(labels)
    if not selected:
        raise ValueError("no certification identities selected")
    identities = []
    for label in selected:
        identity = CERTIFICATION_IDENTITIES.get(label)
        if identity is None:
            raise ValueError(f"no code-owned certification identity for {label!r}")
        identities.append(identity)
    lines = [
        "/- Generated by scripts/check-fv-profiles.py; do not commit. -/",
    ]
    imports = []
    for identity in identities:
        imports.extend((identity.theorem_root, identity.security_root))
    lines.extend(f"import {module}" for module in dict.fromkeys(imports))
    lines.append("universe u")
    for identity in identities:
        if identity.kind == "note_reshape":
            lines.append(_note_reshape_checks(identity))
        elif identity.kind == "transfer":
            lines.append(_transfer_checks(identity))
        elif identity.kind == "shielded_ics20_withdrawal":
            lines.append(_withdrawal_checks(identity))
        else:
            raise ValueError(
                f"{identity.label}: unsupported certification kind {identity.kind!r}"
            )
    return "\n".join(lines).strip() + "\n"
