import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs59

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc14 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), runs := [⟨(4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), 4471, 5, 16⟩, ⟨(8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), 4472, 5, 16⟩], residual := [((617534781425693823249192518578844136031208400172349904033531504765169799643 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4550) * ((1 : F) + (-1 : F) * rho 4548) = (relationLc14 rho)

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 16⟩], residual := [((1 : F), 4549), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4233) * (relationLc15 rho) = ((1 : F) * rho 4551)

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 16⟩], residual := [((1 : F), 4550), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4233) * (relationLc16 rho) = ((1 : F) * rho 4552)

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6217512633984546414735836128326255726023522379259055416373769461284974097035 : F), 4471, 5, 17⟩], residual := [((5028607143700110033333663228544298955912523604071041156254026001489639101905 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (819275311976372903039582931987059897300612239917912253560305419700142984723 : F), runs := [⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 4472, 5, 17⟩], residual := [((6206482687715640012397120796923869702581060070187380316379773683459441831723 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4727 (rho : Nat -> F) : Prop :=
    (relationLc17 rho) * (relationLc18 rho) = ((1 : F) * rho 4553)

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (819275311976372903039582931987059897300612239917912253560305419700142984723 : F), runs := [⟨(2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), 4471, 5, 17⟩, ⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 4472, 5, 17⟩], residual := [((1780465208751443176257827503378214155827166649704107869410837646328794166864 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4554) * ((1 : F) + (1 : F) * rho 4553) = (relationLc19 rho)

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), runs := [⟨(2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), 4472, 5, 17⟩, ⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 4471, 5, 17⟩], residual := [((2177664024461811719582740746706857168964497177579522411060614128113934575172 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4555) * ((1 : F) + (-1 : F) * rho 4553) = (relationLc20 rho)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 17⟩], residual := [((1 : F), 4554), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4234) * (relationLc21 rho) = ((1 : F) * rho 4556)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 17⟩], residual := [((1 : F), 4555), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4234) * (relationLc22 rho) = ((1 : F) * rho 4557)

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828905490331402567127317718620992522717602406153594868504241687625864929871 : F), 4471, 5, 18⟩], residual := [((649487477767656260893584996701986459190083997516153934234830286901445970460 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 4472, 5, 18⟩], residual := [((8406438023398840024751149863847075581791572129463307242849448687007104168826 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4732 (rho : Nat -> F) : Prop :=
    (relationLc23 rho) * (relationLc24 rho) = ((1 : F) * rho 4558)

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 4471, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 4472, 5, 18⟩], residual := [((6743476999422635871766324556472590907938718762889605877842090502305363999591 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4559) * ((1 : F) + (1 : F) * rho 4558) = (relationLc25 rho)

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 4472, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 4471, 5, 18⟩], residual := [((5122264204975948501500430644356216023851223568650180489782718482809907607381 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4560) * ((1 : F) + (-1 : F) * rho 4558) = (relationLc26 rho)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 18⟩], residual := [((1 : F), 4559), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * (relationLc27 rho) = ((1 : F) * rho 4561)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 18⟩], residual := [((1 : F), 4560), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4235) * (relationLc28 rho) = ((1 : F) * rho 4562)

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6643508391709724463589878353684058023617056232110686792795834182185961140404 : F), 4471, 5, 19⟩], residual := [((2209543493147763122138800233332601975555185011671134092896657819934667542426 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 4472, 5, 19⟩], residual := [((2487208284587912123787788577845936339827982735097033603632058006442540723701 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4737 (rho : Nat -> F) : Prop :=
    (relationLc29 rho) * (relationLc30 rho) = ((1 : F) * rho 4563)

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 4471, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 4472, 5, 19⟩], residual := [((3365649374562641046772320133956740117659027944051037965123140417226387519001 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4564) * ((1 : F) + (1 : F) * rho 4563) = (relationLc31 rho)

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 4472, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 4471, 5, 19⟩], residual := [((5808640555860438821890984515658902881525963743091303230326168310925894840053 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4565) * ((1 : F) + (-1 : F) * rho 4563) = (relationLc32 rho)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 19⟩], residual := [((1 : F), 4564), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4236) * (relationLc33 rho) = ((1 : F) * rho 4566)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 19⟩], residual := [((1 : F), 4565), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4236) * (relationLc34 rho) = ((1 : F) * rho 4567)

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4547162235348947243238008479627522990589589790687136893721879719094142964019 : F), 4471, 5, 20⟩], residual := [((6706011816284499716737133831099412984726562282890871397453321555492539914902 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 4472, 5, 20⟩], residual := [((5885055947262455403783542055810834063701953521481358486634294438660993644664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4742 (rho : Nat -> F) : Prop :=
    (relationLc35 rho) * (relationLc36 rho) = ((1 : F) * rho 4568)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 4472, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 4471, 5, 20⟩], residual := [((5982314375364689463413200176217875439091396467419170152158045269199452583440 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4569) * ((1 : F) + (1 : F) * rho 4568) = (relationLc37 rho)

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 4471, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 4472, 5, 20⟩], residual := [((4730295249468079370905462474074922633483114481921674078156183716389022375455 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4570) * ((1 : F) + (-1 : F) * rho 4568) = (relationLc38 rho)

def relationLc39 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 20⟩], residual := [((1 : F), 4569), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4237) * (relationLc39 rho) = ((1 : F) * rho 4571)

def relationLc40 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 20⟩], residual := [((1 : F), 4570), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4746 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4237) * (relationLc40 rho) = ((1 : F) * rho 4572)

def relationLc41 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3728101596810754748684349750569880747398501745992542539845809088912724430139 : F), 4471, 5, 21⟩], residual := [((8040080451790361184373803667588748447205221309356387487312699224282947065497 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc42 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 4472, 5, 21⟩], residual := [((2557686683957201271713968558873229045637760122097754578207391675438866753541 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4747 (rho : Nat -> F) : Prop :=
    (relationLc41 rho) * (relationLc42 rho) = ((1 : F) * rho 4573)

def relationLc43 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 4471, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 4472, 5, 21⟩], residual := [((913943588968283754766539202608832435729385581516361924395230203637783968129 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4748 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4574) * ((1 : F) + (1 : F) * rho 4573) = (relationLc43 rho)

def relationLc44 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4029315904084450570318826444671111313728699464133269237928183563333377580 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 4472, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 4471, 5, 21⟩], residual := [((8000864483878691791898477946946467170010238195716502441342613371604929246839 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow4749 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4575) * ((1 : F) + (-1 : F) * rho 4573) = (relationLc44 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
