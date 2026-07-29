import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure NotchDeltaOscillation where
  notchExpression : Type u
  deltaExpression : Type v
  mutualInhibition : Prop
  oscillationPeriod : Prop
  somiteBoundary : Prop
  oscillationClosed : Prop

structure NotchDeltaOscillationEvidence (N : NotchDeltaOscillation) where
  mutualInhibitionClosed : N.mutualInhibition
  oscillationPeriodClosed : N.oscillationPeriod
  somiteBoundaryClosed : N.somiteBoundary
  oscillationClosedTerm : N.oscillationClosed

def NotchDeltaOscillationClosed (N : NotchDeltaOscillation) : Prop :=
  N.mutualInhibition ∧ N.oscillationPeriod ∧ N.somiteBoundary ∧ N.oscillationClosed

theorem notch_delta_oscillation_closed_from_evidence (N : NotchDeltaOscillation)
    (E : NotchDeltaOscillationEvidence N) : NotchDeltaOscillationClosed N := by
  exact And.intro E.mutualInhibitionClosed
    (And.intro E.oscillationPeriodClosed
      (And.intro E.somiteBoundaryClosed E.oscillationClosedTerm))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse