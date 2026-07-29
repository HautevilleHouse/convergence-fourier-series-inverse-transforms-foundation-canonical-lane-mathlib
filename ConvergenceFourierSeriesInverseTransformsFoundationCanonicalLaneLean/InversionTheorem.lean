import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure InversionTheoremPackage (C : ConvergenceKernelPackage) (S : SummationMethodPackage) where
  functionClass : Type
  inversionFormula : Prop
  pointwiseInversion : Prop
  normConvergence : Prop

structure InversionTheoremEvidence {C : ConvergenceKernelPackage} {S : SummationMethodPackage}
    (T : InversionTheoremPackage C S) where
  inversionFormulaClosed : T.inversionFormula
  pointwiseInversionClosed : T.pointwiseInversion
  normConvergenceClosed : T.normConvergence

def InversionTheoremClosed {C : ConvergenceKernelPackage} {S : SummationMethodPackage}
    (T : InversionTheoremPackage C S) : Prop :=
  T.inversionFormula ∧ T.pointwiseInversion ∧ T.normConvergence

theorem inversion_theorem_closed_from_evidence
    {C : ConvergenceKernelPackage} {S : SummationMethodPackage}
    (T : InversionTheoremPackage C S) (E : InversionTheoremEvidence T) :
    InversionTheoremClosed T := by
  exact And.intro E.inversionFormulaClosed
    (And.intro E.pointwiseInversionClosed E.normConvergenceClosed)

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse