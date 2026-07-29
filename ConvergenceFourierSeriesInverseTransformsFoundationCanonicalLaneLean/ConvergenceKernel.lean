import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean

structure ConvergenceKernelPackage where
  kernelFamily : Type
  integrabilityCondition : Prop
  decayProperty : Prop
  pointwiseConvergence : Prop
  uniformConvergence : Prop

structure ConvergenceKernelEvidence (C : ConvergenceKernelPackage) where
  integrabilityConditionClosed : C.integrabilityCondition
  decayPropertyClosed : C.decayProperty
  pointwiseConvergenceClosed : C.pointwiseConvergence
  uniformConvergenceClosed : C.uniformConvergence

def ConvergenceKernelClosed (C : ConvergenceKernelPackage) : Prop :=
  C.integrabilityCondition ∧ C.decayProperty ∧
  C.pointwiseConvergence ∧ C.uniformConvergence

theorem convergence_kernel_closed_from_evidence
    (C : ConvergenceKernelPackage) (E : ConvergenceKernelEvidence C) :
    ConvergenceKernelClosed C := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.decayPropertyClosed
      (And.intro E.pointwiseConvergenceClosed E.uniformConvergenceClosed))

end ConvergenceFourierSeriesInverseTransformsFoundationCanonicalLaneLean
end HautevilleHouse