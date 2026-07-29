import canonicalLaneMathlib.FourierConvergenceDomain

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure InversionIntegrabilityPackage (D : FourierConvergenceDomain) where
  integrableFunctionSpace : Type v
  kernelRegularity : Prop
  inversionKernel : Type w
  integralExists : Prop
  inversionIdentity : Prop

structure InversionIntegrabilityEvidence {D : FourierConvergenceDomain}
    (I : InversionIntegrabilityPackage D) where
  integralExistsClosed : I.integralExists
  inversionIdentityClosed : I.inversionIdentity

def InversionIntegrabilityClosed {D : FourierConvergenceDomain}
    (I : InversionIntegrabilityPackage D) : Prop :=
  I.integralExists ∧ I.inversionIdentity

theorem inversion_integrability_closed_from_evidence
    {D : FourierConvergenceDomain} (I : InversionIntegrabilityPackage D)
    (E : InversionIntegrabilityEvidence I) : InversionIntegrabilityClosed I := by
  exact And.intro E.integralExistsClosed E.inversionIdentityClosed

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse