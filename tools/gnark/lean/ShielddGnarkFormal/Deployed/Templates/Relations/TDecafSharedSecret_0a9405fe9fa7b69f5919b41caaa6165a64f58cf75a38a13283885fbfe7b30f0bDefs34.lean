import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs33

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationLc789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 257, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 258, 5, 147⟩], residual := [((4253575685035595940012855699654699004087344461072519663112331920758010491178 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 990) * ((1 : F) + (1 : F) * rho 989) = (relationLc789 rho)

def relationLc790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 258, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 257, 5, 147⟩], residual := [((4441515350697547072769915522734436750825214077706035322746967220045928818529 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 991) * ((1 : F) + (-1 : F) * rho 989) = (relationLc790 rho)

def relationLc791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 147⟩], residual := [((1 : F), 990), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 150) * (relationLc791 rho) = ((1 : F) * rho 992)

def relationLc792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 147⟩], residual := [((1 : F), 991), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 150) * (relationLc792 rho) = ((1 : F) * rho 993)

def relationLc793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2905285606874933389800013731091935386689424730514727187378944100147027031846 : F), 257, 5, 148⟩], residual := [((2211009345673416112645617919932112023860936344208789987563683022663977313482 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 258, 5, 148⟩], residual := [((3158801321492224690766123236898749852131432017480304019443254987406624478127 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    (relationLc793 rho) * (relationLc794 rho) = ((1 : F) * rho 994)

def relationLc795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 258, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 257, 5, 148⟩], residual := [((6991826170155571022364198248149803280314225438480115438869527331360756237160 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 995) * ((1 : F) + (1 : F) * rho 994) = (relationLc795 rho)

def relationLc796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 257, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 258, 5, 148⟩], residual := [((7034116285494096098739970852510960587256386181555087115260134023699770837108 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 996) * ((1 : F) + (-1 : F) * rho 994) = (relationLc796 rho)

def relationLc797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 148⟩], residual := [((1 : F), 995), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 151) * (relationLc797 rho) = ((1 : F) * rho 997)

def relationLc798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 148⟩], residual := [((1 : F), 996), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 151) * (relationLc798 rho) = ((1 : F) * rho 998)

def relationLc799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc799 rho) = ((1 : F) * rho 999)

def relationLc800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3144982910228748581975719192741403467556637701274845694014003990746557421882 : F), 257, 5, 149⟩], residual := [((5769188875529050372644141506610052770738299431780184070866704372825525935919 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 258, 5, 149⟩], residual := [((1981879756459152890585408800338738007832827297438533450175392580190602675804 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    (relationLc800 rho) * (relationLc801 rho) = ((1 : F) * rho 1000)

def relationLc802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(6203709236971791698109936530403506506650340040519080595790234042592346130041 : F), 257, 5, 149⟩, ⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 258, 5, 149⟩], residual := [((2282881608847224617088973318695651457560718567975860498722210416720224759390 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc802 rho) = ((1 : F) * rho 1001)

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1002) * ((1 : F) + (1 : F) * rho 1000) = ((1 : F) * rho 1001)

def relationLc803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (449286664448037629354489433935120845915192649163080147926740617137481076652 : F), runs := [⟨(2240752512456578726138888408378040024725559294634983232144999413325063109000 : F), 257, 5, 149⟩, ⟨(449286664448037629354489433935120845915192649163080147926740617137481076652 : F), 258, 5, 149⟩], residual := [((6161580140581145807159851620085895073815180767178203329213023039197184479651 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc803 rho) = ((1 : F) * rho 1003)

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1004) * ((1 : F) + (-1 : F) * rho 1000) = ((5754422572523754068755447096468385660735147391356000447863493425454865053389 : F) * rho 999 + (1 : F) * rho 1003)

def relationLc804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩], residual := [((1 : F), 1002), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * (relationLc804 rho) = ((1 : F) * rho 1005)

def relationLc805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩], residual := [((1 : F), 1004), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * (relationLc805 rho) = ((1 : F) * rho 1006)

def relationLc806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩], residual := [((1 : F), 1005), ((1 : F), 1006), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc806 rho) = ((1 : F) * rho 1007)

def relationLc807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 257, 5, 149⟩], residual := [((481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 1005), ((5775556576858411646158082484809865716789842656243550876083649985645673455572 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc808 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 258, 5, 149⟩], residual := [((3691096358027745336063657324176483550920035707413579978283300600227612312748 : F), 2), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 1006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    (relationLc807 rho) * (relationLc808 rho) = ((1 : F) * rho 1008)

def relationLc809 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 257, 5, 149⟩, ⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 258, 5, 149⟩], residual := [((151421588100937353317181615817857404102268539262651372153589531488217465873 : F), 2), ((2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 1005), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 1006)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc809 rho) = ((1 : F) * rho 1009)

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1010) * ((1 : F) + (1 : F) * rho 1008) = ((1 : F) * rho 1009)

def relationLc810 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), runs := [⟨(2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 258, 5, 149⟩, ⟨(5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 257, 5, 149⟩], residual := [((2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 1006), ((5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 1005), ((8293040161327433070931643322963689127273630795891412455781643924429191773168 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc810 rho) = ((1 : F) * rho 1011)

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1012) * ((1 : F) + (-1 : F) * rho 1008) = ((853198205166559421082470338920132093956816522397963514282441805043003013830 : F) * rho 1007 + (1 : F) * rho 1011)

def relationLc811 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 257, 5, 149⟩], residual := [((-1 : F), 1005), ((1 : F), 1010), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 153) * (relationLc811 rho) = ((1 : F) * rho 1013)

def relationLc812 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 258, 5, 149⟩], residual := [((-1 : F), 1006), ((1 : F), 1012), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 153) * (relationLc812 rho) = ((1 : F) * rho 1014)

def relationLc813 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 257, 5, 149⟩, ⟨(1 : F), 258, 5, 149⟩], residual := [((1 : F), 1005), ((1 : F), 1006), ((1 : F), 1013), ((1 : F), 1014), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1014 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc813 rho) = ((1 : F) * rho 1015)

def relationLc814 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 257, 5, 149⟩], residual := [((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 1005), ((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 1013), ((5270411603461582088167028508315370011555073697546563505417240778775115497472 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc815 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 258, 5, 149⟩], residual := [((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 1006), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 1014), ((6468272815759537655347467424063497937855302588140460740361281552813528541125 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1015 (rho : Nat -> F) : Prop :=
    (relationLc814 rho) * (relationLc815 rho) = ((1 : F) * rho 1016)

def relationLc816 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 257, 5, 149⟩, ⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 258, 5, 149⟩], residual := [((2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 1005), ((2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 1013), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 1006), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 1014), ((7412017940274871126072399907637710632686561492359085723320431144148497766234 : F), 2)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
