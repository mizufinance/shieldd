import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs14

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationRow567 (rho : Nat -> F) : Prop :=
    (relationLc331 rho) * (relationLc332 rho) = ((1 : F) * rho 568)

def relationLc333 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 257, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 256, 5, 63⟩], residual := [((422052628510561653292389020156155178992927118097941318816758827007121337100 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow568 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 569) * ((1 : F) + (1 : F) * rho 568) = (relationLc333 rho)

def relationLc334 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 256, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 257, 5, 63⟩], residual := [((2598290662687356450350434728849758433307111346405199677646573938046939128067 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow569 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 570) * ((1 : F) + (-1 : F) * rho 568) = (relationLc334 rho)

def relationLc335 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 63⟩], residual := [((1 : F), 569), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow570 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 65) * (relationLc335 rho) = ((1 : F) * rho 571)

def relationLc336 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 63⟩], residual := [((1 : F), 570), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow571 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 65) * (relationLc336 rho) = ((1 : F) * rho 572)

def relationLc337 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1468539582095666279378991410533170917245967249536948894488180590741816634177 : F), 256, 5, 64⟩], residual := [((2441858149594684419669229541998122896554895397549907271029031954323754410683 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc338 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 257, 5, 64⟩], residual := [((5734647455186279297627215050346085835678696177385387464145726860498976860026 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow572 (rho : Nat -> F) : Prop :=
    (relationLc337 rho) * (relationLc338 rho) = ((1 : F) * rho 573)

def relationLc339 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 257, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 256, 5, 64⟩], residual := [((3806730623357089986699700989367181835760518207885634357888102877503714158759 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow573 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 574) * ((1 : F) + (1 : F) * rho 573) = (relationLc339 rho)

def relationLc340 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (730047353916881942074916352344427942934907545092600995692017250110951879518 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 256, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 257, 5, 64⟩], residual := [((1796660262071968910246623980526058329156247328003921086141166780672068447878 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow574 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 575) * ((1 : F) + (-1 : F) * rho 573) = (relationLc340 rho)

def relationLc341 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 64⟩], residual := [((1 : F), 574), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow575 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 66) * (relationLc341 rho) = ((1 : F) * rho 576)

def relationLc342 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 64⟩], residual := [((1 : F), 575), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow576 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 66) * (relationLc342 rho) = ((1 : F) * rho 577)

def relationLc343 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6021026344076416619121288468750741828046873078691119012171314382658426450457 : F), 256, 5, 65⟩], residual := [((7317429427889679080864790959675717489239037886684290610301339332825622009038 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc344 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 257, 5, 65⟩], residual := [((5623423306062474044567382328107422310706576126000140678799979011964140812863 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow577 (rho : Nat -> F) : Prop :=
    (relationLc343 rho) * (relationLc344 rho) = ((1 : F) * rho 578)

def relationLc345 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 256, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 257, 5, 65⟩], residual := [((7462327244759041091178551734177979010012502938672402918311316224764724557338 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow578 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 579) * ((1 : F) + (1 : F) * rho 578) = (relationLc345 rho)

def relationLc346 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 257, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 256, 5, 65⟩], residual := [((6347859754536564095544343687702155263140218853768682012754218406582542057158 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow579 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 580) * ((1 : F) + (-1 : F) * rho 578) = (relationLc346 rho)

def relationLc347 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 65⟩], residual := [((1 : F), 579), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow580 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 67) * (relationLc347 rho) = ((1 : F) * rho 581)

def relationLc348 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 65⟩], residual := [((1 : F), 580), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow581 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 67) * (relationLc348 rho) = ((1 : F) * rho 582)

def relationLc349 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(283579253166981189097466647978536705612250233144289388837895438594313409125 : F), 256, 5, 66⟩], residual := [((6495894566211403996232269137026018932501953391940325354720954163848318066143 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc350 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 257, 5, 66⟩], residual := [((4408468101015441774814258326413622957135574875933813938428914074908842070788 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow582 (rho : Nat -> F) : Prop :=
    (relationLc349 rho) * (relationLc350 rho) = ((1 : F) * rho 583)

def relationLc351 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 256, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 257, 5, 66⟩], residual := [((178604084442008667129224003944826058899689526701337172411296564781364656077 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow583 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 584) * ((1 : F) + (1 : F) * rho 583) = (relationLc351 rho)

def relationLc352 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), runs := [⟨(3460618081776064073621033677874721331528955851424652535045566671255990384423 : F), 257, 5, 66⟩, ⟨(8410551147435598511653533510091582122033647167464408049473261077157483733861 : F), 256, 5, 66⟩], residual := [((4120489983777216601665037330618917811763519217508859746155615907430572528784 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow584 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 585) * ((1 : F) + (-1 : F) * rho 583) = (relationLc352 rho)

def relationLc353 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 66⟩], residual := [((1 : F), 584), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow585 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 68) * (relationLc353 rho) = ((1 : F) * rho 586)

def relationLc354 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 66⟩], residual := [((1 : F), 585), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow586 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 68) * (relationLc354 rho) = ((1 : F) * rho 587)

def relationLc355 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8068015689772184792989167365226394865601744563867089166204480917047383290178 : F), 256, 5, 67⟩], residual := [((631761650035118282494441602095374805998255137796949998403698007072857970444 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc356 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 257, 5, 67⟩], residual := [((2133162629518657432416682639600108610216712170376817295401199551129982949223 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow587 (rho : Nat -> F) : Prop :=
    (relationLc355 rho) * (relationLc356 rho) = ((1 : F) * rho 588)

def relationLc357 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 257, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 256, 5, 67⟩], residual := [((2228410382292771868930073731794967252015050082502946100481703237163834247501 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow588 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 589) * ((1 : F) + (1 : F) * rho 588) = (relationLc357 rho)

def relationLc358 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), runs := [⟨(1966946882166026213006591837610371977279420560347105456512166436556292446412 : F), 256, 5, 67⟩, ⟨(4902750566844655921384038161221210680028981555474657722455037646190091287431 : F), 257, 5, 67⟩], residual := [((1168696129252342408338407423711147118445105332484515454228740713687607975055 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow589 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 590) * ((1 : F) + (-1 : F) * rho 588) = (relationLc358 rho)

def relationLc359 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 67⟩], residual := [((1 : F), 589), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow590 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 69) * (relationLc359 rho) = ((1 : F) * rho 591)

def relationLc360 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 67⟩], residual := [((1 : F), 590), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow591 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 69) * (relationLc360 rho) = ((1 : F) * rho 592)

def relationLc361 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(517925809368660864558072751869487790437935273484529585746369323552734005467 : F), 256, 5, 68⟩], residual := [((1879049417325825119536558889711291957517960724627912445191850677173291976161 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc362 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 257, 5, 68⟩], residual := [((718961184178561580886179684940049791723993716228098994336875608766544841653 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow592 (rho : Nat -> F) : Prop :=
    (relationLc361 rho) * (relationLc362 rho) = ((1 : F) * rho 593)

def relationLc363 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), runs := [⟨(6381735882076907758829733666994419139000865977302288066455440036141343272670 : F), 256, 5, 68⟩, ⟨(8178684086019600428776788963199416603730950926115269944421675582685466080269 : F), 257, 5, 68⟩], residual := [((4593804955818762584900879428085013308587454305188099119448899912168962086700 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow593 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 594) * ((1 : F) + (1 : F) * rho 593) = (relationLc363 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
