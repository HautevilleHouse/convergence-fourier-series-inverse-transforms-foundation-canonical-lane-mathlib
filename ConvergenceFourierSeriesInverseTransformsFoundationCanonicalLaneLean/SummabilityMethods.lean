import canonicalLaneMathlib.AdmissibleClass

/-!
# Summability Methods Package
-/

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure SummabilityMethodsPackage where
  cesaroSummability : Prop
  abelSummability : Prop
  gaussWeierstrassSummability : Prop
  equiconvergenceTheorem : Prop
  tauberianTheorem : Prop

structure SummabilityMethodsEvidence (S : SummabilityMethodsPackage) where
  cesaroSummabilityClosed : S.cesaroSummability
  abelSummabilityClosed : S.abelSummability
  gaussWeierstrassSummabilityClosed : S.gaussWeierstrassSummability
  equiconvergenceTheoremClosed : S.equiconvergenceTheorem
  tauberianTheoremClosed : S.tauberianTheorem

def SummabilityMethodsClosed (S : SummabilityMethodsPackage) : Prop :=
  S.cesaroSummability ∧ S.abelSummability ∧ S.gaussWeierstrassSummability ∧
  S.equiconvergenceTheorem ∧ S.tauberianTheorem

theorem summability_methods_closed_from_evidence (S : SummabilityMethodsPackage)
    (E : SummabilityMethodsEvidence S) : SummabilityMethodsClosed S := by
  exact And.intro E.cesaroSummabilityClosed
    (And.intro E.abelSummabilityClosed
      (And.intro E.gaussWeierstrassSummabilityClosed
        (And.intro E.equiconvergenceTheoremClosed E.tauberianTheoremClosed)))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse