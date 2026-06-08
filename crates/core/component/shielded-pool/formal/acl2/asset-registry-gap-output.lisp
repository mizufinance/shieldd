; AssetRegistryGap output predicate over the real 5568-constraint gadget.
;
; This follows the nullifier proof idiom: prove named structural rewrite rules
; that collapse the generated ladder/glue wires, then run one final verify-r1cs
; over the whole gnark-exported AssetRegistryGap R1CS.

(in-package "R1CS")

(include-book "kestrel/axe/r1cs/top" :dir :system)
(include-book "lex-less-proof")

(defmacro arg-leaf-bits-msb ()
  '(list INTERNAL-257 INTERNAL-256 INTERNAL-255 INTERNAL-254 INTERNAL-253 INTERNAL-252 INTERNAL-251 INTERNAL-250
        INTERNAL-249 INTERNAL-248 INTERNAL-247 INTERNAL-246 INTERNAL-245 INTERNAL-244 INTERNAL-243 INTERNAL-242
        INTERNAL-241 INTERNAL-240 INTERNAL-239 INTERNAL-238 INTERNAL-237 INTERNAL-236 INTERNAL-235 INTERNAL-234
        INTERNAL-233 INTERNAL-232 INTERNAL-231 INTERNAL-230 INTERNAL-229 INTERNAL-228 INTERNAL-227 INTERNAL-226
        INTERNAL-225 INTERNAL-224 INTERNAL-223 INTERNAL-222 INTERNAL-221 INTERNAL-220 INTERNAL-219 INTERNAL-218
        INTERNAL-217 INTERNAL-216 INTERNAL-215 INTERNAL-214 INTERNAL-213 INTERNAL-212 INTERNAL-211 INTERNAL-210
        INTERNAL-209 INTERNAL-208 INTERNAL-207 INTERNAL-206 INTERNAL-205 INTERNAL-204 INTERNAL-203 INTERNAL-202
        INTERNAL-201 INTERNAL-200 INTERNAL-199 INTERNAL-198 INTERNAL-197 INTERNAL-196 INTERNAL-195 INTERNAL-194
        INTERNAL-193 INTERNAL-192 INTERNAL-191 INTERNAL-190 INTERNAL-189 INTERNAL-188 INTERNAL-187 INTERNAL-186
        INTERNAL-185 INTERNAL-184 INTERNAL-183 INTERNAL-182 INTERNAL-181 INTERNAL-180 INTERNAL-179 INTERNAL-178
        INTERNAL-177 INTERNAL-176 INTERNAL-175 INTERNAL-174 INTERNAL-173 INTERNAL-172 INTERNAL-171 INTERNAL-170
        INTERNAL-169 INTERNAL-168 INTERNAL-167 INTERNAL-166 INTERNAL-165 INTERNAL-164 INTERNAL-163 INTERNAL-162
        INTERNAL-161 INTERNAL-160 INTERNAL-159 INTERNAL-158 INTERNAL-157 INTERNAL-156 INTERNAL-155 INTERNAL-154
        INTERNAL-153 INTERNAL-152 INTERNAL-151 INTERNAL-150 INTERNAL-149 INTERNAL-148 INTERNAL-147 INTERNAL-146
        INTERNAL-145 INTERNAL-144 INTERNAL-143 INTERNAL-142 INTERNAL-141 INTERNAL-140 INTERNAL-139 INTERNAL-138
        INTERNAL-137 INTERNAL-136 INTERNAL-135 INTERNAL-134 INTERNAL-133 INTERNAL-132 INTERNAL-131 INTERNAL-130
        INTERNAL-129 INTERNAL-128 INTERNAL-127 INTERNAL-126 INTERNAL-125 INTERNAL-124 INTERNAL-123 INTERNAL-122
        INTERNAL-121 INTERNAL-120 INTERNAL-119 INTERNAL-118 INTERNAL-117 INTERNAL-116 INTERNAL-115 INTERNAL-114
        INTERNAL-113 INTERNAL-112 INTERNAL-111 INTERNAL-110 INTERNAL-109 INTERNAL-108 INTERNAL-107 INTERNAL-106
        INTERNAL-105 INTERNAL-104 INTERNAL-103 INTERNAL-102 INTERNAL-101 INTERNAL-100 INTERNAL-99 INTERNAL-98
        INTERNAL-97 INTERNAL-96 INTERNAL-95 INTERNAL-94 INTERNAL-93 INTERNAL-92 INTERNAL-91 INTERNAL-90
        INTERNAL-89 INTERNAL-88 INTERNAL-87 INTERNAL-86 INTERNAL-85 INTERNAL-84 INTERNAL-83 INTERNAL-82
        INTERNAL-81 INTERNAL-80 INTERNAL-79 INTERNAL-78 INTERNAL-77 INTERNAL-76 INTERNAL-75 INTERNAL-74
        INTERNAL-73 INTERNAL-72 INTERNAL-71 INTERNAL-70 INTERNAL-69 INTERNAL-68 INTERNAL-67 INTERNAL-66
        INTERNAL-65 INTERNAL-64 INTERNAL-63 INTERNAL-62 INTERNAL-61 INTERNAL-60 INTERNAL-59 INTERNAL-58
        INTERNAL-57 INTERNAL-56 INTERNAL-55 INTERNAL-54 INTERNAL-53 INTERNAL-52 INTERNAL-51 INTERNAL-50
        INTERNAL-49 INTERNAL-48 INTERNAL-47 INTERNAL-46 INTERNAL-45 INTERNAL-44 INTERNAL-43 INTERNAL-42
        INTERNAL-41 INTERNAL-40 INTERNAL-39 INTERNAL-38 INTERNAL-37 INTERNAL-36 INTERNAL-35 INTERNAL-34
        INTERNAL-33 INTERNAL-32 INTERNAL-31 INTERNAL-30 INTERNAL-29 INTERNAL-28 INTERNAL-27 INTERNAL-26
        INTERNAL-25 INTERNAL-24 INTERNAL-23 INTERNAL-22 INTERNAL-21 INTERNAL-20 INTERNAL-19 INTERNAL-18
        INTERNAL-17 INTERNAL-16 INTERNAL-15 INTERNAL-14 INTERNAL-13 INTERNAL-12 INTERNAL-11 INTERNAL-10
        INTERNAL-9 INTERNAL-8 INTERNAL-7 INTERNAL-6 INTERNAL-5))

(defmacro arg-id-bits-msb ()
  '(list INTERNAL-762 INTERNAL-761 INTERNAL-760 INTERNAL-759 INTERNAL-758 INTERNAL-757 INTERNAL-756 INTERNAL-755
        INTERNAL-754 INTERNAL-753 INTERNAL-752 INTERNAL-751 INTERNAL-750 INTERNAL-749 INTERNAL-748 INTERNAL-747
        INTERNAL-746 INTERNAL-745 INTERNAL-744 INTERNAL-743 INTERNAL-742 INTERNAL-741 INTERNAL-740 INTERNAL-739
        INTERNAL-738 INTERNAL-737 INTERNAL-736 INTERNAL-735 INTERNAL-734 INTERNAL-733 INTERNAL-732 INTERNAL-731
        INTERNAL-730 INTERNAL-729 INTERNAL-728 INTERNAL-727 INTERNAL-726 INTERNAL-725 INTERNAL-724 INTERNAL-723
        INTERNAL-722 INTERNAL-721 INTERNAL-720 INTERNAL-719 INTERNAL-718 INTERNAL-717 INTERNAL-716 INTERNAL-715
        INTERNAL-714 INTERNAL-713 INTERNAL-712 INTERNAL-711 INTERNAL-710 INTERNAL-709 INTERNAL-708 INTERNAL-707
        INTERNAL-706 INTERNAL-705 INTERNAL-704 INTERNAL-703 INTERNAL-702 INTERNAL-701 INTERNAL-700 INTERNAL-699
        INTERNAL-698 INTERNAL-697 INTERNAL-696 INTERNAL-695 INTERNAL-694 INTERNAL-693 INTERNAL-692 INTERNAL-691
        INTERNAL-690 INTERNAL-689 INTERNAL-688 INTERNAL-687 INTERNAL-686 INTERNAL-685 INTERNAL-684 INTERNAL-683
        INTERNAL-682 INTERNAL-681 INTERNAL-680 INTERNAL-679 INTERNAL-678 INTERNAL-677 INTERNAL-676 INTERNAL-675
        INTERNAL-674 INTERNAL-673 INTERNAL-672 INTERNAL-671 INTERNAL-670 INTERNAL-669 INTERNAL-668 INTERNAL-667
        INTERNAL-666 INTERNAL-665 INTERNAL-664 INTERNAL-663 INTERNAL-662 INTERNAL-661 INTERNAL-660 INTERNAL-659
        INTERNAL-658 INTERNAL-657 INTERNAL-656 INTERNAL-655 INTERNAL-654 INTERNAL-653 INTERNAL-652 INTERNAL-651
        INTERNAL-650 INTERNAL-649 INTERNAL-648 INTERNAL-647 INTERNAL-646 INTERNAL-645 INTERNAL-644 INTERNAL-643
        INTERNAL-642 INTERNAL-641 INTERNAL-640 INTERNAL-639 INTERNAL-638 INTERNAL-637 INTERNAL-636 INTERNAL-635
        INTERNAL-634 INTERNAL-633 INTERNAL-632 INTERNAL-631 INTERNAL-630 INTERNAL-629 INTERNAL-628 INTERNAL-627
        INTERNAL-626 INTERNAL-625 INTERNAL-624 INTERNAL-623 INTERNAL-622 INTERNAL-621 INTERNAL-620 INTERNAL-619
        INTERNAL-618 INTERNAL-617 INTERNAL-616 INTERNAL-615 INTERNAL-614 INTERNAL-613 INTERNAL-612 INTERNAL-611
        INTERNAL-610 INTERNAL-609 INTERNAL-608 INTERNAL-607 INTERNAL-606 INTERNAL-605 INTERNAL-604 INTERNAL-603
        INTERNAL-602 INTERNAL-601 INTERNAL-600 INTERNAL-599 INTERNAL-598 INTERNAL-597 INTERNAL-596 INTERNAL-595
        INTERNAL-594 INTERNAL-593 INTERNAL-592 INTERNAL-591 INTERNAL-590 INTERNAL-589 INTERNAL-588 INTERNAL-587
        INTERNAL-586 INTERNAL-585 INTERNAL-584 INTERNAL-583 INTERNAL-582 INTERNAL-581 INTERNAL-580 INTERNAL-579
        INTERNAL-578 INTERNAL-577 INTERNAL-576 INTERNAL-575 INTERNAL-574 INTERNAL-573 INTERNAL-572 INTERNAL-571
        INTERNAL-570 INTERNAL-569 INTERNAL-568 INTERNAL-567 INTERNAL-566 INTERNAL-565 INTERNAL-564 INTERNAL-563
        INTERNAL-562 INTERNAL-561 INTERNAL-560 INTERNAL-559 INTERNAL-558 INTERNAL-557 INTERNAL-556 INTERNAL-555
        INTERNAL-554 INTERNAL-553 INTERNAL-552 INTERNAL-551 INTERNAL-550 INTERNAL-549 INTERNAL-548 INTERNAL-547
        INTERNAL-546 INTERNAL-545 INTERNAL-544 INTERNAL-543 INTERNAL-542 INTERNAL-541 INTERNAL-540 INTERNAL-539
        INTERNAL-538 INTERNAL-537 INTERNAL-536 INTERNAL-535 INTERNAL-534 INTERNAL-533 INTERNAL-532 INTERNAL-531
        INTERNAL-530 INTERNAL-529 INTERNAL-528 INTERNAL-527 INTERNAL-526 INTERNAL-525 INTERNAL-524 INTERNAL-523
        INTERNAL-522 INTERNAL-521 INTERNAL-520 INTERNAL-519 INTERNAL-518 INTERNAL-517 INTERNAL-516 INTERNAL-515
        INTERNAL-514 INTERNAL-513 INTERNAL-512 INTERNAL-511 INTERNAL-510))

(defmacro arg-next-bits-msb ()
  '(list INTERNAL-1267 INTERNAL-1266 INTERNAL-1265 INTERNAL-1264 INTERNAL-1263 INTERNAL-1262 INTERNAL-1261 INTERNAL-1260
        INTERNAL-1259 INTERNAL-1258 INTERNAL-1257 INTERNAL-1256 INTERNAL-1255 INTERNAL-1254 INTERNAL-1253 INTERNAL-1252
        INTERNAL-1251 INTERNAL-1250 INTERNAL-1249 INTERNAL-1248 INTERNAL-1247 INTERNAL-1246 INTERNAL-1245 INTERNAL-1244
        INTERNAL-1243 INTERNAL-1242 INTERNAL-1241 INTERNAL-1240 INTERNAL-1239 INTERNAL-1238 INTERNAL-1237 INTERNAL-1236
        INTERNAL-1235 INTERNAL-1234 INTERNAL-1233 INTERNAL-1232 INTERNAL-1231 INTERNAL-1230 INTERNAL-1229 INTERNAL-1228
        INTERNAL-1227 INTERNAL-1226 INTERNAL-1225 INTERNAL-1224 INTERNAL-1223 INTERNAL-1222 INTERNAL-1221 INTERNAL-1220
        INTERNAL-1219 INTERNAL-1218 INTERNAL-1217 INTERNAL-1216 INTERNAL-1215 INTERNAL-1214 INTERNAL-1213 INTERNAL-1212
        INTERNAL-1211 INTERNAL-1210 INTERNAL-1209 INTERNAL-1208 INTERNAL-1207 INTERNAL-1206 INTERNAL-1205 INTERNAL-1204
        INTERNAL-1203 INTERNAL-1202 INTERNAL-1201 INTERNAL-1200 INTERNAL-1199 INTERNAL-1198 INTERNAL-1197 INTERNAL-1196
        INTERNAL-1195 INTERNAL-1194 INTERNAL-1193 INTERNAL-1192 INTERNAL-1191 INTERNAL-1190 INTERNAL-1189 INTERNAL-1188
        INTERNAL-1187 INTERNAL-1186 INTERNAL-1185 INTERNAL-1184 INTERNAL-1183 INTERNAL-1182 INTERNAL-1181 INTERNAL-1180
        INTERNAL-1179 INTERNAL-1178 INTERNAL-1177 INTERNAL-1176 INTERNAL-1175 INTERNAL-1174 INTERNAL-1173 INTERNAL-1172
        INTERNAL-1171 INTERNAL-1170 INTERNAL-1169 INTERNAL-1168 INTERNAL-1167 INTERNAL-1166 INTERNAL-1165 INTERNAL-1164
        INTERNAL-1163 INTERNAL-1162 INTERNAL-1161 INTERNAL-1160 INTERNAL-1159 INTERNAL-1158 INTERNAL-1157 INTERNAL-1156
        INTERNAL-1155 INTERNAL-1154 INTERNAL-1153 INTERNAL-1152 INTERNAL-1151 INTERNAL-1150 INTERNAL-1149 INTERNAL-1148
        INTERNAL-1147 INTERNAL-1146 INTERNAL-1145 INTERNAL-1144 INTERNAL-1143 INTERNAL-1142 INTERNAL-1141 INTERNAL-1140
        INTERNAL-1139 INTERNAL-1138 INTERNAL-1137 INTERNAL-1136 INTERNAL-1135 INTERNAL-1134 INTERNAL-1133 INTERNAL-1132
        INTERNAL-1131 INTERNAL-1130 INTERNAL-1129 INTERNAL-1128 INTERNAL-1127 INTERNAL-1126 INTERNAL-1125 INTERNAL-1124
        INTERNAL-1123 INTERNAL-1122 INTERNAL-1121 INTERNAL-1120 INTERNAL-1119 INTERNAL-1118 INTERNAL-1117 INTERNAL-1116
        INTERNAL-1115 INTERNAL-1114 INTERNAL-1113 INTERNAL-1112 INTERNAL-1111 INTERNAL-1110 INTERNAL-1109 INTERNAL-1108
        INTERNAL-1107 INTERNAL-1106 INTERNAL-1105 INTERNAL-1104 INTERNAL-1103 INTERNAL-1102 INTERNAL-1101 INTERNAL-1100
        INTERNAL-1099 INTERNAL-1098 INTERNAL-1097 INTERNAL-1096 INTERNAL-1095 INTERNAL-1094 INTERNAL-1093 INTERNAL-1092
        INTERNAL-1091 INTERNAL-1090 INTERNAL-1089 INTERNAL-1088 INTERNAL-1087 INTERNAL-1086 INTERNAL-1085 INTERNAL-1084
        INTERNAL-1083 INTERNAL-1082 INTERNAL-1081 INTERNAL-1080 INTERNAL-1079 INTERNAL-1078 INTERNAL-1077 INTERNAL-1076
        INTERNAL-1075 INTERNAL-1074 INTERNAL-1073 INTERNAL-1072 INTERNAL-1071 INTERNAL-1070 INTERNAL-1069 INTERNAL-1068
        INTERNAL-1067 INTERNAL-1066 INTERNAL-1065 INTERNAL-1064 INTERNAL-1063 INTERNAL-1062 INTERNAL-1061 INTERNAL-1060
        INTERNAL-1059 INTERNAL-1058 INTERNAL-1057 INTERNAL-1056 INTERNAL-1055 INTERNAL-1054 INTERNAL-1053 INTERNAL-1052
        INTERNAL-1051 INTERNAL-1050 INTERNAL-1049 INTERNAL-1048 INTERNAL-1047 INTERNAL-1046 INTERNAL-1045 INTERNAL-1044
        INTERNAL-1043 INTERNAL-1042 INTERNAL-1041 INTERNAL-1040 INTERNAL-1039 INTERNAL-1038 INTERNAL-1037 INTERNAL-1036
        INTERNAL-1035 INTERNAL-1034 INTERNAL-1033 INTERNAL-1032 INTERNAL-1031 INTERNAL-1030 INTERNAL-1029 INTERNAL-1028
        INTERNAL-1027 INTERNAL-1026 INTERNAL-1025 INTERNAL-1024 INTERNAL-1023 INTERNAL-1022 INTERNAL-1021 INTERNAL-1020
        INTERNAL-1019 INTERNAL-1018 INTERNAL-1017 INTERNAL-1016 INTERNAL-1015))

(defund arg-select (cond iftrue iffalse)
  (pfield::add iffalse
               (pfield::mul cond
                            (pfield::add iftrue
                                         (pfield::neg iffalse *bls12-377-fr*)
                                         *bls12-377-fr*)
                            *bls12-377-fr*)
               *bls12-377-fr*))

(defmacro arg-output-spec (isregulated)
  `(arg-select
    ,isregulated
    INTERNAL-1520
    (pfield::mul
     (fq-prefix-ladder-less (arg-leaf-bits-msb) (arg-id-bits-msb))
     (fq-prefix-ladder-less (arg-id-bits-msb) (arg-next-bits-msb))
     *bls12-377-fr*)))

(defun arg-wire (n)
  (declare (xargs :guard (natp n) :verify-guards nil))
  (acl2::packn-pos (list "INTERNAL-" n) 'fq-prefix-ladder-less))

(defun arg-wire-range-down (hi count)
  (declare (xargs :guard (and (integerp hi) (natp count)) :verify-guards nil))
  (if (zp count)
      nil
    (cons (arg-wire hi)
          (arg-wire-range-down (1- hi) (1- count)))))

(defun arg-step-name (label i)
  (declare (xargs :guard (and (symbolp label) (natp i)) :verify-guards nil))
  (acl2::packn-pos (list "ARG-" label "-LADDER-STEP-" i) 'fq-prefix-ladder-less))

(defun arg-step-core-name (label i)
  (declare (xargs :guard (and (symbolp label) (natp i)) :verify-guards nil))
  (acl2::packn-pos (list "ARG-" label "-LADDER-STEP-" i "-CORE") 'fq-prefix-ladder-less))

(defun arg-step-rule-name-list (label start count)
  (declare (xargs :guard (and (symbolp label) (natp start) (natp count)) :verify-guards nil))
  (if (zp count)
      nil
    (cons (arg-step-name label start)
          (arg-step-rule-name-list label (1+ start) (1- count)))))

(defun arg-ladder-prefix-in (base i)
  (declare (xargs :guard (and (natp base) (natp i)) :verify-guards nil))
  (if (zp i)
      1
    (arg-wire (if (= i 1)
                  (+ base 3)
                (+ base 3 (* 6 (1- i)))))))

(defun arg-ladder-less-in (base i)
  (declare (xargs :guard (and (natp base) (natp i)) :verify-guards nil))
  (if (zp i)
      0
    (arg-wire (if (= i 1)
                  (+ base 1)
                (+ base (* 6 (1- i)))))))

(defun arg-ladder-first-step-hyps (base a b)
  (declare (xargs :guard (and (natp base) (symbolp a) (symbolp b)) :verify-guards nil))
  (let ((less-aux (arg-wire base))
        (less-next (arg-wire (+ base 1)))
        (double-ab (arg-wire (+ base 2)))
        (prefix-next (arg-wire (+ base 3))))
    `((equal (pfield::mul ,b
                          (pfield::add 1 (pfield::neg ,a *bls12-377-fr*) *bls12-377-fr*)
                          *bls12-377-fr*)
             ,less-aux)
      (equal ,less-next ,less-aux)
      (equal (pfield::mul 2
                          (pfield::mul ,b ,a *bls12-377-fr*)
                          *bls12-377-fr*)
             ,double-ab)
      (equal ,prefix-next
             (pfield::add 1
                          (pfield::add ,double-ab
                                       (pfield::add (pfield::neg ,a *bls12-377-fr*)
                                                    (pfield::neg ,b *bls12-377-fr*)
                                                    *bls12-377-fr*)
                                       *bls12-377-fr*)
                          *bls12-377-fr*)))))

(defun arg-ladder-step-hyps (base i a b prefix-in less-in)
  (declare (xargs :guard (and (natp base) (natp i) (symbolp a) (symbolp b))
                  :verify-guards nil))
  (let* ((offset (+ base 4 (* 6 (1- i))))
         (not-ai (arg-wire offset))
         (less-at (arg-wire (+ offset 1)))
         (less-next (arg-wire (+ offset 2)))
         (double-ab (arg-wire (+ offset 3)))
         (prefix-product (arg-wire (+ offset 4)))
         (prefix-next (arg-wire (+ offset 5))))
    `((equal (pfield::mul ,prefix-in
                          (pfield::add 1 (pfield::neg ,a *bls12-377-fr*) *bls12-377-fr*)
                          *bls12-377-fr*)
             ,not-ai)
      (equal (pfield::mul ,not-ai ,b *bls12-377-fr*) ,less-at)
      (equal ,less-next
             (pfield::add ,less-at ,less-in *bls12-377-fr*))
      (equal (pfield::mul 2
                          (pfield::mul ,b ,a *bls12-377-fr*)
                          *bls12-377-fr*)
             ,double-ab)
      (equal (pfield::mul ,prefix-in
                          (pfield::add 1
                                       (pfield::add ,double-ab
                                                    (pfield::add (pfield::neg ,a *bls12-377-fr*)
                                                                 (pfield::neg ,b *bls12-377-fr*)
                                                                 *bls12-377-fr*)
                                                    *bls12-377-fr*)
                                       *bls12-377-fr*)
                          *bls12-377-fr*)
             ,prefix-product)
      (equal ,prefix-next ,prefix-product))))

(defun arg-ladder-wire-pin-hyps (prefix-next less-next)
  (declare (xargs :guard t :verify-guards nil))
  `((equal 0
           (pfield::mul ,prefix-next
                        (pfield::add 1
                                     (pfield::neg ,prefix-next *bls12-377-fr*)
                                     *bls12-377-fr*)
                        *bls12-377-fr*))
    (equal 0
           (pfield::mul ,less-next
                        (pfield::add 1
                                     (pfield::neg ,less-next *bls12-377-fr*)
                                     *bls12-377-fr*)
                        *bls12-377-fr*))))

(defun arg-ladder-step-event (label i base a-hi b-hi count output-wire)
  (declare (xargs :guard (and (symbolp label) (natp i) (natp base)
                              (integerp a-hi) (integerp b-hi) (natp count)
                              (symbolp output-wire))
                  :verify-guards nil))
  (let* ((name (arg-step-name label i))
         (core-name (arg-step-core-name label i))
         (a (arg-wire (- a-hi i)))
         (b (arg-wire (- b-hi i)))
         (prefix-in (arg-ladder-prefix-in base i))
         (less-in (arg-ladder-less-in base i))
         (a-suffix (arg-wire-range-down (- a-hi i) (- count i)))
         (b-suffix (arg-wire-range-down (- b-hi i) (- count i)))
         (a-rest (arg-wire-range-down (1- (- a-hi i)) (1- (- count i))))
         (b-rest (arg-wire-range-down (1- (- b-hi i)) (1- (- count i))))
         (a-suffix-term `(list ,@a-suffix))
         (b-suffix-term `(list ,@b-suffix))
         (a-rest-term `(list ,@a-rest))
         (b-rest-term `(list ,@b-rest))
         (less-next (if (zp i)
                        (arg-wire (+ base 1))
                      (arg-wire (+ base 6 (* 6 (1- i))))))
         (prefix-next (if (zp i)
                          (arg-wire (+ base 3))
                        (arg-wire (+ base 9 (* 6 (1- i))))))
         (core-hyps (if (zp i)
                        (arg-ladder-first-step-hyps base a b)
                      (arg-ladder-step-hyps base i a b prefix-in less-in)))
         (hyps (append core-hyps
                       (arg-ladder-wire-pin-hyps prefix-next less-next)))
         (finalp (= i (1- count)))
         (rhs (if (= i (1- count))
                  output-wire
                `(fq-prefix-ladder-msb ,a-rest-term ,b-rest-term ,prefix-next ,less-next)))
         (hints (if finalp
                    '(("Goal"
                       :in-theory (enable fq-prefix-ladder-msb
                                          fq-not
                                          pfield::mul-of-1-arg1
                                          pfield::mul-of-1-arg2
                                          pfield::add-of-0-arg1
                                          pfield::add-of-0-arg2)))
                  `(("Goal"
                     :expand ((fq-prefix-ladder-msb ,a-suffix-term ,b-suffix-term ,prefix-in ,less-in))
                     :in-theory (e/d (fq-not
                                      fq-eq-bit
                                      pfield::mul-of-1-arg1
                                      pfield::mul-of-1-arg2
                                      pfield::mul-of-0-arg1
                                      pfield::mul-of-0-arg2
                                      pfield::add-of-0-arg1
                                      pfield::add-of-0-arg2)
                                     (fq-prefix-ladder-msb)))))))
    `(progn
       (defthm ,core-name
         (implies (and ,@core-hyps)
                  (equal (fq-prefix-ladder-msb ,a-suffix-term ,b-suffix-term ,prefix-in ,less-in)
                         ,rhs))
         :rule-classes nil
         :hints ,hints)
       (defthm ,name
         (implies (and ,@hyps)
                  (equal (fq-prefix-ladder-msb ,a-suffix-term ,b-suffix-term ,prefix-in ,less-in)
                         ,rhs))
         :hints (("Goal"
                  :use (,core-name)
                  :in-theory (theory 'minimal-theory)))))))

(defun arg-ladder-step-events (label i base a-hi b-hi count remaining output-wire)
  (declare (xargs :guard (and (symbolp label) (natp i) (natp base)
                              (integerp a-hi) (integerp b-hi) (natp count)
                              (natp remaining) (symbolp output-wire))
                  :verify-guards nil))
  (if (zp remaining)
      nil
    (cons (arg-ladder-step-event label i base a-hi b-hi count output-wire)
          (arg-ladder-step-events label (1+ i) base a-hi b-hi count (1- remaining) output-wire))))

(defmacro def-arg-ladder-rules (label base a-hi b-hi output-wire)
  (cons 'progn
        (arg-ladder-step-events label 0 base a-hi b-hi 253 253 output-wire)))

(defmacro arg-output-rule-list ()
  `(quote ,(append
            '((pfield::add-and-mul-normalization-rules)
              fq-prefix-ladder-less)
            (arg-step-rule-name-list 'L1 0 253)
            (arg-step-rule-name-list 'L2 0 253)
            '(arg-select-rewrite
              arg-final-output-rewrite
              arg-select-output-rewrite
              pfield::bitp-idiom-1
              pfield::bitp-idiom-1-alt
              pfield::mul-of-1-arg1
              pfield::mul-of-1-arg2
              pfield::mul-of-0-arg1
              pfield::mul-of-0-arg2
              pfield::add-of-0-arg1
              pfield::add-of-0-arg2
              pfield::neg-of-0
              acl2::equal-same))))

(def-arg-ladder-rules L1 1522 257 762 INTERNAL-3034)
(def-arg-ladder-rules L2 3038 762 1267 INTERNAL-4550)

(defthm arg-select-rewrite
  (implies (and (equal (pfield::mul gt lt *bls12-377-fr*) in-gap)
                (equal (pfield::mul
                        is-regulated
                        (pfield::add exact
                                     (pfield::neg in-gap *bls12-377-fr*)
                                     *bls12-377-fr*)
                        *bls12-377-fr*)
                       delta))
           (equal (arg-select is-regulated
                              exact
                              (pfield::mul gt lt *bls12-377-fr*))
                  (pfield::add delta in-gap *bls12-377-fr*)))
  :hints (("Goal" :in-theory (enable arg-select))))

(defthm arg-final-output-rewrite
  (implies (equal 1 (pfield::add delta in-gap *bls12-377-fr*))
           (equal (equal (pfield::add delta in-gap *bls12-377-fr*) 1)
                  t)))

(defthm arg-select-output-rewrite
  (implies (and (bitp c)
                (integerp e)
                (integerp v)
                (equal (pfield::mul c
                                    (pfield::add e
                                                 (pfield::neg v *bls12-377-fr*)
                                                 *bls12-377-fr*)
                                    *bls12-377-fr*)
                       d)
                (equal 1 (pfield::add d v *bls12-377-fr*)))
           (equal (equal (arg-select c e 1) 1)
                  t))
  :hints (("Goal" :cases ((equal c 0) (equal c 1))
                  :in-theory (enable arg-select))))

(local
 (lift-r1cs *arg-output-lifted*
            *GADGET-IMT-GAP-vars*
            *GADGET-IMT-GAP-constraints*
            *GADGET-IMT-GAP-prime*
            :package "R1CS"))

(verify-r1cs
 *arg-output-lifted*
 (equal (arg-output-spec ISREGULATED) 1)
 *GADGET-IMT-GAP-prime*
 :tactic '(:rep :rewrite :subst)
 :global-rules '(acl2::rationalp-when-integerp
                 pfield::integerp-of-add
                 pfield::integerp-of-mul
                 pfield::integerp-of-neg
                 pfield::fep-of-add
                 pfield::fep-of-mul
                 pfield::fep-of-neg
                 pfield::integerp-when-fep
                 pfield::booleanp-of-fe-listp
                 (pfield::fe-listp-rules-axe)
                 pfield::add-of-0-arg1
                 pfield::add-of-0-arg2
                 pfield::mul-of-1-arg1
                 pfield::mul-of-1-arg2
                 pfield::mul-of-0-arg1
                 pfield::mul-of-0-arg2
                 pfield::neg-of-0
                 primes::primep-of-bls12-377-scalar-field-prime-constant)
 :rule-lists (list (arg-output-rule-list))
 :var-ordering (append (reverse (cddddr *GADGET-IMT-GAP-vars*))
                       (list 'NOTEASSETID 'ISREGULATED 'LEAFVALUE 'NEXTVALUE))
 :print :brief)
