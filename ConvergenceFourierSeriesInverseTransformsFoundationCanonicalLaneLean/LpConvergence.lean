import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure LpConvergencePackage where
  dominatedConvergenceApplied : Prop
  partialSumOperatorBounded : Prop
  rieszThorntonInterpolation : Prop
  convergenceInLp : Prop

structure LpConvergenceEvidence (L : LpConvergencePackage) where
  dominatedConvergenceAppliedClosed : L.dominatedConvergenceApplied
  partialSumOperatorBoundedClosed : L.partialSumOperatorBounded
  rieszThorntonInterpolationClosed : L.rieszThorntonInterpolation
  convergenceInLpClosed : L.convergenceInLp

def LpConvergenceClosed (L : LpConvergencePackage) : Prop :=
  L.dominatedConvergenceApplied ∧ L.partialSumOperatorBounded ∧
  L.rieszThorntonInterpolation ∧ L.convergenceInLp

theorem lp_convergence_closed_from_evidence
    (L : LpConvergencePackage) (E : LpConvergenceEvidence L) :
    LpConvergenceClosed L := by
  exact And.intro E.dominatedConvergenceAppliedClosed
    (And.intro E.partialSumOperatorBoundedClosed
      (And.intro E.rieszThorntonInterpolationClosed E.convergenceInLpClosed))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse