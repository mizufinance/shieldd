import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6Defs13

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6

variable {F : Type} [CommRing F]

def relationLc8 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), runs := [⟨(4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), 772, 5, 16⟩, ⟨(8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), 773, 5, 16⟩], residual := [((617534781425693823249192518578844136031208400172349904033531504765169799643 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 851) * ((1 : F) + (-1 : F) * rho 849) = (relationLc8 rho)

def relationLc9 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 16⟩], residual := [((1 : F), 850), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 534) * (relationLc9 rho) = ((1 : F) * rho 852)

def relationLc10 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 16⟩], residual := [((1 : F), 851), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 534) * (relationLc10 rho) = ((1 : F) * rho 853)

def relationLc11 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6217512633984546414735836128326255726023522379259055416373769461284974097035 : F), 772, 5, 17⟩], residual := [((5028607143700110033333663228544298955912523604071041156254026001489639101905 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc12 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (819275311976372903039582931987059897300612239917912253560305419700142984723 : F), runs := [⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 773, 5, 17⟩], residual := [((6206482687715640012397120796923869702581060070187380316379773683459441831723 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow854 (rho : Nat -> F) : Prop :=
    (relationLc11 rho) * (relationLc12 rho) = ((1 : F) * rho 854)

def relationLc13 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (819275311976372903039582931987059897300612239917912253560305419700142984723 : F), runs := [⟨(2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), 772, 5, 17⟩, ⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 773, 5, 17⟩], residual := [((1780465208751443176257827503378214155827166649704107869410837646328794166864 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 855) * ((1 : F) + (1 : F) * rho 854) = (relationLc13 rho)

def relationLc14 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), runs := [⟨(2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), 773, 5, 17⟩, ⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 772, 5, 17⟩], residual := [((2177664024461811719582740746706857168964497177579522411060614128113934575172 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 856) * ((1 : F) + (-1 : F) * rho 854) = (relationLc14 rho)

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 17⟩], residual := [((1 : F), 855), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 535) * (relationLc15 rho) = ((1 : F) * rho 857)

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 17⟩], residual := [((1 : F), 856), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 535) * (relationLc16 rho) = ((1 : F) * rho 858)

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828905490331402567127317718620992522717602406153594868504241687625864929871 : F), 772, 5, 18⟩], residual := [((649487477767656260893584996701986459190083997516153934234830286901445970460 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 773, 5, 18⟩], residual := [((8406438023398840024751149863847075581791572129463307242849448687007104168826 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow859 (rho : Nat -> F) : Prop :=
    (relationLc17 rho) * (relationLc18 rho) = ((1 : F) * rho 859)

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 772, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 773, 5, 18⟩], residual := [((6743476999422635871766324556472590907938718762889605877842090502305363999591 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 860) * ((1 : F) + (1 : F) * rho 859) = (relationLc19 rho)

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 773, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 772, 5, 18⟩], residual := [((5122264204975948501500430644356216023851223568650180489782718482809907607381 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 861) * ((1 : F) + (-1 : F) * rho 859) = (relationLc20 rho)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 18⟩], residual := [((1 : F), 860), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 536) * (relationLc21 rho) = ((1 : F) * rho 862)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 18⟩], residual := [((1 : F), 861), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 536) * (relationLc22 rho) = ((1 : F) * rho 863)

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6643508391709724463589878353684058023617056232110686792795834182185961140404 : F), 772, 5, 19⟩], residual := [((2209543493147763122138800233332601975555185011671134092896657819934667542426 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 773, 5, 19⟩], residual := [((2487208284587912123787788577845936339827982735097033603632058006442540723701 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow864 (rho : Nat -> F) : Prop :=
    (relationLc23 rho) * (relationLc24 rho) = ((1 : F) * rho 864)

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 772, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 773, 5, 19⟩], residual := [((3365649374562641046772320133956740117659027944051037965123140417226387519001 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 865) * ((1 : F) + (1 : F) * rho 864) = (relationLc25 rho)

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 773, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 772, 5, 19⟩], residual := [((5808640555860438821890984515658902881525963743091303230326168310925894840053 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 866) * ((1 : F) + (-1 : F) * rho 864) = (relationLc26 rho)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 19⟩], residual := [((1 : F), 865), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 537) * (relationLc27 rho) = ((1 : F) * rho 867)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 19⟩], residual := [((1 : F), 866), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 537) * (relationLc28 rho) = ((1 : F) * rho 868)

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4547162235348947243238008479627522990589589790687136893721879719094142964019 : F), 772, 5, 20⟩], residual := [((6706011816284499716737133831099412984726562282890871397453321555492539914902 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 773, 5, 20⟩], residual := [((5885055947262455403783542055810834063701953521481358486634294438660993644664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow869 (rho : Nat -> F) : Prop :=
    (relationLc29 rho) * (relationLc30 rho) = ((1 : F) * rho 869)

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 773, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 772, 5, 20⟩], residual := [((5982314375364689463413200176217875439091396467419170152158045269199452583440 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 870) * ((1 : F) + (1 : F) * rho 869) = (relationLc31 rho)

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 772, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 773, 5, 20⟩], residual := [((4730295249468079370905462474074922633483114481921674078156183716389022375455 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 871) * ((1 : F) + (-1 : F) * rho 869) = (relationLc32 rho)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 772, 5, 20⟩], residual := [((1 : F), 870), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 538) * (relationLc33 rho) = ((1 : F) * rho 872)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 773, 5, 20⟩], residual := [((1 : F), 871), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 538) * (relationLc34 rho) = ((1 : F) * rho 873)

def relationLc35 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3728101596810754748684349750569880747398501745992542539845809088912724430139 : F), 772, 5, 21⟩], residual := [((8040080451790361184373803667588748447205221309356387487312699224282947065497 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc36 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 773, 5, 21⟩], residual := [((2557686683957201271713968558873229045637760122097754578207391675438866753541 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow874 (rho : Nat -> F) : Prop :=
    (relationLc35 rho) * (relationLc36 rho) = ((1 : F) * rho 874)

def relationLc37 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 772, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 773, 5, 21⟩], residual := [((913943588968283754766539202608832435729385581516361924395230203637783968129 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 875) * ((1 : F) + (1 : F) * rho 874) = (relationLc37 rho)

def relationLc38 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4029315904084450570318826444671111313728699464133269237928183563333377580 : F), runs := [⟨(4029315904084450570318826444671111313728699464133269237928183563333377580 : F), 773, 5, 21⟩, ⟨(6220082833548977525275183860012183007525644166892195675366816218184587478810 : F), 772, 5, 21⟩], residual := [((8000864483878691791898477946946467170010238195716502441342613371604929246839 : F), 517)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 876) * ((1 : F) + (-1 : F) * rho 874) = (relationLc38 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment2_236fd0549adf468bfd993cdf1a3c2b4bbf80d1c8f9b95e4fda163888ecd365f6
