import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs85

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 2062, 5, 66⟩], residual := [((4408468101015441774814258326413622957135574875933813938428914074908842070788 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2387 (rho : Nat -> F) : Prop :=
    (relationLc1807 rho) * (relationLc1808 rho) = ((1 : F) * rho 2388)

def relationLc1809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 2061, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 2062, 5, 66⟩], residual := [((178604084442008667129224003944826058899689526701337172411296564781364656077 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2388 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2389) * ((1 : F) + (1 : F) * rho 2388) = (relationLc1809 rho)

def relationLc1810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 2062, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 2061, 5, 66⟩], residual := [((4120489983777216601665037330618917811763519217508859746155615907430572528784 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2389 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2390) * ((1 : F) + (-1 : F) * rho 2388) = (relationLc1810 rho)

def relationLc1811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 66⟩], residual := [((1 : F), 2389), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2390 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1873) * (relationLc1811 rho) = ((1 : F) * rho 2391)

def relationLc1812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 66⟩], residual := [((1 : F), 2390), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2391 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1873) * (relationLc1812 rho) = ((1 : F) * rho 2392)

def relationLc1813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8068015689772184792989167365226394865601744563867089166204480917047383290178 : F), 2061, 5, 67⟩], residual := [((631761650035118282494441602095374805998255137796949998403698007072857970444 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 2062, 5, 67⟩], residual := [((2133162629518657432416682639600108610216712170376817295401199551129982949223 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2392 (rho : Nat -> F) : Prop :=
    (relationLc1813 rho) * (relationLc1814 rho) = ((1 : F) * rho 2393)

def relationLc1815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 2062, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 2061, 5, 67⟩], residual := [((2228410382292771868930073731794967252015050082502946100481703237163834247501 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2393 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2394) * ((1 : F) + (1 : F) * rho 2393) = (relationLc1815 rho)

def relationLc1816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 2061, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 2062, 5, 67⟩], residual := [((1168696129252342408338407423711147118445105332484515454228740713687607975055 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2394 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2395) * ((1 : F) + (-1 : F) * rho 2393) = (relationLc1816 rho)

def relationLc1817 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 67⟩], residual := [((1 : F), 2394), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2395 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1874) * (relationLc1817 rho) = ((1 : F) * rho 2396)

def relationLc1818 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 67⟩], residual := [((1 : F), 2395), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2396 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1874) * (relationLc1818 rho) = ((1 : F) * rho 2397)

def relationLc1819 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(517925809368660864558072751869487790437935273484529585746369323552734005467 : F), 2061, 5, 68⟩], residual := [((1879049417325825119536558889711291957517960724627912445191850677173291976161 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1820 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 2062, 5, 68⟩], residual := [((718961184178561580886179684940049791723993716228098994336875608766544841653 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2397 (rho : Nat -> F) : Prop :=
    (relationLc1819 rho) * (relationLc1820 rho) = ((1 : F) * rho 2398)

def relationLc1821 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 2061, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 2062, 5, 68⟩], residual := [((4593804955818762584900879428085013308587454305188099119448899912168962086700 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2398 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2399) * ((1 : F) + (1 : F) * rho 2398) = (relationLc1821 rho)

def relationLc1822 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 2062, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 2061, 5, 68⟩], residual := [((4317293776341917983161643856627357891656090044601391905393571122349505951615 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2399 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2400) * ((1 : F) + (-1 : F) * rho 2398) = (relationLc1822 rho)

def relationLc1823 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 68⟩], residual := [((1 : F), 2399), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2400 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1875) * (relationLc1823 rho) = ((1 : F) * rho 2401)

def relationLc1824 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 68⟩], residual := [((1 : F), 2400), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2401 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1875) * (relationLc1824 rho) = ((1 : F) * rho 2402)

def relationLc1825 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3372123005021887774424946087009289440204555678066507861318664216599352821638 : F), 2061, 5, 69⟩], residual := [((7051893256125772232379071968189882766792145554365486350271113435452976189797 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1826 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 2062, 5, 69⟩], residual := [((5119128936249422117446661545040219479495504038648853251610860357079968667357 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2402 (rho : Nat -> F) : Prop :=
    (relationLc1825 rho) * (relationLc1826 rho) = ((1 : F) * rho 2403)

def relationLc1827 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 2061, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 2062, 5, 69⟩], residual := [((2625301578095364184106104908706644117114873134730212565746612636888378639461 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2403 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2404) * ((1 : F) + (1 : F) * rho 2403) = (relationLc1827 rho)

def relationLc1828 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), runs := [⟨(5597214348017417900404029286172679723685784516602615786622858670295681115320 : F), 2062, 5, 69⟩, ⟨(7687115706614567605450769945243056334713925514269138545816059769883858962023 : F), 2061, 5, 69⟩], residual := [((7079511155079999714398925576408017154871907527630316463077184212265726578920 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2404 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2405) * ((1 : F) + (-1 : F) * rho 2403) = (relationLc1828 rho)

def relationLc1829 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 69⟩], residual := [((1 : F), 2404), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2405 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1876) * (relationLc1829 rho) = ((1 : F) * rho 2406)

def relationLc1830 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 69⟩], residual := [((1 : F), 2405), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2406 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1876) * (relationLc1830 rho) = ((1 : F) * rho 2407)

def relationLc1831 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8185666225749794430846144650787739023696221861934424385315707228887955883205 : F), 2061, 5, 70⟩], residual := [((1138038450385463163308468001875449085299714829408678439768163290155722660408 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1832 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 2062, 5, 70⟩], residual := [((5429798299015515662944100111838631597125674244426331474003761181336372146151 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2407 (rho : Nat -> F) : Prop :=
    (relationLc1831 rho) * (relationLc1832 rho) = ((1 : F) * rho 2408)

def relationLc1833 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (40778110472536828791940508259785450323905289024226405636143699226233867360 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 2061, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 2062, 5, 70⟩], residual := [((5922139678144869737035825254912920785674981757771754814671212108688778550895 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2408 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2409) * ((1 : F) + (1 : F) * rho 2408) = (relationLc1833 rho)

def relationLc1834 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), runs := [⟨(2283636694392353545388244718535759585775051333779427510089528701508604400841 : F), 2062, 5, 70⟩, ⟨(40778110472536828791940508259785450323905289024226405636143699226233867360 : F), 2061, 5, 70⟩], residual := [((1093760832205737787781881875496000658544674873716306113692117833674308804177 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2409 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2410) * ((1 : F) + (-1 : F) * rho 2408) = (relationLc1834 rho)

def relationLc1835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 70⟩], residual := [((1 : F), 2409), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2410 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1877) * (relationLc1835 rho) = ((1 : F) * rho 2411)

def relationLc1836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 70⟩], residual := [((1 : F), 2410), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2411 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1877) * (relationLc1836 rho) = ((1 : F) * rho 2412)

def relationLc1837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1253370348878293429528158011004145692447964637774466349806330659661798099713 : F), 2061, 5, 71⟩], residual := [((5177285811817626865424623719269477408051499024395637386483226684730555701671 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), runs := [⟨(3423201212938797518776818704278837478402171383041133652638194147869573620175 : F), 2062, 5, 71⟩], residual := [((3367592843284670476747272752673000272108909791114671692752080632518020760681 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2412 (rho : Nat -> F) : Prop :=
    (relationLc1837 rho) * (relationLc1838 rho) = ((1 : F) * rho 2413)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
