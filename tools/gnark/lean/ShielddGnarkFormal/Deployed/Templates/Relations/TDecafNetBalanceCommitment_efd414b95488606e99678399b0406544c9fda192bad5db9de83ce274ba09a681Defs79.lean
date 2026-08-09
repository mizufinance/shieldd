import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs78

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 4471, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 4472, 5, 114⟩], residual := [((6712930830834958536208495955883693603967525297039104674223897810239178679737 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5213 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5039) * ((1 : F) + (1 : F) * rho 5038) = (relationLc601 rho)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 4472, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 4471, 5, 114⟩], residual := [((3363026558279651923245842165054909851794577971967155871755746820639602436007 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5214 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5040) * ((1 : F) + (-1 : F) * rho 5038) = (relationLc602 rho)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 114⟩], residual := [((1 : F), 5039), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5215 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4331) * (relationLc603 rho) = ((1 : F) * rho 5041)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 114⟩], residual := [((1 : F), 5040), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5216 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4331) * (relationLc604 rho) = ((1 : F) * rho 5042)

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7092102170889042601208202038466364950277576212870097414401334358924586649189 : F), 4471, 5, 115⟩], residual := [((4653472090370567983434626876681111717002852161687776050661280676529317148432 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 4472, 5, 115⟩], residual := [((2257434816805262428550449631546742040564192443442506165265588191162612118189 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5217 (rho : Nat -> F) : Prop :=
    (relationLc605 rho) * (relationLc606 rho) = ((1 : F) * rho 5043)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 4472, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 4471, 5, 115⟩], residual := [((2370785343805429719167261158997236238833652498248150100773059432113696423621 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5218 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5044) * ((1 : F) + (1 : F) * rho 5043) = (relationLc607 rho)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 4471, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 4472, 5, 115⟩], residual := [((5929633731751807650188902444688267458901795220973861143264780965236086224933 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5219 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5045) * ((1 : F) + (-1 : F) * rho 5043) = (relationLc608 rho)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 115⟩], residual := [((1 : F), 5044), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5220 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * (relationLc609 rho) = ((1 : F) * rho 5046)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 115⟩], residual := [((1 : F), 5045), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5221 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4332) * (relationLc610 rho) = ((1 : F) * rho 5047)

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3341344058927025398794129116517091015478478137346240165869616329642569556725 : F), 4471, 5, 116⟩], residual := [((712267692233144119413558795824260412907497088011210850217416112241304825970 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 4472, 5, 116⟩], residual := [((7262080225988288534438780071020854769618142351743369218531179308853029943442 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5222 (rho : Nat -> F) : Prop :=
    (relationLc611 rho) * (relationLc612 rho) = ((1 : F) * rho 5048)

def relationLc613 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 4471, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 4472, 5, 116⟩], residual := [((3200812217306663548568495702515802518815006225662322038412120455713091406699 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5223 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5049) * ((1 : F) + (1 : F) * rho 5048) = (relationLc613 rho)

def relationLc614 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 4472, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 4471, 5, 116⟩], residual := [((2482975426743706311310743796806971019327266080069895865587165427554311218897 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5224 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5050) * ((1 : F) + (-1 : F) * rho 5048) = (relationLc614 rho)

def relationLc615 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 116⟩], residual := [((1 : F), 5049), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5225 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4333) * (relationLc615 rho) = ((1 : F) * rho 5051)

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 116⟩], residual := [((1 : F), 5050), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5226 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4333) * (relationLc616 rho) = ((1 : F) * rho 5052)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3254294292390636161585554539710362651655557809664815923608740620347886465374 : F), 4471, 5, 117⟩], residual := [((4462302576883527183586617643313860966620220803168776674990045118344455615360 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 4472, 5, 117⟩], residual := [((4763684142039032428733214072742859283160618192166842526573614565231113428874 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5227 (rho : Nat -> F) : Prop :=
    (relationLc617 rho) * (relationLc618 rho) = ((1 : F) * rho 5053)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (779888406274745358748917861364887676934800955358204653220212125256440015800 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 4471, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 4472, 5, 117⟩], residual := [((5914010551040006864863586024905232499103059386324899133642919760696323509265 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5228 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5054) * ((1 : F) + (1 : F) * rho 5053) = (relationLc619 rho)

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), runs := [⟨(5381940801702086627884996213735249068371486851367506681462738544608196183919 : F), 4472, 5, 117⟩, ⟨(779888406274745358748917861364887676934800955358204653220212125256440015800 : F), 4471, 5, 117⟩], residual := [((6955864314163122699408888805324588835180412702138965324463662323691083799113 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5229 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5055) * ((1 : F) + (-1 : F) * rho 5053) = (relationLc620 rho)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 117⟩], residual := [((1 : F), 5054), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5230 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4334) * (relationLc621 rho) = ((1 : F) * rho 5056)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 117⟩], residual := [((1 : F), 5055), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5231 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4334) * (relationLc622 rho) = ((1 : F) * rho 5057)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5108897277517643150520320477788096635593069518661161179374187751513476515145 : F), 4471, 5, 118⟩], residual := [((3822492138966196890033413003261285567514855267556265951405364154358466941257 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 4472, 5, 118⟩], residual := [((3275679305930702751735804242987067220385600319545397350021940117281641004625 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5232 (rho : Nat -> F) : Prop :=
    (relationLc623 rho) * (relationLc624 rho) = ((1 : F) * rho 5058)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 4472, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 4471, 5, 118⟩], residual := [((1051922582856880619722553253822270876986824743406675555554862835998655474226 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5233 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5059) * ((1 : F) + (1 : F) * rho 5058) = (relationLc625 rho)

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), runs := [⟨(7839501597759416099705814053971197570454769889464544313002600339095028440934 : F), 4471, 5, 118⟩, ⟨(8278437648902655567478083735256520150956514730522954040283217626853016297026 : F), 4472, 5, 118⟩], residual := [((4559241240839474612123523986721941831442786695283273688819404039887878552431 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5234 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5060) * ((1 : F) + (-1 : F) * rho 5058) = (relationLc626 rho)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 118⟩], residual := [((1 : F), 5059), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5235 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4335) * (relationLc627 rho) = ((1 : F) * rho 5061)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 118⟩], residual := [((1 : F), 5060), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5236 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4335) * (relationLc628 rho) = ((1 : F) * rho 5062)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1657923050383269287255308165580316013777593065451465396443861382861787777653 : F), 4471, 5, 119⟩], residual := [((2748729267974726317939641161442750407192739288283321786370206597811241132003 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 4472, 5, 119⟩], residual := [((6544738621512266166926823694276508401323064657427567414795918241157508580072 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5237 (rho : Nat -> F) : Prop :=
    (relationLc629 rho) * (relationLc630 rho) = ((1 : F) * rho 5063)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (957181686431884411404552442829404858027336492055316244755474323137525243320 : F), runs := [⟨(6776244026370325447754520675197632938784825415914896452933283600968772520097 : F), 4471, 5, 119⟩, ⟨(957181686431884411404552442829404858027336492055316244755474323137525243320 : F), 4472, 5, 119⟩], residual := [((3803504511309930298052226665549843589382460715521624583475794502773805428014 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
