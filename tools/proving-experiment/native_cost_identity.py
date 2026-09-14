"""Bind full-circuit diagnostic variants before accepting any relative timings."""
from dataclasses import dataclass
import hashlib,json
from pathlib import Path
@dataclass(frozen=True)
class Variant:
    role:str
    package:str
    executable:Path
    sha256:str
    report:Path
    rows:int
    relation:str

def validate(variants:list[Variant]):
    if len({v.sha256 for v in variants})!=len(variants):
        raise ValueError('comparison variants use identical executable bytes')
    if len({v.package for v in variants})!=len(variants):
        raise ValueError('isolated comparison packages must have distinct identities')
    for v in variants:
        if hashlib.sha256(v.executable.read_bytes()).hexdigest()!=v.sha256:
            raise ValueError('executable changed after preparation')
        r=json.loads(v.report.read_text())
        if r['rows']!=v.rows or r['relation']!=v.relation:
            raise ValueError('wrong circuit for comparison role')
