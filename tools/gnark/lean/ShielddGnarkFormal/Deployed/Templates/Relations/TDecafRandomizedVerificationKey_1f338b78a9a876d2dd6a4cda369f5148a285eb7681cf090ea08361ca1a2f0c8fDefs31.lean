import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs30

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 148) * (relationLc834 rho) = ((1 : F) * rho 987)

def relationLc835 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3736510251652676541720141333403773953286420507403643590024712002903325578728 : F), 256, 5, 147⟩], residual := [((4680686181738868780173466445942294778812778475524006084648958938128221885398 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc836 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 257, 5, 147⟩], residual := [((218475059214054268059453563571377607346452200528713602273142633824230367437 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow987 (rho : Nat -> F) : Prop :=
    (relationLc835 rho) * (relationLc836 rho) = ((1 : F) * rho 988)

def relationLc837 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (298954928007943004014451510176946888039752259984727749761682772920877393999 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 256, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 257, 5, 147⟩], residual := [((4253575685035595940012855699654699004087344461072519663112331920758010491178 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 989) * ((1 : F) + (1 : F) * rho 988) = (relationLc837 rho)

def relationLc838 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), runs := [⟨(2584051362702239969727783642756555037717516519758278259054015367517573473172 : F), 257, 5, 147⟩, ⟨(298954928007943004014451510176946888039752259984727749761682772920877393999 : F), 256, 5, 147⟩], residual := [((4441515350697547072769915522734436750825214077706035322746967220045928818529 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 990) * ((1 : F) + (-1 : F) * rho 988) = (relationLc838 rho)

def relationLc839 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 147⟩], residual := [((1 : F), 989), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 149) * (relationLc839 rho) = ((1 : F) * rho 991)

def relationLc840 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 147⟩], residual := [((1 : F), 990), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 149) * (relationLc840 rho) = ((1 : F) * rho 992)

def relationLc841 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2905285606874933389800013731091935386689424730514727187378944100147027031846 : F), 256, 5, 148⟩], residual := [((2211009345673416112645617919932112023860936344208789987563683022663977313482 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc842 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 257, 5, 148⟩], residual := [((3158801321492224690766123236898749852131432017480304019443254987406624478127 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow992 (rho : Nat -> F) : Prop :=
    (relationLc841 rho) * (relationLc842 rho) = ((1 : F) * rho 993)

def relationLc843 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 257, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 256, 5, 148⟩], residual := [((6991826170155571022364198248149803280314225438480115438869527331360756237160 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 994) * ((1 : F) + (1 : F) * rho 993) = (relationLc843 rho)

def relationLc844 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 256, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 257, 5, 148⟩], residual := [((7034116285494096098739970852510960587256386181555087115260134023699770837108 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 995) * ((1 : F) + (-1 : F) * rho 993) = (relationLc844 rho)

def relationLc845 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 148⟩], residual := [((1 : F), 994), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 150) * (relationLc845 rho) = ((1 : F) * rho 996)

def relationLc846 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 148⟩], residual := [((1 : F), 995), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 150) * (relationLc846 rho) = ((1 : F) * rho 997)

def relationLc847 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow997 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc847 rho) = ((1 : F) * rho 998)

def relationLc848 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3144982910228748581975719192741403467556637701274845694014003990746557421882 : F), 256, 5, 149⟩], residual := [((5769188875529050372644141506610052770738299431780184070866704372825525935919 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc849 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 257, 5, 149⟩], residual := [((1981879756459152890585408800338738007832827297438533450175392580190602675804 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow998 (rho : Nat -> F) : Prop :=
    (relationLc848 rho) * (relationLc849 rho) = ((1 : F) * rho 999)

def relationLc850 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(6203709236971791698109936530403506506650340040519080595790234042592346130041 : F), 256, 5, 149⟩, ⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 257, 5, 149⟩], residual := [((2282881608847224617088973318695651457560718567975860498722210416720224759390 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow999 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc850 rho) = ((1 : F) * rho 1000)

def relationRow1000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1001) * ((1 : F) + (1 : F) * rho 999) = ((1 : F) * rho 1000)

def relationLc851 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (449286664448037629354489433935120845915192649163080147926740617137481076652 : F), runs := [⟨(2240752512456578726138888408378040024725559294634983232144999413325063109000 : F), 256, 5, 149⟩, ⟨(449286664448037629354489433935120845915192649163080147926740617137481076652 : F), 257, 5, 149⟩], residual := [((6161580140581145807159851620085895073815180767178203329213023039197184479651 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1001 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc851 rho) = ((1 : F) * rho 1002)

def relationRow1002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1003) * ((1 : F) + (-1 : F) * rho 999) = ((5754422572523754068755447096468385660735147391356000447863493425454865053389 : F) * rho 998 + (1 : F) * rho 1002)

def relationLc852 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩], residual := [((1 : F), 1001), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 151) * (relationLc852 rho) = ((1 : F) * rho 1004)

def relationLc853 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩], residual := [((1 : F), 1003), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 151) * (relationLc853 rho) = ((1 : F) * rho 1005)

def relationLc854 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩], residual := [((1 : F), 1004), ((1 : F), 1005), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1005 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc854 rho) = ((1 : F) * rho 1006)

def relationLc855 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 256, 5, 149⟩], residual := [((481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 1004), ((5775556576858411646158082484809865716789842656243550876083649985645673455572 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc856 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 257, 5, 149⟩], residual := [((3691096358027745336063657324176483550920035707413579978283300600227612312748 : F), 1), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 1005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1006 (rho : Nat -> F) : Prop :=
    (relationLc855 rho) * (relationLc856 rho) = ((1 : F) * rho 1007)

def relationLc857 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 256, 5, 149⟩, ⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 257, 5, 149⟩], residual := [((151421588100937353317181615817857404102268539262651372153589531488217465873 : F), 1), ((2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 1004), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 1005)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1007 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc857 rho) = ((1 : F) * rho 1008)

def relationRow1008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1009) * ((1 : F) + (1 : F) * rho 1007) = ((1 : F) * rho 1008)

def relationLc858 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), runs := [⟨(2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 257, 5, 149⟩, ⟨(5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 256, 5, 149⟩], residual := [((2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 1005), ((5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 1004), ((8293040161327433070931643322963689127273630795891412455781643924429191773168 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1009 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc858 rho) = ((1 : F) * rho 1010)

def relationRow1010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1011) * ((1 : F) + (-1 : F) * rho 1007) = ((853198205166559421082470338920132093956816522397963514282441805043003013830 : F) * rho 1006 + (1 : F) * rho 1010)

def relationLc859 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 149⟩], residual := [((-1 : F), 1004), ((1 : F), 1009), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * (relationLc859 rho) = ((1 : F) * rho 1012)

def relationLc860 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 149⟩], residual := [((-1 : F), 1005), ((1 : F), 1011), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 152) * (relationLc860 rho) = ((1 : F) * rho 1013)

def relationLc861 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 256, 5, 149⟩, ⟨(1 : F), 257, 5, 149⟩], residual := [((1 : F), 1004), ((1 : F), 1005), ((1 : F), 1012), ((1 : F), 1013), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1013 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc861 rho) = ((1 : F) * rho 1014)

def relationLc862 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 256, 5, 149⟩], residual := [((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 1004), ((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 1012), ((5270411603461582088167028508315370011555073697546563505417240778775115497472 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc863 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 257, 5, 149⟩], residual := [((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 1005), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 1013), ((6468272815759537655347467424063497937855302588140460740361281552813528541125 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
