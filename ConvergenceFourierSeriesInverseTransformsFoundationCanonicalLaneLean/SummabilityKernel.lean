import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure SummabilityKernelPackage where
  kernelDefined : Prop
  summabilityCondition : Prop
  convolutionApproximatesIdentity : Prop
  inversionRecovered : Prop

structure SummabilityKernelEvidence (S : SummabilityKernelPackage) where
  kernelDefinedClosed : S.kernelDefined
  summabilityConditionClosed : S.summabilityCondition
  convolutionApproximatesIdentityClosed : S.convolutionApproximatesIdentity
  inversionRecoveredClosed : S.inversionRecovered

def SummabilityKernelClosed (S : SummabilityKernelPackage) : Prop :=
  S.kernelDefined ∧ S.summabilityCondition ∧
  S.convolutionApproximatesIdentity ∧ S.inversionRecovered

theorem summability_kernel_closed_from_evidence
    (S : SummabilityKernelPackage) (E : SummabilityKernelEvidence S) :
    SummabilityKernelClosed S := by
  exact And.intro E.kernelDefinedClosed
    (And.intro E.summabilityConditionClosed
      (And.intro E.convolutionApproximatesIdentityClosed E.inversionRecoveredClosed))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse