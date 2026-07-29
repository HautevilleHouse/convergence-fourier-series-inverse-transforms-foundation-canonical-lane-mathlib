import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FejerKernelPackage where
  cesaroMeanDefined : Prop
  fejerKernelPositive : Prop
  approximateIdentityProperty : Prop
  uniformConvergenceForContinuous : Prop

structure FejerKernelEvidence (F : FejerKernelPackage) where
  cesaroMeanDefinedClosed : F.cesaroMeanDefined
  fejerKernelPositiveClosed : F.fejerKernelPositive
  approximateIdentityPropertyClosed : F.approximateIdentityProperty
  uniformConvergenceForContinuousClosed : F.uniformConvergenceForContinuous

def FejerKernelClosed (F : FejerKernelPackage) : Prop :=
  F.cesaroMeanDefined ∧ F.fejerKernelPositive ∧
  F.approximateIdentityProperty ∧ F.uniformConvergenceForContinuous

theorem fejer_kernel_closed_from_evidence
    (F : FejerKernelPackage) (E : FejerKernelEvidence F) :
    FejerKernelClosed F := by
  exact And.intro E.cesaroMeanDefinedClosed
    (And.intro E.fejerKernelPositiveClosed
      (And.intro E.approximateIdentityPropertyClosed E.uniformConvergenceForContinuousClosed))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse