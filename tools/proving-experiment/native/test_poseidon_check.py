from pathlib import Path
import unittest
from check_poseidon import check_file, check_matrix, controllable, observable, power


class MatrixCheckTests(unittest.TestCase):
    def test_native_parameters_pass_reference_screening(self):
        result = check_file(Path(__file__).parent / "params/poseidon381.json")
        self.assertTrue(result.passed)
        self.assertEqual(result.parameter_sha256, "b329be713656c761cdf4bcb106fcb12c10ef3864b2643124fbdd6779cc5b4e38")

    def test_wide_parameters_and_invariant_subspace_rejection(self):
        result = check_file(Path(__file__).parent / "params/poseidon381-wide.json")
        self.assertTrue(result.passed)
        self.assertEqual(result.checks.width, 6)
        self.assertEqual(result.parameter_sha256, "aaeb2e43f8d55fe25ed76ca45fad28832a5752c943b6c47f024a3fc66c5b739e")
        identity = [[int(i == j) for j in range(6)] for i in range(6)]
        self.assertFalse(check_matrix(identity, 101).passed())

    def test_invariant_subspaces_and_matrix_powers_are_rejected(self):
        lower = [[1, 0, 0], [1, 1, 0], [0, 1, 1]]
        upper = [list(row) for row in zip(*lower)]
        self.assertEqual((observable(lower, 101), controllable(lower, 101)), (1, 3))
        self.assertEqual((observable(upper, 101), controllable(upper, 101)), (3, 1))
        cycle = [[0, 1, 0], [0, 0, 1], [1, 0, 0]]
        self.assertEqual(controllable(cycle, 101), 3)
        self.assertEqual(controllable(power(cycle, 3, 101), 101), 1)
        self.assertFalse(check_matrix(cycle, 101).passed())
        identity = [[int(i == j) for j in range(3)] for i in range(3)]
        self.assertFalse(check_matrix(identity, 101).passed())

    def test_malformed_matrix_is_not_silently_reduced(self):
        for matrix in ([[1]], [[101]*3]*3, [[-1]*3]*3):
            with self.assertRaises(ValueError):
                check_matrix(matrix, 101)


if __name__ == "__main__":
    unittest.main()
