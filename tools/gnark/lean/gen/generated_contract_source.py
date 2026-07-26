"""Read generated Lean contracts, including bounded definition shards."""

from pathlib import Path


def source_paths(contracts: Path, seg: int) -> list[Path]:
    shards = sorted(
        contracts.glob(f"Seg{seg}Defs*.lean"),
        key=lambda path: int(path.stem.removeprefix(f"Seg{seg}Defs")),
    )
    indices = [int(path.stem.removeprefix(f"Seg{seg}Defs")) for path in shards]
    if indices != list(range(len(indices))):
        raise ValueError(f"Seg{seg} definition shards are not contiguous: {indices}")

    base = contracts / f"Seg{seg}Base.lean"
    if base.exists() != bool(shards):
        raise ValueError(f"Seg{seg} contract has an incomplete sharded layout")

    facade = contracts / f"Seg{seg}.lean"
    if not facade.is_file():
        raise ValueError(f"missing Seg{seg} contract facade")
    return [*shards, facade]


def read_source(contracts: Path, seg: int) -> str:
    sources = []
    for path in source_paths(contracts, seg):
        lines = path.read_text().splitlines()
        try:
            start = next(index for index, line in enumerate(lines) if line.startswith("namespace "))
            end = max(index for index, line in enumerate(lines) if line.startswith("end "))
        except (StopIteration, ValueError) as error:
            raise ValueError(f"generated contract module has no namespace body: {path}") from error
        if end <= start:
            raise ValueError(f"generated contract module has an invalid namespace body: {path}")
        sources.append("\n".join(lines[start + 1 : end]) + "\n")
    separators = (
        f"\n\ndef generatedContractShardBoundary{index} : Prop := True\n\n"
        for index in range(len(sources) - 1)
    )
    chunks: list[str] = []
    for source, separator in zip(sources, separators, strict=False):
        chunks.extend((source, separator))
    chunks.append(sources[-1])
    return "".join(chunks)
