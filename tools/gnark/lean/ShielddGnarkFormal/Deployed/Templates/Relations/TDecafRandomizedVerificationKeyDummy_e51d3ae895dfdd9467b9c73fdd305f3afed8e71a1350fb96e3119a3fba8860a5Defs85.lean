import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs84

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc1777 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6158233270979310956638021131007359831823461191922592329001496000280905611254 : F), 2061, 5, 61⟩], residual := [((4467762641089011012460139430937330739726033190653514206239072531933157555187 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1778 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 2062, 5, 61⟩], residual := [((4238644719121606010764621135185413098022294640887365526575084778074895914597 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2362 (rho : Nat -> F) : Prop :=
    (relationLc1777 rho) * (relationLc1778 rho) = ((1 : F) * rho 2363)

def relationLc1779 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 2062, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 2061, 5, 61⟩], residual := [((4047251108373685273174184597169858851108951039121401643780880198158852193995 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2363 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2364) * ((1 : F) + (1 : F) * rho 2363) = (relationLc1779 rho)

def relationLc1780 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), runs := [⟨(1387440957520290860982515516339530368664827045823571475477226279658438710741 : F), 2061, 5, 61⟩, ⟨(6031400935712669419417859455174711429331227516424772680961701443367802924271 : F), 2062, 5, 61⟩], residual := [((2519224524602260538067412646708043802373803742617841216289952063342850795165 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2364 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2365) * ((1 : F) + (-1 : F) * rho 2363) = (relationLc1780 rho)

def relationLc1781 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 61⟩], residual := [((1 : F), 2364), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2365 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868) * (relationLc1781 rho) = ((1 : F) * rho 2366)

def relationLc1782 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 61⟩], residual := [((1 : F), 2365), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2366 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1868) * (relationLc1782 rho) = ((1 : F) * rho 2367)

def relationLc1783 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8104899636678543604657262777441996492681450007842513561438126999479804123625 : F), 2061, 5, 62⟩], residual := [((7860504369378455773331695889377182530776402391681277877526940376923990757318 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1784 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 2062, 5, 62⟩], residual := [((4094745204734227454523259541864877269488153888968154424022635492436875126558 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2367 (rho : Nat -> F) : Prop :=
    (relationLc1783 rho) * (relationLc1784 rho) = ((1 : F) * rho 2368)

def relationLc1785 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 2062, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 2061, 5, 62⟩], residual := [((882805281704354057597467756459580570199339644335419526886590628508342642566 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2368 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2369) * ((1 : F) + (1 : F) * rho 2368) = (relationLc1785 rho)

def relationLc1786 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), runs := [⟨(1028480744701591242868080233785885321991862844063663292220732330864851754947 : F), 2061, 5, 62⟩, ⟨(8424782572215941288270892685642582487761756420664361743505559923759892036198 : F), 2062, 5, 62⟩], residual := [((1365556802616877375954001694639792525481792047346366026008002783409929961333 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2369 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2370) * ((1 : F) + (-1 : F) * rho 2368) = (relationLc1786 rho)

def relationLc1787 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 62⟩], residual := [((1 : F), 2369), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2370 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1869) * (relationLc1787 rho) = ((1 : F) * rho 2371)

def relationLc1788 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 62⟩], residual := [((1 : F), 2370), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2371 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1869) * (relationLc1788 rho) = ((1 : F) * rho 2372)

def relationLc1789 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6011334678039591808234449784869804372031718158751584830130446658022560656768 : F), 2061, 5, 63⟩], residual := [((2896601315595281826483492482886891517188844246350138873647231071697040228255 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1790 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 2062, 5, 63⟩], residual := [((3632840430158228762076042235044308132661818045554303185557551945106229637474 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2372 (rho : Nat -> F) : Prop :=
    (relationLc1789 rho) * (relationLc1790 rho) = ((1 : F) * rho 2373)

def relationLc1791 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 2062, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 2061, 5, 63⟩], residual := [((422052628510561653292389020156155178992927118097941318816758827007121337100 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2373 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2374) * ((1 : F) + (1 : F) * rho 2373) = (relationLc1791 rho)

def relationLc1792 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), runs := [⟨(6600375457234436849944300469372244054307777929361595040456815854899281040183 : F), 2061, 5, 63⟩, ⟨(7364688375594957725680118946883635672961320942388134957832351992566858158322 : F), 2062, 5, 63⟩], residual := [((2598290662687356450350434728849758433307111346405199677646573938046939128067 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2374 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2375) * ((1 : F) + (-1 : F) * rho 2373) = (relationLc1792 rho)

def relationLc1793 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 63⟩], residual := [((1 : F), 2374), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2375 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1870) * (relationLc1793 rho) = ((1 : F) * rho 2376)

def relationLc1794 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 63⟩], residual := [((1 : F), 2375), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2376 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1870) * (relationLc1794 rho) = ((1 : F) * rho 2377)

def relationLc1795 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1468539582095666279378991410533170917245967249536948894488180590741816634177 : F), 2061, 5, 64⟩], residual := [((2441858149594684419669229541998122896554895397549907271029031954323754410683 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1796 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 2062, 5, 64⟩], residual := [((5734647455186279297627215050346085835678696177385387464145726860498976860026 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2377 (rho : Nat -> F) : Prop :=
    (relationLc1795 rho) * (relationLc1796 rho) = ((1 : F) * rho 2378)

def relationLc1797 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 2062, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 2061, 5, 64⟩], residual := [((3806730623357089986699700989367181835760518207885634357888102877503714158759 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2378 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2379) * ((1 : F) + (1 : F) * rho 2378) = (relationLc1797 rho)

def relationLc1798 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (730047353916881942074916352344427942934907545092600995692017250110951879518 : F), runs := [⟨(3361663168443076789974960768385016590956919252010830399554025150454016092109 : F), 2061, 5, 64⟩, ⟨(730047353916881942074916352344427942934907545092600995692017250110951879518 : F), 2062, 5, 64⟩], residual := [((1796660262071968910246623980526058329156247328003921086141166780672068447878 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2379 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2380) * ((1 : F) + (-1 : F) * rho 2378) = (relationLc1798 rho)

def relationLc1799 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 64⟩], residual := [((1 : F), 2379), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2380 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1871) * (relationLc1799 rho) = ((1 : F) * rho 2381)

def relationLc1800 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 64⟩], residual := [((1 : F), 2380), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2381 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1871) * (relationLc1800 rho) = ((1 : F) * rho 2382)

def relationLc1801 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6021026344076416619121288468750741828046873078691119012171314382658426450457 : F), 2061, 5, 65⟩], residual := [((7317429427889679080864790959675717489239037886684290610301339332825622009038 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc1802 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 2062, 5, 65⟩], residual := [((5623423306062474044567382328107422310706576126000140678799979011964140812863 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2382 (rho : Nat -> F) : Prop :=
    (relationLc1801 rho) * (relationLc1802 rho) = ((1 : F) * rho 2383)

def relationLc1803 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 2061, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 2062, 5, 65⟩], residual := [((7462327244759041091178551734177979010012502938672402918311316224764724557338 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2383 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2384) * ((1 : F) + (1 : F) * rho 2383) = (relationLc1803 rho)

def relationLc1804 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), runs := [⟨(3842671787507003435795103195747962818913781052492676206089103635489301132371 : F), 2062, 5, 65⟩, ⟨(7277760502297569220153875681908740059217069917760434284809666512920814541227 : F), 2061, 5, 65⟩], residual := [((6347859754536564095544343687702155263140218853768682012754218406582542057158 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2384 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2385) * ((1 : F) + (-1 : F) * rho 2383) = (relationLc1804 rho)

def relationLc1805 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 65⟩], residual := [((1 : F), 2384), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2385 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1872) * (relationLc1805 rho) = ((1 : F) * rho 2386)

def relationLc1806 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 65⟩], residual := [((1 : F), 2385), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2386 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1872) * (relationLc1806 rho) = ((1 : F) * rho 2387)

def relationLc1807 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(283579253166981189097466647978536705612250233144289388837895438594313409125 : F), 2061, 5, 66⟩], residual := [((6495894566211403996232269137026018932501953391940325354720954163848318066143 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
