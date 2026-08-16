import ShielddGnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0bDefs86

set_option maxRecDepth 1000000
set_option maxHeartbeats 50000000

namespace Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b

variable {F : Type} [CommRing F]

def relationRow3995 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 53) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4001)

def relationRow3996 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 54) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4001) = ((1 : F) * rho 4002)

def relationRow3997 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 53) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4003)

def relationRow3998 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3996 + (1 : F) * rho 3997) * ((1 : F) + (1 : F) * rho 3999 + (1 : F) * rho 4000 + (1 : F) * rho 4002 + (1 : F) * rho 4003) = ((1 : F) * rho 4004)

def relationRow3999 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3996) * ((1 : F) + (1 : F) * rho 4002 + (1 : F) * rho 4003) = ((1 : F) * rho 4005)

def relationRow4000 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 3997) * ((1 : F) * rho 3999 + (1 : F) * rho 4000) = ((1 : F) * rho 4006)

def relationRow4001 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4005) * ((1 : F) * rho 4006) = ((1 : F) * rho 4007)

def relationRow4002 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) + (1 : F) * rho 4007) = ((1 : F) * rho 4005 + (1 : F) * rho 4006)

def relationRow4003 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4009) * ((1 : F) + (-1 : F) * rho 4007) = ((1 : F) * rho 4004 + (-1 : F) * rho 4005 + (-1 : F) * rho 4006)

def relationRow4004 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) * rho 4009) = ((1 : F) * rho 4010)

def relationRow4005 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4008) * ((1 : F) * rho 4008) = ((1 : F) * rho 4011)

def relationRow4006 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4009) * ((1 : F) * rho 4009) = ((1 : F) * rho 4012)

def relationRow4007 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((-1 : F) * rho 4011 + (1 : F) * rho 4012) = ((2 : F) * rho 4010)

def relationRow4008 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((2 : F) + (1 : F) * rho 4011 + (-1 : F) * rho 4012) = ((1 : F) * rho 4011 + (1 : F) * rho 4012)

def relationRow4009 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((1 : F) * rho 4014) = ((1 : F) * rho 4015)

def relationRow4010 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4013) * ((1 : F) * rho 4013) = ((1 : F) * rho 4016)

def relationRow4011 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4014) * ((1 : F) * rho 4014) = ((1 : F) * rho 4017)

def relationRow4012 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4018) * ((-1 : F) * rho 4016 + (1 : F) * rho 4017) = ((2 : F) * rho 4015)

def relationRow4013 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4019) * ((2 : F) + (1 : F) * rho 4016 + (-1 : F) * rho 4017) = ((1 : F) * rho 4016 + (1 : F) * rho 4017)

def relationRow4014 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 51) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4020)

def relationRow4015 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 52) * ((1 : F) * rho 1818 + (1 : F) * rho 4020) = ((1 : F) * rho 4021)

def relationRow4016 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 51) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4022)

def relationRow4017 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 51) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4023)

def relationRow4018 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 52) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4023) = ((1 : F) * rho 4024)

def relationRow4019 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 51) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4025)

def relationRow4020 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4018 + (1 : F) * rho 4019) * ((1 : F) + (1 : F) * rho 4021 + (1 : F) * rho 4022 + (1 : F) * rho 4024 + (1 : F) * rho 4025) = ((1 : F) * rho 4026)

def relationRow4021 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4018) * ((1 : F) + (1 : F) * rho 4024 + (1 : F) * rho 4025) = ((1 : F) * rho 4027)

def relationRow4022 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4019) * ((1 : F) * rho 4021 + (1 : F) * rho 4022) = ((1 : F) * rho 4028)

def relationRow4023 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4027) * ((1 : F) * rho 4028) = ((1 : F) * rho 4029)

def relationRow4024 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4030) * ((1 : F) + (1 : F) * rho 4029) = ((1 : F) * rho 4027 + (1 : F) * rho 4028)

def relationRow4025 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4031) * ((1 : F) + (-1 : F) * rho 4029) = ((1 : F) * rho 4026 + (-1 : F) * rho 4027 + (-1 : F) * rho 4028)

def relationRow4026 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4030) * ((1 : F) * rho 4031) = ((1 : F) * rho 4032)

def relationRow4027 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4030) * ((1 : F) * rho 4030) = ((1 : F) * rho 4033)

def relationRow4028 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4031) * ((1 : F) * rho 4031) = ((1 : F) * rho 4034)

def relationRow4029 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4035) * ((-1 : F) * rho 4033 + (1 : F) * rho 4034) = ((2 : F) * rho 4032)

def relationRow4030 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4036) * ((2 : F) + (1 : F) * rho 4033 + (-1 : F) * rho 4034) = ((1 : F) * rho 4033 + (1 : F) * rho 4034)

def relationRow4031 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4035) * ((1 : F) * rho 4036) = ((1 : F) * rho 4037)

def relationRow4032 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4035) * ((1 : F) * rho 4035) = ((1 : F) * rho 4038)

