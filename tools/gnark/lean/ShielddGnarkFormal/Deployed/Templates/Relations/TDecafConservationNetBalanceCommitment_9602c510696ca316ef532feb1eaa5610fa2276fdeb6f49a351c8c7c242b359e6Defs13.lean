import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs12

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 17⟩], residual := [((1 : F), 727), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 406) * (relationLc15 rho) = ((1 : F) * rho 729)

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828905490331402567127317718620992522717602406153594868504241687625864929871 : F), 643, 5, 18⟩], residual := [((649487477767656260893584996701986459190083997516153934234830286901445970460 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 644, 5, 18⟩], residual := [((8406438023398840024751149863847075581791572129463307242849448687007104168826 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow730 (rho : Nat -> F) : Prop :=
    (relationLc16 rho) * (relationLc17 rho) = ((1 : F) * rho 730)

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 643, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 644, 5, 18⟩], residual := [((6743476999422635871766324556472590907938718762889605877842090502305363999591 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * ((1 : F) + (1 : F) * rho 730) = (relationLc18 rho)

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 644, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 643, 5, 18⟩], residual := [((5122264204975948501500430644356216023851223568650180489782718482809907607381 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 732) * ((1 : F) + (-1 : F) * rho 730) = (relationLc19 rho)

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 18⟩], residual := [((1 : F), 731), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 407) * (relationLc20 rho) = ((1 : F) * rho 733)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 18⟩], residual := [((1 : F), 732), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 407) * (relationLc21 rho) = ((1 : F) * rho 734)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6643508391709724463589878353684058023617056232110686792795834182185961140404 : F), 643, 5, 19⟩], residual := [((2209543493147763122138800233332601975555185011671134092896657819934667542426 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 644, 5, 19⟩], residual := [((2487208284587912123787788577845936339827982735097033603632058006442540723701 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow735 (rho : Nat -> F) : Prop :=
    (relationLc22 rho) * (relationLc23 rho) = ((1 : F) * rho 735)

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 643, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 644, 5, 19⟩], residual := [((3365649374562641046772320133956740117659027944051037965123140417226387519001 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 736) * ((1 : F) + (1 : F) * rho 735) = (relationLc24 rho)

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 644, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 643, 5, 19⟩], residual := [((5808640555860438821890984515658902881525963743091303230326168310925894840053 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 737) * ((1 : F) + (-1 : F) * rho 735) = (relationLc25 rho)

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 19⟩], residual := [((1 : F), 736), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 408) * (relationLc26 rho) = ((1 : F) * rho 738)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 19⟩], residual := [((1 : F), 737), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 408) * (relationLc27 rho) = ((1 : F) * rho 739)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4547162235348947243238008479627522990589589790687136893721879719094142964019 : F), 643, 5, 20⟩], residual := [((6706011816284499716737133831099412984726562282890871397453321555492539914902 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 644, 5, 20⟩], residual := [((5885055947262455403783542055810834063701953521481358486634294438660993644664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow740 (rho : Nat -> F) : Prop :=
    (relationLc28 rho) * (relationLc29 rho) = ((1 : F) * rho 740)

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 644, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 643, 5, 20⟩], residual := [((5982314375364689463413200176217875439091396467419170152158045269199452583440 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * ((1 : F) + (1 : F) * rho 740) = (relationLc30 rho)

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 643, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 644, 5, 20⟩], residual := [((4730295249468079370905462474074922633483114481921674078156183716389022375455 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 742) * ((1 : F) + (-1 : F) * rho 740) = (relationLc31 rho)

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 20⟩], residual := [((1 : F), 741), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 409) * (relationLc32 rho) = ((1 : F) * rho 743)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 20⟩], residual := [((1 : F), 742), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 409) * (relationLc33 rho) = ((1 : F) * rho 744)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3728101596810754748684349750569880747398501745992542539845809088912724430139 : F), 643, 5, 21⟩], residual := [((8040080451790361184373803667588748447205221309356387487312699224282947065497 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 644, 5, 21⟩], residual := [((2557686683957201271713968558873229045637760122097754578207391675438866753541 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow745 (rho : Nat -> F) : Prop :=
    (relationLc34 rho) * (relationLc35 rho) = ((1 : F) * rho 745)

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 643, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 644, 5, 21⟩], residual := [((913943588968283754766539202608832435729385581516361924395230203637783968129 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * ((1 : F) + (1 : F) * rho 745) = (relationLc36 rho)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4029315904084450570318826444671111313728699464133269237928183563333377580 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 644, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 643, 5, 21⟩], residual := [((8000864483878691791898477946946467170010238195716502441342613371604929246839 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow747 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 747) * ((1 : F) + (-1 : F) * rho 745) = (relationLc37 rho)

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 21⟩], residual := [((1 : F), 746), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 410) * (relationLc38 rho) = ((1 : F) * rho 748)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 21⟩], residual := [((1 : F), 747), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 410) * (relationLc39 rho) = ((1 : F) * rho 749)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(994817038831961136268678878221296264248924711603146303238002847613107596871 : F), 643, 5, 22⟩], residual := [((4333806451640208563133206664169697277880755031096301968993370846588442832435 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 644, 5, 22⟩], residual := [((7071464963871787122399507600667271879794146146561835643777870962618630236915 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow750 (rho : Nat -> F) : Prop :=
    (relationLc40 rho) * (relationLc41 rho) = ((1 : F) * rho 750)

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 643, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 644, 5, 22⟩], residual := [((7942223457921394342030264887203263494668619979155020070277987141247197835781 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow751 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 751) * ((1 : F) + (1 : F) * rho 750) = (relationLc42 rho)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), runs := [⟨(3203690162821497672070646163098932016292959140284064976205566217586548856517 : F), 644, 5, 22⟩, ⟨(8102929153644176738754722287528962723334028348741311020086199905182281950830 : F), 643, 5, 22⟩], residual := [((5804948904970779234941133716338260259407582082049612629588083752293826463974 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow752 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 752) * ((1 : F) + (-1 : F) * rho 750) = (relationLc43 rho)

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 22⟩], residual := [((1 : F), 751), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow753 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 411) * (relationLc44 rho) = ((1 : F) * rho 753)

def relationLc45 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 22⟩], residual := [((1 : F), 752), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow754 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 411) * (relationLc45 rho) = ((1 : F) * rho 754)

def relationLc46 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4677106239863583102131041193072361225769930732564476713504058014384475151580 : F), 643, 5, 23⟩], residual := [((474071249166718343299739642372708598447420281867608460018052041379512488143 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
