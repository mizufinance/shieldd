import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893aDefs38

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a

variable {F : Type} [CommRing F]

def relationRow1970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1970) * ((1 : F) + (1 : F) * rho 1969) = (relationLc582 rho)

def relationLc583 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), runs := [⟨(289700866257323929574868378305803100126581288478047791530455231463464249904 : F), 1417, 5, 111⟩, ⟨(3020223596946537409097760727254624978805974893312280157837225633008834269933 : F), 1418, 5, 111⟩], residual := [((1898111030473104022137829321973391543106266963162153558988674148132892304511 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1971) * ((1 : F) + (-1 : F) * rho 1969) = (relationLc583 rho)

def relationLc584 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 111⟩], residual := [((1 : F), 1970), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1274) * (relationLc584 rho) = ((1 : F) * rho 1972)

def relationLc585 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 111⟩], residual := [((1 : F), 1971), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1274) * (relationLc585 rho) = ((1 : F) * rho 1973)

def relationLc586 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8002886839766104394803904948068912124417238840361875954578229588891340342596 : F), 1417, 5, 112⟩], residual := [((7561662500309782852656824553986542550854249044940477162807519057587707920340 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc587 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 1418, 5, 112⟩], residual := [((7343840637694402971705815998132950071977704819866035733276883382846695395753 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1974 (rho : Nat -> F) : Prop :=
    (relationLc586 rho) * (relationLc587 rho) = ((1 : F) * rho 1974)

def relationLc588 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 1418, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 1417, 5, 112⟩], residual := [((4908882351364965955124446080203945757906559513275700353999585781223923747781 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1975) * ((1 : F) + (1 : F) * rho 1974) = (relationLc588 rho)

def relationLc589 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), runs := [⟨(1927381341514089591129164410336828499035645134832208292638598876821174158026 : F), 1417, 5, 112⟩, ⟨(5587566190730768027819912655621846700368574680727633698831239548001282687834 : F), 1418, 5, 112⟩], residual := [((6949327487557675771387029135250163063563428806022613442349481463452058840414 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1976) * ((1 : F) + (-1 : F) * rho 1974) = (relationLc589 rho)

def relationLc590 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 112⟩], residual := [((1 : F), 1975), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * (relationLc590 rho) = ((1 : F) * rho 1977)

def relationLc591 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 112⟩], residual := [((1 : F), 1976), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1275) * (relationLc591 rho) = ((1 : F) * rho 1978)

def relationLc592 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6044981370060268824196943286506821731815264421904177143427925057065980194445 : F), 1417, 5, 113⟩], residual := [((3805626483064446485212977668886888106608120134596564516414779626770886787927 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc593 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 1418, 5, 113⟩], residual := [((865035971979850138074387699480895954015591454232970028220106096984535530082 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1979 (rho : Nat -> F) : Prop :=
    (relationLc592 rho) * (relationLc593 rho) = ((1 : F) * rho 1979)

def relationLc594 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 1417, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 1418, 5, 113⟩], residual := [((505707955034072137993988679476284032651512376410964841431880232639426326160 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1980) * ((1 : F) + (1 : F) * rho 1979) = (relationLc594 rho)

def relationLc595 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (412903296436951579340871966000461490183406973415938947318737915616327420832 : F), runs := [⟨(412903296436951579340871966000461490183406973415938947318737915616327420832 : F), 1418, 5, 113⟩, ⟨(7923420480455524485877315916130951880190073055835507926948154189087509869476 : F), 1417, 5, 113⟩], residual := [((3794503170617829208688423836000519387445580897354717565440009457342641288172 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1981) * ((1 : F) + (-1 : F) * rho 1979) = (relationLc595 rho)

def relationLc596 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 113⟩], residual := [((1 : F), 1980), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1276) * (relationLc596 rho) = ((1 : F) * rho 1982)

def relationLc597 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 113⟩], residual := [((1 : F), 1981), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1276) * (relationLc597 rho) = ((1 : F) * rho 1983)

def relationLc598 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5538994255283880635592466261680559070775355747740625553578725869357430931450 : F), 1417, 5, 114⟩], residual := [((3823961609180944401222313597713111165119329430409665618330444639171228299772 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc599 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 1418, 5, 114⟩], residual := [((2230873185703260841911214032525688903219201575197868665684172661455736694142 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1984 (rho : Nat -> F) : Prop :=
    (relationLc598 rho) * (relationLc599 rho) = ((1 : F) * rho 1984)

def relationLc600 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 1417, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 1418, 5, 114⟩], residual := [((6712930830834958536208495955883693603967525297039104674223897810239178679737 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1985) * ((1 : F) + (1 : F) * rho 1984) = (relationLc600 rho)

def relationLc601 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), runs := [⟨(5852299713938716709231507137746261982535760564126182130891103061603606411203 : F), 1418, 5, 114⟩, ⟨(6169195648797209629327608225179553467771371074863597399140344291178555533897 : F), 1417, 5, 114⟩], residual := [((3363026558279651923245842165054909851794577971967155871755746820639602436007 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1986) * ((1 : F) + (-1 : F) * rho 1984) = (relationLc601 rho)

def relationLc602 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 114⟩], residual := [((1 : F), 1985), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1277) * (relationLc602 rho) = ((1 : F) * rho 1987)

def relationLc603 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 114⟩], residual := [((1 : F), 1986), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1277) * (relationLc603 rho) = ((1 : F) * rho 1988)

def relationLc604 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7092102170889042601208202038466364950277576212870097414401334358924586649189 : F), 1417, 5, 115⟩], residual := [((4653472090370567983434626876681111717002852161687776050661280676529317148432 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc605 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 1418, 5, 115⟩], residual := [((2257434816805262428550449631546742040564192443442506165265588191162612118189 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1989 (rho : Nat -> F) : Prop :=
    (relationLc604 rho) * (relationLc605 rho) = ((1 : F) * rho 1989)

def relationLc606 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 1418, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 1417, 5, 115⟩], residual := [((2370785343805429719167261158997236238833652498248150100773059432113696423621 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1990) * ((1 : F) + (1 : F) * rho 1989) = (relationLc606 rho)

def relationLc607 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), runs := [⟨(4626975192035661946161385874409627964253371007818633617742673579973816010909 : F), 1417, 5, 115⟩, ⟨(4787822117574398943699171299977647807568956384639731006567203247563564781161 : F), 1418, 5, 115⟩], residual := [((5929633731751807650188902444688267458901795220973861143264780965236086224933 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1991) * ((1 : F) + (-1 : F) * rho 1989) = (relationLc607 rho)

def relationLc608 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 1417, 5, 115⟩], residual := [((1 : F), 1990), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1278) * (relationLc608 rho) = ((1 : F) * rho 1992)

def relationLc609 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 1418, 5, 115⟩], residual := [((1 : F), 1991), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1278) * (relationLc609 rho) = ((1 : F) * rho 1993)

def relationLc610 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3341344058927025398794129116517091015478478137346240165869616329642569556725 : F), 1417, 5, 116⟩], residual := [((712267692233144119413558795824260412907497088011210850217416112241304825970 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc611 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 1418, 5, 116⟩], residual := [((7262080225988288534438780071020854769618142351743369218531179308853029943442 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1994 (rho : Nat -> F) : Prop :=
    (relationLc610 rho) * (relationLc611 rho) = ((1 : F) * rho 1994)

def relationLc612 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), runs := [⟨(2922146266869107619575907378398951743231808435409911598926907837723712421170 : F), 1417, 5, 116⟩, ⟨(3928403042278022089165262128784086374671417298686793742527950331931775295777 : F), 1418, 5, 116⟩], residual := [((3200812217306663548568495702515802518815006225662322038412120455713091406699 : F), 1162)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1995) * ((1 : F) + (1 : F) * rho 1994) = (relationLc612 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_b01b1d46d18c662eabc20c9c5434699928df7baa1f515b0cb07e99eb6598893a
