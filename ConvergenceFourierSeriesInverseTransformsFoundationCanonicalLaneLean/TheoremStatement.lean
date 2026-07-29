import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure FourierAdmittedObject where
  functionSpace : Type
  normedSpace : Prop
  l1Condition : Prop
  inverseTransformConvergesPointwise : Prop
  conclusion : inverseTransformConvergesPointwise

def FourierInverseClosed (O : FourierAdmittedObject) : Prop :=
  O.inverseTransformConvergesPointwise

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse