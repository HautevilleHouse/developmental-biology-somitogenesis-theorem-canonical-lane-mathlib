import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure NotchSignalingPackage where
  ligandReceptorBinding : Prop
  lateralInhibition : Prop
  feedbackLoop : Prop
  pathwayConservation : Prop

structure NotchSignalingEvidence (N : NotchSignalingPackage) where
  ligandReceptorBindingClosed : N.ligandReceptorBinding
  lateralInhibitionClosed : N.lateralInhibition
  feedbackLoopClosed : N.feedbackLoop
  pathwayConservationClosed : N.pathwayConservation

def NotchSignalingClosed (N : NotchSignalingPackage) : Prop :=
  N.ligandReceptorBinding ∧ N.lateralInhibition ∧ N.feedbackLoop ∧ N.pathwayConservation

theorem notch_signaling_closed_from_evidence (N : NotchSignalingPackage) (E : NotchSignalingEvidence N) : NotchSignalingClosed N := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.lateralInhibitionClosed
      (And.intro E.feedbackLoopClosed E.pathwayConservationClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse