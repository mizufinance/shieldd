import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.Seg16

/-!
Import-only floor probe: no proof work, just the cost of loading the upstream
`Seg16` olean.  `scripts/lean-leaf-bench.sh <this> import` reports the RSS/time
floor so leaf/aggregator marginal cost can be read net of it.  Lives OUTSIDE the
`ShielddGnarkFormal` lib tree so the package build never sees it.
-/

def importFloorMarker16 : Nat := 0
