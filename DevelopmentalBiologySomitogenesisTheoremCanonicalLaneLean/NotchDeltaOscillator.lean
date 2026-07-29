import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure NotchDeltaOscillator (A : AdmissibleClass) where
  ligand : Type
  receptor : Type
  lateralInhibition : Prop
  oscillatoryExpression : Prop
  notchSignalingActivated : Prop
  deltaExpressionPattern : Prop

structure NotchDeltaOscillatorEvidence (A : AdmissibleClass) (N : NotchDeltaOscillator A) where
  lateralInhibitionClosed : N.lateralInhibition
  oscillatoryExpressionClosed : N.oscillatoryExpression
  notchSignalingActivatedClosed : N.notchSignalingActivated
  deltaExpressionPatternClosed : N.deltaExpressionPattern

def NotchDeltaOscillatorClosed (A : AdmissibleClass) (N : NotchDeltaOscillator A) : Prop :=
  N.lateralInhibition ∧ N.oscillatoryExpression ∧ N.notchSignalingActivated ∧ N.deltaExpressionPattern

theorem notch_delta_oscillator_closed_from_evidence (A : AdmissibleClass) (N : NotchDeltaOscillator A)
    (E : NotchDeltaOscillatorEvidence A N) : NotchDeltaOscillatorClosed A N := by
  exact And.intro E.lateralInhibitionClosed (And.intro E.oscillatoryExpressionClosed
    (And.intro E.notchSignalingActivatedClosed E.deltaExpressionPatternClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse