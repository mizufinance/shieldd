import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs82

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationRow2309 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2310) * ((1 : F) + (-1 : F) * rho 2308) = (relationLc1714 rho)

def relationLc1715 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 50⟩], residual := [((1 : F), 2309), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2310 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1857) * (relationLc1715 rho) = ((1 : F) * rho 2311)

def relationLc1716 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 50⟩], residual := [((1 : F), 2310), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2311 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1857) * (relationLc1716 rho) = ((1 : F) * rho 2312)

def relationLc1717 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6178153492810837321873108985276510456890801263430899812036496871227230386120 : F), 2061, 5, 51⟩], residual := [((8215797647988851489209436139152836975875997321450035911852191941941828385271 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1718 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), runs := [⟨(7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), 2062, 5, 51⟩], residual := [((2917334971477552096792936140409115364710338386293267745427394798241615520212 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2312 (rho : Nat -> F) : Prop :=
    (relationLc1717 rho) * (relationLc1718 rho) = ((1 : F) * rho 2313)

def relationLc1719 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), runs := [⟨(7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), 2062, 5, 51⟩, ⟨(7848322503852448400591964485979833705405177171479936466344335255753523655867 : F), 2061, 5, 51⟩], residual := [((3604891716349428828150159426122664433615658258664732715224145671674818794608 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2313 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2314) * ((1 : F) + (1 : F) * rho 2313) = (relationLc1719 rho)

def relationLc1720 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7848322503852448400591964485979833705405177171479936466344335255753523655867 : F), runs := [⟨(7694370084810280788335886711964790438240845401652182560056549234120635838838 : F), 2061, 5, 51⟩, ⟨(7848322503852448400591964485979833705405177171479936466344335255753523655867 : F), 2062, 5, 51⟩], residual := [((5087843415398648340158033115839661935992070534691455337732849271367643704829 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2314 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2315) * ((1 : F) + (-1 : F) * rho 2313) = (relationLc1720 rho)

def relationLc1721 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 51⟩], residual := [((1 : F), 2314), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2315 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1858) * (relationLc1721 rho) = ((1 : F) * rho 2316)

def relationLc1722 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 51⟩], residual := [((1 : F), 2315), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2316 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1858) * (relationLc1722 rho) = ((1 : F) * rho 2317)

def relationLc1723 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2118582982988257504473440225491591734796304383057197015068125790043029382166 : F), 2061, 5, 52⟩], residual := [((8442565229902995211953908369690446822943561671847732130643978236599649982557 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1724 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), runs := [⟨(2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), 2062, 5, 52⟩], residual := [((1513218976093308884816939156906656843199549780839367688545811288964805344056 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2317 (rho : Nat -> F) : Prop :=
    (relationLc1723 rho) * (relationLc1724 rho) = ((1 : F) * rho 2318)

def relationLc1725 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), runs := [⟨(1800844736714617282595404402780803561052921375776985866337424187818885991170 : F), 2061, 5, 52⟩, ⟨(2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), 2062, 5, 52⟩], residual := [((2128174185743992803427480888109188831678287124788585732388399870587616424272 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2318 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2319) * ((1 : F) + (1 : F) * rho 2318) = (relationLc1725 rho)

def relationLc1726 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1800844736714617282595404402780803561052921375776985866337424187818885991170 : F), runs := [⟨(1800844736714617282595404402780803561052921375776985866337424187818885991170 : F), 2062, 5, 52⟩, ⟨(2299844063002285963520542651454450250906626902268201289215890373981759450185 : F), 2061, 5, 52⟩], residual := [((4584281417295305356797355705327174107158956341988320145094872581481604524700 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2319 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2320) * ((1 : F) + (-1 : F) * rho 2318) = (relationLc1726 rho)

def relationLc1727 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 52⟩], residual := [((1 : F), 2319), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2320 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1859) * (relationLc1727 rho) = ((1 : F) * rho 2321)

def relationLc1728 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 52⟩], residual := [((1 : F), 2320), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2321 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1859) * (relationLc1728 rho) = ((1 : F) * rho 2322)

def relationLc1729 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5846523051446967967440159082631275298002440439864756615500920460162638843764 : F), 2061, 5, 53⟩], residual := [((5485200669001964675903116690389524045452503466510717669914562100715921570316 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1730 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 2062, 5, 53⟩], residual := [((7291182270810181618096149122593319263114027650082957086263435969101109264147 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2322 (rho : Nat -> F) : Prop :=
    (relationLc1729 rho) * (relationLc1730 rho) = ((1 : F) * rho 2323)

def relationLc1731 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 2061, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 2062, 5, 53⟩], residual := [((3265037226037828153459719589295133553856424724399244653828892159807408240682 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2323 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2324) * ((1 : F) + (1 : F) * rho 2323) = (relationLc1731 rho)

def relationLc1732 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), runs := [⟨(3714032348987859282148255437863133091348956225595650950054118156212671998772 : F), 2062, 5, 53⟩, ⟨(5614987881341147618896054931299865755361696243168752487448507931180818023786 : F), 2061, 5, 53⟩], residual := [((8364348212655621776185922730037361598719148012242692402802574383202708885440 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2324 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2325) * ((1 : F) + (-1 : F) * rho 2323) = (relationLc1732 rho)

def relationLc1733 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 53⟩], residual := [((1 : F), 2324), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2325 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1860) * (relationLc1733 rho) = ((1 : F) * rho 2326)

def relationLc1734 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 53⟩], residual := [((1 : F), 2325), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2326 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1860) * (relationLc1734 rho) = ((1 : F) * rho 2327)

def relationLc1735 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3270625457551667644453406806086445794893819027444377513267150979927668756102 : F), 2061, 5, 54⟩], residual := [((1313990169365511817090899843224152567995448967037380651344274914537076948048 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1736 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 2062, 5, 54⟩], residual := [((4242920238461437888072824133392194042958901485991965180008883918058321798559 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2327 (rho : Nat -> F) : Prop :=
    (relationLc1735 rho) * (relationLc1736 rho) = ((1 : F) * rho 2328)

def relationLc1737 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 2062, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 2061, 5, 54⟩], residual := [((254528008648488836902356643224023653119307675234662398872758838058452249680 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2328 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2329) * ((1 : F) + (1 : F) * rho 2328) = (relationLc1737 rho)

def relationLc1738 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), runs := [⟨(1799753964916820815760635111213817112793132412296537109379119345177096523901 : F), 2061, 5, 54⟩, ⟨(6732053796120843313219339245081777720406507586255686883542306955587239032230 : F), 2062, 5, 54⟩], residual := [((2289707880837953908755208871389624432709260619033607367296000191999872925118 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2329 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2330) * ((1 : F) + (-1 : F) * rho 2328) = (relationLc1738 rho)

def relationLc1739 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 54⟩], residual := [((1 : F), 2329), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2330 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1861) * (relationLc1739 rho) = ((1 : F) * rho 2331)

def relationLc1740 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 54⟩], residual := [((1 : F), 2330), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2331 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1861) * (relationLc1740 rho) = ((1 : F) * rho 2332)

def relationLc1741 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3233995703196325388481299497442317849571724715469973779048454502475618732286 : F), 2061, 5, 55⟩], residual := [((8427363959673275445356636965346819445583959661557314661313584705058592663131 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1742 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 2062, 5, 55⟩], residual := [((3675494411708184879950187669845890975019109332169909707887469082384047256779 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2332 (rho : Nat -> F) : Prop :=
    (relationLc1741 rho) * (relationLc1742 rho) = ((1 : F) * rho 2333)

def relationLc1743 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 2061, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 2062, 5, 55⟩], residual := [((1411333168799633030026175624699751478991214462541181323314757811929244112059 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2333 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2334) * ((1 : F) + (1 : F) * rho 2333) = (relationLc1743 rho)

def relationLc1744 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (470673144524052484826972488981377734233936714009054186319817171498378143294 : F), runs := [⟨(470673144524052484826972488981377734233936714009054186319817171498378143294 : F), 2062, 5, 55⟩, ⟨(4715490755243117384424520177060293576182160841530650796913740284578135200683 : F), 2061, 5, 55⟩], residual := [((2267358468243705539888602275044934994867174603928525323102004785228563668611 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2334 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2335) * ((1 : F) + (-1 : F) * rho 2333) = (relationLc1744 rho)

def relationLc1745 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 55⟩], residual := [((1 : F), 2334), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2335 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1862) * (relationLc1745 rho) = ((1 : F) * rho 2336)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
