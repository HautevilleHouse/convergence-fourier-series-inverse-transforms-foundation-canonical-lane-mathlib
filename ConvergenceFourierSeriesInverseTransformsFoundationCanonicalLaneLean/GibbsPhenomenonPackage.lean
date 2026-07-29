import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure GibbsPhenomenonPackage where
  jumpFunction : ℝ -> ℝ
  partialSumsOvershoot : Prop
  overshootQuantified : Prop
  gibbsConstant : ℝ
  partialSumsOvershootClosed : partialSumsOvershoot
  overshootQuantifiedClosed : overshootQuantified

def GibbsPhenomenonClosed (G : GibbsPhenomenonPackage) : Prop :=
  G.partialSumsOvershoot ∧ G.overshootQuantified

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse