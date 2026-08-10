"""Fail-closed parser for the supported Lean import-command surface."""

from __future__ import annotations

import re


_MODULE_SEGMENT = r"[A-Za-z_][A-Za-z0-9_]*"
_MODULE_NAME = rf"{_MODULE_SEGMENT}(?:\.{_MODULE_SEGMENT})*"
_IMPORT_LINE = re.compile(
    rf"^[ \t]*import[ \t]+"
    rf"(?P<modules>{_MODULE_NAME}(?:[ \t]+{_MODULE_NAME})*)"
    rf"[ \t]*$",
    re.ASCII,
)
_IMPORT_TOKEN = re.compile(
    r"(?<![A-Za-z0-9_])import(?![A-Za-z0-9_])",
    re.ASCII,
)


def _failure(label: object, message: str) -> ValueError:
    return ValueError(f"{label}: {message}")


def _standard_string_end(source: str, start: int, label: object) -> int:
    index = start + 1
    escaped = False
    while index < len(source):
        current = source[index]
        if escaped:
            escaped = False
        elif current == "\\":
            escaped = True
        elif current == '"':
            return index + 1
        index += 1
    raise _failure(label, "unterminated Lean string literal")


def _raw_string_end(
    source: str, start: int, label: object
) -> int | None:
    if source[start] != "r":
        return None
    quote = start + 1
    while quote < len(source) and source[quote] == "#":
        quote += 1
    if quote >= len(source) or source[quote] != '"':
        return None
    terminator = '"' + "#" * (quote - start - 1)
    end = source.find(terminator, quote + 1)
    if end < 0:
        raise _failure(label, "unterminated Lean raw string literal")
    return end + len(terminator)


def _block_comment_end(source: str, start: int, label: object) -> int:
    depth = 1
    index = start + 2
    while index < len(source):
        if source.startswith("/-", index):
            depth += 1
            index += 2
        elif source.startswith("-/", index):
            depth -= 1
            index += 2
            if depth == 0:
                return index
        else:
            index += 1
    raise _failure(label, "unterminated Lean block comment")


def _interpolation_end(source: str, start: int, label: object) -> int:
    depth = 1
    index = start
    while index < len(source):
        if source.startswith("/-", index):
            index = _block_comment_end(source, index, label)
            continue
        if source.startswith("--", index):
            newline = source.find("\n", index + 2)
            if newline < 0:
                raise _failure(
                    label, "unterminated Lean interpolated string"
                )
            index = newline + 1
            continue
        if source.startswith('s!"', index):
            index = _interpolated_string_end(source, index, label)
            continue
        raw_end = _raw_string_end(source, index, label)
        if raw_end is not None:
            index = raw_end
            continue
        if source[index] == '"':
            index = _standard_string_end(source, index, label)
            continue
        if source.startswith("'{'", index) or source.startswith("'}'", index):
            index += 3
            continue
        if source[index] == "{":
            depth += 1
        elif source[index] == "}":
            depth -= 1
            if depth == 0:
                return index + 1
        index += 1
    raise _failure(label, "unterminated Lean interpolated string")


def _interpolated_string_end(
    source: str, start: int, label: object
) -> int:
    index = start + 3
    while index < len(source):
        if source[index] == "\\":
            index += 2
            continue
        if source[index] == '"':
            return index + 1
        if source.startswith("{{", index) or source.startswith("}}", index):
            index += 2
            continue
        if source[index] == "{":
            index = _interpolation_end(source, index + 1, label)
            continue
        index += 1
    raise _failure(label, "unterminated Lean interpolated string")


def _mask_comments_and_strings(source: str, label: object) -> str:
    """Blank comments and strings while retaining offsets and newlines."""

    output: list[str] = []
    index = 0
    block_depth = 0
    while index < len(source):
        current = source[index]
        following = source[index + 1] if index + 1 < len(source) else ""
        if block_depth:
            if current == "/" and following == "-":
                block_depth += 1
                output.extend((" ", " "))
                index += 2
                continue
            if current == "-" and following == "/":
                block_depth -= 1
                output.extend((" ", " "))
                index += 2
                continue
            output.append("\n" if current == "\n" else " ")
            index += 1
            continue

        string_end = None
        if source.startswith('s!"', index):
            string_end = _interpolated_string_end(source, index, label)
        else:
            string_end = _raw_string_end(source, index, label)
            if string_end is None and current == '"':
                string_end = _standard_string_end(source, index, label)
        if string_end is not None:
            output.extend(
                "\n" if character == "\n" else " "
                for character in source[index:string_end]
            )
            index = string_end
            continue
        if current == "-" and following == "-":
            output.extend((" ", " "))
            index += 2
            while index < len(source) and source[index] != "\n":
                output.append(" ")
                index += 1
            continue
        if current == "/" and following == "-":
            block_depth = 1
            output.extend((" ", " "))
            index += 2
            continue
        output.append(current)
        index += 1
    if block_depth:
        raise _failure(label, "unterminated Lean block comment")
    return "".join(output)


def parse_lean_imports(
    source: str, *, label: object = "Lean source"
) -> tuple[str, ...]:
    """Return imports or reject syntax outside the audited one-line grammar."""

    scrubbed = _mask_comments_and_strings(source, label)
    modules: list[str] = []
    for line_number, line in enumerate(scrubbed.splitlines(), 1):
        match = _IMPORT_LINE.fullmatch(line)
        if match is not None:
            modules.extend(match.group("modules").split())
            continue
        if _IMPORT_TOKEN.search(line) is not None:
            raise _failure(
                label,
                f"line {line_number}: unsupported Lean import syntax; "
                "each import must contain a one-line ASCII module roster",
            )
    return tuple(modules)
