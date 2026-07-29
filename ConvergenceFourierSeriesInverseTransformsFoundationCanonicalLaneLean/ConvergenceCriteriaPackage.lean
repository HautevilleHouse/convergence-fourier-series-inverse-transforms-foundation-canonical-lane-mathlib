import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure ConvergenceCriteriaPackage where
  functionClass : Type u
  modulusOfContinuity : (Nat -> ℝ) -> ℝ
  holderCondition : Prop
  differentiableCondition : Prop
  boundedVariationCondition : Prop
  holderConditionClosed : holderCondition
  differentiableConditionClosed : differentiableCondition
  boundedVariationConditionClosed : boundedVariationCondition

def ConvergenceCriteriaClosed (C : ConvergenceCriteriaPackage) : Prop :=
  C.holderCondition ∨ C.differentiableCondition ∨ C.boundedVariationCondition

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse