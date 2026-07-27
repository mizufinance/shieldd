import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8fDefs24

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f

variable {F : Type} [CommRing F]

def relationLc647 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 115⟩], residual := [((1 : F), 829), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117) * (relationLc647 rho) = ((1 : F) * rho 831)

def relationLc648 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 115⟩], residual := [((1 : F), 830), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 117) * (relationLc648 rho) = ((1 : F) * rho 832)

def relationLc649 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(5058688986614166632160103004447210200422193522182557622358194344375224847289 : F), 256, 5, 116⟩], residual := [((7963949792456045923152496392139227737431459647154118764599999983306311745035 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc650 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 257, 5, 116⟩], residual := [((7165195893732640723561096527477694394750848606553482293832288734522661702959 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow832 (rho : Nat -> F) : Prop :=
    (relationLc649 rho) * (relationLc650 rho) = ((1 : F) * rho 833)

def relationLc651 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 257, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 256, 5, 116⟩], residual := [((1219531990061301360145556317833539548332284447149081861167086220716325870806 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 834) * ((1 : F) + (1 : F) * rho 833) = (relationLc651 rho)

def relationLc652 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), runs := [⟨(1000807978500512596306657126135250154376733979117759404414376430836879304434 : F), 256, 5, 116⟩, ⟨(2827676106474245834342178787193840037544341748216796123027103349313762318940 : F), 257, 5, 116⟩], residual := [((7015591765500128281549976814712607452749588499518551798977318918702616301457 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 835) * ((1 : F) + (-1 : F) * rho 833) = (relationLc652 rho)

def relationLc653 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 116⟩], residual := [((1 : F), 834), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118) * (relationLc653 rho) = ((1 : F) * rho 836)

def relationLc654 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 116⟩], residual := [((1 : F), 835), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 118) * (relationLc654 rho) = ((1 : F) * rho 837)

def relationLc655 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2126598159510820021254829562976983677454766925005966503301667636085195673024 : F), 256, 5, 117⟩], residual := [((1872614935516469004704786918895811090880792337026629918254087619510321198958 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc656 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 257, 5, 117⟩], residual := [((3238821507913782672875285228055567261226513652148746145790112441631656539344 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow837 (rho : Nat -> F) : Prop :=
    (relationLc655 rho) * (relationLc656 rho) = ((1 : F) * rho 838)

def relationLc657 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 257, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 256, 5, 117⟩], residual := [((2990663785052608062231974856445947324052871067411346261391574973919925622073 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 839) * ((1 : F) + (1 : F) * rho 838) = (relationLc657 rho)

def relationLc658 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), runs := [⟨(2220347505511572727384220613898333383183238585915327966518800422393436414609 : F), 256, 5, 117⟩, ⟨(4671573049140787090016895498929805110098173636533414969540905916078807028835 : F), 257, 5, 117⟩], residual := [((7172988848799631013344220002171542030874312246551264557875723659804867424013 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 840) * ((1 : F) + (-1 : F) * rho 838) = (relationLc658 rho)

def relationLc659 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 117⟩], residual := [((1 : F), 839), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119) * (relationLc659 rho) = ((1 : F) * rho 841)

def relationLc660 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 117⟩], residual := [((1 : F), 840), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 119) * (relationLc660 rho) = ((1 : F) * rho 842)

def relationLc661 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3367912820253366001216961945321133635042119018370843707781355082706130612868 : F), 256, 5, 118⟩], residual := [((1691399493890240984781845757328749935483621953555455768353456418081471202157 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc662 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 257, 5, 118⟩], residual := [((7148355880814354094015135364292496029766550086632406855091613901944786716636 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow842 (rho : Nat -> F) : Prop :=
    (relationLc661 rho) * (relationLc662 rho) = ((1 : F) * rho 843)

def relationLc663 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 257, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 256, 5, 118⟩], residual := [((2581471041664381557690144267234661444419732512422481387008920088455556254739 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 844) * ((1 : F) + (1 : F) * rho 843) = (relationLc663 rho)

def relationLc664 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), runs := [⟨(2442799860589911281946982784576947894968376621422175574069845981874629279962 : F), 256, 5, 118⟩, ⟨(5843195289349734376921966595166750540950238904167614777918708797732569162598 : F), 257, 5, 118⟩], residual := [((6619964280680378555219129946295155890115709779695071405095337864393796333509 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 845) * ((1 : F) + (-1 : F) * rho 843) = (relationLc664 rho)

def relationLc665 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 118⟩], residual := [((1 : F), 844), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 120) * (relationLc665 rho) = ((1 : F) * rho 846)

def relationLc666 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 118⟩], residual := [((1 : F), 845), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 120) * (relationLc666 rho) = ((1 : F) * rho 847)

def relationLc667 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(2017692046407117271774974818426083152699470227008509506383363299947661421324 : F), 256, 5, 119⟩], residual := [((7127797571030210124345768641519536854686265690026118826828166574414757839431 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc668 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 257, 5, 119⟩], residual := [((2430083545376283142446969529024895585487534495302192570610260792855878618882 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow847 (rho : Nat -> F) : Prop :=
    (relationLc667 rho) * (relationLc668 rho) = ((1 : F) * rho 848)

def relationLc669 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 256, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 257, 5, 119⟩], residual := [((2024335906235100794940851464668528072503027697141826069434585215898074252427 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 849) * ((1 : F) + (1 : F) * rho 848) = (relationLc669 rho)

def relationLc670 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), runs := [⟨(5292083344493317553914200789120123689853451476886346023100887221235221234997 : F), 257, 5, 119⟩, ⟨(8235182039777681632574425548791168984093363629789555229274299810296150947985 : F), 256, 5, 119⟩], residual := [((768630642295931472468064850845617638711953339610270448700590788007616351667 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 850) * ((1 : F) + (-1 : F) * rho 848) = (relationLc670 rho)

def relationLc671 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 119⟩], residual := [((1 : F), 849), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121) * (relationLc671 rho) = ((1 : F) * rho 851)

def relationLc672 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 119⟩], residual := [((1 : F), 850), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 121) * (relationLc672 rho) = ((1 : F) * rho 852)

def relationLc673 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(3986668860635778338789526978466339028865773963962702698271938929340967177465 : F), 256, 5, 120⟩], residual := [((3946958459661543686929747477451679320619934793290430451765914523801407412779 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc674 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 257, 5, 120⟩], residual := [((2271613138381064962232656709377804353171427636280369025590495735246060493453 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow852 (rho : Nat -> F) : Prop :=
    (relationLc673 rho) * (relationLc674 rho) = ((1 : F) * rho 853)

def relationLc675 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 257, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 256, 5, 120⟩], residual := [((531476524202245620749674852580898755777662210590964413094009628489110957369 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 854) * ((1 : F) + (1 : F) * rho 853) = (relationLc675 rho)

def relationLc676 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (518441606257823338902622357051655891206026862286482790753488953417431869050 : F), runs := [⟨(4076629403287037118543777894905296194563685872420255886902192452988113504041 : F), 256, 5, 120⟩, ⟨(518441606257823338902622357051655891206026862286482790753488953417431869050 : F), 257, 5, 120⟩], residual := [((6521749992220261155171628057732085595952514169941349494307767142773096886607 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 855) * ((1 : F) + (-1 : F) * rho 853) = (relationLc676 rho)

def relationLc677 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 256, 5, 120⟩], residual := [((1 : F), 854), ((3485015960081549698896340450925717616123387027206439040100255077045280003414 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 122) * (relationLc677 rho) = ((1 : F) * rho 856)

def relationLc678 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 257, 5, 120⟩], residual := [((1 : F), 855), ((2383989799346518857134133381121756526619364323399900825637692983170344295754 : F), 1)] } : Shieldd.GnarkFormal.StructuredLC F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafRandomizedVerificationKey_1f338b78a9a876d2dd6a4cda369f5148a285eb7681cf090ea08361ca1a2f0c8f
