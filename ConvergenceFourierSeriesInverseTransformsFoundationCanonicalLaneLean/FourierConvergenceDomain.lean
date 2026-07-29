import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FourierConvergenceDomain where
  carrier : Type u
  integrableFunctions : Type v
  pointwiseConvergenceCondition : Prop
  uniformConvergenceCondition : Prop
  L2ConvergenceCondition : Prop
  inversionFormulaHolds : Prop

def FourierConvergenceDomainClosed (D : FourierConvergenceDomain) : Prop :=
  D.pointwiseConvergenceCondition ∧ D.uniformConvergenceCondition ∧
  D.L2ConvergenceCondition ∧ D.inversionFormulaHolds

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse