import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure ConvergenceTheoremsPackage where
  pointwiseConvergence : Prop
  uniformConvergence : Prop
  L2Convergence : Prop
  convergenceConditions : Prop

structure ConvergenceTheoremsEvidence (C : ConvergenceTheoremsPackage) where
  pointwiseConvergenceClosed : C.pointwiseConvergence
  uniformConvergenceClosed : C.uniformConvergence
  L2ConvergenceClosed : C.L2Convergence
  convergenceConditionsClosed : C.convergenceConditions

def ConvergenceTheoremsClosed (C : ConvergenceTheoremsPackage) : Prop :=
  C.pointwiseConvergence ∧ C.uniformConvergence ∧ C.L2Convergence ∧ C.convergenceConditions

theorem convergence_theorems_closed_from_evidence (C : ConvergenceTheoremsPackage) (E : ConvergenceTheoremsEvidence C) :
    ConvergenceTheoremsClosed C := by
  exact And.intro E.pointwiseConvergenceClosed (And.intro E.uniformConvergenceClosed (And.intro E.L2ConvergenceClosed E.convergenceConditionsClosed))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse