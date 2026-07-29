import canonicalLaneMathlib.AdmissibleClass
import DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean.SomitogenesisBridgeLemmas

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse