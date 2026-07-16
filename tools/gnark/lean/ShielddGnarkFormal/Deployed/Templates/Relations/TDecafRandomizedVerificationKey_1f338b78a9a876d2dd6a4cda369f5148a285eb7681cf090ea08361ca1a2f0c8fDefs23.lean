import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs22

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationRow777 (rho : Nat -> F) : Prop :=
    (relationLc583 rho) * (relationLc584 rho) = ((1 : F) * rho 778)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 256, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 257, 5, 105⟩], residual := [((4231306193089116798580360075836071405752260225710611169800752716179934854982 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 779) * ((1 : F) + (1 : F) * rho 778) = (relationLc585 rho)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 257, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 256, 5, 105⟩], residual := [((1655897341974058602991122781470433356950214897226624602461013101212155498886 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 780) * ((1 : F) + (-1 : F) * rho 778) = (relationLc586 rho)

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 105⟩], residual := [((1 : F), 779), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * (relationLc587 rho) = ((1 : F) * rho 781)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 105⟩], residual := [((1 : F), 780), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 107) * (relationLc588 rho) = ((1 : F) * rho 782)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4192118223431191948576229703026611961899211540869084381246995287642068887532 : F), 256, 5, 106⟩], residual := [((7513835879182803745630240013231637882820161472951662458538143120260969668224 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 257, 5, 106⟩], residual := [((2214913009684229514296527901173036753304215905453315312871645431738308265406 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow782 (rho : Nat -> F) : Prop :=
    (relationLc589 rho) * (relationLc590 rho) = ((1 : F) * rho 783)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 257, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 256, 5, 106⟩], residual := [((6119574525103358251799669196953331554920758650686027913419849353479772769666 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 784) * ((1 : F) + (1 : F) * rho 783) = (relationLc591 rho)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 256, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 257, 5, 106⟩], residual := [((5781387667770032033402740426547068681911852292873038357115912333087689425709 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 785) * ((1 : F) + (-1 : F) * rho 783) = (relationLc592 rho)

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 106⟩], residual := [((1 : F), 784), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108) * (relationLc593 rho) = ((1 : F) * rho 786)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 106⟩], residual := [((1 : F), 785), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 108) * (relationLc594 rho) = ((1 : F) * rho 787)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8078264009197303589973580787041376885392487990718089434226936659876814776586 : F), 256, 5, 107⟩], residual := [((2237627806897634859307700086481705695837285251959374786449150540179810463872 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 257, 5, 107⟩], residual := [((18814393029343576151900933502353303155794589744080597726630900043602610997 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow787 (rho : Nat -> F) : Prop :=
    (relationLc595 rho) * (relationLc596 rho) = ((1 : F) * rho 788)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 256, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 257, 5, 107⟩], residual := [((869312241302472422173400596354412836831435332259404920294906345637469615013 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 789) * ((1 : F) + (1 : F) * rho 788) = (relationLc597 rho)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), runs := [⟨(5095626471852925593039170016301562117528063911499974307822648888891557910728 : F), 257, 5, 107⟩, ⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 256, 5, 107⟩], residual := [((4952435177904146458220233564938569113666684850685530035021249355113584218572 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 790) * ((1 : F) + (-1 : F) * rho 788) = (relationLc598 rho)

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 107⟩], residual := [((1 : F), 789), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109) * (relationLc599 rho) = ((1 : F) * rho 791)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 107⟩], residual := [((1 : F), 790), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 109) * (relationLc600 rho) = ((1 : F) * rho 792)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3734468812329077059924950204727031629122473060052984382313629408831163347172 : F), 256, 5, 108⟩], residual := [((6557751697947992234906904655494192058588742758853648003926269888731369902088 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 257, 5, 108⟩], residual := [((2218295594801486147569305803986860457559073079568149607218132593548481807376 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow792 (rho : Nat -> F) : Prop :=
    (relationLc601 rho) * (relationLc602 rho) = ((1 : F) * rho 793)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 256, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 257, 5, 108⟩], residual := [((5393079387353339316638264165513689158376760761845116205268584841928154384739 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 794) * ((1 : F) + (1 : F) * rho 793) = (relationLc603 rho)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), runs := [⟨(2804875737665999540741971653029665078649172296001184708308954910855343472395 : F), 257, 5, 108⟩, ⟨(7237458763619685728655092675529746625581707090275300020477957794743309966828 : F), 256, 5, 108⟩], residual := [((4610710194873497428010206747833905789852935740684970065079125792390369064319 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 795) * ((1 : F) + (-1 : F) * rho 793) = (relationLc604 rho)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 108⟩], residual := [((1 : F), 794), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * (relationLc605 rho) = ((1 : F) * rho 796)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 108⟩], residual := [((1 : F), 795), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 110) * (relationLc606 rho) = ((1 : F) * rho 797)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(568596184901683623662901086713254788204948897441843689512915291178609917092 : F), 256, 5, 109⟩], residual := [((7763900067584871699239273873026970932379347276428893124063049670480466451269 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 257, 5, 109⟩], residual := [((2671857680381596165133534350268632670833089194821162061937485372477153821385 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow797 (rho : Nat -> F) : Prop :=
    (relationLc607 rho) * (relationLc608 rho) = ((1 : F) * rho 798)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 256, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 257, 5, 109⟩], residual := [((1701679332571768943703758843872422402052409412842616772630170512169713255766 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 799) * ((1 : F) + (1 : F) * rho 798) = (relationLc609 rho)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), runs := [⟨(5403413822519014138926395732456617907956907766881909044385408535445061459445 : F), 257, 5, 109⟩, ⟨(5473866297145646085425721623875244674025755294626119106491049022693373548436 : F), 256, 5, 109⟩], residual := [((7327999024681437242838383046063829421577254374760206324494471040672979390485 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 800) * ((1 : F) + (-1 : F) * rho 798) = (relationLc610 rho)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 109⟩], residual := [((1 : F), 799), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 111) * (relationLc611 rho) = ((1 : F) * rho 801)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 109⟩], residual := [((1 : F), 800), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 111) * (relationLc612 rho) = ((1 : F) * rho 802)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4844898403553568028259035569409623674492133411001005402900268525269019383147 : F), 256, 5, 110⟩], residual := [((1584370194938709372334615152442198386778091293051099268892628669364464823643 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 257, 5, 110⟩], residual := [((5822744375078125061629763314676319349385425802373362430870652483474328191553 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow802 (rho : Nat -> F) : Prop :=
    (relationLc613 rho) * (relationLc614 rho) = ((1 : F) * rho 803)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 257, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 256, 5, 110⟩], residual := [((5848426111569284956760704737914146597703585744547952855802896683994891299125 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 804) * ((1 : F) + (1 : F) * rho 803) = (relationLc615 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
