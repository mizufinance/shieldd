import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs107

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow5897 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4429) * (relationLc1255 rho) = ((1 : F) * rho 5723)

def relationLc1256 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 63⟩], residual := [((1 : F), 5722), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4429) * (relationLc1256 rho) = ((1 : F) * rho 5724)

def relationLc1257 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 64⟩, ⟨(1 : F), 5220, 8, 64⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5899 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1257 rho) = ((1 : F) * rho 5725)

def relationLc1258 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(427870354883302746539286970356984492783584904477385604274508508746579111977 : F), 4471, 5, 149⟩, ⟨(427870354883302746539286970356984492783584904477385604274508508746579111977 : F), 5219, 8, 64⟩], residual := [((7684909229183172772809243730529769896730912256138259583235399444557459599888 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1259 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), runs := [⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 4472, 5, 149⟩, ⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 5220, 8, 64⟩], residual := [((5079759746100250841722809672260757649290299822485304154344672621301032296151 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5900 (rho : Nat -> F) : Prop :=
    (relationLc1258 rho) * (relationLc1259 rho) = ((1 : F) * rho 5726)

def relationLc1260 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), runs := [⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 4472, 5, 149⟩, ⟨(3519700685927272317724189846155332880272853835850155692631351253276228456583 : F), 5220, 8, 64⟩, ⟨(8142715970354096772122928279920887795561330138433719071956176618866653324210 : F), 4471, 5, 149⟩, ⟨(8142715970354096772122928279920887795561330138433719071956176618866653324210 : F), 5219, 8, 64⟩], residual := [((5227656773640621061793563773732843114211940894211272237309210039093903113771 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5901 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1260 rho) = ((1 : F) * rho 5727)

def relationRow5902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5728) * ((1 : F) + (1 : F) * rho 5726) = ((1 : F) * rho 5727)

def relationLc1261 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), runs := [⟨(301745779074273652125896658860658735814569196720344755979056837050755914831 : F), 4471, 5, 149⟩, ⟨(301745779074273652125896658860658735814569196720344755979056837050755914831 : F), 5219, 8, 64⟩, ⟨(4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), 4472, 5, 149⟩, ⟨(4924761063501098106524635092626213651103045499303908135303882202641180782458 : F), 5220, 8, 64⟩], residual := [((3216804975787749362455261165048703417163958440942791590626023416823506125270 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5903 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1261 rho) = ((1 : F) * rho 5729)

def relationRow5904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5730) * ((1 : F) + (-1 : F) * rho 5726) = ((3217954906852998665598293187294674144458284639129810936652294416225472541752 : F) * rho 5725 + (1 : F) * rho 5729)

def relationLc1262 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 64⟩], residual := [((1 : F), 5728), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * (relationLc1262 rho) = ((1 : F) * rho 5731)

def relationLc1263 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 64⟩], residual := [((1 : F), 5730), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4430) * (relationLc1263 rho) = ((1 : F) * rho 5732)

def relationLc1264 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 65⟩, ⟨(1 : F), 5220, 8, 65⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5907 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1264 rho) = ((1 : F) * rho 5733)

def relationLc1265 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(934262429588865376316763202666333572876159624379441072857832507528287283612 : F), 4471, 5, 149⟩, ⟨(934262429588865376316763202666333572876159624379441072857832507528287283612 : F), 5219, 8, 65⟩], residual := [((620727456495781485108528089440261790333141839184177284132127399822216471535 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1266 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), runs := [⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 4472, 5, 149⟩, ⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 5220, 8, 65⟩], residual := [((3734213338409769056441767094129838517498634193117154240157192061073862909754 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5908 (rho : Nat -> F) : Prop :=
    (relationLc1265 rho) * (relationLc1266 rho) = ((1 : F) * rho 5734)

def relationLc1267 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), runs := [⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 4472, 5, 149⟩, ⟨(4735750495013647090858931166784620155856988229723922730242031471736714338788 : F), 5220, 8, 65⟩, ⟨(7284740675749725981783765161756827737285160485612667916806380741022276320498 : F), 4471, 5, 149⟩, ⟨(7284740675749725981783765161756827737285160485612667916806380741022276320498 : F), 5219, 8, 65⟩], residual := [((7767970052041557968615273520727392938738540145605237087225935524923132604692 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5909 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1267 rho) = ((1 : F) * rho 5735)

def relationRow5910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5736) * ((1 : F) + (1 : F) * rho 5734) = ((1 : F) * rho 5735)

def relationLc1268 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), runs := [⟨(1159721073678644442465059777024718794090738849541395911128852714895132918543 : F), 4471, 5, 149⟩, ⟨(1159721073678644442465059777024718794090738849541395911128852714895132918543 : F), 5219, 8, 65⟩, ⟨(3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), 4472, 5, 149⟩, ⟨(3708711254414723333389893771996926375518911105430141097693201984180694900253 : F), 5220, 8, 65⟩], residual := [((676491697386812455633551418054153592637359189548826740709297930994276634349 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5911 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1268 rho) = ((1 : F) * rho 5737)

def relationRow5912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5738) * ((1 : F) + (-1 : F) * rho 5734) = ((3576029421335002648393871389759901361766249380182526819113178756841581420245 : F) * rho 5733 + (1 : F) * rho 5737)

def relationLc1269 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 65⟩], residual := [((1 : F), 5736), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * (relationLc1269 rho) = ((1 : F) * rho 5739)

def relationLc1270 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 65⟩], residual := [((1 : F), 5738), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4431) * (relationLc1270 rho) = ((1 : F) * rho 5740)

def relationLc1271 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 66⟩, ⟨(1 : F), 5220, 8, 66⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5915 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1271 rho) = ((1 : F) * rho 5741)

def relationLc1272 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7939859446417171453261363811848930007939766996255547357685806689064639035948 : F), 4471, 5, 149⟩, ⟨(7939859446417171453261363811848930007939766996255547357685806689064639035948 : F), 5219, 8, 66⟩], residual := [((7127738503717230360852932479875059658704579220516546870335272875140449102586 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1273 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), runs := [⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 4472, 5, 149⟩, ⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 5220, 8, 66⟩], residual := [((7512757180602627786528431155446133589129180852821377444625292664139428669253 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5916 (rho : Nat -> F) : Prop :=
    (relationLc1272 rho) * (relationLc1273 rho) = ((1 : F) * rho 5742)

def relationLc1274 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), runs := [⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 4472, 5, 149⟩, ⟨(3047738114654836539128249014769471463629745053730036031414036362930762700064 : F), 5220, 8, 66⟩, ⟨(7952330047938001541879152429561922298987420548220593536579109485375099806312 : F), 4471, 5, 149⟩, ⟨(7952330047938001541879152429561922298987420548220593536579109485375099806312 : F), 5219, 8, 66⟩], residual := [((4524195004705693286831181982319228680518287867255560910689389147106496714049 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5917 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1274 rho) = ((1 : F) * rho 5743)

def relationRow5918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5744) * ((1 : F) + (1 : F) * rho 5742) = ((1 : F) * rho 5743)

def relationLc1275 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), runs := [⟨(492131701490368882369672509219624232388478786933470291356123970542309432729 : F), 4471, 5, 149⟩, ⟨(492131701490368882369672509219624232388478786933470291356123970542309432729 : F), 5219, 8, 66⟩, ⟨(5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), 4472, 5, 149⟩, ⟨(5396723634773533885120575924012075067746154281424027796521197092986646538977 : F), 5220, 8, 66⟩], residual := [((3920266744722677137417642956462317850857611467898502917245844308810912524992 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5919 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1275 rho) = ((1 : F) * rho 5745)

def relationRow5920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5746) * ((1 : F) + (-1 : F) * rho 5742) = ((2555606413164467656758576505549847231241266266796565740057912392388453267335 : F) * rho 5741 + (1 : F) * rho 5745)

def relationLc1276 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 4471, 5, 149⟩, ⟨(-1 : F), 5219, 8, 66⟩], residual := [((1 : F), 5744), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4432) * (relationLc1276 rho) = ((1 : F) * rho 5747)

def relationLc1277 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 4472, 5, 149⟩, ⟨(-1 : F), 5220, 8, 66⟩], residual := [((1 : F), 5746), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4432) * (relationLc1277 rho) = ((1 : F) * rho 5748)

def relationLc1278 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 4471, 5, 149⟩, ⟨(1 : F), 4472, 5, 149⟩, ⟨(1 : F), 5219, 8, 67⟩, ⟨(1 : F), 5220, 8, 67⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5923 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc1278 rho) = ((1 : F) * rho 5749)

def relationLc1279 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(51342695164295900523335136679681816694770074347372122226540147389114240940 : F), 4471, 5, 149⟩, ⟨(51342695164295900523335136679681816694770074347372122226540147389114240940 : F), 5219, 8, 67⟩], residual := [((3052786237553737179346172201258712579459016790553216720140345524598387402017 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1280 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (123700968181371724315822978796307772502168331021831444823168513337451326588 : F), runs := [⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 4472, 5, 149⟩, ⟨(123700968181371724315822978796307772502168331021831444823168513337451326588 : F), 5220, 8, 67⟩], residual := [((787620717315931140572433265074708873411572253914448706453206476703224907592 : F), 4216)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow5924 (rho : Nat -> F) : Prop :=
    (relationLc1279 rho) * (relationLc1280 rho) = ((1 : F) * rho 5750)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
