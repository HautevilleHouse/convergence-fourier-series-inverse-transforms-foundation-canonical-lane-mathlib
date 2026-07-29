import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FejerKernelPackage where
  fejerKernel : Nat -> ℝ -> ℝ
  positivity : Prop
  cesaroSummation : (Nat -> ℝ) -> Nat -> ℝ
  uniformApproximation : Prop
  positivityClosed : positivity
  uniformApproximationClosed : uniformApproximation

def FejerKernelClosed (F : FejerKernelPackage) : Prop :=
  F.positivity ∧ F.uniformApproximation

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse