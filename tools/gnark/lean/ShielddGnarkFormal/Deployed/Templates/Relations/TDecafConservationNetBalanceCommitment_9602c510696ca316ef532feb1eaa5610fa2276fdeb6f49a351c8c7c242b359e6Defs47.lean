import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6Defs46

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6

variable {F : Type} [CommRing F]

def relationRow1515 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc917 rho) = ((1 : F) * rho 1515)

def relationRow1516 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1516) * ((1 : F) + (1 : F) * rho 1514) = ((1 : F) * rho 1515)

def relationLc918 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (6288183900793302191821062410437796760843823372895593251525587144482179537772 : F), runs := [⟨(2212445378218556935440102286828139011899327475705466871406427459826634654483 : F), 643, 5, 149⟩, ⟨(2212445378218556935440102286828139011899327475705466871406427459826634654483 : F), 1391, 8, 16⟩, ⟨(6288183900793302191821062410437796760843823372895593251525587144482179537772 : F), 644, 5, 149⟩, ⟨(6288183900793302191821062410437796760843823372895593251525587144482179537772 : F), 1392, 8, 16⟩], residual := [((1942700028067629535825151309843898596003084649165902827559546844240399367070 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1517 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc918 rho) = ((1 : F) * rho 1517)

def relationRow1518 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1518) * ((1 : F) + (-1 : F) * rho 1514) = ((8388294219844881721236485180297157290008647821707067532938452307526004285827 : F) * rho 1513 + (1 : F) * rho 1517)

def relationLc919 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 16⟩], residual := [((1 : F), 1516), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1519 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 554) * (relationLc919 rho) = ((1 : F) * rho 1519)

def relationLc920 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 16⟩], residual := [((1 : F), 1518), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1520 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 554) * (relationLc920 rho) = ((1 : F) * rho 1520)

def relationLc921 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 17⟩, ⟨(1 : F), 1392, 8, 17⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1521 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc921 rho) = ((1 : F) * rho 1521)

