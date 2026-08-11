import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1Defs26

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1

variable {F : Type} [CommRing F]

def relationRow2780 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2783) * ((-1 : F) * rho 2781 + (1 : F) * rho 2782) = ((2 : F) * rho 2780)

def relationRow2781 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((2 : F) + (1 : F) * rho 2781 + (-1 : F) * rho 2782) = ((1 : F) * rho 2781 + (1 : F) * rho 2782)

def relationRow2782 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2783) * ((1 : F) * rho 2784) = ((1 : F) * rho 2785)

def relationRow2783 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2783) * ((1 : F) * rho 2783) = ((1 : F) * rho 2786)

def relationRow2784 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2784) * ((1 : F) * rho 2784) = ((1 : F) * rho 2787)

def relationRow2785 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788) * ((-1 : F) * rho 2786 + (1 : F) * rho 2787) = ((2 : F) * rho 2785)

def relationRow2786 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2789) * ((2 : F) + (1 : F) * rho 2786 + (-1 : F) * rho 2787) = ((1 : F) * rho 2786 + (1 : F) * rho 2787)

def relationRow2787 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2790)

def relationRow2788 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * ((1 : F) * rho 258 + (1 : F) * rho 2790) = ((1 : F) * rho 2791)

def relationRow2789 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2792)

def relationRow2790 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2793)

def relationRow2791 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 21) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2793) = ((1 : F) * rho 2794)

def relationRow2792 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 20) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2795)

def relationRow2793 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788 + (1 : F) * rho 2789) * ((1 : F) + (1 : F) * rho 2791 + (1 : F) * rho 2792 + (1 : F) * rho 2794 + (1 : F) * rho 2795) = ((1 : F) * rho 2796)

def relationRow2794 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2788) * ((1 : F) + (1 : F) * rho 2794 + (1 : F) * rho 2795) = ((1 : F) * rho 2797)

def relationRow2795 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2789) * ((1 : F) * rho 2791 + (1 : F) * rho 2792) = ((1 : F) * rho 2798)

def relationRow2796 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2797) * ((1 : F) * rho 2798) = ((1 : F) * rho 2799)

def relationRow2797 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2800) * ((1 : F) + (1 : F) * rho 2799) = ((1 : F) * rho 2797 + (1 : F) * rho 2798)

def relationRow2798 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2801) * ((1 : F) + (-1 : F) * rho 2799) = ((1 : F) * rho 2796 + (-1 : F) * rho 2797 + (-1 : F) * rho 2798)

def relationRow2799 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2800) * ((1 : F) * rho 2801) = ((1 : F) * rho 2802)

def relationRow2800 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2800) * ((1 : F) * rho 2800) = ((1 : F) * rho 2803)

def relationRow2801 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2801) * ((1 : F) * rho 2801) = ((1 : F) * rho 2804)

def relationRow2802 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2805) * ((-1 : F) * rho 2803 + (1 : F) * rho 2804) = ((2 : F) * rho 2802)

def relationRow2803 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2806) * ((2 : F) + (1 : F) * rho 2803 + (-1 : F) * rho 2804) = ((1 : F) * rho 2803 + (1 : F) * rho 2804)

def relationRow2804 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2805) * ((1 : F) * rho 2806) = ((1 : F) * rho 2807)

def relationRow2805 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2805) * ((1 : F) * rho 2805) = ((1 : F) * rho 2808)

def relationRow2806 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2806) * ((1 : F) * rho 2806) = ((1 : F) * rho 2809)

def relationRow2807 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2810) * ((-1 : F) * rho 2808 + (1 : F) * rho 2809) = ((2 : F) * rho 2807)

def relationRow2808 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2811) * ((2 : F) + (1 : F) * rho 2808 + (-1 : F) * rho 2809) = ((1 : F) * rho 2808 + (1 : F) * rho 2809)

def relationRow2809 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2812)

def relationRow2810 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * ((1 : F) * rho 258 + (1 : F) * rho 2812) = ((1 : F) * rho 2813)

def relationRow2811 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2814)

def relationRow2812 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2815)

def relationRow2813 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 19) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2815) = ((1 : F) * rho 2816)

def relationRow2814 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 18) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2817)

def relationRow2815 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2810 + (1 : F) * rho 2811) * ((1 : F) + (1 : F) * rho 2813 + (1 : F) * rho 2814 + (1 : F) * rho 2816 + (1 : F) * rho 2817) = ((1 : F) * rho 2818)

def relationRow2816 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2810) * ((1 : F) + (1 : F) * rho 2816 + (1 : F) * rho 2817) = ((1 : F) * rho 2819)

