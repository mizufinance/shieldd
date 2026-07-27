import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5Defs29

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5

variable {F : Type} [CommRing F]

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), runs := [⟨(2689361199948485506916696468368523586682774808580948914130535602137252909086 : F), 256, 5, 126⟩, ⟨(3062986943046874526328985062249985163555385375590727201978260911734794819159 : F), 257, 5, 126⟩], residual := [((369835453671308253501701535082988302428925497488405681490395052401809343463 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow884 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 885) * ((1 : F) + (-1 : F) * rho 883) = (relationLc664 rho)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 126⟩], residual := [((1 : F), 884), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow885 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 128) * (relationLc665 rho) = ((1 : F) * rho 886)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 126⟩], residual := [((1 : F), 885), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow886 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 128) * (relationLc666 rho) = ((1 : F) * rho 887)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3662549041251064738439678582694000555264902823767717478987881813558759373397 : F), 256, 5, 127⟩], residual := [((3627157378103929501736907787229659891786383051031026833110981404511932764334 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 257, 5, 127⟩], residual := [((5077128519854369438435180807649926164157042074234900107924177009357349807768 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow887 (rho : Nat -> F) : Prop :=
    (relationLc667 rho) * (relationLc668 rho) = ((1 : F) * rho 888)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 257, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 256, 5, 127⟩], residual := [((1791110691337434751439192320321270400831563346962424757106989467896124606726 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow888 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 889) * ((1 : F) + (1 : F) * rho 888) = (relationLc669 rho)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), runs := [⟨(5010362288343936951376400532748131648628395373088991695083030624676428156364 : F), 256, 5, 127⟩, ⟨(5549791169035606208828982847422728853140160570375565844399346670575841144942 : F), 257, 5, 127⟩], residual := [((3935246727056329354590544589123741495402236291810130050885612457341162195522 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow889 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 890) * ((1 : F) + (-1 : F) * rho 888) = (relationLc670 rho)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 127⟩], residual := [((1 : F), 889), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow890 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 129) * (relationLc671 rho) = ((1 : F) * rho 891)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 127⟩], residual := [((1 : F), 890), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow891 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 129) * (relationLc672 rho) = ((1 : F) * rho 892)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(8248720859594048260171359378554269093421481617324763432726109518875895345970 : F), 256, 5, 128⟩], residual := [((4473001459817228232150010665768690072105958119767506549923947413300614717103 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 257, 5, 128⟩], residual := [((628858195515421657429651630870506053729338922447461237621201443220761506096 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow892 (rho : Nat -> F) : Prop :=
    (relationLc673 rho) * (relationLc674 rho) = ((1 : F) * rho 893)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 256, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 257, 5, 128⟩], residual := [((3260672663463754592699527260813969799540933504539398201751283743595333736700 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow893 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 894) * ((1 : F) + (1 : F) * rho 893) = (relationLc675 rho)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (192807719238902097685895880574544665086720501955577988656842762171883390798 : F), runs := [⟨(192807719238902097685895880574544665086720501955577988656842762171883390798 : F), 257, 5, 128⟩, ⟨(3433687381349699292050937701384647388599307985533979205457853324984751148615 : F), 256, 5, 128⟩], residual := [((183627881588738771781489470048673345598670070548584390770980837587120717671 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow894 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 895) * ((1 : F) + (-1 : F) * rho 893) = (relationLc676 rho)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 128⟩], residual := [((1 : F), 894), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow895 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 130) * (relationLc677 rho) = ((1 : F) * rho 896)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 128⟩], residual := [((1 : F), 895), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow896 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 130) * (relationLc678 rho) = ((1 : F) * rho 897)

def relationLc679 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(618054908213477814381438129861473047761143154008145337991771976121154319619 : F), 256, 5, 129⟩], residual := [((6410948368104357234255387490833527163067313919974901621602509328920866406335 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc680 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 257, 5, 129⟩], residual := [((6525623607059190063533361869152232303808632387596362439826165650534616212741 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow897 (rho : Nat -> F) : Prop :=
    (relationLc679 rho) * (relationLc680 rho) = ((1 : F) * rho 898)

def relationLc681 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 257, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 256, 5, 129⟩], residual := [((464840228660636242625898808997865902156444918536716779061545042604811587427 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow898 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 899) * ((1 : F) + (1 : F) * rho 898) = (relationLc681 rho)

def relationLc682 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), runs := [⟨(4807302064691190913542531684782250042361600866824626184345926611517624438244 : F), 256, 5, 129⟩, ⟨(8030968772266111124356589039142417960175676906008485111882130913878463388972 : F), 257, 5, 129⟩], residual := [((3017483325411212357099490681509349029967373800989764072253376653537103478324 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow899 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 900) * ((1 : F) + (-1 : F) * rho 898) = (relationLc682 rho)

def relationLc683 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 129⟩], residual := [((1 : F), 899), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow900 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 131) * (relationLc683 rho) = ((1 : F) * rho 901)

def relationLc684 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 129⟩], residual := [((1 : F), 900), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow901 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 131) * (relationLc684 rho) = ((1 : F) * rho 902)

def relationLc685 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6371667047184326709503565647805713250184644331668065658039380068871320237271 : F), 256, 5, 130⟩], residual := [((1866814805241085772673212667356012663695540847735184269804539503998595498710 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc686 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 257, 5, 130⟩], residual := [((8035055261435057508313430386696100386377823167575762190338896894009796030450 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow902 (rho : Nat -> F) : Prop :=
    (relationLc685 rho) * (relationLc686 rho) = ((1 : F) * rho 903)

def relationLc687 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 256, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 257, 5, 130⟩], residual := [((6923162192429016348737674308255948282166001785734126235605888494158379187802 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 904) * ((1 : F) + (1 : F) * rho 903) = (relationLc687 rho)

def relationLc688 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (155848084497101853705127089467325644646097023424409657793603846456249198406 : F), runs := [⟨(155848084497101853705127089467325644646097023424409657793603846456249198406 : F), 257, 5, 130⟩, ⟨(8315752288495446815440754243444095724373121572389092645274803238693531434469 : F), 256, 5, 130⟩], residual := [((2967446225558022814703410539096345214748111516817570520702980260485598143356 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 905) * ((1 : F) + (-1 : F) * rho 903) = (relationLc688 rho)

def relationLc689 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 130⟩], residual := [((1 : F), 904), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * (relationLc689 rho) = ((1 : F) * rho 906)

def relationLc690 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 130⟩], residual := [((1 : F), 905), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * (relationLc690 rho) = ((1 : F) * rho 907)

def relationLc691 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7685641275510751267434062841131440909524057548538908820526924562368135360637 : F), 256, 5, 131⟩], residual := [((1533107064713739853198800681749478654974420030752112990442623442158134514998 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc692 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 257, 5, 131⟩], residual := [((404578301454555449838109131566136413595117364922563879558071765960199684880 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow907 (rho : Nat -> F) : Prop :=
    (relationLc691 rho) * (relationLc692 rho) = ((1 : F) * rho 908)

def relationLc693 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (708319964070499435326649883584500753584183235012429328809859440041531789954 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 257, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 256, 5, 131⟩], residual := [((8343606595212015146865537674042581838210320453922329978308983926916042244758 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 909) * ((1 : F) + (1 : F) * rho 908) = (relationLc693 rho)

def relationLc694 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), runs := [⟨(708319964070499435326649883584500753584183235012429328809859440041531789954 : F), 256, 5, 131⟩, ⟨(7795711684436215655105315455863648848191172262150966190368738099854387651045 : F), 257, 5, 131⟩], residual := [((2357664860580816865395151332838189685037838907976348089818391478630425954683 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 910) * ((1 : F) + (-1 : F) * rho 908) = (relationLc694 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKeyDummy_e51d3ae895dfdd9467b9c73fdd305f3afed8e71a1350fb96e3119a3fba8860a5
