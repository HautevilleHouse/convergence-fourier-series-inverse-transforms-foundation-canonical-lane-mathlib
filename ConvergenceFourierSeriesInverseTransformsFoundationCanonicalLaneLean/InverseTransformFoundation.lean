import canonicalLaneMathlib.AdmissibleClass

/-!
# Inverse Transform Foundation Package
-/

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure InverseTransformFoundationPackage where
  fourierInversionFormula : Prop
  integrabilityCondition : Prop
  inversionAtContinuityPoints : Prop
  inversionInL1 : Prop
  approximationIdentity : Prop

structure InverseTransformFoundationEvidence (I : InverseTransformFoundationPackage) where
  fourierInversionFormulaClosed : I.fourierInversionFormula
  integrabilityConditionClosed : I.integrabilityCondition
  inversionAtContinuityPointsClosed : I.inversionAtContinuityPoints
  inversionInL1Closed : I.inversionInL1
  approximationIdentityClosed : I.approximationIdentity

def InverseTransformFoundationClosed (I : InverseTransformFoundationPackage) : Prop :=
  I.fourierInversionFormula ∧ I.integrabilityCondition ∧ I.inversionAtContinuityPoints ∧
  I.inversionInL1 ∧ I.approximationIdentity

theorem inverse_transform_foundation_closed_from_evidence
    (I : InverseTransformFoundationPackage) (E : InverseTransformFoundationEvidence I) :
    InverseTransformFoundationClosed I := by
  exact And.intro E.fourierInversionFormulaClosed
    (And.intro E.integrabilityConditionClosed
      (And.intro E.inversionAtContinuityPointsClosed
        (And.intro E.inversionInL1Closed E.approximationIdentityClosed)))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse