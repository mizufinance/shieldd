import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs18

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow902 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 730) * ((1 : F) + (-1 : F) * rho 730) = ((0 : F))

def relationRow903 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 731) * ((1 : F) + (-1 : F) * rho 731) = ((0 : F))

def relationLc4Part0 (rho : Nat -> F) : F :=
    (1 : F) * rho 604 + (2 : F) * rho 605 + (4 : F) * rho 606 + (8 : F) * rho 607 + (16 : F) * rho 608 + (32 : F) * rho 609 + (64 : F) * rho 610 + (128 : F) * rho 611 + (256 : F) * rho 612 + (512 : F) * rho 613 + (1024 : F) * rho 614 + (2048 : F) * rho 615 + (4096 : F) * rho 616 + (8192 : F) * rho 617 + (16384 : F) * rho 618 + (32768 : F) * rho 619 + (65536 : F) * rho 620 + (131072 : F) * rho 621 + (262144 : F) * rho 622 + (524288 : F) * rho 623 + (1048576 : F) * rho 624 + (2097152 : F) * rho 625 + (4194304 : F) * rho 626 + (8388608 : F) * rho 627 + (16777216 : F) * rho 628 + (33554432 : F) * rho 629 + (67108864 : F) * rho 630 + (134217728 : F) * rho 631 + (268435456 : F) * rho 632 + (536870912 : F) * rho 633 + (1073741824 : F) * rho 634 + (2147483648 : F) * rho 635

def relationLc4Part1 (rho : Nat -> F) : F :=
    (4294967296 : F) * rho 636 + (8589934592 : F) * rho 637 + (17179869184 : F) * rho 638 + (34359738368 : F) * rho 639 + (68719476736 : F) * rho 640 + (137438953472 : F) * rho 641 + (274877906944 : F) * rho 642 + (549755813888 : F) * rho 643 + (1099511627776 : F) * rho 644 + (2199023255552 : F) * rho 645 + (4398046511104 : F) * rho 646 + (8796093022208 : F) * rho 647 + (17592186044416 : F) * rho 648 + (35184372088832 : F) * rho 649 + (70368744177664 : F) * rho 650 + (140737488355328 : F) * rho 651 + (281474976710656 : F) * rho 652 + (562949953421312 : F) * rho 653 + (1125899906842624 : F) * rho 654 + (2251799813685248 : F) * rho 655 + (4503599627370496 : F) * rho 656 + (9007199254740992 : F) * rho 657 + (18014398509481984 : F) * rho 658 + (36028797018963968 : F) * rho 659 + (72057594037927936 : F) * rho 660 + (144115188075855872 : F) * rho 661 + (288230376151711744 : F) * rho 662 + (576460752303423488 : F) * rho 663 + (1152921504606846976 : F) * rho 664 + (2305843009213693952 : F) * rho 665 + (4611686018427387904 : F) * rho 666 + (9223372036854775808 : F) * rho 667

def relationLc4Part2 (rho : Nat -> F) : F :=
    (18446744073709551616 : F) * rho 668 + (36893488147419103232 : F) * rho 669 + (73786976294838206464 : F) * rho 670 + (147573952589676412928 : F) * rho 671 + (295147905179352825856 : F) * rho 672 + (590295810358705651712 : F) * rho 673 + (1180591620717411303424 : F) * rho 674 + (2361183241434822606848 : F) * rho 675 + (4722366482869645213696 : F) * rho 676 + (9444732965739290427392 : F) * rho 677 + (18889465931478580854784 : F) * rho 678 + (37778931862957161709568 : F) * rho 679 + (75557863725914323419136 : F) * rho 680 + (151115727451828646838272 : F) * rho 681 + (302231454903657293676544 : F) * rho 682 + (604462909807314587353088 : F) * rho 683 + (1208925819614629174706176 : F) * rho 684 + (2417851639229258349412352 : F) * rho 685 + (4835703278458516698824704 : F) * rho 686 + (9671406556917033397649408 : F) * rho 687 + (19342813113834066795298816 : F) * rho 688 + (38685626227668133590597632 : F) * rho 689 + (77371252455336267181195264 : F) * rho 690 + (154742504910672534362390528 : F) * rho 691 + (309485009821345068724781056 : F) * rho 692 + (618970019642690137449562112 : F) * rho 693 + (1237940039285380274899124224 : F) * rho 694 + (2475880078570760549798248448 : F) * rho 695 + (4951760157141521099596496896 : F) * rho 696 + (9903520314283042199192993792 : F) * rho 697 + (19807040628566084398385987584 : F) * rho 698 + (39614081257132168796771975168 : F) * rho 699

def relationLc4Part3 (rho : Nat -> F) : F :=
    (79228162514264337593543950336 : F) * rho 700 + (158456325028528675187087900672 : F) * rho 701 + (316912650057057350374175801344 : F) * rho 702 + (633825300114114700748351602688 : F) * rho 703 + (1267650600228229401496703205376 : F) * rho 704 + (2535301200456458802993406410752 : F) * rho 705 + (5070602400912917605986812821504 : F) * rho 706 + (10141204801825835211973625643008 : F) * rho 707 + (20282409603651670423947251286016 : F) * rho 708 + (40564819207303340847894502572032 : F) * rho 709 + (81129638414606681695789005144064 : F) * rho 710 + (162259276829213363391578010288128 : F) * rho 711 + (324518553658426726783156020576256 : F) * rho 712 + (649037107316853453566312041152512 : F) * rho 713 + (1298074214633706907132624082305024 : F) * rho 714 + (2596148429267413814265248164610048 : F) * rho 715 + (5192296858534827628530496329220096 : F) * rho 716 + (10384593717069655257060992658440192 : F) * rho 717 + (20769187434139310514121985316880384 : F) * rho 718 + (41538374868278621028243970633760768 : F) * rho 719 + (83076749736557242056487941267521536 : F) * rho 720 + (166153499473114484112975882535043072 : F) * rho 721 + (332306998946228968225951765070086144 : F) * rho 722 + (664613997892457936451903530140172288 : F) * rho 723 + (1329227995784915872903807060280344576 : F) * rho 724 + (2658455991569831745807614120560689152 : F) * rho 725 + (5316911983139663491615228241121378304 : F) * rho 726 + (10633823966279326983230456482242756608 : F) * rho 727 + (21267647932558653966460912964485513216 : F) * rho 728 + (42535295865117307932921825928971026432 : F) * rho 729 + (85070591730234615865843651857942052864 : F) * rho 730 + (170141183460469231731687303715884105728 : F) * rho 731

def relationLc4 (rho : Nat -> F) : F :=
    relationLc4Part0 rho +
    relationLc4Part1 rho +
    relationLc4Part2 rho +
    relationLc4Part3 rho

def relationRow904 (rho : Nat -> F) : Prop :=
    ((1 : F)) * (relationLc4 rho) = ((1 : F) * rho 732)

def relationRow905 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 733) * ((1 : F) + (-1 : F) * rho 733) = ((0 : F))

def relationRow906 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 734) * ((1 : F) + (-1 : F) * rho 734) = ((0 : F))

def relationRow907 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 735) * ((1 : F) + (-1 : F) * rho 735) = ((0 : F))

def relationRow908 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 736) * ((1 : F) + (-1 : F) * rho 736) = ((0 : F))

def relationRow909 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 737) * ((1 : F) + (-1 : F) * rho 737) = ((0 : F))

def relationRow910 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 738) * ((1 : F) + (-1 : F) * rho 738) = ((0 : F))

def relationRow911 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 739) * ((1 : F) + (-1 : F) * rho 739) = ((0 : F))

def relationRow912 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 740) * ((1 : F) + (-1 : F) * rho 740) = ((0 : F))

def relationRow913 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 741) * ((1 : F) + (-1 : F) * rho 741) = ((0 : F))

def relationRow914 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 742) * ((1 : F) + (-1 : F) * rho 742) = ((0 : F))

def relationRow915 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 743) * ((1 : F) + (-1 : F) * rho 743) = ((0 : F))

def relationRow916 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 744) * ((1 : F) + (-1 : F) * rho 744) = ((0 : F))

def relationRow917 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 745) * ((1 : F) + (-1 : F) * rho 745) = ((0 : F))

def relationRow918 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 746) * ((1 : F) + (-1 : F) * rho 746) = ((0 : F))

def relationRow919 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 747) * ((1 : F) + (-1 : F) * rho 747) = ((0 : F))

def relationRow920 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 748) * ((1 : F) + (-1 : F) * rho 748) = ((0 : F))

def relationRow921 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 749) * ((1 : F) + (-1 : F) * rho 749) = ((0 : F))

def relationRow922 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 750) * ((1 : F) + (-1 : F) * rho 750) = ((0 : F))

def relationRow923 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 751) * ((1 : F) + (-1 : F) * rho 751) = ((0 : F))

def relationRow924 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 752) * ((1 : F) + (-1 : F) * rho 752) = ((0 : F))

def relationRow925 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 753) * ((1 : F) + (-1 : F) * rho 753) = ((0 : F))

def relationRow926 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 754) * ((1 : F) + (-1 : F) * rho 754) = ((0 : F))

def relationRow927 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 755) * ((1 : F) + (-1 : F) * rho 755) = ((0 : F))

def relationRow928 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 756) * ((1 : F) + (-1 : F) * rho 756) = ((0 : F))

def relationRow929 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 757) * ((1 : F) + (-1 : F) * rho 757) = ((0 : F))

def relationRow930 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 758) * ((1 : F) + (-1 : F) * rho 758) = ((0 : F))

def relationRow931 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 759) * ((1 : F) + (-1 : F) * rho 759) = ((0 : F))

def relationRow932 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 760) * ((1 : F) + (-1 : F) * rho 760) = ((0 : F))

def relationRow933 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 761) * ((1 : F) + (-1 : F) * rho 761) = ((0 : F))

def relationRow934 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 762) * ((1 : F) + (-1 : F) * rho 762) = ((0 : F))

def relationRow935 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 763) * ((1 : F) + (-1 : F) * rho 763) = ((0 : F))

def relationRow936 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 764) * ((1 : F) + (-1 : F) * rho 764) = ((0 : F))

def relationRow937 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 765) * ((1 : F) + (-1 : F) * rho 765) = ((0 : F))

def relationRow938 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 766) * ((1 : F) + (-1 : F) * rho 766) = ((0 : F))

def relationRow939 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 767) * ((1 : F) + (-1 : F) * rho 767) = ((0 : F))

def relationRow940 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 768) * ((1 : F) + (-1 : F) * rho 768) = ((0 : F))

def relationRow941 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 769) * ((1 : F) + (-1 : F) * rho 769) = ((0 : F))

def relationRow942 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 770) * ((1 : F) + (-1 : F) * rho 770) = ((0 : F))

def relationRow943 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 771) * ((1 : F) + (-1 : F) * rho 771) = ((0 : F))

def relationRow944 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 772) * ((1 : F) + (-1 : F) * rho 772) = ((0 : F))

def relationRow945 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 773) * ((1 : F) + (-1 : F) * rho 773) = ((0 : F))

def relationRow946 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 774) * ((1 : F) + (-1 : F) * rho 774) = ((0 : F))

def relationRow947 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 775) * ((1 : F) + (-1 : F) * rho 775) = ((0 : F))

def relationRow948 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 776) * ((1 : F) + (-1 : F) * rho 776) = ((0 : F))

def relationRow949 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 777) * ((1 : F) + (-1 : F) * rho 777) = ((0 : F))

def relationRow950 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 778) * ((1 : F) + (-1 : F) * rho 778) = ((0 : F))

def relationRow951 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 779) * ((1 : F) + (-1 : F) * rho 779) = ((0 : F))

def relationRow952 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 780) * ((1 : F) + (-1 : F) * rho 780) = ((0 : F))

def relationRow953 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 781) * ((1 : F) + (-1 : F) * rho 781) = ((0 : F))

def relationRow954 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 782) * ((1 : F) + (-1 : F) * rho 782) = ((0 : F))

def relationRow955 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 783) * ((1 : F) + (-1 : F) * rho 783) = ((0 : F))

def relationRow956 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 784) * ((1 : F) + (-1 : F) * rho 784) = ((0 : F))

def relationRow957 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 785) * ((1 : F) + (-1 : F) * rho 785) = ((0 : F))

