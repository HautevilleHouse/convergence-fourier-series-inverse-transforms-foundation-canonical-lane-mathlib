import canonicalLaneMathlib.AdmissibleClass

/-!
# Convergence Estimates Package
-/

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure ConvergenceEstimatesPackage where
  partialSumBound : Prop
  dirichletKernelIntegral : Prop
  fejerKernelIntegral : Prop
  uniformConvergenceForSmooth : Prop
  pointwiseConvergenceCondition : Prop

structure ConvergenceEstimatesEvidence (C : ConvergenceEstimatesPackage) where
  partialSumBoundClosed : C.partialSumBound
  dirichletKernelIntegralClosed : C.dirichletKernelIntegral
  fejerKernelIntegralClosed : C.fejerKernelIntegral
  uniformConvergenceForSmoothClosed : C.uniformConvergenceForSmooth
  pointwiseConvergenceConditionClosed : C.pointwiseConvergenceCondition

def ConvergenceEstimatesClosed (C : ConvergenceEstimatesPackage) : Prop :=
  C.partialSumBound ∧ C.dirichletKernelIntegral ∧ C.fejerKernelIntegral ∧
  C.uniformConvergenceForSmooth ∧ C.pointwiseConvergenceCondition

theorem convergence_estimates_closed_from_evidence (C : ConvergenceEstimatesPackage)
    (E : ConvergenceEstimatesEvidence C) : ConvergenceEstimatesClosed C := by
  exact And.intro E.partialSumBoundClosed
    (And.intro E.dirichletKernelIntegralClosed
      (And.intro E.fejerKernelIntegralClosed
        (And.intro E.uniformConvergenceForSmoothClosed E.pointwiseConvergenceConditionClosed)))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse