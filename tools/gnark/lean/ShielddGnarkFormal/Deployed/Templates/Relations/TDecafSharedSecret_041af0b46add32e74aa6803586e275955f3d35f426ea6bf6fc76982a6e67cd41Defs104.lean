import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41Defs103

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41

variable {F : Type} [CommRing F]

def relationRow5773 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5778) * ((1 : F) * rho 5778) = ((1 : F) * rho 5781)

def relationRow5774 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5782) * ((-1 : F) * rho 5780 + (1 : F) * rho 5781) = ((2 : F) * rho 5779)

def relationRow5775 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5783) * ((2 : F) + (1 : F) * rho 5780 + (-1 : F) * rho 5781) = ((1 : F) * rho 5780 + (1 : F) * rho 5781)

def relationRow5776 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5782) * ((1 : F) * rho 5783) = ((1 : F) * rho 5784)

def relationRow5777 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5782) * ((1 : F) * rho 5782) = ((1 : F) * rho 5785)

def relationRow5778 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5783) * ((1 : F) * rho 5783) = ((1 : F) * rho 5786)

def relationRow5779 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5787) * ((-1 : F) * rho 5785 + (1 : F) * rho 5786) = ((2 : F) * rho 5784)

def relationRow5780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * ((2 : F) + (1 : F) * rho 5785 + (-1 : F) * rho 5786) = ((1 : F) * rho 5785 + (1 : F) * rho 5786)

def relationRow5781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5789)

def relationRow5782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 141) * ((1 : F) * rho 4577 + (1 : F) * rho 5789) = ((1 : F) * rho 5790)

def relationRow5783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5791)

def relationRow5784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5792)

def relationRow5785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 141) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5792) = ((1 : F) * rho 5793)

def relationRow5786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 140) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5794)

def relationRow5787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5787 + (1 : F) * rho 5788) * ((1 : F) + (1 : F) * rho 5790 + (1 : F) * rho 5791 + (1 : F) * rho 5793 + (1 : F) * rho 5794) = ((1 : F) * rho 5795)

def relationRow5788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5787) * ((1 : F) + (1 : F) * rho 5793 + (1 : F) * rho 5794) = ((1 : F) * rho 5796)

def relationRow5789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5788) * ((1 : F) * rho 5790 + (1 : F) * rho 5791) = ((1 : F) * rho 5797)

def relationRow5790 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5796) * ((1 : F) * rho 5797) = ((1 : F) * rho 5798)

def relationRow5791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5799) * ((1 : F) + (1 : F) * rho 5798) = ((1 : F) * rho 5796 + (1 : F) * rho 5797)

def relationRow5792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5800) * ((1 : F) + (-1 : F) * rho 5798) = ((1 : F) * rho 5795 + (-1 : F) * rho 5796 + (-1 : F) * rho 5797)

def relationRow5793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5799) * ((1 : F) * rho 5800) = ((1 : F) * rho 5801)

def relationRow5794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5799) * ((1 : F) * rho 5799) = ((1 : F) * rho 5802)

def relationRow5795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5800) * ((1 : F) * rho 5800) = ((1 : F) * rho 5803)

def relationRow5796 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5804) * ((-1 : F) * rho 5802 + (1 : F) * rho 5803) = ((2 : F) * rho 5801)

def relationRow5797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5805) * ((2 : F) + (1 : F) * rho 5802 + (-1 : F) * rho 5803) = ((1 : F) * rho 5802 + (1 : F) * rho 5803)

def relationRow5798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5804) * ((1 : F) * rho 5805) = ((1 : F) * rho 5806)

def relationRow5799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5804) * ((1 : F) * rho 5804) = ((1 : F) * rho 5807)

def relationRow5800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5805) * ((1 : F) * rho 5805) = ((1 : F) * rho 5808)

def relationRow5801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5809) * ((-1 : F) * rho 5807 + (1 : F) * rho 5808) = ((2 : F) * rho 5806)

def relationRow5802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5810) * ((2 : F) + (1 : F) * rho 5807 + (-1 : F) * rho 5808) = ((1 : F) * rho 5807 + (1 : F) * rho 5808)

def relationRow5803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5811)

def relationRow5804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 139) * ((1 : F) * rho 4577 + (1 : F) * rho 5811) = ((1 : F) * rho 5812)

def relationRow5805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5813)

def relationRow5806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5814)

def relationRow5807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 139) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5814) = ((1 : F) * rho 5815)

def relationRow5808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 138) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5816)

def relationRow5809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5809 + (1 : F) * rho 5810) * ((1 : F) + (1 : F) * rho 5812 + (1 : F) * rho 5813 + (1 : F) * rho 5815 + (1 : F) * rho 5816) = ((1 : F) * rho 5817)

def relationRow5810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5809) * ((1 : F) + (1 : F) * rho 5815 + (1 : F) * rho 5816) = ((1 : F) * rho 5818)

def relationRow5811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5810) * ((1 : F) * rho 5812 + (1 : F) * rho 5813) = ((1 : F) * rho 5819)

def relationRow5812 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5818) * ((1 : F) * rho 5819) = ((1 : F) * rho 5820)

def relationRow5813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5821) * ((1 : F) + (1 : F) * rho 5820) = ((1 : F) * rho 5818 + (1 : F) * rho 5819)

def relationRow5814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5822) * ((1 : F) + (-1 : F) * rho 5820) = ((1 : F) * rho 5817 + (-1 : F) * rho 5818 + (-1 : F) * rho 5819)

def relationRow5815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5821) * ((1 : F) * rho 5822) = ((1 : F) * rho 5823)

def relationRow5816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5821) * ((1 : F) * rho 5821) = ((1 : F) * rho 5824)

def relationRow5817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5822) * ((1 : F) * rho 5822) = ((1 : F) * rho 5825)

def relationRow5818 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5826) * ((-1 : F) * rho 5824 + (1 : F) * rho 5825) = ((2 : F) * rho 5823)

def relationRow5819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5827) * ((2 : F) + (1 : F) * rho 5824 + (-1 : F) * rho 5825) = ((1 : F) * rho 5824 + (1 : F) * rho 5825)

def relationRow5820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5826) * ((1 : F) * rho 5827) = ((1 : F) * rho 5828)

def relationRow5821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5826) * ((1 : F) * rho 5826) = ((1 : F) * rho 5829)

def relationRow5822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5827) * ((1 : F) * rho 5827) = ((1 : F) * rho 5830)

def relationRow5823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831) * ((-1 : F) * rho 5829 + (1 : F) * rho 5830) = ((2 : F) * rho 5828)

def relationRow5824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5832) * ((2 : F) + (1 : F) * rho 5829 + (-1 : F) * rho 5830) = ((1 : F) * rho 5829 + (1 : F) * rho 5830)

def relationRow5825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5833)

def relationRow5826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 137) * ((1 : F) * rho 4577 + (1 : F) * rho 5833) = ((1 : F) * rho 5834)

def relationRow5827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5835)

def relationRow5828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5836)

def relationRow5829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 137) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5836) = ((1 : F) * rho 5837)

def relationRow5830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 136) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5838)

def relationRow5831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831 + (1 : F) * rho 5832) * ((1 : F) + (1 : F) * rho 5834 + (1 : F) * rho 5835 + (1 : F) * rho 5837 + (1 : F) * rho 5838) = ((1 : F) * rho 5839)

def relationRow5832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5831) * ((1 : F) + (1 : F) * rho 5837 + (1 : F) * rho 5838) = ((1 : F) * rho 5840)

def relationRow5833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5832) * ((1 : F) * rho 5834 + (1 : F) * rho 5835) = ((1 : F) * rho 5841)

def relationRow5834 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5840) * ((1 : F) * rho 5841) = ((1 : F) * rho 5842)

def relationRow5835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5843) * ((1 : F) + (1 : F) * rho 5842) = ((1 : F) * rho 5840 + (1 : F) * rho 5841)

def relationRow5836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * ((1 : F) + (-1 : F) * rho 5842) = ((1 : F) * rho 5839 + (-1 : F) * rho 5840 + (-1 : F) * rho 5841)

def relationRow5837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5843) * ((1 : F) * rho 5844) = ((1 : F) * rho 5845)

def relationRow5838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5843) * ((1 : F) * rho 5843) = ((1 : F) * rho 5846)

def relationRow5839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5844) * ((1 : F) * rho 5844) = ((1 : F) * rho 5847)

def relationRow5840 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5848) * ((-1 : F) * rho 5846 + (1 : F) * rho 5847) = ((2 : F) * rho 5845)

def relationRow5841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5849) * ((2 : F) + (1 : F) * rho 5846 + (-1 : F) * rho 5847) = ((1 : F) * rho 5846 + (1 : F) * rho 5847)

def relationRow5842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5848) * ((1 : F) * rho 5849) = ((1 : F) * rho 5850)

