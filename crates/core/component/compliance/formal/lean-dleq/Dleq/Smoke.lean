/-
Gate-0 smoke test: confirms VCVio resolves and builds in this environment and
that the generic Sigma-protocol / forking API names this mechanization targets
are in scope. Carries no DLEQ content; deleted or absorbed once `Dleq/Sigma.lean`
imports the same modules.
-/
import VCVio.CryptoFoundations.SigmaProtocol
import VCVio.CryptoFoundations.FiatShamir.Sigma.Fork

-- If this elaborates, the SigmaProtocol structure and the forking module are
-- both available to instantiate for DLEQ.
#check @SigmaProtocol
