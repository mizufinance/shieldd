import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs17

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc427 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(435443019248027373572209328981659234170213225482121712799853667443266468176 : F), 256, 5, 79⟩], residual := [((3240388181392711470302623400092573262502763043986311877675923455854650277543 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc428 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 257, 5, 79⟩], residual := [((8359927174140099073163808715029987177202746736101787838973659665157973465362 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow647 (rho : Nat -> F) : Prop :=
    (relationLc427 rho) * (relationLc428 rho) = ((1 : F) * rho 648)

def relationLc429 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 256, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 257, 5, 79⟩], residual := [((1255464619070411914285884063926842950292772109515344959551717420376047071663 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 649) * ((1 : F) + (1 : F) * rho 648) = (relationLc429 rho)

def relationLc430 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 257, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 256, 5, 79⟩], residual := [((5201334774209604017645676000956203413974006481900791533392360915641172360594 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 650) * ((1 : F) + (-1 : F) * rho 648) = (relationLc430 rho)

def relationLc431 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 79⟩], residual := [((1 : F), 649), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81) * (relationLc431 rho) = ((1 : F) * rho 651)

def relationLc432 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 79⟩], residual := [((1 : F), 650), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 81) * (relationLc432 rho) = ((1 : F) * rho 652)

def relationLc433 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4171148466704651220389908484425727516067988246936310646425350299083169892930 : F), 256, 5, 80⟩], residual := [((3095872043888969263896429164308195273262937578393571560685502100763634414657 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc434 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 257, 5, 80⟩], residual := [((2753830212946274734080901510274114235564601986241285087182291927643562326665 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow652 (rho : Nat -> F) : Prop :=
    (relationLc433 rho) * (relationLc434 rho) = ((1 : F) * rho 653)

def relationLc435 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 256, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 257, 5, 80⟩], residual := [((6643053041644967957978290427523183888135650947769817479177854734423396780793 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 654) * ((1 : F) + (1 : F) * rho 653) = (relationLc435 rho)

def relationLc436 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 257, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 256, 5, 80⟩], residual := [((1944190991534382356061877854857180638324709297848421504967051709312870947874 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 655) * ((1 : F) + (-1 : F) * rho 653) = (relationLc436 rho)

def relationLc437 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 80⟩], residual := [((1 : F), 654), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * (relationLc437 rho) = ((1 : F) * rho 656)

def relationLc438 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 80⟩], residual := [((1 : F), 655), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 82) * (relationLc438 rho) = ((1 : F) * rho 657)

def relationLc439 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3606477877692461662957109389413456453654481356050762715016429689958378271754 : F), 256, 5, 81⟩], residual := [((3909475824386380137549903929611434474143820228075144355006436974185598099324 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc440 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 257, 5, 81⟩], residual := [((795231880928258437557794133498488588455906730014666906275286167459374319483 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow657 (rho : Nat -> F) : Prop :=
    (relationLc439 rho) * (relationLc440 rho) = ((1 : F) * rho 658)

def relationLc441 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 256, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 257, 5, 81⟩], residual := [((7728755420950352125831423975308434577296149752659537292781206527488954098007 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 659) * ((1 : F) + (1 : F) * rho 658) = (relationLc441 rho)

def relationLc442 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (143751746805209981231263548913363895913215937586530293922447314115109648945 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 257, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 256, 5, 81⟩], residual := [((3014817936280911672026913628016558529560374790681053700727771705456056218127 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 660) * ((1 : F) + (-1 : F) * rho 658) = (relationLc442 rho)

def relationLc443 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 81⟩], residual := [((1 : F), 659), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 83) * (relationLc443 rho) = ((1 : F) * rho 661)

def relationLc444 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 81⟩], residual := [((1 : F), 660), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 83) * (relationLc444 rho) = ((1 : F) * rho 662)

def relationLc445 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3766554936473951255540249522715488611853256733758667611827960753981783105824 : F), 256, 5, 82⟩], residual := [((7621915444124325191480647678072558098704848408090815923787421731984216850880 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc446 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 257, 5, 82⟩], residual := [((8201295156430902398006891467380246727186705512452201264592190614802423168295 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow662 (rho : Nat -> F) : Prop :=
    (relationLc445 rho) * (relationLc446 rho) = ((1 : F) * rho 663)

def relationLc447 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 256, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 257, 5, 82⟩], residual := [((2126936358743662087803162646051875459026328052598893106363984685827758001521 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 664) * ((1 : F) + (1 : F) * rho 663) = (relationLc447 rho)

def relationLc448 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), runs := [⟨(1751075673644036357774016769678902223519750493392983324693573023554544841690 : F), 257, 5, 82⟩, ⟨(7790468062680097700391950100917682264194835765581192357593202771658598783151 : F), 256, 5, 82⟩], residual := [((4445652771961411157792133795511392792424747091865093974256457248476981814276 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 665) * ((1 : F) + (-1 : F) * rho 663) = (relationLc448 rho)

def relationLc449 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 82⟩], residual := [((1 : F), 664), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * (relationLc449 rho) = ((1 : F) * rho 666)

def relationLc450 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 82⟩], residual := [((1 : F), 665), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 84) * (relationLc450 rho) = ((1 : F) * rho 667)

def relationLc451 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4057618003226322301380722646054133515350344497494379614603511631974896775073 : F), 256, 5, 83⟩], residual := [((1114119046654488412156978360057755686609664720675475355766786494969526974976 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc452 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 257, 5, 83⟩], residual := [((8415988326101532143562530920364287788294739843006614146358467532537182975184 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow667 (rho : Nat -> F) : Prop :=
    (relationLc451 rho) * (relationLc452 rho) = ((1 : F) * rho 668)

def relationLc453 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 257, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 256, 5, 83⟩], residual := [((5422640290818139149203598602894913879186173632073371218730904392916999006949 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 669) * ((1 : F) + (1 : F) * rho 668) = (relationLc453 rho)

def relationLc454 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (702951842803623733461713267884879944684111578159935253368535951362874748684 : F), runs := [⟨(3788660986400498545861198287602112464652304302550183813246345683684554891399 : F), 256, 5, 83⟩, ⟨(702951842803623733461713267884879944684111578159935253368535951362874748684 : F), 257, 5, 83⟩], residual := [((5025556459589336422978363340047262187464658303343479376519996551711562936563 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 670) * ((1 : F) + (-1 : F) * rho 668) = (relationLc454 rho)

def relationLc455 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 83⟩], residual := [((1 : F), 669), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 85) * (relationLc455 rho) = ((1 : F) * rho 671)

def relationLc456 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 83⟩], residual := [((1 : F), 670), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 85) * (relationLc456 rho) = ((1 : F) * rho 672)

def relationLc457 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5521699295475871864753056508204148223678162633978526892347350614954837511571 : F), 256, 5, 84⟩], residual := [((2752875008010564020883566174142247157044480591208246799816422655462893432145 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc458 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), runs := [⟨(1642915093056168336194297989174839011735959045657272474044918542645742295404 : F), 257, 5, 84⟩], residual := [((999253345431023173700117287462072931709406681660084743379432615777357612207 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