def relationRow2817 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2811) * ((1 : F) * rho 2813 + (1 : F) * rho 2814) = ((1 : F) * rho 2820)

def relationRow2818 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2819) * ((1 : F) * rho 2820) = ((1 : F) * rho 2821)

def relationRow2819 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2822) * ((1 : F) + (1 : F) * rho 2821) = ((1 : F) * rho 2819 + (1 : F) * rho 2820)

def relationRow2820 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2823) * ((1 : F) + (-1 : F) * rho 2821) = ((1 : F) * rho 2818 + (-1 : F) * rho 2819 + (-1 : F) * rho 2820)

def relationRow2821 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2822) * ((1 : F) * rho 2823) = ((1 : F) * rho 2824)

def relationRow2822 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2822) * ((1 : F) * rho 2822) = ((1 : F) * rho 2825)

def relationRow2823 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2823) * ((1 : F) * rho 2823) = ((1 : F) * rho 2826)

def relationRow2824 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2827) * ((-1 : F) * rho 2825 + (1 : F) * rho 2826) = ((2 : F) * rho 2824)

def relationRow2825 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2828) * ((2 : F) + (1 : F) * rho 2825 + (-1 : F) * rho 2826) = ((1 : F) * rho 2825 + (1 : F) * rho 2826)

def relationRow2826 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2827) * ((1 : F) * rho 2828) = ((1 : F) * rho 2829)

def relationRow2827 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2827) * ((1 : F) * rho 2827) = ((1 : F) * rho 2830)

def relationRow2828 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2828) * ((1 : F) * rho 2828) = ((1 : F) * rho 2831)

def relationRow2829 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2832) * ((-1 : F) * rho 2830 + (1 : F) * rho 2831) = ((2 : F) * rho 2829)

def relationRow2830 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2833) * ((2 : F) + (1 : F) * rho 2830 + (-1 : F) * rho 2831) = ((1 : F) * rho 2830 + (1 : F) * rho 2831)

def relationRow2831 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2834)

def relationRow2832 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((1 : F) * rho 258 + (1 : F) * rho 2834) = ((1 : F) * rho 2835)

def relationRow2833 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2836)

def relationRow2834 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2837)

def relationRow2835 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 17) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2837) = ((1 : F) * rho 2838)

def relationRow2836 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 16) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2839)

def relationRow2837 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2832 + (1 : F) * rho 2833) * ((1 : F) + (1 : F) * rho 2835 + (1 : F) * rho 2836 + (1 : F) * rho 2838 + (1 : F) * rho 2839) = ((1 : F) * rho 2840)

def relationRow2838 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2832) * ((1 : F) + (1 : F) * rho 2838 + (1 : F) * rho 2839) = ((1 : F) * rho 2841)

def relationRow2839 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2833) * ((1 : F) * rho 2835 + (1 : F) * rho 2836) = ((1 : F) * rho 2842)

def relationRow2840 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2841) * ((1 : F) * rho 2842) = ((1 : F) * rho 2843)

def relationRow2841 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2844) * ((1 : F) + (1 : F) * rho 2843) = ((1 : F) * rho 2841 + (1 : F) * rho 2842)

def relationRow2842 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2845) * ((1 : F) + (-1 : F) * rho 2843) = ((1 : F) * rho 2840 + (-1 : F) * rho 2841 + (-1 : F) * rho 2842)

def relationRow2843 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2844) * ((1 : F) * rho 2845) = ((1 : F) * rho 2846)

def relationRow2844 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2844) * ((1 : F) * rho 2844) = ((1 : F) * rho 2847)

def relationRow2845 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2845) * ((1 : F) * rho 2845) = ((1 : F) * rho 2848)

def relationRow2846 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2849) * ((-1 : F) * rho 2847 + (1 : F) * rho 2848) = ((2 : F) * rho 2846)

def relationRow2847 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2850) * ((2 : F) + (1 : F) * rho 2847 + (-1 : F) * rho 2848) = ((1 : F) * rho 2847 + (1 : F) * rho 2848)

def relationRow2848 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2849) * ((1 : F) * rho 2850) = ((1 : F) * rho 2851)

def relationRow2849 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2849) * ((1 : F) * rho 2849) = ((1 : F) * rho 2852)

def relationRow2850 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2850) * ((1 : F) * rho 2850) = ((1 : F) * rho 2853)

def relationRow2851 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2854) * ((-1 : F) * rho 2852 + (1 : F) * rho 2853) = ((2 : F) * rho 2851)

