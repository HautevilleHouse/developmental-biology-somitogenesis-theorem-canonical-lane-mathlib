import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure RetinoicAcidGradientPackage where
  synthesisEnzymes : Prop
  degradationPathway : Prop
  gradientShaping : Prop
  signalingCrosstalk : Prop

structure RetinoicAcidGradientEvidence (R : RetinoicAcidGradientPackage) where
  synthesisEnzymesClosed : R.synthesisEnzymes
  degradationPathwayClosed : R.degradationPathway
  gradientShapingClosed : R.gradientShaping
  signalingCrosstalkClosed : R.signalingCrosstalk

def RetinoicAcidGradientClosed (R : RetinoicAcidGradientPackage) : Prop :=
  R.synthesisEnzymes ∧ R.degradationPathway ∧ R.gradientShaping ∧ R.signalingCrosstalk

theorem retinoic_acid_gradient_closed_from_evidence (R : RetinoicAcidGradientPackage) (E : RetinoicAcidGradientEvidence R) : RetinoicAcidGradientClosed R := by
  exact And.intro E.synthesisEnzymesClosed
    (And.intro E.degradationPathwayClosed
      (And.intro E.gradientShapingClosed E.signalingCrosstalkClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse