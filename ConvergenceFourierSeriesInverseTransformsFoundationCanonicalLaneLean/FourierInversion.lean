import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FourierInversionPackage where
  kernelFunction : Type u
  approximateIdentity : Prop
  inversionIntegralConverges : Prop
  inversionFormulaHolds : Prop

structure FourierInversionEvidence (I : FourierInversionPackage) where
  kernelFunctionClosed : I.kernelFunction
  approximateIdentityClosed : I.approximateIdentity
  inversionIntegralConvergesClosed : I.inversionIntegralConverges
  inversionFormulaHoldsClosed : I.inversionFormulaHolds

def FourierInversionClosed (I : FourierInversionPackage) : Prop :=
  I.inversionIntegralConverges ∧ I.inversionFormulaHolds

theorem fourier_inversion_closed_from_evidence
    (I : FourierInversionPackage) (E : FourierInversionEvidence I) :
    FourierInversionClosed I := by
  exact And.intro E.inversionIntegralConvergesClosed E.inversionFormulaHoldsClosed

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse