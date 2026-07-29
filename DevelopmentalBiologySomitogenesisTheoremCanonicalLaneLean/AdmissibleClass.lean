import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : SomitogenesisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SomitogenesisBridgeClosed A ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse