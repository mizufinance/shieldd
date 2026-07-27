import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound28

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

def state28Lane0 (domain in0 in1 in2 : F) : F :=
  row4 (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane0 domain in0 in1 in2 + (1006225388831407597002513026923357368201575577664986063363565854366603986973 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane1 domain in0 in1 in2 + (1526282785909026335633723225294164750933182353012114115386394391821211651299 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane2 domain in0 in1 in2 + (1264354730649648485153348016668926773357340160928809433923690630326979915982 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane3 domain in0 in1 in2 + (7910412318739090470833358955102625881685684659552089299133733767719163523061 : F))
def state28Lane1 (domain in0 in1 in2 : F) : F :=
  row4 (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane0 domain in0 in1 in2 + (1006225388831407597002513026923357368201575577664986063363565854366603986973 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane1 domain in0 in1 in2 + (1526282785909026335633723225294164750933182353012114115386394391821211651299 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane2 domain in0 in1 in2 + (1264354730649648485153348016668926773357340160928809433923690630326979915982 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane3 domain in0 in1 in2 + (7910412318739090470833358955102625881685684659552089299133733767719163523061 : F))
def state28Lane2 (domain in0 in1 in2 : F) : F :=
  row4 (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane0 domain in0 in1 in2 + (1006225388831407597002513026923357368201575577664986063363565854366603986973 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane1 domain in0 in1 in2 + (1526282785909026335633723225294164750933182353012114115386394391821211651299 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane2 domain in0 in1 in2 + (1264354730649648485153348016668926773357340160928809433923690630326979915982 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane3 domain in0 in1 in2 + (7910412318739090470833358955102625881685684659552089299133733767719163523061 : F))
def state28Lane3 (domain in0 in1 in2 : F) : F :=
  row4 (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane0 domain in0 in1 in2 + (1006225388831407597002513026923357368201575577664986063363565854366603986973 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane1 domain in0 in1 in2 + (1526282785909026335633723225294164750933182353012114115386394391821211651299 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane2 domain in0 in1 in2 + (1264354730649648485153348016668926773357340160928809433923690630326979915982 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state27Lane3 domain in0 in1 in2 + (7910412318739090470833358955102625881685684659552089299133733767719163523061 : F))

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state28Lane0 domain in0 in1 in2, state28Lane1 domain in0 in1 in2,
      state28Lane2 domain in0 in1 in2, state28Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state28
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state28
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound27.state_eq_trace]
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound28
