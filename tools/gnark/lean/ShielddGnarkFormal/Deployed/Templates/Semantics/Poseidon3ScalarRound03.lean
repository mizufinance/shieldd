import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02
import ShielddGnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace
import ShielddGnarkFormal.Deployed.Poseidon3Link
import ShielddGnarkFormal.Deployed.PrimeOrderCertificate
import ShielddGnarkFormal.ChoiceFreeZMod

set_option maxRecDepth 1000000
set_option maxHeartbeats 4000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03

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

def state3Lane0 (domain in0 in1 in2 : F) : F :=
  row4 (6333346312071277818186618704086159898531924501365547870951425091938056929281 : F) (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane0 domain in0 in1 in2 + (6174290539348443013815085618635508535362670264359346323016750542543831671611 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane1 domain in0 in1 in2 + (3653200179921208842362414440137382634990868113411395862128462165430232768762 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane2 domain in0 in1 in2 + (738082080048556788240923937267344369599673172037328036389652736930755015716 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane3 domain in0 in1 in2 + (6044628729794520171281155572076229146090871806225211668717932778346109567300 : F)))
def state3Lane1 (domain in0 in1 in2 : F) : F :=
  row4 (6755569399542696339399059951025237225100719468123251062348186764733927391233 : F) (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane0 domain in0 in1 in2 + (6174290539348443013815085618635508535362670264359346323016750542543831671611 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane1 domain in0 in1 in2 + (3653200179921208842362414440137382634990868113411395862128462165430232768762 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane2 domain in0 in1 in2 + (738082080048556788240923937267344369599673172037328036389652736930755015716 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane3 domain in0 in1 in2 + (6044628729794520171281155572076229146090871806225211668717932778346109567300 : F)))
def state3Lane2 (domain in0 in1 in2 : F) : F :=
  row4 (7037051457856975353540687448984622109479916112628386523279361213264507699201 : F) (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane0 domain in0 in1 in2 + (6174290539348443013815085618635508535362670264359346323016750542543831671611 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane1 domain in0 in1 in2 + (3653200179921208842362414440137382634990868113411395862128462165430232768762 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane2 domain in0 in1 in2 + (738082080048556788240923937267344369599673172037328036389652736930755015716 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane3 domain in0 in1 in2 + (6044628729794520171281155572076229146090871806225211668717932778346109567300 : F)))
def state3Lane3 (domain in0 in1 in2 : F) : F :=
  row4 (7238110070938603220784707090384182741179342287274911852515914390786350776321 : F) (7388904030749824121217721821433853214953911918259805849443329273927733084161 : F) (4691367638571316902360458299323081406319944075085591015519574142176338466134 : F) (7600015574485533381823942444903391878238309401638657445141710110325668315137 : F) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane0 domain in0 in1 in2 + (6174290539348443013815085618635508535362670264359346323016750542543831671611 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane1 domain in0 in1 in2 + (3653200179921208842362414440137382634990868113411395862128462165430232768762 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane2 domain in0 in1 in2 + (738082080048556788240923937267344369599673172037328036389652736930755015716 : F))) (p17 (Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state2Lane3 domain in0 in1 in2 + (6044628729794520171281155572076229146090871806225211668717932778346109567300 : F)))

theorem state_eq_trace (domain in0 in1 in2 : F) :
    vec![state3Lane0 domain in0 in1 in2, state3Lane1 domain in0 in1 in2,
      state3Lane2 domain in0 in1 in2, state3Lane3 domain in0 in1 in2] =
      Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state3
        domain in0 in1 in2 := by
  unfold Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3Trace.state3
  rw [← Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound02.state_eq_trace]
  rfl

end Shieldd.GnarkFormal.Deployed.Templates.Semantics.Poseidon3ScalarRound03
