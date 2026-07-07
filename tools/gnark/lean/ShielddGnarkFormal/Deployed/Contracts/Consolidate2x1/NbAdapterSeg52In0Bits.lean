import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.NbAdapterSeg52Base
import ShielddGnarkFormal.Deployed.Contracts.Consolidate2x1.CompressAdapterCommon
import ShielddGnarkFormal.RvkToBinary

set_option maxRecDepth 1000000
set_option maxHeartbeats 20000000
set_option linter.unusedVariables false

namespace Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1

theorem seg52In0Bits_toBinary (rho : Nat -> Seg52.F) (h : Seg52.relation rho) :
    GatesDef.to_binary (rho 15) 128 (seg52In0Bits rho) := by
  unfold Seg52.relation at h

  rcases h with ⟨

    _, _, _, _, _, _, _, _, _, p9,

    p10, p11, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _,

    _, _, _, _, _, _, _, _, _, _

  ⟩

  unfold Seg52.relationPart9 at p9

  rcases p9 with ⟨_, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, r776, r777, r778, r779, r780, r781, r782, r783, r784, r785, r786, r787, r788, r789, r790, r791, r792, r793, r794, r795, r796, r797, r798, r799⟩

  unfold Seg52.relationPart10 at p10

  rcases p10 with ⟨r800, r801, r802, r803, r804, r805, r806, r807, r808, r809, r810, r811, r812, r813, r814, r815, r816, r817, r818, r819, r820, r821, r822, r823, r824, r825, r826, r827, r828, r829, r830, r831, r832, r833, r834, r835, r836, r837, r838, r839, r840, r841, r842, r843, r844, r845, r846, r847, r848, r849, r850, r851, r852, r853, r854, r855, r856, r857, r858, r859, r860, r861, r862, r863, r864, r865, r866, r867, r868, r869, r870, r871, r872, r873, r874, r875, r876, r877, r878, r879⟩

  unfold Seg52.relationPart11 at p11

  rcases p11 with ⟨r880, r881, r882, r883, r884, r885, r886, r887, r888, r889, r890, r891, r892, r893, r894, r895, r896, r897, r898, r899, r900, r901, r902, r903, r904, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _, _⟩

  unfold Seg52.relationRow776 at r776

  unfold Seg52.relationRow777 at r777

  unfold Seg52.relationRow778 at r778

  unfold Seg52.relationRow779 at r779

  unfold Seg52.relationRow780 at r780

  unfold Seg52.relationRow781 at r781

  unfold Seg52.relationRow782 at r782

  unfold Seg52.relationRow783 at r783

  unfold Seg52.relationRow784 at r784

  unfold Seg52.relationRow785 at r785

  unfold Seg52.relationRow786 at r786

  unfold Seg52.relationRow787 at r787

  unfold Seg52.relationRow788 at r788

  unfold Seg52.relationRow789 at r789

  unfold Seg52.relationRow790 at r790

  unfold Seg52.relationRow791 at r791

  unfold Seg52.relationRow792 at r792

  unfold Seg52.relationRow793 at r793

  unfold Seg52.relationRow794 at r794

  unfold Seg52.relationRow795 at r795

  unfold Seg52.relationRow796 at r796

  unfold Seg52.relationRow797 at r797

  unfold Seg52.relationRow798 at r798

  unfold Seg52.relationRow799 at r799

  unfold Seg52.relationRow800 at r800

  unfold Seg52.relationRow801 at r801

  unfold Seg52.relationRow802 at r802

  unfold Seg52.relationRow803 at r803

  unfold Seg52.relationRow804 at r804

  unfold Seg52.relationRow805 at r805

  unfold Seg52.relationRow806 at r806

  unfold Seg52.relationRow807 at r807

  unfold Seg52.relationRow808 at r808

  unfold Seg52.relationRow809 at r809

  unfold Seg52.relationRow810 at r810

  unfold Seg52.relationRow811 at r811

  unfold Seg52.relationRow812 at r812

  unfold Seg52.relationRow813 at r813

  unfold Seg52.relationRow814 at r814

  unfold Seg52.relationRow815 at r815

  unfold Seg52.relationRow816 at r816

  unfold Seg52.relationRow817 at r817

  unfold Seg52.relationRow818 at r818

  unfold Seg52.relationRow819 at r819

  unfold Seg52.relationRow820 at r820

  unfold Seg52.relationRow821 at r821

  unfold Seg52.relationRow822 at r822

  unfold Seg52.relationRow823 at r823

  unfold Seg52.relationRow824 at r824

  unfold Seg52.relationRow825 at r825

  unfold Seg52.relationRow826 at r826

  unfold Seg52.relationRow827 at r827

  unfold Seg52.relationRow828 at r828

  unfold Seg52.relationRow829 at r829

  unfold Seg52.relationRow830 at r830

  unfold Seg52.relationRow831 at r831

  unfold Seg52.relationRow832 at r832

  unfold Seg52.relationRow833 at r833

  unfold Seg52.relationRow834 at r834

  unfold Seg52.relationRow835 at r835

  unfold Seg52.relationRow836 at r836

  unfold Seg52.relationRow837 at r837

  unfold Seg52.relationRow838 at r838

  unfold Seg52.relationRow839 at r839

  unfold Seg52.relationRow840 at r840

  unfold Seg52.relationRow841 at r841

  unfold Seg52.relationRow842 at r842

  unfold Seg52.relationRow843 at r843

  unfold Seg52.relationRow844 at r844

  unfold Seg52.relationRow845 at r845

  unfold Seg52.relationRow846 at r846

  unfold Seg52.relationRow847 at r847

  unfold Seg52.relationRow848 at r848

  unfold Seg52.relationRow849 at r849

  unfold Seg52.relationRow850 at r850

  unfold Seg52.relationRow851 at r851

  unfold Seg52.relationRow852 at r852

  unfold Seg52.relationRow853 at r853

  unfold Seg52.relationRow854 at r854

  unfold Seg52.relationRow855 at r855

  unfold Seg52.relationRow856 at r856

  unfold Seg52.relationRow857 at r857

  unfold Seg52.relationRow858 at r858

  unfold Seg52.relationRow859 at r859

  unfold Seg52.relationRow860 at r860

  unfold Seg52.relationRow861 at r861

  unfold Seg52.relationRow862 at r862

  unfold Seg52.relationRow863 at r863

  unfold Seg52.relationRow864 at r864

  unfold Seg52.relationRow865 at r865

  unfold Seg52.relationRow866 at r866

  unfold Seg52.relationRow867 at r867

  unfold Seg52.relationRow868 at r868

  unfold Seg52.relationRow869 at r869

  unfold Seg52.relationRow870 at r870

  unfold Seg52.relationRow871 at r871

  unfold Seg52.relationRow872 at r872

  unfold Seg52.relationRow873 at r873

  unfold Seg52.relationRow874 at r874

  unfold Seg52.relationRow875 at r875

  unfold Seg52.relationRow876 at r876

  unfold Seg52.relationRow877 at r877

  unfold Seg52.relationRow878 at r878

  unfold Seg52.relationRow879 at r879

  unfold Seg52.relationRow880 at r880

  unfold Seg52.relationRow881 at r881

  unfold Seg52.relationRow882 at r882

  unfold Seg52.relationRow883 at r883

  unfold Seg52.relationRow884 at r884

  unfold Seg52.relationRow885 at r885

  unfold Seg52.relationRow886 at r886

  unfold Seg52.relationRow887 at r887

  unfold Seg52.relationRow888 at r888

  unfold Seg52.relationRow889 at r889

  unfold Seg52.relationRow890 at r890

  unfold Seg52.relationRow891 at r891

  unfold Seg52.relationRow892 at r892

  unfold Seg52.relationRow893 at r893

  unfold Seg52.relationRow894 at r894

  unfold Seg52.relationRow895 at r895

  unfold Seg52.relationRow896 at r896

  unfold Seg52.relationRow897 at r897

  unfold Seg52.relationRow898 at r898

  unfold Seg52.relationRow899 at r899

  unfold Seg52.relationRow900 at r900

  unfold Seg52.relationRow901 at r901

  unfold Seg52.relationRow902 at r902

  unfold Seg52.relationRow903 at r903

  have hrecover := recover_ofFn_eq_recBits rho 45168 128

  have hacc : powSumAcc rho 0 1 45168 128 = rho 15 := by

    unfold Seg52.relationRow904 at r904

    simp only [powSumAcc]

    linear_combination r904

  have hrec : recover_binary_zmod' (seg52In0Bits rho) = rho 15 := by

    simp only [seg52In0Bits]

    rw [hrecover]

    rw [powSumAcc_eq] at hacc

    simpa using hacc

  apply Shieldd.GnarkFormal.RvkToBinary.to_binary_of_deployed (rho 15) (seg52In0Bits rho)
  · intro i hi
    have key := seg52In0Bits_get rho i hi
    have hgoal : rho (45168 + i) * (1 - rho (45168 + i)) = 0 := by
      interval_cases i
      · linear_combination r776
      · linear_combination r777
      · linear_combination r778
      · linear_combination r779
      · linear_combination r780
      · linear_combination r781
      · linear_combination r782
      · linear_combination r783
      · linear_combination r784
      · linear_combination r785
      · linear_combination r786
      · linear_combination r787
      · linear_combination r788
      · linear_combination r789
      · linear_combination r790
      · linear_combination r791
      · linear_combination r792
      · linear_combination r793
      · linear_combination r794
      · linear_combination r795
      · linear_combination r796
      · linear_combination r797
      · linear_combination r798
      · linear_combination r799
      · linear_combination r800
      · linear_combination r801
      · linear_combination r802
      · linear_combination r803
      · linear_combination r804
      · linear_combination r805
      · linear_combination r806
      · linear_combination r807
      · linear_combination r808
      · linear_combination r809
      · linear_combination r810
      · linear_combination r811
      · linear_combination r812
      · linear_combination r813
      · linear_combination r814
      · linear_combination r815
      · linear_combination r816
      · linear_combination r817
      · linear_combination r818
      · linear_combination r819
      · linear_combination r820
      · linear_combination r821
      · linear_combination r822
      · linear_combination r823
      · linear_combination r824
      · linear_combination r825
      · linear_combination r826
      · linear_combination r827
      · linear_combination r828
      · linear_combination r829
      · linear_combination r830
      · linear_combination r831
      · linear_combination r832
      · linear_combination r833
      · linear_combination r834
      · linear_combination r835
      · linear_combination r836
      · linear_combination r837
      · linear_combination r838
      · linear_combination r839
      · linear_combination r840
      · linear_combination r841
      · linear_combination r842
      · linear_combination r843
      · linear_combination r844
      · linear_combination r845
      · linear_combination r846
      · linear_combination r847
      · linear_combination r848
      · linear_combination r849
      · linear_combination r850
      · linear_combination r851
      · linear_combination r852
      · linear_combination r853
      · linear_combination r854
      · linear_combination r855
      · linear_combination r856
      · linear_combination r857
      · linear_combination r858
      · linear_combination r859
      · linear_combination r860
      · linear_combination r861
      · linear_combination r862
      · linear_combination r863
      · linear_combination r864
      · linear_combination r865
      · linear_combination r866
      · linear_combination r867
      · linear_combination r868
      · linear_combination r869
      · linear_combination r870
      · linear_combination r871
      · linear_combination r872
      · linear_combination r873
      · linear_combination r874
      · linear_combination r875
      · linear_combination r876
      · linear_combination r877
      · linear_combination r878
      · linear_combination r879
      · linear_combination r880
      · linear_combination r881
      · linear_combination r882
      · linear_combination r883
      · linear_combination r884
      · linear_combination r885
      · linear_combination r886
      · linear_combination r887
      · linear_combination r888
      · linear_combination r889
      · linear_combination r890
      · linear_combination r891
      · linear_combination r892
      · linear_combination r893
      · linear_combination r894
      · linear_combination r895
      · linear_combination r896
      · linear_combination r897
      · linear_combination r898
      · linear_combination r899
      · linear_combination r900
      · linear_combination r901
      · linear_combination r902
      · linear_combination r903
    have key' : (seg52In0Bits rho)[i] = rho (45168 + i) := by
      rw [← getElem!_pos (seg52In0Bits rho) i (by simpa using hi)]
      exact key
    exact key' ▸ hgoal
  · exact hrec

end Shieldd.GnarkFormal.Deployed.Contracts.Consolidate2x1