def relationRow2852 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855) * ((2 : F) + (1 : F) * rho 2852 + (-1 : F) * rho 2853) = ((1 : F) * rho 2852 + (1 : F) * rho 2853)

def relationRow2853 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2856)

def relationRow2854 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * ((1 : F) * rho 258 + (1 : F) * rho 2856) = ((1 : F) * rho 2857)

def relationRow2855 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2858)

def relationRow2856 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2859)

def relationRow2857 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 15) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2859) = ((1 : F) * rho 2860)

def relationRow2858 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 14) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2861)

def relationRow2859 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2854 + (1 : F) * rho 2855) * ((1 : F) + (1 : F) * rho 2857 + (1 : F) * rho 2858 + (1 : F) * rho 2860 + (1 : F) * rho 2861) = ((1 : F) * rho 2862)

def relationRow2860 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2854) * ((1 : F) + (1 : F) * rho 2860 + (1 : F) * rho 2861) = ((1 : F) * rho 2863)

def relationRow2861 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2855) * ((1 : F) * rho 2857 + (1 : F) * rho 2858) = ((1 : F) * rho 2864)

def relationRow2862 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 2863) * ((1 : F) * rho 2864) = ((1 : F) * rho 2865)

def relationRow2863 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2866) * ((1 : F) + (1 : F) * rho 2865) = ((1 : F) * rho 2863 + (1 : F) * rho 2864)

def relationRow2864 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2867) * ((1 : F) + (-1 : F) * rho 2865) = ((1 : F) * rho 2862 + (-1 : F) * rho 2863 + (-1 : F) * rho 2864)

def relationRow2865 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2866) * ((1 : F) * rho 2867) = ((1 : F) * rho 2868)

def relationRow2866 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2866) * ((1 : F) * rho 2866) = ((1 : F) * rho 2869)

def relationRow2867 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2867) * ((1 : F) * rho 2867) = ((1 : F) * rho 2870)

def relationRow2868 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2871) * ((-1 : F) * rho 2869 + (1 : F) * rho 2870) = ((2 : F) * rho 2868)

def relationRow2869 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2872) * ((2 : F) + (1 : F) * rho 2869 + (-1 : F) * rho 2870) = ((1 : F) * rho 2869 + (1 : F) * rho 2870)

def relationRow2870 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2871) * ((1 : F) * rho 2872) = ((1 : F) * rho 2873)

def relationRow2871 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2871) * ((1 : F) * rho 2871) = ((1 : F) * rho 2874)

def relationRow2872 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2872) * ((1 : F) * rho 2872) = ((1 : F) * rho 2875)

def relationRow2873 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2876) * ((-1 : F) * rho 2874 + (1 : F) * rho 2875) = ((2 : F) * rho 2873)

def relationRow2874 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2877) * ((2 : F) + (1 : F) * rho 2874 + (-1 : F) * rho 2875) = ((1 : F) * rho 2874 + (1 : F) * rho 2875)

def relationRow2875 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12) * ((4617491044499661354199399458855367018016837978387850223760889670113802729481 : F) + (-1 : F) * rho 253 + (-1 : F) * rho 258 + (1 : F) * rho 264) = ((1 : F) * rho 2878)

def relationRow2876 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 13) * ((1 : F) * rho 258 + (1 : F) * rho 2878) = ((1 : F) * rho 2879)

def relationRow2877 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12) * ((3826970704928709070049425479926179513359061356766213604174343785803606509560 : F) + (1 : F) * rho 253) = ((1 : F) * rho 2880)

def relationRow2878 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12) * ((4009406879518373341044590760267486013467361742873740276013817087117129386581 : F) + (-1 : F) * rho 254 + (-1 : F) * rho 259 + (1 : F) * rho 265) = ((1 : F) * rho 2881)

def relationRow2879 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 13) * ((-1 : F) + (1 : F) * rho 259 + (1 : F) * rho 2881) = ((1 : F) * rho 2882)

def relationRow2880 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 12) * ((4435054869909997083204234178514060517908537592280323551921416368800279852460 : F) + (1 : F) * rho 254) = ((1 : F) * rho 2883)

def relationRow2881 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2876 + (1 : F) * rho 2877) * ((1 : F) + (1 : F) * rho 2879 + (1 : F) * rho 2880 + (1 : F) * rho 2882 + (1 : F) * rho 2883) = ((1 : F) * rho 2884)

def relationRow2882 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2876) * ((1 : F) + (1 : F) * rho 2882 + (1 : F) * rho 2883) = ((1 : F) * rho 2885)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafAck_e3974880eca25a8b5cfa17d94f28498f1dc082a93526c584816508afe0778ca1
