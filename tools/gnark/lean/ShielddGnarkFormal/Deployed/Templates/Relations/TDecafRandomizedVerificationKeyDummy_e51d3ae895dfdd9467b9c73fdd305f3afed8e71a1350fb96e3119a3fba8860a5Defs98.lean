import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs97

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc2175 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 2062, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 2061, 5, 127⟩], residual := [((1791110691337434751439192320321270400831563346962424757106989467896124606726 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2694) * ((1 : F) + (1 : F) * rho 2693) = (relationLc2175 rho)

def relationLc2176 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 2061, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 2062, 5, 127⟩], residual := [((3935246727056329354590544589123741495402236291810130050885612457341162195522 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2695) * ((1 : F) + (-1 : F) * rho 2693) = (relationLc2176 rho)

def relationLc2177 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 127⟩], residual := [((1 : F), 2694), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (relationLc2177 rho) = ((1 : F) * rho 2696)

def relationLc2178 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 127⟩], residual := [((1 : F), 2695), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1934) * (relationLc2178 rho) = ((1 : F) * rho 2697)

def relationLc2179 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8248720859594048260171359378554269093421481617324763432726109518875895345970 : F), 2061, 5, 128⟩], residual := [((4473001459817228232150010665768690072105958119767506549923947413300614717103 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2180 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 2062, 5, 128⟩], residual := [((628858195515421657429651630870506053729338922447461237621201443220761506096 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2697 (rho : Nat -> F) : Prop :=
    (relationLc2179 rho) * (relationLc2180 rho) = ((1 : F) * rho 2698)

def relationLc2181 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 2061, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 2062, 5, 128⟩], residual := [((3260672663463754592699527260813969799540933504539398201751283743595333736700 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2699) * ((1 : F) + (1 : F) * rho 2698) = (relationLc2181 rho)

def relationLc2182 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (192807719238902097685895880574544665086720501955577988656842762171883390798 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 2062, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 2061, 5, 128⟩], residual := [((183627881588738771781489470048673345598670070548584390770980837587120717671 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2700) * ((1 : F) + (-1 : F) * rho 2698) = (relationLc2182 rho)

def relationLc2183 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 128⟩], residual := [((1 : F), 2699), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (relationLc2183 rho) = ((1 : F) * rho 2701)

def relationLc2184 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 128⟩], residual := [((1 : F), 2700), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1935) * (relationLc2184 rho) = ((1 : F) * rho 2702)

def relationLc2185 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(618054908213477814381438129861473047761143154008145337991771976121154319619 : F), 2061, 5, 129⟩], residual := [((6410948368104357234255387490833527163067313919974901621602509328920866406335 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2186 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 2062, 5, 129⟩], residual := [((6525623607059190063533361869152232303808632387596362439826165650534616212741 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2702 (rho : Nat -> F) : Prop :=
    (relationLc2185 rho) * (relationLc2186 rho) = ((1 : F) * rho 2703)

def relationLc2187 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 2062, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 2061, 5, 129⟩], residual := [((464840228660636242625898808997865902156444918536716779061545042604811587427 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2704) * ((1 : F) + (1 : F) * rho 2703) = (relationLc2187 rho)

def relationLc2188 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 2061, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 2062, 5, 129⟩], residual := [((3017483325411212357099490681509349029967373800989764072253376653537103478324 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2705) * ((1 : F) + (-1 : F) * rho 2703) = (relationLc2188 rho)

def relationLc2189 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 129⟩], residual := [((1 : F), 2704), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (relationLc2189 rho) = ((1 : F) * rho 2706)

def relationLc2190 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 129⟩], residual := [((1 : F), 2705), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1936) * (relationLc2190 rho) = ((1 : F) * rho 2707)

def relationLc2191 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6371667047184326709503565647805713250184644331668065658039380068871320237271 : F), 2061, 5, 130⟩], residual := [((1866814805241085772673212667356012663695540847735184269804539503998595498710 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2192 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 2062, 5, 130⟩], residual := [((8035055261435057508313430386696100386377823167575762190338896894009796030450 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2707 (rho : Nat -> F) : Prop :=
    (relationLc2191 rho) * (relationLc2192 rho) = ((1 : F) * rho 2708)

def relationLc2193 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 2061, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 2062, 5, 130⟩], residual := [((6923162192429016348737674308255948282166001785734126235605888494158379187802 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2709) * ((1 : F) + (1 : F) * rho 2708) = (relationLc2193 rho)

def relationLc2194 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (155848084497101853705127089467325644646097023424409657793603846456249198406 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 2062, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 2061, 5, 130⟩], residual := [((2967446225558022814703410539096345214748111516817570520702980260485598143356 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2710) * ((1 : F) + (-1 : F) * rho 2708) = (relationLc2194 rho)

def relationLc2195 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 130⟩], residual := [((1 : F), 2709), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (relationLc2195 rho) = ((1 : F) * rho 2711)

def relationLc2196 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 130⟩], residual := [((1 : F), 2710), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1937) * (relationLc2196 rho) = ((1 : F) * rho 2712)

def relationLc2197 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7685641275510751267434062841131440909524057548538908820526924562368135360637 : F), 2061, 5, 131⟩], residual := [((1533107064713739853198800681749478654974420030752112990442623442158134514998 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2198 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 2062, 5, 131⟩], residual := [((404578301454555449838109131566136413595117364922563879558071765960199684880 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2712 (rho : Nat -> F) : Prop :=
    (relationLc2197 rho) * (relationLc2198 rho) = ((1 : F) * rho 2713)

def relationLc2199 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 2062, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 2061, 5, 131⟩], residual := [((8343606595212015146865537674042581838210320453922329978308983926916042244758 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2714) * ((1 : F) + (1 : F) * rho 2713) = (relationLc2199 rho)

def relationLc2200 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 2061, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 2062, 5, 131⟩], residual := [((2357664860580816865395151332838189685037838907976348089818391478630425954683 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2715) * ((1 : F) + (-1 : F) * rho 2713) = (relationLc2200 rho)

def relationLc2201 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 2061, 5, 131⟩], residual := [((1 : F), 2714), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (relationLc2201 rho) = ((1 : F) * rho 2716)

def relationLc2202 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 2062, 5, 131⟩], residual := [((1 : F), 2715), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1938) * (relationLc2202 rho) = ((1 : F) * rho 2717)

def relationLc2203 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3994026013218413113555076699488428925687662647002644743993134519597452118002 : F), 2061, 5, 132⟩], residual := [((191995865608900380973939639003477078910801454989591405516300774439642051799 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc2204 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 2062, 5, 132⟩], residual := [((5369222675224696627787843547543016413626997945559590293458623514399306051644 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow2717 (rho : Nat -> F) : Prop :=
    (relationLc2203 rho) * (relationLc2204 rho) = ((1 : F) * rho 2718)

def relationLc2205 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), runs := [⟨(1259186300316446575314639622360537692169759140505240439362743525217620526212 : F), 2061, 5, 132⟩, ⟨(6090960902211025318954194945509402949573732143831061940818648841608928736503 : F), 2062, 5, 132⟩], residual := [((6657898233765606149787076330203491894607865338793954085608129944042591487344 : F), 1806)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
