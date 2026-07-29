import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure PointwiseConvergencePackage where
  kernelFamily : Type u
  dilationParameter : Type v
  pointwiseLimit : Prop
  regularizationCondition : Prop
  DirichletKernelIntegrated : Prop

structure PointwiseConvergenceEvidence (P : PointwiseConvergencePackage) where
  kernelFamilyClosed : P.kernelFamily
  dilationParameterClosed : P.dilationParameter
  pointwiseLimitClosed : P.pointwiseLimit
  regularizationConditionClosed : P.regularizationCondition
  DirichletKernelIntegratedClosed : P.DirichletKernelIntegrated

def PointwiseConvergenceClosed (P : PointwiseConvergencePackage) : Prop :=
  P.pointwiseLimit ∧ P.regularizationCondition ∧ P.DirichletKernelIntegrated

theorem pointwise_convergence_closed_from_evidence
    (P : PointwiseConvergencePackage) (E : PointwiseConvergenceEvidence P) :
    PointwiseConvergenceClosed P := by
  exact And.intro E.pointwiseLimitClosed
    (And.intro E.regularizationConditionClosed E.DirichletKernelIntegratedClosed)

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse