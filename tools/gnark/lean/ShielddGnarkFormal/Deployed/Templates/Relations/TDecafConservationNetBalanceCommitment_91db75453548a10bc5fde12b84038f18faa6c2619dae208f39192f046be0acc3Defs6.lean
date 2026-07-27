import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3Defs5

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3

variable {F : Type} [CommRing F]

def relationLc4Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 549 + (8589934592 : F) * rho 550 + (17179869184 : F) * rho 551 + (34359738368 : F) * rho 552 + (68719476736 : F) * rho 553 + (137438953472 : F) * rho 554 + (274877906944 : F) * rho 555 + (549755813888 : F) * rho 556 + (1099511627776 : F) * rho 557 + (2199023255552 : F) * rho 558 + (4398046511104 : F) * rho 559 + (8796093022208 : F) * rho 560 + (17592186044416 : F) * rho 561 + (35184372088832 : F) * rho 562 + (70368744177664 : F) * rho 563 + (140737488355328 : F) * rho 564 + (281474976710656 : F) * rho 565 + (562949953421312 : F) * rho 566 + (1125899906842624 : F) * rho 567 + (2251799813685248 : F) * rho 568 + (4503599627370496 : F) * rho 569 + (9007199254740992 : F) * rho 570 + (18014398509481984 : F) * rho 571 + (36028797018963968 : F) * rho 572 + (72057594037927936 : F) * rho 573 + (144115188075855872 : F) * rho 574 + (288230376151711744 : F) * rho 575 + (576460752303423488 : F) * rho 576 + (1152921504606846976 : F) * rho 577 + (2305843009213693952 : F) * rho 578 + (4611686018427387904 : F) * rho 579 + (9223372036854775808 : F) * rho 580

def relationLc4Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 581 + (36893488147419103232 : F) * rho 582 + (73786976294838206464 : F) * rho 583 + (147573952589676412928 : F) * rho 584 + (295147905179352825856 : F) * rho 585 + (590295810358705651712 : F) * rho 586 + (1180591620717411303424 : F) * rho 587 + (2361183241434822606848 : F) * rho 588 + (4722366482869645213696 : F) * rho 589 + (9444732965739290427392 : F) * rho 590 + (18889465931478580854784 : F) * rho 591 + (37778931862957161709568 : F) * rho 592 + (75557863725914323419136 : F) * rho 593 + (151115727451828646838272 : F) * rho 594 + (302231454903657293676544 : F) * rho 595 + (604462909807314587353088 : F) * rho 596 + (1208925819614629174706176 : F) * rho 597 + (2417851639229258349412352 : F) * rho 598 + (4835703278458516698824704 : F) * rho 599 + (9671406556917033397649408 : F) * rho 600 + (19342813113834066795298816 : F) * rho 601 + (38685626227668133590597632 : F) * rho 602 + (77371252455336267181195264 : F) * rho 603 + (154742504910672534362390528 : F) * rho 604 + (309485009821345068724781056 : F) * rho 605 + (618970019642690137449562112 : F) * rho 606 + (1237940039285380274899124224 : F) * rho 607 + (2475880078570760549798248448 : F) * rho 608 + (4951760157141521099596496896 : F) * rho 609 + (9903520314283042199192993792 : F) * rho 610 + (19807040628566084398385987584 : F) * rho 611 + (39614081257132168796771975168 : F) * rho 612

def relationLc4Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 613 + (158456325028528675187087900672 : F) * rho 614 + (316912650057057350374175801344 : F) * rho 615 + (633825300114114700748351602688 : F) * rho 616 + (1267650600228229401496703205376 : F) * rho 617 + (2535301200456458802993406410752 : F) * rho 618 + (5070602400912917605986812821504 : F) * rho 619 + (10141204801825835211973625643008 : F) * rho 620 + (20282409603651670423947251286016 : F) * rho 621 + (40564819207303340847894502572032 : F) * rho 622 + (81129638414606681695789005144064 : F) * rho 623 + (162259276829213363391578010288128 : F) * rho 624 + (324518553658426726783156020576256 : F) * rho 625 + (649037107316853453566312041152512 : F) * rho 626 + (1298074214633706907132624082305024 : F) * rho 627 + (2596148429267413814265248164610048 : F) * rho 628 + (5192296858534827628530496329220096 : F) * rho 629 + (10384593717069655257060992658440192 : F) * rho 630 + (20769187434139310514121985316880384 : F) * rho 631 + (41538374868278621028243970633760768 : F) * rho 632 + (83076749736557242056487941267521536 : F) * rho 633 + (166153499473114484112975882535043072 : F) * rho 634 + (332306998946228968225951765070086144 : F) * rho 635 + (664613997892457936451903530140172288 : F) * rho 636 + (1329227995784915872903807060280344576 : F) * rho 637 + (2658455991569831745807614120560689152 : F) * rho 638 + (5316911983139663491615228241121378304 : F) * rho 639 + (10633823966279326983230456482242756608 : F) * rho 640 + (21267647932558653966460912964485513216 : F) * rho 641 + (42535295865117307932921825928971026432 : F) * rho 642 + (85070591730234615865843651857942052864 : F) * rho 643 + (170141183460469231731687303715884105728 : F) * rho 644

def relationLc4 (rho : Nat -> F) : F :=
    relationLc4Part0 rho +
    relationLc4Part1 rho +
    relationLc4Part2 rho +
    relationLc4Part3 rho

def relationRow644 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc4 rho) = ((1 : F) * rho 645)

def relationRow645 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 646) * ((1 : F) + (-1 : F) * rho 646) = ((0 : F))

def relationRow646 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 647) * ((1 : F) + (-1 : F) * rho 647) = ((0 : F))

def relationRow647 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 648) * ((1 : F) + (-1 : F) * rho 648) = ((0 : F))

def relationRow648 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 649) * ((1 : F) + (-1 : F) * rho 649) = ((0 : F))

def relationRow649 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 650) * ((1 : F) + (-1 : F) * rho 650) = ((0 : F))

def relationRow650 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 651) * ((1 : F) + (-1 : F) * rho 651) = ((0 : F))

def relationRow651 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 652) * ((1 : F) + (-1 : F) * rho 652) = ((0 : F))

def relationRow652 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 653) * ((1 : F) + (-1 : F) * rho 653) = ((0 : F))

def relationRow653 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 654) * ((1 : F) + (-1 : F) * rho 654) = ((0 : F))

def relationRow654 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 655) * ((1 : F) + (-1 : F) * rho 655) = ((0 : F))

def relationRow655 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 656) * ((1 : F) + (-1 : F) * rho 656) = ((0 : F))

def relationRow656 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 657) * ((1 : F) + (-1 : F) * rho 657) = ((0 : F))

def relationRow657 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 658) * ((1 : F) + (-1 : F) * rho 658) = ((0 : F))

def relationRow658 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 659) * ((1 : F) + (-1 : F) * rho 659) = ((0 : F))

def relationRow659 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 660) * ((1 : F) + (-1 : F) * rho 660) = ((0 : F))

def relationRow660 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 661) * ((1 : F) + (-1 : F) * rho 661) = ((0 : F))

def relationRow661 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 662) * ((1 : F) + (-1 : F) * rho 662) = ((0 : F))

def relationRow662 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 663) * ((1 : F) + (-1 : F) * rho 663) = ((0 : F))

def relationRow663 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 664) * ((1 : F) + (-1 : F) * rho 664) = ((0 : F))

def relationRow664 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 665) * ((1 : F) + (-1 : F) * rho 665) = ((0 : F))

def relationRow665 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 666) * ((1 : F) + (-1 : F) * rho 666) = ((0 : F))

def relationRow666 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 667) * ((1 : F) + (-1 : F) * rho 667) = ((0 : F))

def relationRow667 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 668) * ((1 : F) + (-1 : F) * rho 668) = ((0 : F))

def relationRow668 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 669) * ((1 : F) + (-1 : F) * rho 669) = ((0 : F))

def relationRow669 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 670) * ((1 : F) + (-1 : F) * rho 670) = ((0 : F))

