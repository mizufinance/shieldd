import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681Defs47

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681

variable {F : Type} [CommRing F]

def relationRow4079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897 + (1 : F) * rho 3898) * ((1 : F) + (1 : F) * rho 3900 + (1 : F) * rho 3901 + (1 : F) * rho 3903 + (1 : F) * rho 3904) = ((1 : F) * rho 3905)

def relationRow4080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3897) * ((1 : F) + (1 : F) * rho 3903 + (1 : F) * rho 3904) = ((1 : F) * rho 3906)

def relationRow4081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3898) * ((1 : F) * rho 3900 + (1 : F) * rho 3901) = ((1 : F) * rho 3907)

def relationRow4082 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3906) * ((1 : F) * rho 3907) = ((1 : F) * rho 3908)

def relationRow4083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((1 : F) + (1 : F) * rho 3908) = ((1 : F) * rho 3906 + (1 : F) * rho 3907)

def relationRow4084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((1 : F) + (-1 : F) * rho 3908) = ((1 : F) * rho 3905 + (-1 : F) * rho 3906 + (-1 : F) * rho 3907)

def relationRow4085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((1 : F) * rho 3910) = ((1 : F) * rho 3911)

def relationRow4086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3909) * ((1 : F) * rho 3909) = ((1 : F) * rho 3912)

def relationRow4087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3910) * ((1 : F) * rho 3910) = ((1 : F) * rho 3913)

def relationRow4088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3914) * ((-1 : F) * rho 3912 + (1 : F) * rho 3913) = ((2 : F) * rho 3911)

def relationRow4089 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3915) * ((2 : F) + (1 : F) * rho 3912 + (-1 : F) * rho 3913) = ((1 : F) * rho 3912 + (1 : F) * rho 3913)

def relationRow4090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3914) * ((1 : F) * rho 3915) = ((1 : F) * rho 3916)

def relationRow4091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3914) * ((1 : F) * rho 3914) = ((1 : F) * rho 3917)

def relationRow4092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3915) * ((1 : F) * rho 3915) = ((1 : F) * rho 3918)

def relationRow4093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3919) * ((-1 : F) * rho 3917 + (1 : F) * rho 3918) = ((2 : F) * rho 3916)

def relationRow4094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3920) * ((2 : F) + (1 : F) * rho 3917 + (-1 : F) * rho 3918) = ((1 : F) * rho 3917 + (1 : F) * rho 3918)

def relationRow4095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2690) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3921)

def relationRow4096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2691) * ((1 : F) * rho 2797 + (1 : F) * rho 3921) = ((1 : F) * rho 3922)

def relationRow4097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2690) = ((1 : F) * rho 3923)

def relationRow4098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2690) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3924)

def relationRow4099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2691) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3924) = ((1 : F) * rho 3925)

def relationRow4100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2690) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3926)

def relationRow4101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3919 + (1 : F) * rho 3920) * ((1 : F) + (1 : F) * rho 3922 + (1 : F) * rho 3923 + (1 : F) * rho 3925 + (1 : F) * rho 3926) = ((1 : F) * rho 3927)

def relationRow4102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3919) * ((1 : F) + (1 : F) * rho 3925 + (1 : F) * rho 3926) = ((1 : F) * rho 3928)

def relationRow4103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3920) * ((1 : F) * rho 3922 + (1 : F) * rho 3923) = ((1 : F) * rho 3929)

def relationRow4104 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3928) * ((1 : F) * rho 3929) = ((1 : F) * rho 3930)

def relationRow4105 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3931) * ((1 : F) + (1 : F) * rho 3930) = ((1 : F) * rho 3928 + (1 : F) * rho 3929)

def relationRow4106 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3932) * ((1 : F) + (-1 : F) * rho 3930) = ((1 : F) * rho 3927 + (-1 : F) * rho 3928 + (-1 : F) * rho 3929)

def relationRow4107 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3931) * ((1 : F) * rho 3932) = ((1 : F) * rho 3933)

def relationRow4108 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3931) * ((1 : F) * rho 3931) = ((1 : F) * rho 3934)

def relationRow4109 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3932) * ((1 : F) * rho 3932) = ((1 : F) * rho 3935)

def relationRow4110 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((-1 : F) * rho 3934 + (1 : F) * rho 3935) = ((2 : F) * rho 3933)

def relationRow4111 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3937) * ((2 : F) + (1 : F) * rho 3934 + (-1 : F) * rho 3935) = ((1 : F) * rho 3934 + (1 : F) * rho 3935)

def relationRow4112 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((1 : F) * rho 3937) = ((1 : F) * rho 3938)

def relationRow4113 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3936) * ((1 : F) * rho 3936) = ((1 : F) * rho 3939)

def relationRow4114 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3937) * ((1 : F) * rho 3937) = ((1 : F) * rho 3940)

def relationRow4115 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3941) * ((-1 : F) * rho 3939 + (1 : F) * rho 3940) = ((2 : F) * rho 3938)

def relationRow4116 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((2 : F) + (1 : F) * rho 3939 + (-1 : F) * rho 3940) = ((1 : F) * rho 3939 + (1 : F) * rho 3940)

def relationRow4117 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2688) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3943)

def relationRow4118 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2689) * ((1 : F) * rho 2797 + (1 : F) * rho 3943) = ((1 : F) * rho 3944)

def relationRow4119 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2688) = ((1 : F) * rho 3945)

def relationRow4120 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2688) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3946)

def relationRow4121 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2689) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3946) = ((1 : F) * rho 3947)

def relationRow4122 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2688) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3948)

def relationRow4123 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3941 + (1 : F) * rho 3942) * ((1 : F) + (1 : F) * rho 3944 + (1 : F) * rho 3945 + (1 : F) * rho 3947 + (1 : F) * rho 3948) = ((1 : F) * rho 3949)

def relationRow4124 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3941) * ((1 : F) + (1 : F) * rho 3947 + (1 : F) * rho 3948) = ((1 : F) * rho 3950)

def relationRow4125 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3942) * ((1 : F) * rho 3944 + (1 : F) * rho 3945) = ((1 : F) * rho 3951)

def relationRow4126 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3950) * ((1 : F) * rho 3951) = ((1 : F) * rho 3952)

def relationRow4127 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3953) * ((1 : F) + (1 : F) * rho 3952) = ((1 : F) * rho 3950 + (1 : F) * rho 3951)

def relationRow4128 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3954) * ((1 : F) + (-1 : F) * rho 3952) = ((1 : F) * rho 3949 + (-1 : F) * rho 3950 + (-1 : F) * rho 3951)

def relationRow4129 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3953) * ((1 : F) * rho 3954) = ((1 : F) * rho 3955)

def relationRow4130 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3953) * ((1 : F) * rho 3953) = ((1 : F) * rho 3956)

def relationRow4131 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3954) * ((1 : F) * rho 3954) = ((1 : F) * rho 3957)

def relationRow4132 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3958) * ((-1 : F) * rho 3956 + (1 : F) * rho 3957) = ((2 : F) * rho 3955)

def relationRow4133 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3959) * ((2 : F) + (1 : F) * rho 3956 + (-1 : F) * rho 3957) = ((1 : F) * rho 3956 + (1 : F) * rho 3957)

def relationRow4134 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3958) * ((1 : F) * rho 3959) = ((1 : F) * rho 3960)

def relationRow4135 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3958) * ((1 : F) * rho 3958) = ((1 : F) * rho 3961)

def relationRow4136 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3959) * ((1 : F) * rho 3959) = ((1 : F) * rho 3962)

def relationRow4137 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3963) * ((-1 : F) * rho 3961 + (1 : F) * rho 3962) = ((2 : F) * rho 3960)

def relationRow4138 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3964) * ((2 : F) + (1 : F) * rho 3961 + (-1 : F) * rho 3962) = ((1 : F) * rho 3961 + (1 : F) * rho 3962)

def relationRow4139 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3965)

def relationRow4140 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2687) * ((1 : F) * rho 2797 + (1 : F) * rho 3965) = ((1 : F) * rho 3966)

def relationRow4141 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2686) = ((1 : F) * rho 3967)

def relationRow4142 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3968)

def relationRow4143 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2687) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3968) = ((1 : F) * rho 3969)

def relationRow4144 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2686) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3970)

def relationRow4145 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3963 + (1 : F) * rho 3964) * ((1 : F) + (1 : F) * rho 3966 + (1 : F) * rho 3967 + (1 : F) * rho 3969 + (1 : F) * rho 3970) = ((1 : F) * rho 3971)

def relationRow4146 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3963) * ((1 : F) + (1 : F) * rho 3969 + (1 : F) * rho 3970) = ((1 : F) * rho 3972)

def relationRow4147 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3964) * ((1 : F) * rho 3966 + (1 : F) * rho 3967) = ((1 : F) * rho 3973)

def relationRow4148 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3972) * ((1 : F) * rho 3973) = ((1 : F) * rho 3974)

def relationRow4149 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) + (1 : F) * rho 3974) = ((1 : F) * rho 3972 + (1 : F) * rho 3973)

def relationRow4150 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3976) * ((1 : F) + (-1 : F) * rho 3974) = ((1 : F) * rho 3971 + (-1 : F) * rho 3972 + (-1 : F) * rho 3973)

def relationRow4151 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) * rho 3976) = ((1 : F) * rho 3977)

def relationRow4152 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3975) * ((1 : F) * rho 3975) = ((1 : F) * rho 3978)

def relationRow4153 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3976) * ((1 : F) * rho 3976) = ((1 : F) * rho 3979)

def relationRow4154 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3980) * ((-1 : F) * rho 3978 + (1 : F) * rho 3979) = ((2 : F) * rho 3977)

def relationRow4155 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((2 : F) + (1 : F) * rho 3978 + (-1 : F) * rho 3979) = ((1 : F) * rho 3978 + (1 : F) * rho 3979)

def relationRow4156 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3980) * ((1 : F) * rho 3981) = ((1 : F) * rho 3982)

def relationRow4157 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3980) * ((1 : F) * rho 3980) = ((1 : F) * rho 3983)

def relationRow4158 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3981) * ((1 : F) * rho 3981) = ((1 : F) * rho 3984)

def relationRow4159 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3985) * ((-1 : F) * rho 3983 + (1 : F) * rho 3984) = ((2 : F) * rho 3982)

def relationRow4160 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986) * ((2 : F) + (1 : F) * rho 3983 + (-1 : F) * rho 3984) = ((1 : F) * rho 3983 + (1 : F) * rho 3984)

def relationRow4161 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2684) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 3987)

def relationRow4162 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2685) * ((1 : F) * rho 2797 + (1 : F) * rho 3987) = ((1 : F) * rho 3988)

def relationRow4163 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2684) = ((1 : F) * rho 3989)

def relationRow4164 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2684) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 3990)

def relationRow4165 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2685) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 3990) = ((1 : F) * rho 3991)

def relationRow4166 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2684) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 3992)

def relationRow4167 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3985 + (1 : F) * rho 3986) * ((1 : F) + (1 : F) * rho 3988 + (1 : F) * rho 3989 + (1 : F) * rho 3991 + (1 : F) * rho 3992) = ((1 : F) * rho 3993)

def relationRow4168 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3985) * ((1 : F) + (1 : F) * rho 3991 + (1 : F) * rho 3992) = ((1 : F) * rho 3994)

def relationRow4169 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3986) * ((1 : F) * rho 3988 + (1 : F) * rho 3989) = ((1 : F) * rho 3995)

def relationRow4170 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 3994) * ((1 : F) * rho 3995) = ((1 : F) * rho 3996)

def relationRow4171 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3997) * ((1 : F) + (1 : F) * rho 3996) = ((1 : F) * rho 3994 + (1 : F) * rho 3995)

def relationRow4172 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3998) * ((1 : F) + (-1 : F) * rho 3996) = ((1 : F) * rho 3993 + (-1 : F) * rho 3994 + (-1 : F) * rho 3995)

def relationRow4173 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3997) * ((1 : F) * rho 3998) = ((1 : F) * rho 3999)

def relationRow4174 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3997) * ((1 : F) * rho 3997) = ((1 : F) * rho 4000)

def relationRow4175 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3998) * ((1 : F) * rho 3998) = ((1 : F) * rho 4001)

def relationRow4176 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4002) * ((-1 : F) * rho 4000 + (1 : F) * rho 4001) = ((2 : F) * rho 3999)

def relationRow4177 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4003) * ((2 : F) + (1 : F) * rho 4000 + (-1 : F) * rho 4001) = ((1 : F) * rho 4000 + (1 : F) * rho 4001)

def relationRow4178 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4002) * ((1 : F) * rho 4003) = ((1 : F) * rho 4004)

def relationRow4179 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4002) * ((1 : F) * rho 4002) = ((1 : F) * rho 4005)

def relationRow4180 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4003) * ((1 : F) * rho 4003) = ((1 : F) * rho 4006)

def relationRow4181 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((-1 : F) * rho 4005 + (1 : F) * rho 4006) = ((2 : F) * rho 4004)

def relationRow4182 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((2 : F) + (1 : F) * rho 4005 + (-1 : F) * rho 4006) = ((1 : F) * rho 4005 + (1 : F) * rho 4006)

def relationRow4183 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2682) * ((-1 : F) * rho 598 + (-1 : F) * rho 2797 + (1 : F) * rho 2803) = ((1 : F) * rho 4009)

def relationRow4184 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2683) * ((1 : F) * rho 2797 + (1 : F) * rho 4009) = ((1 : F) * rho 4010)

def relationRow4185 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 598) * ((1 : F) * rho 2682) = ((1 : F) * rho 4011)

def relationRow4186 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2682) * ((1 : F) + (-1 : F) * rho 600 + (-1 : F) * rho 2798 + (1 : F) * rho 2804) = ((1 : F) * rho 4012)

def relationRow4187 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2683) * ((-1 : F) + (1 : F) * rho 2798 + (1 : F) * rho 4012) = ((1 : F) * rho 4013)

def relationRow4188 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 2682) * ((-1 : F) + (1 : F) * rho 600) = ((1 : F) * rho 4014)

def relationRow4189 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007 + (1 : F) * rho 4008) * ((1 : F) + (1 : F) * rho 4010 + (1 : F) * rho 4011 + (1 : F) * rho 4013 + (1 : F) * rho 4014) = ((1 : F) * rho 4015)

def relationRow4190 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4007) * ((1 : F) + (1 : F) * rho 4013 + (1 : F) * rho 4014) = ((1 : F) * rho 4016)

def relationRow4191 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) * rho 4010 + (1 : F) * rho 4011) = ((1 : F) * rho 4017)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafNetBalanceCommitment_efd414b95488606e99678399b0406544c9fda192bad5db9de83ce274ba09a681
