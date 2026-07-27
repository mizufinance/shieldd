import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs23

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc616 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), runs := [⟨(5013280838734082258864536620020876856738515857218859590790551016956583521435 : F), 256, 5, 110⟩, ⟨(6232224474637335731108536850087215108279169729053098072780713552388339693216 : F), 257, 5, 110⟩], residual := [((2975589111667990585410595177746922024926505695906607372137355479945806617660 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 805) * ((1 : F) + (-1 : F) * rho 803) = (relationLc616 rho)

def relationLc617 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 110⟩], residual := [((1 : F), 804), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112) * (relationLc617 rho) = ((1 : F) * rho 806)

def relationLc618 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 110⟩], residual := [((1 : F), 805), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 112) * (relationLc618 rho) = ((1 : F) * rho 807)

def relationLc619 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5473513454910718385916379960564670405200796488660792199065102502565012311891 : F), 256, 5, 111⟩], residual := [((1290682852539617687465308244549146097528654648960453990058143318687428377628 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc620 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 257, 5, 111⟩], residual := [((4560315553206082171239657153972697214142086945910781475321943315739135166866 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow807 (rho : Nat -> F) : Prop :=
    (relationLc619 rho) * (relationLc620 rho) = ((1 : F) * rho 808)

def relationLc621 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 256, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 257, 5, 111⟩], residual := [((8096738855383979623858733239971772192059346566440027154344825958921594655699 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 809) * ((1 : F) + (1 : F) * rho 808) = (relationLc621 rho)

def relationLc622 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), runs := [⟨(2436477887191996477294486230267888678991595206027093805471914413309046163362 : F), 257, 5, 111⟩, ⟨(4211737791003456215988561120811297185727381853372271991257172356128917154219 : F), 256, 5, 111⟩], residual := [((1278272657742027434275494546315655160302569862150581501574320349530171965278 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 810) * ((1 : F) + (-1 : F) * rho 808) = (relationLc622 rho)

def relationLc623 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 111⟩], residual := [((1 : F), 809), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113) * (relationLc623 rho) = ((1 : F) * rho 811)

def relationLc624 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 111⟩], residual := [((1 : F), 810), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 113) * (relationLc624 rho) = ((1 : F) * rho 812)

def relationLc625 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6494117757873971508758146756812052405656400213213392704742067070974595246434 : F), 256, 5, 112⟩], residual := [((2505911588988824428755289285606906412415086920291455482382843872981685118529 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc626 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 257, 5, 112⟩], residual := [((8174319716053133462684811146498463582214521739980076836226226865024436960466 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow812 (rho : Nat -> F) : Prop :=
    (relationLc625 rho) * (relationLc626 rho) = ((1 : F) * rho 813)

def relationLc627 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 257, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 256, 5, 112⟩], residual := [((630759189698223515442565790495223866302195616623397982828407515918807747936 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 814) * ((1 : F) + (1 : F) * rho 813) = (relationLc627 rho)

def relationLc628 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), runs := [⟨(3211543191507721442380920952251537121684563966279963155303907443022683903872 : F), 256, 5, 112⟩, ⟨(5424942042915892947550969390265810103699073522148989479940117501340863462094 : F), 257, 5, 112⟩], residual := [((701540351068285311102719158292584549968653608918762726070947020463010759916 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 815) * ((1 : F) + (-1 : F) * rho 813) = (relationLc628 rho)

def relationLc629 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 112⟩], residual := [((1 : F), 814), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114) * (relationLc629 rho) = ((1 : F) * rho 816)

def relationLc630 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 112⟩], residual := [((1 : F), 815), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 114) * (relationLc630 rho) = ((1 : F) * rho 817)

def relationLc631 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(7232751867622564713554023932001496092539510221064441963614171743180987607316 : F), 256, 5, 113⟩], residual := [((6205455160059383968858176403410616736538441215431948543782337451811884962308 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc632 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 257, 5, 113⟩], residual := [((6679184061030008664832695535977507076813478068613182374938323825246753435358 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow817 (rho : Nat -> F) : Prop :=
    (relationLc631 rho) * (relationLc632 rho) = ((1 : F) * rho 818)

def relationLc633 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 257, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 256, 5, 113⟩], residual := [((4400311061237393344667788891276305040114969158891141946255315496025702771970 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 819) * ((1 : F) + (1 : F) * rho 818) = (relationLc633 rho)

def relationLc634 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), runs := [⟨(1947902921501713494103716120380880084569071691708274654879772882964119421042 : F), 256, 5, 113⟩, ⟨(6861946999326330217087113678815596386656403998242018230955536932328534677330 : F), 257, 5, 113⟩], residual := [((2087357790150026556797310710018782693490980500605381290006250342379967365568 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 820) * ((1 : F) + (-1 : F) * rho 818) = (relationLc634 rho)

def relationLc635 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 113⟩], residual := [((1 : F), 819), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115) * (relationLc635 rho) = ((1 : F) * rho 821)

def relationLc636 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 113⟩], residual := [((1 : F), 820), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 115) * (relationLc636 rho) = ((1 : F) * rho 822)

def relationLc637 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(947717101564819091542378284888608902327013081715595233096761950147907007800 : F), 256, 5, 114⟩], residual := [((8069732616500346997440461803908541944572596023366705295276766397849410487234 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc638 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 257, 5, 114⟩], residual := [((6309456410749148524989712616328028351341432761943017574693998999570185170928 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow822 (rho : Nat -> F) : Prop :=
    (relationLc637 rho) * (relationLc638 rho) = ((1 : F) * rho 823)

def relationLc639 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 256, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 257, 5, 114⟩], residual := [((3477740263346345723536264080703870906498470388615359840092525991327085681388 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 824) * ((1 : F) + (1 : F) * rho 823) = (relationLc639 rho)

def relationLc640 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), runs := [⟨(4816536018327258212536334904933960040537239843612104459041874878019147310783 : F), 257, 5, 114⟩, ⟨(7656315330328664586430890033205107891880486608577188553281730603396254529588 : F), 256, 5, 114⟩], residual := [((7299614783841155772686659764745278288658731154961458264984903098491417870829 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 825) * ((1 : F) + (-1 : F) * rho 823) = (relationLc640 rho)

def relationLc641 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 114⟩], residual := [((1 : F), 824), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 116) * (relationLc641 rho) = ((1 : F) * rho 826)

def relationLc642 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 114⟩], residual := [((1 : F), 825), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 116) * (relationLc642 rho) = ((1 : F) * rho 827)

def relationLc643 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(1854067315940902596236180059194743311052989737966486961600317653694884857500 : F), 256, 5, 115⟩], residual := [((4354532474989950694177441537286028288137849845366388990794655904030294839452 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc644 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 257, 5, 115⟩], residual := [((3780104624363262583803818749820133136665135515081578486963505739174187955054 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow827 (rho : Nat -> F) : Prop :=
    (relationLc643 rho) * (relationLc644 rho) = ((1 : F) * rho 828)

def relationLc645 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 257, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 256, 5, 115⟩], residual := [((2604744192706740240899291157072782901173207090634542908489510827212188949825 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 829) * ((1 : F) + (1 : F) * rho 828) = (relationLc645 rho)

def relationLc646 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), runs := [⟨(1761474383487328414379451883122601276536990799918597689697615342065633936486 : F), 256, 5, 115⟩, ⟨(3044645121629737270639922720421151577616487045918815622503498692865856850769 : F), 257, 5, 115⟩], residual := [((7841490394353810698294471924772146887196817649440922315850551546178009358557 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 830) * ((1 : F) + (-1 : F) * rho 828) = (relationLc646 rho)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
