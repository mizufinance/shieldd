import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep131
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep132
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep133
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep134
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep135
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep136
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep137
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep138
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep139
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg15PrefixStep140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg15_prefix_steps13 (rho : Nat -> Seg15.F)
    (r131 : Seg15.relationRow131 rho)
    (r902 : Seg15.relationRow902 rho)
    (r903 : Seg15.relationRow903 rho)
    (r904 : Seg15.relationRow904 rho)
    (r905 : Seg15.relationRow905 rho)
    (r906 : Seg15.relationRow906 rho)
    (r132 : Seg15.relationRow132 rho)
    (r907 : Seg15.relationRow907 rho)
    (r908 : Seg15.relationRow908 rho)
    (r909 : Seg15.relationRow909 rho)
    (r910 : Seg15.relationRow910 rho)
    (r911 : Seg15.relationRow911 rho)
    (r133 : Seg15.relationRow133 rho)
    (r912 : Seg15.relationRow912 rho)
    (r913 : Seg15.relationRow913 rho)
    (r914 : Seg15.relationRow914 rho)
    (r915 : Seg15.relationRow915 rho)
    (r916 : Seg15.relationRow916 rho)
    (r134 : Seg15.relationRow134 rho)
    (r917 : Seg15.relationRow917 rho)
    (r918 : Seg15.relationRow918 rho)
    (r919 : Seg15.relationRow919 rho)
    (r920 : Seg15.relationRow920 rho)
    (r921 : Seg15.relationRow921 rho)
    (r135 : Seg15.relationRow135 rho)
    (r922 : Seg15.relationRow922 rho)
    (r923 : Seg15.relationRow923 rho)
    (r924 : Seg15.relationRow924 rho)
    (r925 : Seg15.relationRow925 rho)
    (r926 : Seg15.relationRow926 rho)
    (r136 : Seg15.relationRow136 rho)
    (r927 : Seg15.relationRow927 rho)
    (r928 : Seg15.relationRow928 rho)
    (r929 : Seg15.relationRow929 rho)
    (r930 : Seg15.relationRow930 rho)
    (r931 : Seg15.relationRow931 rho)
    (r137 : Seg15.relationRow137 rho)
    (r932 : Seg15.relationRow932 rho)
    (r933 : Seg15.relationRow933 rho)
    (r934 : Seg15.relationRow934 rho)
    (r935 : Seg15.relationRow935 rho)
    (r936 : Seg15.relationRow936 rho)
    (r138 : Seg15.relationRow138 rho)
    (r937 : Seg15.relationRow937 rho)
    (r938 : Seg15.relationRow938 rho)
    (r939 : Seg15.relationRow939 rho)
    (r940 : Seg15.relationRow940 rho)
    (r941 : Seg15.relationRow941 rho)
    (r139 : Seg15.relationRow139 rho)
    (r942 : Seg15.relationRow942 rho)
    (r943 : Seg15.relationRow943 rho)
    (r944 : Seg15.relationRow944 rho)
    (r945 : Seg15.relationRow945 rho)
    (r946 : Seg15.relationRow946 rho)
    (r140 : Seg15.relationRow140 rho)
    (r947 : Seg15.relationRow947 rho)
    (r948 : Seg15.relationRow948 rho)
    (r949 : Seg15.relationRow949 rho)
    (r950 : Seg15.relationRow950 rho)
    (r951 : Seg15.relationRow951 rho)
    : ∀ i, 131 ≤ i → i ≤ 140 → onCurve (seg15RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (16130 + i)) (seg15RvkAcc rho i) (seg15RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg15_prefix_step131 rho r131 r902 r903 r904 r905 r906 hacc
  · exact seg15_prefix_step132 rho r132 r907 r908 r909 r910 r911 hacc
  · exact seg15_prefix_step133 rho r133 r912 r913 r914 r915 r916 hacc
  · exact seg15_prefix_step134 rho r134 r917 r918 r919 r920 r921 hacc
  · exact seg15_prefix_step135 rho r135 r922 r923 r924 r925 r926 hacc
  · exact seg15_prefix_step136 rho r136 r927 r928 r929 r930 r931 hacc
  · exact seg15_prefix_step137 rho r137 r932 r933 r934 r935 r936 hacc
  · exact seg15_prefix_step138 rho r138 r937 r938 r939 r940 r941 hacc
  · exact seg15_prefix_step139 rho r139 r942 r943 r944 r945 r946 hacc
  · exact seg15_prefix_step140 rho r140 r947 r948 r949 r950 r951 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

