import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs20

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow1507 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * (relationLc26 rho) = ((1 : F) * rho 1507)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 18⟩], residual := [((1 : F), 1506), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1508 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1181) * (relationLc27 rho) = ((1 : F) * rho 1508)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6643508391709724463589878353684058023617056232110686792795834182185961140404 : F), 1417, 5, 19⟩], residual := [((2209543493147763122138800233332601975555185011671134092896657819934667542426 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 1418, 5, 19⟩], residual := [((2487208284587912123787788577845936339827982735097033603632058006442540723701 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1509 (rho : Nat -> F) : Prop :=
    (relationLc28 rho) * (relationLc29 rho) = ((1 : F) * rho 1509)

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 1417, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 1418, 5, 19⟩], residual := [((3365649374562641046772320133956740117659027944051037965123140417226387519001 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1510 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1510) * ((1 : F) + (1 : F) * rho 1509) = (relationLc30 rho)

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 1418, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 1417, 5, 19⟩], residual := [((5808640555860438821890984515658902881525963743091303230326168310925894840053 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1511 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1511) * ((1 : F) + (-1 : F) * rho 1509) = (relationLc31 rho)

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 19⟩], residual := [((1 : F), 1510), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1512 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * (relationLc32 rho) = ((1 : F) * rho 1512)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 19⟩], residual := [((1 : F), 1511), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1513 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1182) * (relationLc33 rho) = ((1 : F) * rho 1513)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4547162235348947243238008479627522990589589790687136893721879719094142964019 : F), 1417, 5, 20⟩], residual := [((6706011816284499716737133831099412984726562282890871397453321555492539914902 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 1418, 5, 20⟩], residual := [((5885055947262455403783542055810834063701953521481358486634294438660993644664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1514 (rho : Nat -> F) : Prop :=
    (relationLc34 rho) * (relationLc35 rho) = ((1 : F) * rho 1514)

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 1418, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 1417, 5, 20⟩], residual := [((5982314375364689463413200176217875439091396467419170152158045269199452583440 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1515) * ((1 : F) + (1 : F) * rho 1514) = (relationLc36 rho)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 1417, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 1418, 5, 20⟩], residual := [((4730295249468079370905462474074922633483114481921674078156183716389022375455 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1516) * ((1 : F) + (-1 : F) * rho 1514) = (relationLc37 rho)

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 20⟩], residual := [((1 : F), 1515), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1183) * (relationLc38 rho) = ((1 : F) * rho 1517)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 20⟩], residual := [((1 : F), 1516), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1183) * (relationLc39 rho) = ((1 : F) * rho 1518)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3728101596810754748684349750569880747398501745992542539845809088912724430139 : F), 1417, 5, 21⟩], residual := [((8040080451790361184373803667588748447205221309356387487312699224282947065497 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 1418, 5, 21⟩], residual := [((2557686683957201271713968558873229045637760122097754578207391675438866753541 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1519 (rho : Nat -> F) : Prop :=
    (relationLc40 rho) * (relationLc41 rho) = ((1 : F) * rho 1519)

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 1417, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 1418, 5, 21⟩], residual := [((913943588968283754766539202608832435729385581516361924395230203637783968129 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1520) * ((1 : F) + (1 : F) * rho 1519) = (relationLc42 rho)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4029315904084450570318826444671111313728699464133269237928183563333377580 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 1418, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 1417, 5, 21⟩], residual := [((8000864483878691791898477946946467170010238195716502441342613371604929246839 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1521) * ((1 : F) + (-1 : F) * rho 1519) = (relationLc43 rho)

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 21⟩], residual := [((1 : F), 1520), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1522 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * (relationLc44 rho) = ((1 : F) * rho 1522)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 21⟩], residual := [((1 : F), 1521), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1184) * (relationLc45 rho) = ((1 : F) * rho 1523)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(994817038831961136268678878221296264248924711603146303238002847613107596871 : F), 1417, 5, 22⟩], residual := [((4333806451640208563133206664169697277880755031096301968993370846588442832435 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc47 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 1418, 5, 22⟩], residual := [((7071464963871787122399507600667271879794146146561835643777870962618630236915 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1524 (rho : Nat -> F) : Prop :=
    (relationLc46 rho) * (relationLc47 rho) = ((1 : F) * rho 1524)

def relationLc48 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 1417, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 1418, 5, 22⟩], residual := [((7942223457921394342030264887203263494668619979155020070277987141247197835781 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1525) * ((1 : F) + (1 : F) * rho 1524) = (relationLc48 rho)

def relationLc49 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 1418, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 1417, 5, 22⟩], residual := [((5804948904970779234941133716338260259407582082049612629588083752293826463974 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1526) * ((1 : F) + (-1 : F) * rho 1524) = (relationLc49 rho)

def relationLc50 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 22⟩], residual := [((1 : F), 1525), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * (relationLc50 rho) = ((1 : F) * rho 1527)

def relationLc51 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 22⟩], residual := [((1 : F), 1526), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1185) * (relationLc51 rho) = ((1 : F) * rho 1528)

def relationLc52 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4677106239863583102131041193072361225769930732564476713504058014384475151580 : F), 1417, 5, 23⟩], residual := [((474071249166718343299739642372708598447420281867608460018052041379512488143 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc53 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 1418, 5, 23⟩], residual := [((6712990382380332376237152323305318414633590549427718934851741915714756969433 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1529 (rho : Nat -> F) : Prop :=
    (relationLc52 rho) * (relationLc53 rho) = ((1 : F) * rho 1529)

def relationLc54 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 1418, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 1417, 5, 23⟩], residual := [((2880854338945334318209400171227487369973573810528561735368396329477951754525 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1530 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1530) * ((1 : F) + (1 : F) * rho 1529) = (relationLc54 rho)

def relationLc55 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), runs := [⟨(2942622752755342347611893194417775142695799758618814174077502772937071296121 : F), 1417, 5, 23⟩, ⟨(6528465836198314638769658150694466571330186983885237840100057655604612727015 : F), 1418, 5, 23⟩], residual := [((114257104164877408089912102852953841102673709886080965360633577678164539600 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1531) * ((1 : F) + (-1 : F) * rho 1529) = (relationLc55 rho)

def relationLc56 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 23⟩], residual := [((1 : F), 1530), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * (relationLc56 rho) = ((1 : F) * rho 1532)

def relationLc57 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 23⟩], residual := [((1 : F), 1531), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1186) * (relationLc57 rho) = ((1 : F) * rho 1533)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
