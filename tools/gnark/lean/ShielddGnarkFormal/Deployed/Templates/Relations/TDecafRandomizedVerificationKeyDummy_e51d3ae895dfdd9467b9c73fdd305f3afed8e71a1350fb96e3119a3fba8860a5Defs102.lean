import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs101

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2795) * ((1 : F) + (-1 : F) * rho 2793) = (relationLc2296 rho)

def relationLc2297 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 147⟩], residual := [((1 : F), 2794), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (relationLc2297 rho) = ((1 : F) * rho 2796)

def relationLc2298 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 147⟩], residual := [((1 : F), 2795), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1954) * (relationLc2298 rho) = ((1 : F) * rho 2797)

def relationLc2299 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2905285606874933389800013731091935386689424730514727187378944100147027031846 : F), 2061, 5, 148⟩], residual := [((2211009345673416112645617919932112023860936344208789987563683022663977313482 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2300 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 2062, 5, 148⟩], residual := [((3158801321492224690766123236898749852131432017480304019443254987406624478127 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2797 (rho : Nat -> F) : Prop :=
    (relationLc2299 rho) * (relationLc2300 rho) = ((1 : F) * rho 2798)

def relationLc2301 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (513684046426243087824420172969926796247746955339408132221508340385056764764 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 2062, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 2061, 5, 148⟩], residual := [((6991826170155571022364198248149803280314225438480115438869527331360756237160 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2799) * ((1 : F) + (1 : F) * rho 2798) = (relationLc2301 rho)

def relationLc2302 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), runs := [⟨(513684046426243087824420172969926796247746955339408132221508340385056764764 : F), 2061, 5, 148⟩, ⟨(5490840172619726728439090431478996796759005534251273116601184194479291218970 : F), 2062, 5, 148⟩], residual := [((7034116285494096098739970852510960587256386181555087115260134023699770837108 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2800) * ((1 : F) + (-1 : F) * rho 2798) = (relationLc2302 rho)

def relationLc2303 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 148⟩], residual := [((1 : F), 2799), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (relationLc2303 rho) = ((1 : F) * rho 2801)

def relationLc2304 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 148⟩], residual := [((1 : F), 2800), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1955) * (relationLc2304 rho) = ((1 : F) * rho 2802)

def relationLc2305 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩], residual := [((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2305 rho) = ((1 : F) * rho 2803)

def relationLc2306 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3144982910228748581975719192741403467556637701274845694014003990746557421882 : F), 2061, 5, 149⟩], residual := [((5769188875529050372644141506610052770738299431780184070866704372825525935919 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2307 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 2062, 5, 149⟩], residual := [((1981879756459152890585408800338738007832827297438533450175392580190602675804 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2803 (rho : Nat -> F) : Prop :=
    (relationLc2306 rho) * (relationLc2307 rho) = ((1 : F) * rho 2804)

def relationLc2308 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), runs := [⟨(6203709236971791698109936530403506506650340040519080595790234042592346130041 : F), 2061, 5, 149⟩, ⟨(7995175084980332794894335504846425685460706685990983680008492838779928162389 : F), 2062, 5, 149⟩], residual := [((2282881608847224617088973318695651457560718567975860498722210416720224759390 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2308 rho) = ((1 : F) * rho 2805)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2806) * ((1 : F) + (1 : F) * rho 2804) = ((1 : F) * rho 2805)

def relationLc2309 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (449286664448037629354489433935120845915192649163080147926740617137481076652 : F), runs := [⟨(2240752512456578726138888408378040024725559294634983232144999413325063109000 : F), 2061, 5, 149⟩, ⟨(449286664448037629354489433935120845915192649163080147926740617137481076652 : F), 2062, 5, 149⟩], residual := [((6161580140581145807159851620085895073815180767178203329213023039197184479651 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2309 rho) = ((1 : F) * rho 2807)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2808) * ((1 : F) + (-1 : F) * rho 2804) = ((5754422572523754068755447096468385660735147391356000447863493425454865053389 : F) * rho 2803 + (1 : F) * rho 2807)

def relationLc2310 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩], residual := [((1 : F), 2806), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (relationLc2310 rho) = ((1 : F) * rho 2809)

def relationLc2311 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩], residual := [((1 : F), 2808), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1956) * (relationLc2311 rho) = ((1 : F) * rho 2810)

def relationLc2312 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩], residual := [((1 : F), 2809), ((1 : F), 2810), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2312 rho) = ((1 : F) * rho 2811)

def relationLc2313 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 2061, 5, 149⟩], residual := [((481015789548022809936818797710406701423717712714693952242520185293036176048 : F), 2809), ((5775556576858411646158082484809865716789842656243550876083649985645673455572 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2314 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 2062, 5, 149⟩], residual := [((3691096358027745336063657324176483550920035707413579978283300600227612312748 : F), 1806), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 2810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2811 (rho : Nat -> F) : Prop :=
    (relationLc2313 rho) * (relationLc2314 rho) = ((1 : F) * rho 2812)

def relationLc2315 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), runs := [⟨(2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 2061, 5, 149⟩, ⟨(6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 2062, 5, 149⟩], residual := [((151421588100937353317181615817857404102268539262651372153589531488217465873 : F), 1806), ((2854113360462070250237665369511310630664090347204572612470743422269767583329 : F), 2809), ((6443546594132859595093629908190367994668625510347454729746931838690644669542 : F), 2810)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2315 rho) = ((1 : F) * rho 2813)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2814) * ((1 : F) + (1 : F) * rho 2812) = ((1 : F) * rho 2813)

def relationLc2316 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), runs := [⟨(2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 2062, 5, 149⟩, ⟨(5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 2061, 5, 149⟩], residual := [((2000915155295510829155195030591178536707273824806609098188301617226764569499 : F), 2810), ((5590348388966300174011159569270235900711808987949491215464490033647641655712 : F), 2809), ((8293040161327433070931643322963689127273630795891412455781643924429191773168 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2316 rho) = ((1 : F) * rho 2815)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2816) * ((1 : F) + (-1 : F) * rho 2812) = ((853198205166559421082470338920132093956816522397963514282441805043003013830 : F) * rho 2811 + (1 : F) * rho 2815)

def relationLc2317 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 149⟩], residual := [((-1 : F), 2809), ((1 : F), 2814), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (relationLc2317 rho) = ((1 : F) * rho 2817)

def relationLc2318 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 149⟩], residual := [((-1 : F), 2810), ((1 : F), 2816), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1957) * (relationLc2318 rho) = ((1 : F) * rho 2818)

def relationLc2319 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 2061, 5, 149⟩, ⟨(1 : F), 2062, 5, 149⟩], residual := [((1 : F), 2809), ((1 : F), 2810), ((1 : F), 2817), ((1 : F), 2818), ((2575455990000301868218351106734072388633147984547723962197285395701784939873 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2319 rho) = ((1 : F) * rho 2819)

def relationLc2320 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 2061, 5, 149⟩], residual := [((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 2809), ((4581139559655131800588800064852870173629595321372597681225314801325210445827 : F), 2817), ((5270411603461582088167028508315370011555073697546563505417240778775115497472 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2321 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 2062, 5, 149⟩], residual := [((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 2810), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 2818), ((6468272815759537655347467424063497937855302588140460740361281552813528541125 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2819 (rho : Nat -> F) : Prop :=
    (relationLc2320 rho) * (relationLc2321 rho) = ((1 : F) * rho 2820)

def relationLc2322 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), runs := [⟨(2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 2061, 5, 149⟩, ⟨(2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 2062, 5, 149⟩], residual := [((2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 2809), ((2089571024952879125691645491338850754422848857557583011303821485061777527974 : F), 2817), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 2810), ((2819632380249469950141144320371320380096821306476083766224419090990878847763 : F), 2818), ((7412017940274871126072399907637710632686561492359085723320431144148497766234 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc2322 rho) = ((1 : F) * rho 2821)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2822) * ((1 : F) + (1 : F) * rho 2820) = ((1 : F) * rho 2821)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
