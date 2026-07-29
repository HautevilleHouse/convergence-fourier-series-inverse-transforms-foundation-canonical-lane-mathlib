import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure InverseTransformPackage where
  transform : (Nat -> ℝ) -> ℝ -> ℝ
  kernel : ℝ -> ℝ
  inversionFormula : Prop
  inversionHolds : Prop
  kernelIntegrable : Prop
  inversionFormulaClosed : inversionFormula
  kernelIntegrableClosed : kernelIntegrable

def InverseTransformClosed (I : InverseTransformPackage) : Prop :=
  I.inversionFormula ∧ I.kernelIntegrable

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse