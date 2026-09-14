import json
from pathlib import Path
import tempfile
import unittest
from run import stage_error

class CompletionTests(unittest.TestCase):
    def test_transport_success_is_not_proof_completion(self):
        with tempfile.TemporaryDirectory() as directory:
            p=Path(directory)
            self.assertIsNotNone(stage_error(p,0))
            (p/'failure.json').write_text(json.dumps({'error':'checked setup provenance missing'}))
            self.assertEqual(stage_error(p,0),'checked setup provenance missing')
            self.assertEqual(stage_error(p,1),'checked setup provenance missing')

    def test_exit_failure_cannot_be_overridden_by_receipt(self):
        with tempfile.TemporaryDirectory() as directory:
            p=Path(directory)
            (p/'complete.json').write_text('{}')
            self.assertIsNotNone(stage_error(p,1))
            self.assertIsNone(stage_error(p,0))

if __name__=='__main__':unittest.main()
