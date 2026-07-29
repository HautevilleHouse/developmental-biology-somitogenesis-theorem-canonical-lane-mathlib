import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure SomitogenesisAdmittedObject where
  clockAndFront : ClockAndFrontPackage
  notchOscillator : NotchOscillatorNetworkPackage
  segmentBoundary : SegmentBoundaryModelPackage
  segmentNumberCompleted : ℕ

structure SomitogenesisAdmissibleClass where
  object : SomitogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def SomitogenesisBridgeClosed (A : SomitogenesisAdmissibleClass) : Prop :=
  ClockAndFrontClosed A.object.clockAndFront ∧
  NotchOscillatorNetworkClosed A.object.notchOscillator ∧
  SegmentBoundaryModelClosed A.object.segmentBoundary

theorem somite_bridge_from_admissible_class (A : SomitogenesisAdmissibleClass) :
    SomitogenesisBridgeClosed A := by
  unfold SomitogenesisBridgeClosed
  refine And.intro ?_ (And.intro ?_ ?_)
  · -- ClockAndFrontClosed A.object.clockAndFront
    exact ClockAndFrontClosed.intro A.object.clockAndFront
  · -- NotchOscillatorNetworkClosed A.object.notchOscillator
    exact NotchOscillatorNetworkClosed.intro A.object.notchOscillator
  · -- SegmentBoundaryModelClosed A.object.segmentBoundary
    exact SegmentBoundaryModelClosed.intro A.object.segmentBoundary

def SomitogenesisGateClosed (A : SomitogenesisAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem somite_gate_from_admissible_class (A : SomitogenesisAdmissibleClass) :
    SomitogenesisGateClosed A := by
  exact A.gateWitness

def ConstrainedSomitogenesisClosure (A : SomitogenesisAdmissibleClass) : Prop :=
  SomitogenesisBridgeClosed A ∧ SomitogenesisGateClosed A

theorem somitogenesis_endgame (A : SomitogenesisAdmissibleClass) :
    ConstrainedSomitogenesisClosure A := by
  exact And.intro (somite_bridge_from_admissible_class A) (somite_gate_from_admissible_class A)

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse