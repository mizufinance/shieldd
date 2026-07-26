import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22

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

def state22Lane0 (domain in0 in1 in2 : F) : F :=
  row4 (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane0 domain in0 in1 in2 + (6849267447668928646234210841379777456966734633732540873989202454970094962426 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane1 domain in0 in1 in2 + (5555522384395102841761900123416437935052425409768071672675868156560502664172 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane2 domain in0 in1 in2 + (3164690097391885553665673896220385018942443913813415429561095784307993877675 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 domain in0 in1 in2 + (751997789925724099571719539753731795077203163786497928556573288276983857799 : F))
def state22Lane1 (domain in0 in1 in2 : F) : F :=
  row4 (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane0 domain in0 in1 in2 + (6849267447668928646234210841379777456966734633732540873989202454970094962426 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane1 domain in0 in1 in2 + (5555522384395102841761900123416437935052425409768071672675868156560502664172 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane2 domain in0 in1 in2 + (3164690097391885553665673896220385018942443913813415429561095784307993877675 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 domain in0 in1 in2 + (751997789925724099571719539753731795077203163786497928556573288276983857799 : F))
def state22Lane2 (domain in0 in1 in2 : F) : F :=
  row4 (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane0 domain in0 in1 in2 + (6849267447668928646234210841379777456966734633732540873989202454970094962426 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane1 domain in0 in1 in2 + (5555522384395102841761900123416437935052425409768071672675868156560502664172 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane2 domain in0 in1 in2 + (3164690097391885553665673896220385018942443913813415429561095784307993877675 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 domain in0 in1 in2 + (751997789925724099571719539753731795077203163786497928556573288276983857799 : F))
def state22Lane3 (domain in0 in1 in2 : F) : F :=
  row4 (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane0 domain in0 in1 in2 + (6849267447668928646234210841379777456966734633732540873989202454970094962426 : F))) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane1 domain in0 in1 in2 + (5555522384395102841761900123416437935052425409768071672675868156560502664172 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane2 domain in0 in1 in2 + (3164690097391885553665673896220385018942443913813415429561095784307993877675 : F)) (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state21Lane3 domain in0 in1 in2 + (751997789925724099571719539753731795077203163786497928556573288276983857799 : F))

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state22Lane0 domain in0 in1 in2, state22Lane1 domain in0 in1 in2,
      state22Lane2 domain in0 in1 in2, state22Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state22
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state22
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound21.state_eq_trace]
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound22
