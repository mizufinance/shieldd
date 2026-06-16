; A1 bridge: the reducedness keystone, transported from the constructor form onto
; the REAL gnark 506-constraint CanonicalFqBits253 export
; (*GADGET-CANONICAL-FQ-BITS-constraints*).
;
; canonical-fq-bits-proof.lisp certifies the keystone over the *constructor*
; constraints `(make-range-check-constraints avars pivars (1- p) 253)`. This book
; discharges the remaining gadget-level obligation: that satisfying the compiled
; gnark slice ENTAILS satisfying that constructor instance (instantiated at the
; gnark wire names), hence packbv(bits) <= p-1 over the real circuit wires.
;
; The slice differs from the constructor only in ways that preserve satisfaction
; (all confirmed by exact structural diff, see canonical-fq-bits-lift.lisp):
;   * extra pack constraint (idx 0) -- dropped, not needed for reducedness.
;   * block order: gnark = pack . pi . a ; constructor = (append a pi).
;   * the 86 pi-constraints (idx 1..86) are BYTE-IDENTICAL to the constructor's
;     make-bitand pi-constraints at the gnark product wires INTERNAL-255..340.
;   * 87 one-bit positions: gnark boolean a*(1-a)=0 vs constructor a*(a-1)=0
;     (negation -- holdsp-equivalent).
;   * 166 zero-bit positions: gnark a*(1-pi-a)=w , w=0 (product-wire double) vs
;     constructor (1-pi-a)*a=0 (commuted, folded) -- holdsp-equivalent.
;
; pivars: gnark product wires at the 1-bit slots; fresh disjoint wires (1002+i) at
; the 0-bit slots and the MSB slot (those are aliased away by the constructor's
; pivar-renaming and never appear in a constraint).

(in-package "R1CS")

(include-book "canonical-fq-bits-proof")
(include-book "generated/gadget-canonical-fq-bits-r1cs")

(defconst *cfb-gnark-avars*
  '(INTERNAL-2 INTERNAL-3 INTERNAL-4 INTERNAL-5 INTERNAL-6 INTERNAL-7 INTERNAL-8 INTERNAL-9 INTERNAL-10 INTERNAL-11 INTERNAL-12 INTERNAL-13 INTERNAL-14 INTERNAL-15 INTERNAL-16 INTERNAL-17 INTERNAL-18 INTERNAL-19 INTERNAL-20 INTERNAL-21 INTERNAL-22 INTERNAL-23 INTERNAL-24 INTERNAL-25 INTERNAL-26 INTERNAL-27 INTERNAL-28 INTERNAL-29 INTERNAL-30 INTERNAL-31 INTERNAL-32 INTERNAL-33 INTERNAL-34 INTERNAL-35 INTERNAL-36 INTERNAL-37 INTERNAL-38 INTERNAL-39 INTERNAL-40 INTERNAL-41 INTERNAL-42 INTERNAL-43 INTERNAL-44 INTERNAL-45 INTERNAL-46 INTERNAL-47 INTERNAL-48 INTERNAL-49 INTERNAL-50 INTERNAL-51 INTERNAL-52 INTERNAL-53 INTERNAL-54 INTERNAL-55 INTERNAL-56 INTERNAL-57 INTERNAL-58 INTERNAL-59 INTERNAL-60 INTERNAL-61 INTERNAL-62 INTERNAL-63 INTERNAL-64 INTERNAL-65 INTERNAL-66 INTERNAL-67 INTERNAL-68 INTERNAL-69 INTERNAL-70 INTERNAL-71 INTERNAL-72 INTERNAL-73 INTERNAL-74 INTERNAL-75 INTERNAL-76 INTERNAL-77 INTERNAL-78 INTERNAL-79 INTERNAL-80 INTERNAL-81 INTERNAL-82 INTERNAL-83 INTERNAL-84 INTERNAL-85 INTERNAL-86 INTERNAL-87 INTERNAL-88 INTERNAL-89 INTERNAL-90 INTERNAL-91 INTERNAL-92 INTERNAL-93 INTERNAL-94 INTERNAL-95 INTERNAL-96 INTERNAL-97 INTERNAL-98 INTERNAL-99 INTERNAL-100 INTERNAL-101 INTERNAL-102 INTERNAL-103 INTERNAL-104 INTERNAL-105 INTERNAL-106 INTERNAL-107 INTERNAL-108 INTERNAL-109 INTERNAL-110 INTERNAL-111 INTERNAL-112 INTERNAL-113 INTERNAL-114 INTERNAL-115 INTERNAL-116 INTERNAL-117 INTERNAL-118 INTERNAL-119 INTERNAL-120 INTERNAL-121 INTERNAL-122 INTERNAL-123 INTERNAL-124 INTERNAL-125 INTERNAL-126 INTERNAL-127 INTERNAL-128 INTERNAL-129 INTERNAL-130 INTERNAL-131 INTERNAL-132 INTERNAL-133 INTERNAL-134 INTERNAL-135 INTERNAL-136 INTERNAL-137 INTERNAL-138 INTERNAL-139 INTERNAL-140 INTERNAL-141 INTERNAL-142 INTERNAL-143 INTERNAL-144 INTERNAL-145 INTERNAL-146 INTERNAL-147 INTERNAL-148 INTERNAL-149 INTERNAL-150 INTERNAL-151 INTERNAL-152 INTERNAL-153 INTERNAL-154 INTERNAL-155 INTERNAL-156 INTERNAL-157 INTERNAL-158 INTERNAL-159 INTERNAL-160 INTERNAL-161 INTERNAL-162 INTERNAL-163 INTERNAL-164 INTERNAL-165 INTERNAL-166 INTERNAL-167 INTERNAL-168 INTERNAL-169 INTERNAL-170 INTERNAL-171 INTERNAL-172 INTERNAL-173 INTERNAL-174 INTERNAL-175 INTERNAL-176 INTERNAL-177 INTERNAL-178 INTERNAL-179 INTERNAL-180 INTERNAL-181 INTERNAL-182 INTERNAL-183 INTERNAL-184 INTERNAL-185 INTERNAL-186 INTERNAL-187 INTERNAL-188 INTERNAL-189 INTERNAL-190 INTERNAL-191 INTERNAL-192 INTERNAL-193 INTERNAL-194 INTERNAL-195 INTERNAL-196 INTERNAL-197 INTERNAL-198 INTERNAL-199 INTERNAL-200 INTERNAL-201 INTERNAL-202 INTERNAL-203 INTERNAL-204 INTERNAL-205 INTERNAL-206 INTERNAL-207 INTERNAL-208 INTERNAL-209 INTERNAL-210 INTERNAL-211 INTERNAL-212 INTERNAL-213 INTERNAL-214 INTERNAL-215 INTERNAL-216 INTERNAL-217 INTERNAL-218 INTERNAL-219 INTERNAL-220 INTERNAL-221 INTERNAL-222 INTERNAL-223 INTERNAL-224 INTERNAL-225 INTERNAL-226 INTERNAL-227 INTERNAL-228 INTERNAL-229 INTERNAL-230 INTERNAL-231 INTERNAL-232 INTERNAL-233 INTERNAL-234 INTERNAL-235 INTERNAL-236 INTERNAL-237 INTERNAL-238 INTERNAL-239 INTERNAL-240 INTERNAL-241 INTERNAL-242 INTERNAL-243 INTERNAL-244 INTERNAL-245 INTERNAL-246 INTERNAL-247 INTERNAL-248 INTERNAL-249 INTERNAL-250 INTERNAL-251 INTERNAL-252 INTERNAL-253 INTERNAL-254))

(defconst *cfb-gnark-pivars*
  '(INTERNAL-1002 INTERNAL-1003 INTERNAL-1004 INTERNAL-1005 INTERNAL-1006 INTERNAL-1007 INTERNAL-1008 INTERNAL-1009 INTERNAL-1010 INTERNAL-1011 INTERNAL-1012 INTERNAL-1013 INTERNAL-1014 INTERNAL-1015 INTERNAL-1016 INTERNAL-1017 INTERNAL-1018 INTERNAL-1019 INTERNAL-1020 INTERNAL-1021 INTERNAL-1022 INTERNAL-1023 INTERNAL-1024 INTERNAL-1025 INTERNAL-1026 INTERNAL-1027 INTERNAL-1028 INTERNAL-1029 INTERNAL-1030 INTERNAL-1031 INTERNAL-1032 INTERNAL-1033 INTERNAL-1034 INTERNAL-1035 INTERNAL-1036 INTERNAL-1037 INTERNAL-1038 INTERNAL-1039 INTERNAL-1040 INTERNAL-1041 INTERNAL-1042 INTERNAL-1043 INTERNAL-1044 INTERNAL-1045 INTERNAL-1046 INTERNAL-1047 INTERNAL-1048 INTERNAL-340 INTERNAL-339 INTERNAL-1051 INTERNAL-1052 INTERNAL-1053 INTERNAL-338 INTERNAL-1055 INTERNAL-1056 INTERNAL-1057 INTERNAL-1058 INTERNAL-337 INTERNAL-1060 INTERNAL-336 INTERNAL-1062 INTERNAL-1063 INTERNAL-1064 INTERNAL-1065 INTERNAL-335 INTERNAL-1067 INTERNAL-1068 INTERNAL-1069 INTERNAL-1070 INTERNAL-1071 INTERNAL-1072 INTERNAL-1073 INTERNAL-1074 INTERNAL-1075 INTERNAL-1076 INTERNAL-1077 INTERNAL-1078 INTERNAL-1079 INTERNAL-1080 INTERNAL-1081 INTERNAL-1082 INTERNAL-1083 INTERNAL-1084 INTERNAL-1085 INTERNAL-1086 INTERNAL-1087 INTERNAL-1088 INTERNAL-1089 INTERNAL-1090 INTERNAL-1091 INTERNAL-1092 INTERNAL-1093 INTERNAL-334 INTERNAL-1095 INTERNAL-333 INTERNAL-332 INTERNAL-1098 INTERNAL-331 INTERNAL-330 INTERNAL-329 INTERNAL-328 INTERNAL-327 INTERNAL-326 INTERNAL-325 INTERNAL-1106 INTERNAL-324 INTERNAL-323 INTERNAL-1109 INTERNAL-322 INTERNAL-321 INTERNAL-320 INTERNAL-1113 INTERNAL-1114 INTERNAL-319 INTERNAL-1116 INTERNAL-318 INTERNAL-1118 INTERNAL-317 INTERNAL-1120 INTERNAL-316 INTERNAL-315 INTERNAL-1123 INTERNAL-1124 INTERNAL-314 INTERNAL-313 INTERNAL-1127 INTERNAL-312 INTERNAL-1129 INTERNAL-311 INTERNAL-1131 INTERNAL-1132 INTERNAL-1133 INTERNAL-1134 INTERNAL-1135 INTERNAL-1136 INTERNAL-1137 INTERNAL-1138 INTERNAL-1139 INTERNAL-1140 INTERNAL-1141 INTERNAL-310 INTERNAL-309 INTERNAL-1144 INTERNAL-308 INTERNAL-307 INTERNAL-306 INTERNAL-305 INTERNAL-1149 INTERNAL-304 INTERNAL-303 INTERNAL-1152 INTERNAL-1153 INTERNAL-1154 INTERNAL-1155 INTERNAL-302 INTERNAL-301 INTERNAL-300 INTERNAL-1159 INTERNAL-299 INTERNAL-1161 INTERNAL-1162 INTERNAL-298 INTERNAL-297 INTERNAL-296 INTERNAL-295 INTERNAL-1167 INTERNAL-1168 INTERNAL-1169 INTERNAL-294 INTERNAL-1171 INTERNAL-293 INTERNAL-292 INTERNAL-1174 INTERNAL-1175 INTERNAL-291 INTERNAL-1177 INTERNAL-1178 INTERNAL-1179 INTERNAL-290 INTERNAL-1181 INTERNAL-289 INTERNAL-288 INTERNAL-1184 INTERNAL-287 INTERNAL-1186 INTERNAL-1187 INTERNAL-1188 INTERNAL-1189 INTERNAL-1190 INTERNAL-286 INTERNAL-285 INTERNAL-1193 INTERNAL-1194 INTERNAL-284 INTERNAL-283 INTERNAL-1197 INTERNAL-282 INTERNAL-1199 INTERNAL-281 INTERNAL-1201 INTERNAL-280 INTERNAL-1203 INTERNAL-279 INTERNAL-1205 INTERNAL-1206 INTERNAL-278 INTERNAL-1208 INTERNAL-277 INTERNAL-1210 INTERNAL-1211 INTERNAL-276 INTERNAL-275 INTERNAL-1214 INTERNAL-274 INTERNAL-1216 INTERNAL-1217 INTERNAL-1218 INTERNAL-273 INTERNAL-1220 INTERNAL-272 INTERNAL-271 INTERNAL-1223 INTERNAL-1224 INTERNAL-270 INTERNAL-1226 INTERNAL-269 INTERNAL-268 INTERNAL-267 INTERNAL-266 INTERNAL-1231 INTERNAL-265 INTERNAL-1233 INTERNAL-264 INTERNAL-1235 INTERNAL-263 INTERNAL-1237 INTERNAL-1238 INTERNAL-262 INTERNAL-261 INTERNAL-1241 INTERNAL-260 INTERNAL-259 INTERNAL-1244 INTERNAL-258 INTERNAL-1246 INTERNAL-257 INTERNAL-1248 INTERNAL-256 INTERNAL-1250 INTERNAL-255 INTERNAL-1252 INTERNAL-1253 INTERNAL-1254))

;; Block split of the gnark slice (pack . pi . a). Indices verified by structural
;; diff against the make-range-check-constraints constructor at the gnark wires.
(defconst *cfb-slice-pack* (take 1 *GADGET-CANONICAL-FQ-BITS-constraints*))
(defconst *cfb-slice-pi*   (take 86 (nthcdr 1 *GADGET-CANONICAL-FQ-BITS-constraints*)))
(defconst *cfb-slice-a*    (nthcdr 87 *GADGET-CANONICAL-FQ-BITS-constraints*))

;; The keystone constructor instance, at the gnark wire names.
(defconst *cfb-constructor*
  (make-range-check-constraints *cfb-gnark-avars* *cfb-gnark-pivars* *fq-c* 253))

;; (a) gnark slice = pack ++ pi ++ a  (ground structural identity).
(defthm cfb-slice-block-decomposition
  (equal *GADGET-CANONICAL-FQ-BITS-constraints*
         (append *cfb-slice-pack* (append *cfb-slice-pi* *cfb-slice-a*)))
  :rule-classes nil)

;; (b) Generic 3-way append split for holdp.
(defthm r1cs-constraints-holdp-of-append-3
  (equal (r1cs-constraints-holdp (append a (append b c)) v p)
         (and (r1cs-constraints-holdp a v p)
              (r1cs-constraints-holdp b v p)
              (r1cs-constraints-holdp c v p)))
  :hints (("Goal" :in-theory (enable r1cs-constraints-holdp-of-append))))

;; (c) slice holdp <=> pack ^ pi ^ a (holdp disabled so the 506-element constant
;;     is never expanded element-by-element). Same idiom as
;;     asset-registry-gap-holdp-decomposition.
(defthm cfb-slice-holdp-decomposition
  (equal (r1cs-constraints-holdp *GADGET-CANONICAL-FQ-BITS-constraints* valuation prime)
         (and (r1cs-constraints-holdp *cfb-slice-pack* valuation prime)
              (r1cs-constraints-holdp *cfb-slice-pi*   valuation prime)
              (r1cs-constraints-holdp *cfb-slice-a*    valuation prime)))
  :hints (("Goal"
           :use ((:instance r1cs-constraints-holdp-of-append-3
                            (a *cfb-slice-pack*) (b *cfb-slice-pi*) (c *cfb-slice-a*)
                            (v valuation) (p prime))
                 cfb-slice-block-decomposition)
           :in-theory (disable r1cs-constraints-holdp-of-append-3
                               r1cs-constraints-holdp
                               r1cs-constraints-holdp-of-append))))

;; ----------------------------------------------------------------------------
;; Constructor instance, split into its a-constraints (253) ++ pi-constraints (86).
(defconst *cfb-cons-a*  (take 253 *cfb-constructor*))
(defconst *cfb-cons-pi* (nthcdr 253 *cfb-constructor*))

;; Validate the pivar construction: the constructor's pi-constraints are
;; BYTE-IDENTICAL to the gnark pi-block (idx 1..86) at the product wires.
(defthm cfb-cons-pi-equals-slice-pi
  (equal *cfb-cons-pi* *cfb-slice-pi*)
  :rule-classes nil)
; ----------------------------------------------------------------------------
; a-block entailment: holdp(*cfb-slice-a*) (419) => holdp(*cfb-cons-a*) (253).
; The slice a-region (descending bit 252..0) is lockstep with the constructor
; a-constraints, but each of the 166 zero-bit positions compiles to two gnark
; constraints (a*(1-pi-a)=w ; w=0) vs the constructor's single (1-pi-a)*a=0, and
; the 87 one-bit positions flip sign (a*(1-a)=0 vs a*(a-1)=0). Both deltas are
; holdsp-preserving, discharged by prime-field normalization in 72 bit-aligned
; chunks (slice-constraint budget 6) to bound each goal's case-split, then
; assembled with a 72-way holdp-of-append split.

; Segment defconsts (bit-aligned; slice carries 1 or 2 constraints per bit).
(defconst *cs0* (take 4 (nthcdr 0 *cfb-cons-a*)))
(defconst *ss0* (take 6 (nthcdr 0 *cfb-slice-a*)))
(defconst *cs1* (take 4 (nthcdr 4 *cfb-cons-a*)))
(defconst *ss1* (take 6 (nthcdr 6 *cfb-slice-a*)))
(defconst *cs2* (take 4 (nthcdr 8 *cfb-cons-a*)))
(defconst *ss2* (take 6 (nthcdr 12 *cfb-slice-a*)))
(defconst *cs3* (take 4 (nthcdr 12 *cfb-cons-a*)))
(defconst *ss3* (take 5 (nthcdr 18 *cfb-slice-a*)))
(defconst *cs4* (take 3 (nthcdr 16 *cfb-cons-a*)))
(defconst *ss4* (take 5 (nthcdr 23 *cfb-slice-a*)))
(defconst *cs5* (take 4 (nthcdr 19 *cfb-cons-a*)))
(defconst *ss5* (take 6 (nthcdr 28 *cfb-slice-a*)))
(defconst *cs6* (take 5 (nthcdr 23 *cfb-cons-a*)))
(defconst *ss6* (take 6 (nthcdr 34 *cfb-slice-a*)))
(defconst *cs7* (take 3 (nthcdr 28 *cfb-cons-a*)))
(defconst *ss7* (take 5 (nthcdr 40 *cfb-slice-a*)))
(defconst *cs8* (take 4 (nthcdr 31 *cfb-cons-a*)))
(defconst *ss8* (take 6 (nthcdr 45 *cfb-slice-a*)))
(defconst *cs9* (take 3 (nthcdr 35 *cfb-cons-a*)))
(defconst *ss9* (take 5 (nthcdr 51 *cfb-slice-a*)))
(defconst *cs10* (take 4 (nthcdr 38 *cfb-cons-a*)))
(defconst *ss10* (take 6 (nthcdr 56 *cfb-slice-a*)))
(defconst *cs11* (take 4 (nthcdr 42 *cfb-cons-a*)))
(defconst *ss11* (take 6 (nthcdr 62 *cfb-slice-a*)))
(defconst *cs12* (take 3 (nthcdr 46 *cfb-cons-a*)))
(defconst *ss12* (take 5 (nthcdr 68 *cfb-slice-a*)))
(defconst *cs13* (take 4 (nthcdr 49 *cfb-cons-a*)))
(defconst *ss13* (take 6 (nthcdr 73 *cfb-slice-a*)))
(defconst *cs14* (take 4 (nthcdr 53 *cfb-cons-a*)))
(defconst *ss14* (take 6 (nthcdr 79 *cfb-slice-a*)))
(defconst *cs15* (take 4 (nthcdr 57 *cfb-cons-a*)))
(defconst *ss15* (take 6 (nthcdr 85 *cfb-slice-a*)))
(defconst *cs16* (take 4 (nthcdr 61 *cfb-cons-a*)))
(defconst *ss16* (take 6 (nthcdr 91 *cfb-slice-a*)))
(defconst *cs17* (take 3 (nthcdr 65 *cfb-cons-a*)))
(defconst *ss17* (take 6 (nthcdr 97 *cfb-slice-a*)))
(defconst *cs18* (take 4 (nthcdr 68 *cfb-cons-a*)))
(defconst *ss18* (take 6 (nthcdr 103 *cfb-slice-a*)))
(defconst *cs19* (take 4 (nthcdr 72 *cfb-cons-a*)))
(defconst *ss19* (take 6 (nthcdr 109 *cfb-slice-a*)))
(defconst *cs20* (take 3 (nthcdr 76 *cfb-cons-a*)))
(defconst *ss20* (take 5 (nthcdr 115 *cfb-slice-a*)))
(defconst *cs21* (take 4 (nthcdr 79 *cfb-cons-a*)))
(defconst *ss21* (take 6 (nthcdr 120 *cfb-slice-a*)))
(defconst *cs22* (take 3 (nthcdr 83 *cfb-cons-a*)))
(defconst *ss22* (take 5 (nthcdr 126 *cfb-slice-a*)))
(defconst *cs23* (take 4 (nthcdr 86 *cfb-cons-a*)))
(defconst *ss23* (take 6 (nthcdr 131 *cfb-slice-a*)))
(defconst *cs24* (take 4 (nthcdr 90 *cfb-cons-a*)))
(defconst *ss24* (take 6 (nthcdr 137 *cfb-slice-a*)))
(defconst *cs25* (take 5 (nthcdr 94 *cfb-cons-a*)))
(defconst *ss25* (take 6 (nthcdr 143 *cfb-slice-a*)))
(defconst *cs26* (take 3 (nthcdr 99 *cfb-cons-a*)))
(defconst *ss26* (take 6 (nthcdr 149 *cfb-slice-a*)))
(defconst *cs27* (take 4 (nthcdr 102 *cfb-cons-a*)))
(defconst *ss27* (take 6 (nthcdr 155 *cfb-slice-a*)))
(defconst *cs28* (take 5 (nthcdr 106 *cfb-cons-a*)))
(defconst *ss28* (take 6 (nthcdr 161 *cfb-slice-a*)))
(defconst *cs29* (take 4 (nthcdr 111 *cfb-cons-a*)))
(defconst *ss29* (take 6 (nthcdr 167 *cfb-slice-a*)))
(defconst *cs30* (take 3 (nthcdr 115 *cfb-cons-a*)))
(defconst *ss30* (take 6 (nthcdr 173 *cfb-slice-a*)))
(defconst *cs31* (take 3 (nthcdr 118 *cfb-cons-a*)))
(defconst *ss31* (take 6 (nthcdr 179 *cfb-slice-a*)))
(defconst *cs32* (take 3 (nthcdr 121 *cfb-cons-a*)))
(defconst *ss32* (take 6 (nthcdr 185 *cfb-slice-a*)))
(defconst *cs33* (take 4 (nthcdr 124 *cfb-cons-a*)))
(defconst *ss33* (take 6 (nthcdr 191 *cfb-slice-a*)))
(defconst *cs34* (take 4 (nthcdr 128 *cfb-cons-a*)))
(defconst *ss34* (take 6 (nthcdr 197 *cfb-slice-a*)))
(defconst *cs35* (take 4 (nthcdr 132 *cfb-cons-a*)))
(defconst *ss35* (take 5 (nthcdr 203 *cfb-slice-a*)))
(defconst *cs36* (take 4 (nthcdr 136 *cfb-cons-a*)))
(defconst *ss36* (take 6 (nthcdr 208 *cfb-slice-a*)))
(defconst *cs37* (take 4 (nthcdr 140 *cfb-cons-a*)))
(defconst *ss37* (take 6 (nthcdr 214 *cfb-slice-a*)))
(defconst *cs38* (take 4 (nthcdr 144 *cfb-cons-a*)))
(defconst *ss38* (take 5 (nthcdr 220 *cfb-slice-a*)))
(defconst *cs39* (take 5 (nthcdr 148 *cfb-cons-a*)))
(defconst *ss39* (take 6 (nthcdr 225 *cfb-slice-a*)))
(defconst *cs40* (take 5 (nthcdr 153 *cfb-cons-a*)))
(defconst *ss40* (take 6 (nthcdr 231 *cfb-slice-a*)))
(defconst *cs41* (take 4 (nthcdr 158 *cfb-cons-a*)))
(defconst *ss41* (take 6 (nthcdr 237 *cfb-slice-a*)))
(defconst *cs42* (take 3 (nthcdr 162 *cfb-cons-a*)))
(defconst *ss42* (take 6 (nthcdr 243 *cfb-slice-a*)))
(defconst *cs43* (take 3 (nthcdr 165 *cfb-cons-a*)))
(defconst *ss43* (take 6 (nthcdr 249 *cfb-slice-a*)))
(defconst *cs44* (take 3 (nthcdr 168 *cfb-cons-a*)))
(defconst *ss44* (take 6 (nthcdr 255 *cfb-slice-a*)))
(defconst *cs45* (take 3 (nthcdr 171 *cfb-cons-a*)))
(defconst *ss45* (take 6 (nthcdr 261 *cfb-slice-a*)))
(defconst *cs46* (take 3 (nthcdr 174 *cfb-cons-a*)))
(defconst *ss46* (take 6 (nthcdr 267 *cfb-slice-a*)))
(defconst *cs47* (take 3 (nthcdr 177 *cfb-cons-a*)))
(defconst *ss47* (take 6 (nthcdr 273 *cfb-slice-a*)))
(defconst *cs48* (take 3 (nthcdr 180 *cfb-cons-a*)))
(defconst *ss48* (take 6 (nthcdr 279 *cfb-slice-a*)))
(defconst *cs49* (take 3 (nthcdr 183 *cfb-cons-a*)))
(defconst *ss49* (take 6 (nthcdr 285 *cfb-slice-a*)))
(defconst *cs50* (take 3 (nthcdr 186 *cfb-cons-a*)))
(defconst *ss50* (take 5 (nthcdr 291 *cfb-slice-a*)))
(defconst *cs51* (take 3 (nthcdr 189 *cfb-cons-a*)))
(defconst *ss51* (take 6 (nthcdr 296 *cfb-slice-a*)))
(defconst *cs52* (take 4 (nthcdr 192 *cfb-cons-a*)))
(defconst *ss52* (take 6 (nthcdr 302 *cfb-slice-a*)))
(defconst *cs53* (take 3 (nthcdr 196 *cfb-cons-a*)))
(defconst *ss53* (take 6 (nthcdr 308 *cfb-slice-a*)))
(defconst *cs54* (take 3 (nthcdr 199 *cfb-cons-a*)))
(defconst *ss54* (take 5 (nthcdr 314 *cfb-slice-a*)))
(defconst *cs55* (take 4 (nthcdr 202 *cfb-cons-a*)))
(defconst *ss55* (take 6 (nthcdr 319 *cfb-slice-a*)))
(defconst *cs56* (take 3 (nthcdr 206 *cfb-cons-a*)))
(defconst *ss56* (take 6 (nthcdr 325 *cfb-slice-a*)))
(defconst *cs57* (take 3 (nthcdr 209 *cfb-cons-a*)))
(defconst *ss57* (take 6 (nthcdr 331 *cfb-slice-a*)))
(defconst *cs58* (take 3 (nthcdr 212 *cfb-cons-a*)))
(defconst *ss58* (take 6 (nthcdr 337 *cfb-slice-a*)))
(defconst *cs59* (take 3 (nthcdr 215 *cfb-cons-a*)))
(defconst *ss59* (take 6 (nthcdr 343 *cfb-slice-a*)))
(defconst *cs60* (take 3 (nthcdr 218 *cfb-cons-a*)))
(defconst *ss60* (take 6 (nthcdr 349 *cfb-slice-a*)))
(defconst *cs61* (take 3 (nthcdr 221 *cfb-cons-a*)))
(defconst *ss61* (take 6 (nthcdr 355 *cfb-slice-a*)))
(defconst *cs62* (take 3 (nthcdr 224 *cfb-cons-a*)))
(defconst *ss62* (take 6 (nthcdr 361 *cfb-slice-a*)))
(defconst *cs63* (take 3 (nthcdr 227 *cfb-cons-a*)))
(defconst *ss63* (take 6 (nthcdr 367 *cfb-slice-a*)))
(defconst *cs64* (take 3 (nthcdr 230 *cfb-cons-a*)))
(defconst *ss64* (take 6 (nthcdr 373 *cfb-slice-a*)))
(defconst *cs65* (take 3 (nthcdr 233 *cfb-cons-a*)))
(defconst *ss65* (take 6 (nthcdr 379 *cfb-slice-a*)))
(defconst *cs66* (take 3 (nthcdr 236 *cfb-cons-a*)))
(defconst *ss66* (take 6 (nthcdr 385 *cfb-slice-a*)))
(defconst *cs67* (take 3 (nthcdr 239 *cfb-cons-a*)))
(defconst *ss67* (take 6 (nthcdr 391 *cfb-slice-a*)))
(defconst *cs68* (take 3 (nthcdr 242 *cfb-cons-a*)))
(defconst *ss68* (take 6 (nthcdr 397 *cfb-slice-a*)))
(defconst *cs69* (take 3 (nthcdr 245 *cfb-cons-a*)))
(defconst *ss69* (take 6 (nthcdr 403 *cfb-slice-a*)))
(defconst *cs70* (take 3 (nthcdr 248 *cfb-cons-a*)))
(defconst *ss70* (take 6 (nthcdr 409 *cfb-slice-a*)))
(defconst *cs71* (take 2 (nthcdr 251 *cfb-cons-a*)))
(defconst *ss71* (take 4 (nthcdr 415 *cfb-slice-a*)))

; Generic 72-way holdp-of-append split (structural; base theory).
(defthm r1cs-constraints-holdp-of-append-72
  (equal (r1cs-constraints-holdp (append a0 (append a1 (append a2 (append a3 (append a4 (append a5 (append a6 (append a7 (append a8 (append a9 (append a10 (append a11 (append a12 (append a13 (append a14 (append a15 (append a16 (append a17 (append a18 (append a19 (append a20 (append a21 (append a22 (append a23 (append a24 (append a25 (append a26 (append a27 (append a28 (append a29 (append a30 (append a31 (append a32 (append a33 (append a34 (append a35 (append a36 (append a37 (append a38 (append a39 (append a40 (append a41 (append a42 (append a43 (append a44 (append a45 (append a46 (append a47 (append a48 (append a49 (append a50 (append a51 (append a52 (append a53 (append a54 (append a55 (append a56 (append a57 (append a58 (append a59 (append a60 (append a61 (append a62 (append a63 (append a64 (append a65 (append a66 (append a67 (append a68 (append a69 (append a70 a71))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) v p)
         (and (r1cs-constraints-holdp a0 v p) (r1cs-constraints-holdp a1 v p) (r1cs-constraints-holdp a2 v p) (r1cs-constraints-holdp a3 v p) (r1cs-constraints-holdp a4 v p) (r1cs-constraints-holdp a5 v p) (r1cs-constraints-holdp a6 v p) (r1cs-constraints-holdp a7 v p) (r1cs-constraints-holdp a8 v p) (r1cs-constraints-holdp a9 v p) (r1cs-constraints-holdp a10 v p) (r1cs-constraints-holdp a11 v p) (r1cs-constraints-holdp a12 v p) (r1cs-constraints-holdp a13 v p) (r1cs-constraints-holdp a14 v p) (r1cs-constraints-holdp a15 v p) (r1cs-constraints-holdp a16 v p) (r1cs-constraints-holdp a17 v p) (r1cs-constraints-holdp a18 v p) (r1cs-constraints-holdp a19 v p) (r1cs-constraints-holdp a20 v p) (r1cs-constraints-holdp a21 v p) (r1cs-constraints-holdp a22 v p) (r1cs-constraints-holdp a23 v p) (r1cs-constraints-holdp a24 v p) (r1cs-constraints-holdp a25 v p) (r1cs-constraints-holdp a26 v p) (r1cs-constraints-holdp a27 v p) (r1cs-constraints-holdp a28 v p) (r1cs-constraints-holdp a29 v p) (r1cs-constraints-holdp a30 v p) (r1cs-constraints-holdp a31 v p) (r1cs-constraints-holdp a32 v p) (r1cs-constraints-holdp a33 v p) (r1cs-constraints-holdp a34 v p) (r1cs-constraints-holdp a35 v p) (r1cs-constraints-holdp a36 v p) (r1cs-constraints-holdp a37 v p) (r1cs-constraints-holdp a38 v p) (r1cs-constraints-holdp a39 v p) (r1cs-constraints-holdp a40 v p) (r1cs-constraints-holdp a41 v p) (r1cs-constraints-holdp a42 v p) (r1cs-constraints-holdp a43 v p) (r1cs-constraints-holdp a44 v p) (r1cs-constraints-holdp a45 v p) (r1cs-constraints-holdp a46 v p) (r1cs-constraints-holdp a47 v p) (r1cs-constraints-holdp a48 v p) (r1cs-constraints-holdp a49 v p) (r1cs-constraints-holdp a50 v p) (r1cs-constraints-holdp a51 v p) (r1cs-constraints-holdp a52 v p) (r1cs-constraints-holdp a53 v p) (r1cs-constraints-holdp a54 v p) (r1cs-constraints-holdp a55 v p) (r1cs-constraints-holdp a56 v p) (r1cs-constraints-holdp a57 v p) (r1cs-constraints-holdp a58 v p) (r1cs-constraints-holdp a59 v p) (r1cs-constraints-holdp a60 v p) (r1cs-constraints-holdp a61 v p) (r1cs-constraints-holdp a62 v p) (r1cs-constraints-holdp a63 v p) (r1cs-constraints-holdp a64 v p) (r1cs-constraints-holdp a65 v p) (r1cs-constraints-holdp a66 v p) (r1cs-constraints-holdp a67 v p) (r1cs-constraints-holdp a68 v p) (r1cs-constraints-holdp a69 v p) (r1cs-constraints-holdp a70 v p) (r1cs-constraints-holdp a71 v p)))
  :hints (("Goal" :in-theory (enable r1cs-constraints-holdp-of-append))))

(defthm cfb-slice-a-append-decomp
  (equal *cfb-slice-a* (append *ss0* (append *ss1* (append *ss2* (append *ss3* (append *ss4* (append *ss5* (append *ss6* (append *ss7* (append *ss8* (append *ss9* (append *ss10* (append *ss11* (append *ss12* (append *ss13* (append *ss14* (append *ss15* (append *ss16* (append *ss17* (append *ss18* (append *ss19* (append *ss20* (append *ss21* (append *ss22* (append *ss23* (append *ss24* (append *ss25* (append *ss26* (append *ss27* (append *ss28* (append *ss29* (append *ss30* (append *ss31* (append *ss32* (append *ss33* (append *ss34* (append *ss35* (append *ss36* (append *ss37* (append *ss38* (append *ss39* (append *ss40* (append *ss41* (append *ss42* (append *ss43* (append *ss44* (append *ss45* (append *ss46* (append *ss47* (append *ss48* (append *ss49* (append *ss50* (append *ss51* (append *ss52* (append *ss53* (append *ss54* (append *ss55* (append *ss56* (append *ss57* (append *ss58* (append *ss59* (append *ss60* (append *ss61* (append *ss62* (append *ss63* (append *ss64* (append *ss65* (append *ss66* (append *ss67* (append *ss68* (append *ss69* (append *ss70* *ss71*))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  :rule-classes nil)

(defthm cfb-cons-a-append-decomp
  (equal *cfb-cons-a* (append *cs0* (append *cs1* (append *cs2* (append *cs3* (append *cs4* (append *cs5* (append *cs6* (append *cs7* (append *cs8* (append *cs9* (append *cs10* (append *cs11* (append *cs12* (append *cs13* (append *cs14* (append *cs15* (append *cs16* (append *cs17* (append *cs18* (append *cs19* (append *cs20* (append *cs21* (append *cs22* (append *cs23* (append *cs24* (append *cs25* (append *cs26* (append *cs27* (append *cs28* (append *cs29* (append *cs30* (append *cs31* (append *cs32* (append *cs33* (append *cs34* (append *cs35* (append *cs36* (append *cs37* (append *cs38* (append *cs39* (append *cs40* (append *cs41* (append *cs42* (append *cs43* (append *cs44* (append *cs45* (append *cs46* (append *cs47* (append *cs48* (append *cs49* (append *cs50* (append *cs51* (append *cs52* (append *cs53* (append *cs54* (append *cs55* (append *cs56* (append *cs57* (append *cs58* (append *cs59* (append *cs60* (append *cs61* (append *cs62* (append *cs63* (append *cs64* (append *cs65* (append *cs66* (append *cs67* (append *cs68* (append *cs69* (append *cs70* *cs71*))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
  :rule-classes nil)

; constructor = cons-a ++ cons-pi (cons-a = take 253, cons-pi = nthcdr 253).
(defthm cfb-constructor-append-decomp
  (equal *cfb-constructor* (append *cfb-cons-a* *cfb-cons-pi*))
  :rule-classes nil)

; Fold each block constant into its segment conjunction (used via :use below).
(defthm cfb-slice-a-holdp-split
  (equal (r1cs-constraints-holdp *cfb-slice-a* valuation prime)
         (and (r1cs-constraints-holdp *ss0* valuation prime) (r1cs-constraints-holdp *ss1* valuation prime) (r1cs-constraints-holdp *ss2* valuation prime) (r1cs-constraints-holdp *ss3* valuation prime) (r1cs-constraints-holdp *ss4* valuation prime) (r1cs-constraints-holdp *ss5* valuation prime) (r1cs-constraints-holdp *ss6* valuation prime) (r1cs-constraints-holdp *ss7* valuation prime) (r1cs-constraints-holdp *ss8* valuation prime) (r1cs-constraints-holdp *ss9* valuation prime) (r1cs-constraints-holdp *ss10* valuation prime) (r1cs-constraints-holdp *ss11* valuation prime) (r1cs-constraints-holdp *ss12* valuation prime) (r1cs-constraints-holdp *ss13* valuation prime) (r1cs-constraints-holdp *ss14* valuation prime) (r1cs-constraints-holdp *ss15* valuation prime) (r1cs-constraints-holdp *ss16* valuation prime) (r1cs-constraints-holdp *ss17* valuation prime) (r1cs-constraints-holdp *ss18* valuation prime) (r1cs-constraints-holdp *ss19* valuation prime) (r1cs-constraints-holdp *ss20* valuation prime) (r1cs-constraints-holdp *ss21* valuation prime) (r1cs-constraints-holdp *ss22* valuation prime) (r1cs-constraints-holdp *ss23* valuation prime) (r1cs-constraints-holdp *ss24* valuation prime) (r1cs-constraints-holdp *ss25* valuation prime) (r1cs-constraints-holdp *ss26* valuation prime) (r1cs-constraints-holdp *ss27* valuation prime) (r1cs-constraints-holdp *ss28* valuation prime) (r1cs-constraints-holdp *ss29* valuation prime) (r1cs-constraints-holdp *ss30* valuation prime) (r1cs-constraints-holdp *ss31* valuation prime) (r1cs-constraints-holdp *ss32* valuation prime) (r1cs-constraints-holdp *ss33* valuation prime) (r1cs-constraints-holdp *ss34* valuation prime) (r1cs-constraints-holdp *ss35* valuation prime) (r1cs-constraints-holdp *ss36* valuation prime) (r1cs-constraints-holdp *ss37* valuation prime) (r1cs-constraints-holdp *ss38* valuation prime) (r1cs-constraints-holdp *ss39* valuation prime) (r1cs-constraints-holdp *ss40* valuation prime) (r1cs-constraints-holdp *ss41* valuation prime) (r1cs-constraints-holdp *ss42* valuation prime) (r1cs-constraints-holdp *ss43* valuation prime) (r1cs-constraints-holdp *ss44* valuation prime) (r1cs-constraints-holdp *ss45* valuation prime) (r1cs-constraints-holdp *ss46* valuation prime) (r1cs-constraints-holdp *ss47* valuation prime) (r1cs-constraints-holdp *ss48* valuation prime) (r1cs-constraints-holdp *ss49* valuation prime) (r1cs-constraints-holdp *ss50* valuation prime) (r1cs-constraints-holdp *ss51* valuation prime) (r1cs-constraints-holdp *ss52* valuation prime) (r1cs-constraints-holdp *ss53* valuation prime) (r1cs-constraints-holdp *ss54* valuation prime) (r1cs-constraints-holdp *ss55* valuation prime) (r1cs-constraints-holdp *ss56* valuation prime) (r1cs-constraints-holdp *ss57* valuation prime) (r1cs-constraints-holdp *ss58* valuation prime) (r1cs-constraints-holdp *ss59* valuation prime) (r1cs-constraints-holdp *ss60* valuation prime) (r1cs-constraints-holdp *ss61* valuation prime) (r1cs-constraints-holdp *ss62* valuation prime) (r1cs-constraints-holdp *ss63* valuation prime) (r1cs-constraints-holdp *ss64* valuation prime) (r1cs-constraints-holdp *ss65* valuation prime) (r1cs-constraints-holdp *ss66* valuation prime) (r1cs-constraints-holdp *ss67* valuation prime) (r1cs-constraints-holdp *ss68* valuation prime) (r1cs-constraints-holdp *ss69* valuation prime) (r1cs-constraints-holdp *ss70* valuation prime) (r1cs-constraints-holdp *ss71* valuation prime)))
  :hints (("Goal" :use ((:instance r1cs-constraints-holdp-of-append-72 (v valuation) (p prime) (a0 *ss0*) (a1 *ss1*) (a2 *ss2*) (a3 *ss3*) (a4 *ss4*) (a5 *ss5*) (a6 *ss6*) (a7 *ss7*) (a8 *ss8*) (a9 *ss9*) (a10 *ss10*) (a11 *ss11*) (a12 *ss12*) (a13 *ss13*) (a14 *ss14*) (a15 *ss15*) (a16 *ss16*) (a17 *ss17*) (a18 *ss18*) (a19 *ss19*) (a20 *ss20*) (a21 *ss21*) (a22 *ss22*) (a23 *ss23*) (a24 *ss24*) (a25 *ss25*) (a26 *ss26*) (a27 *ss27*) (a28 *ss28*) (a29 *ss29*) (a30 *ss30*) (a31 *ss31*) (a32 *ss32*) (a33 *ss33*) (a34 *ss34*) (a35 *ss35*) (a36 *ss36*) (a37 *ss37*) (a38 *ss38*) (a39 *ss39*) (a40 *ss40*) (a41 *ss41*) (a42 *ss42*) (a43 *ss43*) (a44 *ss44*) (a45 *ss45*) (a46 *ss46*) (a47 *ss47*) (a48 *ss48*) (a49 *ss49*) (a50 *ss50*) (a51 *ss51*) (a52 *ss52*) (a53 *ss53*) (a54 *ss54*) (a55 *ss55*) (a56 *ss56*) (a57 *ss57*) (a58 *ss58*) (a59 *ss59*) (a60 *ss60*) (a61 *ss61*) (a62 *ss62*) (a63 *ss63*) (a64 *ss64*) (a65 *ss65*) (a66 *ss66*) (a67 *ss67*) (a68 *ss68*) (a69 *ss69*) (a70 *ss70*) (a71 *ss71*)) cfb-slice-a-append-decomp)
           :in-theory (disable r1cs-constraints-holdp-of-append-72
                               r1cs-constraints-holdp r1cs-constraints-holdp-of-append))))

(defthm cfb-cons-a-holdp-split
  (equal (r1cs-constraints-holdp *cfb-cons-a* valuation prime)
         (and (r1cs-constraints-holdp *cs0* valuation prime) (r1cs-constraints-holdp *cs1* valuation prime) (r1cs-constraints-holdp *cs2* valuation prime) (r1cs-constraints-holdp *cs3* valuation prime) (r1cs-constraints-holdp *cs4* valuation prime) (r1cs-constraints-holdp *cs5* valuation prime) (r1cs-constraints-holdp *cs6* valuation prime) (r1cs-constraints-holdp *cs7* valuation prime) (r1cs-constraints-holdp *cs8* valuation prime) (r1cs-constraints-holdp *cs9* valuation prime) (r1cs-constraints-holdp *cs10* valuation prime) (r1cs-constraints-holdp *cs11* valuation prime) (r1cs-constraints-holdp *cs12* valuation prime) (r1cs-constraints-holdp *cs13* valuation prime) (r1cs-constraints-holdp *cs14* valuation prime) (r1cs-constraints-holdp *cs15* valuation prime) (r1cs-constraints-holdp *cs16* valuation prime) (r1cs-constraints-holdp *cs17* valuation prime) (r1cs-constraints-holdp *cs18* valuation prime) (r1cs-constraints-holdp *cs19* valuation prime) (r1cs-constraints-holdp *cs20* valuation prime) (r1cs-constraints-holdp *cs21* valuation prime) (r1cs-constraints-holdp *cs22* valuation prime) (r1cs-constraints-holdp *cs23* valuation prime) (r1cs-constraints-holdp *cs24* valuation prime) (r1cs-constraints-holdp *cs25* valuation prime) (r1cs-constraints-holdp *cs26* valuation prime) (r1cs-constraints-holdp *cs27* valuation prime) (r1cs-constraints-holdp *cs28* valuation prime) (r1cs-constraints-holdp *cs29* valuation prime) (r1cs-constraints-holdp *cs30* valuation prime) (r1cs-constraints-holdp *cs31* valuation prime) (r1cs-constraints-holdp *cs32* valuation prime) (r1cs-constraints-holdp *cs33* valuation prime) (r1cs-constraints-holdp *cs34* valuation prime) (r1cs-constraints-holdp *cs35* valuation prime) (r1cs-constraints-holdp *cs36* valuation prime) (r1cs-constraints-holdp *cs37* valuation prime) (r1cs-constraints-holdp *cs38* valuation prime) (r1cs-constraints-holdp *cs39* valuation prime) (r1cs-constraints-holdp *cs40* valuation prime) (r1cs-constraints-holdp *cs41* valuation prime) (r1cs-constraints-holdp *cs42* valuation prime) (r1cs-constraints-holdp *cs43* valuation prime) (r1cs-constraints-holdp *cs44* valuation prime) (r1cs-constraints-holdp *cs45* valuation prime) (r1cs-constraints-holdp *cs46* valuation prime) (r1cs-constraints-holdp *cs47* valuation prime) (r1cs-constraints-holdp *cs48* valuation prime) (r1cs-constraints-holdp *cs49* valuation prime) (r1cs-constraints-holdp *cs50* valuation prime) (r1cs-constraints-holdp *cs51* valuation prime) (r1cs-constraints-holdp *cs52* valuation prime) (r1cs-constraints-holdp *cs53* valuation prime) (r1cs-constraints-holdp *cs54* valuation prime) (r1cs-constraints-holdp *cs55* valuation prime) (r1cs-constraints-holdp *cs56* valuation prime) (r1cs-constraints-holdp *cs57* valuation prime) (r1cs-constraints-holdp *cs58* valuation prime) (r1cs-constraints-holdp *cs59* valuation prime) (r1cs-constraints-holdp *cs60* valuation prime) (r1cs-constraints-holdp *cs61* valuation prime) (r1cs-constraints-holdp *cs62* valuation prime) (r1cs-constraints-holdp *cs63* valuation prime) (r1cs-constraints-holdp *cs64* valuation prime) (r1cs-constraints-holdp *cs65* valuation prime) (r1cs-constraints-holdp *cs66* valuation prime) (r1cs-constraints-holdp *cs67* valuation prime) (r1cs-constraints-holdp *cs68* valuation prime) (r1cs-constraints-holdp *cs69* valuation prime) (r1cs-constraints-holdp *cs70* valuation prime) (r1cs-constraints-holdp *cs71* valuation prime)))
  :hints (("Goal" :use ((:instance r1cs-constraints-holdp-of-append-72 (v valuation) (p prime) (a0 *cs0*) (a1 *cs1*) (a2 *cs2*) (a3 *cs3*) (a4 *cs4*) (a5 *cs5*) (a6 *cs6*) (a7 *cs7*) (a8 *cs8*) (a9 *cs9*) (a10 *cs10*) (a11 *cs11*) (a12 *cs12*) (a13 *cs13*) (a14 *cs14*) (a15 *cs15*) (a16 *cs16*) (a17 *cs17*) (a18 *cs18*) (a19 *cs19*) (a20 *cs20*) (a21 *cs21*) (a22 *cs22*) (a23 *cs23*) (a24 *cs24*) (a25 *cs25*) (a26 *cs26*) (a27 *cs27*) (a28 *cs28*) (a29 *cs29*) (a30 *cs30*) (a31 *cs31*) (a32 *cs32*) (a33 *cs33*) (a34 *cs34*) (a35 *cs35*) (a36 *cs36*) (a37 *cs37*) (a38 *cs38*) (a39 *cs39*) (a40 *cs40*) (a41 *cs41*) (a42 *cs42*) (a43 *cs43*) (a44 *cs44*) (a45 *cs45*) (a46 *cs46*) (a47 *cs47*) (a48 *cs48*) (a49 *cs49*) (a50 *cs50*) (a51 *cs51*) (a52 *cs52*) (a53 *cs53*) (a54 *cs54*) (a55 *cs55*) (a56 *cs56*) (a57 *cs57*) (a58 *cs58*) (a59 *cs59*) (a60 *cs60*) (a61 *cs61*) (a62 *cs62*) (a63 *cs63*) (a64 *cs64*) (a65 *cs65*) (a66 *cs66*) (a67 *cs67*) (a68 *cs68*) (a69 *cs69*) (a70 *cs70*) (a71 *cs71*)) cfb-cons-a-append-decomp)
           :in-theory (disable r1cs-constraints-holdp-of-append-72
                               r1cs-constraints-holdp r1cs-constraints-holdp-of-append))))

; prime-field normalization for the per-chunk arithmetic. Local: not exported.
(local (include-book "kestrel/prime-fields/prime-fields-rules" :dir :system))

; Per-chunk entailments (each goal <= 6 slice constraints).
(defthm cfb-ablock-chunk-0
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss0* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs0* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-1
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss1* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs1* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-2
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss2* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs2* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-3
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss3* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs3* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-4
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss4* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs4* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-5
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss5* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs5* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-6
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss6* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs6* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-7
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss7* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs7* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-8
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss8* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs8* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-9
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss9* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs9* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-10
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss10* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs10* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-11
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss11* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs11* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-12
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss12* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs12* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-13
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss13* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs13* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-14
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss14* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs14* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-15
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss15* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs15* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-16
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss16* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs16* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-17
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss17* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs17* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-18
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss18* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs18* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-19
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss19* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs19* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-20
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss20* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs20* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-21
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss21* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs21* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-22
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss22* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs22* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-23
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss23* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs23* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-24
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss24* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs24* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-25
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss25* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs25* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-26
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss26* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs26* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-27
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss27* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs27* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-28
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss28* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs28* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-29
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss29* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs29* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-30
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss30* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs30* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-31
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss31* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs31* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-32
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss32* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs32* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-33
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss33* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs33* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-34
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss34* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs34* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-35
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss35* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs35* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-36
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss36* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs36* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-37
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss37* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs37* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-38
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss38* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs38* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-39
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss39* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs39* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-40
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss40* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs40* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-41
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss41* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs41* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-42
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss42* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs42* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-43
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss43* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs43* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-44
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss44* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs44* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-45
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss45* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs45* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-46
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss46* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs46* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-47
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss47* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs47* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-48
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss48* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs48* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-49
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss49* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs49* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-50
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss50* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs50* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-51
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss51* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs51* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-52
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss52* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs52* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-53
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss53* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs53* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-54
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss54* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs54* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-55
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss55* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs55* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-56
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss56* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs56* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-57
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss57* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs57* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-58
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss58* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs58* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-59
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss59* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs59* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-60
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss60* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs60* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-61
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss61* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs61* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-62
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss62* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs62* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-63
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss63* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs63* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-64
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss64* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs64* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-65
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss65* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs65* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-66
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss66* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs66* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-67
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss67* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs67* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-68
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss68* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs68* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-69
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss69* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs69* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-70
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss70* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs70* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)
(defthm cfb-ablock-chunk-71
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *ss71* valuation *fq-prime*))
           (r1cs-constraints-holdp *cs71* valuation *fq-prime*))
  :hints (("Goal" :do-not-induct t
                  :in-theory (enable r1cs-constraints-holdp r1cs-constraint-holdsp dot-product)))
  :rule-classes nil)

; Assemble: holdp(slice-a) => holdp(cons-a).
(defthm cfb-ablock-entailment
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *cfb-slice-a* valuation *fq-prime*))
           (r1cs-constraints-holdp *cfb-cons-a* valuation *fq-prime*))
  :hints (("Goal"
           :use (cfb-slice-a-holdp-split cfb-cons-a-holdp-split
                 cfb-ablock-chunk-0 cfb-ablock-chunk-1 cfb-ablock-chunk-2 cfb-ablock-chunk-3 cfb-ablock-chunk-4 cfb-ablock-chunk-5 cfb-ablock-chunk-6 cfb-ablock-chunk-7 cfb-ablock-chunk-8 cfb-ablock-chunk-9 cfb-ablock-chunk-10 cfb-ablock-chunk-11 cfb-ablock-chunk-12 cfb-ablock-chunk-13 cfb-ablock-chunk-14 cfb-ablock-chunk-15 cfb-ablock-chunk-16 cfb-ablock-chunk-17 cfb-ablock-chunk-18 cfb-ablock-chunk-19 cfb-ablock-chunk-20 cfb-ablock-chunk-21 cfb-ablock-chunk-22 cfb-ablock-chunk-23 cfb-ablock-chunk-24 cfb-ablock-chunk-25 cfb-ablock-chunk-26 cfb-ablock-chunk-27 cfb-ablock-chunk-28 cfb-ablock-chunk-29 cfb-ablock-chunk-30 cfb-ablock-chunk-31 cfb-ablock-chunk-32 cfb-ablock-chunk-33 cfb-ablock-chunk-34 cfb-ablock-chunk-35 cfb-ablock-chunk-36 cfb-ablock-chunk-37 cfb-ablock-chunk-38 cfb-ablock-chunk-39 cfb-ablock-chunk-40 cfb-ablock-chunk-41 cfb-ablock-chunk-42 cfb-ablock-chunk-43 cfb-ablock-chunk-44 cfb-ablock-chunk-45 cfb-ablock-chunk-46 cfb-ablock-chunk-47 cfb-ablock-chunk-48 cfb-ablock-chunk-49 cfb-ablock-chunk-50 cfb-ablock-chunk-51 cfb-ablock-chunk-52 cfb-ablock-chunk-53 cfb-ablock-chunk-54 cfb-ablock-chunk-55 cfb-ablock-chunk-56 cfb-ablock-chunk-57 cfb-ablock-chunk-58 cfb-ablock-chunk-59 cfb-ablock-chunk-60 cfb-ablock-chunk-61 cfb-ablock-chunk-62 cfb-ablock-chunk-63 cfb-ablock-chunk-64 cfb-ablock-chunk-65 cfb-ablock-chunk-66 cfb-ablock-chunk-67 cfb-ablock-chunk-68 cfb-ablock-chunk-69 cfb-ablock-chunk-70 cfb-ablock-chunk-71)
           :in-theory (disable r1cs-constraints-holdp))))

; holdp(slice) => holdp(constructor) [pack dropped; pi byte-identical; a entailed].
(defthm cfb-slice-implies-constructor-holdp
  (implies (and (r1cs-valuationp valuation *fq-prime*)
                (r1cs-constraints-holdp *GADGET-CANONICAL-FQ-BITS-constraints*
                                        valuation *fq-prime*))
           (r1cs-constraints-holdp *cfb-constructor* valuation *fq-prime*))
  :hints (("Goal"
           :use (cfb-slice-holdp-decomposition
                 cfb-ablock-entailment
                 cfb-cons-pi-equals-slice-pi
                 cfb-constructor-append-decomp
                 (:instance r1cs-constraints-holdp-of-append
                            (x *cfb-cons-a*) (y *cfb-cons-pi*)
                            (valuation valuation) (prime *fq-prime*)))
           :in-theory (disable r1cs-constraints-holdp r1cs-constraints-holdp-of-append
                               r1cs-constraints-holdp-of-cons
                               r1cs-constraint-holdsp dot-product
                               cfb-slice-holdp-decomposition
                               cfb-slice-a-holdp-split cfb-cons-a-holdp-split
                               cfb-ablock-entailment))))

; ============================================================================
; A1: satisfying the REAL 506-constraint gnark CanonicalFqBits253 slice forces
; the packed bits <= p-1 (and boolean) over the real circuit wires. The keystone
; (make-range-check-constraints-correct) re-instantiated at the gnark avars/pivars;
; ground side conditions discharged by evaluation (cf. canonical-fq-bits-proof).
(defthm canonical-fq-bits-slice-reduced
  (implies (and (primep *fq-prime*)
                (r1cs-valuationp valuation *fq-prime*)
                (valuation-binds-allp valuation *cfb-gnark-avars*)
                (valuation-binds-allp valuation
                                      (pivars-for-1s *cfb-gnark-pivars* 251
                                                     (index-of-lowest-0 *fq-c*)
                                                     *fq-c*))
                (r1cs-constraints-holdp *GADGET-CANONICAL-FQ-BITS-constraints*
                                        valuation *fq-prime*))
           (and (acl2::bit-listp (acl2::lookup-eq-lst *cfb-gnark-avars* valuation))
                (<= (acl2::packbv 253 1
                                  (acl2::lookup-eq-lst
                                   (acl2::reverse-list *cfb-gnark-avars*) valuation))
                    *fq-c*)))
  :hints (("Goal"
           :use (cfb-slice-implies-constructor-holdp
                 (:instance make-range-check-constraints-correct
                            (avars *cfb-gnark-avars*)
                            (pivars *cfb-gnark-pivars*)
                            (c *fq-c*) (n 253) (p *fq-prime*)))
           :in-theory (union-theories
                       (theory 'acl2::minimal-theory)
                       '((:executable-counterpart equal)
                         (:executable-counterpart not)
                         (:executable-counterpart getbit)
                         (:executable-counterpart index-of-lowest-0)
                         (:executable-counterpart pivars-for-1s)
                         (:executable-counterpart no-duplicatesp-equal)
                         (:executable-counterpart intersection-equal)
                         (:executable-counterpart unsigned-byte-p)
                         (:executable-counterpart symbol-listp)
                         (:executable-counterpart len)
                         (:executable-counterpart binary-+)
                         (:executable-counterpart unary--)
                         (:executable-counterpart posp)
                         (:executable-counterpart make-range-check-constraints))))))