def relationLc922 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6120117429237088608232024587575782415377834241323717585188328635752475069196 : F), 643, 5, 149⟩, ⟨(6120117429237088608232024587575782415377834241323717585188328635752475069196 : F), 1391, 8, 17⟩], residual := [((6720019885177399554579686267055452133421878157488823619755914786864870808834 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc923 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), runs := [⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 644, 5, 149⟩, ⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 1392, 8, 17⟩], residual := [((5073870204141983728015716995378373060831107315064608854149081957566256688877 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1522 (rho : Nat -> F) : Prop :=
    (relationLc922 rho) * (relationLc923 rho) = ((1 : F) * rho 1522)

def relationLc924 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), runs := [⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 644, 5, 149⟩, ⟨(1422471966303374964272597731160731388119507421775473697730591412640640313527 : F), 1392, 8, 17⟩, ⟨(8016018521363910988060116889796183279665700505835162102706223981049640769083 : F), 643, 5, 149⟩, ⟨(8016018521363910988060116889796183279665700505835162102706223981049640769083 : F), 1391, 8, 17⟩], residual := [((7480012913309006556353541932028219293574137869976884165517521774473187114691 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1523 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc924 rho) = ((1 : F) * rho 1523)

def relationRow1524 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1524) * ((1 : F) + (1 : F) * rho 1522) = ((1 : F) * rho 1523)

def relationLc925 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (7021989783124995459976227207620815143256391913378590130204642043276768925514 : F), runs := [⟨(428443228064459436188708048985363251710198829318901725229009474867768469958 : F), 643, 5, 149⟩, ⟨(428443228064459436188708048985363251710198829318901725229009474867768469958 : F), 1391, 8, 17⟩, ⟨(7021989783124995459976227207620815143256391913378590130204642043276768925514 : F), 644, 5, 149⟩, ⟨(7021989783124995459976227207620815143256391913378590130204642043276768925514 : F), 1392, 8, 17⟩], residual := [((964448836119363867895283006753327237801761465177179662417711681444222124350 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1525 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc925 rho) = ((1 : F) * rho 1525)

def relationRow1526 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1526) * ((1 : F) + (-1 : F) * rho 1522) = ((994028738238915528083889682175368136409308592456571972501581937772871843569 : F) * rho 1521 + (1 : F) * rho 1525)

def relationLc926 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 17⟩], residual := [((1 : F), 1524), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1527 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 555) * (relationLc926 rho) = ((1 : F) * rho 1527)

def relationLc927 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 17⟩], residual := [((1 : F), 1526), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1528 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 555) * (relationLc927 rho) = ((1 : F) * rho 1528)

def relationLc928 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 18⟩, ⟨(1 : F), 1392, 8, 18⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1529 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc928 rho) = ((1 : F) * rho 1529)

def relationLc929 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(4754661941807859398930757476704741251574731252121823202040719202873494889690 : F), 643, 5, 149⟩, ⟨(4754661941807859398930757476704741251574731252121823202040719202873494889690 : F), 1391, 8, 18⟩], residual := [((8163040791851246590117760473641216585125047082690728565069379386233620581167 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc930 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), runs := [⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 644, 5, 149⟩, ⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 1392, 8, 18⟩], residual := [((816642964898674276423258287913745654035415865305908106814261201544169097258 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1530 (rho : Nat -> F) : Prop :=
    (relationLc929 rho) * (relationLc930 rho) = ((1 : F) * rho 1530)

def relationLc931 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), runs := [⟨(241965697581147870203353095733835730867230080792906756836964844889695693296 : F), 643, 5, 149⟩, ⟨(241965697581147870203353095733835730867230080792906756836964844889695693296 : F), 1391, 8, 18⟩, ⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 644, 5, 149⟩, ⟨(2836503453781894255067546199096983725022406545406429752779674453186544369879 : F), 1392, 8, 18⟩], residual := [((6569182143768587950461639836919797435440695567224014701527218698468480393282 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1531 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc931 rho) = ((1 : F) * rho 1531)

def relationRow1532 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1532) * ((1 : F) + (1 : F) * rho 1530) = ((1 : F) * rho 1531)

def relationLc932 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (5607958295646476169181278739684562806353492789747634075155559002730864869162 : F), runs := [⟨(5607958295646476169181278739684562806353492789747634075155559002730864869162 : F), 644, 5, 149⟩, ⟨(5607958295646476169181278739684562806353492789747634075155559002730864869162 : F), 1392, 8, 18⟩, ⟨(8202496051847222554045471843047710800508669254361157071098268611027713545745 : F), 643, 5, 149⟩, ⟨(8202496051847222554045471843047710800508669254361157071098268611027713545745 : F), 1391, 8, 18⟩], residual := [((1875279605659782473787185101861749095935203767930049126408014757448928845759 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1533 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc932 rho) = ((1 : F) * rho 1533)

def relationRow1534 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1534) * ((1 : F) + (-1 : F) * rho 1530) = ((3078469151363042125270899294830819455889636626199336509616639298076240063175 : F) * rho 1529 + (1 : F) * rho 1533)

def relationLc933 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 18⟩], residual := [((1 : F), 1532), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1535 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 556) * (relationLc933 rho) = ((1 : F) * rho 1535)

def relationLc934 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 18⟩], residual := [((1 : F), 1534), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1536 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 556) * (relationLc934 rho) = ((1 : F) * rho 1536)

def relationLc935 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (1 : F), runs := [⟨(1 : F), 643, 5, 149⟩, ⟨(1 : F), 644, 5, 149⟩, ⟨(1 : F), 1391, 8, 19⟩, ⟨(1 : F), 1392, 8, 19⟩], residual := [((554556695789719013642702519139470527066643240247620509116776151269737032555 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1537 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc935 rho) = ((1 : F) * rho 1537)

def relationLc936 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(6408885745045801555320000085256881994286845799584425351912643065446343548180 : F), 643, 5, 149⟩, ⟨(6408885745045801555320000085256881994286845799584425351912643065446343548180 : F), 1391, 8, 19⟩], residual := [((2836310663492769406639713848302725402464337115246140804629532361090041645307 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationLc937 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3688844968080895629712784332341446792801256746385234990750523093971521074510 : F), runs := [⟨(3688844968080895629712784332341446792801256746385234990750523093971521074510 : F), 644, 5, 149⟩, ⟨(3688844968080895629712784332341446792801256746385234990750523093971521074510 : F), 1392, 8, 19⟩], residual := [((647523183386879337064708574349774122058580462968921747535777808928057165661 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1538 (rho : Nat -> F) : Prop :=
    (relationLc936 rho) * (relationLc937 rho) = ((1 : F) * rho 1538)

def relationLc938 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (3688844968080895629712784332341446792801256746385234990750523093971521074510 : F), runs := [⟨(3549298525577506742776259135186706200036512115892118974843337934003521571629 : F), 643, 5, 149⟩, ⟨(3549298525577506742776259135186706200036512115892118974843337934003521571629 : F), 1391, 8, 19⟩, ⟨(3688844968080895629712784332341446792801256746385234990750523093971521074510 : F), 644, 5, 149⟩, ⟨(3688844968080895629712784332341446792801256746385234990750523093971521074510 : F), 1392, 8, 19⟩], residual := [((276693291956730215244631115558101509258007714057884227406431063719210629035 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1539 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc938 rho) = ((1 : F) * rho 1539)

def relationRow1540 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1540) * ((1 : F) + (1 : F) * rho 1538) = ((1 : F) * rho 1539)

def relationLc939 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (4755616781347474794536040606440099738574642588768828837184710361945888164531 : F), runs := [⟨(4755616781347474794536040606440099738574642588768828837184710361945888164531 : F), 644, 5, 149⟩, ⟨(4755616781347474794536040606440099738574642588768828837184710361945888164531 : F), 1392, 8, 19⟩, ⟨(4895163223850863681472565803594840331339387219261944853091895521913887667412 : F), 643, 5, 149⟩, ⟨(4895163223850863681472565803594840331339387219261944853091895521913887667412 : F), 1391, 8, 19⟩], residual := [((8167768457471640209004193823223445022117891621096179600528802392198198610006 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1541 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc939 rho) = ((1 : F) * rho 1541)

def relationRow1542 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 1542) * ((1 : F) + (-1 : F) * rho 1538) = ((7238143493658402372489043467528152992837768862277353965593861027975042646139 : F) * rho 1537 + (1 : F) * rho 1541)

def relationLc940 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (0 : F), runs := [⟨(-1 : F), 643, 5, 149⟩, ⟨(-1 : F), 1391, 8, 19⟩], residual := [((1 : F), 1540), ((3782780146720179662705280233507301717115018348286297112601203304873130087822 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1543 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 557) * (relationLc940 rho) = ((1 : F) * rho 1543)

def relationLc941 (rho : Nat -> F) : F :=
    Shieldd.GnarkFormal.StructuredLC.eval rho (({ const := (-1 : F), runs := [⟨(-1 : F), 644, 5, 149⟩, ⟨(-1 : F), 1392, 8, 19⟩], residual := [((1 : F), 1542), ((4107124906918471747900842186134774287194237746620146206217253999774542118664 : F), 388)] } : Shieldd.GnarkFormal.StructuredLC F))

def relationRow1544 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 557) * (relationLc941 rho) = ((1 : F) * rho 1544)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_9602c510696ca316ef532feb1eaa5610fa2276fdeb6f49a351c8c7c242b359e6
