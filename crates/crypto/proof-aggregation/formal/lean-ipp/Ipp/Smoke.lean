/-
Smoke test: confirms every Ipp module elaborates and that the pinned VCVio
dependency (and its Mathlib toolchain) resolves in this environment. Carries
no S1 content.
-/
import Ipp.Algebra
import Ipp.Model
import Ipp.RandomizerLift
import Ipp.Kzg
import Ipp.Gipa
import Ipp.Composition
import Ipp.FiatShamir
import Ipp.StrictG1Decode
import Ipp.StrictG2DecodeBridge
import Ipp.StrictGtDecode
import Ipp.ChallengeMessageSerialization
import Ipp.Extracted.ArkworksFinalExpSpec
import VCVio.CryptoFoundations.SigmaProtocol

-- If this elaborates, the VCVio dependency is available to the proof units.
#check @SigmaProtocol
