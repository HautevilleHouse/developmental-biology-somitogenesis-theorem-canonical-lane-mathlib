import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean

struct SomitogenesisAdmittedObject where
  cellPopulation : Type
  somiteCount : Nat
  periodMeasured : ℝ
  fgfGradientSlope : ℝ
  retinoicAcidDomain : Type

struct SomitogenesisAdmittedObjectEvidence (O : SomitogenesisAdmittedObject) where
  cellPopulationNonempty : Nonempty O.cellPopulation
  somiteCountPositive : O.somiteCount > 0
  periodMeasuredPositive : O.periodMeasured > 0
  fgfGradientSlopePositive : O.fgfGradientSlope > 0
  retinoicAcidDomainNonempty : Nonempty O.retinoicAcidDomain

end DevelopmentalBiologySomitogenesisTheoremCanonicalLaneLean
end HautevilleHouse