def relationRow958 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 786) * ((1 : F) + (-1 : F) * rho 786) = ((0 : F))

def relationRow959 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 787) * ((1 : F) + (-1 : F) * rho 787) = ((0 : F))

def relationRow960 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 788) * ((1 : F) + (-1 : F) * rho 788) = ((0 : F))

def relationRow961 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 789) * ((1 : F) + (-1 : F) * rho 789) = ((0 : F))

def relationRow962 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 790) * ((1 : F) + (-1 : F) * rho 790) = ((0 : F))

def relationRow963 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 791) * ((1 : F) + (-1 : F) * rho 791) = ((0 : F))

def relationRow964 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 792) * ((1 : F) + (-1 : F) * rho 792) = ((0 : F))

def relationRow965 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 793) * ((1 : F) + (-1 : F) * rho 793) = ((0 : F))

def relationRow966 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 794) * ((1 : F) + (-1 : F) * rho 794) = ((0 : F))

def relationRow967 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 795) * ((1 : F) + (-1 : F) * rho 795) = ((0 : F))

def relationRow968 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 796) * ((1 : F) + (-1 : F) * rho 796) = ((0 : F))

def relationRow969 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 797) * ((1 : F) + (-1 : F) * rho 797) = ((0 : F))

def relationRow970 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 798) * ((1 : F) + (-1 : F) * rho 798) = ((0 : F))

def relationRow971 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 799) * ((1 : F) + (-1 : F) * rho 799) = ((0 : F))

def relationRow972 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 800) * ((1 : F) + (-1 : F) * rho 800) = ((0 : F))

def relationRow973 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 801) * ((1 : F) + (-1 : F) * rho 801) = ((0 : F))

def relationRow974 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 802) * ((1 : F) + (-1 : F) * rho 802) = ((0 : F))

def relationRow975 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 803) * ((1 : F) + (-1 : F) * rho 803) = ((0 : F))

def relationRow976 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 804) * ((1 : F) + (-1 : F) * rho 804) = ((0 : F))

def relationRow977 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 805) * ((1 : F) + (-1 : F) * rho 805) = ((0 : F))

def relationRow978 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 806) * ((1 : F) + (-1 : F) * rho 806) = ((0 : F))

def relationRow979 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 807) * ((1 : F) + (-1 : F) * rho 807) = ((0 : F))

def relationRow980 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 808) * ((1 : F) + (-1 : F) * rho 808) = ((0 : F))

def relationRow981 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 809) * ((1 : F) + (-1 : F) * rho 809) = ((0 : F))

def relationRow982 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 810) * ((1 : F) + (-1 : F) * rho 810) = ((0 : F))

def relationRow983 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 811) * ((1 : F) + (-1 : F) * rho 811) = ((0 : F))

def relationRow984 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 812) * ((1 : F) + (-1 : F) * rho 812) = ((0 : F))

def relationRow985 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 813) * ((1 : F) + (-1 : F) * rho 813) = ((0 : F))

def relationRow986 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 814) * ((1 : F) + (-1 : F) * rho 814) = ((0 : F))

def relationRow987 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 815) * ((1 : F) + (-1 : F) * rho 815) = ((0 : F))

def relationRow988 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 816) * ((1 : F) + (-1 : F) * rho 816) = ((0 : F))

def relationRow989 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 817) * ((1 : F) + (-1 : F) * rho 817) = ((0 : F))

def relationRow990 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 818) * ((1 : F) + (-1 : F) * rho 818) = ((0 : F))

def relationRow991 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 819) * ((1 : F) + (-1 : F) * rho 819) = ((0 : F))

def relationRow992 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 820) * ((1 : F) + (-1 : F) * rho 820) = ((0 : F))

def relationRow993 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 821) * ((1 : F) + (-1 : F) * rho 821) = ((0 : F))

def relationRow994 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 822) * ((1 : F) + (-1 : F) * rho 822) = ((0 : F))

def relationRow995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 823) * ((1 : F) + (-1 : F) * rho 823) = ((0 : F))

def relationRow996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 824) * ((1 : F) + (-1 : F) * rho 824) = ((0 : F))

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
