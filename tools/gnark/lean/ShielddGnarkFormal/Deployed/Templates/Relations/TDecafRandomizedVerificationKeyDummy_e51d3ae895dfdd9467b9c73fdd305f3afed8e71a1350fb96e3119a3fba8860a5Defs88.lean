import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs87

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2438 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2439) * ((1 : F) + (1 : F) * rho 2438) = (relationLc1869 rho)

def relationLc1870 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (742490179599478013046920666056916592979193349658922425085796642242052004458 : F), runs := [⟨(742490179599478013046920666056916592979193349658922425085796642242052004458 : F), 2062, 5, 76⟩, ⟨(7865384328237766971312513165828874914869032229208936773290604428377426164264 : F), 2061, 5, 76⟩], residual := [((5126820015755109312404685105978555226239595498435133393189054043085659429469 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2439 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2440) * ((1 : F) + (-1 : F) * rho 2438) = (relationLc1870 rho)

def relationLc1871 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 76⟩], residual := [((1 : F), 2439), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2440 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1883) * (relationLc1871 rho) = ((1 : F) * rho 2441)

def relationLc1872 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 76⟩], residual := [((1 : F), 2440), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2441 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1883) * (relationLc1872 rho) = ((1 : F) * rho 2442)

def relationLc1873 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4195623733406376273792904174350645917923395446527071264275902358499815355703 : F), 2061, 5, 77⟩], residual := [((6306593912445370681793633410212297214903176766492704290603546068880324800889 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1874 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 2062, 5, 77⟩], residual := [((5474128706966524990545732930483669184775460332410376694904291933835612399336 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2442 (rho : Nat -> F) : Prop :=
    (relationLc1873 rho) * (relationLc1874 rho) = ((1 : F) * rho 2443)

def relationLc1875 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (362577996003105924235076455902846944420072260336336196539692441441546031850 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 2062, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 2061, 5, 77⟩], residual := [((1889905658107155945981201727886346476221876859972054554238849703490310933302 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2443 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2444) * ((1 : F) + (1 : F) * rho 2443) = (relationLc1875 rho)

def relationLc1876 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), runs := [⟨(362577996003105924235076455902846944420072260336336196539692441441546031850 : F), 2061, 5, 77⟩, ⟨(6723974224133941491755119788793104949975823004466087579426849508056891438348 : F), 2062, 5, 77⟩], residual := [((2096538376241753716798571118297109287092753035399130962288541335804405738151 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2444 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2445) * ((1 : F) + (-1 : F) * rho 2443) = (relationLc1876 rho)

def relationLc1877 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 77⟩], residual := [((1 : F), 2444), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2445 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1884) * (relationLc1877 rho) = ((1 : F) * rho 2446)

def relationLc1878 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 77⟩], residual := [((1 : F), 2445), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2446 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1884) * (relationLc1878 rho) = ((1 : F) * rho 2447)

def relationLc1879 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1413911105099657135291792788556059165546956689872882273894997138390302031093 : F), 2061, 5, 78⟩], residual := [((8353451365575389895420713276252437744296542059476952895769368578101377270479 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1880 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 2062, 5, 78⟩], residual := [((1627794521326751861359370178242313064265856034398423533990142366307677810046 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2447 (rho : Nat -> F) : Prop :=
    (relationLc1879 rho) * (relationLc1880 rho) = ((1 : F) * rho 2448)

def relationLc1881 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 2062, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 2061, 5, 78⟩], residual := [((1963194852193203854203140744608170884516775783800214513275167904153514644444 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2448 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2449) * ((1 : F) + (1 : F) * rho 2448) = (relationLc1881 rho)

def relationLc1882 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), runs := [⟨(2374684346225205188650120977020710657336063338698619375553401752431435740416 : F), 2061, 5, 78⟩, ⟨(8179380665320262005457581451063674680559890238778769825492349582639102858479 : F), 2062, 5, 78⟩], residual := [((4713702755110331543474491408240107297403414201301135916108963537789741442495 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2449 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2450) * ((1 : F) + (-1 : F) * rho 2448) = (relationLc1882 rho)

def relationLc1883 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 78⟩], residual := [((1 : F), 2449), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2450 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1885) * (relationLc1883 rho) = ((1 : F) * rho 2451)

def relationLc1884 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 78⟩], residual := [((1 : F), 2450), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2451 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1885) * (relationLc1884 rho) = ((1 : F) * rho 2452)

def relationLc1885 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(435443019248027373572209328981659234170213225482121712799853667443266468176 : F), 2061, 5, 79⟩], residual := [((3240388181392711470302623400092573262502763043986311877675923455854650277543 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1886 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 2062, 5, 79⟩], residual := [((8359927174140099073163808715029987177202746736101787838973659665157973465362 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2452 (rho : Nat -> F) : Prop :=
    (relationLc1885 rho) * (relationLc1886 rho) = ((1 : F) * rho 2453)

def relationLc1887 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 2061, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 2062, 5, 79⟩], residual := [((1255464619070411914285884063926842950292772109515344959551717420376047071663 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2453 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2454) * ((1 : F) + (1 : F) * rho 2453) = (relationLc1887 rho)

def relationLc1888 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), runs := [⟨(4223772640319601369882008173395530773963308212063314321656053494061121690387 : F), 2062, 5, 79⟩, ⟨(5087434312801730417605866464522622496729984521401512386003450836701688677694 : F), 2061, 5, 79⟩], residual := [((5201334774209604017645676000956203413974006481900791533392360915641172360594 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2454 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2455) * ((1 : F) + (-1 : F) * rho 2453) = (relationLc1888 rho)

def relationLc1889 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 79⟩], residual := [((1 : F), 2454), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2455 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1886) * (relationLc1889 rho) = ((1 : F) * rho 2456)

def relationLc1890 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 79⟩], residual := [((1 : F), 2455), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2456 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1886) * (relationLc1890 rho) = ((1 : F) * rho 2457)

def relationLc1891 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4171148466704651220389908484425727516067988246936310646425350299083169892930 : F), 2061, 5, 80⟩], residual := [((3095872043888969263896429164308195273262937578393571560685502100763634414657 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1892 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 2062, 5, 80⟩], residual := [((2753830212946274734080901510274114235564601986241285087182291927643562326665 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2457 (rho : Nat -> F) : Prop :=
    (relationLc1891 rho) * (relationLc1892 rho) = ((1 : F) * rho 2458)

def relationLc1893 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 2061, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 2062, 5, 80⟩], residual := [((6643053041644967957978290427523183888135650947769817479177854734423396780793 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2458 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2459) * ((1 : F) + (1 : F) * rho 2458) = (relationLc1893 rho)

def relationLc1894 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), runs := [⟨(1575108610855636279401681015894881305753293384289531362387938360139220314953 : F), 2062, 5, 80⟩, ⟨(6075948261272125007466137503166569148380577991267134072933922076103126899382 : F), 2061, 5, 80⟩], residual := [((1944190991534382356061877854857180638324709297848421504967051709312870947874 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2459 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2460) * ((1 : F) + (-1 : F) * rho 2458) = (relationLc1894 rho)

def relationLc1895 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 80⟩], residual := [((1 : F), 2459), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2460 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1887) * (relationLc1895 rho) = ((1 : F) * rho 2461)

def relationLc1896 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 80⟩], residual := [((1 : F), 2460), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2461 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1887) * (relationLc1896 rho) = ((1 : F) * rho 2462)

def relationLc1897 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3606477877692461662957109389413456453654481356050762715016429689958378271754 : F), 2061, 5, 81⟩], residual := [((3909475824386380137549903929611434474143820228075144355006436974185598099324 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1898 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 2062, 5, 81⟩], residual := [((795231880928258437557794133498488588455906730014666906275286167459374319483 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2462 (rho : Nat -> F) : Prop :=
    (relationLc1897 rho) * (relationLc1898 rho) = ((1 : F) * rho 2463)

def relationLc1899 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), runs := [⟨(143751746805209981231263548913363895913215937586530293922447314115109648945 : F), 2061, 5, 81⟩, ⟨(3020852559585742680112147288882682147588299607034066156569757547087536577105 : F), 2062, 5, 81⟩], residual := [((7728755420950352125831423975308434577296149752659537292781206527488954098007 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2463 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2464) * ((1 : F) + (1 : F) * rho 2463) = (relationLc1899 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
