import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

struct ClockGeneRegulation (A : AdmissibleClass) where
  transcriptionFactors : Type
  promoterRegions : Type
  autorepressionFeedback : Prop
  couplingToNotch : Prop
  periodStability : Prop
  phaseCoordination : Prop

struct ClockGeneRegulationEvidence (A : AdmissibleClass) (C : ClockGeneRegulation A) where
  autorepressionFeedbackClosed : C.autorepressionFeedback
  couplingToNotchClosed : C.couplingToNotch
  periodStabilityClosed : C.periodStability
  phaseCoordinationClosed : C.phaseCoordination

def ClockGeneRegulationClosed (A : AdmissibleClass) (C : ClockGeneRegulation A) : Prop :=
  C.autorepressionFeedback ∧ C.couplingToNotch ∧ C.periodStability ∧ C.phaseCoordination

theorem clock_gene_regulation_closed_from_evidence (A : AdmissibleClass) (C : ClockGeneRegulation A)
    (E : ClockGeneRegulationEvidence A C) : ClockGeneRegulationClosed A C := by
  exact And.intro E.autorepressionFeedbackClosed (And.intro E.couplingToNotchClosed
    (And.intro E.periodStabilityClosed E.phaseCoordinationClosed))

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse