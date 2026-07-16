import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs92

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2024 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 2062, 5, 102⟩], residual := [((6332646434650531287581198517323463195769672261257243905099669120949071975567 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2567 (rho : Nat -> F) : Prop :=
    (relationLc2023 rho) * (relationLc2024 rho) = ((1 : F) * rho 2568)

def relationLc2025 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 2061, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 2062, 5, 102⟩], residual := [((4896676483582392362043429560204275339779405127791019854478882772518786982970 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2569) * ((1 : F) + (1 : F) * rho 2568) = (relationLc2025 rho)

def relationLc2026 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 2062, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 2061, 5, 102⟩], residual := [((4768414250969583693261357891166172345692760929377044798652568803671131166891 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2570) * ((1 : F) + (-1 : F) * rho 2568) = (relationLc2026 rho)

def relationLc2027 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 102⟩], residual := [((1 : F), 2569), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1909) * (relationLc2027 rho) = ((1 : F) * rho 2571)

def relationLc2028 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 102⟩], residual := [((1 : F), 2570), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1909) * (relationLc2028 rho) = ((1 : F) * rho 2572)

def relationLc2029 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6782707603869949925200121812141714622311528380453455977187924778481262425243 : F), 2061, 5, 103⟩], residual := [((6051673965157560092114760277064480394647900116693339783892646729960468842230 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2030 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 2062, 5, 103⟩], residual := [((2675555371787428154002211846582178465521211181571418107241108938057384245176 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2572 (rho : Nat -> F) : Prop :=
    (relationLc2029 rho) * (relationLc2030 rho) = ((1 : F) * rho 2573)

def relationLc2031 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 2062, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 2061, 5, 103⟩], residual := [((477693828313422869728226256862214003489372427301456209590948036674716055079 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2574) * ((1 : F) + (1 : F) * rho 2573) = (relationLc2031 rho)

def relationLc2032 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (737396937339798534095544879414660196085459468231040133308227184271684836906 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 2061, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 2062, 5, 103⟩], residual := [((3067103044818000616202305504759861198041621034645928761154638115016820716409 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2575) * ((1 : F) + (-1 : F) * rho 2573) = (relationLc2032 rho)

def relationLc2033 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 103⟩], residual := [((1 : F), 2574), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1910) * (relationLc2033 rho) = ((1 : F) * rho 2576)

def relationLc2034 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 103⟩], residual := [((1 : F), 2575), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1910) * (relationLc2034 rho) = ((1 : F) * rho 2577)

def relationLc2035 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6679935628338152398468277509230599074206436943528958451241257955450738290339 : F), 2061, 5, 104⟩], residual := [((448133618054658546229980299568494592297006321682566444874660444562964050464 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2036 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 2062, 5, 104⟩], residual := [((1243508143831080745464502130485139434226495716753233102066310961361171472701 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2577 (rho : Nat -> F) : Prop :=
    (relationLc2035 rho) * (relationLc2036 rho) = ((1 : F) * rho 2578)

def relationLc2037 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 2062, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 2061, 5, 104⟩], residual := [((7345695542910917652012471286943161470832217416509275439976767530282809120128 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2579) * ((1 : F) + (1 : F) * rho 2578) = (relationLc2037 rho)

def relationLc2038 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 2061, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 2062, 5, 104⟩], residual := [((3796930954529644023654080320640847780983417184699651433626814643213042677538 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2580) * ((1 : F) + (-1 : F) * rho 2578) = (relationLc2038 rho)

def relationLc2039 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 104⟩], residual := [((1 : F), 2579), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1911) * (relationLc2039 rho) = ((1 : F) * rho 2581)

def relationLc2040 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 104⟩], residual := [((1 : F), 2580), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1911) * (relationLc2040 rho) = ((1 : F) * rho 2582)

def relationLc2041 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8420431283516515239166733457192509618731498049875930476294212808737930130122 : F), 2061, 5, 105⟩], residual := [((6171900443306265436139038268085329064215901428278366185893286814715436360930 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2042 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 2062, 5, 105⟩], residual := [((7097193599401662905777697165846591568654430638302399028548073549995408685798 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2582 (rho : Nat -> F) : Prop :=
    (relationLc2041 rho) * (relationLc2042 rho) = ((1 : F) * rho 2583)

def relationLc2043 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 2061, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 2062, 5, 105⟩], residual := [((4231306193089116798580360075836071405752260225710611169800752716179934854982 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2584) * ((1 : F) + (1 : F) * rho 2583) = (relationLc2043 rho)

def relationLc2044 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), runs := [⟨(2839969912927279872840689853134876610051396664426100865882342327231018969797 : F), 2062, 5, 105⟩, ⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 2061, 5, 105⟩], residual := [((1655897341974058602991122781470433356950214897226624602461013101212155498886 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2585) * ((1 : F) + (-1 : F) * rho 2583) = (relationLc2044 rho)

def relationLc2045 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 105⟩], residual := [((1 : F), 2584), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1912) * (relationLc2045 rho) = ((1 : F) * rho 2586)

def relationLc2046 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 105⟩], residual := [((1 : F), 2585), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1912) * (relationLc2046 rho) = ((1 : F) * rho 2587)

def relationLc2047 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4192118223431191948576229703026611961899211540869084381246995287642068887532 : F), 2061, 5, 106⟩], residual := [((7513835879182803745630240013231637882820161472951662458538143120260969668224 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2048 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 2062, 5, 106⟩], residual := [((2214913009684229514296527901173036753304215905453315312871645431738308265406 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2587 (rho : Nat -> F) : Prop :=
    (relationLc2047 rho) * (relationLc2048 rho) = ((1 : F) * rho 2588)

def relationLc2049 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 2062, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 2061, 5, 106⟩], residual := [((6119574525103358251799669196953331554920758650686027913419849353479772769666 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2589) * ((1 : F) + (1 : F) * rho 2588) = (relationLc2049 rho)

def relationLc2050 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), runs := [⟨(1260524991046773370299244198533464015894934729825781128565583702027868659052 : F), 2061, 5, 106⟩, ⟨(7847665093965199262765649729514342179918586112319869662163339061915858921839 : F), 2062, 5, 106⟩], residual := [((5781387667770032033402740426547068681911852292873038357115912333087689425709 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2590) * ((1 : F) + (-1 : F) * rho 2588) = (relationLc2050 rho)

def relationLc2051 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 106⟩], residual := [((1 : F), 2589), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1913) * (relationLc2051 rho) = ((1 : F) * rho 2591)

def relationLc2052 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 106⟩], residual := [((1 : F), 2590), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1913) * (relationLc2052 rho) = ((1 : F) * rho 2592)

def relationLc2053 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8078264009197303589973580787041376885392487990718089434226936659876814776586 : F), 2061, 5, 107⟩], residual := [((2237627806897634859307700086481705695837285251959374786449150540179810463872 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2054 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), runs := [⟨(6962626945289492114397012865766748935061305438121947559619745232591740444316 : F), 2062, 5, 107⟩], residual := [((18814393029343576151900933502353303155794589744080597726630900043602610997 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
