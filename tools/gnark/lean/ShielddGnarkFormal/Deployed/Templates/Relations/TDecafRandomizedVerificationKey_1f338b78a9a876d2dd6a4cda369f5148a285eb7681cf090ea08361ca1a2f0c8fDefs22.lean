import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs21

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc553 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3924064994534324793975474756801986090331673654531897950005235266878248442401 : F), 256, 5, 100⟩], residual := [((5035170457329007498215706764068854229628709390625754048523837162638594296483 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc554 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 257, 5, 100⟩], residual := [((8155230957829955237422040779833784152504074606101570959547316848164455429470 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow752 (rho : Nat -> F) : Prop :=
    (relationLc553 rho) * (relationLc554 rho) = ((1 : F) * rho 753)

def relationLc555 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 257, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 256, 5, 100⟩], residual := [((1912300677205774330347012906125109509384534584471795111298793940730872627179 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 754) * ((1 : F) + (1 : F) * rho 753) = (relationLc555 rho)

def relationLc556 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (831489309690420503408102112404806787788471955046437886410714853252018799218 : F), runs := [⟨(3238251901170893923875304170690789248297548994624633727240622402921508296098 : F), 256, 5, 100⟩, ⟨(831489309690420503408102112404806787788471955046437886410714853252018799218 : F), 257, 5, 100⟩], residual := [((262055187765897102645017672611434223937468532503246140749754098589294437485 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 755) * ((1 : F) + (-1 : F) * rho 753) = (relationLc556 rho)

def relationLc557 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 100⟩], residual := [((1 : F), 754), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow755 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102) * (relationLc557 rho) = ((1 : F) * rho 756)

def relationLc558 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 100⟩], residual := [((1 : F), 755), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow756 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 102) * (relationLc558 rho) = ((1 : F) * rho 757)

def relationLc559 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1196062191799215498120628398783088685347096038747678159521022542856874490815 : F), 256, 5, 101⟩], residual := [((232394475062317995667702307533282018411905725724657218403247192666026112748 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc560 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 257, 5, 101⟩], residual := [((4433698353190224045945534049411289318335858580384154444661941282941348013884 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow757 (rho : Nat -> F) : Prop :=
    (relationLc559 rho) * (relationLc560 rho) = ((1 : F) * rho 758)

def relationLc561 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 257, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 256, 5, 101⟩], residual := [((5140974492574679535958980064578209064928547900979885264154168132176624598985 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow758 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 759) * ((1 : F) + (1 : F) * rho 758) = (relationLc561 rho)

def relationLc562 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), runs := [⟨(4024969340262992984114155915781887050592952034844952353735168789887307924959 : F), 256, 5, 101⟩, ⟨(7242898528619896386867535930083340003800166260649760693922446510038021917526 : F), 257, 5, 101⟩], residual := [((133351693975587787306538269865475091956848856903036364800291141558716137471 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow759 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 760) * ((1 : F) + (-1 : F) * rho 758) = (relationLc562 rho)

def relationLc563 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 101⟩], residual := [((1 : F), 759), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow760 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103) * (relationLc563 rho) = ((1 : F) * rho 761)

def relationLc564 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 101⟩], residual := [((1 : F), 760), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow761 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 103) * (relationLc564 rho) = ((1 : F) * rho 762)

def relationLc565 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6957933836512070640691601954586154943368265695190068047948916244564022113965 : F), 256, 5, 102⟩], residual := [((2388117029334704014295999076648404180615248067725950633314437733657386231537 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc566 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 257, 5, 102⟩], residual := [((6332646434650531287581198517323463195769672261257243905099669120949071975567 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow762 (rho : Nat -> F) : Prop :=
    (relationLc565 rho) * (relationLc566 rho) = ((1 : F) * rho 763)

def relationLc567 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 256, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 257, 5, 102⟩], residual := [((4896676483582392362043429560204275339779405127791019854478882772518786982970 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow763 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 764) * ((1 : F) + (1 : F) * rho 763) = (relationLc567 rho)

def relationLc568 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), runs := [⟨(8293025979027162776882723062026035474016645380258902145549106701918437545551 : F), 257, 5, 102⟩, ⟨(8369486889684447585888627798949610355657427187681987352515502147529450461315 : F), 256, 5, 102⟩], residual := [((4768414250969583693261357891166172345692760929377044798652568803671131166891 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow764 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 765) * ((1 : F) + (-1 : F) * rho 763) = (relationLc568 rho)

def relationLc569 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 102⟩], residual := [((1 : F), 764), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow765 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * (relationLc569 rho) = ((1 : F) * rho 766)

def relationLc570 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 102⟩], residual := [((1 : F), 765), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow766 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 104) * (relationLc570 rho) = ((1 : F) * rho 767)

def relationLc571 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6782707603869949925200121812141714622311528380453455977187924778481262425243 : F), 256, 5, 103⟩], residual := [((6051673965157560092114760277064480394647900116693339783892646729960468842230 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc572 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 257, 5, 103⟩], residual := [((2675555371787428154002211846582178465521211181571418107241108938057384245176 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow767 (rho : Nat -> F) : Prop :=
    (relationLc571 rho) * (relationLc572 rho) = ((1 : F) * rho 768)

def relationLc573 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 257, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 256, 5, 103⟩], residual := [((477693828313422869728226256862214003489372427301456209590948036674716055079 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow768 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 769) * ((1 : F) + (1 : F) * rho 768) = (relationLc573 rho)

def relationLc574 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (737396937339798534095544879414660196085459468231040133308227184271684836906 : F), runs := [⟨(4145120736921974848653672641363906012150585655549977251064616194653256647480 : F), 256, 5, 103⟩, ⟨(737396937339798534095544879414660196085459468231040133308227184271684836906 : F), 257, 5, 103⟩], residual := [((3067103044818000616202305504759861198041621034645928761154638115016820716409 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow769 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 770) * ((1 : F) + (-1 : F) * rho 768) = (relationLc574 rho)

def relationLc575 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 103⟩], residual := [((1 : F), 769), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow770 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105) * (relationLc575 rho) = ((1 : F) * rho 771)

def relationLc576 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 103⟩], residual := [((1 : F), 770), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow771 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 105) * (relationLc576 rho) = ((1 : F) * rho 772)

def relationLc577 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6679935628338152398468277509230599074206436943528958451241257955450738290339 : F), 256, 5, 104⟩], residual := [((448133618054658546229980299568494592297006321682566444874660444562964050464 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc578 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 257, 5, 104⟩], residual := [((1243508143831080745464502130485139434226495716753233102066310961361171472701 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow772 (rho : Nat -> F) : Prop :=
    (relationLc577 rho) * (relationLc578 rho) = ((1 : F) * rho 773)

def relationLc579 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 257, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 256, 5, 104⟩], residual := [((7345695542910917652012471286943161470832217416509275439976767530282809120128 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 774) * ((1 : F) + (1 : F) * rho 773) = (relationLc579 rho)

def relationLc580 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), runs := [⟨(3165553600781925786182099034285695654121495178855359865308824420665789475418 : F), 256, 5, 104⟩, ⟨(8167147535818804422916016525551184381735587022485451638480654810556174487100 : F), 257, 5, 104⟩], residual := [((3796930954529644023654080320640847780983417184699651433626814643213042677538 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 775) * ((1 : F) + (-1 : F) * rho 773) = (relationLc580 rho)

def relationLc581 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 104⟩], residual := [((1 : F), 774), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106) * (relationLc581 rho) = ((1 : F) * rho 776)

def relationLc582 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 104⟩], residual := [((1 : F), 775), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 106) * (relationLc582 rho) = ((1 : F) * rho 777)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8420431283516515239166733457192509618731498049875930476294212808737930130122 : F), 256, 5, 105⟩], residual := [((6171900443306265436139038268085329064215901428278366185893286814715436360930 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), runs := [⟨(7673403784918232616123976075905393119368464308773381374899074385988453339251 : F), 257, 5, 105⟩], residual := [((7097193599401662905777697165846591568654430638302399028548073549995408685798 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
