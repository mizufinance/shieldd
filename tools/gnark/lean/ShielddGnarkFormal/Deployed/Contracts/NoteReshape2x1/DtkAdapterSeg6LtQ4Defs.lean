import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.DtkAdapterSeg6Base
import ShielddGnarkFormal.Deployed.Dtk.LtConst
import ShielddGnarkFormal.DtkBridge
import ShielddGnarkFormal.CompressDeployedGadgets

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

def seg6Q4IlAtom0 (rho : Nat -> Seg6.F) : Seg6.F := rho 2868
def seg6Q4IlAtom1 (rho : Nat -> Seg6.F) : Seg6.F := rho 2870 + (-1 : Seg6.F) * rho 2871
def seg6Q4IlAtom2 (rho : Nat -> Seg6.F) : Seg6.F := rho 2873 + (-1 : Seg6.F) * rho 2874
def seg6Q4IlAtom3 (rho : Nat -> Seg6.F) : Seg6.F := rho 2876 + (-1 : Seg6.F) * rho 2877
def seg6Q4IlAtom4 (rho : Nat -> Seg6.F) : Seg6.F := rho 2880 + (-1 : Seg6.F) * rho 2881
def seg6Q4IlAtom5 (rho : Nat -> Seg6.F) : Seg6.F := rho 2884 + (-1 : Seg6.F) * rho 2885
def seg6Q4IlAtom6 (rho : Nat -> Seg6.F) : Seg6.F := rho 2887 + (-1 : Seg6.F) * rho 2888
def seg6Q4IlAtom7 (rho : Nat -> Seg6.F) : Seg6.F := rho 2891 + (-1 : Seg6.F) * rho 2892
def seg6Q4IlAtom8 (rho : Nat -> Seg6.F) : Seg6.F := rho 2894 + (-1 : Seg6.F) * rho 2895
def seg6Q4IlAtom9 (rho : Nat -> Seg6.F) : Seg6.F := rho 2897 + (-1 : Seg6.F) * rho 2898
def seg6Q4IlAtom10 (rho : Nat -> Seg6.F) : Seg6.F := rho 2900 + (-1 : Seg6.F) * rho 2901
def seg6Q4IlAtom11 (rho : Nat -> Seg6.F) : Seg6.F := rho 2903 + (-1 : Seg6.F) * rho 2904
def seg6Q4IlAtom12 (rho : Nat -> Seg6.F) : Seg6.F := rho 2907 + (-1 : Seg6.F) * rho 2908
def seg6Q4IlAtom13 (rho : Nat -> Seg6.F) : Seg6.F := rho 2915 + (-1 : Seg6.F) * rho 2916
def seg6Q4IlAtom14 (rho : Nat -> Seg6.F) : Seg6.F := rho 2918 + (-1 : Seg6.F) * rho 2919
def seg6Q4IlAtom15 (rho : Nat -> Seg6.F) : Seg6.F := rho 2921 + (-1 : Seg6.F) * rho 2922
def seg6Q4IlAtom16 (rho : Nat -> Seg6.F) : Seg6.F := rho 2924
def seg6Q4IlAtom17 (rho : Nat -> Seg6.F) : Seg6.F := rho 2925
def seg6Q4IlAtom18 (rho : Nat -> Seg6.F) : Seg6.F := rho 2927 + (-1 : Seg6.F) * rho 2928
def seg6Q4IlAtom19 (rho : Nat -> Seg6.F) : Seg6.F := rho 2930 + (-1 : Seg6.F) * rho 2931
def seg6Q4IlAtom20 (rho : Nat -> Seg6.F) : Seg6.F := rho 2933 + (-1 : Seg6.F) * rho 2934
def seg6Q4IlAtom21 (rho : Nat -> Seg6.F) : Seg6.F := rho 2937 + (-1 : Seg6.F) * rho 2938
def seg6Q4IlAtom22 (rho : Nat -> Seg6.F) : Seg6.F := rho 2940 + (-1 : Seg6.F) * rho 2941
def seg6Q4IlAtom23 (rho : Nat -> Seg6.F) : Seg6.F := rho 2943 + (-1 : Seg6.F) * rho 2944
def seg6Q4IlAtom24 (rho : Nat -> Seg6.F) : Seg6.F := rho 2946 + (-1 : Seg6.F) * rho 2947
def seg6Q4IlAtom25 (rho : Nat -> Seg6.F) : Seg6.F := rho 2949 + (-1 : Seg6.F) * rho 2950
def seg6Q4IlAtom26 (rho : Nat -> Seg6.F) : Seg6.F := rho 2952 + (-1 : Seg6.F) * rho 2953
def seg6Q4IlAtom27 (rho : Nat -> Seg6.F) : Seg6.F := rho 2959 + (-1 : Seg6.F) * rho 2960
def seg6Q4IlAtom28 (rho : Nat -> Seg6.F) : Seg6.F := rho 2962 + (-1 : Seg6.F) * rho 2963
def seg6Q4IlAtom29 (rho : Nat -> Seg6.F) : Seg6.F := rho 2966 + (-1 : Seg6.F) * rho 2967
def seg6Q4IlAtom30 (rho : Nat -> Seg6.F) : Seg6.F := rho 2969 + (-1 : Seg6.F) * rho 2970
def seg6Q4IlAtom31 (rho : Nat -> Seg6.F) : Seg6.F := rho 2972 + (-1 : Seg6.F) * rho 2973
def seg6Q4IlAtom32 (rho : Nat -> Seg6.F) : Seg6.F := rho 2976 + (-1 : Seg6.F) * rho 2977
def seg6Q4IlAtom33 (rho : Nat -> Seg6.F) : Seg6.F := rho 2980
def seg6Q4IlAtom34 (rho : Nat -> Seg6.F) : Seg6.F := rho 2981
def seg6Q4IlAtom35 (rho : Nat -> Seg6.F) : Seg6.F := rho 2990 + (-1 : Seg6.F) * rho 2991
def seg6Q4IlAtom36 (rho : Nat -> Seg6.F) : Seg6.F := rho 2993 + (-1 : Seg6.F) * rho 2994
def seg6Q4IlAtom37 (rho : Nat -> Seg6.F) : Seg6.F := rho 2999 + (-1 : Seg6.F) * rho 3000
def seg6Q4IlAtom38 (rho : Nat -> Seg6.F) : Seg6.F := rho 3004 + (-1 : Seg6.F) * rho 3005
def seg6Q4IlAtom39 (rho : Nat -> Seg6.F) : Seg6.F := rho 3009 + (-1 : Seg6.F) * rho 3010
def seg6Q4IlAtom40 (rho : Nat -> Seg6.F) : Seg6.F := rho 3013 + (-1 : Seg6.F) * rho 3014
def seg6Q4IlAtom41 (rho : Nat -> Seg6.F) : Seg6.F := rho 3018 + (-1 : Seg6.F) * rho 3019
def seg6Q4IlAtom42 (rho : Nat -> Seg6.F) : Seg6.F := rho 3022 + (-1 : Seg6.F) * rho 3023
def seg6Q4IlAtom43 (rho : Nat -> Seg6.F) : Seg6.F := rho 3025 + (-1 : Seg6.F) * rho 3026
def seg6Q4IlAtom44 (rho : Nat -> Seg6.F) : Seg6.F := rho 3028 + (-1 : Seg6.F) * rho 3029
def seg6Q4IlAtom45 (rho : Nat -> Seg6.F) : Seg6.F := rho 3034 + (-1 : Seg6.F) * rho 3035
def seg6Q4IlAtom46 (rho : Nat -> Seg6.F) : Seg6.F := rho 3038 + (-1 : Seg6.F) * rho 3039
def seg6Q4IlAtom47 (rho : Nat -> Seg6.F) : Seg6.F := rho 3041 + (-1 : Seg6.F) * rho 3042
def seg6Q4IlAtom48 (rho : Nat -> Seg6.F) : Seg6.F := rho 3046 + (-1 : Seg6.F) * rho 3047
def seg6Q4IlAtom49 (rho : Nat -> Seg6.F) : Seg6.F := rho 3050 + (-1 : Seg6.F) * rho 3051
def seg6Q4IlAtom50 (rho : Nat -> Seg6.F) : Seg6.F := rho 3055
def seg6Q4IlAtom51 (rho : Nat -> Seg6.F) : Seg6.F := rho 3056
def seg6Q4IlAtom52 (rho : Nat -> Seg6.F) : Seg6.F := rho 3058 + (-1 : Seg6.F) * rho 3059
def seg6Q4IlAtom53 (rho : Nat -> Seg6.F) : Seg6.F := rho 3061 + (-1 : Seg6.F) * rho 3062
def seg6Q4IlAtom54 (rho : Nat -> Seg6.F) : Seg6.F := rho 3064 + (-1 : Seg6.F) * rho 3065
def seg6Q4IlAtom55 (rho : Nat -> Seg6.F) : Seg6.F := rho 3069 + (-1 : Seg6.F) * rho 3070
def seg6Q4IlAtom56 (rho : Nat -> Seg6.F) : Seg6.F := rho 3072 + (-1 : Seg6.F) * rho 3073
def seg6Q4IlAtom57 (rho : Nat -> Seg6.F) : Seg6.F := rho 3083 + (-1 : Seg6.F) * rho 3084
def seg6Q4IlAtom58 (rho : Nat -> Seg6.F) : Seg6.F := rho 3088 + (-1 : Seg6.F) * rho 3089
def seg6Q4IlAtom59 (rho : Nat -> Seg6.F) : Seg6.F := rho 3091 + (-1 : Seg6.F) * rho 3092
def seg6Q4IlAtom60 (rho : Nat -> Seg6.F) : Seg6.F := rho 3102 + (-1 : Seg6.F) * rho 3103
def seg6Q4IlAtom61 (rho : Nat -> Seg6.F) : Seg6.F := rho 3106 + (-1 : Seg6.F) * rho 3107

def seg6Q4Pe253 (rho : Nat -> Seg6.F) : Seg6.F := (1 : Seg6.F)
def seg6Q4Il253 (rho : Nat -> Seg6.F) : Seg6.F := (0 : Seg6.F)
def seg6Q4Pe252 (rho : Nat -> Seg6.F) : Seg6.F := (1 : Seg6.F) + (-1 : Seg6.F) * rho 2136
def seg6Q4Il252 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il253 rho
def seg6Q4Pe251 (rho : Nat -> Seg6.F) : Seg6.F := rho 2740
def seg6Q4Il251 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il252 rho
def seg6Q4Pe250 (rho : Nat -> Seg6.F) : Seg6.F := rho 2741
def seg6Q4Il250 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il251 rho
def seg6Q4Pe249 (rho : Nat -> Seg6.F) : Seg6.F := rho 2742
def seg6Q4Il249 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il250 rho
def seg6Q4Pe248 (rho : Nat -> Seg6.F) : Seg6.F := rho 2743
def seg6Q4Il248 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il249 rho
def seg6Q4Pe247 (rho : Nat -> Seg6.F) : Seg6.F := rho 2744
def seg6Q4Il247 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il248 rho
def seg6Q4Pe246 (rho : Nat -> Seg6.F) : Seg6.F := rho 2745
def seg6Q4Il246 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il247 rho
def seg6Q4Pe245 (rho : Nat -> Seg6.F) : Seg6.F := rho 2746
def seg6Q4Il245 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il246 rho
def seg6Q4Pe244 (rho : Nat -> Seg6.F) : Seg6.F := rho 2747
def seg6Q4Il244 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il245 rho
def seg6Q4Pe243 (rho : Nat -> Seg6.F) : Seg6.F := rho 2748
def seg6Q4Il243 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il244 rho
def seg6Q4Pe242 (rho : Nat -> Seg6.F) : Seg6.F := rho 2749
def seg6Q4Il242 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il243 rho
def seg6Q4Pe241 (rho : Nat -> Seg6.F) : Seg6.F := rho 2750
def seg6Q4Il241 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il242 rho
def seg6Q4Pe240 (rho : Nat -> Seg6.F) : Seg6.F := rho 2751
def seg6Q4Il240 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il241 rho
def seg6Q4Pe239 (rho : Nat -> Seg6.F) : Seg6.F := rho 2752
def seg6Q4Il239 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il240 rho
def seg6Q4Pe238 (rho : Nat -> Seg6.F) : Seg6.F := rho 2753
def seg6Q4Il238 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il239 rho
def seg6Q4Pe237 (rho : Nat -> Seg6.F) : Seg6.F := rho 2754
def seg6Q4Il237 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il238 rho
def seg6Q4Pe236 (rho : Nat -> Seg6.F) : Seg6.F := rho 2755
def seg6Q4Il236 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il237 rho
def seg6Q4Pe235 (rho : Nat -> Seg6.F) : Seg6.F := rho 2756
def seg6Q4Il235 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il236 rho
def seg6Q4Pe234 (rho : Nat -> Seg6.F) : Seg6.F := rho 2757
def seg6Q4Il234 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il235 rho
def seg6Q4Pe233 (rho : Nat -> Seg6.F) : Seg6.F := rho 2758
def seg6Q4Il233 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il234 rho
def seg6Q4Pe232 (rho : Nat -> Seg6.F) : Seg6.F := rho 2759
def seg6Q4Il232 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il233 rho
def seg6Q4Pe231 (rho : Nat -> Seg6.F) : Seg6.F := rho 2760
def seg6Q4Il231 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il232 rho
def seg6Q4Pe230 (rho : Nat -> Seg6.F) : Seg6.F := rho 2761
def seg6Q4Il230 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il231 rho
def seg6Q4Pe229 (rho : Nat -> Seg6.F) : Seg6.F := rho 2762
def seg6Q4Il229 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il230 rho
def seg6Q4Pe228 (rho : Nat -> Seg6.F) : Seg6.F := rho 2763
def seg6Q4Il228 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il229 rho
def seg6Q4Pe227 (rho : Nat -> Seg6.F) : Seg6.F := rho 2764
def seg6Q4Il227 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il228 rho
def seg6Q4Pe226 (rho : Nat -> Seg6.F) : Seg6.F := rho 2765
def seg6Q4Il226 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il227 rho
def seg6Q4Pe225 (rho : Nat -> Seg6.F) : Seg6.F := rho 2766
def seg6Q4Il225 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il226 rho
def seg6Q4Pe224 (rho : Nat -> Seg6.F) : Seg6.F := rho 2767
def seg6Q4Il224 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il225 rho
def seg6Q4Pe223 (rho : Nat -> Seg6.F) : Seg6.F := rho 2768
def seg6Q4Il223 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il224 rho
def seg6Q4Pe222 (rho : Nat -> Seg6.F) : Seg6.F := rho 2769
def seg6Q4Il222 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il223 rho
def seg6Q4Pe221 (rho : Nat -> Seg6.F) : Seg6.F := rho 2770
def seg6Q4Il221 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il222 rho
def seg6Q4Pe220 (rho : Nat -> Seg6.F) : Seg6.F := rho 2771
def seg6Q4Il220 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il221 rho
def seg6Q4Pe219 (rho : Nat -> Seg6.F) : Seg6.F := rho 2772
def seg6Q4Il219 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il220 rho
def seg6Q4Pe218 (rho : Nat -> Seg6.F) : Seg6.F := rho 2773
def seg6Q4Il218 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il219 rho
def seg6Q4Pe217 (rho : Nat -> Seg6.F) : Seg6.F := rho 2774
def seg6Q4Il217 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il218 rho
def seg6Q4Pe216 (rho : Nat -> Seg6.F) : Seg6.F := rho 2775
def seg6Q4Il216 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il217 rho
def seg6Q4Pe215 (rho : Nat -> Seg6.F) : Seg6.F := rho 2776
def seg6Q4Il215 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il216 rho
def seg6Q4Pe214 (rho : Nat -> Seg6.F) : Seg6.F := rho 2777
def seg6Q4Il214 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il215 rho
def seg6Q4Pe213 (rho : Nat -> Seg6.F) : Seg6.F := rho 2778
def seg6Q4Il213 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il214 rho
def seg6Q4Pe212 (rho : Nat -> Seg6.F) : Seg6.F := rho 2779
def seg6Q4Il212 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il213 rho
def seg6Q4Pe211 (rho : Nat -> Seg6.F) : Seg6.F := rho 2780
def seg6Q4Il211 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il212 rho
def seg6Q4Pe210 (rho : Nat -> Seg6.F) : Seg6.F := rho 2781
def seg6Q4Il210 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il211 rho
def seg6Q4Pe209 (rho : Nat -> Seg6.F) : Seg6.F := rho 2782
def seg6Q4Il209 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il210 rho
def seg6Q4Pe208 (rho : Nat -> Seg6.F) : Seg6.F := rho 2783
def seg6Q4Il208 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il209 rho
def seg6Q4Pe207 (rho : Nat -> Seg6.F) : Seg6.F := rho 2784
def seg6Q4Il207 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il208 rho
def seg6Q4Pe206 (rho : Nat -> Seg6.F) : Seg6.F := rho 2785
def seg6Q4Il206 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il207 rho
def seg6Q4Pe205 (rho : Nat -> Seg6.F) : Seg6.F := rho 2786
def seg6Q4Il205 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il206 rho
def seg6Q4Pe204 (rho : Nat -> Seg6.F) : Seg6.F := rho 2787
def seg6Q4Il204 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il205 rho
def seg6Q4Pe203 (rho : Nat -> Seg6.F) : Seg6.F := rho 2788
def seg6Q4Il203 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il204 rho
def seg6Q4Pe202 (rho : Nat -> Seg6.F) : Seg6.F := rho 2789
def seg6Q4Il202 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il203 rho
def seg6Q4Pe201 (rho : Nat -> Seg6.F) : Seg6.F := rho 2790
def seg6Q4Il201 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il202 rho
def seg6Q4Pe200 (rho : Nat -> Seg6.F) : Seg6.F := rho 2791
def seg6Q4Il200 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il201 rho
def seg6Q4Pe199 (rho : Nat -> Seg6.F) : Seg6.F := rho 2792
def seg6Q4Il199 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il200 rho
def seg6Q4Pe198 (rho : Nat -> Seg6.F) : Seg6.F := rho 2793
def seg6Q4Il198 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il199 rho
def seg6Q4Pe197 (rho : Nat -> Seg6.F) : Seg6.F := rho 2794
def seg6Q4Il197 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il198 rho
def seg6Q4Pe196 (rho : Nat -> Seg6.F) : Seg6.F := rho 2795
def seg6Q4Il196 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il197 rho
def seg6Q4Pe195 (rho : Nat -> Seg6.F) : Seg6.F := rho 2796
def seg6Q4Il195 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il196 rho
def seg6Q4Pe194 (rho : Nat -> Seg6.F) : Seg6.F := rho 2797
def seg6Q4Il194 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il195 rho
def seg6Q4Pe193 (rho : Nat -> Seg6.F) : Seg6.F := rho 2798
def seg6Q4Il193 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il194 rho
def seg6Q4Pe192 (rho : Nat -> Seg6.F) : Seg6.F := rho 2799
def seg6Q4Il192 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il193 rho
def seg6Q4Pe191 (rho : Nat -> Seg6.F) : Seg6.F := rho 2800
def seg6Q4Il191 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il192 rho
def seg6Q4Pe190 (rho : Nat -> Seg6.F) : Seg6.F := rho 2801
def seg6Q4Il190 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il191 rho
def seg6Q4Pe189 (rho : Nat -> Seg6.F) : Seg6.F := rho 2802
def seg6Q4Il189 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il190 rho
def seg6Q4Pe188 (rho : Nat -> Seg6.F) : Seg6.F := rho 2803
def seg6Q4Il188 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il189 rho
def seg6Q4Pe187 (rho : Nat -> Seg6.F) : Seg6.F := rho 2804
def seg6Q4Il187 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il188 rho
def seg6Q4Pe186 (rho : Nat -> Seg6.F) : Seg6.F := rho 2805
def seg6Q4Il186 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il187 rho
def seg6Q4Pe185 (rho : Nat -> Seg6.F) : Seg6.F := rho 2806
def seg6Q4Il185 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il186 rho
def seg6Q4Pe184 (rho : Nat -> Seg6.F) : Seg6.F := rho 2807
def seg6Q4Il184 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il185 rho
def seg6Q4Pe183 (rho : Nat -> Seg6.F) : Seg6.F := rho 2808
def seg6Q4Il183 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il184 rho
def seg6Q4Pe182 (rho : Nat -> Seg6.F) : Seg6.F := rho 2809
def seg6Q4Il182 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il183 rho
def seg6Q4Pe181 (rho : Nat -> Seg6.F) : Seg6.F := rho 2810
def seg6Q4Il181 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il182 rho
def seg6Q4Pe180 (rho : Nat -> Seg6.F) : Seg6.F := rho 2811
def seg6Q4Il180 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il181 rho
def seg6Q4Pe179 (rho : Nat -> Seg6.F) : Seg6.F := rho 2812
def seg6Q4Il179 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il180 rho
def seg6Q4Pe178 (rho : Nat -> Seg6.F) : Seg6.F := rho 2813
def seg6Q4Il178 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il179 rho
def seg6Q4Pe177 (rho : Nat -> Seg6.F) : Seg6.F := rho 2814
def seg6Q4Il177 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il178 rho
def seg6Q4Pe176 (rho : Nat -> Seg6.F) : Seg6.F := rho 2815
def seg6Q4Il176 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il177 rho
def seg6Q4Pe175 (rho : Nat -> Seg6.F) : Seg6.F := rho 2816
def seg6Q4Il175 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il176 rho
def seg6Q4Pe174 (rho : Nat -> Seg6.F) : Seg6.F := rho 2817
def seg6Q4Il174 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il175 rho
def seg6Q4Pe173 (rho : Nat -> Seg6.F) : Seg6.F := rho 2818
def seg6Q4Il173 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il174 rho
def seg6Q4Pe172 (rho : Nat -> Seg6.F) : Seg6.F := rho 2819
def seg6Q4Il172 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il173 rho
def seg6Q4Pe171 (rho : Nat -> Seg6.F) : Seg6.F := rho 2820
def seg6Q4Il171 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il172 rho
def seg6Q4Pe170 (rho : Nat -> Seg6.F) : Seg6.F := rho 2821
def seg6Q4Il170 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il171 rho
def seg6Q4Pe169 (rho : Nat -> Seg6.F) : Seg6.F := rho 2822
def seg6Q4Il169 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il170 rho
def seg6Q4Pe168 (rho : Nat -> Seg6.F) : Seg6.F := rho 2823
def seg6Q4Il168 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il169 rho
def seg6Q4Pe167 (rho : Nat -> Seg6.F) : Seg6.F := rho 2824
def seg6Q4Il167 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il168 rho
def seg6Q4Pe166 (rho : Nat -> Seg6.F) : Seg6.F := rho 2825
def seg6Q4Il166 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il167 rho
def seg6Q4Pe165 (rho : Nat -> Seg6.F) : Seg6.F := rho 2826
def seg6Q4Il165 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il166 rho
def seg6Q4Pe164 (rho : Nat -> Seg6.F) : Seg6.F := rho 2827
def seg6Q4Il164 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il165 rho
def seg6Q4Pe163 (rho : Nat -> Seg6.F) : Seg6.F := rho 2828
def seg6Q4Il163 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il164 rho
def seg6Q4Pe162 (rho : Nat -> Seg6.F) : Seg6.F := rho 2829
def seg6Q4Il162 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il163 rho
def seg6Q4Pe161 (rho : Nat -> Seg6.F) : Seg6.F := rho 2830
def seg6Q4Il161 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il162 rho
def seg6Q4Pe160 (rho : Nat -> Seg6.F) : Seg6.F := rho 2831
def seg6Q4Il160 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il161 rho
def seg6Q4Pe159 (rho : Nat -> Seg6.F) : Seg6.F := rho 2832
def seg6Q4Il159 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il160 rho
def seg6Q4Pe158 (rho : Nat -> Seg6.F) : Seg6.F := rho 2833
def seg6Q4Il158 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il159 rho
def seg6Q4Pe157 (rho : Nat -> Seg6.F) : Seg6.F := rho 2834
def seg6Q4Il157 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il158 rho
def seg6Q4Pe156 (rho : Nat -> Seg6.F) : Seg6.F := rho 2835
def seg6Q4Il156 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il157 rho
def seg6Q4Pe155 (rho : Nat -> Seg6.F) : Seg6.F := rho 2836
def seg6Q4Il155 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il156 rho
def seg6Q4Pe154 (rho : Nat -> Seg6.F) : Seg6.F := rho 2837
def seg6Q4Il154 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il155 rho
def seg6Q4Pe153 (rho : Nat -> Seg6.F) : Seg6.F := rho 2838
def seg6Q4Il153 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il154 rho
def seg6Q4Pe152 (rho : Nat -> Seg6.F) : Seg6.F := rho 2839
def seg6Q4Il152 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il153 rho
def seg6Q4Pe151 (rho : Nat -> Seg6.F) : Seg6.F := rho 2840
def seg6Q4Il151 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il152 rho
def seg6Q4Pe150 (rho : Nat -> Seg6.F) : Seg6.F := rho 2841
def seg6Q4Il150 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il151 rho
def seg6Q4Pe149 (rho : Nat -> Seg6.F) : Seg6.F := rho 2842
def seg6Q4Il149 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il150 rho
def seg6Q4Pe148 (rho : Nat -> Seg6.F) : Seg6.F := rho 2843
def seg6Q4Il148 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il149 rho
def seg6Q4Pe147 (rho : Nat -> Seg6.F) : Seg6.F := rho 2844
def seg6Q4Il147 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il148 rho
def seg6Q4Pe146 (rho : Nat -> Seg6.F) : Seg6.F := rho 2845
def seg6Q4Il146 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il147 rho
def seg6Q4Pe145 (rho : Nat -> Seg6.F) : Seg6.F := rho 2846
def seg6Q4Il145 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il146 rho
def seg6Q4Pe144 (rho : Nat -> Seg6.F) : Seg6.F := rho 2847
def seg6Q4Il144 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il145 rho
def seg6Q4Pe143 (rho : Nat -> Seg6.F) : Seg6.F := rho 2848
def seg6Q4Il143 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il144 rho
def seg6Q4Pe142 (rho : Nat -> Seg6.F) : Seg6.F := rho 2849
def seg6Q4Il142 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il143 rho
def seg6Q4Pe141 (rho : Nat -> Seg6.F) : Seg6.F := rho 2850
def seg6Q4Il141 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il142 rho
def seg6Q4Pe140 (rho : Nat -> Seg6.F) : Seg6.F := rho 2851
def seg6Q4Il140 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il141 rho
def seg6Q4Pe139 (rho : Nat -> Seg6.F) : Seg6.F := rho 2852
def seg6Q4Il139 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il140 rho
def seg6Q4Pe138 (rho : Nat -> Seg6.F) : Seg6.F := rho 2853
def seg6Q4Il138 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il139 rho
def seg6Q4Pe137 (rho : Nat -> Seg6.F) : Seg6.F := rho 2854
def seg6Q4Il137 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il138 rho
def seg6Q4Pe136 (rho : Nat -> Seg6.F) : Seg6.F := rho 2855
def seg6Q4Il136 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il137 rho
def seg6Q4Pe135 (rho : Nat -> Seg6.F) : Seg6.F := rho 2856
def seg6Q4Il135 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il136 rho
def seg6Q4Pe134 (rho : Nat -> Seg6.F) : Seg6.F := rho 2857
def seg6Q4Il134 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il135 rho
def seg6Q4Pe133 (rho : Nat -> Seg6.F) : Seg6.F := rho 2858
def seg6Q4Il133 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il134 rho
def seg6Q4Pe132 (rho : Nat -> Seg6.F) : Seg6.F := rho 2859
def seg6Q4Il132 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il133 rho
def seg6Q4Pe131 (rho : Nat -> Seg6.F) : Seg6.F := rho 2860
def seg6Q4Il131 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il132 rho
def seg6Q4Pe130 (rho : Nat -> Seg6.F) : Seg6.F := rho 2861
def seg6Q4Il130 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il131 rho
def seg6Q4Pe129 (rho : Nat -> Seg6.F) : Seg6.F := rho 2862
def seg6Q4Il129 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il130 rho
def seg6Q4Pe128 (rho : Nat -> Seg6.F) : Seg6.F := rho 2863
def seg6Q4Il128 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il129 rho
def seg6Q4Pe127 (rho : Nat -> Seg6.F) : Seg6.F := rho 2864
def seg6Q4Il127 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il128 rho
def seg6Q4Pe126 (rho : Nat -> Seg6.F) : Seg6.F := rho 2865
def seg6Q4Il126 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il127 rho
def seg6Q4Pe125 (rho : Nat -> Seg6.F) : Seg6.F := rho 2866
def seg6Q4Il125 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il126 rho
def seg6Q4Pe124 (rho : Nat -> Seg6.F) : Seg6.F := rho 2867
def seg6Q4Il124 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il125 rho
def seg6Q4Pe123 (rho : Nat -> Seg6.F) : Seg6.F := rho 2869
def seg6Q4Il123 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il124 rho + seg6Q4IlAtom0 rho
def seg6Q4Pe122 (rho : Nat -> Seg6.F) : Seg6.F := rho 2872
def seg6Q4Il122 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il123 rho + seg6Q4IlAtom1 rho
def seg6Q4Pe121 (rho : Nat -> Seg6.F) : Seg6.F := rho 2875
def seg6Q4Il121 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il122 rho + seg6Q4IlAtom2 rho
def seg6Q4Pe120 (rho : Nat -> Seg6.F) : Seg6.F := rho 2878
def seg6Q4Il120 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il121 rho + seg6Q4IlAtom3 rho
def seg6Q4Pe119 (rho : Nat -> Seg6.F) : Seg6.F := rho 2879
def seg6Q4Il119 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il120 rho
def seg6Q4Pe118 (rho : Nat -> Seg6.F) : Seg6.F := rho 2882
def seg6Q4Il118 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il119 rho + seg6Q4IlAtom4 rho
def seg6Q4Pe117 (rho : Nat -> Seg6.F) : Seg6.F := rho 2883
def seg6Q4Il117 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il118 rho
def seg6Q4Pe116 (rho : Nat -> Seg6.F) : Seg6.F := rho 2886
def seg6Q4Il116 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il117 rho + seg6Q4IlAtom5 rho
def seg6Q4Pe115 (rho : Nat -> Seg6.F) : Seg6.F := rho 2889
def seg6Q4Il115 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il116 rho + seg6Q4IlAtom6 rho
def seg6Q4Pe114 (rho : Nat -> Seg6.F) : Seg6.F := rho 2890
def seg6Q4Il114 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il115 rho
def seg6Q4Pe113 (rho : Nat -> Seg6.F) : Seg6.F := rho 2893
def seg6Q4Il113 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il114 rho + seg6Q4IlAtom7 rho
def seg6Q4Pe112 (rho : Nat -> Seg6.F) : Seg6.F := rho 2896
def seg6Q4Il112 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il113 rho + seg6Q4IlAtom8 rho
def seg6Q4Pe111 (rho : Nat -> Seg6.F) : Seg6.F := rho 2899
def seg6Q4Il111 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il112 rho + seg6Q4IlAtom9 rho
def seg6Q4Pe110 (rho : Nat -> Seg6.F) : Seg6.F := rho 2902
def seg6Q4Il110 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il111 rho + seg6Q4IlAtom10 rho
def seg6Q4Pe109 (rho : Nat -> Seg6.F) : Seg6.F := rho 2905
def seg6Q4Il109 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il110 rho + seg6Q4IlAtom11 rho
def seg6Q4Pe108 (rho : Nat -> Seg6.F) : Seg6.F := rho 2906
def seg6Q4Il108 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il109 rho
def seg6Q4Pe107 (rho : Nat -> Seg6.F) : Seg6.F := rho 2909
def seg6Q4Il107 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il108 rho + seg6Q4IlAtom12 rho
def seg6Q4Pe106 (rho : Nat -> Seg6.F) : Seg6.F := rho 2910
def seg6Q4Il106 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il107 rho
def seg6Q4Pe105 (rho : Nat -> Seg6.F) : Seg6.F := rho 2911
def seg6Q4Il105 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il106 rho
def seg6Q4Pe104 (rho : Nat -> Seg6.F) : Seg6.F := rho 2912
def seg6Q4Il104 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il105 rho
def seg6Q4Pe103 (rho : Nat -> Seg6.F) : Seg6.F := rho 2913
def seg6Q4Il103 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il104 rho
def seg6Q4Pe102 (rho : Nat -> Seg6.F) : Seg6.F := rho 2914
def seg6Q4Il102 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il103 rho
def seg6Q4Pe101 (rho : Nat -> Seg6.F) : Seg6.F := rho 2917
def seg6Q4Il101 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il102 rho + seg6Q4IlAtom13 rho
def seg6Q4Pe100 (rho : Nat -> Seg6.F) : Seg6.F := rho 2920
def seg6Q4Il100 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il101 rho + seg6Q4IlAtom14 rho
def seg6Q4Pe99 (rho : Nat -> Seg6.F) : Seg6.F := rho 2923
def seg6Q4Il99 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il100 rho + seg6Q4IlAtom15 rho
def seg6Q4Pe98 (rho : Nat -> Seg6.F) : Seg6.F := rho 2926
def seg6Q4Il98 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il99 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho
def seg6Q4Pe97 (rho : Nat -> Seg6.F) : Seg6.F := rho 2929
def seg6Q4Il97 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il98 rho + seg6Q4IlAtom18 rho
def seg6Q4Pe96 (rho : Nat -> Seg6.F) : Seg6.F := rho 2932
def seg6Q4Il96 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il97 rho + seg6Q4IlAtom19 rho
def seg6Q4Pe95 (rho : Nat -> Seg6.F) : Seg6.F := rho 2935
def seg6Q4Il95 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il96 rho + seg6Q4IlAtom20 rho
def seg6Q4Pe94 (rho : Nat -> Seg6.F) : Seg6.F := rho 2936
def seg6Q4Il94 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il95 rho
def seg6Q4Pe93 (rho : Nat -> Seg6.F) : Seg6.F := rho 2939
def seg6Q4Il93 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il94 rho + seg6Q4IlAtom21 rho
def seg6Q4Pe92 (rho : Nat -> Seg6.F) : Seg6.F := rho 2942
def seg6Q4Il92 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il93 rho + seg6Q4IlAtom22 rho
def seg6Q4Pe91 (rho : Nat -> Seg6.F) : Seg6.F := rho 2945
def seg6Q4Il91 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il92 rho + seg6Q4IlAtom23 rho
def seg6Q4Pe90 (rho : Nat -> Seg6.F) : Seg6.F := rho 2948
def seg6Q4Il90 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il91 rho + seg6Q4IlAtom24 rho
def seg6Q4Pe89 (rho : Nat -> Seg6.F) : Seg6.F := rho 2951
def seg6Q4Il89 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il90 rho + seg6Q4IlAtom25 rho
def seg6Q4Pe88 (rho : Nat -> Seg6.F) : Seg6.F := rho 2954
def seg6Q4Il88 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il89 rho + seg6Q4IlAtom26 rho
def seg6Q4Pe87 (rho : Nat -> Seg6.F) : Seg6.F := rho 2955
def seg6Q4Il87 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il88 rho
def seg6Q4Pe86 (rho : Nat -> Seg6.F) : Seg6.F := rho 2956
def seg6Q4Il86 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il87 rho
def seg6Q4Pe85 (rho : Nat -> Seg6.F) : Seg6.F := rho 2957
def seg6Q4Il85 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il86 rho
def seg6Q4Pe84 (rho : Nat -> Seg6.F) : Seg6.F := rho 2958
def seg6Q4Il84 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il85 rho
def seg6Q4Pe83 (rho : Nat -> Seg6.F) : Seg6.F := rho 2961
def seg6Q4Il83 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il84 rho + seg6Q4IlAtom27 rho
def seg6Q4Pe82 (rho : Nat -> Seg6.F) : Seg6.F := rho 2964
def seg6Q4Il82 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il83 rho + seg6Q4IlAtom28 rho
def seg6Q4Pe81 (rho : Nat -> Seg6.F) : Seg6.F := rho 2965
def seg6Q4Il81 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il82 rho
def seg6Q4Pe80 (rho : Nat -> Seg6.F) : Seg6.F := rho 2968
def seg6Q4Il80 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il81 rho + seg6Q4IlAtom29 rho
def seg6Q4Pe79 (rho : Nat -> Seg6.F) : Seg6.F := rho 2971
def seg6Q4Il79 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il80 rho + seg6Q4IlAtom30 rho
def seg6Q4Pe78 (rho : Nat -> Seg6.F) : Seg6.F := rho 2974
def seg6Q4Il78 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il79 rho + seg6Q4IlAtom31 rho
def seg6Q4Pe77 (rho : Nat -> Seg6.F) : Seg6.F := rho 2975
def seg6Q4Il77 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il78 rho
def seg6Q4Pe76 (rho : Nat -> Seg6.F) : Seg6.F := rho 2978
def seg6Q4Il76 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il77 rho + seg6Q4IlAtom32 rho
def seg6Q4Pe75 (rho : Nat -> Seg6.F) : Seg6.F := rho 2979
def seg6Q4Il75 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il76 rho
def seg6Q4Pe74 (rho : Nat -> Seg6.F) : Seg6.F := rho 2982
def seg6Q4Il74 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il75 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho
def seg6Q4Pe73 (rho : Nat -> Seg6.F) : Seg6.F := rho 2983
def seg6Q4Il73 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il74 rho
def seg6Q4Pe72 (rho : Nat -> Seg6.F) : Seg6.F := rho 2984
def seg6Q4Il72 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il73 rho
def seg6Q4Pe71 (rho : Nat -> Seg6.F) : Seg6.F := rho 2985
def seg6Q4Il71 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il72 rho
def seg6Q4Pe70 (rho : Nat -> Seg6.F) : Seg6.F := rho 2986
def seg6Q4Il70 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il71 rho
def seg6Q4Pe69 (rho : Nat -> Seg6.F) : Seg6.F := rho 2987
def seg6Q4Il69 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il70 rho
def seg6Q4Pe68 (rho : Nat -> Seg6.F) : Seg6.F := rho 2988
def seg6Q4Il68 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il69 rho
def seg6Q4Pe67 (rho : Nat -> Seg6.F) : Seg6.F := rho 2989
def seg6Q4Il67 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il68 rho
def seg6Q4Pe66 (rho : Nat -> Seg6.F) : Seg6.F := rho 2992
def seg6Q4Il66 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il67 rho + seg6Q4IlAtom35 rho
def seg6Q4Pe65 (rho : Nat -> Seg6.F) : Seg6.F := rho 2995
def seg6Q4Il65 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il66 rho + seg6Q4IlAtom36 rho
def seg6Q4Pe64 (rho : Nat -> Seg6.F) : Seg6.F := rho 2996
def seg6Q4Il64 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il65 rho
def seg6Q4Pe63 (rho : Nat -> Seg6.F) : Seg6.F := rho 2997
def seg6Q4Il63 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il64 rho
def seg6Q4Pe62 (rho : Nat -> Seg6.F) : Seg6.F := rho 2998
def seg6Q4Il62 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il63 rho
def seg6Q4Pe61 (rho : Nat -> Seg6.F) : Seg6.F := rho 3001
def seg6Q4Il61 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il62 rho + seg6Q4IlAtom37 rho
def seg6Q4Pe60 (rho : Nat -> Seg6.F) : Seg6.F := rho 3002
def seg6Q4Il60 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il61 rho
def seg6Q4Pe59 (rho : Nat -> Seg6.F) : Seg6.F := rho 3003
def seg6Q4Il59 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il60 rho
def seg6Q4Pe58 (rho : Nat -> Seg6.F) : Seg6.F := rho 3006
def seg6Q4Il58 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il59 rho + seg6Q4IlAtom38 rho
def seg6Q4Pe57 (rho : Nat -> Seg6.F) : Seg6.F := rho 3007
def seg6Q4Il57 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il58 rho
def seg6Q4Pe56 (rho : Nat -> Seg6.F) : Seg6.F := rho 3008
def seg6Q4Il56 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il57 rho
def seg6Q4Pe55 (rho : Nat -> Seg6.F) : Seg6.F := rho 3011
def seg6Q4Il55 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il56 rho + seg6Q4IlAtom39 rho
def seg6Q4Pe54 (rho : Nat -> Seg6.F) : Seg6.F := rho 3012
def seg6Q4Il54 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il55 rho
def seg6Q4Pe53 (rho : Nat -> Seg6.F) : Seg6.F := rho 3015
def seg6Q4Il53 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il54 rho + seg6Q4IlAtom40 rho
def seg6Q4Pe52 (rho : Nat -> Seg6.F) : Seg6.F := rho 3016
def seg6Q4Il52 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il53 rho
def seg6Q4Pe51 (rho : Nat -> Seg6.F) : Seg6.F := rho 3017
def seg6Q4Il51 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il52 rho
def seg6Q4Pe50 (rho : Nat -> Seg6.F) : Seg6.F := rho 3020
def seg6Q4Il50 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il51 rho + seg6Q4IlAtom41 rho
def seg6Q4Pe49 (rho : Nat -> Seg6.F) : Seg6.F := rho 3021
def seg6Q4Il49 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il50 rho
def seg6Q4Pe48 (rho : Nat -> Seg6.F) : Seg6.F := rho 3024
def seg6Q4Il48 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il49 rho + seg6Q4IlAtom42 rho
def seg6Q4Pe47 (rho : Nat -> Seg6.F) : Seg6.F := rho 3027
def seg6Q4Il47 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il48 rho + seg6Q4IlAtom43 rho
def seg6Q4Pe46 (rho : Nat -> Seg6.F) : Seg6.F := rho 3030
def seg6Q4Il46 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il47 rho + seg6Q4IlAtom44 rho
def seg6Q4Pe45 (rho : Nat -> Seg6.F) : Seg6.F := rho 3031
def seg6Q4Il45 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il46 rho
def seg6Q4Pe44 (rho : Nat -> Seg6.F) : Seg6.F := rho 3032
def seg6Q4Il44 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il45 rho
def seg6Q4Pe43 (rho : Nat -> Seg6.F) : Seg6.F := rho 3033
def seg6Q4Il43 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il44 rho
def seg6Q4Pe42 (rho : Nat -> Seg6.F) : Seg6.F := rho 3036
def seg6Q4Il42 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il43 rho + seg6Q4IlAtom45 rho
def seg6Q4Pe41 (rho : Nat -> Seg6.F) : Seg6.F := rho 3037
def seg6Q4Il41 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il42 rho
def seg6Q4Pe40 (rho : Nat -> Seg6.F) : Seg6.F := rho 3040
def seg6Q4Il40 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il41 rho + seg6Q4IlAtom46 rho
def seg6Q4Pe39 (rho : Nat -> Seg6.F) : Seg6.F := rho 3043
def seg6Q4Il39 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il40 rho + seg6Q4IlAtom47 rho
def seg6Q4Pe38 (rho : Nat -> Seg6.F) : Seg6.F := rho 3044
def seg6Q4Il38 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il39 rho
def seg6Q4Pe37 (rho : Nat -> Seg6.F) : Seg6.F := rho 3045
def seg6Q4Il37 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il38 rho
def seg6Q4Pe36 (rho : Nat -> Seg6.F) : Seg6.F := rho 3048
def seg6Q4Il36 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il37 rho + seg6Q4IlAtom48 rho
def seg6Q4Pe35 (rho : Nat -> Seg6.F) : Seg6.F := rho 3049
def seg6Q4Il35 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il36 rho
def seg6Q4Pe34 (rho : Nat -> Seg6.F) : Seg6.F := rho 3052
def seg6Q4Il34 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il35 rho + seg6Q4IlAtom49 rho
def seg6Q4Pe33 (rho : Nat -> Seg6.F) : Seg6.F := rho 3053
def seg6Q4Il33 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il34 rho
def seg6Q4Pe32 (rho : Nat -> Seg6.F) : Seg6.F := rho 3054
def seg6Q4Il32 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il33 rho
def seg6Q4Pe31 (rho : Nat -> Seg6.F) : Seg6.F := rho 3057
def seg6Q4Il31 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il32 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho
def seg6Q4Pe30 (rho : Nat -> Seg6.F) : Seg6.F := rho 3060
def seg6Q4Il30 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il31 rho + seg6Q4IlAtom52 rho
def seg6Q4Pe29 (rho : Nat -> Seg6.F) : Seg6.F := rho 3063
def seg6Q4Il29 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il30 rho + seg6Q4IlAtom53 rho
def seg6Q4Pe28 (rho : Nat -> Seg6.F) : Seg6.F := rho 3066
def seg6Q4Il28 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il29 rho + seg6Q4IlAtom54 rho
def seg6Q4Pe27 (rho : Nat -> Seg6.F) : Seg6.F := rho 3067
def seg6Q4Il27 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il28 rho
def seg6Q4Pe26 (rho : Nat -> Seg6.F) : Seg6.F := rho 3068
def seg6Q4Il26 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il27 rho
def seg6Q4Pe25 (rho : Nat -> Seg6.F) : Seg6.F := rho 3071
def seg6Q4Il25 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il26 rho + seg6Q4IlAtom55 rho
def seg6Q4Pe24 (rho : Nat -> Seg6.F) : Seg6.F := rho 3074
def seg6Q4Il24 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il25 rho + seg6Q4IlAtom56 rho
def seg6Q4Pe23 (rho : Nat -> Seg6.F) : Seg6.F := rho 3075
def seg6Q4Il23 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il24 rho
def seg6Q4Pe22 (rho : Nat -> Seg6.F) : Seg6.F := rho 3076
def seg6Q4Il22 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il23 rho
def seg6Q4Pe21 (rho : Nat -> Seg6.F) : Seg6.F := rho 3077
def seg6Q4Il21 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il22 rho
def seg6Q4Pe20 (rho : Nat -> Seg6.F) : Seg6.F := rho 3078
def seg6Q4Il20 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il21 rho
def seg6Q4Pe19 (rho : Nat -> Seg6.F) : Seg6.F := rho 3079
def seg6Q4Il19 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il20 rho
def seg6Q4Pe18 (rho : Nat -> Seg6.F) : Seg6.F := rho 3080
def seg6Q4Il18 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il19 rho
def seg6Q4Pe17 (rho : Nat -> Seg6.F) : Seg6.F := rho 3081
def seg6Q4Il17 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il18 rho
def seg6Q4Pe16 (rho : Nat -> Seg6.F) : Seg6.F := rho 3082
def seg6Q4Il16 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il17 rho
def seg6Q4Pe15 (rho : Nat -> Seg6.F) : Seg6.F := rho 3085
def seg6Q4Il15 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il16 rho + seg6Q4IlAtom57 rho
def seg6Q4Pe14 (rho : Nat -> Seg6.F) : Seg6.F := rho 3086
def seg6Q4Il14 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il15 rho
def seg6Q4Pe13 (rho : Nat -> Seg6.F) : Seg6.F := rho 3087
def seg6Q4Il13 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il14 rho
def seg6Q4Pe12 (rho : Nat -> Seg6.F) : Seg6.F := rho 3090
def seg6Q4Il12 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il13 rho + seg6Q4IlAtom58 rho
def seg6Q4Pe11 (rho : Nat -> Seg6.F) : Seg6.F := rho 3093
def seg6Q4Il11 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il12 rho + seg6Q4IlAtom59 rho
def seg6Q4Pe10 (rho : Nat -> Seg6.F) : Seg6.F := rho 3094
def seg6Q4Il10 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il11 rho
def seg6Q4Pe9 (rho : Nat -> Seg6.F) : Seg6.F := rho 3095
def seg6Q4Il9 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il10 rho
def seg6Q4Pe8 (rho : Nat -> Seg6.F) : Seg6.F := rho 3096
def seg6Q4Il8 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il9 rho
def seg6Q4Pe7 (rho : Nat -> Seg6.F) : Seg6.F := rho 3097
def seg6Q4Il7 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il8 rho
def seg6Q4Pe6 (rho : Nat -> Seg6.F) : Seg6.F := rho 3098
def seg6Q4Il6 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il7 rho
def seg6Q4Pe5 (rho : Nat -> Seg6.F) : Seg6.F := rho 3099
def seg6Q4Il5 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il6 rho
def seg6Q4Pe4 (rho : Nat -> Seg6.F) : Seg6.F := rho 3100
def seg6Q4Il4 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il5 rho
def seg6Q4Pe3 (rho : Nat -> Seg6.F) : Seg6.F := rho 3101
def seg6Q4Il3 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il4 rho
def seg6Q4Pe2 (rho : Nat -> Seg6.F) : Seg6.F := rho 3104
def seg6Q4Il2 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il3 rho + seg6Q4IlAtom60 rho
def seg6Q4Pe1 (rho : Nat -> Seg6.F) : Seg6.F := rho 3105
def seg6Q4Il1 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il2 rho
def seg6Q4Pe0 (rho : Nat -> Seg6.F) : Seg6.F := rho 3108
def seg6Q4Il0 (rho : Nat -> Seg6.F) : Seg6.F := seg6Q4Il1 rho + seg6Q4IlAtom61 rho

