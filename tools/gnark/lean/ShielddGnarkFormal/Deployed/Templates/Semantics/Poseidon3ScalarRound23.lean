import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound23

attribute [-instance] ZMod.instField
open scoped Shieldd.GnarkFormal.ChoiceFreeZMod

open Shieldd.GnarkFormal.Poseidon3Bridge
open Shieldd.GnarkFormal.Deployed.Poseidon3Link

abbrev Order : Nat :=
  Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.Order
abbrev F :=
  Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.F

local instance : Fact (Nat.Prime Order) :=
  ⟨Shieldd.GnarkFormal.Deployed.decaf377ScalarFieldPrime⟩

def state23Lane0 (domain in0 in1 in2 : F) : F :=
  row4 (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane0 domain in0 in1 in2 + (7797064805359378923378263108750471488988996670366203564906966139953797786476 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane1 domain in0 in1 in2 + (2621058208535806748929478936820062512558754775621817172089881590533438911657 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane2 domain in0 in1 in2 + (6970001120193851908531728965538133691525883363792484682581417337692500902764 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane3 domain in0 in1 in2 + (6826842223394285672424196404992312747730620966214863886225498038478833682358 : F))
def state23Lane1 (domain in0 in1 in2 : F) : F :=
  row4 (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane0 domain in0 in1 in2 + (7797064805359378923378263108750471488988996670366203564906966139953797786476 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane1 domain in0 in1 in2 + (2621058208535806748929478936820062512558754775621817172089881590533438911657 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane2 domain in0 in1 in2 + (6970001120193851908531728965538133691525883363792484682581417337692500902764 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane3 domain in0 in1 in2 + (6826842223394285672424196404992312747730620966214863886225498038478833682358 : F))
def state23Lane2 (domain in0 in1 in2 : F) : F :=
  row4 (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane0 domain in0 in1 in2 + (7797064805359378923378263108750471488988996670366203564906966139953797786476 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane1 domain in0 in1 in2 + (2621058208535806748929478936820062512558754775621817172089881590533438911657 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane2 domain in0 in1 in2 + (6970001120193851908531728965538133691525883363792484682581417337692500902764 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane3 domain in0 in1 in2 + (6826842223394285672424196404992312747730620966214863886225498038478833682358 : F))
def state23Lane3 (domain in0 in1 in2 : F) : F :=
  row4 (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane0 domain in0 in1 in2 + (7797064805359378923378263108750471488988996670366203564906966139953797786476 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane1 domain in0 in1 in2 + (2621058208535806748929478936820062512558754775621817172089881590533438911657 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane2 domain in0 in1 in2 + (6970001120193851908531728965538133691525883363792484682581417337692500902764 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state22Lane3 domain in0 in1 in2 + (6826842223394285672424196404992312747730620966214863886225498038478833682358 : F))

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state23Lane0 domain in0 in1 in2, state23Lane1 domain in0 in1 in2,
      state23Lane2 domain in0 in1 in2, state23Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state23
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state23
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22.state_eq_trace]
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound23
