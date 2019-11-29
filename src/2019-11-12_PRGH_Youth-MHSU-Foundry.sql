

select visitid
,DischargeDispositionDescription
,age
,GenderDescription
,AdmittedFlag
,StarttoDispositionInclCDU
,TriageAcuityCode
,ArrivalModeDescription
,case when [FamilyDoctorCode] is null then 0 else 1 end as FamilyDoctorFlag 
,[InpatientServiceDescription]
,1 as visit
,ChiefComplaintSystem
, EDDiagnosisDescription

from [dbo].[vwEDVisitIdentifiedRegional]

where FacilityShortName in ('prgh')
	and startdate between '5/31/2019' and '8/22/2019'
	and age between 12 and 18

order by AdmittedFlag
