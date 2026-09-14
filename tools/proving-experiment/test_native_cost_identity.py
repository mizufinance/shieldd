import hashlib,json,unittest
from dataclasses import replace
from pathlib import Path
from native_cost_identity import Variant,validate
CACHE=Path(__file__).resolve().parent/'cache'
class IdentityRegression(unittest.TestCase):
    def test_recorded_control_collision_is_rejected(self):
        binary=CACHE/'native-extended-compile'
        if not binary.exists():self.skipTest('recorded failed local diagnostic unavailable')
        report=CACHE/'native-extended-compile.json'
        sha=hashlib.sha256(binary.read_bytes()).hexdigest()
        v=Variant('control','extended',binary,sha,report,232683,'c266ae6a5ab86caa5d6eb417e0870bcfb34c05f27b15715f36d6011d87126851')
        with self.assertRaisesRegex(ValueError,'wrong circuit'):validate([v])
        with self.assertRaisesRegex(ValueError,'identical executable'):validate([v,replace(v,role='candidate',package='affine')])
if __name__=='__main__':unittest.main()
