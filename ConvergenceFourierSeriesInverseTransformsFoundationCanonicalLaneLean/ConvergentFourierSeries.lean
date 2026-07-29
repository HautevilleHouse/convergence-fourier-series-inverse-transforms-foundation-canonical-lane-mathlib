import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FourierSeriesAdmittedObject where
  functionSpace : Type u
  topology : TopologicalSpace functionSpace
  integrable : Prop
  orthonormalBasis : Prop
  fourierCoefficientsConverge : Prop
  inverseTransformRecovers : Prop
  conclusion : inverseTransformRecovers

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse