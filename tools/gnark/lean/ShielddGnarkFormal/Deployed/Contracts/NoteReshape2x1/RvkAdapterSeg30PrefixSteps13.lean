import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep131
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep132
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep133
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep134
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep135
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep136
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep137
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep138
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep139
import ShielddGnarkFormal.Deployed.Contracts.NoteReshape2x1.RvkAdapterSeg30PrefixStep140

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

open EdwardsBridge
open Bool (toZMod)
open Shieldd.GnarkFormal.RvkFixedBaseLiteral

theorem seg30_prefix_steps13 (rho : Nat -> Seg30.F)
    (r131 : Seg30.relationRow131 rho)
    (r902 : Seg30.relationRow902 rho)
    (r903 : Seg30.relationRow903 rho)
    (r904 : Seg30.relationRow904 rho)
    (r905 : Seg30.relationRow905 rho)
    (r906 : Seg30.relationRow906 rho)
    (r132 : Seg30.relationRow132 rho)
    (r907 : Seg30.relationRow907 rho)
    (r908 : Seg30.relationRow908 rho)
    (r909 : Seg30.relationRow909 rho)
    (r910 : Seg30.relationRow910 rho)
    (r911 : Seg30.relationRow911 rho)
    (r133 : Seg30.relationRow133 rho)
    (r912 : Seg30.relationRow912 rho)
    (r913 : Seg30.relationRow913 rho)
    (r914 : Seg30.relationRow914 rho)
    (r915 : Seg30.relationRow915 rho)
    (r916 : Seg30.relationRow916 rho)
    (r134 : Seg30.relationRow134 rho)
    (r917 : Seg30.relationRow917 rho)
    (r918 : Seg30.relationRow918 rho)
    (r919 : Seg30.relationRow919 rho)
    (r920 : Seg30.relationRow920 rho)
    (r921 : Seg30.relationRow921 rho)
    (r135 : Seg30.relationRow135 rho)
    (r922 : Seg30.relationRow922 rho)
    (r923 : Seg30.relationRow923 rho)
    (r924 : Seg30.relationRow924 rho)
    (r925 : Seg30.relationRow925 rho)
    (r926 : Seg30.relationRow926 rho)
    (r136 : Seg30.relationRow136 rho)
    (r927 : Seg30.relationRow927 rho)
    (r928 : Seg30.relationRow928 rho)
    (r929 : Seg30.relationRow929 rho)
    (r930 : Seg30.relationRow930 rho)
    (r931 : Seg30.relationRow931 rho)
    (r137 : Seg30.relationRow137 rho)
    (r932 : Seg30.relationRow932 rho)
    (r933 : Seg30.relationRow933 rho)
    (r934 : Seg30.relationRow934 rho)
    (r935 : Seg30.relationRow935 rho)
    (r936 : Seg30.relationRow936 rho)
    (r138 : Seg30.relationRow138 rho)
    (r937 : Seg30.relationRow937 rho)
    (r938 : Seg30.relationRow938 rho)
    (r939 : Seg30.relationRow939 rho)
    (r940 : Seg30.relationRow940 rho)
    (r941 : Seg30.relationRow941 rho)
    (r139 : Seg30.relationRow139 rho)
    (r942 : Seg30.relationRow942 rho)
    (r943 : Seg30.relationRow943 rho)
    (r944 : Seg30.relationRow944 rho)
    (r945 : Seg30.relationRow945 rho)
    (r946 : Seg30.relationRow946 rho)
    (r140 : Seg30.relationRow140 rho)
    (r947 : Seg30.relationRow947 rho)
    (r948 : Seg30.relationRow948 rho)
    (r949 : Seg30.relationRow949 rho)
    (r950 : Seg30.relationRow950 rho)
    (r951 : Seg30.relationRow951 rho)
    : ∀ i, 131 ≤ i → i ≤ 140 → onCurve (seg30RvkAcc rho i) →
        RvkFixedBaseLadder.FixedStepRel i
          (rho (28311 + i)) (seg30RvkAcc rho i) (seg30RvkAcc rho (i + 1)) := by
  intro i hlo hhi hacc
  interval_cases i
  · exact seg30_prefix_step131 rho r131 r902 r903 r904 r905 r906 hacc
  · exact seg30_prefix_step132 rho r132 r907 r908 r909 r910 r911 hacc
  · exact seg30_prefix_step133 rho r133 r912 r913 r914 r915 r916 hacc
  · exact seg30_prefix_step134 rho r134 r917 r918 r919 r920 r921 hacc
  · exact seg30_prefix_step135 rho r135 r922 r923 r924 r925 r926 hacc
  · exact seg30_prefix_step136 rho r136 r927 r928 r929 r930 r931 hacc
  · exact seg30_prefix_step137 rho r137 r932 r933 r934 r935 r936 hacc
  · exact seg30_prefix_step138 rho r138 r937 r938 r939 r940 r941 hacc
  · exact seg30_prefix_step139 rho r139 r942 r943 r944 r945 r946 hacc
  · exact seg30_prefix_step140 rho r140 r947 r948 r949 r950 r951 hacc

end Shieldd.GnarkFormal.Deployed.Contracts.NoteReshape2x1