def seg6Q4PeState (rho : Nat -> Seg6.F) : Nat -> Seg6.F
  | 0 => seg6Q4Pe0 rho
  | 1 => seg6Q4Pe1 rho
  | 2 => seg6Q4Pe2 rho
  | 3 => seg6Q4Pe3 rho
  | 4 => seg6Q4Pe4 rho
  | 5 => seg6Q4Pe5 rho
  | 6 => seg6Q4Pe6 rho
  | 7 => seg6Q4Pe7 rho
  | 8 => seg6Q4Pe8 rho
  | 9 => seg6Q4Pe9 rho
  | 10 => seg6Q4Pe10 rho
  | 11 => seg6Q4Pe11 rho
  | 12 => seg6Q4Pe12 rho
  | 13 => seg6Q4Pe13 rho
  | 14 => seg6Q4Pe14 rho
  | 15 => seg6Q4Pe15 rho
  | 16 => seg6Q4Pe16 rho
  | 17 => seg6Q4Pe17 rho
  | 18 => seg6Q4Pe18 rho
  | 19 => seg6Q4Pe19 rho
  | 20 => seg6Q4Pe20 rho
  | 21 => seg6Q4Pe21 rho
  | 22 => seg6Q4Pe22 rho
  | 23 => seg6Q4Pe23 rho
  | 24 => seg6Q4Pe24 rho
  | 25 => seg6Q4Pe25 rho
  | 26 => seg6Q4Pe26 rho
  | 27 => seg6Q4Pe27 rho
  | 28 => seg6Q4Pe28 rho
  | 29 => seg6Q4Pe29 rho
  | 30 => seg6Q4Pe30 rho
  | 31 => seg6Q4Pe31 rho
  | 32 => seg6Q4Pe32 rho
  | 33 => seg6Q4Pe33 rho
  | 34 => seg6Q4Pe34 rho
  | 35 => seg6Q4Pe35 rho
  | 36 => seg6Q4Pe36 rho
  | 37 => seg6Q4Pe37 rho
  | 38 => seg6Q4Pe38 rho
  | 39 => seg6Q4Pe39 rho
  | 40 => seg6Q4Pe40 rho
  | 41 => seg6Q4Pe41 rho
  | 42 => seg6Q4Pe42 rho
  | 43 => seg6Q4Pe43 rho
  | 44 => seg6Q4Pe44 rho
  | 45 => seg6Q4Pe45 rho
  | 46 => seg6Q4Pe46 rho
  | 47 => seg6Q4Pe47 rho
  | 48 => seg6Q4Pe48 rho
  | 49 => seg6Q4Pe49 rho
  | 50 => seg6Q4Pe50 rho
  | 51 => seg6Q4Pe51 rho
  | 52 => seg6Q4Pe52 rho
  | 53 => seg6Q4Pe53 rho
  | 54 => seg6Q4Pe54 rho
  | 55 => seg6Q4Pe55 rho
  | 56 => seg6Q4Pe56 rho
  | 57 => seg6Q4Pe57 rho
  | 58 => seg6Q4Pe58 rho
  | 59 => seg6Q4Pe59 rho
  | 60 => seg6Q4Pe60 rho
  | 61 => seg6Q4Pe61 rho
  | 62 => seg6Q4Pe62 rho
  | 63 => seg6Q4Pe63 rho
  | 64 => seg6Q4Pe64 rho
  | 65 => seg6Q4Pe65 rho
  | 66 => seg6Q4Pe66 rho
  | 67 => seg6Q4Pe67 rho
  | 68 => seg6Q4Pe68 rho
  | 69 => seg6Q4Pe69 rho
  | 70 => seg6Q4Pe70 rho
  | 71 => seg6Q4Pe71 rho
  | 72 => seg6Q4Pe72 rho
  | 73 => seg6Q4Pe73 rho
  | 74 => seg6Q4Pe74 rho
  | 75 => seg6Q4Pe75 rho
  | 76 => seg6Q4Pe76 rho
  | 77 => seg6Q4Pe77 rho
  | 78 => seg6Q4Pe78 rho
  | 79 => seg6Q4Pe79 rho
  | 80 => seg6Q4Pe80 rho
  | 81 => seg6Q4Pe81 rho
  | 82 => seg6Q4Pe82 rho
  | 83 => seg6Q4Pe83 rho
  | 84 => seg6Q4Pe84 rho
  | 85 => seg6Q4Pe85 rho
  | 86 => seg6Q4Pe86 rho
  | 87 => seg6Q4Pe87 rho
  | 88 => seg6Q4Pe88 rho
  | 89 => seg6Q4Pe89 rho
  | 90 => seg6Q4Pe90 rho
  | 91 => seg6Q4Pe91 rho
  | 92 => seg6Q4Pe92 rho
  | 93 => seg6Q4Pe93 rho
  | 94 => seg6Q4Pe94 rho
  | 95 => seg6Q4Pe95 rho
  | 96 => seg6Q4Pe96 rho
  | 97 => seg6Q4Pe97 rho
  | 98 => seg6Q4Pe98 rho
  | 99 => seg6Q4Pe99 rho
  | 100 => seg6Q4Pe100 rho
  | 101 => seg6Q4Pe101 rho
  | 102 => seg6Q4Pe102 rho
  | 103 => seg6Q4Pe103 rho
  | 104 => seg6Q4Pe104 rho
  | 105 => seg6Q4Pe105 rho
  | 106 => seg6Q4Pe106 rho
  | 107 => seg6Q4Pe107 rho
  | 108 => seg6Q4Pe108 rho
  | 109 => seg6Q4Pe109 rho
  | 110 => seg6Q4Pe110 rho
  | 111 => seg6Q4Pe111 rho
  | 112 => seg6Q4Pe112 rho
  | 113 => seg6Q4Pe113 rho
  | 114 => seg6Q4Pe114 rho
  | 115 => seg6Q4Pe115 rho
  | 116 => seg6Q4Pe116 rho
  | 117 => seg6Q4Pe117 rho
  | 118 => seg6Q4Pe118 rho
  | 119 => seg6Q4Pe119 rho
  | 120 => seg6Q4Pe120 rho
  | 121 => seg6Q4Pe121 rho
  | 122 => seg6Q4Pe122 rho
  | 123 => seg6Q4Pe123 rho
  | 124 => seg6Q4Pe124 rho
  | 125 => seg6Q4Pe125 rho
  | 126 => seg6Q4Pe126 rho
  | 127 => seg6Q4Pe127 rho
  | 128 => seg6Q4Pe128 rho
  | 129 => seg6Q4Pe129 rho
  | 130 => seg6Q4Pe130 rho
  | 131 => seg6Q4Pe131 rho
  | 132 => seg6Q4Pe132 rho
  | 133 => seg6Q4Pe133 rho
  | 134 => seg6Q4Pe134 rho
  | 135 => seg6Q4Pe135 rho
  | 136 => seg6Q4Pe136 rho
  | 137 => seg6Q4Pe137 rho
  | 138 => seg6Q4Pe138 rho
  | 139 => seg6Q4Pe139 rho
  | 140 => seg6Q4Pe140 rho
  | 141 => seg6Q4Pe141 rho
  | 142 => seg6Q4Pe142 rho
  | 143 => seg6Q4Pe143 rho
  | 144 => seg6Q4Pe144 rho
  | 145 => seg6Q4Pe145 rho
  | 146 => seg6Q4Pe146 rho
  | 147 => seg6Q4Pe147 rho
  | 148 => seg6Q4Pe148 rho
  | 149 => seg6Q4Pe149 rho
  | 150 => seg6Q4Pe150 rho
  | 151 => seg6Q4Pe151 rho
  | 152 => seg6Q4Pe152 rho
  | 153 => seg6Q4Pe153 rho
  | 154 => seg6Q4Pe154 rho
  | 155 => seg6Q4Pe155 rho
  | 156 => seg6Q4Pe156 rho
  | 157 => seg6Q4Pe157 rho
  | 158 => seg6Q4Pe158 rho
  | 159 => seg6Q4Pe159 rho
  | 160 => seg6Q4Pe160 rho
  | 161 => seg6Q4Pe161 rho
  | 162 => seg6Q4Pe162 rho
  | 163 => seg6Q4Pe163 rho
  | 164 => seg6Q4Pe164 rho
  | 165 => seg6Q4Pe165 rho
  | 166 => seg6Q4Pe166 rho
  | 167 => seg6Q4Pe167 rho
  | 168 => seg6Q4Pe168 rho
  | 169 => seg6Q4Pe169 rho
  | 170 => seg6Q4Pe170 rho
  | 171 => seg6Q4Pe171 rho
  | 172 => seg6Q4Pe172 rho
  | 173 => seg6Q4Pe173 rho
  | 174 => seg6Q4Pe174 rho
  | 175 => seg6Q4Pe175 rho
  | 176 => seg6Q4Pe176 rho
  | 177 => seg6Q4Pe177 rho
  | 178 => seg6Q4Pe178 rho
  | 179 => seg6Q4Pe179 rho
  | 180 => seg6Q4Pe180 rho
  | 181 => seg6Q4Pe181 rho
  | 182 => seg6Q4Pe182 rho
  | 183 => seg6Q4Pe183 rho
  | 184 => seg6Q4Pe184 rho
  | 185 => seg6Q4Pe185 rho
  | 186 => seg6Q4Pe186 rho
  | 187 => seg6Q4Pe187 rho
  | 188 => seg6Q4Pe188 rho
  | 189 => seg6Q4Pe189 rho
  | 190 => seg6Q4Pe190 rho
  | 191 => seg6Q4Pe191 rho
  | 192 => seg6Q4Pe192 rho
  | 193 => seg6Q4Pe193 rho
  | 194 => seg6Q4Pe194 rho
  | 195 => seg6Q4Pe195 rho
  | 196 => seg6Q4Pe196 rho
  | 197 => seg6Q4Pe197 rho
  | 198 => seg6Q4Pe198 rho
  | 199 => seg6Q4Pe199 rho
  | 200 => seg6Q4Pe200 rho
  | 201 => seg6Q4Pe201 rho
  | 202 => seg6Q4Pe202 rho
  | 203 => seg6Q4Pe203 rho
  | 204 => seg6Q4Pe204 rho
  | 205 => seg6Q4Pe205 rho
  | 206 => seg6Q4Pe206 rho
  | 207 => seg6Q4Pe207 rho
  | 208 => seg6Q4Pe208 rho
  | 209 => seg6Q4Pe209 rho
  | 210 => seg6Q4Pe210 rho
  | 211 => seg6Q4Pe211 rho
  | 212 => seg6Q4Pe212 rho
  | 213 => seg6Q4Pe213 rho
  | 214 => seg6Q4Pe214 rho
  | 215 => seg6Q4Pe215 rho
  | 216 => seg6Q4Pe216 rho
  | 217 => seg6Q4Pe217 rho
  | 218 => seg6Q4Pe218 rho
  | 219 => seg6Q4Pe219 rho
  | 220 => seg6Q4Pe220 rho
  | 221 => seg6Q4Pe221 rho
  | 222 => seg6Q4Pe222 rho
  | 223 => seg6Q4Pe223 rho
  | 224 => seg6Q4Pe224 rho
  | 225 => seg6Q4Pe225 rho
  | 226 => seg6Q4Pe226 rho
  | 227 => seg6Q4Pe227 rho
  | 228 => seg6Q4Pe228 rho
  | 229 => seg6Q4Pe229 rho
  | 230 => seg6Q4Pe230 rho
  | 231 => seg6Q4Pe231 rho
  | 232 => seg6Q4Pe232 rho
  | 233 => seg6Q4Pe233 rho
  | 234 => seg6Q4Pe234 rho
  | 235 => seg6Q4Pe235 rho
  | 236 => seg6Q4Pe236 rho
  | 237 => seg6Q4Pe237 rho
  | 238 => seg6Q4Pe238 rho
  | 239 => seg6Q4Pe239 rho
  | 240 => seg6Q4Pe240 rho
  | 241 => seg6Q4Pe241 rho
  | 242 => seg6Q4Pe242 rho
  | 243 => seg6Q4Pe243 rho
  | 244 => seg6Q4Pe244 rho
  | 245 => seg6Q4Pe245 rho
  | 246 => seg6Q4Pe246 rho
  | 247 => seg6Q4Pe247 rho
  | 248 => seg6Q4Pe248 rho
  | 249 => seg6Q4Pe249 rho
  | 250 => seg6Q4Pe250 rho
  | 251 => seg6Q4Pe251 rho
  | 252 => seg6Q4Pe252 rho
  | 253 => seg6Q4Pe253 rho
  | _ => 0

def seg6Q4IlState (rho : Nat -> Seg6.F) : Nat -> Seg6.F
  | 0 => seg6Q4Il0 rho
  | 1 => seg6Q4Il1 rho
  | 2 => seg6Q4Il2 rho
  | 3 => seg6Q4Il3 rho
  | 4 => seg6Q4Il4 rho
  | 5 => seg6Q4Il5 rho
  | 6 => seg6Q4Il6 rho
  | 7 => seg6Q4Il7 rho
  | 8 => seg6Q4Il8 rho
  | 9 => seg6Q4Il9 rho
  | 10 => seg6Q4Il10 rho
  | 11 => seg6Q4Il11 rho
  | 12 => seg6Q4Il12 rho
  | 13 => seg6Q4Il13 rho
  | 14 => seg6Q4Il14 rho
  | 15 => seg6Q4Il15 rho
  | 16 => seg6Q4Il16 rho
  | 17 => seg6Q4Il17 rho
  | 18 => seg6Q4Il18 rho
  | 19 => seg6Q4Il19 rho
  | 20 => seg6Q4Il20 rho
  | 21 => seg6Q4Il21 rho
  | 22 => seg6Q4Il22 rho
  | 23 => seg6Q4Il23 rho
  | 24 => seg6Q4Il24 rho
  | 25 => seg6Q4Il25 rho
  | 26 => seg6Q4Il26 rho
  | 27 => seg6Q4Il27 rho
  | 28 => seg6Q4Il28 rho
  | 29 => seg6Q4Il29 rho
  | 30 => seg6Q4Il30 rho
  | 31 => seg6Q4Il31 rho
  | 32 => seg6Q4Il32 rho
  | 33 => seg6Q4Il33 rho
  | 34 => seg6Q4Il34 rho
  | 35 => seg6Q4Il35 rho
  | 36 => seg6Q4Il36 rho
  | 37 => seg6Q4Il37 rho
  | 38 => seg6Q4Il38 rho
  | 39 => seg6Q4Il39 rho
  | 40 => seg6Q4Il40 rho
  | 41 => seg6Q4Il41 rho
  | 42 => seg6Q4Il42 rho
  | 43 => seg6Q4Il43 rho
  | 44 => seg6Q4Il44 rho
  | 45 => seg6Q4Il45 rho
  | 46 => seg6Q4Il46 rho
  | 47 => seg6Q4Il47 rho
  | 48 => seg6Q4Il48 rho
  | 49 => seg6Q4Il49 rho
  | 50 => seg6Q4Il50 rho
  | 51 => seg6Q4Il51 rho
  | 52 => seg6Q4Il52 rho
  | 53 => seg6Q4Il53 rho
  | 54 => seg6Q4Il54 rho
  | 55 => seg6Q4Il55 rho
  | 56 => seg6Q4Il56 rho
  | 57 => seg6Q4Il57 rho
  | 58 => seg6Q4Il58 rho
  | 59 => seg6Q4Il59 rho
  | 60 => seg6Q4Il60 rho
  | 61 => seg6Q4Il61 rho
  | 62 => seg6Q4Il62 rho
  | 63 => seg6Q4Il63 rho
  | 64 => seg6Q4Il64 rho
  | 65 => seg6Q4Il65 rho
  | 66 => seg6Q4Il66 rho
  | 67 => seg6Q4Il67 rho
  | 68 => seg6Q4Il68 rho
  | 69 => seg6Q4Il69 rho
  | 70 => seg6Q4Il70 rho
  | 71 => seg6Q4Il71 rho
  | 72 => seg6Q4Il72 rho
  | 73 => seg6Q4Il73 rho
  | 74 => seg6Q4Il74 rho
  | 75 => seg6Q4Il75 rho
  | 76 => seg6Q4Il76 rho
  | 77 => seg6Q4Il77 rho
  | 78 => seg6Q4Il78 rho
  | 79 => seg6Q4Il79 rho
  | 80 => seg6Q4Il80 rho
  | 81 => seg6Q4Il81 rho
  | 82 => seg6Q4Il82 rho
  | 83 => seg6Q4Il83 rho
  | 84 => seg6Q4Il84 rho
  | 85 => seg6Q4Il85 rho
  | 86 => seg6Q4Il86 rho
  | 87 => seg6Q4Il87 rho
  | 88 => seg6Q4Il88 rho
  | 89 => seg6Q4Il89 rho
  | 90 => seg6Q4Il90 rho
  | 91 => seg6Q4Il91 rho
  | 92 => seg6Q4Il92 rho
  | 93 => seg6Q4Il93 rho
  | 94 => seg6Q4Il94 rho
  | 95 => seg6Q4Il95 rho
  | 96 => seg6Q4Il96 rho
  | 97 => seg6Q4Il97 rho
  | 98 => seg6Q4Il98 rho
  | 99 => seg6Q4Il99 rho
  | 100 => seg6Q4Il100 rho
  | 101 => seg6Q4Il101 rho
  | 102 => seg6Q4Il102 rho
  | 103 => seg6Q4Il103 rho
  | 104 => seg6Q4Il104 rho
  | 105 => seg6Q4Il105 rho
  | 106 => seg6Q4Il106 rho
  | 107 => seg6Q4Il107 rho
  | 108 => seg6Q4Il108 rho
  | 109 => seg6Q4Il109 rho
  | 110 => seg6Q4Il110 rho
  | 111 => seg6Q4Il111 rho
  | 112 => seg6Q4Il112 rho
  | 113 => seg6Q4Il113 rho
  | 114 => seg6Q4Il114 rho
  | 115 => seg6Q4Il115 rho
  | 116 => seg6Q4Il116 rho
  | 117 => seg6Q4Il117 rho
  | 118 => seg6Q4Il118 rho
  | 119 => seg6Q4Il119 rho
  | 120 => seg6Q4Il120 rho
  | 121 => seg6Q4Il121 rho
  | 122 => seg6Q4Il122 rho
  | 123 => seg6Q4Il123 rho
  | 124 => seg6Q4Il124 rho
  | 125 => seg6Q4Il125 rho
  | 126 => seg6Q4Il126 rho
  | 127 => seg6Q4Il127 rho
  | 128 => seg6Q4Il128 rho
  | 129 => seg6Q4Il129 rho
  | 130 => seg6Q4Il130 rho
  | 131 => seg6Q4Il131 rho
  | 132 => seg6Q4Il132 rho
  | 133 => seg6Q4Il133 rho
  | 134 => seg6Q4Il134 rho
  | 135 => seg6Q4Il135 rho
  | 136 => seg6Q4Il136 rho
  | 137 => seg6Q4Il137 rho
  | 138 => seg6Q4Il138 rho
  | 139 => seg6Q4Il139 rho
  | 140 => seg6Q4Il140 rho
  | 141 => seg6Q4Il141 rho
  | 142 => seg6Q4Il142 rho
  | 143 => seg6Q4Il143 rho
  | 144 => seg6Q4Il144 rho
  | 145 => seg6Q4Il145 rho
  | 146 => seg6Q4Il146 rho
  | 147 => seg6Q4Il147 rho
  | 148 => seg6Q4Il148 rho
  | 149 => seg6Q4Il149 rho
  | 150 => seg6Q4Il150 rho
  | 151 => seg6Q4Il151 rho
  | 152 => seg6Q4Il152 rho
  | 153 => seg6Q4Il153 rho
  | 154 => seg6Q4Il154 rho
  | 155 => seg6Q4Il155 rho
  | 156 => seg6Q4Il156 rho
  | 157 => seg6Q4Il157 rho
  | 158 => seg6Q4Il158 rho
  | 159 => seg6Q4Il159 rho
  | 160 => seg6Q4Il160 rho
  | 161 => seg6Q4Il161 rho
  | 162 => seg6Q4Il162 rho
  | 163 => seg6Q4Il163 rho
  | 164 => seg6Q4Il164 rho
  | 165 => seg6Q4Il165 rho
  | 166 => seg6Q4Il166 rho
  | 167 => seg6Q4Il167 rho
  | 168 => seg6Q4Il168 rho
  | 169 => seg6Q4Il169 rho
  | 170 => seg6Q4Il170 rho
  | 171 => seg6Q4Il171 rho
  | 172 => seg6Q4Il172 rho
  | 173 => seg6Q4Il173 rho
  | 174 => seg6Q4Il174 rho
  | 175 => seg6Q4Il175 rho
  | 176 => seg6Q4Il176 rho
  | 177 => seg6Q4Il177 rho
  | 178 => seg6Q4Il178 rho
  | 179 => seg6Q4Il179 rho
  | 180 => seg6Q4Il180 rho
  | 181 => seg6Q4Il181 rho
  | 182 => seg6Q4Il182 rho
  | 183 => seg6Q4Il183 rho
  | 184 => seg6Q4Il184 rho
  | 185 => seg6Q4Il185 rho
  | 186 => seg6Q4Il186 rho
  | 187 => seg6Q4Il187 rho
  | 188 => seg6Q4Il188 rho
  | 189 => seg6Q4Il189 rho
  | 190 => seg6Q4Il190 rho
  | 191 => seg6Q4Il191 rho
  | 192 => seg6Q4Il192 rho
  | 193 => seg6Q4Il193 rho
  | 194 => seg6Q4Il194 rho
  | 195 => seg6Q4Il195 rho
  | 196 => seg6Q4Il196 rho
  | 197 => seg6Q4Il197 rho
  | 198 => seg6Q4Il198 rho
  | 199 => seg6Q4Il199 rho
  | 200 => seg6Q4Il200 rho
  | 201 => seg6Q4Il201 rho
  | 202 => seg6Q4Il202 rho
  | 203 => seg6Q4Il203 rho
  | 204 => seg6Q4Il204 rho
  | 205 => seg6Q4Il205 rho
  | 206 => seg6Q4Il206 rho
  | 207 => seg6Q4Il207 rho
  | 208 => seg6Q4Il208 rho
  | 209 => seg6Q4Il209 rho
  | 210 => seg6Q4Il210 rho
  | 211 => seg6Q4Il211 rho
  | 212 => seg6Q4Il212 rho
  | 213 => seg6Q4Il213 rho
  | 214 => seg6Q4Il214 rho
  | 215 => seg6Q4Il215 rho
  | 216 => seg6Q4Il216 rho
  | 217 => seg6Q4Il217 rho
  | 218 => seg6Q4Il218 rho
  | 219 => seg6Q4Il219 rho
  | 220 => seg6Q4Il220 rho
  | 221 => seg6Q4Il221 rho
  | 222 => seg6Q4Il222 rho
  | 223 => seg6Q4Il223 rho
  | 224 => seg6Q4Il224 rho
  | 225 => seg6Q4Il225 rho
  | 226 => seg6Q4Il226 rho
  | 227 => seg6Q4Il227 rho
  | 228 => seg6Q4Il228 rho
  | 229 => seg6Q4Il229 rho
  | 230 => seg6Q4Il230 rho
  | 231 => seg6Q4Il231 rho
  | 232 => seg6Q4Il232 rho
  | 233 => seg6Q4Il233 rho
  | 234 => seg6Q4Il234 rho
  | 235 => seg6Q4Il235 rho
  | 236 => seg6Q4Il236 rho
  | 237 => seg6Q4Il237 rho
  | 238 => seg6Q4Il238 rho
  | 239 => seg6Q4Il239 rho
  | 240 => seg6Q4Il240 rho
  | 241 => seg6Q4Il241 rho
  | 242 => seg6Q4Il242 rho
  | 243 => seg6Q4Il243 rho
  | 244 => seg6Q4Il244 rho
  | 245 => seg6Q4Il245 rho
  | 246 => seg6Q4Il246 rho
  | 247 => seg6Q4Il247 rho
  | 248 => seg6Q4Il248 rho
  | 249 => seg6Q4Il249 rho
  | 250 => seg6Q4Il250 rho
  | 251 => seg6Q4Il251 rho
  | 252 => seg6Q4Il252 rho
  | 253 => seg6Q4Il253 rho
  | _ => 0

theorem seg6Q4Il253Atoms (rho : Nat -> Seg6.F) : seg6Q4Il253 rho = (0 : Seg6.F) := by
  rfl

