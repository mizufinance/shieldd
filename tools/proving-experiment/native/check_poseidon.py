"""Check the fixed width-three/width-six Poseidon matrix against the reference screening conditions.

Uses stronger observability ranks for Algorithm 1, avoiding extension-field
eigenspace enumeration. Algorithms 2/3 specialize exactly to one active S-box.
This is a parameter-generation check, not a security audit or a formal tool.
"""
from dataclasses import asdict, dataclass
from itertools import combinations, permutations
from pathlib import Path
import hashlib
import json
import math
import sys

REFERENCE = "https://github.com/daira/pasta-hadeshash/blob/5959f2684a25b372fba347e62467efb00e7e2c3f/code/generate_parameters_grain.sage"
REFERENCE_SHA256 = "ad4b4ff2253b405d206bb6df5c4ecf5ae1ad50fc2ce6b62583163896eab196af"
MODULUS = 52435875175126190479447740508185965837690552500527637822603658699938581184513


def multiply(a: list[list[int]], b: list[list[int]], p: int) -> list[list[int]]:
    return [[sum(x*y for x, y in zip(row, column)) % p for column in zip(*b)] for row in a]


def power(a: list[list[int]], exponent: int, p: int) -> list[list[int]]:
    out = [[int(i == j) for j in range(len(a))] for i in range(len(a))]
    for _ in range(exponent):
        out = multiply(out, a, p)
    return out


def rank(a: list[list[int]], p: int) -> int:
    rows = [[v % p for v in row] for row in a]
    pivot = 0
    for column in range(len(rows[0])):
        selected = next((r for r in range(pivot, len(rows)) if rows[r][column]), None)
        if selected is None:
            continue
        rows[pivot], rows[selected] = rows[selected], rows[pivot]
        inv = pow(rows[pivot][column], -1, p)
        rows[pivot] = [v*inv % p for v in rows[pivot]]
        for r in range(len(rows)):
            if r != pivot:
                factor = rows[r][column]
                rows[r] = [(x-factor*y) % p for x, y in zip(rows[r], rows[pivot])]
        pivot += 1
        if pivot == len(rows):
            break
    return pivot


def determinant(a: list[list[int]], p: int) -> int:
    n = len(a)
    return sum((-1)**sum(order[i] > order[j] for i in range(n) for j in range(i+1, n))
               * math.prod(a[i][order[i]] for i in range(n))
               for order in permutations(range(n))) % p


def observable(a: list[list[int]], p: int) -> int:
    return rank([power(a, i, p)[0] for i in range(len(a))], p)


def controllable(a: list[list[int]], p: int) -> int:
    columns = [[row[0] for row in power(a, i, p)] for i in range(len(a))]
    return rank(columns, p)


@dataclass(frozen=True)
class MatrixChecks:
    width: int
    all_minors_nonzero: bool
    algorithm_1_sufficient_observability_ranks: list[int]
    algorithm_2_controllability_rank: int
    algorithm_3_power_controllability_ranks: list[int]

    def passed(self) -> bool:
        return (self.all_minors_nonzero
                and self.algorithm_1_sufficient_observability_ranks == [self.width]*(self.width-1)
                and self.algorithm_2_controllability_rank == self.width
                and self.algorithm_3_power_controllability_ranks == [self.width]*(4*self.width-1))


def check_matrix(matrix: list[list[int]], p: int) -> MatrixChecks:
    width = len(matrix)
    if width not in (3, 6) or any(len(row) != width for row in matrix):
        raise ValueError("only the two native matrix widths are supported")
    if any(not 0 <= v < p for row in matrix for v in row):
        raise ValueError("noncanonical matrix entry")
    minors = (determinant([[matrix[i][j] for j in cols] for i in rows], p)
              for size in range(1, width+1)
              for rows in combinations(range(width), size)
              for cols in combinations(range(width), size))
    return MatrixChecks(width, all(minors),
                        [observable(power(matrix, i, p), p) for i in range(1, width)],
                        controllable(matrix, p),
                        [controllable(power(matrix, i, p), p) for i in range(2, 4*width+1)])


@dataclass(frozen=True)
class Result:
    schema: str
    parameter_sha256: str
    checker_sha256: str
    reference: str
    reference_sha256: str
    sbox_is_permutation: bool
    checks: MatrixChecks
    passed: bool


def check_file(path: Path) -> Result:
    data = path.read_bytes()
    params = json.loads(data)
    if (int(params["modulus"]) != MODULUS or params["alpha"] != 5
            or params["full_rounds"] != 8 or params["partial_rounds"] != 57):
        raise ValueError("unexpected native Poseidon parameter identity")
    checks = check_matrix([[int(v, 16) for v in row] for row in params["mds"]], MODULUS)
    permutation = math.gcd(5, MODULUS-1) == 1
    return Result("shieldd.native_experiment.poseidon_matrix_check.v1",
                  hashlib.sha256(data).hexdigest(), hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                  REFERENCE, REFERENCE_SHA256, permutation, checks, permutation and checks.passed())


if __name__ == "__main__":
    result = check_file(Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).parent / "params/poseidon381.json")
    print(json.dumps(asdict(result), indent=2))
    sys.exit(0 if result.passed else 1)