def relationRow4033 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4036) * ((1 : F) * rho 4036) = ((1 : F) * rho 4039)

def relationRow4034 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((-1 : F) * rho 4038 + (1 : F) * rho 4039) = ((2 : F) * rho 4037)

def relationRow4035 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((2 : F) + (1 : F) * rho 4038 + (-1 : F) * rho 4039) = ((1 : F) * rho 4038 + (1 : F) * rho 4039)

def relationRow4036 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4042)

def relationRow4037 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 50) * ((1 : F) * rho 1818 + (1 : F) * rho 4042) = ((1 : F) * rho 4043)

def relationRow4038 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4044)

def relationRow4039 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4045)

def relationRow4040 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 50) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4045) = ((1 : F) * rho 4046)

def relationRow4041 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 49) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4047)

def relationRow4042 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040 + (1 : F) * rho 4041) * ((1 : F) + (1 : F) * rho 4043 + (1 : F) * rho 4044 + (1 : F) * rho 4046 + (1 : F) * rho 4047) = ((1 : F) * rho 4048)

def relationRow4043 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4040) * ((1 : F) + (1 : F) * rho 4046 + (1 : F) * rho 4047) = ((1 : F) * rho 4049)

def relationRow4044 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4041) * ((1 : F) * rho 4043 + (1 : F) * rho 4044) = ((1 : F) * rho 4050)

def relationRow4045 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4049) * ((1 : F) * rho 4050) = ((1 : F) * rho 4051)

def relationRow4046 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) + (1 : F) * rho 4051) = ((1 : F) * rho 4049 + (1 : F) * rho 4050)

def relationRow4047 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((1 : F) + (-1 : F) * rho 4051) = ((1 : F) * rho 4048 + (-1 : F) * rho 4049 + (-1 : F) * rho 4050)

def relationRow4048 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) * rho 4053) = ((1 : F) * rho 4054)

def relationRow4049 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4052) * ((1 : F) * rho 4052) = ((1 : F) * rho 4055)

def relationRow4050 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4053) * ((1 : F) * rho 4053) = ((1 : F) * rho 4056)

def relationRow4051 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4057) * ((-1 : F) * rho 4055 + (1 : F) * rho 4056) = ((2 : F) * rho 4054)

def relationRow4052 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4058) * ((2 : F) + (1 : F) * rho 4055 + (-1 : F) * rho 4056) = ((1 : F) * rho 4055 + (1 : F) * rho 4056)

def relationRow4053 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4057) * ((1 : F) * rho 4058) = ((1 : F) * rho 4059)

def relationRow4054 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4057) * ((1 : F) * rho 4057) = ((1 : F) * rho 4060)

def relationRow4055 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4058) * ((1 : F) * rho 4058) = ((1 : F) * rho 4061)

def relationRow4056 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4062) * ((-1 : F) * rho 4060 + (1 : F) * rho 4061) = ((2 : F) * rho 4059)

def relationRow4057 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4063) * ((2 : F) + (1 : F) * rho 4060 + (-1 : F) * rho 4061) = ((1 : F) * rho 4060 + (1 : F) * rho 4061)

def relationRow4058 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4064)

def relationRow4059 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * ((1 : F) * rho 1818 + (1 : F) * rho 4064) = ((1 : F) * rho 4065)

def relationRow4060 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4066)

def relationRow4061 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4067)

def relationRow4062 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 48) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4067) = ((1 : F) * rho 4068)

def relationRow4063 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 47) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4069)

def relationRow4064 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4062 + (1 : F) * rho 4063) * ((1 : F) + (1 : F) * rho 4065 + (1 : F) * rho 4066 + (1 : F) * rho 4068 + (1 : F) * rho 4069) = ((1 : F) * rho 4070)

def relationRow4065 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4062) * ((1 : F) + (1 : F) * rho 4068 + (1 : F) * rho 4069) = ((1 : F) * rho 4071)

def relationRow4066 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4063) * ((1 : F) * rho 4065 + (1 : F) * rho 4066) = ((1 : F) * rho 4072)

def relationRow4067 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4071) * ((1 : F) * rho 4072) = ((1 : F) * rho 4073)

def relationRow4068 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4074) * ((1 : F) + (1 : F) * rho 4073) = ((1 : F) * rho 4071 + (1 : F) * rho 4072)

def relationRow4069 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4075) * ((1 : F) + (-1 : F) * rho 4073) = ((1 : F) * rho 4070 + (-1 : F) * rho 4071 + (-1 : F) * rho 4072)

def relationRow4070 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4074) * ((1 : F) * rho 4075) = ((1 : F) * rho 4076)

def relationRow4071 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4074) * ((1 : F) * rho 4074) = ((1 : F) * rho 4077)

def relationRow4072 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4075) * ((1 : F) * rho 4075) = ((1 : F) * rho 4078)

def relationRow4073 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((-1 : F) * rho 4077 + (1 : F) * rho 4078) = ((2 : F) * rho 4076)

def relationRow4074 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4080) * ((2 : F) + (1 : F) * rho 4077 + (-1 : F) * rho 4078) = ((1 : F) * rho 4077 + (1 : F) * rho 4078)

def relationRow4075 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((1 : F) * rho 4080) = ((1 : F) * rho 4081)

def relationRow4076 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4079) * ((1 : F) * rho 4079) = ((1 : F) * rho 4082)

def relationRow4077 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4080) * ((1 : F) * rho 4080) = ((1 : F) * rho 4083)

def relationRow4078 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4084) * ((-1 : F) * rho 4082 + (1 : F) * rho 4083) = ((2 : F) * rho 4081)

def relationRow4079 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((2 : F) + (1 : F) * rho 4082 + (-1 : F) * rho 4083) = ((1 : F) * rho 4082 + (1 : F) * rho 4083)

def relationRow4080 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4086)

def relationRow4081 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * ((1 : F) * rho 1818 + (1 : F) * rho 4086) = ((1 : F) * rho 4087)

def relationRow4082 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4088)

def relationRow4083 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * ((1 : F) + (-1 : F) * rho 1813 + (-1 : F) * rho 1814 + (-1 : F) * rho 1819 + (1 : F) * rho 1825) = ((1 : F) * rho 4089)

def relationRow4084 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 46) * ((-1 : F) + (1 : F) * rho 1819 + (1 : F) * rho 4089) = ((1 : F) * rho 4090)

def relationRow4085 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 45) * ((-1 : F) + (1 : F) * rho 1813 + (1 : F) * rho 1814) = ((1 : F) * rho 4091)

def relationRow4086 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4084 + (1 : F) * rho 4085) * ((1 : F) + (1 : F) * rho 4087 + (1 : F) * rho 4088 + (1 : F) * rho 4090 + (1 : F) * rho 4091) = ((1 : F) * rho 4092)

def relationRow4087 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4084) * ((1 : F) + (1 : F) * rho 4090 + (1 : F) * rho 4091) = ((1 : F) * rho 4093)

def relationRow4088 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4085) * ((1 : F) * rho 4087 + (1 : F) * rho 4088) = ((1 : F) * rho 4094)

def relationRow4089 (rho : Nat -> F) : Prop :=
    ((3021 : F) * rho 4093) * ((1 : F) * rho 4094) = ((1 : F) * rho 4095)

def relationRow4090 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4096) * ((1 : F) + (1 : F) * rho 4095) = ((1 : F) * rho 4093 + (1 : F) * rho 4094)

def relationRow4091 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4097) * ((1 : F) + (-1 : F) * rho 4095) = ((1 : F) * rho 4092 + (-1 : F) * rho 4093 + (-1 : F) * rho 4094)

def relationRow4092 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4096) * ((1 : F) * rho 4097) = ((1 : F) * rho 4098)

def relationRow4093 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4096) * ((1 : F) * rho 4096) = ((1 : F) * rho 4099)

def relationRow4094 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4097) * ((1 : F) * rho 4097) = ((1 : F) * rho 4100)

def relationRow4095 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4101) * ((-1 : F) * rho 4099 + (1 : F) * rho 4100) = ((2 : F) * rho 4098)

def relationRow4096 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4102) * ((2 : F) + (1 : F) * rho 4099 + (-1 : F) * rho 4100) = ((1 : F) * rho 4099 + (1 : F) * rho 4100)

def relationRow4097 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4101) * ((1 : F) * rho 4102) = ((1 : F) * rho 4103)

def relationRow4098 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4101) * ((1 : F) * rho 4101) = ((1 : F) * rho 4104)

def relationRow4099 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4102) * ((1 : F) * rho 4102) = ((1 : F) * rho 4105)

def relationRow4100 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4106) * ((-1 : F) * rho 4104 + (1 : F) * rho 4105) = ((2 : F) * rho 4103)

def relationRow4101 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 4107) * ((2 : F) + (1 : F) * rho 4104 + (-1 : F) * rho 4105) = ((1 : F) * rho 4104 + (1 : F) * rho 4105)

def relationRow4102 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * ((-1 : F) * rho 1811 + (-1 : F) * rho 1812 + (-1 : F) * rho 1818 + (1 : F) * rho 1824) = ((1 : F) * rho 4108)

def relationRow4103 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 44) * ((1 : F) * rho 1818 + (1 : F) * rho 4108) = ((1 : F) * rho 4109)

def relationRow4104 (rho : Nat -> F) : Prop :=
    ((1 : F) * rho 43) * ((1 : F) * rho 1811 + (1 : F) * rho 1812) = ((1 : F) * rho 4110)

end Shieldd.GnarkFormal.Deployed.Templates.Relations.TDecafSharedSecret_0a9405fe9fa7b69f5919b41caaa6165a64f58cf75a38a13283885fbfe7b30f0b