def relationRow5843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5848) * ((1 : F) * rho 5848) = ((1 : F) * rho 5851)

def relationRow5844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5849) * ((1 : F) * rho 5849) = ((1 : F) * rho 5852)

def relationRow5845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5853) * ((-1 : F) * rho 5851 + (1 : F) * rho 5852) = ((2 : F) * rho 5850)

def relationRow5846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5854) * ((2 : F) + (1 : F) * rho 5851 + (-1 : F) * rho 5852) = ((1 : F) * rho 5851 + (1 : F) * rho 5852)

def relationRow5847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5855)

def relationRow5848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 135) * ((1 : F) * rho 4577 + (1 : F) * rho 5855) = ((1 : F) * rho 5856)

def relationRow5849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5857)

def relationRow5850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5858)

def relationRow5851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 135) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5858) = ((1 : F) * rho 5859)

def relationRow5852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 134) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5860)

def relationRow5853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5853 + (1 : F) * rho 5854) * ((1 : F) + (1 : F) * rho 5856 + (1 : F) * rho 5857 + (1 : F) * rho 5859 + (1 : F) * rho 5860) = ((1 : F) * rho 5861)

def relationRow5854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5853) * ((1 : F) + (1 : F) * rho 5859 + (1 : F) * rho 5860) = ((1 : F) * rho 5862)

def relationRow5855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5854) * ((1 : F) * rho 5856 + (1 : F) * rho 5857) = ((1 : F) * rho 5863)

def relationRow5856 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 5862) * ((1 : F) * rho 5863) = ((1 : F) * rho 5864)

def relationRow5857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5865) * ((1 : F) + (1 : F) * rho 5864) = ((1 : F) * rho 5862 + (1 : F) * rho 5863)

def relationRow5858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5866) * ((1 : F) + (-1 : F) * rho 5864) = ((1 : F) * rho 5861 + (-1 : F) * rho 5862 + (-1 : F) * rho 5863)

def relationRow5859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5865) * ((1 : F) * rho 5866) = ((1 : F) * rho 5867)

def relationRow5860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5865) * ((1 : F) * rho 5865) = ((1 : F) * rho 5868)

def relationRow5861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5866) * ((1 : F) * rho 5866) = ((1 : F) * rho 5869)

def relationRow5862 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5870) * ((-1 : F) * rho 5868 + (1 : F) * rho 5869) = ((2 : F) * rho 5867)

def relationRow5863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5871) * ((2 : F) + (1 : F) * rho 5868 + (-1 : F) * rho 5869) = ((1 : F) * rho 5868 + (1 : F) * rho 5869)

def relationRow5864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5870) * ((1 : F) * rho 5871) = ((1 : F) * rho 5872)

def relationRow5865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5870) * ((1 : F) * rho 5870) = ((1 : F) * rho 5873)

def relationRow5866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5871) * ((1 : F) * rho 5871) = ((1 : F) * rho 5874)

def relationRow5867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5875) * ((-1 : F) * rho 5873 + (1 : F) * rho 5874) = ((2 : F) * rho 5872)

def relationRow5868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 5876) * ((2 : F) + (1 : F) * rho 5873 + (-1 : F) * rho 5874) = ((1 : F) * rho 5873 + (1 : F) * rho 5874)

def relationRow5869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * ((2212548262324760673607874921510927973879877636871439172985481863051142517853 : F) + (-1 : F) * rho 4572 + (-1 : F) * rho 4577 + (1 : F) * rho 4583) = ((1 : F) * rho 5877)

def relationRow5870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 133) * ((1 : F) * rho 4577 + (1 : F) * rho 5877) = ((1 : F) * rho 5878)

def relationRow5871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * ((6231913487103609750640950017270618557496021698282624654949751592866266721188 : F) + (1 : F) * rho 4572) = ((1 : F) * rho 5879)

def relationRow5872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * ((6269915804914941340248539306569041448191883943522231907716782445202481683651 : F) + (-1 : F) * rho 4573 + (-1 : F) * rho 4578 + (1 : F) * rho 4584) = ((1 : F) * rho 5880)

def relationRow5873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 133) * ((-1 : F) + (1 : F) * rho 4578 + (1 : F) * rho 5880) = ((1 : F) * rho 5881)

def relationRow5874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 132) * ((2174545944513429084000285632212505083184015391631831920218451010714927555390 : F) + (1 : F) * rho 4573) = ((1 : F) * rho 5882)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_041af0b46add32e74aa6803586e275955f3d35f426ea6bf6fc76982a6e67cd41