def relationRow670 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 671) * ((1 : F) + (-1 : F) * rho 671) = ((0 : F))

def relationRow671 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 672) * ((1 : F) + (-1 : F) * rho 672) = ((0 : F))

def relationRow672 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 673) * ((1 : F) + (-1 : F) * rho 673) = ((0 : F))

def relationRow673 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 674) * ((1 : F) + (-1 : F) * rho 674) = ((0 : F))

def relationRow674 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 675) * ((1 : F) + (-1 : F) * rho 675) = ((0 : F))

def relationRow675 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 676) * ((1 : F) + (-1 : F) * rho 676) = ((0 : F))

def relationRow676 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 677) * ((1 : F) + (-1 : F) * rho 677) = ((0 : F))

def relationRow677 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 678) * ((1 : F) + (-1 : F) * rho 678) = ((0 : F))

def relationRow678 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 679) * ((1 : F) + (-1 : F) * rho 679) = ((0 : F))

def relationRow679 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 680) * ((1 : F) + (-1 : F) * rho 680) = ((0 : F))

def relationRow680 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 681) * ((1 : F) + (-1 : F) * rho 681) = ((0 : F))

def relationRow681 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 682) * ((1 : F) + (-1 : F) * rho 682) = ((0 : F))

def relationRow682 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 683) * ((1 : F) + (-1 : F) * rho 683) = ((0 : F))

def relationRow683 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 684) * ((1 : F) + (-1 : F) * rho 684) = ((0 : F))

def relationRow684 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 685) * ((1 : F) + (-1 : F) * rho 685) = ((0 : F))

def relationRow685 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 686) * ((1 : F) + (-1 : F) * rho 686) = ((0 : F))

def relationRow686 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 687) * ((1 : F) + (-1 : F) * rho 687) = ((0 : F))

def relationRow687 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 688) * ((1 : F) + (-1 : F) * rho 688) = ((0 : F))

def relationRow688 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 689) * ((1 : F) + (-1 : F) * rho 689) = ((0 : F))

def relationRow689 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 690) * ((1 : F) + (-1 : F) * rho 690) = ((0 : F))

def relationRow690 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 691) * ((1 : F) + (-1 : F) * rho 691) = ((0 : F))

def relationRow691 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 692) * ((1 : F) + (-1 : F) * rho 692) = ((0 : F))

def relationRow692 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 693) * ((1 : F) + (-1 : F) * rho 693) = ((0 : F))

def relationRow693 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 694) * ((1 : F) + (-1 : F) * rho 694) = ((0 : F))

def relationRow694 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 695) * ((1 : F) + (-1 : F) * rho 695) = ((0 : F))

def relationRow695 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 696) * ((1 : F) + (-1 : F) * rho 696) = ((0 : F))

def relationRow696 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 697) * ((1 : F) + (-1 : F) * rho 697) = ((0 : F))

def relationRow697 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 698) * ((1 : F) + (-1 : F) * rho 698) = ((0 : F))

def relationRow698 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 699) * ((1 : F) + (-1 : F) * rho 699) = ((0 : F))

def relationRow699 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 700) * ((1 : F) + (-1 : F) * rho 700) = ((0 : F))

def relationRow700 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 701) * ((1 : F) + (-1 : F) * rho 701) = ((0 : F))

def relationRow701 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 702) * ((1 : F) + (-1 : F) * rho 702) = ((0 : F))

def relationRow702 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 703) * ((1 : F) + (-1 : F) * rho 703) = ((0 : F))

def relationRow703 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 704) * ((1 : F) + (-1 : F) * rho 704) = ((0 : F))

def relationRow704 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 705) * ((1 : F) + (-1 : F) * rho 705) = ((0 : F))

def relationRow705 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 706) * ((1 : F) + (-1 : F) * rho 706) = ((0 : F))

def relationRow706 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 707) * ((1 : F) + (-1 : F) * rho 707) = ((0 : F))

def relationRow707 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 708) * ((1 : F) + (-1 : F) * rho 708) = ((0 : F))

