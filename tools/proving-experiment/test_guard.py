import unittest
from guard import ProcessUsage, WorkloadTracker


class OwnershipTests(unittest.TestCase):
    def test_worker_started_after_registration_snapshot_is_owned(self):
        # The old monitor read an empty worker list, then saw this newly spawned worker in ps.
        snapshot = [ProcessUsage(10, 1, 100, 'python3', 0), ProcessUsage(11, 10, 200, 'gnark-worker', 100)]
        self.assertEqual(WorkloadTracker().classify(snapshot, [], 0)[1], [11])
        # The supervisor PID is fixed before spawning, independent of worker registration.
        self.assertEqual(WorkloadTracker().classify(snapshot, [10], 0), (300, []))

    def test_unrelated_heavy_process_is_still_rejected(self):
        snapshot = [ProcessUsage(11, 10, 200, 'rustc', 100), ProcessUsage(12, 1, 200, 'rustc', 100)]
        self.assertEqual(WorkloadTracker().classify(snapshot, [10], 0), (200, [12]))

    def test_sustained_unknown_workload_and_swap_policy_are_distinct(self):
        tracker = WorkloadTracker()
        snapshot = [ProcessUsage(20, 1, 2*1024**3, 'unlisted-job', 100)]
        self.assertEqual(tracker.classify(snapshot, [10], 0)[1], [])
        self.assertEqual(tracker.classify(snapshot, [10], 31)[1], [20])


if __name__ == '__main__':
    unittest.main()
