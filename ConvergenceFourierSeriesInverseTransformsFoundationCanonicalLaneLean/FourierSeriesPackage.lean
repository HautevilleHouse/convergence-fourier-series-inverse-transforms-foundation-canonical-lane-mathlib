import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FourierSeriesPackage where
  functionSpace : Type u
  orthonormalBasis : Type v
  seriesExpansion : functionSpace -> (Nat -> ℝ) -> Prop
  partialSums : (Nat -> ℝ) -> Nat -> ℝ
  convergenceMode : Prop
  pointwiseConvergence : Prop
  uniformConvergence : Prop

def FourierSeriesClosed (F : FourierSeriesPackage) : Prop :=
  F.pointwiseConvergence ∧ F.uniformConvergence

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse