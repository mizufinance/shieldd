import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound30

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

def state30Lane0 (domain in0 in1 in2 : F) : F :=
  row4 (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane0 domain in0 in1 in2 + (4241759696766954462463723260157362033085821297582753950078581155537557151758 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane1 domain in0 in1 in2 + (1546282720224443972828836964335088925724907089163291901383796489940020003342 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane2 domain in0 in1 in2 + (5700204554208422586827147566009516954101695508731242493166780209623191931157 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane3 domain in0 in1 in2 + (241928117549199144060953691071944032603403288483151133697470756177198473825 : F))
def state30Lane1 (domain in0 in1 in2 : F) : F :=
  row4 (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane0 domain in0 in1 in2 + (4241759696766954462463723260157362033085821297582753950078581155537557151758 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane1 domain in0 in1 in2 + (1546282720224443972828836964335088925724907089163291901383796489940020003342 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane2 domain in0 in1 in2 + (5700204554208422586827147566009516954101695508731242493166780209623191931157 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane3 domain in0 in1 in2 + (241928117549199144060953691071944032603403288483151133697470756177198473825 : F))
def state30Lane2 (domain in0 in1 in2 : F) : F :=
  row4 (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane0 domain in0 in1 in2 + (4241759696766954462463723260157362033085821297582753950078581155537557151758 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane1 domain in0 in1 in2 + (1546282720224443972828836964335088925724907089163291901383796489940020003342 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane2 domain in0 in1 in2 + (5700204554208422586827147566009516954101695508731242493166780209623191931157 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane3 domain in0 in1 in2 + (241928117549199144060953691071944032603403288483151133697470756177198473825 : F))
def state30Lane3 (domain in0 in1 in2 : F) : F :=
  row4 (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane0 domain in0 in1 in2 + (4241759696766954462463723260157362033085821297582753950078581155537557151758 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane1 domain in0 in1 in2 + (1546282720224443972828836964335088925724907089163291901383796489940020003342 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane2 domain in0 in1 in2 + (5700204554208422586827147566009516954101695508731242493166780209623191931157 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state29Lane3 domain in0 in1 in2 + (241928117549199144060953691071944032603403288483151133697470756177198473825 : F))

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state30Lane0 domain in0 in1 in2, state30Lane1 domain in0 in1 in2,
      state30Lane2 domain in0 in1 in2, state30Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state30
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state30
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound29.state_eq_trace]
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound30
