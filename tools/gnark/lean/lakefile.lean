import Lake
open Lake DSL

package shieldd_gnark_formal where

require «proven-zk» from git
  "https://github.com/reilabs/proven-zk.git" @ "4.15"

@[default_target]
lean_lib ShielddGnarkFormal where
  moreLeanArgs := #["--tstack=4000000"]

lean_exe oleanAxiomAudit where
  root := `OLeanAxiomAudit