theorem seg6Q4Il252Atoms (rho : Nat -> Seg6.F) : seg6Q4Il252 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il252
  rw [seg6Q4Il253Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il251Atoms (rho : Nat -> Seg6.F) : seg6Q4Il251 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il251
  rw [seg6Q4Il252Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il250Atoms (rho : Nat -> Seg6.F) : seg6Q4Il250 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il250
  rw [seg6Q4Il251Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il249Atoms (rho : Nat -> Seg6.F) : seg6Q4Il249 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il249
  rw [seg6Q4Il250Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il248Atoms (rho : Nat -> Seg6.F) : seg6Q4Il248 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il248
  rw [seg6Q4Il249Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il247Atoms (rho : Nat -> Seg6.F) : seg6Q4Il247 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il247
  rw [seg6Q4Il248Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il246Atoms (rho : Nat -> Seg6.F) : seg6Q4Il246 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il246
  rw [seg6Q4Il247Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il245Atoms (rho : Nat -> Seg6.F) : seg6Q4Il245 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il245
  rw [seg6Q4Il246Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il244Atoms (rho : Nat -> Seg6.F) : seg6Q4Il244 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il244
  rw [seg6Q4Il245Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il243Atoms (rho : Nat -> Seg6.F) : seg6Q4Il243 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il243
  rw [seg6Q4Il244Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il242Atoms (rho : Nat -> Seg6.F) : seg6Q4Il242 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il242
  rw [seg6Q4Il243Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il241Atoms (rho : Nat -> Seg6.F) : seg6Q4Il241 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il241
  rw [seg6Q4Il242Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il240Atoms (rho : Nat -> Seg6.F) : seg6Q4Il240 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il240
  rw [seg6Q4Il241Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il239Atoms (rho : Nat -> Seg6.F) : seg6Q4Il239 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il239
  rw [seg6Q4Il240Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il238Atoms (rho : Nat -> Seg6.F) : seg6Q4Il238 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il238
  rw [seg6Q4Il239Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il237Atoms (rho : Nat -> Seg6.F) : seg6Q4Il237 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il237
  rw [seg6Q4Il238Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il236Atoms (rho : Nat -> Seg6.F) : seg6Q4Il236 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il236
  rw [seg6Q4Il237Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il235Atoms (rho : Nat -> Seg6.F) : seg6Q4Il235 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il235
  rw [seg6Q4Il236Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il234Atoms (rho : Nat -> Seg6.F) : seg6Q4Il234 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il234
  rw [seg6Q4Il235Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il233Atoms (rho : Nat -> Seg6.F) : seg6Q4Il233 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il233
  rw [seg6Q4Il234Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il232Atoms (rho : Nat -> Seg6.F) : seg6Q4Il232 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il232
  rw [seg6Q4Il233Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il231Atoms (rho : Nat -> Seg6.F) : seg6Q4Il231 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il231
  rw [seg6Q4Il232Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il230Atoms (rho : Nat -> Seg6.F) : seg6Q4Il230 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il230
  rw [seg6Q4Il231Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il229Atoms (rho : Nat -> Seg6.F) : seg6Q4Il229 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il229
  rw [seg6Q4Il230Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il228Atoms (rho : Nat -> Seg6.F) : seg6Q4Il228 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il228
  rw [seg6Q4Il229Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il227Atoms (rho : Nat -> Seg6.F) : seg6Q4Il227 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il227
  rw [seg6Q4Il228Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il226Atoms (rho : Nat -> Seg6.F) : seg6Q4Il226 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il226
  rw [seg6Q4Il227Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il225Atoms (rho : Nat -> Seg6.F) : seg6Q4Il225 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il225
  rw [seg6Q4Il226Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il224Atoms (rho : Nat -> Seg6.F) : seg6Q4Il224 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il224
  rw [seg6Q4Il225Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il223Atoms (rho : Nat -> Seg6.F) : seg6Q4Il223 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il223
  rw [seg6Q4Il224Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il222Atoms (rho : Nat -> Seg6.F) : seg6Q4Il222 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il222
  rw [seg6Q4Il223Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il221Atoms (rho : Nat -> Seg6.F) : seg6Q4Il221 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il221
  rw [seg6Q4Il222Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il220Atoms (rho : Nat -> Seg6.F) : seg6Q4Il220 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il220
  rw [seg6Q4Il221Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il219Atoms (rho : Nat -> Seg6.F) : seg6Q4Il219 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il219
  rw [seg6Q4Il220Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il218Atoms (rho : Nat -> Seg6.F) : seg6Q4Il218 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il218
  rw [seg6Q4Il219Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il217Atoms (rho : Nat -> Seg6.F) : seg6Q4Il217 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il217
  rw [seg6Q4Il218Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il216Atoms (rho : Nat -> Seg6.F) : seg6Q4Il216 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il216
  rw [seg6Q4Il217Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il215Atoms (rho : Nat -> Seg6.F) : seg6Q4Il215 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il215
  rw [seg6Q4Il216Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il214Atoms (rho : Nat -> Seg6.F) : seg6Q4Il214 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il214
  rw [seg6Q4Il215Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il213Atoms (rho : Nat -> Seg6.F) : seg6Q4Il213 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il213
  rw [seg6Q4Il214Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il212Atoms (rho : Nat -> Seg6.F) : seg6Q4Il212 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il212
  rw [seg6Q4Il213Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il211Atoms (rho : Nat -> Seg6.F) : seg6Q4Il211 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il211
  rw [seg6Q4Il212Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il210Atoms (rho : Nat -> Seg6.F) : seg6Q4Il210 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il210
  rw [seg6Q4Il211Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il209Atoms (rho : Nat -> Seg6.F) : seg6Q4Il209 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il209
  rw [seg6Q4Il210Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il208Atoms (rho : Nat -> Seg6.F) : seg6Q4Il208 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il208
  rw [seg6Q4Il209Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il207Atoms (rho : Nat -> Seg6.F) : seg6Q4Il207 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il207
  rw [seg6Q4Il208Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il206Atoms (rho : Nat -> Seg6.F) : seg6Q4Il206 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il206
  rw [seg6Q4Il207Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il205Atoms (rho : Nat -> Seg6.F) : seg6Q4Il205 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il205
  rw [seg6Q4Il206Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il204Atoms (rho : Nat -> Seg6.F) : seg6Q4Il204 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il204
  rw [seg6Q4Il205Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il203Atoms (rho : Nat -> Seg6.F) : seg6Q4Il203 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il203
  rw [seg6Q4Il204Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il202Atoms (rho : Nat -> Seg6.F) : seg6Q4Il202 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il202
  rw [seg6Q4Il203Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il201Atoms (rho : Nat -> Seg6.F) : seg6Q4Il201 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il201
  rw [seg6Q4Il202Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il200Atoms (rho : Nat -> Seg6.F) : seg6Q4Il200 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il200
  rw [seg6Q4Il201Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il199Atoms (rho : Nat -> Seg6.F) : seg6Q4Il199 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il199
  rw [seg6Q4Il200Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il198Atoms (rho : Nat -> Seg6.F) : seg6Q4Il198 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il198
  rw [seg6Q4Il199Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il197Atoms (rho : Nat -> Seg6.F) : seg6Q4Il197 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il197
  rw [seg6Q4Il198Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il196Atoms (rho : Nat -> Seg6.F) : seg6Q4Il196 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il196
  rw [seg6Q4Il197Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il195Atoms (rho : Nat -> Seg6.F) : seg6Q4Il195 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il195
  rw [seg6Q4Il196Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il194Atoms (rho : Nat -> Seg6.F) : seg6Q4Il194 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il194
  rw [seg6Q4Il195Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il193Atoms (rho : Nat -> Seg6.F) : seg6Q4Il193 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il193
  rw [seg6Q4Il194Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il192Atoms (rho : Nat -> Seg6.F) : seg6Q4Il192 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il192
  rw [seg6Q4Il193Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il191Atoms (rho : Nat -> Seg6.F) : seg6Q4Il191 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il191
  rw [seg6Q4Il192Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il190Atoms (rho : Nat -> Seg6.F) : seg6Q4Il190 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il190
  rw [seg6Q4Il191Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il189Atoms (rho : Nat -> Seg6.F) : seg6Q4Il189 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il189
  rw [seg6Q4Il190Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il188Atoms (rho : Nat -> Seg6.F) : seg6Q4Il188 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il188
  rw [seg6Q4Il189Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il187Atoms (rho : Nat -> Seg6.F) : seg6Q4Il187 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il187
  rw [seg6Q4Il188Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il186Atoms (rho : Nat -> Seg6.F) : seg6Q4Il186 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il186
  rw [seg6Q4Il187Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il185Atoms (rho : Nat -> Seg6.F) : seg6Q4Il185 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il185
  rw [seg6Q4Il186Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il184Atoms (rho : Nat -> Seg6.F) : seg6Q4Il184 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il184
  rw [seg6Q4Il185Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il183Atoms (rho : Nat -> Seg6.F) : seg6Q4Il183 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il183
  rw [seg6Q4Il184Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il182Atoms (rho : Nat -> Seg6.F) : seg6Q4Il182 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il182
  rw [seg6Q4Il183Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il181Atoms (rho : Nat -> Seg6.F) : seg6Q4Il181 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il181
  rw [seg6Q4Il182Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il180Atoms (rho : Nat -> Seg6.F) : seg6Q4Il180 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il180
  rw [seg6Q4Il181Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il179Atoms (rho : Nat -> Seg6.F) : seg6Q4Il179 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il179
  rw [seg6Q4Il180Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il178Atoms (rho : Nat -> Seg6.F) : seg6Q4Il178 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il178
  rw [seg6Q4Il179Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il177Atoms (rho : Nat -> Seg6.F) : seg6Q4Il177 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il177
  rw [seg6Q4Il178Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il176Atoms (rho : Nat -> Seg6.F) : seg6Q4Il176 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il176
  rw [seg6Q4Il177Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il175Atoms (rho : Nat -> Seg6.F) : seg6Q4Il175 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il175
  rw [seg6Q4Il176Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il174Atoms (rho : Nat -> Seg6.F) : seg6Q4Il174 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il174
  rw [seg6Q4Il175Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il173Atoms (rho : Nat -> Seg6.F) : seg6Q4Il173 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il173
  rw [seg6Q4Il174Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il172Atoms (rho : Nat -> Seg6.F) : seg6Q4Il172 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il172
  rw [seg6Q4Il173Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il171Atoms (rho : Nat -> Seg6.F) : seg6Q4Il171 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il171
  rw [seg6Q4Il172Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il170Atoms (rho : Nat -> Seg6.F) : seg6Q4Il170 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il170
  rw [seg6Q4Il171Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il169Atoms (rho : Nat -> Seg6.F) : seg6Q4Il169 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il169
  rw [seg6Q4Il170Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il168Atoms (rho : Nat -> Seg6.F) : seg6Q4Il168 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il168
  rw [seg6Q4Il169Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il167Atoms (rho : Nat -> Seg6.F) : seg6Q4Il167 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il167
  rw [seg6Q4Il168Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il166Atoms (rho : Nat -> Seg6.F) : seg6Q4Il166 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il166
  rw [seg6Q4Il167Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il165Atoms (rho : Nat -> Seg6.F) : seg6Q4Il165 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il165
  rw [seg6Q4Il166Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il164Atoms (rho : Nat -> Seg6.F) : seg6Q4Il164 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il164
  rw [seg6Q4Il165Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il163Atoms (rho : Nat -> Seg6.F) : seg6Q4Il163 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il163
  rw [seg6Q4Il164Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il162Atoms (rho : Nat -> Seg6.F) : seg6Q4Il162 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il162
  rw [seg6Q4Il163Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il161Atoms (rho : Nat -> Seg6.F) : seg6Q4Il161 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il161
  rw [seg6Q4Il162Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il160Atoms (rho : Nat -> Seg6.F) : seg6Q4Il160 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il160
  rw [seg6Q4Il161Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il159Atoms (rho : Nat -> Seg6.F) : seg6Q4Il159 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il159
  rw [seg6Q4Il160Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il158Atoms (rho : Nat -> Seg6.F) : seg6Q4Il158 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il158
  rw [seg6Q4Il159Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il157Atoms (rho : Nat -> Seg6.F) : seg6Q4Il157 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il157
  rw [seg6Q4Il158Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il156Atoms (rho : Nat -> Seg6.F) : seg6Q4Il156 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il156
  rw [seg6Q4Il157Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il155Atoms (rho : Nat -> Seg6.F) : seg6Q4Il155 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il155
  rw [seg6Q4Il156Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il154Atoms (rho : Nat -> Seg6.F) : seg6Q4Il154 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il154
  rw [seg6Q4Il155Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il153Atoms (rho : Nat -> Seg6.F) : seg6Q4Il153 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il153
  rw [seg6Q4Il154Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il152Atoms (rho : Nat -> Seg6.F) : seg6Q4Il152 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il152
  rw [seg6Q4Il153Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il151Atoms (rho : Nat -> Seg6.F) : seg6Q4Il151 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il151
  rw [seg6Q4Il152Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il150Atoms (rho : Nat -> Seg6.F) : seg6Q4Il150 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il150
  rw [seg6Q4Il151Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il149Atoms (rho : Nat -> Seg6.F) : seg6Q4Il149 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il149
  rw [seg6Q4Il150Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il148Atoms (rho : Nat -> Seg6.F) : seg6Q4Il148 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il148
  rw [seg6Q4Il149Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il147Atoms (rho : Nat -> Seg6.F) : seg6Q4Il147 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il147
  rw [seg6Q4Il148Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il146Atoms (rho : Nat -> Seg6.F) : seg6Q4Il146 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il146
  rw [seg6Q4Il147Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il145Atoms (rho : Nat -> Seg6.F) : seg6Q4Il145 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il145
  rw [seg6Q4Il146Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il144Atoms (rho : Nat -> Seg6.F) : seg6Q4Il144 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il144
  rw [seg6Q4Il145Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il143Atoms (rho : Nat -> Seg6.F) : seg6Q4Il143 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il143
  rw [seg6Q4Il144Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il142Atoms (rho : Nat -> Seg6.F) : seg6Q4Il142 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il142
  rw [seg6Q4Il143Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il141Atoms (rho : Nat -> Seg6.F) : seg6Q4Il141 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il141
  rw [seg6Q4Il142Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il140Atoms (rho : Nat -> Seg6.F) : seg6Q4Il140 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il140
  rw [seg6Q4Il141Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il139Atoms (rho : Nat -> Seg6.F) : seg6Q4Il139 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il139
  rw [seg6Q4Il140Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il138Atoms (rho : Nat -> Seg6.F) : seg6Q4Il138 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il138
  rw [seg6Q4Il139Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il137Atoms (rho : Nat -> Seg6.F) : seg6Q4Il137 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il137
  rw [seg6Q4Il138Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il136Atoms (rho : Nat -> Seg6.F) : seg6Q4Il136 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il136
  rw [seg6Q4Il137Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il135Atoms (rho : Nat -> Seg6.F) : seg6Q4Il135 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il135
  rw [seg6Q4Il136Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il134Atoms (rho : Nat -> Seg6.F) : seg6Q4Il134 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il134
  rw [seg6Q4Il135Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il133Atoms (rho : Nat -> Seg6.F) : seg6Q4Il133 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il133
  rw [seg6Q4Il134Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il132Atoms (rho : Nat -> Seg6.F) : seg6Q4Il132 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il132
  rw [seg6Q4Il133Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il131Atoms (rho : Nat -> Seg6.F) : seg6Q4Il131 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il131
  rw [seg6Q4Il132Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il130Atoms (rho : Nat -> Seg6.F) : seg6Q4Il130 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il130
  rw [seg6Q4Il131Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il129Atoms (rho : Nat -> Seg6.F) : seg6Q4Il129 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il129
  rw [seg6Q4Il130Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il128Atoms (rho : Nat -> Seg6.F) : seg6Q4Il128 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il128
  rw [seg6Q4Il129Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il127Atoms (rho : Nat -> Seg6.F) : seg6Q4Il127 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il127
  rw [seg6Q4Il128Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il126Atoms (rho : Nat -> Seg6.F) : seg6Q4Il126 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il126
  rw [seg6Q4Il127Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il125Atoms (rho : Nat -> Seg6.F) : seg6Q4Il125 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il125
  rw [seg6Q4Il126Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il124Atoms (rho : Nat -> Seg6.F) : seg6Q4Il124 rho = (0 : Seg6.F) := by
  unfold seg6Q4Il124
  rw [seg6Q4Il125Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il123Atoms (rho : Nat -> Seg6.F) : seg6Q4Il123 rho = seg6Q4IlAtom0 rho := by
  unfold seg6Q4Il123
  rw [seg6Q4Il124Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il122Atoms (rho : Nat -> Seg6.F) : seg6Q4Il122 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho := by
  unfold seg6Q4Il122
  rw [seg6Q4Il123Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il121Atoms (rho : Nat -> Seg6.F) : seg6Q4Il121 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho := by
  unfold seg6Q4Il121
  rw [seg6Q4Il122Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il120Atoms (rho : Nat -> Seg6.F) : seg6Q4Il120 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho := by
  unfold seg6Q4Il120
  rw [seg6Q4Il121Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il119Atoms (rho : Nat -> Seg6.F) : seg6Q4Il119 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho := by
  unfold seg6Q4Il119
  rw [seg6Q4Il120Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il118Atoms (rho : Nat -> Seg6.F) : seg6Q4Il118 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho := by
  unfold seg6Q4Il118
  rw [seg6Q4Il119Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il117Atoms (rho : Nat -> Seg6.F) : seg6Q4Il117 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho := by
  unfold seg6Q4Il117
  rw [seg6Q4Il118Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il116Atoms (rho : Nat -> Seg6.F) : seg6Q4Il116 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho := by
  unfold seg6Q4Il116
  rw [seg6Q4Il117Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il115Atoms (rho : Nat -> Seg6.F) : seg6Q4Il115 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho := by
  unfold seg6Q4Il115
  rw [seg6Q4Il116Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il114Atoms (rho : Nat -> Seg6.F) : seg6Q4Il114 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho := by
  unfold seg6Q4Il114
  rw [seg6Q4Il115Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il113Atoms (rho : Nat -> Seg6.F) : seg6Q4Il113 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho := by
  unfold seg6Q4Il113
  rw [seg6Q4Il114Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il112Atoms (rho : Nat -> Seg6.F) : seg6Q4Il112 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho := by
  unfold seg6Q4Il112
  rw [seg6Q4Il113Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il111Atoms (rho : Nat -> Seg6.F) : seg6Q4Il111 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho := by
  unfold seg6Q4Il111
  rw [seg6Q4Il112Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il110Atoms (rho : Nat -> Seg6.F) : seg6Q4Il110 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho := by
  unfold seg6Q4Il110
  rw [seg6Q4Il111Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il109Atoms (rho : Nat -> Seg6.F) : seg6Q4Il109 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho := by
  unfold seg6Q4Il109
  rw [seg6Q4Il110Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il108Atoms (rho : Nat -> Seg6.F) : seg6Q4Il108 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho := by
  unfold seg6Q4Il108
  rw [seg6Q4Il109Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il107Atoms (rho : Nat -> Seg6.F) : seg6Q4Il107 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho := by
  unfold seg6Q4Il107
  rw [seg6Q4Il108Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il106Atoms (rho : Nat -> Seg6.F) : seg6Q4Il106 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho := by
  unfold seg6Q4Il106
  rw [seg6Q4Il107Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il105Atoms (rho : Nat -> Seg6.F) : seg6Q4Il105 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho := by
  unfold seg6Q4Il105
  rw [seg6Q4Il106Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il104Atoms (rho : Nat -> Seg6.F) : seg6Q4Il104 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho := by
  unfold seg6Q4Il104
  rw [seg6Q4Il105Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il103Atoms (rho : Nat -> Seg6.F) : seg6Q4Il103 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho := by
  unfold seg6Q4Il103
  rw [seg6Q4Il104Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il102Atoms (rho : Nat -> Seg6.F) : seg6Q4Il102 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho := by
  unfold seg6Q4Il102
  rw [seg6Q4Il103Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il101Atoms (rho : Nat -> Seg6.F) : seg6Q4Il101 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho := by
  unfold seg6Q4Il101
  rw [seg6Q4Il102Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il100Atoms (rho : Nat -> Seg6.F) : seg6Q4Il100 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho := by
  unfold seg6Q4Il100
  rw [seg6Q4Il101Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il99Atoms (rho : Nat -> Seg6.F) : seg6Q4Il99 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho := by
  unfold seg6Q4Il99
  rw [seg6Q4Il100Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il98Atoms (rho : Nat -> Seg6.F) : seg6Q4Il98 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho := by
  unfold seg6Q4Il98
  rw [seg6Q4Il99Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il97Atoms (rho : Nat -> Seg6.F) : seg6Q4Il97 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho := by
  unfold seg6Q4Il97
  rw [seg6Q4Il98Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il96Atoms (rho : Nat -> Seg6.F) : seg6Q4Il96 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho := by
  unfold seg6Q4Il96
  rw [seg6Q4Il97Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il95Atoms (rho : Nat -> Seg6.F) : seg6Q4Il95 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho := by
  unfold seg6Q4Il95
  rw [seg6Q4Il96Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il94Atoms (rho : Nat -> Seg6.F) : seg6Q4Il94 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho := by
  unfold seg6Q4Il94
  rw [seg6Q4Il95Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il93Atoms (rho : Nat -> Seg6.F) : seg6Q4Il93 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho := by
  unfold seg6Q4Il93
  rw [seg6Q4Il94Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il92Atoms (rho : Nat -> Seg6.F) : seg6Q4Il92 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho := by
  unfold seg6Q4Il92
  rw [seg6Q4Il93Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il91Atoms (rho : Nat -> Seg6.F) : seg6Q4Il91 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho := by
  unfold seg6Q4Il91
  rw [seg6Q4Il92Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il90Atoms (rho : Nat -> Seg6.F) : seg6Q4Il90 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho := by
  unfold seg6Q4Il90
  rw [seg6Q4Il91Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il89Atoms (rho : Nat -> Seg6.F) : seg6Q4Il89 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho := by
  unfold seg6Q4Il89
  rw [seg6Q4Il90Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il88Atoms (rho : Nat -> Seg6.F) : seg6Q4Il88 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold seg6Q4Il88
  rw [seg6Q4Il89Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il87Atoms (rho : Nat -> Seg6.F) : seg6Q4Il87 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold seg6Q4Il87
  rw [seg6Q4Il88Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il86Atoms (rho : Nat -> Seg6.F) : seg6Q4Il86 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold seg6Q4Il86
  rw [seg6Q4Il87Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il85Atoms (rho : Nat -> Seg6.F) : seg6Q4Il85 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold seg6Q4Il85
  rw [seg6Q4Il86Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il84Atoms (rho : Nat -> Seg6.F) : seg6Q4Il84 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold seg6Q4Il84
  rw [seg6Q4Il85Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il83Atoms (rho : Nat -> Seg6.F) : seg6Q4Il83 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho := by
  unfold seg6Q4Il83
  rw [seg6Q4Il84Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il82Atoms (rho : Nat -> Seg6.F) : seg6Q4Il82 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho := by
  unfold seg6Q4Il82
  rw [seg6Q4Il83Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il81Atoms (rho : Nat -> Seg6.F) : seg6Q4Il81 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho := by
  unfold seg6Q4Il81
  rw [seg6Q4Il82Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il80Atoms (rho : Nat -> Seg6.F) : seg6Q4Il80 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho := by
  unfold seg6Q4Il80
  rw [seg6Q4Il81Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il79Atoms (rho : Nat -> Seg6.F) : seg6Q4Il79 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho := by
  unfold seg6Q4Il79
  rw [seg6Q4Il80Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il78Atoms (rho : Nat -> Seg6.F) : seg6Q4Il78 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho := by
  unfold seg6Q4Il78
  rw [seg6Q4Il79Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il77Atoms (rho : Nat -> Seg6.F) : seg6Q4Il77 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho := by
  unfold seg6Q4Il77
  rw [seg6Q4Il78Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il76Atoms (rho : Nat -> Seg6.F) : seg6Q4Il76 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho := by
  unfold seg6Q4Il76
  rw [seg6Q4Il77Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il75Atoms (rho : Nat -> Seg6.F) : seg6Q4Il75 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho := by
  unfold seg6Q4Il75
  rw [seg6Q4Il76Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il74Atoms (rho : Nat -> Seg6.F) : seg6Q4Il74 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il74
  rw [seg6Q4Il75Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il73Atoms (rho : Nat -> Seg6.F) : seg6Q4Il73 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il73
  rw [seg6Q4Il74Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il72Atoms (rho : Nat -> Seg6.F) : seg6Q4Il72 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il72
  rw [seg6Q4Il73Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il71Atoms (rho : Nat -> Seg6.F) : seg6Q4Il71 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il71
  rw [seg6Q4Il72Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il70Atoms (rho : Nat -> Seg6.F) : seg6Q4Il70 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il70
  rw [seg6Q4Il71Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il69Atoms (rho : Nat -> Seg6.F) : seg6Q4Il69 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il69
  rw [seg6Q4Il70Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il68Atoms (rho : Nat -> Seg6.F) : seg6Q4Il68 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il68
  rw [seg6Q4Il69Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il67Atoms (rho : Nat -> Seg6.F) : seg6Q4Il67 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold seg6Q4Il67
  rw [seg6Q4Il68Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il66Atoms (rho : Nat -> Seg6.F) : seg6Q4Il66 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho := by
  unfold seg6Q4Il66
  rw [seg6Q4Il67Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il65Atoms (rho : Nat -> Seg6.F) : seg6Q4Il65 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho := by
  unfold seg6Q4Il65
  rw [seg6Q4Il66Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il64Atoms (rho : Nat -> Seg6.F) : seg6Q4Il64 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho := by
  unfold seg6Q4Il64
  rw [seg6Q4Il65Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il63Atoms (rho : Nat -> Seg6.F) : seg6Q4Il63 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho := by
  unfold seg6Q4Il63
  rw [seg6Q4Il64Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il62Atoms (rho : Nat -> Seg6.F) : seg6Q4Il62 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho := by
  unfold seg6Q4Il62
  rw [seg6Q4Il63Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il61Atoms (rho : Nat -> Seg6.F) : seg6Q4Il61 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho := by
  unfold seg6Q4Il61
  rw [seg6Q4Il62Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il60Atoms (rho : Nat -> Seg6.F) : seg6Q4Il60 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho := by
  unfold seg6Q4Il60
  rw [seg6Q4Il61Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il59Atoms (rho : Nat -> Seg6.F) : seg6Q4Il59 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho := by
  unfold seg6Q4Il59
  rw [seg6Q4Il60Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il58Atoms (rho : Nat -> Seg6.F) : seg6Q4Il58 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho := by
  unfold seg6Q4Il58
  rw [seg6Q4Il59Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il57Atoms (rho : Nat -> Seg6.F) : seg6Q4Il57 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho := by
  unfold seg6Q4Il57
  rw [seg6Q4Il58Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il56Atoms (rho : Nat -> Seg6.F) : seg6Q4Il56 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho := by
  unfold seg6Q4Il56
  rw [seg6Q4Il57Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il55Atoms (rho : Nat -> Seg6.F) : seg6Q4Il55 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho := by
  unfold seg6Q4Il55
  rw [seg6Q4Il56Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il54Atoms (rho : Nat -> Seg6.F) : seg6Q4Il54 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho := by
  unfold seg6Q4Il54
  rw [seg6Q4Il55Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il53Atoms (rho : Nat -> Seg6.F) : seg6Q4Il53 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho := by
  unfold seg6Q4Il53
  rw [seg6Q4Il54Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il52Atoms (rho : Nat -> Seg6.F) : seg6Q4Il52 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho := by
  unfold seg6Q4Il52
  rw [seg6Q4Il53Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il51Atoms (rho : Nat -> Seg6.F) : seg6Q4Il51 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho := by
  unfold seg6Q4Il51
  rw [seg6Q4Il52Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il50Atoms (rho : Nat -> Seg6.F) : seg6Q4Il50 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho := by
  unfold seg6Q4Il50
  rw [seg6Q4Il51Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il49Atoms (rho : Nat -> Seg6.F) : seg6Q4Il49 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho := by
  unfold seg6Q4Il49
  rw [seg6Q4Il50Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il48Atoms (rho : Nat -> Seg6.F) : seg6Q4Il48 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho := by
  unfold seg6Q4Il48
  rw [seg6Q4Il49Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il47Atoms (rho : Nat -> Seg6.F) : seg6Q4Il47 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho := by
  unfold seg6Q4Il47
  rw [seg6Q4Il48Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il46Atoms (rho : Nat -> Seg6.F) : seg6Q4Il46 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho := by
  unfold seg6Q4Il46
  rw [seg6Q4Il47Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il45Atoms (rho : Nat -> Seg6.F) : seg6Q4Il45 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho := by
  unfold seg6Q4Il45
  rw [seg6Q4Il46Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il44Atoms (rho : Nat -> Seg6.F) : seg6Q4Il44 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho := by
  unfold seg6Q4Il44
  rw [seg6Q4Il45Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il43Atoms (rho : Nat -> Seg6.F) : seg6Q4Il43 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho := by
  unfold seg6Q4Il43
  rw [seg6Q4Il44Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il42Atoms (rho : Nat -> Seg6.F) : seg6Q4Il42 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho := by
  unfold seg6Q4Il42
  rw [seg6Q4Il43Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il41Atoms (rho : Nat -> Seg6.F) : seg6Q4Il41 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho := by
  unfold seg6Q4Il41
  rw [seg6Q4Il42Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il40Atoms (rho : Nat -> Seg6.F) : seg6Q4Il40 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho := by
  unfold seg6Q4Il40
  rw [seg6Q4Il41Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il39Atoms (rho : Nat -> Seg6.F) : seg6Q4Il39 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho := by
  unfold seg6Q4Il39
  rw [seg6Q4Il40Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il38Atoms (rho : Nat -> Seg6.F) : seg6Q4Il38 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho := by
  unfold seg6Q4Il38
  rw [seg6Q4Il39Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il37Atoms (rho : Nat -> Seg6.F) : seg6Q4Il37 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho := by
  unfold seg6Q4Il37
  rw [seg6Q4Il38Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il36Atoms (rho : Nat -> Seg6.F) : seg6Q4Il36 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho := by
  unfold seg6Q4Il36
  rw [seg6Q4Il37Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il35Atoms (rho : Nat -> Seg6.F) : seg6Q4Il35 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho := by
  unfold seg6Q4Il35
  rw [seg6Q4Il36Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il34Atoms (rho : Nat -> Seg6.F) : seg6Q4Il34 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho := by
  unfold seg6Q4Il34
  rw [seg6Q4Il35Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il33Atoms (rho : Nat -> Seg6.F) : seg6Q4Il33 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho := by
  unfold seg6Q4Il33
  rw [seg6Q4Il34Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il32Atoms (rho : Nat -> Seg6.F) : seg6Q4Il32 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho := by
  unfold seg6Q4Il32
  rw [seg6Q4Il33Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il31Atoms (rho : Nat -> Seg6.F) : seg6Q4Il31 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho := by
  unfold seg6Q4Il31
  rw [seg6Q4Il32Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il30Atoms (rho : Nat -> Seg6.F) : seg6Q4Il30 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho := by
  unfold seg6Q4Il30
  rw [seg6Q4Il31Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il29Atoms (rho : Nat -> Seg6.F) : seg6Q4Il29 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho := by
  unfold seg6Q4Il29
  rw [seg6Q4Il30Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il28Atoms (rho : Nat -> Seg6.F) : seg6Q4Il28 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho := by
  unfold seg6Q4Il28
  rw [seg6Q4Il29Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il27Atoms (rho : Nat -> Seg6.F) : seg6Q4Il27 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho := by
  unfold seg6Q4Il27
  rw [seg6Q4Il28Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il26Atoms (rho : Nat -> Seg6.F) : seg6Q4Il26 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho := by
  unfold seg6Q4Il26
  rw [seg6Q4Il27Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il25Atoms (rho : Nat -> Seg6.F) : seg6Q4Il25 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho := by
  unfold seg6Q4Il25
  rw [seg6Q4Il26Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il24Atoms (rho : Nat -> Seg6.F) : seg6Q4Il24 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il24
  rw [seg6Q4Il25Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il23Atoms (rho : Nat -> Seg6.F) : seg6Q4Il23 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il23
  rw [seg6Q4Il24Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il22Atoms (rho : Nat -> Seg6.F) : seg6Q4Il22 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il22
  rw [seg6Q4Il23Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il21Atoms (rho : Nat -> Seg6.F) : seg6Q4Il21 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il21
  rw [seg6Q4Il22Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il20Atoms (rho : Nat -> Seg6.F) : seg6Q4Il20 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il20
  rw [seg6Q4Il21Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il19Atoms (rho : Nat -> Seg6.F) : seg6Q4Il19 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il19
  rw [seg6Q4Il20Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il18Atoms (rho : Nat -> Seg6.F) : seg6Q4Il18 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il18
  rw [seg6Q4Il19Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il17Atoms (rho : Nat -> Seg6.F) : seg6Q4Il17 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il17
  rw [seg6Q4Il18Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il16Atoms (rho : Nat -> Seg6.F) : seg6Q4Il16 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold seg6Q4Il16
  rw [seg6Q4Il17Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il15Atoms (rho : Nat -> Seg6.F) : seg6Q4Il15 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho := by
  unfold seg6Q4Il15
  rw [seg6Q4Il16Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il14Atoms (rho : Nat -> Seg6.F) : seg6Q4Il14 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho := by
  unfold seg6Q4Il14
  rw [seg6Q4Il15Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il13Atoms (rho : Nat -> Seg6.F) : seg6Q4Il13 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho := by
  unfold seg6Q4Il13
  rw [seg6Q4Il14Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il12Atoms (rho : Nat -> Seg6.F) : seg6Q4Il12 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho := by
  unfold seg6Q4Il12
  rw [seg6Q4Il13Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il11Atoms (rho : Nat -> Seg6.F) : seg6Q4Il11 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il11
  rw [seg6Q4Il12Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il10Atoms (rho : Nat -> Seg6.F) : seg6Q4Il10 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il10
  rw [seg6Q4Il11Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il9Atoms (rho : Nat -> Seg6.F) : seg6Q4Il9 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il9
  rw [seg6Q4Il10Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il8Atoms (rho : Nat -> Seg6.F) : seg6Q4Il8 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il8
  rw [seg6Q4Il9Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il7Atoms (rho : Nat -> Seg6.F) : seg6Q4Il7 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il7
  rw [seg6Q4Il8Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il6Atoms (rho : Nat -> Seg6.F) : seg6Q4Il6 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il6
  rw [seg6Q4Il7Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il5Atoms (rho : Nat -> Seg6.F) : seg6Q4Il5 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il5
  rw [seg6Q4Il6Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il4Atoms (rho : Nat -> Seg6.F) : seg6Q4Il4 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il4
  rw [seg6Q4Il5Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il3Atoms (rho : Nat -> Seg6.F) : seg6Q4Il3 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold seg6Q4Il3
  rw [seg6Q4Il4Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il2Atoms (rho : Nat -> Seg6.F) : seg6Q4Il2 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho + seg6Q4IlAtom60 rho := by
  unfold seg6Q4Il2
  rw [seg6Q4Il3Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il1Atoms (rho : Nat -> Seg6.F) : seg6Q4Il1 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho + seg6Q4IlAtom60 rho := by
  unfold seg6Q4Il1
  rw [seg6Q4Il2Atoms rho] <;> simp only [zero_add]

theorem seg6Q4Il0Atoms (rho : Nat -> Seg6.F) : seg6Q4Il0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho + seg6Q4IlAtom60 rho + seg6Q4IlAtom61 rho := by
  unfold seg6Q4Il0
  rw [seg6Q4Il1Atoms rho] <;> simp only [zero_add]

theorem seg6Q4relationLc125Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc125Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc125Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc125Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc125Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho := by
  unfold Seg6.relationLc125Part1 seg6Q4IlAtom17
  ring

theorem seg6Q4relationLc125Atom (rho : Nat -> Seg6.F) : Seg6.relationLc125 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho := by
  unfold Seg6.relationLc125
  rw [seg6Q4relationLc125Part0Atom rho, seg6Q4relationLc125Part1Atom rho] <;> ring

theorem seg6Q4relationLc126Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc126Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc126Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc126Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc126Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho := by
  unfold Seg6.relationLc126Part1 seg6Q4IlAtom17 seg6Q4IlAtom18
  ring

theorem seg6Q4relationLc126Atom (rho : Nat -> Seg6.F) : Seg6.relationLc126 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho := by
  unfold Seg6.relationLc126
  rw [seg6Q4relationLc126Part0Atom rho, seg6Q4relationLc126Part1Atom rho] <;> ring

theorem seg6Q4relationLc127Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc127Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc127Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc127Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc127Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho := by
  unfold Seg6.relationLc127Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19
  ring

theorem seg6Q4relationLc127Atom (rho : Nat -> Seg6.F) : Seg6.relationLc127 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho := by
  unfold Seg6.relationLc127
  rw [seg6Q4relationLc127Part0Atom rho, seg6Q4relationLc127Part1Atom rho] <;> ring

theorem seg6Q4relationLc128Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc128Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc128Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc128Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc128Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho := by
  unfold Seg6.relationLc128Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20
  ring

theorem seg6Q4relationLc128Atom (rho : Nat -> Seg6.F) : Seg6.relationLc128 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho := by
  unfold Seg6.relationLc128
  rw [seg6Q4relationLc128Part0Atom rho, seg6Q4relationLc128Part1Atom rho] <;> ring

theorem seg6Q4relationLc129Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc129Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc129Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc129Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc129Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho := by
  unfold Seg6.relationLc129Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21
  ring

theorem seg6Q4relationLc129Atom (rho : Nat -> Seg6.F) : Seg6.relationLc129 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho := by
  unfold Seg6.relationLc129
  rw [seg6Q4relationLc129Part0Atom rho, seg6Q4relationLc129Part1Atom rho] <;> ring

theorem seg6Q4relationLc130Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc130Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc130Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc130Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc130Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho := by
  unfold Seg6.relationLc130Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22
  ring

theorem seg6Q4relationLc130Atom (rho : Nat -> Seg6.F) : Seg6.relationLc130 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho := by
  unfold Seg6.relationLc130
  rw [seg6Q4relationLc130Part0Atom rho, seg6Q4relationLc130Part1Atom rho] <;> ring

theorem seg6Q4relationLc131Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc131Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc131Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc131Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc131Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho := by
  unfold Seg6.relationLc131Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23
  ring

theorem seg6Q4relationLc131Atom (rho : Nat -> Seg6.F) : Seg6.relationLc131 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho := by
  unfold Seg6.relationLc131
  rw [seg6Q4relationLc131Part0Atom rho, seg6Q4relationLc131Part1Atom rho] <;> ring

theorem seg6Q4relationLc132Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc132Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc132Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc132Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc132Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho := by
  unfold Seg6.relationLc132Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24
  ring

theorem seg6Q4relationLc132Atom (rho : Nat -> Seg6.F) : Seg6.relationLc132 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho := by
  unfold Seg6.relationLc132
  rw [seg6Q4relationLc132Part0Atom rho, seg6Q4relationLc132Part1Atom rho] <;> ring

theorem seg6Q4relationLc133Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc133Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc133Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc133Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc133Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho := by
  unfold Seg6.relationLc133Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25
  ring

theorem seg6Q4relationLc133Atom (rho : Nat -> Seg6.F) : Seg6.relationLc133 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho := by
  unfold Seg6.relationLc133
  rw [seg6Q4relationLc133Part0Atom rho, seg6Q4relationLc133Part1Atom rho] <;> ring

theorem seg6Q4relationLc134Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc134Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc134Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc134Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc134Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold Seg6.relationLc134Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26
  ring

theorem seg6Q4relationLc134Atom (rho : Nat -> Seg6.F) : Seg6.relationLc134 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho := by
  unfold Seg6.relationLc134
  rw [seg6Q4relationLc134Part0Atom rho, seg6Q4relationLc134Part1Atom rho] <;> ring

theorem seg6Q4relationLc135Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc135Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc135Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc135Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc135Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho := by
  unfold Seg6.relationLc135Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27
  ring

theorem seg6Q4relationLc135Atom (rho : Nat -> Seg6.F) : Seg6.relationLc135 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho := by
  unfold Seg6.relationLc135
  rw [seg6Q4relationLc135Part0Atom rho, seg6Q4relationLc135Part1Atom rho] <;> ring

theorem seg6Q4relationLc136Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc136Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc136Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc136Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc136Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho := by
  unfold Seg6.relationLc136Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28
  ring

theorem seg6Q4relationLc136Atom (rho : Nat -> Seg6.F) : Seg6.relationLc136 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho := by
  unfold Seg6.relationLc136
  rw [seg6Q4relationLc136Part0Atom rho, seg6Q4relationLc136Part1Atom rho] <;> ring

theorem seg6Q4relationLc137Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc137Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc137Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc137Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc137Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho := by
  unfold Seg6.relationLc137Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29
  ring

theorem seg6Q4relationLc137Atom (rho : Nat -> Seg6.F) : Seg6.relationLc137 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho := by
  unfold Seg6.relationLc137
  rw [seg6Q4relationLc137Part0Atom rho, seg6Q4relationLc137Part1Atom rho] <;> ring

theorem seg6Q4relationLc138Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc138Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc138Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc138Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc138Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho := by
  unfold Seg6.relationLc138Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30
  ring

theorem seg6Q4relationLc138Atom (rho : Nat -> Seg6.F) : Seg6.relationLc138 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho := by
  unfold Seg6.relationLc138
  rw [seg6Q4relationLc138Part0Atom rho, seg6Q4relationLc138Part1Atom rho] <;> ring

theorem seg6Q4relationLc139Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc139Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc139Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc139Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc139Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho := by
  unfold Seg6.relationLc139Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31
  ring

theorem seg6Q4relationLc139Atom (rho : Nat -> Seg6.F) : Seg6.relationLc139 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho := by
  unfold Seg6.relationLc139
  rw [seg6Q4relationLc139Part0Atom rho, seg6Q4relationLc139Part1Atom rho] <;> ring

theorem seg6Q4relationLc140Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc140Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc140Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc140Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc140Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho := by
  unfold Seg6.relationLc140Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32
  ring

theorem seg6Q4relationLc140Atom (rho : Nat -> Seg6.F) : Seg6.relationLc140 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho := by
  unfold Seg6.relationLc140
  rw [seg6Q4relationLc140Part0Atom rho, seg6Q4relationLc140Part1Atom rho] <;> ring

theorem seg6Q4relationLc141Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc141Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc141Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc141Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc141Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc141Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc141Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc141Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold Seg6.relationLc141Part2 seg6Q4IlAtom34
  ring

theorem seg6Q4relationLc141Atom (rho : Nat -> Seg6.F) : Seg6.relationLc141 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho := by
  unfold Seg6.relationLc141
  rw [seg6Q4relationLc141Part0Atom rho, seg6Q4relationLc141Part1Atom rho, seg6Q4relationLc141Part2Atom rho] <;> ring

theorem seg6Q4relationLc142Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc142Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc142Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc142Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc142Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc142Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc142Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc142Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho := by
  unfold Seg6.relationLc142Part2 seg6Q4IlAtom34 seg6Q4IlAtom35
  ring

theorem seg6Q4relationLc142Atom (rho : Nat -> Seg6.F) : Seg6.relationLc142 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho := by
  unfold Seg6.relationLc142
  rw [seg6Q4relationLc142Part0Atom rho, seg6Q4relationLc142Part1Atom rho, seg6Q4relationLc142Part2Atom rho] <;> ring

theorem seg6Q4relationLc143Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc143Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc143Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc143Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc143Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc143Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc143Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc143Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho := by
  unfold Seg6.relationLc143Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36
  ring

theorem seg6Q4relationLc143Atom (rho : Nat -> Seg6.F) : Seg6.relationLc143 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho := by
  unfold Seg6.relationLc143
  rw [seg6Q4relationLc143Part0Atom rho, seg6Q4relationLc143Part1Atom rho, seg6Q4relationLc143Part2Atom rho] <;> ring

theorem seg6Q4relationLc144Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc144Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc144Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc144Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc144Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc144Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc144Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc144Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho := by
  unfold Seg6.relationLc144Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37
  ring

theorem seg6Q4relationLc144Atom (rho : Nat -> Seg6.F) : Seg6.relationLc144 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho := by
  unfold Seg6.relationLc144
  rw [seg6Q4relationLc144Part0Atom rho, seg6Q4relationLc144Part1Atom rho, seg6Q4relationLc144Part2Atom rho] <;> ring

theorem seg6Q4relationLc145Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc145Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc145Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc145Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc145Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc145Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc145Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc145Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho := by
  unfold Seg6.relationLc145Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38
  ring

theorem seg6Q4relationLc145Atom (rho : Nat -> Seg6.F) : Seg6.relationLc145 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho := by
  unfold Seg6.relationLc145
  rw [seg6Q4relationLc145Part0Atom rho, seg6Q4relationLc145Part1Atom rho, seg6Q4relationLc145Part2Atom rho] <;> ring

theorem seg6Q4relationLc146Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc146Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc146Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc146Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc146Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc146Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc146Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc146Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho := by
  unfold Seg6.relationLc146Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39
  ring

theorem seg6Q4relationLc146Atom (rho : Nat -> Seg6.F) : Seg6.relationLc146 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho := by
  unfold Seg6.relationLc146
  rw [seg6Q4relationLc146Part0Atom rho, seg6Q4relationLc146Part1Atom rho, seg6Q4relationLc146Part2Atom rho] <;> ring

theorem seg6Q4relationLc147Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc147Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc147Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc147Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc147Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc147Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc147Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc147Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho := by
  unfold Seg6.relationLc147Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40
  ring

theorem seg6Q4relationLc147Atom (rho : Nat -> Seg6.F) : Seg6.relationLc147 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho := by
  unfold Seg6.relationLc147
  rw [seg6Q4relationLc147Part0Atom rho, seg6Q4relationLc147Part1Atom rho, seg6Q4relationLc147Part2Atom rho] <;> ring

theorem seg6Q4relationLc148Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc148Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc148Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc148Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc148Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc148Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc148Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc148Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho := by
  unfold Seg6.relationLc148Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41
  ring

theorem seg6Q4relationLc148Atom (rho : Nat -> Seg6.F) : Seg6.relationLc148 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho := by
  unfold Seg6.relationLc148
  rw [seg6Q4relationLc148Part0Atom rho, seg6Q4relationLc148Part1Atom rho, seg6Q4relationLc148Part2Atom rho] <;> ring

theorem seg6Q4relationLc149Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc149Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc149Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc149Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc149Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc149Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc149Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc149Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho := by
  unfold Seg6.relationLc149Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42
  ring

theorem seg6Q4relationLc149Atom (rho : Nat -> Seg6.F) : Seg6.relationLc149 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho := by
  unfold Seg6.relationLc149
  rw [seg6Q4relationLc149Part0Atom rho, seg6Q4relationLc149Part1Atom rho, seg6Q4relationLc149Part2Atom rho] <;> ring

theorem seg6Q4relationLc150Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc150Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc150Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc150Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc150Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc150Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc150Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc150Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho := by
  unfold Seg6.relationLc150Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43
  ring

theorem seg6Q4relationLc150Atom (rho : Nat -> Seg6.F) : Seg6.relationLc150 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho := by
  unfold Seg6.relationLc150
  rw [seg6Q4relationLc150Part0Atom rho, seg6Q4relationLc150Part1Atom rho, seg6Q4relationLc150Part2Atom rho] <;> ring

theorem seg6Q4relationLc151Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc151Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc151Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc151Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc151Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc151Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc151Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc151Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho := by
  unfold Seg6.relationLc151Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44
  ring

theorem seg6Q4relationLc151Atom (rho : Nat -> Seg6.F) : Seg6.relationLc151 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho := by
  unfold Seg6.relationLc151
  rw [seg6Q4relationLc151Part0Atom rho, seg6Q4relationLc151Part1Atom rho, seg6Q4relationLc151Part2Atom rho] <;> ring

theorem seg6Q4relationLc152Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc152Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc152Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc152Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc152Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc152Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc152Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc152Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho := by
  unfold Seg6.relationLc152Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45
  ring

theorem seg6Q4relationLc152Atom (rho : Nat -> Seg6.F) : Seg6.relationLc152 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho := by
  unfold Seg6.relationLc152
  rw [seg6Q4relationLc152Part0Atom rho, seg6Q4relationLc152Part1Atom rho, seg6Q4relationLc152Part2Atom rho] <;> ring

theorem seg6Q4relationLc153Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc153Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc153Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc153Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc153Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc153Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc153Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc153Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho := by
  unfold Seg6.relationLc153Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46
  ring

theorem seg6Q4relationLc153Atom (rho : Nat -> Seg6.F) : Seg6.relationLc153 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho := by
  unfold Seg6.relationLc153
  rw [seg6Q4relationLc153Part0Atom rho, seg6Q4relationLc153Part1Atom rho, seg6Q4relationLc153Part2Atom rho] <;> ring

theorem seg6Q4relationLc154Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc154Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc154Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc154Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc154Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc154Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc154Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc154Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho := by
  unfold Seg6.relationLc154Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47
  ring

theorem seg6Q4relationLc154Atom (rho : Nat -> Seg6.F) : Seg6.relationLc154 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho := by
  unfold Seg6.relationLc154
  rw [seg6Q4relationLc154Part0Atom rho, seg6Q4relationLc154Part1Atom rho, seg6Q4relationLc154Part2Atom rho] <;> ring

theorem seg6Q4relationLc155Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc155Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc155Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc155Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc155Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc155Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc155Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc155Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho := by
  unfold Seg6.relationLc155Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48
  ring

theorem seg6Q4relationLc155Atom (rho : Nat -> Seg6.F) : Seg6.relationLc155 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho := by
  unfold Seg6.relationLc155
  rw [seg6Q4relationLc155Part0Atom rho, seg6Q4relationLc155Part1Atom rho, seg6Q4relationLc155Part2Atom rho] <;> ring

theorem seg6Q4relationLc156Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc156Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc156Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc156Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc156Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc156Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc156Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc156Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho := by
  unfold Seg6.relationLc156Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49
  ring

theorem seg6Q4relationLc156Atom (rho : Nat -> Seg6.F) : Seg6.relationLc156 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho := by
  unfold Seg6.relationLc156
  rw [seg6Q4relationLc156Part0Atom rho, seg6Q4relationLc156Part1Atom rho, seg6Q4relationLc156Part2Atom rho] <;> ring

theorem seg6Q4relationLc157Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc157Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc157Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc157Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc157Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc157Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc157Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc157Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc157Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc157Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc157Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho := by
  unfold Seg6.relationLc157Part3 seg6Q4IlAtom51
  ring

theorem seg6Q4relationLc157Atom (rho : Nat -> Seg6.F) : Seg6.relationLc157 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho := by
  unfold Seg6.relationLc157
  rw [seg6Q4relationLc157Part0Atom rho, seg6Q4relationLc157Part1Atom rho, seg6Q4relationLc157Part2Atom rho, seg6Q4relationLc157Part3Atom rho] <;> ring

theorem seg6Q4relationLc158Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc158Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc158Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc158Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc158Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc158Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc158Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc158Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc158Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc158Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc158Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho := by
  unfold Seg6.relationLc158Part3 seg6Q4IlAtom51 seg6Q4IlAtom52
  ring

theorem seg6Q4relationLc158Atom (rho : Nat -> Seg6.F) : Seg6.relationLc158 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho := by
  unfold Seg6.relationLc158
  rw [seg6Q4relationLc158Part0Atom rho, seg6Q4relationLc158Part1Atom rho, seg6Q4relationLc158Part2Atom rho, seg6Q4relationLc158Part3Atom rho] <;> ring

theorem seg6Q4relationLc159Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc159Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc159Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc159Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc159Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc159Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc159Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc159Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc159Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc159Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc159Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho := by
  unfold Seg6.relationLc159Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53
  ring

theorem seg6Q4relationLc159Atom (rho : Nat -> Seg6.F) : Seg6.relationLc159 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho := by
  unfold Seg6.relationLc159
  rw [seg6Q4relationLc159Part0Atom rho, seg6Q4relationLc159Part1Atom rho, seg6Q4relationLc159Part2Atom rho, seg6Q4relationLc159Part3Atom rho] <;> ring

theorem seg6Q4relationLc160Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc160Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc160Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc160Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc160Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc160Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc160Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc160Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc160Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc160Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc160Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho := by
  unfold Seg6.relationLc160Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54
  ring

theorem seg6Q4relationLc160Atom (rho : Nat -> Seg6.F) : Seg6.relationLc160 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho := by
  unfold Seg6.relationLc160
  rw [seg6Q4relationLc160Part0Atom rho, seg6Q4relationLc160Part1Atom rho, seg6Q4relationLc160Part2Atom rho, seg6Q4relationLc160Part3Atom rho] <;> ring

theorem seg6Q4relationLc161Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc161Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc161Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc161Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc161Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc161Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc161Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc161Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc161Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc161Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc161Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho := by
  unfold Seg6.relationLc161Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55
  ring

theorem seg6Q4relationLc161Atom (rho : Nat -> Seg6.F) : Seg6.relationLc161 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho := by
  unfold Seg6.relationLc161
  rw [seg6Q4relationLc161Part0Atom rho, seg6Q4relationLc161Part1Atom rho, seg6Q4relationLc161Part2Atom rho, seg6Q4relationLc161Part3Atom rho] <;> ring

theorem seg6Q4relationLc162Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc162Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc162Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc162Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc162Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc162Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc162Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc162Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc162Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc162Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc162Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold Seg6.relationLc162Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55 seg6Q4IlAtom56
  ring

theorem seg6Q4relationLc162Atom (rho : Nat -> Seg6.F) : Seg6.relationLc162 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho := by
  unfold Seg6.relationLc162
  rw [seg6Q4relationLc162Part0Atom rho, seg6Q4relationLc162Part1Atom rho, seg6Q4relationLc162Part2Atom rho, seg6Q4relationLc162Part3Atom rho] <;> ring

theorem seg6Q4relationLc163Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc163Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc163Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc163Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc163Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc163Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc163Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc163Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc163Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc163Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc163Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho := by
  unfold Seg6.relationLc163Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55 seg6Q4IlAtom56 seg6Q4IlAtom57
  ring

theorem seg6Q4relationLc163Atom (rho : Nat -> Seg6.F) : Seg6.relationLc163 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho := by
  unfold Seg6.relationLc163
  rw [seg6Q4relationLc163Part0Atom rho, seg6Q4relationLc163Part1Atom rho, seg6Q4relationLc163Part2Atom rho, seg6Q4relationLc163Part3Atom rho] <;> ring

theorem seg6Q4relationLc164Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc164Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc164Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc164Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc164Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc164Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc164Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc164Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc164Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc164Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc164Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho := by
  unfold Seg6.relationLc164Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55 seg6Q4IlAtom56 seg6Q4IlAtom57 seg6Q4IlAtom58
  ring

theorem seg6Q4relationLc164Atom (rho : Nat -> Seg6.F) : Seg6.relationLc164 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho := by
  unfold Seg6.relationLc164
  rw [seg6Q4relationLc164Part0Atom rho, seg6Q4relationLc164Part1Atom rho, seg6Q4relationLc164Part2Atom rho, seg6Q4relationLc164Part3Atom rho] <;> ring

theorem seg6Q4relationLc165Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc165Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc165Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc165Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc165Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc165Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc165Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc165Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc165Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc165Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc165Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold Seg6.relationLc165Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55 seg6Q4IlAtom56 seg6Q4IlAtom57 seg6Q4IlAtom58 seg6Q4IlAtom59
  ring

theorem seg6Q4relationLc165Atom (rho : Nat -> Seg6.F) : Seg6.relationLc165 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho := by
  unfold Seg6.relationLc165
  rw [seg6Q4relationLc165Part0Atom rho, seg6Q4relationLc165Part1Atom rho, seg6Q4relationLc165Part2Atom rho, seg6Q4relationLc165Part3Atom rho] <;> ring

theorem seg6Q4relationLc166Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc166Part0 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho := by
  unfold Seg6.relationLc166Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom16 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc166Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc166Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho := by
  unfold Seg6.relationLc166Part1 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32 seg6Q4IlAtom33
  ring

theorem seg6Q4relationLc166Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc166Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho := by
  unfold Seg6.relationLc166Part2 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49 seg6Q4IlAtom50
  ring

theorem seg6Q4relationLc166Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc166Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho + seg6Q4IlAtom60 rho := by
  unfold Seg6.relationLc166Part3 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55 seg6Q4IlAtom56 seg6Q4IlAtom57 seg6Q4IlAtom58 seg6Q4IlAtom59 seg6Q4IlAtom60
  ring

theorem seg6Q4relationLc166Atom (rho : Nat -> Seg6.F) : Seg6.relationLc166 rho = seg6Q4IlAtom0 rho + seg6Q4IlAtom1 rho + seg6Q4IlAtom2 rho + seg6Q4IlAtom3 rho + seg6Q4IlAtom4 rho + seg6Q4IlAtom5 rho + seg6Q4IlAtom6 rho + seg6Q4IlAtom7 rho + seg6Q4IlAtom8 rho + seg6Q4IlAtom9 rho + seg6Q4IlAtom10 rho + seg6Q4IlAtom11 rho + seg6Q4IlAtom12 rho + seg6Q4IlAtom13 rho + seg6Q4IlAtom14 rho + seg6Q4IlAtom15 rho + seg6Q4IlAtom16 rho + (-1 : Seg6.F) * seg6Q4IlAtom17 rho + seg6Q4IlAtom18 rho + seg6Q4IlAtom19 rho + seg6Q4IlAtom20 rho + seg6Q4IlAtom21 rho + seg6Q4IlAtom22 rho + seg6Q4IlAtom23 rho + seg6Q4IlAtom24 rho + seg6Q4IlAtom25 rho + seg6Q4IlAtom26 rho + seg6Q4IlAtom27 rho + seg6Q4IlAtom28 rho + seg6Q4IlAtom29 rho + seg6Q4IlAtom30 rho + seg6Q4IlAtom31 rho + seg6Q4IlAtom32 rho + seg6Q4IlAtom33 rho + (-1 : Seg6.F) * seg6Q4IlAtom34 rho + seg6Q4IlAtom35 rho + seg6Q4IlAtom36 rho + seg6Q4IlAtom37 rho + seg6Q4IlAtom38 rho + seg6Q4IlAtom39 rho + seg6Q4IlAtom40 rho + seg6Q4IlAtom41 rho + seg6Q4IlAtom42 rho + seg6Q4IlAtom43 rho + seg6Q4IlAtom44 rho + seg6Q4IlAtom45 rho + seg6Q4IlAtom46 rho + seg6Q4IlAtom47 rho + seg6Q4IlAtom48 rho + seg6Q4IlAtom49 rho + seg6Q4IlAtom50 rho + (-1 : Seg6.F) * seg6Q4IlAtom51 rho + seg6Q4IlAtom52 rho + seg6Q4IlAtom53 rho + seg6Q4IlAtom54 rho + seg6Q4IlAtom55 rho + seg6Q4IlAtom56 rho + seg6Q4IlAtom57 rho + seg6Q4IlAtom58 rho + seg6Q4IlAtom59 rho + seg6Q4IlAtom60 rho := by
  unfold Seg6.relationLc166
  rw [seg6Q4relationLc166Part0Atom rho, seg6Q4relationLc166Part1Atom rho, seg6Q4relationLc166Part2Atom rho, seg6Q4relationLc166Part3Atom rho] <;> ring

theorem seg6Q4relationLc167Part0Atom (rho : Nat -> Seg6.F) : Seg6.relationLc167Part0 rho = (1 : Seg6.F) + (-1 : Seg6.F) * seg6Q4IlAtom0 rho + (-1 : Seg6.F) * seg6Q4IlAtom1 rho + (-1 : Seg6.F) * seg6Q4IlAtom2 rho + (-1 : Seg6.F) * seg6Q4IlAtom3 rho + (-1 : Seg6.F) * seg6Q4IlAtom4 rho + (-1 : Seg6.F) * seg6Q4IlAtom5 rho + (-1 : Seg6.F) * seg6Q4IlAtom6 rho + (-1 : Seg6.F) * seg6Q4IlAtom7 rho + (-1 : Seg6.F) * seg6Q4IlAtom8 rho + (-1 : Seg6.F) * seg6Q4IlAtom9 rho + (-1 : Seg6.F) * seg6Q4IlAtom10 rho + (-1 : Seg6.F) * seg6Q4IlAtom11 rho + (-1 : Seg6.F) * seg6Q4IlAtom12 rho + (-1 : Seg6.F) * seg6Q4IlAtom13 rho + (-1 : Seg6.F) * seg6Q4IlAtom14 rho + (-1 : Seg6.F) * seg6Q4IlAtom15 rho := by
  unfold Seg6.relationLc167Part0 seg6Q4IlAtom0 seg6Q4IlAtom1 seg6Q4IlAtom10 seg6Q4IlAtom11 seg6Q4IlAtom12 seg6Q4IlAtom13 seg6Q4IlAtom14 seg6Q4IlAtom15 seg6Q4IlAtom2 seg6Q4IlAtom3 seg6Q4IlAtom4 seg6Q4IlAtom5 seg6Q4IlAtom6 seg6Q4IlAtom7 seg6Q4IlAtom8 seg6Q4IlAtom9
  ring

theorem seg6Q4relationLc167Part1Atom (rho : Nat -> Seg6.F) : Seg6.relationLc167Part1 rho = (-1 : Seg6.F) * seg6Q4IlAtom16 rho + seg6Q4IlAtom17 rho + (-1 : Seg6.F) * seg6Q4IlAtom18 rho + (-1 : Seg6.F) * seg6Q4IlAtom19 rho + (-1 : Seg6.F) * seg6Q4IlAtom20 rho + (-1 : Seg6.F) * seg6Q4IlAtom21 rho + (-1 : Seg6.F) * seg6Q4IlAtom22 rho + (-1 : Seg6.F) * seg6Q4IlAtom23 rho + (-1 : Seg6.F) * seg6Q4IlAtom24 rho + (-1 : Seg6.F) * seg6Q4IlAtom25 rho + (-1 : Seg6.F) * seg6Q4IlAtom26 rho + (-1 : Seg6.F) * seg6Q4IlAtom27 rho + (-1 : Seg6.F) * seg6Q4IlAtom28 rho + (-1 : Seg6.F) * seg6Q4IlAtom29 rho + (-1 : Seg6.F) * seg6Q4IlAtom30 rho + (-1 : Seg6.F) * seg6Q4IlAtom31 rho + (-1 : Seg6.F) * seg6Q4IlAtom32 rho := by
  unfold Seg6.relationLc167Part1 seg6Q4IlAtom16 seg6Q4IlAtom17 seg6Q4IlAtom18 seg6Q4IlAtom19 seg6Q4IlAtom20 seg6Q4IlAtom21 seg6Q4IlAtom22 seg6Q4IlAtom23 seg6Q4IlAtom24 seg6Q4IlAtom25 seg6Q4IlAtom26 seg6Q4IlAtom27 seg6Q4IlAtom28 seg6Q4IlAtom29 seg6Q4IlAtom30 seg6Q4IlAtom31 seg6Q4IlAtom32
  ring

theorem seg6Q4relationLc167Part2Atom (rho : Nat -> Seg6.F) : Seg6.relationLc167Part2 rho = (-1 : Seg6.F) * seg6Q4IlAtom33 rho + seg6Q4IlAtom34 rho + (-1 : Seg6.F) * seg6Q4IlAtom35 rho + (-1 : Seg6.F) * seg6Q4IlAtom36 rho + (-1 : Seg6.F) * seg6Q4IlAtom37 rho + (-1 : Seg6.F) * seg6Q4IlAtom38 rho + (-1 : Seg6.F) * seg6Q4IlAtom39 rho + (-1 : Seg6.F) * seg6Q4IlAtom40 rho + (-1 : Seg6.F) * seg6Q4IlAtom41 rho + (-1 : Seg6.F) * seg6Q4IlAtom42 rho + (-1 : Seg6.F) * seg6Q4IlAtom43 rho + (-1 : Seg6.F) * seg6Q4IlAtom44 rho + (-1 : Seg6.F) * seg6Q4IlAtom45 rho + (-1 : Seg6.F) * seg6Q4IlAtom46 rho + (-1 : Seg6.F) * seg6Q4IlAtom47 rho + (-1 : Seg6.F) * seg6Q4IlAtom48 rho + (-1 : Seg6.F) * seg6Q4IlAtom49 rho := by
  unfold Seg6.relationLc167Part2 seg6Q4IlAtom33 seg6Q4IlAtom34 seg6Q4IlAtom35 seg6Q4IlAtom36 seg6Q4IlAtom37 seg6Q4IlAtom38 seg6Q4IlAtom39 seg6Q4IlAtom40 seg6Q4IlAtom41 seg6Q4IlAtom42 seg6Q4IlAtom43 seg6Q4IlAtom44 seg6Q4IlAtom45 seg6Q4IlAtom46 seg6Q4IlAtom47 seg6Q4IlAtom48 seg6Q4IlAtom49
  ring

theorem seg6Q4relationLc167Part3Atom (rho : Nat -> Seg6.F) : Seg6.relationLc167Part3 rho = (-1 : Seg6.F) * seg6Q4IlAtom50 rho + seg6Q4IlAtom51 rho + (-1 : Seg6.F) * seg6Q4IlAtom52 rho + (-1 : Seg6.F) * seg6Q4IlAtom53 rho + (-1 : Seg6.F) * seg6Q4IlAtom54 rho + (-1 : Seg6.F) * seg6Q4IlAtom55 rho + (-1 : Seg6.F) * seg6Q4IlAtom56 rho + (-1 : Seg6.F) * seg6Q4IlAtom57 rho + (-1 : Seg6.F) * seg6Q4IlAtom58 rho + (-1 : Seg6.F) * seg6Q4IlAtom59 rho + (-1 : Seg6.F) * seg6Q4IlAtom60 rho + (-1 : Seg6.F) * seg6Q4IlAtom61 rho := by
  unfold Seg6.relationLc167Part3 seg6Q4IlAtom50 seg6Q4IlAtom51 seg6Q4IlAtom52 seg6Q4IlAtom53 seg6Q4IlAtom54 seg6Q4IlAtom55 seg6Q4IlAtom56 seg6Q4IlAtom57 seg6Q4IlAtom58 seg6Q4IlAtom59 seg6Q4IlAtom60 seg6Q4IlAtom61
  ring

theorem seg6Q4relationLc167Atom (rho : Nat -> Seg6.F) : Seg6.relationLc167 rho = (1 : Seg6.F) + (-1 : Seg6.F) * seg6Q4IlAtom0 rho + (-1 : Seg6.F) * seg6Q4IlAtom1 rho + (-1 : Seg6.F) * seg6Q4IlAtom2 rho + (-1 : Seg6.F) * seg6Q4IlAtom3 rho + (-1 : Seg6.F) * seg6Q4IlAtom4 rho + (-1 : Seg6.F) * seg6Q4IlAtom5 rho + (-1 : Seg6.F) * seg6Q4IlAtom6 rho + (-1 : Seg6.F) * seg6Q4IlAtom7 rho + (-1 : Seg6.F) * seg6Q4IlAtom8 rho + (-1 : Seg6.F) * seg6Q4IlAtom9 rho + (-1 : Seg6.F) * seg6Q4IlAtom10 rho + (-1 : Seg6.F) * seg6Q4IlAtom11 rho + (-1 : Seg6.F) * seg6Q4IlAtom12 rho + (-1 : Seg6.F) * seg6Q4IlAtom13 rho + (-1 : Seg6.F) * seg6Q4IlAtom14 rho + (-1 : Seg6.F) * seg6Q4IlAtom15 rho + (-1 : Seg6.F) * seg6Q4IlAtom16 rho + seg6Q4IlAtom17 rho + (-1 : Seg6.F) * seg6Q4IlAtom18 rho + (-1 : Seg6.F) * seg6Q4IlAtom19 rho + (-1 : Seg6.F) * seg6Q4IlAtom20 rho + (-1 : Seg6.F) * seg6Q4IlAtom21 rho + (-1 : Seg6.F) * seg6Q4IlAtom22 rho + (-1 : Seg6.F) * seg6Q4IlAtom23 rho + (-1 : Seg6.F) * seg6Q4IlAtom24 rho + (-1 : Seg6.F) * seg6Q4IlAtom25 rho + (-1 : Seg6.F) * seg6Q4IlAtom26 rho + (-1 : Seg6.F) * seg6Q4IlAtom27 rho + (-1 : Seg6.F) * seg6Q4IlAtom28 rho + (-1 : Seg6.F) * seg6Q4IlAtom29 rho + (-1 : Seg6.F) * seg6Q4IlAtom30 rho + (-1 : Seg6.F) * seg6Q4IlAtom31 rho + (-1 : Seg6.F) * seg6Q4IlAtom32 rho + (-1 : Seg6.F) * seg6Q4IlAtom33 rho + seg6Q4IlAtom34 rho + (-1 : Seg6.F) * seg6Q4IlAtom35 rho + (-1 : Seg6.F) * seg6Q4IlAtom36 rho + (-1 : Seg6.F) * seg6Q4IlAtom37 rho + (-1 : Seg6.F) * seg6Q4IlAtom38 rho + (-1 : Seg6.F) * seg6Q4IlAtom39 rho + (-1 : Seg6.F) * seg6Q4IlAtom40 rho + (-1 : Seg6.F) * seg6Q4IlAtom41 rho + (-1 : Seg6.F) * seg6Q4IlAtom42 rho + (-1 : Seg6.F) * seg6Q4IlAtom43 rho + (-1 : Seg6.F) * seg6Q4IlAtom44 rho + (-1 : Seg6.F) * seg6Q4IlAtom45 rho + (-1 : Seg6.F) * seg6Q4IlAtom46 rho + (-1 : Seg6.F) * seg6Q4IlAtom47 rho + (-1 : Seg6.F) * seg6Q4IlAtom48 rho + (-1 : Seg6.F) * seg6Q4IlAtom49 rho + (-1 : Seg6.F) * seg6Q4IlAtom50 rho + seg6Q4IlAtom51 rho + (-1 : Seg6.F) * seg6Q4IlAtom52 rho + (-1 : Seg6.F) * seg6Q4IlAtom53 rho + (-1 : Seg6.F) * seg6Q4IlAtom54 rho + (-1 : Seg6.F) * seg6Q4IlAtom55 rho + (-1 : Seg6.F) * seg6Q4IlAtom56 rho + (-1 : Seg6.F) * seg6Q4IlAtom57 rho + (-1 : Seg6.F) * seg6Q4IlAtom58 rho + (-1 : Seg6.F) * seg6Q4IlAtom59 rho + (-1 : Seg6.F) * seg6Q4IlAtom60 rho + (-1 : Seg6.F) * seg6Q4IlAtom61 rho := by
  unfold Seg6.relationLc167
  rw [seg6Q4relationLc167Part0Atom rho, seg6Q4relationLc167Part1Atom rho, seg6Q4relationLc167Part2Atom rho, seg6Q4relationLc167Part3Atom rho] <;> ring

theorem seg6Q4Step97IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc125 rho = seg6Q4Il98 rho := by
  rw [seg6Q4relationLc125Atom rho]
  exact (seg6Q4Il98Atoms rho).symm

theorem seg6Q4Step96IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc126 rho = seg6Q4Il97 rho := by
  rw [seg6Q4relationLc126Atom rho]
  exact (seg6Q4Il97Atoms rho).symm

theorem seg6Q4Step95IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc127 rho = seg6Q4Il96 rho := by
  rw [seg6Q4relationLc127Atom rho]
  exact (seg6Q4Il96Atoms rho).symm

theorem seg6Q4Step93IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc128 rho = seg6Q4Il94 rho := by
  rw [seg6Q4relationLc128Atom rho]
  exact (seg6Q4Il94Atoms rho).symm

theorem seg6Q4Step92IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc129 rho = seg6Q4Il93 rho := by
  rw [seg6Q4relationLc129Atom rho]
  exact (seg6Q4Il93Atoms rho).symm

theorem seg6Q4Step91IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc130 rho = seg6Q4Il92 rho := by
  rw [seg6Q4relationLc130Atom rho]
  exact (seg6Q4Il92Atoms rho).symm

theorem seg6Q4Step90IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc131 rho = seg6Q4Il91 rho := by
  rw [seg6Q4relationLc131Atom rho]
  exact (seg6Q4Il91Atoms rho).symm

theorem seg6Q4Step89IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc132 rho = seg6Q4Il90 rho := by
  rw [seg6Q4relationLc132Atom rho]
  exact (seg6Q4Il90Atoms rho).symm

theorem seg6Q4Step88IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc133 rho = seg6Q4Il89 rho := by
  rw [seg6Q4relationLc133Atom rho]
  exact (seg6Q4Il89Atoms rho).symm

theorem seg6Q4Step83IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc134 rho = seg6Q4Il84 rho := by
  rw [seg6Q4relationLc134Atom rho]
  exact (seg6Q4Il84Atoms rho).symm

theorem seg6Q4Step82IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc135 rho = seg6Q4Il83 rho := by
  rw [seg6Q4relationLc135Atom rho]
  exact (seg6Q4Il83Atoms rho).symm

theorem seg6Q4Step80IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc136 rho = seg6Q4Il81 rho := by
  rw [seg6Q4relationLc136Atom rho]
  exact (seg6Q4Il81Atoms rho).symm

theorem seg6Q4Step79IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc137 rho = seg6Q4Il80 rho := by
  rw [seg6Q4relationLc137Atom rho]
  exact (seg6Q4Il80Atoms rho).symm

theorem seg6Q4Step78IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc138 rho = seg6Q4Il79 rho := by
  rw [seg6Q4relationLc138Atom rho]
  exact (seg6Q4Il79Atoms rho).symm

theorem seg6Q4Step76IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc139 rho = seg6Q4Il77 rho := by
  rw [seg6Q4relationLc139Atom rho]
  exact (seg6Q4Il77Atoms rho).symm

theorem seg6Q4Step74IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc140 rho = seg6Q4Il75 rho := by
  rw [seg6Q4relationLc140Atom rho]
  exact (seg6Q4Il75Atoms rho).symm

theorem seg6Q4Step66IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc141 rho = seg6Q4Il67 rho := by
  rw [seg6Q4relationLc141Atom rho]
  exact (seg6Q4Il67Atoms rho).symm

theorem seg6Q4Step65IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc142 rho = seg6Q4Il66 rho := by
  rw [seg6Q4relationLc142Atom rho]
  exact (seg6Q4Il66Atoms rho).symm

theorem seg6Q4Step61IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc143 rho = seg6Q4Il62 rho := by
  rw [seg6Q4relationLc143Atom rho]
  exact (seg6Q4Il62Atoms rho).symm

theorem seg6Q4Step58IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc144 rho = seg6Q4Il59 rho := by
  rw [seg6Q4relationLc144Atom rho]
  exact (seg6Q4Il59Atoms rho).symm

theorem seg6Q4Step55IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc145 rho = seg6Q4Il56 rho := by
  rw [seg6Q4relationLc145Atom rho]
  exact (seg6Q4Il56Atoms rho).symm

theorem seg6Q4Step53IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc146 rho = seg6Q4Il54 rho := by
  rw [seg6Q4relationLc146Atom rho]
  exact (seg6Q4Il54Atoms rho).symm

theorem seg6Q4Step50IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc147 rho = seg6Q4Il51 rho := by
  rw [seg6Q4relationLc147Atom rho]
  exact (seg6Q4Il51Atoms rho).symm

theorem seg6Q4Step48IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc148 rho = seg6Q4Il49 rho := by
  rw [seg6Q4relationLc148Atom rho]
  exact (seg6Q4Il49Atoms rho).symm

theorem seg6Q4Step47IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc149 rho = seg6Q4Il48 rho := by
  rw [seg6Q4relationLc149Atom rho]
  exact (seg6Q4Il48Atoms rho).symm

theorem seg6Q4Step46IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc150 rho = seg6Q4Il47 rho := by
  rw [seg6Q4relationLc150Atom rho]
  exact (seg6Q4Il47Atoms rho).symm

theorem seg6Q4Step42IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc151 rho = seg6Q4Il43 rho := by
  rw [seg6Q4relationLc151Atom rho]
  exact (seg6Q4Il43Atoms rho).symm

theorem seg6Q4Step40IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc152 rho = seg6Q4Il41 rho := by
  rw [seg6Q4relationLc152Atom rho]
  exact (seg6Q4Il41Atoms rho).symm

theorem seg6Q4Step39IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc153 rho = seg6Q4Il40 rho := by
  rw [seg6Q4relationLc153Atom rho]
  exact (seg6Q4Il40Atoms rho).symm

theorem seg6Q4Step36IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc154 rho = seg6Q4Il37 rho := by
  rw [seg6Q4relationLc154Atom rho]
  exact (seg6Q4Il37Atoms rho).symm

theorem seg6Q4Step34IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc155 rho = seg6Q4Il35 rho := by
  rw [seg6Q4relationLc155Atom rho]
  exact (seg6Q4Il35Atoms rho).symm

theorem seg6Q4Step31IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc156 rho = seg6Q4Il32 rho := by
  rw [seg6Q4relationLc156Atom rho]
  exact (seg6Q4Il32Atoms rho).symm

theorem seg6Q4Step30IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc157 rho = seg6Q4Il31 rho := by
  rw [seg6Q4relationLc157Atom rho]
  exact (seg6Q4Il31Atoms rho).symm

theorem seg6Q4Step29IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc158 rho = seg6Q4Il30 rho := by
  rw [seg6Q4relationLc158Atom rho]
  exact (seg6Q4Il30Atoms rho).symm

theorem seg6Q4Step28IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc159 rho = seg6Q4Il29 rho := by
  rw [seg6Q4relationLc159Atom rho]
  exact (seg6Q4Il29Atoms rho).symm

theorem seg6Q4Step25IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc160 rho = seg6Q4Il26 rho := by
  rw [seg6Q4relationLc160Atom rho]
  exact (seg6Q4Il26Atoms rho).symm

theorem seg6Q4Step24IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc161 rho = seg6Q4Il25 rho := by
  rw [seg6Q4relationLc161Atom rho]
  exact (seg6Q4Il25Atoms rho).symm

theorem seg6Q4Step15IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc162 rho = seg6Q4Il16 rho := by
  rw [seg6Q4relationLc162Atom rho]
  exact (seg6Q4Il16Atoms rho).symm

theorem seg6Q4Step12IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc163 rho = seg6Q4Il13 rho := by
  rw [seg6Q4relationLc163Atom rho]
  exact (seg6Q4Il13Atoms rho).symm

theorem seg6Q4Step11IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc164 rho = seg6Q4Il12 rho := by
  rw [seg6Q4relationLc164Atom rho]
  exact (seg6Q4Il12Atoms rho).symm

theorem seg6Q4Step2IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc165 rho = seg6Q4Il3 rho := by
  rw [seg6Q4relationLc165Atom rho]
  exact (seg6Q4Il3Atoms rho).symm

theorem seg6Q4Step0IlLc (rho : Nat -> Seg6.F) : Seg6.relationLc166 rho = seg6Q4Il1 rho := by
  rw [seg6Q4relationLc166Atom rho]
  exact (seg6Q4Il1Atoms rho).symm

theorem seg6Q4TerminalIlLc (rho : Nat -> Seg6.F) : Seg6.relationLc167 rho = 1 - seg6Q4Il0 rho := by
  rw [seg6Q4relationLc167Atom rho]
  rw [seg6Q4Il0Atoms rho]
  ring

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1
