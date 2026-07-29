import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure SummationMethodPackage where
  methodType : Type
  cesaroOrder : Nat
  regularityCondition : Prop
  fejerKernelExists : Prop
  summabilityToFunction : Prop

structure SummationMethodEvidence (S : SummationMethodPackage) where
  regularityConditionClosed : S.regularityCondition
  fejerKernelExistsClosed : S.fejerKernelExists
  summabilityToFunctionClosed : S.summabilityToFunction

def SummationMethodClosed (S : SummationMethodPackage) : Prop :=
  S.regularityCondition ∧ S.fejerKernelExists ∧
  S.summabilityToFunction

theorem summation_method_closed_from_evidence
    (S : SummationMethodPackage) (E : SummationMethodEvidence S) :
    SummationMethodClosed S := by
  exact And.intro E.regularityConditionClosed
    (And.intro E.fejerKernelExistsClosed E.summabilityToFunctionClosed)

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse