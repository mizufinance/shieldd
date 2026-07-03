import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52BlindBits_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    GatesDef.to_binary (rho 5) 251 (seg52BlindBits rho) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, p84, p85, p86, p87, p88, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart84 at p84

  rcases p84 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r6789, r6790, r6791, r6792, r6793, r6794, r6795, r6796, r6797, r6798, r6799⟩

  unfold Seg52.relationPart85 at p85

  rcases p85 with ⟨r6800, r6801, r6802, r6803, r6804, r6805, r6806, r6807, r6808, r6809, r6810, r6811, r6812, r6813, r6814, r6815, r6816, r6817, r6818, r6819, r6820, r6821, r6822, r6823, r6824, r6825, r6826, r6827, r6828, r6829, r6830, r6831, r6832, r6833, r6834, r6835, r6836, r6837, r6838, r6839, r6840, r6841, r6842, r6843, r6844, r6845, r6846, r6847, r6848, r6849, r6850, r6851, r6852, r6853, r6854, r6855, r6856, r6857, r6858, r6859, r6860, r6861, r6862, r6863, r6864, r6865, r6866, r6867, r6868, r6869, r6870, r6871, r6872, r6873, r6874, r6875, r6876, r6877, r6878, r6879⟩

  unfold Seg52.relationPart86 at p86

  rcases p86 with ⟨r6880, r6881, r6882, r6883, r6884, r6885, r6886, r6887, r6888, r6889, r6890, r6891, r6892, r6893, r6894, r6895, r6896, r6897, r6898, r6899, r6900, r6901, r6902, r6903, r6904, r6905, r6906, r6907, r6908, r6909, r6910, r6911, r6912, r6913, r6914, r6915, r6916, r6917, r6918, r6919, r6920, r6921, r6922, r6923, r6924, r6925, r6926, r6927, r6928, r6929, r6930, r6931, r6932, r6933, r6934, r6935, r6936, r6937, r6938, r6939, r6940, r6941, r6942, r6943, r6944, r6945, r6946, r6947, r6948, r6949, r6950, r6951, r6952, r6953, r6954, r6955, r6956, r6957, r6958, r6959⟩

  unfold Seg52.relationPart87 at p87

  rcases p87 with ⟨r6960, r6961, r6962, r6963, r6964, r6965, r6966, r6967, r6968, r6969, r6970, r6971, r6972, r6973, r6974, r6975, r6976, r6977, r6978, r6979, r6980, r6981, r6982, r6983, r6984, r6985, r6986, r6987, r6988, r6989, r6990, r6991, r6992, r6993, r6994, r6995, r6996, r6997, r6998, r6999, r7000, r7001, r7002, r7003, r7004, r7005, r7006, r7007, r7008, r7009, r7010, r7011, r7012, r7013, r7014, r7015, r7016, r7017, r7018, r7019, r7020, r7021, r7022, r7023, r7024, r7025, r7026, r7027, r7028, r7029, r7030, r7031, r7032, r7033, r7034, r7035, r7036, r7037, r7038, r7039⟩

  unfold Seg52.relationPart88 at p88

  rcases p88 with ⟨r7040, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow6789 at r6789

  unfold Seg52.relationRow6790 at r6790

  unfold Seg52.relationRow6791 at r6791

  unfold Seg52.relationRow6792 at r6792

  unfold Seg52.relationRow6793 at r6793

  unfold Seg52.relationRow6794 at r6794

  unfold Seg52.relationRow6795 at r6795

  unfold Seg52.relationRow6796 at r6796

  unfold Seg52.relationRow6797 at r6797

  unfold Seg52.relationRow6798 at r6798

  unfold Seg52.relationRow6799 at r6799

  unfold Seg52.relationRow6800 at r6800

  unfold Seg52.relationRow6801 at r6801

  unfold Seg52.relationRow6802 at r6802

  unfold Seg52.relationRow6803 at r6803

  unfold Seg52.relationRow6804 at r6804

  unfold Seg52.relationRow6805 at r6805

  unfold Seg52.relationRow6806 at r6806

  unfold Seg52.relationRow6807 at r6807

  unfold Seg52.relationRow6808 at r6808

  unfold Seg52.relationRow6809 at r6809

  unfold Seg52.relationRow6810 at r6810

  unfold Seg52.relationRow6811 at r6811

  unfold Seg52.relationRow6812 at r6812

  unfold Seg52.relationRow6813 at r6813

  unfold Seg52.relationRow6814 at r6814

  unfold Seg52.relationRow6815 at r6815

  unfold Seg52.relationRow6816 at r6816

  unfold Seg52.relationRow6817 at r6817

  unfold Seg52.relationRow6818 at r6818

  unfold Seg52.relationRow6819 at r6819

  unfold Seg52.relationRow6820 at r6820

  unfold Seg52.relationRow6821 at r6821

  unfold Seg52.relationRow6822 at r6822

  unfold Seg52.relationRow6823 at r6823

  unfold Seg52.relationRow6824 at r6824

  unfold Seg52.relationRow6825 at r6825

  unfold Seg52.relationRow6826 at r6826

  unfold Seg52.relationRow6827 at r6827

  unfold Seg52.relationRow6828 at r6828

  unfold Seg52.relationRow6829 at r6829

  unfold Seg52.relationRow6830 at r6830

  unfold Seg52.relationRow6831 at r6831

  unfold Seg52.relationRow6832 at r6832

  unfold Seg52.relationRow6833 at r6833

  unfold Seg52.relationRow6834 at r6834

  unfold Seg52.relationRow6835 at r6835

  unfold Seg52.relationRow6836 at r6836

  unfold Seg52.relationRow6837 at r6837

  unfold Seg52.relationRow6838 at r6838

  unfold Seg52.relationRow6839 at r6839

  unfold Seg52.relationRow6840 at r6840

  unfold Seg52.relationRow6841 at r6841

  unfold Seg52.relationRow6842 at r6842

  unfold Seg52.relationRow6843 at r6843

  unfold Seg52.relationRow6844 at r6844

  unfold Seg52.relationRow6845 at r6845

  unfold Seg52.relationRow6846 at r6846

  unfold Seg52.relationRow6847 at r6847

  unfold Seg52.relationRow6848 at r6848

  unfold Seg52.relationRow6849 at r6849

  unfold Seg52.relationRow6850 at r6850

  unfold Seg52.relationRow6851 at r6851

  unfold Seg52.relationRow6852 at r6852

  unfold Seg52.relationRow6853 at r6853

  unfold Seg52.relationRow6854 at r6854

  unfold Seg52.relationRow6855 at r6855

  unfold Seg52.relationRow6856 at r6856

  unfold Seg52.relationRow6857 at r6857

  unfold Seg52.relationRow6858 at r6858

  unfold Seg52.relationRow6859 at r6859

  unfold Seg52.relationRow6860 at r6860

  unfold Seg52.relationRow6861 at r6861

  unfold Seg52.relationRow6862 at r6862

  unfold Seg52.relationRow6863 at r6863

  unfold Seg52.relationRow6864 at r6864

  unfold Seg52.relationRow6865 at r6865

  unfold Seg52.relationRow6866 at r6866

  unfold Seg52.relationRow6867 at r6867

  unfold Seg52.relationRow6868 at r6868

  unfold Seg52.relationRow6869 at r6869

  unfold Seg52.relationRow6870 at r6870

  unfold Seg52.relationRow6871 at r6871

  unfold Seg52.relationRow6872 at r6872

  unfold Seg52.relationRow6873 at r6873

  unfold Seg52.relationRow6874 at r6874

  unfold Seg52.relationRow6875 at r6875

  unfold Seg52.relationRow6876 at r6876

  unfold Seg52.relationRow6877 at r6877

  unfold Seg52.relationRow6878 at r6878

  unfold Seg52.relationRow6879 at r6879

  unfold Seg52.relationRow6880 at r6880

  unfold Seg52.relationRow6881 at r6881

  unfold Seg52.relationRow6882 at r6882

  unfold Seg52.relationRow6883 at r6883

  unfold Seg52.relationRow6884 at r6884

  unfold Seg52.relationRow6885 at r6885

  unfold Seg52.relationRow6886 at r6886

  unfold Seg52.relationRow6887 at r6887

  unfold Seg52.relationRow6888 at r6888

  unfold Seg52.relationRow6889 at r6889

  unfold Seg52.relationRow6890 at r6890

  unfold Seg52.relationRow6891 at r6891

  unfold Seg52.relationRow6892 at r6892

  unfold Seg52.relationRow6893 at r6893

  unfold Seg52.relationRow6894 at r6894

  unfold Seg52.relationRow6895 at r6895

  unfold Seg52.relationRow6896 at r6896

  unfold Seg52.relationRow6897 at r6897

  unfold Seg52.relationRow6898 at r6898

  unfold Seg52.relationRow6899 at r6899

  unfold Seg52.relationRow6900 at r6900

  unfold Seg52.relationRow6901 at r6901

  unfold Seg52.relationRow6902 at r6902

  unfold Seg52.relationRow6903 at r6903

  unfold Seg52.relationRow6904 at r6904

  unfold Seg52.relationRow6905 at r6905

  unfold Seg52.relationRow6906 at r6906

  unfold Seg52.relationRow6907 at r6907

  unfold Seg52.relationRow6908 at r6908

  unfold Seg52.relationRow6909 at r6909

  unfold Seg52.relationRow6910 at r6910

  unfold Seg52.relationRow6911 at r6911

  unfold Seg52.relationRow6912 at r6912

  unfold Seg52.relationRow6913 at r6913

  unfold Seg52.relationRow6914 at r6914

  unfold Seg52.relationRow6915 at r6915

  unfold Seg52.relationRow6916 at r6916

  unfold Seg52.relationRow6917 at r6917

  unfold Seg52.relationRow6918 at r6918

  unfold Seg52.relationRow6919 at r6919

  unfold Seg52.relationRow6920 at r6920

  unfold Seg52.relationRow6921 at r6921

  unfold Seg52.relationRow6922 at r6922

  unfold Seg52.relationRow6923 at r6923

  unfold Seg52.relationRow6924 at r6924

  unfold Seg52.relationRow6925 at r6925

  unfold Seg52.relationRow6926 at r6926

  unfold Seg52.relationRow6927 at r6927

  unfold Seg52.relationRow6928 at r6928

  unfold Seg52.relationRow6929 at r6929

  unfold Seg52.relationRow6930 at r6930

  unfold Seg52.relationRow6931 at r6931

  unfold Seg52.relationRow6932 at r6932

  unfold Seg52.relationRow6933 at r6933

  unfold Seg52.relationRow6934 at r6934

  unfold Seg52.relationRow6935 at r6935

  unfold Seg52.relationRow6936 at r6936

  unfold Seg52.relationRow6937 at r6937

  unfold Seg52.relationRow6938 at r6938

  unfold Seg52.relationRow6939 at r6939

  unfold Seg52.relationRow6940 at r6940

  unfold Seg52.relationRow6941 at r6941

  unfold Seg52.relationRow6942 at r6942

  unfold Seg52.relationRow6943 at r6943

  unfold Seg52.relationRow6944 at r6944

  unfold Seg52.relationRow6945 at r6945

  unfold Seg52.relationRow6946 at r6946

  unfold Seg52.relationRow6947 at r6947

  unfold Seg52.relationRow6948 at r6948

  unfold Seg52.relationRow6949 at r6949

  unfold Seg52.relationRow6950 at r6950

  unfold Seg52.relationRow6951 at r6951

  unfold Seg52.relationRow6952 at r6952

  unfold Seg52.relationRow6953 at r6953

  unfold Seg52.relationRow6954 at r6954

  unfold Seg52.relationRow6955 at r6955

  unfold Seg52.relationRow6956 at r6956

  unfold Seg52.relationRow6957 at r6957

  unfold Seg52.relationRow6958 at r6958

  unfold Seg52.relationRow6959 at r6959

  unfold Seg52.relationRow6960 at r6960

  unfold Seg52.relationRow6961 at r6961

  unfold Seg52.relationRow6962 at r6962

  unfold Seg52.relationRow6963 at r6963

  unfold Seg52.relationRow6964 at r6964

  unfold Seg52.relationRow6965 at r6965

  unfold Seg52.relationRow6966 at r6966

  unfold Seg52.relationRow6967 at r6967

  unfold Seg52.relationRow6968 at r6968

  unfold Seg52.relationRow6969 at r6969

  unfold Seg52.relationRow6970 at r6970

  unfold Seg52.relationRow6971 at r6971

  unfold Seg52.relationRow6972 at r6972

  unfold Seg52.relationRow6973 at r6973

  unfold Seg52.relationRow6974 at r6974

  unfold Seg52.relationRow6975 at r6975

  unfold Seg52.relationRow6976 at r6976

  unfold Seg52.relationRow6977 at r6977

  unfold Seg52.relationRow6978 at r6978

  unfold Seg52.relationRow6979 at r6979

  unfold Seg52.relationRow6980 at r6980

  unfold Seg52.relationRow6981 at r6981

  unfold Seg52.relationRow6982 at r6982

  unfold Seg52.relationRow6983 at r6983

  unfold Seg52.relationRow6984 at r6984

  unfold Seg52.relationRow6985 at r6985

  unfold Seg52.relationRow6986 at r6986

  unfold Seg52.relationRow6987 at r6987

  unfold Seg52.relationRow6988 at r6988

  unfold Seg52.relationRow6989 at r6989

  unfold Seg52.relationRow6990 at r6990

  unfold Seg52.relationRow6991 at r6991

  unfold Seg52.relationRow6992 at r6992

  unfold Seg52.relationRow6993 at r6993

  unfold Seg52.relationRow6994 at r6994

  unfold Seg52.relationRow6995 at r6995

  unfold Seg52.relationRow6996 at r6996

  unfold Seg52.relationRow6997 at r6997

  unfold Seg52.relationRow6998 at r6998

  unfold Seg52.relationRow6999 at r6999

  unfold Seg52.relationRow7000 at r7000

  unfold Seg52.relationRow7001 at r7001

  unfold Seg52.relationRow7002 at r7002

  unfold Seg52.relationRow7003 at r7003

  unfold Seg52.relationRow7004 at r7004

  unfold Seg52.relationRow7005 at r7005

  unfold Seg52.relationRow7006 at r7006

  unfold Seg52.relationRow7007 at r7007

  unfold Seg52.relationRow7008 at r7008

  unfold Seg52.relationRow7009 at r7009

  unfold Seg52.relationRow7010 at r7010

  unfold Seg52.relationRow7011 at r7011

  unfold Seg52.relationRow7012 at r7012

  unfold Seg52.relationRow7013 at r7013

  unfold Seg52.relationRow7014 at r7014

  unfold Seg52.relationRow7015 at r7015

  unfold Seg52.relationRow7016 at r7016

  unfold Seg52.relationRow7017 at r7017

  unfold Seg52.relationRow7018 at r7018

  unfold Seg52.relationRow7019 at r7019

  unfold Seg52.relationRow7020 at r7020

  unfold Seg52.relationRow7021 at r7021

  unfold Seg52.relationRow7022 at r7022

  unfold Seg52.relationRow7023 at r7023

  unfold Seg52.relationRow7024 at r7024

  unfold Seg52.relationRow7025 at r7025

  unfold Seg52.relationRow7026 at r7026

  unfold Seg52.relationRow7027 at r7027

  unfold Seg52.relationRow7028 at r7028

  unfold Seg52.relationRow7029 at r7029

  unfold Seg52.relationRow7030 at r7030

  unfold Seg52.relationRow7031 at r7031

  unfold Seg52.relationRow7032 at r7032

  unfold Seg52.relationRow7033 at r7033

  unfold Seg52.relationRow7034 at r7034

  unfold Seg52.relationRow7035 at r7035

  unfold Seg52.relationRow7036 at r7036

  unfold Seg52.relationRow7037 at r7037

  unfold Seg52.relationRow7038 at r7038

  unfold Seg52.relationRow7039 at r7039

  have hrecover := recover_ofFn_eq_recBits rho 51178 251

  have hacc : powSumAcc rho 0 1 51178 251 = rho 5 := by

    unfold Seg52.relationRow7040 at r7040

    simp only [powSumAcc]

    linear_combination r7040

  have hrec : recover_binary_zmod' (seg52BlindBits rho) = rho 5 := by

    simp only [seg52BlindBits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 5) (seg52BlindBits rho)
  · intro i hi
    have key := seg52BlindBits_get rho i hi
    have hgoal : rho (51178 + i) * (1 - rho (51178 + i)) = 0 := by
      interval_cases i
      · linear_combination r6789
      · linear_combination r6790
      · linear_combination r6791
      · linear_combination r6792
      · linear_combination r6793
      · linear_combination r6794
      · linear_combination r6795
      · linear_combination r6796
      · linear_combination r6797
      · linear_combination r6798
      · linear_combination r6799
      · linear_combination r6800
      · linear_combination r6801
      · linear_combination r6802
      · linear_combination r6803
      · linear_combination r6804
      · linear_combination r6805
      · linear_combination r6806
      · linear_combination r6807
      · linear_combination r6808
      · linear_combination r6809
      · linear_combination r6810
      · linear_combination r6811
      · linear_combination r6812
      · linear_combination r6813
      · linear_combination r6814
      · linear_combination r6815
      · linear_combination r6816
      · linear_combination r6817
      · linear_combination r6818
      · linear_combination r6819
      · linear_combination r6820
      · linear_combination r6821
      · linear_combination r6822
      · linear_combination r6823
      · linear_combination r6824
      · linear_combination r6825
      · linear_combination r6826
      · linear_combination r6827
      · linear_combination r6828
      · linear_combination r6829
      · linear_combination r6830
      · linear_combination r6831
      · linear_combination r6832
      · linear_combination r6833
      · linear_combination r6834
      · linear_combination r6835
      · linear_combination r6836
      · linear_combination r6837
      · linear_combination r6838
      · linear_combination r6839
      · linear_combination r6840
      · linear_combination r6841
      · linear_combination r6842
      · linear_combination r6843
      · linear_combination r6844
      · linear_combination r6845
      · linear_combination r6846
      · linear_combination r6847
      · linear_combination r6848
      · linear_combination r6849
      · linear_combination r6850
      · linear_combination r6851
      · linear_combination r6852
      · linear_combination r6853
      · linear_combination r6854
      · linear_combination r6855
      · linear_combination r6856
      · linear_combination r6857
      · linear_combination r6858
      · linear_combination r6859
      · linear_combination r6860
      · linear_combination r6861
      · linear_combination r6862
      · linear_combination r6863
      · linear_combination r6864
      · linear_combination r6865
      · linear_combination r6866
      · linear_combination r6867
      · linear_combination r6868
      · linear_combination r6869
      · linear_combination r6870
      · linear_combination r6871
      · linear_combination r6872
      · linear_combination r6873
      · linear_combination r6874
      · linear_combination r6875
      · linear_combination r6876
      · linear_combination r6877
      · linear_combination r6878
      · linear_combination r6879
      · linear_combination r6880
      · linear_combination r6881
      · linear_combination r6882
      · linear_combination r6883
      · linear_combination r6884
      · linear_combination r6885
      · linear_combination r6886
      · linear_combination r6887
      · linear_combination r6888
      · linear_combination r6889
      · linear_combination r6890
      · linear_combination r6891
      · linear_combination r6892
      · linear_combination r6893
      · linear_combination r6894
      · linear_combination r6895
      · linear_combination r6896
      · linear_combination r6897
      · linear_combination r6898
      · linear_combination r6899
      · linear_combination r6900
      · linear_combination r6901
      · linear_combination r6902
      · linear_combination r6903
      · linear_combination r6904
      · linear_combination r6905
      · linear_combination r6906
      · linear_combination r6907
      · linear_combination r6908
      · linear_combination r6909
      · linear_combination r6910
      · linear_combination r6911
      · linear_combination r6912
      · linear_combination r6913
      · linear_combination r6914
      · linear_combination r6915
      · linear_combination r6916
      · linear_combination r6917
      · linear_combination r6918
      · linear_combination r6919
      · linear_combination r6920
      · linear_combination r6921
      · linear_combination r6922
      · linear_combination r6923
      · linear_combination r6924
      · linear_combination r6925
      · linear_combination r6926
      · linear_combination r6927
      · linear_combination r6928
      · linear_combination r6929
      · linear_combination r6930
      · linear_combination r6931
      · linear_combination r6932
      · linear_combination r6933
      · linear_combination r6934
      · linear_combination r6935
      · linear_combination r6936
      · linear_combination r6937
      · linear_combination r6938
      · linear_combination r6939
      · linear_combination r6940
      · linear_combination r6941
      · linear_combination r6942
      · linear_combination r6943
      · linear_combination r6944
      · linear_combination r6945
      · linear_combination r6946
      · linear_combination r6947
      · linear_combination r6948
      · linear_combination r6949
      · linear_combination r6950
      · linear_combination r6951
      · linear_combination r6952
      · linear_combination r6953
      · linear_combination r6954
      · linear_combination r6955
      · linear_combination r6956
      · linear_combination r6957
      · linear_combination r6958
      · linear_combination r6959
      · linear_combination r6960
      · linear_combination r6961
      · linear_combination r6962
      · linear_combination r6963
      · linear_combination r6964
      · linear_combination r6965
      · linear_combination r6966
      · linear_combination r6967
      · linear_combination r6968
      · linear_combination r6969
      · linear_combination r6970
      · linear_combination r6971
      · linear_combination r6972
      · linear_combination r6973
      · linear_combination r6974
      · linear_combination r6975
      · linear_combination r6976
      · linear_combination r6977
      · linear_combination r6978
      · linear_combination r6979
      · linear_combination r6980
      · linear_combination r6981
      · linear_combination r6982
      · linear_combination r6983
      · linear_combination r6984
      · linear_combination r6985
      · linear_combination r6986
      · linear_combination r6987
      · linear_combination r6988
      · linear_combination r6989
      · linear_combination r6990
      · linear_combination r6991
      · linear_combination r6992
      · linear_combination r6993
      · linear_combination r6994
      · linear_combination r6995
      · linear_combination r6996
      · linear_combination r6997
      · linear_combination r6998
      · linear_combination r6999
      · linear_combination r7000
      · linear_combination r7001
      · linear_combination r7002
      · linear_combination r7003
      · linear_combination r7004
      · linear_combination r7005
      · linear_combination r7006
      · linear_combination r7007
      · linear_combination r7008
      · linear_combination r7009
      · linear_combination r7010
      · linear_combination r7011
      · linear_combination r7012
      · linear_combination r7013
      · linear_combination r7014
      · linear_combination r7015
      · linear_combination r7016
      · linear_combination r7017
      · linear_combination r7018
      · linear_combination r7019
      · linear_combination r7020
      · linear_combination r7021
      · linear_combination r7022
      · linear_combination r7023
      · linear_combination r7024
      · linear_combination r7025
      · linear_combination r7026
      · linear_combination r7027
      · linear_combination r7028
      · linear_combination r7029
      · linear_combination r7030
      · linear_combination r7031
      · linear_combination r7032
      · linear_combination r7033
      · linear_combination r7034
      · linear_combination r7035
      · linear_combination r7036
      · linear_combination r7037
      · linear_combination r7038
      · linear_combination r7039
    have key' : (seg52BlindBits rho)[i] = rho (51178 + i) := by
      rw [← getElem!_pos (seg52BlindBits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