def relationRow708 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 709) * ((1 : F) + (-1 : F) * rho 709) = ((0 : F))

def relationRow709 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 710) * ((1 : F) + (-1 : F) * rho 710) = ((0 : F))

def relationRow710 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 711) * ((1 : F) + (-1 : F) * rho 711) = ((0 : F))

def relationRow711 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 712) * ((1 : F) + (-1 : F) * rho 712) = ((0 : F))

def relationRow712 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 713) * ((1 : F) + (-1 : F) * rho 713) = ((0 : F))

def relationRow713 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 714) * ((1 : F) + (-1 : F) * rho 714) = ((0 : F))

def relationRow714 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 715) * ((1 : F) + (-1 : F) * rho 715) = ((0 : F))

def relationRow715 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 716) * ((1 : F) + (-1 : F) * rho 716) = ((0 : F))

def relationRow716 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 717) * ((1 : F) + (-1 : F) * rho 717) = ((0 : F))

def relationRow717 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 718) * ((1 : F) + (-1 : F) * rho 718) = ((0 : F))

def relationRow718 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 719) * ((1 : F) + (-1 : F) * rho 719) = ((0 : F))

def relationRow719 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 720) * ((1 : F) + (-1 : F) * rho 720) = ((0 : F))

def relationRow720 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 721) * ((1 : F) + (-1 : F) * rho 721) = ((0 : F))

def relationRow721 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 722) * ((1 : F) + (-1 : F) * rho 722) = ((0 : F))

def relationRow722 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 723) * ((1 : F) + (-1 : F) * rho 723) = ((0 : F))

def relationRow723 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 724) * ((1 : F) + (-1 : F) * rho 724) = ((0 : F))

def relationRow724 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 725) * ((1 : F) + (-1 : F) * rho 725) = ((0 : F))

def relationRow725 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 726) * ((1 : F) + (-1 : F) * rho 726) = ((0 : F))

def relationRow726 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 727) * ((1 : F) + (-1 : F) * rho 727) = ((0 : F))

def relationRow727 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 728) * ((1 : F) + (-1 : F) * rho 728) = ((0 : F))

def relationRow728 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 729) * ((1 : F) + (-1 : F) * rho 729) = ((0 : F))

def relationRow729 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 730) * ((1 : F) + (-1 : F) * rho 730) = ((0 : F))

def relationRow730 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * ((1 : F) + (-1 : F) * rho 731) = ((0 : F))

def relationRow731 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 732) * ((1 : F) + (-1 : F) * rho 732) = ((0 : F))

def relationRow732 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 733) * ((1 : F) + (-1 : F) * rho 733) = ((0 : F))

def relationRow733 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 734) * ((1 : F) + (-1 : F) * rho 734) = ((0 : F))

def relationRow734 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 735) * ((1 : F) + (-1 : F) * rho 735) = ((0 : F))

def relationRow735 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 736) * ((1 : F) + (-1 : F) * rho 736) = ((0 : F))

def relationRow736 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 737) * ((1 : F) + (-1 : F) * rho 737) = ((0 : F))

def relationRow737 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 738) * ((1 : F) + (-1 : F) * rho 738) = ((0 : F))

def relationRow738 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 739) * ((1 : F) + (-1 : F) * rho 739) = ((0 : F))

def relationRow739 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 740) * ((1 : F) + (-1 : F) * rho 740) = ((0 : F))

def relationRow740 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * ((1 : F) + (-1 : F) * rho 741) = ((0 : F))

def relationRow741 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 742) * ((1 : F) + (-1 : F) * rho 742) = ((0 : F))

def relationRow742 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 743) * ((1 : F) + (-1 : F) * rho 743) = ((0 : F))

def relationRow743 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 744) * ((1 : F) + (-1 : F) * rho 744) = ((0 : F))

def relationRow744 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 745) * ((1 : F) + (-1 : F) * rho 745) = ((0 : F))

def relationRow745 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * ((1 : F) + (-1 : F) * rho 746) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafConservationNetBalanceCommitment_91db75453548a10bc5fde12b84038f18faa6c2619dae208f39192f046be0acc3
