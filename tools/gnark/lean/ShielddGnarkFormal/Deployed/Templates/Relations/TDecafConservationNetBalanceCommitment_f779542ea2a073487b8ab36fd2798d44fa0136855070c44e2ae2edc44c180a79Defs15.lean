import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79Defs14

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79

variable {F : Type} [CommRing F]

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 662) * ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F) * rho 646 + (-1 : F) * rho 901 + (-1 : F) * rho 906 + (-1 : F) * rho 911 + (-1 : F) * rho 916 + (-1 : F) * rho 921 + (-1 : F) * rho 926 + (-1 : F) * rho 931 + (-1 : F) * rho 936 + (-1 : F) * rho 941 + (-1 : F) * rho 946 + (-1 : F) * rho 951 + (-1 : F) * rho 956 + (-1 : F) * rho 961 + (-1 : F) * rho 966 + (-1 : F) * rho 971 + (1 : F) * rho 974) = ((1 : F) * rho 976)

def relationRow977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 662) * ((-1 : F) + (4107124906918471747900842186134774287194237746620146206217253999774542118664 : F) * rho 646 + (-1 : F) * rho 902 + (-1 : F) * rho 907 + (-1 : F) * rho 912 + (-1 : F) * rho 917 + (-1 : F) * rho 922 + (-1 : F) * rho 927 + (-1 : F) * rho 932 + (-1 : F) * rho 937 + (-1 : F) * rho 942 + (-1 : F) * rho 947 + (-1 : F) * rho 952 + (-1 : F) * rho 957 + (-1 : F) * rho 962 + (-1 : F) * rho 967 + (-1 : F) * rho 972 + (1 : F) * rho 975) = ((1 : F) * rho 977)

def relationLc6 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5655144063847142909727621017254958060245267142826226220399425112054790239608 : F), 901, 5, 16⟩], residual := [((7366507035085478869954051373844662737727746575744340563751144571776529376496 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc7 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), runs := [⟨(4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), 902, 5, 16⟩], residual := [((1159605738822407281431699221583995743481769319833006740002818380136437665345 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow978 (rho : Nat -> F) : Prop :=
    (relationLc6 rho) * (relationLc7 rho) = ((1 : F) * rho 978)

def relationLc8 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), runs := [⟨(4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), 902, 5, 16⟩, ⟨(8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), 901, 5, 16⟩], residual := [((7297626277395846063323829242106782668045763622129899968364813938001545182416 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 979) * ((1 : F) + (1 : F) * rho 978) = (relationLc8 rho)

def relationLc9 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), runs := [⟨(4444032376865254088855803037197955652585438616081156598253171238502916507154 : F), 901, 5, 16⟩, ⟨(8393223871515331068025388972935934341360706743222550757259837888042408912890 : F), 902, 5, 16⟩], residual := [((617534781425693823249192518578844136031208400172349904033531504765169799643 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 980) * ((1 : F) + (-1 : F) * rho 978) = (relationLc9 rho)

def relationLc10 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 16⟩], residual := [((1 : F), 979), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 663) * (relationLc10 rho) = ((1 : F) * rho 981)

def relationLc11 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 16⟩], residual := [((1 : F), 980), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 663) * (relationLc11 rho) = ((1 : F) * rho 982)

def relationLc12 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6217512633984546414735836128326255726023522379259055416373769461284974097035 : F), 901, 5, 17⟩], residual := [((5028607143700110033333663228544298955912523604071041156254026001489639101905 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc13 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (819275311976372903039582931987059897300612239917912253560305419700142984723 : F), runs := [⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 902, 5, 17⟩], residual := [((6206482687715640012397120796923869702581060070187380316379773683459441831723 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow983 (rho : Nat -> F) : Prop :=
    (relationLc12 rho) * (relationLc13 rho) = ((1 : F) * rho 983)

def relationLc14 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (819275311976372903039582931987059897300612239917912253560305419700142984723 : F), runs := [⟨(2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), 901, 5, 17⟩, ⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 902, 5, 17⟩], residual := [((1780465208751443176257827503378214155827166649704107869410837646328794166864 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 984) * ((1 : F) + (1 : F) * rho 983) = (relationLc14 rho)

def relationLc15 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), runs := [⟨(2542943807634681649141647701251490252481534597164615383981959940711754376824 : F), 902, 5, 17⟩, ⟨(819275311976372903039582931987059897300612239917912253560305419700142984723 : F), 901, 5, 17⟩], residual := [((2177664024461811719582740746706857168964497177579522411060614128113934575172 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 985) * ((1 : F) + (-1 : F) * rho 983) = (relationLc15 rho)

def relationLc16 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 17⟩], residual := [((1 : F), 984), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 664) * (relationLc16 rho) = ((1 : F) * rho 986)

def relationLc17 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 17⟩], residual := [((1 : F), 985), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 664) * (relationLc17 rho) = ((1 : F) * rho 987)

def relationLc18 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(828905490331402567127317718620992522717602406153594868504241687625864929871 : F), 901, 5, 18⟩], residual := [((649487477767656260893584996701986459190083997516153934234830286901445970460 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc19 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 902, 5, 18⟩], residual := [((8406438023398840024751149863847075581791572129463307242849448687007104168826 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow988 (rho : Nat -> F) : Prop :=
    (relationLc18 rho) * (relationLc19 rho) = ((1 : F) * rho 988)

def relationLc20 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 901, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 902, 5, 18⟩], residual := [((6743476999422635871766324556472590907938718762889605877842090502305363999591 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 989) * ((1 : F) + (1 : F) * rho 988) = (relationLc20 rho)

def relationLc21 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), runs := [⟨(6063179887454639805614971403487519172153936862083852379232050846597976333800 : F), 902, 5, 18⟩, ⟨(6191467936073612215061637726327013819089121821227998332283801969801190866016 : F), 901, 5, 18⟩], residual := [((5122264204975948501500430644356216023851223568650180489782718482809907607381 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 990) * ((1 : F) + (-1 : F) * rho 988) = (relationLc21 rho)

def relationLc22 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 18⟩], residual := [((1 : F), 989), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 665) * (relationLc22 rho) = ((1 : F) * rho 991)

def relationLc23 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 18⟩], residual := [((1 : F), 990), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 665) * (relationLc23 rho) = ((1 : F) * rho 992)

def relationLc24 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6643508391709724463589878353684058023617056232110686792795834182185961140404 : F), 901, 5, 19⟩], residual := [((2209543493147763122138800233332601975555185011671134092896657819934667542426 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc25 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 902, 5, 19⟩], residual := [((2487208284587912123787788577845936339827982735097033603632058006442540723701 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    (relationLc24 rho) * (relationLc25 rho) = ((1 : F) * rho 993)

def relationLc26 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 901, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 902, 5, 19⟩], residual := [((3365649374562641046772320133956740117659027944051037965123140417226387519001 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 994) * ((1 : F) + (1 : F) * rho 993) = (relationLc26 rho)

def relationLc27 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), runs := [⟨(5900184640743320529503015722999916332084331232508171255788195440638172610234 : F), 902, 5, 19⟩, ⟨(7110593505999222463739053746107650471729414318760450538645487623108270756074 : F), 901, 5, 19⟩], residual := [((5808640555860438821890984515658902881525963743091303230326168310925894840053 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 995) * ((1 : F) + (-1 : F) * rho 993) = (relationLc27 rho)

def relationLc28 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 19⟩], residual := [((1 : F), 994), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 666) * (relationLc28 rho) = ((1 : F) * rho 996)

def relationLc29 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 902, 5, 19⟩], residual := [((1 : F), 995), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 666) * (relationLc29 rho) = ((1 : F) * rho 997)

def relationLc30 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4547162235348947243238008479627522990589589790687136893721879719094142964019 : F), 901, 5, 20⟩], residual := [((6706011816284499716737133831099412984726562282890871397453321555492539914902 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc31 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 902, 5, 20⟩], residual := [((5885055947262455403783542055810834063701953521481358486634294438660993644664 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    (relationLc30 rho) * (relationLc31 rho) = ((1 : F) * rho 998)

def relationLc32 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 902, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 901, 5, 20⟩], residual := [((5982314375364689463413200176217875439091396467419170152158045269199452583440 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 999) * ((1 : F) + (1 : F) * rho 998) = (relationLc32 rho)

def relationLc33 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), runs := [⟨(2347169402218614395608389517473086809602003777742430438596816924380421207187 : F), 901, 5, 20⟩, ⟨(4339739092137762279270908412270303786721610512396489307464152334757667422031 : F), 902, 5, 20⟩], residual := [((4730295249468079370905462474074922633483114481921674078156183716389022375455 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1000) * ((1 : F) + (-1 : F) * rho 998) = (relationLc33 rho)

def relationLc34 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 901, 5, 20⟩], residual := [((1 : F), 999), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 646)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 667) * (relationLc34 rho) = ((1 : F) * rho 1001)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_f779542ea2a073487b8ab36fd2798d44fa0136855070c44e2ae2edc44c180a79
