import ShielddGnarkFormal.Deployed.Templates.Core

namespace Shieldd.GnarkFormal.Deployed.Templates

/-! A seating is intentionally consumed through `seated`; callers do not need
to reduce the global wire table while proving a local template theorem. -/

abbrev WireSeating := Nat → Nat

end Shieldd.GnarkFormal.Deployed.Templates
