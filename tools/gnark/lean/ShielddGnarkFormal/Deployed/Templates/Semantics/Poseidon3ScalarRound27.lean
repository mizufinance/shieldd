import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27

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

def state27Lane0 (domain in0 in1 in2 : F) : F :=
  row4 (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane0 domain in0 in1 in2 + (2993806947124341224488676547808115780756133808041816969561399929323091199988 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane1 domain in0 in1 in2 + (3167498406773851843298096921587059973841966635480368418683430217271170320658 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane2 domain in0 in1 in2 + (7675462210513623403638112459070981475591788141512594573391686976617804748800 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane3 domain in0 in1 in2 + (113656520646986566305770873856403245064118770850240394572766400596130519231 : F))
def state27Lane1 (domain in0 in1 in2 : F) : F :=
  row4 (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane0 domain in0 in1 in2 + (2993806947124341224488676547808115780756133808041816969561399929323091199988 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane1 domain in0 in1 in2 + (3167498406773851843298096921587059973841966635480368418683430217271170320658 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane2 domain in0 in1 in2 + (7675462210513623403638112459070981475591788141512594573391686976617804748800 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane3 domain in0 in1 in2 + (113656520646986566305770873856403245064118770850240394572766400596130519231 : F))
def state27Lane2 (domain in0 in1 in2 : F) : F :=
  row4 (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane0 domain in0 in1 in2 + (2993806947124341224488676547808115780756133808041816969561399929323091199988 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane1 domain in0 in1 in2 + (3167498406773851843298096921587059973841966635480368418683430217271170320658 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane2 domain in0 in1 in2 + (7675462210513623403638112459070981475591788141512594573391686976617804748800 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane3 domain in0 in1 in2 + (113656520646986566305770873856403245064118770850240394572766400596130519231 : F))
def state27Lane3 (domain in0 in1 in2 : F) : F :=
  row4 (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane0 domain in0 in1 in2 + (2993806947124341224488676547808115780756133808041816969561399929323091199988 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane1 domain in0 in1 in2 + (3167498406773851843298096921587059973841966635480368418683430217271170320658 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane2 domain in0 in1 in2 + (7675462210513623403638112459070981475591788141512594573391686976617804748800 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state26Lane3 domain in0 in1 in2 + (113656520646986566305770873856403245064118770850240394572766400596130519231 : F))

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state27Lane0 domain in0 in1 in2, state27Lane1 domain in0 in1 in2,
      state27Lane2 domain in0 in1 in2, state27Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state27
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state27
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound26.state_eq_trace]
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27
