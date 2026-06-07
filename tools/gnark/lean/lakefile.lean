import Lake
open Lake DSL

package penumbra_gnark_formal where

require «proven-zk» from git
  "https://github.com/reilabs/proven-zk.git" @ "4.15"

lean_lib PenumbraGnarkFormal where
  moreLeanArgs := #["--tstack=1000000"]
