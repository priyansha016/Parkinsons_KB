CREATE CONSTRAINT UNIQUE_IMPORT_NAME FOR (node:`UNIQUE IMPORT LABEL`) REQUIRE (node.`UNIQUE IMPORT ID`) IS UNIQUE;
UNWIND [{_id:114, properties:{name:"FMT-PET", id:"FMT-PET"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Technology;
UNWIND [{_id:790, properties:{name:"DeepBrainStimulation", id:"DeepBrainStimulation"}}, {_id:791, properties:{name:"CranialElectrotherapyStimulation", id:"CranialElectrotherapyStimulation"}}, {_id:799, properties:{name:"FromentManeuver", id:"FromentManeuver"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Procedure;
UNWIND [{_id:1916, properties:{name:"A42Peptide", id:"A42Peptide"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Peptide;
UNWIND [{_id:2110, properties:{name:"NonhumanPrimate", id:"NonhumanPrimate"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Species;
UNWIND [{_id:1750, properties:{name:"Roche", id:"Roche"}}, {_id:1751, properties:{name:"Aprinoia", id:"Aprinoia"}}, {_id:1752, properties:{name:"Amylyx", id:"Amylyx"}}, {_id:1754, properties:{name:"KyowaKirin", id:"KyowaKirin"}}, {_id:1756, properties:{name:"CBDsolutions", id:"CBDsolutions"}}, {_id:1778, properties:{name:"Astex", id:"Astex"}}, {_id:1779, properties:{name:"EliLilly", id:"EliLilly"}}, {_id:1780, properties:{name:"Teva", id:"Teva"}}, {_id:1792, properties:{name:"Evidera", id:"Evidera"}}, {_id:1793, properties:{name:"GSK", id:"GSK"}}, {_id:1953, properties:{name:"Neuroderm", id:"Neuroderm"}}, {_id:1954, properties:{name:"Amneal", id:"Amneal"}}, {_id:1955, properties:{name:"Acadia", id:"Acadia"}}, {_id:1956, properties:{name:"AvionPharmaceuticals", id:"AvionPharmaceuticals"}}, {_id:1957, properties:{name:"Acorda", id:"Acorda"}}, {_id:1958, properties:{name:"Supernus", id:"Supernus"}}, {_id:1959, properties:{name:"USWorldMeds", id:"USWorldMeds"}}, {_id:1960, properties:{name:"NeuroDiagnosticsInc", id:"NeuroDiagnosticsInc"}}, {_id:1961, properties:{name:"SYNAPSdx", id:"SYNAPSdx"}}, {_id:1962, properties:{name:"HerantisPharma", id:"HerantisPharma"}}, {_id:1963, properties:{name:"REGAINTherapeutics", id:"REGAINTherapeutics"}}, {_id:1964, properties:{name:"LippincottWilliamsAndWilkins", id:"LippincottWilliamsAndWilkins"}}, {_id:1965, properties:{name:"CambridgeUniversityPress", id:"CambridgeUniversityPress"}}, {_id:1966, properties:{name:"Springer", id:"Springer"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Company;
UNWIND [{_id:72, properties:{name:"D2_3_Targeting_Anti_PD_Drugs", id:"D2_3_Targeting_Anti_PD_Drugs"}}, {_id:136, properties:{name:"DBSStimulation", id:"DBSStimulation"}}, {_id:299, properties:{name:"TauTherapeuticStrategies", id:"TauTherapeuticStrategies"}}, {_id:357, properties:{name:"DeepBrainStimulation", id:"DeepBrainStimulation"}}, {_id:751, properties:{name:"DBS", id:"DBS"}}, {_id:774, properties:{name:"Acupuncture", id:"Acupuncture"}}, {_id:775, properties:{name:"TranscranialMagneticStimulation", id:"TranscranialMagneticStimulation"}}, {_id:846, properties:{name:"Neurorehabilitation", id:"Neurorehabilitation"}}, {_id:890, properties:{name:"Exercise", id:"Exercise"}}, {_id:895, properties:{name:"ChronicSubthalamicDeepBrainStimulation", id:"ChronicSubthalamicDeepBrainStimulation"}}, {_id:896, properties:{name:"CranialElectrotherapyStimulation", id:"CranialElectrotherapyStimulation"}}, {_id:1608, properties:{name:"ASO", id:"ASO"}}, {_id:1652, properties:{name:"ASOTherapy", id:"ASOTherapy"}}, {_id:1969, properties:{name:"EmbryonicNigralTransplants", id:"EmbryonicNigralTransplants"}}, {_id:1970, properties:{name:"NigralTransplants", id:"NigralTransplants"}}, {_id:2093, properties:{name:"MRgFUSTherapy", id:"MRgFUSTherapy"}}, {_id:2094, properties:{name:"ViralVectorTherapy", id:"ViralVectorTherapy"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Therapy;
UNWIND [{_id:340, properties:{name:"BrainSinglePhotonEmissionCT", id:"BrainSinglePhotonEmissionCT"}}, {_id:341, properties:{name:"SPECT", id:"SPECT"}}, {_id:342, properties:{name:"PET", id:"PET"}}, {_id:343, properties:{name:"MagneticResonanceImaging", id:"MagneticResonanceImaging"}}, {_id:344, properties:{name:"FunctionalMRI", id:"FunctionalMRI"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ImagingTechnique;
UNWIND [{_id:513, properties:{name:"SHPPias1Xbp1Axis", id:"SHPPias1Xbp1Axis"}}, {_id:515, properties:{name:"PerkMediatedUbiquitinationPathway", id:"PerkMediatedUbiquitinationPathway"}}, {_id:1044, properties:{name:"Parkinson's Disease Pathway (KEGG hsa05012)", id:"ParkinsonsPathway_hsa05012"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Pathway;
UNWIND [{_id:2016, properties:{name:"GlobalParkinsonsGeneticsProgram", id:"GlobalParkinsonsGeneticsProgram"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ResearchProgram;
UNWIND [{_id:680, properties:{name:"ANKK1 - GGrs2734849", id:"ANKK1 - GGrs2734849"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:`Genetic variation`;
UNWIND [{_id:0, properties:{name:"ParkinsonsDisease", id:"ParkinsonsDisease"}}, {_id:23, properties:{name:"AlzheimersDisease", id:"AlzheimersDisease"}}, {_id:25, properties:{name:"AmyotrophicLateralSclerosis", id:"AmyotrophicLateralSclerosis"}}, {_id:26, properties:{name:"HuntingtonsDisease", id:"HuntingtonsDisease"}}, {_id:43, properties:{name:"PD", id:"PD"}}, {_id:48, properties:{name:"LewyBodyPathology", id:"LewyBodyPathology"}}, {_id:58, properties:{name:"FrontotemporalDementia", id:"FrontotemporalDementia"}}, {_id:59, properties:{name:"AtypicalParkinsonianSyndromes", id:"AtypicalParkinsonianSyndromes"}}, {_id:70, properties:{name:"MSA", id:"MSA"}}, {_id:71, properties:{name:"PSP", id:"PSP"}}, {_id:100, properties:{name:"PDCI", id:"PDCI"}}, {_id:101, properties:{name:"PDD", id:"PDD"}}, {_id:102, properties:{name:"PD-MCI", id:"PD-MCI"}}, {_id:116, properties:{name:"RBD", id:"RBD"}}, {_id:117, properties:{name:"dementiaWithLewyBodies", id:"dementiaWithLewyBodies"}}, {_id:157, properties:{name:"PSP-P", id:"PSP-P"}}, {_id:178, properties:{name:"EOPD", id:"EOPD"}}, {_id:232, properties:{name:"LewyBodyDisorders", id:"LewyBodyDisorders"}}, {_id:333, properties:{name:"AlzheimersDement", id:"AlzheimersDement"}}, {_id:347, properties:{name:"AADCDeficiency", id:"AADCDeficiency"}}, {_id:355, properties:{name:"GBADisease", id:"GBADisease"}}, {_id:363, properties:{name:"ParkinsonsDiseaseDementia", id:"ParkinsonsDiseaseDementia"}}, {_id:389, properties:{name:"GBAAssociatedParkinsonsDisease", id:"GBAAssociatedParkinsonsDisease"}}, {_id:390, properties:{name:"LewyBodyDementia", id:"LewyBodyDementia"}}, {_id:415, properties:{name:"REM Sleep Behavior Disorder", id:"REM Sleep Behavior Disorder"}}, {_id:432, properties:{name:"FamilialPD", id:"FamilialPD"}}, {_id:433, properties:{name:"IdiopathicPD", id:"IdiopathicPD"}}, {_id:463, properties:{name:"CrohnsDisease", id:"CrohnsDisease"}}, {_id:464, properties:{name:"Leprosy", id:"Leprosy"}}, {_id:465, properties:{name:"Tuberculosis", id:"Tuberculosis"}}, {_id:475, properties:{name:"PDisease", id:"PDisease"}}, {_id:540, properties:{name:"ImmuneRelatedDisorders", id:"ImmuneRelatedDisorders"}}, {_id:621, properties:{name:"NeurodegenerativeDiseases", id:"NeurodegenerativeDiseases"}}, {_id:664, properties:{name:"Apathy", id:"Apathy"}}, {_id:665, properties:{name:"MultipleSclerosis", id:"MultipleSclerosis"}}, {_id:685, properties:{name:"Schizophrenia", id:"Schizophrenia"}}, {_id:686, properties:{name:"Depression", id:"Depression"}}, {_id:697, properties:{name:"AttentionDeficitHyperactivityDisorder", id:"AttentionDeficitHyperactivityDisorder"}}, {_id:698, properties:{name:"ADHD", id:"ADHD"}}, {_id:702, properties:{name:"PanicDisorder", id:"PanicDisorder"}}, {_id:703, properties:{name:"UnipolarDepression", id:"UnipolarDepression"}}, {_id:740, properties:{name:"RestlessLegsSyndrome", id:"RestlessLegsSyndrome"}}, {_id:741, properties:{name:"RLS", id:"RLS"}}, {_id:794, properties:{name:"Akathisia", id:"Akathisia"}}, {_id:801, properties:{name:"Arthritis", id:"Arthritis"}}, {_id:829, properties:{name:"ChaudhuriDisease", id:"ChaudhuriDisease"}}, {_id:830, properties:{name:"HealyDisease", id:"HealyDisease"}}, {_id:831, properties:{name:"SchapiraDisease", id:"SchapiraDisease"}}, {_id:838, properties:{name:"KimDisease", id:"KimDisease"}}, {_id:839, properties:{name:"HanDisease", id:"HanDisease"}}, {_id:840, properties:{name:"YoonDisease", id:"YoonDisease"}}, {_id:841, properties:{name:"SongDisease", id:"SongDisease"}}, {_id:842, properties:{name:"BaeDisease", id:"BaeDisease"}}, {_id:889, properties:{name:"NeurodegenerativeDisorder", id:"NeurodegenerativeDisorder"}}, {_id:964, properties:{name:"KufferDisease", id:"KufferDisease"}}, {_id:965, properties:{name:"NischwitzDisease", id:"NischwitzDisease"}}, {_id:972, properties:{name:"MaDisease", id:"MaDisease"}}, {_id:973, properties:{name:"GuoDisease", id:"GuoDisease"}}, {_id:977, properties:{name:"RahmanDisease", id:"RahmanDisease"}}, {_id:978, properties:{name:"SarfrazDisease", id:"SarfrazDisease"}}, {_id:979, properties:{name:"DelPinoDisease", id:"DelPinoDisease"}}, {_id:982, properties:{name:"AceraDisease", id:"AceraDisease"}}, {_id:983, properties:{name:"FernandezDisease", id:"FernandezDisease"}}, {_id:984, properties:{name:"TijeroDisease", id:"TijeroDisease"}}, {_id:985, properties:{name:"CarmonaDisease", id:"CarmonaDisease"}}, {_id:994, properties:{name:"TatenoDisease", id:"TatenoDisease"}}, {_id:995, properties:{name:"UchiyamaDisease", id:"UchiyamaDisease"}}, {_id:996, properties:{name:"YamamotoDisease", id:"YamamotoDisease"}}, {_id:997, properties:{name:"YamanishiDisease", id:"YamanishiDisease"}}, {_id:1646, properties:{name:"MultipleSystemAtrophy", id:"MultipleSystemAtrophy"}}, {_id:1647, properties:{name:"DementiaWithLewyBodies", id:"DementiaWithLewyBodies"}}, {_id:1658, properties:{name:"MycobacterialDisease", id:"MycobacterialDisease"}}, {_id:1678, properties:{name:"ParkinsonsDiseaseNode", id:"ParkinsonsDiseaseNode"}}, {_id:1728, properties:{name:"MitochondrialDisease", id:"MitochondrialDisease"}}, {_id:1749, properties:{name:"Parkinsons_Disease", id:"Parkinsons_Disease"}}, {_id:1766, properties:{name:"PCTGB2012052140", id:"PCTGB2012052140"}}, {_id:1799, properties:{name:"GuadeloupeanParkinsonism", id:"GuadeloupeanParkinsonism"}}, {_id:1800, properties:{name:"ProgressiveSupranuclearPalsyLikeTauopathy", id:"ProgressiveSupranuclearPalsyLikeTauopathy"}}, {_id:1801, properties:{name:"ALS_PD_SyndromeOfGuam", id:"ALS_PD_SyndromeOfGuam"}}, {_id:1859, properties:{name:"GaucherDisease", id:"GaucherDisease"}}, {_id:1875, properties:{name:"GauchersDisease", id:"GauchersDisease"}}, {_id:1897, properties:{name:"LewyPathology", id:"LewyPathology"}}, {_id:1927, properties:{name:"Synucleinopathy", id:"Synucleinopathy"}}, {_id:1928, properties:{name:"Synucleinopenia", id:"Synucleinopenia"}}, {_id:1934, properties:{name:"Prion diseases", id:"Prion diseases"}}, {_id:1994, properties:{name:"TransthyretinCardiomyopathy", id:"TransthyretinCardiomyopathy"}}, {_id:1995, properties:{name:"TransthyretinCardiacAmyloidosis", id:"TransthyretinCardiacAmyloidosis"}}, {_id:1996, properties:{name:"PulmonaryArterialHypertension", id:"PulmonaryArterialHypertension"}}, {_id:2008, properties:{name:"MonoGenicPD", id:"MonoGenicPD"}}, {_id:2013, properties:{name:"SynucleinDisease", id:"SynucleinDisease"}}, {_id:2014, properties:{name:"NeuronalSynucleinDisease", id:"NeuronalSynucleinDisease"}}, {_id:2029, properties:{name:"PARKPRKN", id:"PARKPRKN"}}, {_id:2030, properties:{name:"ParkSNCA", id:"ParkSNCA"}}, {_id:2031, properties:{name:"ParkGBA1", id:"ParkGBA1"}}, {_id:2033, properties:{name:"AtypicalParkinsonism", id:"AtypicalParkinsonism"}}, {_id:2043, properties:{name:"PARKDisease", id:"PARKDisease"}}, {_id:2053, properties:{name:"PARK-SYNJ1", id:"PARK-SYNJ1"}}, {_id:2054, properties:{name:"PARK-VPS13C", id:"PARK-VPS13C"}}, {_id:2055, properties:{name:"CBD", id:"CBD"}}, {_id:2069, properties:{name:"PSPDisease", id:"PSPDisease"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Disease;
UNWIND [{_id:2071, properties:{name:"AAO", id:"AAO"}}, {_id:2084, properties:{name:"PARKGBA1Disease", id:"PARKGBA1Disease"}}, {_id:2085, properties:{name:"LewyBodyDementiaDisease", id:"LewyBodyDementiaDisease"}}, {_id:2095, properties:{name:"PARKGBA1", id:"PARKGBA1"}}, {_id:2105, properties:{name:"GBAParkinsonDisease", id:"GBAParkinsonDisease"}}, {_id:2122, properties:{name:"GBAParkinsonsDisease", id:"GBAParkinsonsDisease"}}, {_id:2139, properties:{name:"TauopathyProgressiveSupranuclearPalsy", id:"TauopathyProgressiveSupranuclearPalsy"}}, {_id:2140, properties:{name:"FTDP17", id:"FTDP17"}}, {_id:2275, properties:{name:"DopaResponsiveDystonia", id:"DopaResponsiveDystonia"}}, {_id:2276, properties:{name:"ProgressiveSupranuclearPalsy", id:"ProgressiveSupranuclearPalsy"}}, {_id:2278, properties:{name:"NeurodegenerativeDisease", id:"NeurodegenerativeDisease"}}, {_id:2279, properties:{name:"Parkinsonism", id:"Parkinsonism"}}, {_id:2280, properties:{name:"CorticobasalDegeneration", id:"CorticobasalDegeneration"}}, {_id:2281, properties:{name:"FrontoTemporalDementia", id:"FrontoTemporalDementia"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Disease;
UNWIND [{_id:68, properties:{name:"DopamineSynthesis", id:"DopamineSynthesis"}}, {_id:69, properties:{name:"DopamineTransporter", id:"DopamineTransporter"}}, {_id:76, properties:{name:"VAChT", id:"VAChT"}}, {_id:80, properties:{name:"Norepinephrine_Transporter", id:"Norepinephrine_Transporter"}}, {_id:82, properties:{name:"Glucose_Metabolism", id:"Glucose_Metabolism"}}, {_id:84, properties:{name:"GlucoseMetabolism", id:"GlucoseMetabolism"}}, {_id:94, properties:{name:"CerebralBloodFlow", id:"CerebralBloodFlow"}}, {_id:339, properties:{name:"MicroglialActivation", id:"MicroglialActivation"}}, {_id:345, properties:{name:"StriatalDopamine", id:"StriatalDopamine"}}, {_id:350, properties:{name:"SerotoninSynthesis", id:"SerotoninSynthesis"}}, {_id:354, properties:{name:"CholinergicInnervation", id:"CholinergicInnervation"}}, {_id:471, properties:{name:"GTPaseFunction", id:"GTPaseFunction"}}, {_id:712, properties:{name:"OlfactoryFunction", id:"OlfactoryFunction"}}, {_id:734, properties:{name:"DopaminergicDegeneration", id:"DopaminergicDegeneration"}}, {_id:843, properties:{name:"Olfaction", id:"Olfaction"}}, {_id:844, properties:{name:"ColourVision", id:"ColourVision"}}, {_id:1680, properties:{name:"MitocondrialBioenergeticFunctionNode", id:"MitocondrialBioenergeticFunctionNode"}}, {_id:1681, properties:{name:"MitophagyNode", id:"MitophagyNode"}}, {_id:1685, properties:{name:"Mitophagy", id:"Mitophagy"}}, {_id:1709, properties:{name:"IntestinalPermeability", id:"IntestinalPermeability"}}, {_id:1715, properties:{name:"MitochondrialDysfunction", id:"MitochondrialDysfunction"}}, {_id:1717, properties:{name:"DopaminergicInnervation", id:"DopaminergicInnervation"}}, {_id:1720, properties:{name:"AmyloidProcessing", id:"AmyloidProcessing"}}, {_id:1721, properties:{name:"SynapticDysfunction", id:"SynapticDysfunction"}}, {_id:1854, properties:{name:"GutToBrainPropagation", id:"GutToBrainPropagation"}}, {_id:1855, properties:{name:"BrainToFibrils", id:"BrainToFibrils"}}, {_id:1908, properties:{name:"Ubiquitin-ProteasomeSystem", id:"Ubiquitin-ProteasomeSystem"}}, {_id:2046, properties:{name:"AutophagyLysosomePathway", id:"AutophagyLysosomePathway"}}, {_id:2277, properties:{name:"EndosomalSorting", id:"EndosomalSorting"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Process;
UNWIND [{_id:155, properties:{name:"MRPIIndex", id:"MRPIIndex"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Index;
UNWIND [{_id:334, properties:{name:"JNuclMed", id:"JNuclMed"}}, {_id:335, properties:{name:"EurJNuclMedMolImaging", id:"EurJNuclMedMolImaging"}}, {_id:336, properties:{name:"NeuroimageClin", id:"NeuroimageClin"}}, {_id:337, properties:{name:"FrontNeurosci", id:"FrontNeurosci"}}, {_id:1809, properties:{name:"LancetNeurol", id:"LancetNeurol"}}, {_id:1812, properties:{name:"JNeuropatholExpNeurol", id:"JNeuropatholExpNeurol"}}, {_id:1816, properties:{name:"FrontAgingNeurosci", id:"FrontAgingNeurosci"}}, {_id:1820, properties:{name:"bioRxiv", id:"bioRxiv"}}, {_id:1827, properties:{name:"Nature", id:"Nature"}}, {_id:1831, properties:{name:"Brain", id:"Brain"}}, {_id:1835, properties:{name:"MovDisord", id:"MovDisord"}}, {_id:1837, properties:{name:"Nature2020", id:"Nature2020"}}, {_id:1841, properties:{name:"Brain2022", id:"Brain2022"}}, {_id:1848, properties:{name:"NeurobiolAging", id:"NeurobiolAging"}}, {_id:1853, properties:{name:"JNeurochem", id:"JNeurochem"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Journal;
UNWIND [{_id:1975, properties:{name:"BraakStagingScheme", id:"BraakStagingScheme"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:DiagnosticTool;
UNWIND [{_id:1998, properties:{name:"ParkinsonsProgressionMarkersInitiative", id:"ParkinsonsProgressionMarkersInitiative"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ResearchStudy;
UNWIND [{_id:438, properties:{name:"GolgiComplex", id:"GolgiComplex"}}, {_id:736, properties:{name:"CircadianRhythm", id:"CircadianRhythm"}}, {_id:1609, properties:{name:"MitochondrialFunction", id:"MitochondrialFunction"}}, {_id:1610, properties:{name:"LysosomalFunction", id:"LysosomalFunction"}}, {_id:1611, properties:{name:"EndosomalFunction", id:"EndosomalFunction"}}, {_id:1612, properties:{name:"ImmuneResponse", id:"ImmuneResponse"}}, {_id:1613, properties:{name:"InflammatoryResponse", id:"InflammatoryResponse"}}, {_id:1865, properties:{name:"PeripheralImmuneProfile", id:"PeripheralImmuneProfile"}}, {_id:1868, properties:{name:"AgeRelatedAdaptiveImmuneChanges", id:"AgeRelatedAdaptiveImmuneChanges"}}, {_id:1869, properties:{name:"ImmuneResponsesInParkinsonsDiseaseBrain", id:"ImmuneResponsesInParkinsonsDiseaseBrain"}}, {_id:1971, properties:{name:"PrionLikePropagation", id:"PrionLikePropagation"}}, {_id:1978, properties:{name:"AggresomeRelatedProcess", id:"AggresomeRelatedProcess"}}, {_id:2120, properties:{name:"Mitophagy", id:"Mitophagy"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BiologicalProcess;
UNWIND [{_id:1621, properties:{name:"LevodopaResponsiveMotorPhenotype", id:"LevodopaResponsiveMotorPhenotype"}}, {_id:1626, properties:{name:"Sleep", id:"Sleep"}}, {_id:1627, properties:{name:"Smell", id:"Smell"}}, {_id:1628, properties:{name:"Anxiety", id:"Anxiety"}}, {_id:1629, properties:{name:"Cognition", id:"Cognition"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Phenotype;
UNWIND [{_id:610, properties:{name:"LewyBodyPathology", id:"LewyBodyPathology"}}, {_id:1903, properties:{name:"LewyBodies", id:"LewyBodies"}}, {_id:1930, properties:{name:"Lewy pathology", id:"Lewy pathology"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Pathology;
UNWIND [{_id:541, properties:{name:"R1441CMutant", id:"R1441CMutant"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Mutant;
UNWIND [{_id:760, properties:{name:"Patient", id:"Patient"}}, {_id:761, properties:{name:"BedPartner", id:"BedPartner"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Individual;
UNWIND [{_id:133, properties:{name:"GBAMutation", id:"GBAMutation"}}, {_id:434, properties:{name:"R1441C", id:"R1441C"}}, {_id:614, properties:{name:"RASMutation", id:"RASMutation"}}, {_id:2115, properties:{name:"LRRK2LossOfFunction", id:"LRRK2LossOfFunction"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Mutation;
UNWIND [{_id:90, properties:{name:"SubstantiaNigra", id:"SubstantiaNigra"}}, {_id:430, properties:{name:"CTerminalOfROC", id:"CTerminalOfROC"}}, {_id:480, properties:{name:"COR", id:"COR"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Region;
UNWIND [{_id:1318, properties:{name:"Action Observation Theraphy in Parkinson's Disease", id:"NCT03475355", status:"UNKNOWN"}}, {_id:1319, properties:{name:"Continuous Application of Lisuride in Parkinson's Disease by Subcutaneous Infusion", id:"NCT00408915", status:"COMPLETED"}}, {_id:1321, properties:{name:"Open Label Extension (OLE) Study of the Safety and Clinical Utility of IPX203 in Parkinson's Disease (PD) Participants W", id:"NCT03877510", status:"COMPLETED"}}, {_id:1323, properties:{name:"The Efficacy and Mechanism of SMA+M1 Repetitive Transcranial Magnetic Stimulation on Freezing of Gait in PD", id:"NCT06415682", status:"COMPLETED"}}, {_id:1324, properties:{name:"Standardization and Optimization of TMS Protocols for the Treatment of PD With Depression or Cognitive Impairment", id:"NCT03552861", status:"UNKNOWN"}}, {_id:1325, properties:{name:"Effect of GOCOVRI (Amantadine, Extended Release Capsules) on Gait in Parkinson's Disease", id:"NCT04387773", status:"COMPLETED"}}, {_id:1327, properties:{name:"MER Versus MRI Guidance DBS in Parkinson's Disease", id:"NCT01883973", status:"COMPLETED"}}, {_id:1328, properties:{name:"Parkinson's Disease in Home Rehabilitation Services", id:"NCT05340283", status:"COMPLETED"}}, {_id:1329, properties:{name:"Suprapostural Attention Focus and Postural Difficulty on H-reflex and Brain Activity: Aging and Parkinson's Disease", id:"NCT02539446", status:"COMPLETED"}}, {_id:1330, properties:{name:"Usability Study of a Neuropsychological Intervention Program Based on Virtual Reality in Adults With Parkinson's Disease", id:"NCT05403788", status:"COMPLETED"}}, {_id:1331, properties:{name:"User-friendliness of a Portable Driving Simulator", id:"NCT03969927", status:"RECRUITING"}}, {_id:1332, properties:{name:"Effectiveness of Rebound Therapy in Parkinson's Patients", id:"NCT05855161", status:"COMPLETED"}}, {_id:1333, properties:{name:"Effect of Melatonin on Sleep Disturbances in Patients With Parkinson's Disease", id:"NCT03258294", status:"UNKNOWN"}}, {_id:1336, properties:{name:"Optimizing Deep Brain Stimulation to Improve Visuomotor Function in Parkinson's Disease", id:"NCT06857851", status:"NOT_YET_RECRUITING"}}, {_id:1337, properties:{name:"Speech, Linguistic and Acoustic Markers in Parkinson's Disease", id:"NCT04273672", status:"COMPLETED"}}, {_id:1339, properties:{name:"Effects of Land and Water Physiotherapy on Motor Function in Parkinson's Disease", id:"NCT05866120", status:"COMPLETED"}}, {_id:1340, properties:{name:"Nutritional Intervention for Constipation Symptoms in Patients With Parkinson's Disease", id:"NCT07213856", status:"NOT_YET_RECRUITING"}}, {_id:1341, properties:{name:"OLE Study for Patients With Parkinson's Disease With Dementia Enrolled in Study ANAVEX2-73-PDD-001", id:"NCT04575259", status:"COMPLETED"}}, {_id:1343, properties:{name:"Safety, Tolerability, PK and PD Study of Neu-120 in the Treatment of Levodopa-induced Dyskinesia", id:"NCT00607451", status:"TERMINATED"}}, {_id:1345, properties:{name:"The Effect of Repetitive Transcranial Magnetic Stimulation on Cognitive Impairment in Parkinson's Disease (PD)", id:"NCT03879551", status:"COMPLETED"}}, {_id:1346, properties:{name:"Early Longitudinal Imaging in Parkinson's Progression Markers Initiative Using [¹⁸F] AV-133 and DaTscan™", id:"NCT04507139", status:"ACTIVE_NOT_RECRUITING"}}, {_id:1347, properties:{name:"N-Acetylcysteine for Neuroprotection in Parkinson's Disease", id:"NCT01470027", status:"COMPLETED"}}, {_id:1350, properties:{name:"Electrophysiology-based DBS Programming for PD", id:"NCT07348705", status:"RECRUITING"}}, {_id:1351, properties:{name:"Cognitive Training in Parkinson's Disease", id:"NCT05495997", status:"COMPLETED"}}, {_id:1352, properties:{name:"Electrophysiological Signature of Mild Cognitive Impairment and Its Relationship with Parkinson's Disease: a High-densit", id:"NCT06640673", status:"RECRUITING"}}, {_id:1353, properties:{name:"Trial to Assess Parkinson's Disease (PD) Symptom Control to Four Doses of Rotigotine in a Transdermal Patch", id:"NCT00522379", status:"COMPLETED"}}, {_id:1355, properties:{name:"Exploring Brain Molecular Imaging and Blood Biomarkers in Subjects With Glucocerebrosidase Mutations: Toward a Precision", id:"NCT06167603", status:"RECRUITING"}}, {_id:1356, properties:{name:"Efficacy and Safety of JM-010 in PD With Levodopa-Induced Dyskinesia", id:"NCT02439203", status:"COMPLETED"}}, {_id:1358, properties:{name:"Onset Motor Complications Using REQUIP CR (Ropinirole Controlled-release) As Add-on Therapy To L-dopa In Parkinson's", id:"NCT00363727", status:"COMPLETED"}}, {_id:1360, properties:{name:"A New 3D Virtual Reality-based Upper Limb Training to Improve Dexterity in Parkinson's Disease", id:"NCT05965661", status:"UNKNOWN"}}, {_id:1361, properties:{name:"A Pilot, Randomized Controlled Trial of Group Visits for Persons With Parkinson's Disease", id:"NCT00528086", status:"COMPLETED"}}, {_id:1362, properties:{name:"Open-label Safety Study of Dipraglurant (ADX48621) in Patients With Parkinson's Disease Receiving Levodopa-based Therapy", id:"NCT05116813", status:"TERMINATED"}}, {_id:1364, properties:{name:"Monitoring Brain Waves in Response to Visual and/or Auditory Stimulation in Parkinson's Disease Patients", id:"NCT02768896", status:"UNKNOWN"}}, {_id:1365, properties:{name:"Prismatic Lenses in the Pisa Syndrome", id:"NCT03737773", status:"COMPLETED"}}, {_id:1366, properties:{name:"rTMS Treatment of Dysphagia in Parkinson's Patients", id:"NCT07221110", status:"COMPLETED"}}, {_id:1367, properties:{name:"Urdu Version of Parkinson's Disease Questionnaire: Reliability and Validity Study", id:"NCT05449210", status:"COMPLETED"}}, {_id:1368, properties:{name:"Remote Haptic Rehabilitation for Parkinson's Disease", id:"NCT07457710", status:"NOT_YET_RECRUITING"}}, {_id:1369, properties:{name:"Effectiveness of Intensive Rehabilitation in Advanced Stages of Parkinson's Disease.", id:"NCT02731170", status:"UNKNOWN"}}, {_id:1370, properties:{name:"\" Visual Characterization of Parkinson's Patients and Oculomotor or Perceptual Therapy\"", id:"NCT06032130", status:"RECRUITING"}}, {_id:1371, properties:{name:"MENTAL PRACTICE IN MOTOR LEARNING OF BRUSHING AND PARKINSON DISEASE", id:"NCT02738528", status:"COMPLETED"}}, {_id:1372, properties:{name:"Effects of Motor Imagery Training on Gait and Brain Activation Pattern of Individuals With Parkinson's Disease", id:"NCT03439800", status:"UNKNOWN"}}, {_id:1373, properties:{name:"Effects of Unblocking the Full Potential of Percept PC IPG", id:"NCT06127771", status:"COMPLETED"}}, {_id:1374, properties:{name:"Enrichment of Glutathione Using Gamma-glutamylcysteine Supplementation in Parkinson's Disease Patients.", id:"NCT07064005", status:"RECRUITING"}}, {_id:1376, properties:{name:"Atomoxetine for Freezing of Gait in Parkinson's Disease", id:"NCT03651856", status:"COMPLETED"}}, {_id:1378, properties:{name:"Effects of Droxidopa When Measuring Gait Speed, Kyphosis, and Functional Reach in Parkinson's Disease", id:"NCT03173781", status:"COMPLETED"}}, {_id:1380, properties:{name:"Use of a Non-Invasive Brainstem Neuromodulation Device to Improve Neurovascular Status in Parkinson's Disease", id:"NCT04598828", status:"TERMINATED"}}, {_id:1381, properties:{name:"Golf Instruction Versus Tai Chi for People With Parkinson's Disease", id:"NCT03563807", status:"COMPLETED"}}, {_id:1382, properties:{name:"Deep Brain Stimulation Therapy in Movement Disorders", id:"NCT02119611", status:"RECRUITING"}}, {_id:1383, properties:{name:"Perception, Cognition, and Gait in Parkinson's Disease", id:"NCT03241966", status:"COMPLETED"}}, {_id:1384, properties:{name:"Measuring Parkinson's Disease Progression", id:"NCT03205956", status:"COMPLETED"}}, {_id:1386, properties:{name:"Care for Late Stage Parkinsonism", id:"NCT02333175", status:"COMPLETED"}}, {_id:1387, properties:{name:"Quality-of-Life Index (Q-Index)", id:"NCT06209502", status:"UNKNOWN"}}, {_id:1388, properties:{name:"Subthalamic Deep Brain Stimulation Effects on Decision-making Processing in Patients With Parkinson's Disease", id:"NCT02231645", status:"COMPLETED"}}, {_id:1389, properties:{name:"A Study to Evaluate the Diagnostic Efficacy of DaTSCAN™ Ioflupane (123I) Injection in Single Photon Emission Computed To", id:"NCT04193527", status:"COMPLETED"}}, {_id:1391, properties:{name:"Sequence Effect in Parkinson's Disease", id:"NCT00431366", status:"COMPLETED"}}, {_id:1392, properties:{name:"Improve Speech Using an In-the-ear Device in Parkinson's Disease", id:"NCT00488657", status:"COMPLETED"}}, {_id:1393, properties:{name:"Foot Mechanical Stimulation for Treatment of Gait and Gait Related Disorders in Parkinson's Disease and Progressive Supr", id:"NCT01815281", status:"TERMINATED"}}, {_id:1394, properties:{name:"tDCS on Parkinson's Disease Cognition", id:"NCT03025334", status:"UNKNOWN"}}, {_id:1395, properties:{name:"A Study to Evaluate SAGE-217 in Participants With Parkinson's Disease", id:"NCT03000569", status:"COMPLETED"}}, {_id:1398, properties:{name:"tDCS for Dual-task Performance in Patients With PD", id:"NCT04504422", status:"COMPLETED"}}, {_id:1399, properties:{name:"Exploring Sarcopenia in Parkinson's Disease Patients by Combining Serum Biomarker Levels", id:"NCT06511531", status:"NOT_YET_RECRUITING"}}, {_id:1400, properties:{name:"Evaluation of a New Communication Aid Tool to Favor Global Patient Centered Care", id:"NCT04179695", status:"RECRUITING"}}, {_id:1401, properties:{name:"PET Imaging Evaluation of [11C]SY08", id:"NCT06098612", status:"RECRUITING"}}, {_id:1403, properties:{name:"GADGET-PD Genetic and Digital Diagnosis of Essential Tremor and Parkinson's Disease Trial", id:"NCT02668835", status:"COMPLETED"}}, {_id:1405, properties:{name:"A Survey Study to See if Patients Diagnosed With Parkinson's Disease Have Higher Incidence of Melanoma", id:"NCT00203008", status:"COMPLETED"}}, {_id:1406, properties:{name:"Bone Mineral Density Changes Among Clinical Subtypes of Parkinson's Disease", id:"NCT03806517", status:"UNKNOWN"}}, {_id:1407, properties:{name:"The Effects of Sertraline on Depression in Parkinson's Disease", id:"NCT01437189", status:"COMPLETED"}}, {_id:1409, properties:{name:"Parkinson's KinetiGraph, PKG in Patients With Deep Brain Stimulation and Continuous Levodopa Infusion Therapy", id:"NCT02701803", status:"COMPLETED"}}, {_id:1410, properties:{name:"Relative Bioavailability and Food Effect Study of CVN424", id:"NCT05635461", status:"COMPLETED"}}, {_id:1412, properties:{name:"Follow Up Safety Study of SCH 420814 in Subjects With Parkinson's Disease (P05175)", id:"NCT00537017", status:"COMPLETED"}}, {_id:1416, properties:{name:"Study of AAV-GAD Gene Transfer Into the Subthalamic Nucleus for Parkinson's Disease", id:"NCT00643890", status:"TERMINATED"}}, {_id:1418, properties:{name:"PET Scan to Study Brain Control of Human Movement", id:"NCT00001324", status:"COMPLETED"}}, {_id:1419, properties:{name:"GYKO-Based L-Test Reliability in Parkinson's Disease", id:"NCT07327346", status:"ACTIVE_NOT_RECRUITING"}}, {_id:1420, properties:{name:"A Study to Assess the Effect of Repeat Doses of GSK962040 on the Pharmacokinetics of L-DOPA in Subjects With Parkinson's", id:"NCT01602549", status:"COMPLETED"}}, {_id:1422, properties:{name:"Induction and Recognition of Emotions", id:"NCT04353947", status:"WITHDRAWN"}}, {_id:1423, properties:{name:"Effect of Metformin as Add-on Therapy in Levodopa Treated Parkinson's Disease Patients", id:"NCT07055958", status:"ACTIVE_NOT_RECRUITING"}}, {_id:1425, properties:{name:"Apomorphine Nasal Powder in the Treatment of Parkinson's Disease \"Off\" Periods.", id:"NCT00346827", status:"COMPLETED"}}, {_id:1427, properties:{name:"Effects of Functional Postural Control Training on Functional Performance in People With Parkinson's Disease With Freezi", id:"NCT05958355", status:"UNKNOWN"}}, {_id:1428, properties:{name:"Mild Cognitive Impairment and Endurance Exercise in Parkinson's Disease", id:"NCT03542474", status:"COMPLETED"}}, {_id:1429, properties:{name:"Low Dose Apomorphine and Parkinsonism", id:"NCT00472355", status:"WITHDRAWN"}}, {_id:1431, properties:{name:"The Acute Effect of Cervical Mobilization in Parkinson's Disease", id:"NCT04524143", status:"COMPLETED"}}, {_id:1432, properties:{name:"The Effect of Rehabilitation Training on Orthostatic Hypotension in Parkinson's Patients", id:"NCT06328335", status:"NOT_YET_RECRUITING"}}, {_id:1433, properties:{name:"Outcomes to the Nutritional Need of Patients With Parkinson's Disease", id:"NCT04983290", status:"UNKNOWN"}}, {_id:1434, properties:{name:"Quantitative Mapping of Substantia Nigra Iron in Parkinson's Disease (Stages I-IV, REM Sleep Behavior Disorder) and Cont", id:"NCT03675282", status:"COMPLETED"}}, {_id:1437, properties:{name:"Effectiveness of Stellate Ganglion Block in Individuals With Parkinson's Disease", id:"NCT06301724", status:"NOT_YET_RECRUITING"}}, {_id:1439, properties:{name:"The Safety, Tolerability and Preliminary Efficacy of NouvNeu001 for Early-onset Parkinson's Disease", id:"NCT06608355", status:"RECRUITING"}}, {_id:1441, properties:{name:"Safety of CERE-120 (AAV2-NTN) in Subjects With Idiopathic Parkinson's Disease", id:"NCT00252850", status:"COMPLETED"}}, {_id:1443, properties:{name:"Positive Psychological Intervention for Parkinson's Disease Patients", id:"NCT06832358", status:"COMPLETED"}}, {_id:1444, properties:{name:"Can Subthalamic Stimulation Using Directional Electrodes Improve Postoperative Management in Parkinson's Disease", id:"NCT04578678", status:"ACTIVE_NOT_RECRUITING"}}, {_id:1445, properties:{name:"Subthalamic Nucleus Versus Globus Pallidal Internus Deep Brain Stimulation for Parkinson Disease", id:"NCT07250685", status:"NOT_YET_RECRUITING"}}, {_id:1446, properties:{name:"The Effect of Compensation Strategies on Gait Impairment in Parkinson's Disease", id:"NCT06142448", status:"RECRUITING"}}, {_id:1447, properties:{name:"Blood Biomarker in Early Parkinson's Disease", id:"NCT03384797", status:"COMPLETED"}}, {_id:1448, properties:{name:"Sleepiness in Parkinson's Patients With Continuous Dopaminergic Delivery Device or Deep Brain Stimulation", id:"NCT04441697", status:"UNKNOWN"}}, {_id:1449, properties:{name:"GALIG Gene Expression in Parkinson's Disease", id:"NCT02923297", status:"COMPLETED"}}, {_id:1450, properties:{name:"Exercise and Parkinson's: Comparing Interventions and Exploring Neural Mechanisms", id:"NCT01768832", status:"COMPLETED"}}, {_id:1451, properties:{name:"Non-invasive Measurement of Brain Oxygen Levels in People With Subthalamic Deep Brain Stimulators", id:"NCT02278406", status:"COMPLETED"}}, {_id:1452, properties:{name:"The Effect Of E2007 On Pharmacodynamic Responses To Levodopa Among Patients With Parkinson's Disease Who Experience Dysk", id:"NCT00451633", status:"WITHDRAWN"}}, {_id:1454, properties:{name:"Development of an Instrumented System to Measure Mobility in Parkinson's Disease", id:"NCT01174758", status:"COMPLETED"}}, {_id:1455, properties:{name:"Exercise Targeting Cognitive Impairment in Parkinson's Disease", id:"NCT02267785", status:"UNKNOWN"}}, {_id:1456, properties:{name:"Analgesic Effects of Expectation and Deep Brain Stimulation in Patients With Parkinson's Disease", id:"NCT04151043", status:"COMPLETED"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ClinicalTrial;
UNWIND [{_id:1457, properties:{name:"POETRY: Study of Estrogen Replacement Therapy in Postmenopausal Women With Parkinson's Disease", id:"NCT00234676", status:"COMPLETED"}}, {_id:1459, properties:{name:"Circadian & Homeostatic Synchronization Effect on Waking Mobility in Parkinson's Disease", id:"NCT04467632", status:"WITHDRAWN"}}, {_id:1460, properties:{name:"Esketamine in Microelectrode Recording-guided Subthalamic Deep-Brain Stimulation for Parkinson's Disease", id:"NCT06543563", status:"RECRUITING"}}, {_id:1463, properties:{name:"International Validation of Two Non-motor Scales in PD (NFS and SPARK)", id:"NCT04366804", status:"RECRUITING"}}, {_id:1464, properties:{name:"Long-term Stability of LFP Recorded From the STN and the Effects of DBS", id:"NCT02915848", status:"COMPLETED"}}, {_id:1465, properties:{name:"Self-controlled Practice on Motor Learning and Motivation in Parkinson's Disease", id:"NCT07028515", status:"RECRUITING"}}, {_id:1466, properties:{name:"Neuropsychological Profiles and Musical Engagement in Parkinson's and Alzheimer's Disease", id:"NCT06688968", status:"RECRUITING"}}, {_id:1467, properties:{name:"Proof of Mechanism Study to Evaluate Binding of Alfa-synuclein", id:"NCT05274568", status:"COMPLETED"}}, {_id:1469, properties:{name:"A Comparison of Ropinirole Immediate Release With Ropinirole Prolonged Release in Patients With Advanced Parkinson's", id:"NCT00331149", status:"COMPLETED"}}, {_id:1472, properties:{name:"Single Ascending Dose Study Investigating the Safety, Tolerability, and PK of XC130-A10H in Healthy Adult Subjects", id:"NCT04043338", status:"UNKNOWN"}}, {_id:1474, properties:{name:"Carbidopa/Levodopa Versus Carbidopa/Levodopa/Entacapone on Markers of Event Related Potentials (ERPs) in Patients With I", id:"NCT00601978", status:"WITHDRAWN"}}, {_id:1477, properties:{name:"Inhibiting COMT in Parkinson's Disease", id:"NCT02070887", status:"WITHDRAWN"}}, {_id:1478, properties:{name:"Adaptive Closed Loop Neuromodulation and Neural Signatures of Parkinson's Disease", id:"NCT02384421", status:"COMPLETED"}}, {_id:1479, properties:{name:"Azilect + Antidepressant Chart Review", id:"NCT00955604", status:"COMPLETED"}}, {_id:1483, properties:{name:"Treating Anxiety in Parkinson's Disease With a Multi-Strain Probiotic", id:"NCT03968133", status:"UNKNOWN"}}, {_id:1484, properties:{name:"the Effect of Speed Dependent Treadmill Training on Dual Task Performance in Patient With Parkinson's Disease.", id:"NCT05903755", status:"UNKNOWN"}}, {_id:1485, properties:{name:"Vibrational Therapy to Improve Gait and Balance in Parkinson's Disease", id:"NCT03872115", status:"WITHDRAWN"}}, {_id:1486, properties:{name:"BEN-2001 in Parkinson Disease Patients With Excessive Daytime Sleepiness", id:"NCT03194217", status:"COMPLETED"}}, {_id:1488, properties:{name:"Transplantation of Neural Stem Cell-Derived Neurons for Parkinson's Disease", id:"NCT03309514", status:"WITHDRAWN"}}, {_id:1490, properties:{name:"Chinese PD-SNCA Registry", id:"NCT03523052", status:"RECRUITING"}}, {_id:1491, properties:{name:"An Open-label Clinical Trial to Compare the Safety and Effectiveness of Adaptive Versus Conventional Deep Brain Stimulat", id:"NCT05262348", status:"WITHDRAWN"}}, {_id:1492, properties:{name:"The Effect of Upper Extremity Telerehabilitation on Balance and Gait", id:"NCT05971784", status:"COMPLETED"}}, {_id:1493, properties:{name:"Domperidone and Risk of Sudden Cardiac Death", id:"NCT02500108", status:"COMPLETED"}}, {_id:1495, properties:{name:"Study of Clonidine Efficacy for the Treatment of Impulse Control Disorders in Parkinson's Disease:", id:"NCT03552068", status:"COMPLETED"}}, {_id:1498, properties:{name:"Study of Axial and Cognitive Symptoms and Biomarkers of Neurodegeneration in Brain-first and Body-first PD", id:"NCT07187843", status:"RECRUITING"}}, {_id:1499, properties:{name:"The Effects of the Rivastigmine Patch on Parkinson's Disease With Memory and/or Thinking Problems", id:"NCT00988117", status:"COMPLETED"}}, {_id:1501, properties:{name:"Yoga for Mental Health in Parkinson's Patients", id:"NCT05335850", status:"COMPLETED"}}, {_id:1502, properties:{name:"Fatigue and Cardiac Sympathetic Denervation in Parkinson Disease", id:"NCT02034318", status:"COMPLETED"}}, {_id:1503, properties:{name:"Long-term Study of Duodopa (Levodopa/Carbidopa) in Advanced Parkinson's: Health Outcomes & Net Economic Impact", id:"NCT00141518", status:"COMPLETED"}}, {_id:1505, properties:{name:"Evaluation of [18F]MNI-1126 as an Imaging Marker for Synaptic Density Loss", id:"NCT03587649", status:"COMPLETED"}}, {_id:1507, properties:{name:"The APOS System: Effects on Gait, Mobility and QOL in Patients With Parkinson's Disease", id:"NCT00498758", status:"UNKNOWN"}}, {_id:1508, properties:{name:"Robot-assisted Gait Training in Patients With Parkinson's Disease", id:"NCT03490578", status:"COMPLETED"}}, {_id:1509, properties:{name:"Prevalence of Visual Dysfunction in Neurological Disorders", id:"NCT04836715", status:"COMPLETED"}}, {_id:1510, properties:{name:"Evolution of RBD in PD", id:"NCT03047408", status:"UNKNOWN"}}, {_id:1511, properties:{name:"Clinical Trial of Rasagiline in Levodopa-Treated Parkinson's Disease Patients With Motor Fluctuations", id:"NCT01736891", status:"COMPLETED"}}, {_id:1513, properties:{name:"Ubiquinol in Parkinson's Disease: Safety, Tolerability, and Effects Upon Oxidative Damage and Mitochondrial Biomarkers", id:"NCT03061513", status:"COMPLETED"}}, {_id:1515, properties:{name:"Emotional Prosody Treatment in Parkinson's", id:"NCT01956266", status:"COMPLETED"}}, {_id:1516, properties:{name:"Longitudinal Investigation of I2BS in PD", id:"NCT05516719", status:"RECRUITING"}}, {_id:1517, properties:{name:"Reliability and Validity of Urdu Version of Mini-BESTest in Persons With Parkinson's Disease", id:"NCT05221099", status:"COMPLETED"}}, {_id:1518, properties:{name:"Self-Management Behaviors of Arabs and Jews With Parkinson's Disease and Their Associations With Health Outcomes", id:"NCT05209698", status:"UNKNOWN"}}, {_id:1519, properties:{name:"Open-Label Safety Study of ADS-5102 in PD Patients With LID", id:"NCT02202551", status:"COMPLETED"}}, {_id:1521, properties:{name:"Neurophysiological Dissection and Intervention of Freezing of Gait in Parkinson's Disease", id:"NCT03127475", status:"UNKNOWN"}}, {_id:1522, properties:{name:"Virtual Exercises in Patients With Parkinson's Disease.", id:"NCT02023034", status:"COMPLETED"}}, {_id:1523, properties:{name:"The Effects Of Myofascial Release In Combined With Task-Oriented Circuit Training On Balance And Gait In People With Par", id:"NCT05900934", status:"UNKNOWN"}}, {_id:1524, properties:{name:"The Effects of Mindfulness-based Cognitive Therapy in People With Parkinson's Disease", id:"NCT05779137", status:"RECRUITING"}}, {_id:1525, properties:{name:"Sensor-Based Optimization of Therapy for Parkinson's Disease Patients With Motor Fluctuations", id:"NCT07074119", status:"NOT_YET_RECRUITING"}}, {_id:1526, properties:{name:"Clinical Response of Impulsivity After Brain Stimulation in Parkinson's Disease", id:"NCT04811807", status:"UNKNOWN"}}, {_id:1527, properties:{name:"A Study to Investigate the Tolerability and Effect of Three Single-dose Regimens of BIA 9-1067", id:"NCT01568034", status:"COMPLETED"}}, {_id:1531, properties:{name:"Intensive Running Exercise Improves Parkinson's Motor and Non-motor Symptoms", id:"NCT03974529", status:"UNKNOWN"}}, {_id:1532, properties:{name:"Long- Term Transcranial Direct Current Stimulation in Parkinson's Disease", id:"NCT03638531", status:"UNKNOWN"}}, {_id:1533, properties:{name:"A Phase Ib Trial of Combined Febuxostat and Inosine Therapy in Patients With Parkinson's Disease", id:"NCT07170475", status:"RECRUITING"}}, {_id:1536, properties:{name:"Open-Label Extension Study of ASTORIA", id:"NCT05516875", status:"TERMINATED"}}, {_id:1537, properties:{name:"Open Label Sumanirole Study of Safety, Tolerability, and Therapeutic Response In Patients With Parkinson's Disease", id:"NCT00036205", status:"TERMINATED"}}, {_id:1539, properties:{name:"Balance Training in Parkinson's Disease Using the Wii Balance Board", id:"NCT01228851", status:"COMPLETED"}}, {_id:1540, properties:{name:"Head-up Tilt Sleeping to Alleviate Orthostatic Hypotension, Supine Hypertension and Nocturia in Parkinson's Disease", id:"NCT05551377", status:"UNKNOWN"}}, {_id:1541, properties:{name:"Evaluation of the Safety and Effectiveness of Bilateral Exablate Ablation of the Pallidothalamic Tract (PTT) for the Tre", id:"NCT04728295", status:"ACTIVE_NOT_RECRUITING"}}, {_id:1542, properties:{name:"Neural Mechanisms and Clinical Applications of DBS for Modulating Sleep Dysregulation in PD", id:"NCT06914466", status:"RECRUITING"}}, {_id:1543, properties:{name:"Parkinson's Disease Genetics Database", id:"NCT00855556", status:"TERMINATED"}}, {_id:1545, properties:{name:"Sensor-supported Classification of Gait Patterns in Everyday Movement of Patients With Parkinson's Disease", id:"NCT04054856", status:"TERMINATED"}}, {_id:1546, properties:{name:"Safety and Efficacy of Liraglutide in Parkinson's Disease", id:"NCT02953665", status:"COMPLETED"}}, {_id:1548, properties:{name:"Azilect® In Wearing-Off (AIWO)", id:"NCT02384512", status:"COMPLETED"}}, {_id:1550, properties:{name:"Imaging Blood Brain Imaging Dysfunction in Parkinson's Disease", id:"NCT02605161", status:"COMPLETED"}}, {_id:1551, properties:{name:"Determining Patterns In Trial Experiences of Parkinson's Disease Patients", id:"NCT05685329", status:"UNKNOWN"}}, {_id:1552, properties:{name:"A Study to Evaluate the Safety and Tolerability of ABBV-0805 in Patients With Parkinson's Disease", id:"NCT04127695", status:"WITHDRAWN"}}, {_id:1555, properties:{name:"rTMS for the Treatment of Freezing of Gait in Parkinson's Disease", id:"NCT03219892", status:"COMPLETED"}}, {_id:1556, properties:{name:"Rhythmic Auditory Stimulation on Upper-limb Movements in PD Patients", id:"NCT05637593", status:"NOT_YET_RECRUITING"}}, {_id:1557, properties:{name:"Light Therapy for PD - Dose Selection", id:"NCT04291014", status:"COMPLETED"}}, {_id:1558, properties:{name:"Split-belt Treadmill Training to Rehabilitate Freezing of Gait and Balance in Parkinson's Disease", id:"NCT04946812", status:"ACTIVE_NOT_RECRUITING"}}, {_id:1559, properties:{name:"Rasagiline in Early Parkinson's Disease Patients Not Treated With Levodopa in China", id:"NCT01556165", status:"COMPLETED"}}, {_id:1561, properties:{name:"Efficacy and Safety of AFQ056 When Combined With Increased Doses of L-dopa in Parkinson's Disease Patients With Moderate", id:"NCT01092065", status:"COMPLETED"}}, {_id:1563, properties:{name:"Effects of Transcranial Direct Current Stimulation on Fine Motor Skills in Parkinson's Disease: a Pilot Study", id:"NCT02287207", status:"COMPLETED"}}, {_id:1564, properties:{name:"Telehealth in Lewy Body Dementia", id:"NCT05014971", status:"RECRUITING"}}, {_id:1565, properties:{name:"Top Set and Parkinson's Disease", id:"NCT06801704", status:"COMPLETED"}}, {_id:1566, properties:{name:"A Clinical Study of NLY01 in Patient's With Early Parkinson's Disease", id:"NCT04154072", status:"COMPLETED"}}, {_id:1569, properties:{name:"Transcutaneous Magnetic Spinal Cord Stimulation for Freezing of Gait in Parkinson's Disease", id:"NCT04783493", status:"UNKNOWN"}}, {_id:1570, properties:{name:"Dance in Parkinson's Disease. A Greek Pilot Study", id:"NCT05134506", status:"COMPLETED"}}, {_id:1571, properties:{name:"Clinical Evaluation of Ropinirole PR/XR Tablets in Monotherapy for Parkinson's Disease (PD)", id:"NCT00434304", status:"COMPLETED"}}, {_id:1573, properties:{name:"Buspirone in Parkinson's Disease", id:"NCT02803749", status:"COMPLETED"}}, {_id:1575, properties:{name:"A Pilot Study of Terazosin for Parkinson's Disease", id:"NCT03905811", status:"COMPLETED"}}, {_id:1578, properties:{name:"Can tDCS Enhance Efficacy of Rehabilitative Intervention for Freezing of Gait in Parkinson's Disease?", id:"NCT02205216", status:"UNKNOWN"}}, {_id:1579, properties:{name:"Genetics and Aerobic Exercise to Slow Parkinson's Disease Trial", id:"NCT06442033", status:"RECRUITING"}}, {_id:1580, properties:{name:"An Extension Study to Evaluate the Long-Term Efficacy, Safety and Tolerability of Minzasolmin (UCB0599) in Study Partici", id:"NCT05543252", status:"TERMINATED"}}, {_id:1582, properties:{name:"A Study of E2007 as an Adjunctive Therapy in Levodopa Treated Parkinson's Disease Patients With Motor Fluctuations", id:"NCT00360412", status:"TERMINATED"}}, {_id:1583, properties:{name:"Airway Protective Mechanisms in PD (R01)", id:"NCT03321019", status:"COMPLETED"}}, {_id:1585, properties:{name:"Role of Zonisamide in Advanced Parkinson's Disease (PD) in Egyptian Population: Pilot Study", id:"NCT04182399", status:"COMPLETED"}}, {_id:1587, properties:{name:"Observational Study of Pergolide Mesylate and Cardiac Valvulopathy", id:"NCT00311532", status:"COMPLETED"}}, {_id:1588, properties:{name:"Sleep, Awake & Move - Part II", id:"NCT02710487", status:"COMPLETED"}}, {_id:1589, properties:{name:"Low Intensity Focused Ultrasound for Parkinson's Disease", id:"NCT06763692", status:"NOT_YET_RECRUITING"}}, {_id:1590, properties:{name:"Expanding the Therapeutic Window of Deep Brain Stimulation in Parkinson's Disease by Means of Directional Leads", id:"NCT04093544", status:"UNKNOWN"}}, {_id:1591, properties:{name:"Spinal Cord Stimulation for the Treatment of Motor and Nonmotor Symptoms of Parkinson's Disease", id:"NCT02388204", status:"UNKNOWN"}}, {_id:1592, properties:{name:"Efficacy and Safety of Rotigotine in the Treatment of Patients With Early Stage of Primary Parkinson's Disease", id:"NCT04455555", status:"COMPLETED"}}, {_id:1594, properties:{name:"Low Frequency Deep Brain Stimulation of the Subthalamic Nucleus in Parkinson's Disease", id:"NCT03204526", status:"COMPLETED"}}, {_id:1595, properties:{name:"Benefits of Mild Body Exercises in Parkinson's Disease", id:"NCT03463330", status:"UNKNOWN"}}, {_id:1596, properties:{name:"Validity and Reliability of the Turkish Version of the Comprehensive Coordination Scale in Parkinson's Patients", id:"NCT06139965", status:"UNKNOWN"}}, {_id:1597, properties:{name:"Investigating Cerebellar Inhibition and Its Clinical Significance in Parkinsonian Tremor and Intention Tremor", id:"NCT05512299", status:"UNKNOWN"}}, {_id:1598, properties:{name:"Transcranial Duplex Scanning and Single Photon Emission Computer Tomography (SPECT) in Parkinsonian Syndromes", id:"NCT00368199", status:"COMPLETED"}}, {_id:1599, properties:{name:"Safety and Efficacy of DA-9805 for Parkinson's Disease", id:"NCT03189563", status:"COMPLETED"}}, {_id:1602, properties:{name:"The Effect of an Auditory Rhythmic Cue on the Frequency of Rolling in Patients with Dysphagia and Parkinson's Disease", id:"NCT06695455", status:"RECRUITING"}}, {_id:1603, properties:{name:"rTMS as an Intervention for Levodopa-induced Dyskinesia", id:"NCT06570824", status:"RECRUITING"}}, {_id:1604, properties:{name:"The Effect of Different Types of Focus Instructions in Parkinson's Rehabilitation", id:"NCT06615115", status:"RECRUITING"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ClinicalTrial;
UNWIND [{_id:2287, properties:{name:"The Efficacy and Safety Study of High Dose Donepezil in Parkinson's Disease With Dementia", id:"NCT02415062", status:"UNKNOWN"}}, {_id:2289, properties:{name:"A Targeted Amino Acid Supplement for People With Parkinson's Disease", id:"NCT06954662", status:"ACTIVE_NOT_RECRUITING"}}, {_id:2291, properties:{name:"Safety and Efficacy Study of Tozadenant to Treat End of Dose Wearing Off in Parkinson's Patients", id:"NCT02453386", status:"TERMINATED"}}, {_id:2293, properties:{name:"Utilization of Target Ranges to Treat Parkinson's Disease With the PKG", id:"NCT03984305", status:"TERMINATED"}}, {_id:2294, properties:{name:"AFF008E: Observational Phase 1b Follow-up Extension Study for Patients With Parkinson's Disease After Immunization With ", id:"NCT01885494", status:"COMPLETED"}}, {_id:2295, properties:{name:"Open-Label Study With Pimavanserin on Activities of Daily Living in Subjects With Parkinson's Disease Psychosis", id:"NCT04292223", status:"COMPLETED"}}, {_id:2297, properties:{name:"Decrease in Sense of Smell and Associated Cognitive Decline in Parkinson's Disease", id:"NCT01572142", status:"COMPLETED"}}, {_id:2298, properties:{name:"Gait Re-education Program in Subjects With Parkinson´s Disease", id:"NCT05131880", status:"COMPLETED"}}, {_id:2299, properties:{name:"Behavioral Therapy to Treat Urinary Incontinence in Parkinson's Disease", id:"NCT00866710", status:"COMPLETED"}}, {_id:2300, properties:{name:"Effectiveness, Tolerability and Safety of Rasagiline in Early Parkinson's Disease Patients Not Treated With Levodopa", id:"NCT00203060", status:"COMPLETED"}}, {_id:2302, properties:{name:"Parkinsonian Patients Treated With Apomorphine Pump: Observatory of Skin Lesions", id:"NCT05331573", status:"UNKNOWN"}}, {_id:2303, properties:{name:"Prodromal Alpha-Synuclein Screening in Parkinson's Disease Study", id:"NCT04724941", status:"RECRUITING"}}, {_id:2304, properties:{name:"the Efficacy and Safety of Agomelatine in the Patients With Parkinson's Disease", id:"NCT03977441", status:"UNKNOWN"}}, {_id:2306, properties:{name:"The Effect of Repetitive Transcranial Magnetic Stimulation (rTMS) on Depression in Parkinson's Disease (PD)", id:"NCT04030923", status:"COMPLETED"}}, {_id:2307, properties:{name:"Ramelteon (ROZEREM) in the Treatment of Sleep Disturbances Associated With Parkinson's Disease", id:"NCT00462254", status:"TERMINATED"}}, {_id:2310, properties:{name:"The Personalized Parkinson Project (PPP)", id:"NCT03364894", status:"ACTIVE_NOT_RECRUITING"}}, {_id:2311, properties:{name:"Evaluation of the Long-term Safety, Tolerability, and Efficacy of Perampanel (E2007) as an Adjunctive Therapy in Levodop", id:"NCT00505622", status:"TERMINATED"}}, {_id:2313, properties:{name:"Development of Digital Diagnostic Devices for Parkinson's Disease", id:"NCT06663826", status:"RECRUITING"}}, {_id:2314, properties:{name:"A Study To Evaluate The Safety And Efficacy Of IPX066 In Subjects With Parkinson's Disease", id:"NCT00880620", status:"COMPLETED"}}, {_id:2319, properties:{name:"The Effect and Mechanism of Transcutaneous Auricular Vagus Nerve Stimulation on Gait Impairments in PD", id:"NCT05561348", status:"UNKNOWN"}}, {_id:2320, properties:{name:"Study of UB-312 in Healthy Participants and Parkinson's Disease Patients", id:"NCT04075318", status:"COMPLETED"}}, {_id:2322, properties:{name:"The Cyclical Lower-extremity Exercise for Parkinson's Trial", id:"NCT01636297", status:"COMPLETED"}}, {_id:2323, properties:{name:"Characterizing the Pathophysiological Role of the Pallido-thalamocortical Motor Pathway in Parkinson's Disease.", id:"NCT06692920", status:"RECRUITING"}}, {_id:2324, properties:{name:"Biomarker Validation Following Sargramostim Treatment in Parkinson's Disease", id:"NCT05677633", status:"COMPLETED"}}, {_id:2326, properties:{name:"Bio Electro Stimulation Therapy for Parkinson's Disease", id:"NCT03014050", status:"COMPLETED"}}, {_id:2327, properties:{name:"Self-administered tDCS for Improving Single- and Dual-task Gait in Patients With PD", id:"NCT06324448", status:"RECRUITING"}}, {_id:2328, properties:{name:"A Post Marketing Observational Study of Activities of Daily Living in Advanced Parkinson's Disease Patients With Early T", id:"NCT01747655", status:"COMPLETED"}}, {_id:2329, properties:{name:"Multifocal Neuromodulation in Motor and Cognitive Function of People With Parkinson's Disease", id:"NCT04090385", status:"UNKNOWN"}}, {_id:2330, properties:{name:"18-month Study of Long-term Efficacy & Safety of Safinamide as add-on Therapy in Patients With Mid-late Stage PD", id:"NCT01286935", status:"COMPLETED"}}, {_id:2332, properties:{name:"Biological Markers in Parkinson's Disease", id:"NCT00088335", status:"COMPLETED"}}, {_id:2333, properties:{name:"Predictive Value of Multimodal MRI in Parkinson's Disease", id:"NCT05003206", status:"UNKNOWN"}}, {_id:2334, properties:{name:"A Multiple Ascending Dose Study With LY03003 in Patients With Early-stage Parkinson's Disease", id:"NCT04045678", status:"COMPLETED"}}, {_id:2337, properties:{name:"Vibrotactile Coordinated Reset: a Non-invasive Treatment for Parkinson's Disease 2", id:"NCT05881460", status:"RECRUITING"}}, {_id:2338, properties:{name:"Expiratory Muscle Training in Patients With Parkinson's Disease", id:"NCT00843739", status:"COMPLETED"}}, {_id:2339, properties:{name:"A Study of Brain Imaging With Nuclear Medicine Technology in Individuals With and at Risk for Parkinson's Disease", id:"NCT00117819", status:"COMPLETED"}}, {_id:2341, properties:{name:"Black and African Americans Connections to Parkinson's Disease (BLAAC PD)", id:"NCT06719583", status:"RECRUITING"}}, {_id:2342, properties:{name:"One-year Follow-up of Iron in Basal Ganglia - R2*: a Biomarker of Parkinson's Disease Progression?", id:"NCT02816645", status:"UNKNOWN"}}, {_id:2343, properties:{name:"Physiological Brain Atlas Development", id:"NCT00575081", status:"RECRUITING"}}, {_id:2344, properties:{name:"The Effect of IV Amantadine on Freezing of Gait (FOG) Resistant to Dopaminergic Therapy", id:"NCT01313819", status:"UNKNOWN"}}, {_id:2346, properties:{name:"Clinical Study of Stalevo in the Treatment of Early Parkinson's Disease", id:"NCT04952194", status:"UNKNOWN"}}, {_id:2349, properties:{name:"Evaluation of Intensive Language Therapy", id:"NCT02935842", status:"COMPLETED"}}, {_id:2350, properties:{name:"Speech and Voice Outcomes Following HD-tDCS Over the Left SMA", id:"NCT06245070", status:"NOT_YET_RECRUITING"}}, {_id:2351, properties:{name:"Establishment of a Human Tissue Bank for Studying the Microbial Etiology of Neurodegenerative Diseases", id:"NCT01954875", status:"WITHDRAWN"}}, {_id:2352, properties:{name:"Special Survey on PD Patients With Renal Dysfunction", id:"NCT00613756", status:"COMPLETED"}}, {_id:2353, properties:{name:"The Sensitivity and Specificity of Canine Detection of Parkinson's Disease", id:"NCT04613531", status:"COMPLETED"}}, {_id:2354, properties:{name:"Study of Feasibility and Efficacy of Telecommunication Platforms as an Adjunctive Clinical Tool for a Parkinson's Diseas", id:"NCT04695353", status:"COMPLETED"}}, {_id:2355, properties:{name:"A Study to Evaluate Fixed Dose Carbidopa/Levodopa/Entacapone Versus Immediate Release Carbidopa/Levodopa", id:"NCT00134966", status:"COMPLETED"}}, {_id:2357, properties:{name:"Metabolic Cofactor Supplementation in Alzheimer's Disease (AD) and Parkinson's Disease (PD) Patients", id:"NCT04044131", status:"COMPLETED"}}, {_id:2360, properties:{name:"Mixed Music Intervention on Sleep Disturbance in Patients With Parkinson's Disease", id:"NCT05489653", status:"TERMINATED"}}, {_id:2361, properties:{name:"A Trial of 18F-AV-133 Positron Emission Tomography (PET) Imaging to Differentiate Subjects With Parkinson's Disease (PD)", id:"NCT01550484", status:"COMPLETED"}}, {_id:2363, properties:{name:"Choice of Anesthesia in Microelectrode Recording Guided Deep Brain Stimulation for Parkinson's Disease", id:"NCT05550714", status:"RECRUITING"}}, {_id:2366, properties:{name:"Namenda (Memantine) for Non-motor Symptoms in Parkinson's Disease", id:"NCT00646204", status:"COMPLETED"}}, {_id:2368, properties:{name:"Social & QoL Behaviors in Parkinson's Disease", id:"NCT06385184", status:"RECRUITING"}}, {_id:2369, properties:{name:"A Retrospective Study of the Relationship Between White Matter Hyperintensities(WMHs) Within the Cholinergic Pathways an", id:"NCT02071693", status:"COMPLETED"}}, {_id:2370, properties:{name:"rTMS on Motor Function of Parkinson's Disease Patients With Different Phenotypes", id:"NCT04116216", status:"UNKNOWN"}}, {_id:2371, properties:{name:"Study of Motor Inhibition in Parkinson's Disease and Focal Hand Dystonia", id:"NCT05209516", status:"UNKNOWN"}}, {_id:2372, properties:{name:"Dopaminergic Loss and Pain in Parkinson's Disease", id:"NCT00940914", status:"COMPLETED"}}, {_id:2374, properties:{name:"STEPS Trial - Spheramine Safety and Efficacy Study", id:"NCT00206687", status:"TERMINATED"}}, {_id:2376, properties:{name:"Voice Treatment for Parkinson's Disease", id:"NCT03700684", status:"COMPLETED"}}, {_id:2377, properties:{name:"A Sub-Study With Patients in APO401 to Evaluate Adverse Events During Dose Introduction in Apomorphine-naïve Patients.", id:"NCT00145171", status:"COMPLETED"}}, {_id:2379, properties:{name:"Effects Of Osteopathic Manipulative Medicine(OMM) On Lower Extremity Muscle Characteristics In Parkinson's Disease(PD) P", id:"NCT05884944", status:"RECRUITING"}}, {_id:2380, properties:{name:"Determination of the Minimal Detectable Change of the Parkinson's Disease Questionnaire-8", id:"NCT06487364", status:"RECRUITING"}}, {_id:2381, properties:{name:"Deep Brain Stimulation for Visuomotor Function in Parkinson's Disease", id:"NCT05400499", status:"RECRUITING"}}, {_id:2382, properties:{name:"Clinical Outcomes of Deep Brain Stimulator (DBS) Electrodes Placed Using Intraoperative Computed Tomography (CT) and Fra", id:"NCT01703598", status:"COMPLETED"}}, {_id:2383, properties:{name:"PROGENI (Parkinson's Research: The Organized Genetics Initiative) Family Study of LRRK2 (Leucine-rich Repeat Kinase 2)", id:"NCT01536821", status:"COMPLETED"}}, {_id:2384, properties:{name:"A Study of CST-2032 and CST-107 in Subjects With Mild Cognitive Impairment or Mild Dementia Due to Parkinson's or Alzhei", id:"NCT05104463", status:"COMPLETED"}}, {_id:2386, properties:{name:"Simpler and Safer Deep Brain Stimulation for Parkinson's Disease", id:"NCT03837314", status:"UNKNOWN"}}, {_id:2387, properties:{name:"Evaluation of the Efficacy and Safety of AFQ056 in Reducing Moderate to Severe L-dopa Induced Dyskinesias in Patients Wi", id:"NCT00986414", status:"COMPLETED"}}, {_id:2389, properties:{name:"Use of Interventional MRI for Implantation of Deep Brain Stimulator Electrodes", id:"NCT00792532", status:"COMPLETED"}}, {_id:2390, properties:{name:"Neural Correlates of Cognition in Parkinson's Disease", id:"NCT02975193", status:"COMPLETED"}}, {_id:2391, properties:{name:"Light Therapy Plus Exercise to Improve Motor, Non-Motor Symptoms and QoL in Parkinson's Disease", id:"NCT06036433", status:"UNKNOWN"}}, {_id:2392, properties:{name:"An Extension Study of Entacapone in Patients With Parkinson's Disease With End-of-dose Wearing-off. This Study is Not Re", id:"NCT00237263", status:"COMPLETED"}}, {_id:2394, properties:{name:"Effect of Rasagiline on Balance in Parkinson's Disease as Measured by Computerized Posturography", id:"NCT07077187", status:"WITHDRAWN"}}, {_id:2396, properties:{name:"Influence of Pramipexole Extended Release on Medication Adherence in Parkinson´s Disease", id:"NCT01097421", status:"COMPLETED"}}, {_id:2398, properties:{name:"PET-Study: Effects of Single Doses of Stalevo and Levodopa/Carbidopa on Striatal 11C-Raclopride Binding", id:"NCT00562198", status:"TERMINATED"}}, {_id:2401, properties:{name:"Safety and Efficacy of State-of-the-Art Exoskeleton Technology to Improve Mobility in Parkinson's Disease", id:"NCT04587193", status:"TERMINATED"}}, {_id:2402, properties:{name:"Effects of Nordic Walking in Parkinson Disease Patients", id:"NCT03355521", status:"COMPLETED"}}, {_id:2403, properties:{name:"Augmented Reality Treadmill Training in Patients With Parkinson's Disease", id:"NCT04108741", status:"UNKNOWN"}}, {_id:2404, properties:{name:"Global REsponsE During iNFusIon of a gEl With LevoDopa/Carbidopa", id:"NCT01754129", status:"COMPLETED"}}, {_id:2405, properties:{name:"Effect of Remote Cognitive Intervention in Patients With Parkinson's Disease During the COVID-19 Pandemic", id:"NCT05476302", status:"COMPLETED"}}, {_id:2406, properties:{name:"Video Dance Class and Unsupervised Physical Activity During Covid-19 Pandemic in People With Parkinson's Disease", id:"NCT04422353", status:"UNKNOWN"}}, {_id:2407, properties:{name:"Study in Parkinson's Disease Patients With Dyskinesia With Combinations of JM-010 and Its Individual Components", id:"NCT04377945", status:"TERMINATED"}}, {_id:2416, properties:{name:"Clinical Validation of AI-powered Smart Vehicle Assisted Gait Training in Neurodegenerative Disorders", id:"NCT07230366", status:"NOT_YET_RECRUITING"}}, {_id:2417, properties:{name:"A Safety, Tolerability, and Plasma Concentration Study of Levodopa/Carbidopa Subcutaneous Solution (ND0612) in Parkinson", id:"NCT01725802", status:"COMPLETED"}}, {_id:2419, properties:{name:"Walking Capacity in Parkinson's Disease (PD-Walk)", id:"NCT00261781", status:"TERMINATED"}}, {_id:2420, properties:{name:"Trial to Evaluate the Pharmacokinetics, Safety, and Tolerability of Rotigotine in Healthy Korean Subjects", id:"NCT01964573", status:"COMPLETED"}}, {_id:2421, properties:{name:"A Phase 4, Open-label Study to Assess the Feasibility and Efficacy on Motor and Non-motor Symptoms of Switching From Pra", id:"NCT01711866", status:"COMPLETED"}}, {_id:2422, properties:{name:"Effect of Virtual Reality on Freezing Phenomenon, Balance, Functional Mobility, Participation in Parkinson's Patients", id:"NCT06390553", status:"NOT_YET_RECRUITING"}}, {_id:2423, properties:{name:"Methylphenidate for the Treatment of Gait Impairment in Parkinson's Disease", id:"NCT00526630", status:"COMPLETED"}}, {_id:2425, properties:{name:"Study of the Neuro-protective Effect of Granulocyte-colony Stimulating Factor on Early Stage Parkinson's Disease", id:"NCT01227681", status:"TERMINATED"}}, {_id:2427, properties:{name:"A Natural History Study of Patients With G2019S LRRK2 Parkinson's Disease", id:"NCT05349019", status:"TERMINATED"}}, {_id:2428, properties:{name:"Blood Flow Restriction for Optimizing Balance in Parkinson's Disease", id:"NCT06508801", status:"RECRUITING"}}, {_id:2429, properties:{name:"Pharmacokinetics of Levodopa/Carbidopa Infusion With and Without Oral Catechol-O-methyl Transferase (COMT) Inhibitors", id:"NCT00906828", status:"COMPLETED"}}, {_id:2433, properties:{name:"Unravelling the Alteration of Brain Structure and Function in Parkinson´s Disease With Ultra-high Field MRI", id:"NCT03866044", status:"UNKNOWN"}}, {_id:2434, properties:{name:"A Study to Investigate the Safety, Tolerability, and Pharmacokinetics of PF-06649751 in Subjects With Idiopathic Parkins", id:"NCT02373072", status:"COMPLETED"}}, {_id:2437, properties:{name:"Study Of Cabaser and Sinemet CR For The Treatment Of Nighttime Symptoms Associated With Parkinson's Disease.", id:"NCT00174239", status:"TERMINATED"}}, {_id:2440, properties:{name:"Influence of Glucose on Metabolism and Clinical Symptoms of Patients With Parkinson's Disease", id:"NCT05998772", status:"RECRUITING"}}, {_id:2441, properties:{name:"PET Scanning in Parkinson s Disease", id:"NCT00024622", status:"COMPLETED"}}, {_id:2444, properties:{name:"Efficacy, Safety And Tolerability Study In Subjects With Parkinson's Disease", id:"NCT02006290", status:"COMPLETED"}}, {_id:2446, properties:{name:"Comparison of Sensory Cuing Modalities for Freezing of Gait", id:"NCT05080413", status:"COMPLETED"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ClinicalTrial;
UNWIND [{_id:2447, properties:{name:"Study of the Effects of Three Exercise Programs in Parkinson's Disease", id:"NCT02622737", status:"TERMINATED"}}, {_id:2448, properties:{name:"Adaptive vs. Continuous Subthalamic Nucleus Deep Brain Stimulation in Parkinson's Disease", id:"NCT06909045", status:"RECRUITING"}}, {_id:2449, properties:{name:"Effects of Home-based High-speed Bodyweight Resistance Training in Individual With Parkinson's Disease", id:"NCT06646523", status:"RECRUITING"}}, {_id:2450, properties:{name:"Pharmacokinetic-pharmacodynamic Interaction Between Each of Three Diferente Single Doses of BIA 9-1067 and a Single-dose", id:"NCT02169479", status:"COMPLETED"}}, {_id:2452, properties:{name:"Effect of Inhalation Aromatherapy on Anxiety and Depressive Symptoms of Geriatric Patients With Parkinson's Disease", id:"NCT05728177", status:"COMPLETED"}}, {_id:2453, properties:{name:"Long-term Longitudinal Imaging of Presynaptic Terminals in PD", id:"NCT06875765", status:"RECRUITING"}}, {_id:2454, properties:{name:"Effect of an Apomorphine Pump on the Quality of Sleep in Parkinson's Disease Patients (POMPRENELLE).", id:"NCT02688465", status:"TERMINATED"}}, {_id:2456, properties:{name:"Motor, Non-motor and Genetic Determinants of Progression in Parkinson's Disease: A Mexican Multicenter Cohort Study", id:"NCT01865877", status:"COMPLETED"}}, {_id:2457, properties:{name:"Relationship of Dopamine to Cognitive Function in Parkinson's Disease", id:"NCT00094601", status:"COMPLETED"}}, {_id:2458, properties:{name:"An Open-Label Extension Trial to Assess the Safety of Long-Term Treatment of Rotigotine in Early-Stage Parkinson's Disea", id:"NCT00594165", status:"COMPLETED"}}, {_id:2459, properties:{name:"Effect of Dual Task on Upper and Lower Extremity Skills in Parkinson's Disease", id:"NCT04267341", status:"COMPLETED"}}, {_id:2460, properties:{name:"VY-AADC02 for Parkinson's Disease With Motor Fluctuations (RESTORE-1)", id:"NCT03562494", status:"COMPLETED"}}, {_id:2462, properties:{name:"A Study to Assess the Safety, Tolerability and PK of NPT520-34 in Healthy Subjects", id:"NCT03954600", status:"COMPLETED"}}, {_id:2465, properties:{name:"Pimavanserin vs. Quetiapine for Treatment of Parkinson's Psychosis", id:"NCT04373317", status:"RECRUITING"}}, {_id:2467, properties:{name:"A Study to Evaluate the Pharmacokinetics and Safety of LY03003 in Patients With Advanced-stage PD", id:"NCT04630860", status:"COMPLETED"}}, {_id:2469, properties:{name:"The Learning Effects of Task-priority Strategy on Dual-task Weight Shifting and Brain Plasticity in Patients With Parkin", id:"NCT04288024", status:"COMPLETED"}}, {_id:2470, properties:{name:"Transcranial Direct Current Stimulation of the Primary Motor Cortex to Treat Levodopa-induced Dyskinesias", id:"NCT05752240", status:"UNKNOWN"}}, {_id:2471, properties:{name:"Development and Validation of a Scale Measuring Preoperative Expectations in Parkinson's Disease", id:"NCT04933513", status:"COMPLETED"}}, {_id:2472, properties:{name:"RECHARGE Sub-Study to the Implantable Systems Performance Registry (ISPR)", id:"NCT00998660", status:"COMPLETED"}}, {_id:2473, properties:{name:"SPEECH as Biomarker for Emotion, Movement and cOgnition in Parkinson's Disease", id:"NCT05765110", status:"RECRUITING"}}, {_id:2474, properties:{name:"Rotigotine Effect on Nocturnal Hypokinesia Compares to Placebo Control: A Quantitative Assessment by Wearable Sensors", id:"NCT03098368", status:"UNKNOWN"}}, {_id:2475, properties:{name:"Circadian Rhythms and Sleep-Wake Cycles in Parkinson's Disease", id:"NCT01742182", status:"COMPLETED"}}, {_id:2476, properties:{name:"Cognitive Disparities in Parkinson's Disease", id:"NCT07262658", status:"COMPLETED"}}, {_id:2477, properties:{name:"CHIEF-PD (CHolinesterase Inhibitor to prEvent Falls in Parkinson's Disease)", id:"NCT04226248", status:"COMPLETED"}}, {_id:2479, properties:{name:"Study of IRX4204 for Treatment of Early Parkinson's Disease", id:"NCT02438215", status:"COMPLETED"}}, {_id:2481, properties:{name:"Evaluation of the Effects of Aquatic Therapy on Activities of Daily Living, Walking, Balance, Posture, Pain, and Depress", id:"NCT07390825", status:"RECRUITING"}}, {_id:2482, properties:{name:"Diaphragmatic Exercise on Parkinson Disease", id:"NCT04108520", status:"COMPLETED"}}, {_id:2483, properties:{name:"Exercise to Improve Sleep in Parkinson's Disease", id:"NCT05644327", status:"RECRUITING"}}, {_id:2484, properties:{name:"Safety and Efficacy of AVP-923 in the Treatment of Levodopa-induced Dyskinesia in Parkinson's Disease Patients", id:"NCT01767129", status:"COMPLETED"}}, {_id:2486, properties:{name:"Spinal Cord sTimulation thEraPy for Parkinson's Disease Patients With Gait Problems", id:"NCT05110053", status:"COMPLETED"}}, {_id:2487, properties:{name:"Study of Liatermin (r-metHuGDNF) Administered by Bilateral Intraputaminal (IPu) Infusion to Subjects With Idiopathic Par", id:"NCT00115427", status:"COMPLETED"}}, {_id:2489, properties:{name:"The Effectiveness of Motor-motor and Motor-cognitive Dual-task Training Interventions on Balance in People With Parkinso", id:"NCT05710588", status:"UNKNOWN"}}, {_id:2490, properties:{name:"Deep Brain Stimulation (DBS) of the Nucleus Basalis of Meynert (NbM) in Patients With Parkinson's Disease", id:"NCT02763397", status:"UNKNOWN"}}, {_id:2491, properties:{name:"The Relationship Between Trunk Control and Hand Functions in Individuals With Parkinson's", id:"NCT06146283", status:"UNKNOWN"}}, {_id:2492, properties:{name:"Adaptive Neurostimulation to Restore Sleep in Parkinson's Disease", id:"NCT04620551", status:"ACTIVE_NOT_RECRUITING"}}, {_id:2493, properties:{name:"Erythromycin in Parkinson's Disease", id:"NCT02005029", status:"COMPLETED"}}, {_id:2495, properties:{name:"DTI in Evaluation of Parkinsons Disease", id:"NCT05231356", status:"UNKNOWN"}}, {_id:2496, properties:{name:"Psychosocial Treatment of Depression in Parkinson's Disease", id:"NCT00853346", status:"UNKNOWN"}}, {_id:2497, properties:{name:"Trial Evaluating the Efficacy of Pimavanserin, a Selective Serotonin 5-HydroxyTryptamine-2A (5HT2A) Inverse Agonist, to ", id:"NCT06754553", status:"NOT_YET_RECRUITING"}}, {_id:2498, properties:{name:"A Pilot Clinical Trial With the Iron Chelator Deferiprone in Parkinson's Disease", id:"NCT01539837", status:"COMPLETED"}}, {_id:2501, properties:{name:"Effectiveness and Implementation of the HiBalance Program in Clinical Practice", id:"NCT02727478", status:"COMPLETED"}}, {_id:2502, properties:{name:"Lovastatin as a Neuroprotective Treatment for Early Stage Parkinson's Disease", id:"NCT03242499", status:"UNKNOWN"}}, {_id:2504, properties:{name:"Effects of Tactile Touch on Chronic Pain in Parkinson´s Disease", id:"NCT01734876", status:"COMPLETED"}}, {_id:2505, properties:{name:"Cilostazol in Parkinson&#39;s Disease", id:"NCT06612593", status:"NOT_YET_RECRUITING"}}, {_id:2508, properties:{name:"A Follow-up Study on Safety and Tolerability of Intracerebroventricular Administration of sNN0031 to Patients With Parki", id:"NCT01807338", status:"COMPLETED"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ClinicalTrial;
UNWIND [{_id:426, properties:{name:"ArmadilloDomain", id:"ArmadilloDomain"}}, {_id:427, properties:{name:"AnkyrinDomain", id:"AnkyrinDomain"}}, {_id:428, properties:{name:"LeucineRichRepeatDomain", id:"LeucineRichRepeatDomain"}}, {_id:431, properties:{name:"WD40Domain", id:"WD40Domain"}}, {_id:435, properties:{name:"ROC-CORtandemDomain", id:"ROC-CORtandemDomain"}}, {_id:436, properties:{name:"ArmadilloARMdomain", id:"ArmadilloARMdomain"}}, {_id:472, properties:{name:"ROCDomain", id:"ROCDomain"}}, {_id:473, properties:{name:"CORDomain", id:"CORDomain"}}, {_id:474, properties:{name:"KinaseDomain", id:"KinaseDomain"}}, {_id:552, properties:{name:"GTPaseDomain", id:"GTPaseDomain"}}, {_id:553, properties:{name:"ROC-CORDomain", id:"ROC-CORDomain"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Domain;
UNWIND [{_id:1, properties:{name:"ImagingModalities", id:"ImagingModalities"}}, {_id:2, properties:{name:"GeneticMarkers", id:"GeneticMarkers"}}, {_id:3, properties:{name:"BiomarkersForParkinsonsDisease", id:"BiomarkersForParkinsonsDisease"}}, {_id:4, properties:{name:"Neuroprotection", id:"Neuroprotection"}}, {_id:5, properties:{name:"OxidativeStress", id:"OxidativeStress"}}, {_id:6, properties:{name:"Inflammation", id:"Inflammation"}}, {_id:21, properties:{name:"Biomarkers", id:"Biomarkers"}}, {_id:622, properties:{name:"BrainIntestineAxis", id:"BrainIntestineAxis"}}, {_id:632, properties:{name:"GutBrainAxis", id:"GutBrainAxis"}}, {_id:1666, properties:{name:"MitochondrialMechanism", id:"MitochondrialMechanism"}}, {_id:1910, properties:{name:"CytoprotectiveAggresomes", id:"CytoprotectiveAggresomes"}}, {_id:2007, properties:{name:"GenotypePhenotypeCorrelation", id:"GenotypePhenotypeCorrelation"}}, {_id:2206, properties:{name:"MitochondrialFidelity", id:"MitochondrialFidelity"}}, {_id:2282, properties:{name:"MitochondrialConnection", id:"MitochondrialConnection"}}, {_id:2283, properties:{name:"InnateImmunity", id:"InnateImmunity"}}, {_id:2284, properties:{name:"AdaptiveImmunity", id:"AdaptiveImmunity"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Concept;
UNWIND [{_id:1737, properties:{name:"IL1B", id:"IL1B"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Cytokine;
UNWIND [{_id:1940, properties:{name:"CSF", id:"CSF"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Fluid;
UNWIND [{_id:108, properties:{name:"GammaCamera", id:"GammaCamera"}}, {_id:109, properties:{name:"RotationalGammaCamera", id:"RotationalGammaCamera"}}, {_id:111, properties:{name:"PositronEmissionTomographyScanners", id:"PositronEmissionTomographyScanners"}}, {_id:804, properties:{name:"Servomotors", id:"Servomotors"}}, {_id:812, properties:{name:"SmartGlasses", id:"SmartGlasses"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Device;
UNWIND [{_id:514, properties:{name:"Thbs1Tgfbeta1Interaction", id:"Thbs1Tgfbeta1Interaction"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Interaction;
UNWIND [{_id:1866, properties:{name:"NeutrophilToLymphocyteRatio", id:"NeutrophilToLymphocyteRatio"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BiologicalMarker;
UNWIND [{_id:7, properties:{name:"LewyBodies", id:"LewyBodies"}}, {_id:27, properties:{name:"OrexinReceptor", id:"OrexinReceptor"}}, {_id:32, properties:{name:"αSynuclein", id:"αSynuclein"}}, {_id:33, properties:{name:"GFAP", id:"GFAP"}}, {_id:34, properties:{name:"AlphaSynuclein", id:"AlphaSynuclein"}}, {_id:40, properties:{name:"GFAPProtein", id:"GFAPProtein"}}, {_id:47, properties:{name:"AlphaSyn", id:"AlphaSyn"}}, {_id:49, properties:{name:"ApoA1Protein", id:"ApoA1Protein"}}, {_id:50, properties:{name:"SNCA", id:"SNCAProtein"}}, {_id:51, properties:{name:"DJ1Protein", id:"DJ1Protein"}}, {_id:55, properties:{name:"AlphaSynucleinProtein", id:"AlphaSynucleinProtein"}}, {_id:56, properties:{name:"TauProtein", id:"TauProtein"}}, {_id:60, properties:{name:"AmyloidBeta42", id:"AmyloidBeta42"}}, {_id:61, properties:{name:"NeurofilamentLightChain", id:"NeurofilamentLightChain"}}, {_id:62, properties:{name:"CReactiveProtein", id:"CReactiveProtein"}}, {_id:65, properties:{name:"Apo-A1Protein", id:"Apo-A1Protein"}}, {_id:78, properties:{name:"αβ-42", id:"αβ-42"}}, {_id:95, properties:{name:"TPSO", id:"TPSO"}}, {_id:123, properties:{name:"DATProtein", id:"DATProtein"}}, {_id:124, properties:{name:"VMAT2Protein", id:"VMAT2Protein"}}, {_id:129, properties:{name:"DopamineReceptor", id:"DopamineReceptor"}}, {_id:130, properties:{name:"SerotoninTransporter", id:"SerotoninTransporter"}}, {_id:175, properties:{name:"α-synuclein", id:"α-synuclein"}}, {_id:181, properties:{name:"SmallHumaninLikePeptide2Protein", id:"SmallHumaninLikePeptide2Protein"}}, {_id:231, properties:{name:"GlialFibrillaryAcidicProtein", id:"GlialFibrillaryAcidicProtein"}}, {_id:331, properties:{name:"MelesProtein", id:"MelesProtein"}}, {_id:338, properties:{name:"TSPO", id:"TSPO"}}, {_id:348, properties:{name:"VMAT2", id:"VMAT2"}}, {_id:349, properties:{name:"DAT", id:"DAT"}}, {_id:353, properties:{name:"5HT1BReceptor", id:"5HT1BReceptor"}}, {_id:424, properties:{name:"NFLProtein", id:"NFLProtein"}}, {_id:425, properties:{name:"UCHL1", id:"UCHL1Protein"}}, {_id:429, properties:{name:"RasOfComplexGTPase", id:"RasOfComplexGTPase"}}, {_id:439, properties:{name:"Rab29Protein", id:"Rab29Protein"}}, {_id:440, properties:{name:"Rab32Protein", id:"Rab32Protein"}}, {_id:441, properties:{name:"Rab38Protein", id:"Rab38Protein"}}, {_id:442, properties:{name:"Rab8Protein", id:"Rab8Protein"}}, {_id:443, properties:{name:"Rab10Protein", id:"Rab10Protein"}}, {_id:444, properties:{name:"RILPL1Protein", id:"RILPL1Protein"}}, {_id:445, properties:{name:"TMEM55BProtein", id:"TMEM55BProtein"}}, {_id:449, properties:{name:"14-3-3Protein", id:"14-3-3Protein"}}, {_id:450, properties:{name:"RabSmallGTPases", id:"RabSmallGTPases"}}, {_id:451, properties:{name:"DAneurons", id:"DAneurons"}}, {_id:454, properties:{name:"Rab12Protein", id:"Rab12Protein"}}, {_id:455, properties:{name:"Rabs", id:"Rabs"}}, {_id:456, properties:{name:"VPS35", id:"VPS35"}}, {_id:457, properties:{name:"Rab29", id:"Rab29"}}, {_id:458, properties:{name:"Rab12", id:"Rab12"}}, {_id:459, properties:{name:"Rab38", id:"Rab38"}}, {_id:460, properties:{name:"Rab32", id:"Rab32"}}, {_id:461, properties:{name:"Rab8", id:"Rab8"}}, {_id:462, properties:{name:"Rab10", id:"Rab10"}}, {_id:478, properties:{name:"CalDAGGEFIProtein", id:"CalDAGGEFIProtein"}}, {_id:479, properties:{name:"ROC", id:"ROC"}}, {_id:482, properties:{name:"ArfGAP1", id:"ArfGAP1"}}, {_id:483, properties:{name:"RGS2", id:"RGS2"}}, {_id:484, properties:{name:"ARHGEF7", id:"ARHGEF7"}}, {_id:485, properties:{name:"CalDAG-GEFI", id:"CalDAG-GEFI"}}, {_id:486, properties:{name:"ATICEnzyme", id:"ATICEnzyme"}}, {_id:488, properties:{name:"HSP90Chaperone", id:"HSP90Chaperone"}}, {_id:489, properties:{name:"CHIPProtein", id:"CHIPProtein"}}, {_id:490, properties:{name:"WSB1Protein", id:"WSB1Protein"}}, {_id:491, properties:{name:"TRIM1Protein", id:"TRIM1Protein"}}, {_id:492, properties:{name:"EndoAProtein", id:"EndoAProtein"}}, {_id:493, properties:{name:"SYNJ1", id:"SYNJ1Protein"}}, {_id:494, properties:{name:"AuxilinProtein", id:"AuxilinProtein"}}, {_id:495, properties:{name:"AP2M1Protein", id:"AP2M1Protein"}}, {_id:496, properties:{name:"EndoA", id:"EndoA"}}, {_id:497, properties:{name:"SYNJ1", id:"SYNJ1"}}, {_id:498, properties:{name:"AuxilinDnaJC6", id:"AuxilinDnaJC6"}}, {_id:499, properties:{name:"AP2M1", id:"AP2M1"}}, {_id:500, properties:{name:"RPS15", id:"RPS15"}}, {_id:504, properties:{name:"auxilin/DNAJC6", id:"auxilin/DNAJC6"}}, {_id:507, properties:{name:"JIP3Protein", id:"JIP3Protein"}}, {_id:508, properties:{name:"JIP4Protein", id:"JIP4Protein"}}, {_id:509, properties:{name:"EHBP1Protein", id:"EHBP1Protein"}}, {_id:510, properties:{name:"CHMP4BProtein", id:"CHMP4BProtein"}}, {_id:512, properties:{name:"SarcoEndoplasmicReticulumCaATPase", id:"SarcoEndoplasmicReticulumCaATPase"}}, {_id:516, properties:{name:"GlucocerebrosidaseProtein", id:"GlucocerebrosidaseProtein"}}, {_id:517, properties:{name:"Rab8aProtein", id:"Rab8aProtein"}}, {_id:518, properties:{name:"LysosomalLikeProteins1And2", id:"LysosomalLikeProteins1And2"}}, {_id:522, properties:{name:"MIROprotein", id:"MIROprotein"}}, {_id:546, properties:{name:"AUF1Protein", id:"AUF1Protein"}}, {_id:549, properties:{name:"ATransporter", id:"ATransporter"}}, {_id:559, properties:{name:"DAProtein", id:"DAProtein"}}, {_id:560, properties:{name:"RabProtein", id:"RabProtein"}}, {_id:561, properties:{name:"RILPLProtein", id:"RILPLProtein"}}, {_id:568, properties:{name:"ANKProtein", id:"ANKProtein"}}, {_id:569, properties:{name:"ARMProtein", id:"ARMProtein"}}, {_id:577, properties:{name:"LRRK2", id:"LRRK2Protein"}}, {_id:578, properties:{name:"ATICProtein", id:"ATICProtein"}}, {_id:580, properties:{name:"Rab29GTPase", id:"Rab29GTPase"}}, {_id:581, properties:{name:"Rab7L1GTPase", id:"Rab7L1GTPase"}}, {_id:582, properties:{name:"Rab12GTPase", id:"Rab12GTPase"}}, {_id:584, properties:{name:"RILPL1", id:"RILPL1"}}, {_id:585, properties:{name:"TMEM55B", id:"TMEM55B"}}, {_id:592, properties:{name:"HeatShockProtein90", id:"HeatShockProtein90"}}, {_id:593, properties:{name:"RabGTPases", id:"RabGTPases"}}, {_id:594, properties:{name:"RibosomalProteinS15", id:"RibosomalProteinS15"}}, {_id:597, properties:{name:"SERCA", id:"SERCA"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Protein;
UNWIND [{_id:598, properties:{name:"XBP1", id:"XBP1"}}, {_id:599, properties:{name:"THBS1", id:"THBS1"}}, {_id:600, properties:{name:"TGFbeta1", id:"TGFbeta1"}}, {_id:601, properties:{name:"PERK", id:"PERK"}}, {_id:602, properties:{name:"Rab8a", id:"Rab8a"}}, {_id:608, properties:{name:"DLP1Protein", id:"DLP1Protein"}}, {_id:609, properties:{name:"MiroProtein", id:"MiroProtein"}}, {_id:690, properties:{name:"Survivin", id:"Survivin"}}, {_id:822, properties:{name:"CecchiniProtein", id:"CecchiniProtein"}}, {_id:824, properties:{name:"BoschiProtein", id:"BoschiProtein"}}, {_id:825, properties:{name:"OsculatiProtein", id:"OsculatiProtein"}}, {_id:826, properties:{name:"TinazziProtein", id:"TinazziProtein"}}, {_id:828, properties:{name:"BlandiniProtein", id:"BlandiniProtein"}}, {_id:833, properties:{name:"KimProtein", id:"KimProtein"}}, {_id:834, properties:{name:"YangProtein", id:"YangProtein"}}, {_id:835, properties:{name:"LeeProtein", id:"LeeProtein"}}, {_id:836, properties:{name:"ShinProtein", id:"ShinProtein"}}, {_id:837, properties:{name:"JeongProtein", id:"JeongProtein"}}, {_id:962, properties:{name:"SchieleProtein", id:"SchieleProtein"}}, {_id:967, properties:{name:"KloiberProtein", id:"KloiberProtein"}}, {_id:970, properties:{name:"WangProtein", id:"WangProtein"}}, {_id:975, properties:{name:"QureshiProtein", id:"QureshiProtein"}}, {_id:980, properties:{name:"MuruetaGoyenaProtein", id:"MuruetaGoyenaProtein"}}, {_id:987, properties:{name:"GomezEstebanProtein", id:"GomezEstebanProtein"}}, {_id:989, properties:{name:"MerelloProtein", id:"MerelloProtein"}}, {_id:992, properties:{name:"KishiProtein", id:"KishiProtein"}}, {_id:1008, properties:{name:"SubstanceP", id:"SubstanceP"}}, {_id:1307, properties:{name:"PINK1", id:"PINK1Protein"}}, {_id:1308, properties:{name:"PRKN", id:"PRKNProtein"}}, {_id:1309, properties:{name:"GBA", id:"GBAProtein"}}, {_id:1310, properties:{name:"PARK7", id:"PARK7Protein"}}, {_id:1311, properties:{name:"VPS35", id:"VPS35Protein"}}, {_id:1312, properties:{name:"CHCHD2", id:"CHCHD2Protein"}}, {_id:1313, properties:{name:"DNAJC6", id:"DNAJC6Protein"}}, {_id:1314, properties:{name:"ATP13A2", id:"ATP13A2Protein"}}, {_id:1315, properties:{name:"PLA2G6", id:"PLA2G6Protein"}}, {_id:1316, properties:{name:"FBXO7", id:"FBXO7Protein"}}, {_id:1317, properties:{name:"MAPT", id:"MAPTProtein"}}, {_id:1619, properties:{name:"Tau", id:"Tau"}}, {_id:1620, properties:{name:"Polyglutamine", id:"Polyglutamine"}}, {_id:1651, properties:{name:"GCaseProtein", id:"GCaseProtein"}}, {_id:1654, properties:{name:"αSynucleinProtein", id:"αSynucleinProtein"}}, {_id:1699, properties:{name:"MHCClassIMolecule", id:"MHCClassIMolecule"}}, {_id:1727, properties:{name:"PhosphorylatedAlphaSynuclein", id:"PhosphorylatedAlphaSynuclein"}}, {_id:1729, properties:{name:"Fibroblasts", id:"Fibroblasts"}}, {_id:1732, properties:{name:"RabProteins", id:"RabProteins"}}, {_id:1734, properties:{name:"Mitochondrial18kDaTranslocatorProtein", id:"Mitochondrial18kDaTranslocatorProtein"}}, {_id:1738, properties:{name:"Alpha_Synuclein", id:"Alpha_Synuclein"}}, {_id:1802, properties:{name:"Glucocerebrosidase", id:"Glucocerebrosidase"}}, {_id:1882, properties:{name:"FGF21Protein", id:"FGF21Protein"}}, {_id:1883, properties:{name:"GDF15Protein", id:"GDF15Protein"}}, {_id:1906, properties:{name:"NigralNeurons", id:"NigralNeurons"}}, {_id:1913, properties:{name:"TotalTau", id:"TotalTau"}}, {_id:1914, properties:{name:"PhosphorylatedTau", id:"PhosphorylatedTau"}}, {_id:1921, properties:{name:"RatAlphaSynuclein", id:"RatAlphaSynuclein"}}, {_id:1929, properties:{name:"Alpha-synuclein", id:"Alpha-synuclein"}}, {_id:1935, properties:{name:"TauAmyloid", id:"TauAmyloid"}}, {_id:1938, properties:{name:"Amyloid", id:"Amyloid"}}, {_id:1939, properties:{name:"Aβ42", id:"Aβ42"}}, {_id:1942, properties:{name:"Transthyretin", id:"Transthyretin"}}, {_id:1944, properties:{name:"Synuclein", id:"Synuclein"}}, {_id:1980, properties:{name:"AmyloidBeta1_42", id:"AmyloidBeta1_42"}}, {_id:1981, properties:{name:"PhosphorylatedTau181", id:"PhosphorylatedTau181"}}, {_id:1982, properties:{name:"SolubleAmyloidBeta42", id:"SolubleAmyloidBeta42"}}, {_id:1988, properties:{name:"AmyloidBetaProtein", id:"AmyloidBetaProtein"}}, {_id:2040, properties:{name:"ParkinProtein", id:"ParkinProtein"}}, {_id:2070, properties:{name:"GCaseEnzyme", id:"GCaseEnzyme"}}, {_id:2092, properties:{name:"LRRK2Kinase", id:"LRRK2Kinase"}}, {_id:2204, properties:{name:"CHCHD2", id:"CHCHD2"}}, {_id:2208, properties:{name:"MMP13", id:"MMP13"}}, {_id:2285, properties:{name:"LeucineRichRepeatKinase2", id:"LeucineRichRepeatKinase2"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Protein;
UNWIND [{_id:803, properties:{name:"RotatorCuffInjury", id:"RotatorCuffInjury"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Trauma;
UNWIND [{_id:74, properties:{name:"Raphe_Nuclei", id:"Raphe_Nuclei"}}, {_id:81, properties:{name:"Cardiac_Noradrenergic_Nerves", id:"Cardiac_Noradrenergic_Nerves"}}, {_id:631, properties:{name:"MesencephalicSubstantiaNigra", id:"MesencephalicSubstantiaNigra"}}, {_id:635, properties:{name:"SubstantiaNigra", id:"SubstantiaNigra"}}, {_id:636, properties:{name:"Midbrain", id:"Midbrain"}}, {_id:637, properties:{name:"ParsCompacta", id:"ParsCompacta"}}, {_id:638, properties:{name:"GastricMyentericPlexus", id:"GastricMyentericPlexus"}}, {_id:639, properties:{name:"SubmucosalPlexus", id:"SubmucosalPlexus"}}, {_id:656, properties:{name:"NigrostriatalSystem", id:"NigrostriatalSystem"}}, {_id:700, properties:{name:"NigrostriatalPathway", id:"NigrostriatalPathway"}}, {_id:719, properties:{name:"EntericNervousSystem", id:"EntericNervousSystem"}}, {_id:752, properties:{name:"STN", id:"STN"}}, {_id:753, properties:{name:"GPI", id:"GPI"}}, {_id:797, properties:{name:"BasalGanglia", id:"BasalGanglia"}}, {_id:1622, properties:{name:"Caudate", id:"Caudate"}}, {_id:1623, properties:{name:"Putamen", id:"Putamen"}}, {_id:1624, properties:{name:"Gut", id:"Gut"}}, {_id:1625, properties:{name:"AutonomicNervousSystem", id:"AutonomicNervousSystem"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Anatomy;
UNWIND [{_id:733, properties:{name:"ExecutiveFunctions", id:"ExecutiveFunctions"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Function;
UNWIND [{_id:693, properties:{name:"APOEe4Allele", id:"APOEe4Allele"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:GeneticMarker;
UNWIND [{_id:1876, properties:{name:"APOElocus", id:"APOElocus"}}, {_id:1877, properties:{name:"LRP1Blocus", id:"LRP1Blocus"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Locus;
UNWIND [{_id:103, properties:{name:"T2Node", id:"T2Node"}}, {_id:132, properties:{name:"AcheActivity", id:"AcheActivity"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Measurement;
UNWIND [{_id:146, properties:{name:"Iron", id:"Iron"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Element;
UNWIND [{_id:605, properties:{name:"Mitochondria", id:"Mitochondria"}}, {_id:606, properties:{name:"Microtubules", id:"Microtubules"}}, {_id:1656, properties:{name:"Lysosomes", id:"Lysosomes"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:CellularComponent;
UNWIND [{_id:1979, properties:{name:"CerebrospinalFluid", id:"CerebrospinalFluid"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BodilyFluid;
UNWIND [{_id:2049, properties:{name:"SCA-related genes", id:"SCA-related genes"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Genes;
UNWIND [{_id:1630, properties:{name:"MovementDisorderSocietyClinicalDiagnosticCriteria", id:"MovementDisorderSocietyClinicalDiagnosticCriteria"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Standard;
UNWIND [{_id:73, properties:{name:"Serotonergic_System", id:"Serotonergic_System"}}, {_id:75, properties:{name:"Cholinergic_System", id:"Cholinergic_System"}}, {_id:79, properties:{name:"Noradrenergic_System", id:"Noradrenergic_System"}}, {_id:112, properties:{name:"DopaminergicSystem", id:"DopaminergicSystem"}}, {_id:134, properties:{name:"NoradrenergicSystem", id:"NoradrenergicSystem"}}, {_id:1686, properties:{name:"UbiquitinProteasomeSystem", id:"UbiquitinProteasomeSystem"}}, {_id:1687, properties:{name:"AutophagyLysosomalSystem", id:"AutophagyLysosomalSystem"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:System;
UNWIND [{_id:9, properties:{name:"SubstantiaNigra", id:"SubstantiaNigra"}}, {_id:10, properties:{name:"CentralNervousSystem", id:"CentralNervousSystem"}}, {_id:452, properties:{name:"SNpc", id:"SNpc"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:AnatomicalStructure;
UNWIND [{_id:663, properties:{name:"LevodopaTherapy", id:"LevodopaTherapy"}}, {_id:809, properties:{name:"DopaminergicTherapy", id:"DopaminergicTherapy"}}, {_id:810, properties:{name:"DeepBrainStimulation", id:"DeepBrainStimulation"}}, {_id:959, properties:{name:"CompensationStrategies", id:"CompensationStrategies"}}, {_id:2112, properties:{name:"RestorativeTherapy", id:"RestorativeTherapy"}}, {_id:2113, properties:{name:"CellTherapy", id:"CellTherapy"}}, {_id:2114, properties:{name:"GeneTherapy", id:"GeneTherapy"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Treatment;
UNWIND [{_id:667, properties:{name:"D1-type dopaminergic receptors", id:"D1-type dopaminergic receptors"}}, {_id:701, properties:{name:"CCKR", id:"CCKR"}}, {_id:1736, properties:{name:"IL6R", id:"IL6R"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Receptor;
UNWIND [{_id:29, properties:{name:"Astrocyte", id:"Astrocyte"}}, {_id:41, properties:{name:"Astrocytes", id:"Astrocytes"}}, {_id:53, properties:{name:"MicrogliaCellType", id:"MicrogliaCellType"}}, {_id:149, properties:{name:"Microglia", id:"Microglia"}}, {_id:151, properties:{name:"MicrogliaCell", id:"MicrogliaCell"}}, {_id:453, properties:{name:"DAneurons", id:"DAneurons"}}, {_id:501, properties:{name:"DAneuron", id:"DAneuron"}}, {_id:523, properties:{name:"Macrophages", id:"Macrophages"}}, {_id:524, properties:{name:"ProinflammatoryMonocytes", id:"ProinflammatoryMonocytes"}}, {_id:575, properties:{name:"MacroPhages", id:"MacroPhages"}}, {_id:630, properties:{name:"Neurons", id:"Neurons"}}, {_id:657, properties:{name:"DopaminergicCells", id:"DopaminergicCells"}}, {_id:1679, properties:{name:"NeuronsNode", id:"NeuronsNode"}}, {_id:1700, properties:{name:"CD8TCell", id:"CD8TCell"}}, {_id:1703, properties:{name:"EntericNeuron", id:"EntericNeuron"}}, {_id:1712, properties:{name:"EntericNeurons", id:"EntericNeurons"}}, {_id:1862, properties:{name:"CD163PlusMonocytes", id:"CD163PlusMonocytes"}}, {_id:1863, properties:{name:"CD11bPlusMonocytes", id:"CD11bPlusMonocytes"}}, {_id:1864, properties:{name:"CCR2PlusMonocytes", id:"CCR2PlusMonocytes"}}, {_id:1867, properties:{name:"Tlymphocytes", id:"Tlymphocytes"}}, {_id:1888, properties:{name:"DopamineNeuron", id:"DopamineNeuron"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:CellType;
UNWIND [{_id:574, properties:{name:"MycobacteriumTuberculosis", id:"MycobacteriumTuberculosis"}}, {_id:808, properties:{name:"Enterobacteriaceae", id:"Enterobacteriaceae"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Microorganism;
UNWIND [{_id:1771, properties:{name:"NIHR203312", id:"NIHR203312"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Grant;
UNWIND [{_id:24, properties:{name:"Epilepsy", id:"Epilepsy"}}, {_id:87, properties:{name:"Atrophy", id:"Atrophy"}}, {_id:115, properties:{name:"RBD", id:"RBD"}}, {_id:332, properties:{name:"NoradrenergicDysfunction", id:"NoradrenergicDysfunction"}}, {_id:346, properties:{name:"AromaticLAAminoAcidDecarboxylaseDeficiency", id:"AromaticLAAminoAcidDecarboxylaseDeficiency"}}, {_id:356, properties:{name:"REM Sleep Behaviour Disorder", id:"REM Sleep Behaviour Disorder"}}, {_id:642, properties:{name:"Complications", id:"Complications"}}, {_id:645, properties:{name:"REMsleepBehaviorDisorder", id:"REMsleepBehaviorDisorder"}}, {_id:654, properties:{name:"NonMotorSymptoms", id:"NonMotorSymptoms"}}, {_id:655, properties:{name:"MotorSymptoms", id:"MotorSymptoms"}}, {_id:658, properties:{name:"Depression", id:"Depression"}}, {_id:659, properties:{name:"Anxiety", id:"Anxiety"}}, {_id:670, properties:{name:"Psychosis", id:"Psychosis"}}, {_id:704, properties:{name:"CognitiveDeficit", id:"CognitiveDeficit"}}, {_id:708, properties:{name:"UrinaryIncontinence", id:"UrinaryIncontinence"}}, {_id:709, properties:{name:"SexualDysfunction", id:"SexualDysfunction"}}, {_id:716, properties:{name:"OrthostaticHypotension", id:"OrthostaticHypotension"}}, {_id:717, properties:{name:"Gastroparesis", id:"Gastroparesis"}}, {_id:718, properties:{name:"Constipation", id:"Constipation"}}, {_id:747, properties:{name:"SleepAttacks", id:"SleepAttacks"}}, {_id:748, properties:{name:"REM SleepBehaviorDisorder", id:"REM SleepBehaviorDisorder"}}, {_id:762, properties:{name:"TasteDisorders", id:"TasteDisorders"}}, {_id:763, properties:{name:"Ageusia", id:"Ageusia"}}, {_id:764, properties:{name:"Hyposmia", id:"Hyposmia"}}, {_id:765, properties:{name:"Anosmia", id:"Anosmia"}}, {_id:766, properties:{name:"ZincDeficiency", id:"ZincDeficiency"}}, {_id:767, properties:{name:"GumDisease", id:"GumDisease"}}, {_id:768, properties:{name:"DryMouth", id:"DryMouth"}}, {_id:769, properties:{name:"LesionsOnTasteBudsOrMucousMembranes", id:"LesionsOnTasteBudsOrMucousMembranes"}}, {_id:770, properties:{name:"GastrointestinalDiseases", id:"GastrointestinalDiseases"}}, {_id:777, properties:{name:"Dementia", id:"Dementia"}}, {_id:778, properties:{name:"ParkinsonsDisease", id:"ParkinsonsDisease"}}, {_id:779, properties:{name:"Arthritis", id:"Arthritis"}}, {_id:780, properties:{name:"Dystonia", id:"Dystonia"}}, {_id:783, properties:{name:"MusculoskeletalPain", id:"MusculoskeletalPain"}}, {_id:802, properties:{name:"Bursitis", id:"Bursitis"}}, {_id:817, properties:{name:"Anhedonia", id:"Anhedonia"}}, {_id:845, properties:{name:"SleepBehaviourDisorder", id:"SleepBehaviourDisorder"}}, {_id:847, properties:{name:"AnxietyPanicDisorders", id:"AnxietyPanicDisorders"}}, {_id:887, properties:{name:"SleepDisorder", id:"SleepDisorder"}}, {_id:888, properties:{name:"RapidEyeMovementSleepBehaviorDisorder", id:"RapidEyeMovementSleepBehaviorDisorder"}}, {_id:893, properties:{name:"MildCognitiveImpairment", id:"MildCognitiveImpairment"}}, {_id:954, properties:{name:"Apathy", id:"Apathy"}}, {_id:955, properties:{name:"Insomnia", id:"Insomnia"}}, {_id:1043, properties:{name:"HearingImpairment", id:"HearingImpairment"}}, {_id:1667, properties:{name:"SynapticDamage", id:"SynapticDamage"}}, {_id:1698, properties:{name:"MitochondrialDysfunction", id:"MitochondrialDysfunction"}}, {_id:1702, properties:{name:"IntestinalInfection", id:"IntestinalInfection"}}, {_id:1718, properties:{name:"REM SleepBehaviourDisorder", id:"REM SleepBehaviourDisorder"}}, {_id:1722, properties:{name:"VascularCopathology", id:"VascularCopathology"}}, {_id:1723, properties:{name:"AlzheimersCopathology", id:"AlzheimersCopathology"}}, {_id:1870, properties:{name:"GeneticFormsOfParkinsonsDisease", id:"GeneticFormsOfParkinsonsDisease"}}, {_id:1886, properties:{name:"Neuroinflammation", id:"Neuroinflammation"}}, {_id:1917, properties:{name:"LewyPathology", id:"LewyPathology"}}, {_id:1918, properties:{name:"Synucleinopenia", id:"Synucleinopenia"}}, {_id:1919, properties:{name:"Synucleinopathy", id:"Synucleinopathy"}}, {_id:1926, properties:{name:"Pathology", id:"Pathology"}}, {_id:2036, properties:{name:"LysosomalDysfunction", id:"LysosomalDysfunction"}}, {_id:2037, properties:{name:"NeuroInflammation", id:"NeuroInflammation"}}, {_id:2039, properties:{name:"MxMD", id:"MxMD"}}, {_id:2086, properties:{name:"NeuroinflammatoryResponse", id:"NeuroinflammatoryResponse"}}, {_id:2087, properties:{name:"GlycosphingolipidAccumulation", id:"GlycosphingolipidAccumulation"}}, {_id:2088, properties:{name:"AlphaSynucleinAggregation", id:"AlphaSynucleinAggregation"}}, {_id:2089, properties:{name:"DopaminergicNeuronLoss", id:"DopaminergicNeuronLoss"}}, {_id:2111, properties:{name:"PulmonaryDeficits", id:"PulmonaryDeficits"}}, {_id:2116, properties:{name:"RareDiseases", id:"RareDiseases"}}, {_id:2141, properties:{name:"PenetranceOfParkinsonsDisease", id:"PenetranceOfParkinsonsDisease"}}, {_id:2142, properties:{name:"GeneticDeterminantsOfSurvivalInProgressiveSupranuclearPalsy", id:"GeneticDeterminantsOfSurvivalInProgressiveSupranuclearPalsy"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Condition;
UNWIND [{_id:1320, properties:{name:"Continuous Subcutaneous Lisuride Infusion", id:"ContinuousSubcutaneousLisurideInfusionDrug"}}, {_id:1322, properties:{name:"IPX203", id:"IPX203Drug"}}, {_id:1326, properties:{name:"GOCOVRI", id:"GOCOVRIDrug"}}, {_id:1334, properties:{name:"Melatonin(Circadin®)", id:"MelatoninCircadin®Drug"}}, {_id:1335, properties:{name:"Placebo Oral Tablet", id:"PlaceboOralTabletDrug"}}, {_id:1338, properties:{name:"DNA Analysis", id:"DNAAnalysisDrug"}}, {_id:1342, properties:{name:"ANAVEX2-73", id:"ANAVEX273Drug"}}, {_id:1344, properties:{name:"Neu-120", id:"Neu120Drug"}}, {_id:1348, properties:{name:"N-acetylcysteine", id:"NacetylcysteineDrug"}}, {_id:1349, properties:{name:"Placebo", id:"PlaceboDrug"}}, {_id:1354, properties:{name:"Rotigotine", id:"RotigotineDrug"}}, {_id:1357, properties:{name:"JM-010", id:"JM010Drug"}}, {_id:1359, properties:{name:"ropinirole controlled-release (REQUIP CR) for RLS", id:"ropinirolecontrolledreleaseREQUIPCRforRLSDrug"}}, {_id:1363, properties:{name:"Dipraglurant", id:"DipraglurantDrug"}}, {_id:1375, properties:{name:"Gamma- glutamylcysteine", id:"GammaglutamylcysteineDrug"}}, {_id:1377, properties:{name:"ATM FOG in PD", id:"ATMFOGinPDDrug"}}, {_id:1379, properties:{name:"droxidopa", id:"droxidopaDrug"}}, {_id:1385, properties:{name:"Levodopa", id:"LevodopaDrug"}}, {_id:1390, properties:{name:"DaTSCAN™ Ioflupane (123I) Injection", id:"DaTSCAN™Ioflupane123IInjectionDrug"}}, {_id:1396, properties:{name:"SAGE-217", id:"SAGE217Drug"}}, {_id:1397, properties:{name:"Antiparkinsonian Agent(s)", id:"AntiparkinsonianAgentsDrug"}}, {_id:1402, properties:{name:"C11-SY08", id:"C11SY08Drug"}}, {_id:1404, properties:{name:"Non intervention-Genetic testing", id:"NoninterventionGenetictestingDrug"}}, {_id:1408, properties:{name:"Sertraline", id:"SertralineDrug"}}, {_id:1411, properties:{name:"CVN424", id:"CVN424Drug"}}, {_id:1413, properties:{name:"Preladenant", id:"PreladenantDrug"}}, {_id:1414, properties:{name:"L-dopa", id:"LdopaDrug"}}, {_id:1415, properties:{name:"Other Parkinson's Disease treatments", id:"OtherParkinson'sDiseasetreatmentsDrug"}}, {_id:1417, properties:{name:"Bilateral surgical infusion of AAV-GAD into the subthalamic nucleus", id:"BilateralsurgicalinfusionofAAVGADintothesubthalamicnucleusDrug"}}, {_id:1421, properties:{name:"GSK962040 (25 mg tablet)", id:"GSK96204025mgtabletDrug"}}, {_id:1424, properties:{name:"Metformin", id:"MetforminDrug"}}, {_id:1426, properties:{name:"Apomorphine Nasal Powder", id:"ApomorphineNasalPowderDrug"}}, {_id:1430, properties:{name:"apomorphine", id:"apomorphineDrug"}}, {_id:1435, properties:{name:"(11C)PE2I", id:"11CPE2IDrug"}}, {_id:1436, properties:{name:"Ioflupane", id:"IoflupaneDrug"}}, {_id:1438, properties:{name:"Lidocaine hydrochloride", id:"LidocainehydrochlorideDrug"}}, {_id:1440, properties:{name:"Human Dopaminergic Progenitor Cells", id:"HumanDopaminergicProgenitorCellsDrug"}}, {_id:1442, properties:{name:"CERE-120: AAV2-NTN", id:"CERE120:AAV2NTNDrug"}}, {_id:1453, properties:{name:"E2007", id:"E2007Drug"}}, {_id:1458, properties:{name:"Premarin ®", id:"Premarin®Drug"}}, {_id:1461, properties:{name:"esketamine", id:"esketamineDrug"}}, {_id:1462, properties:{name:"normal Saline", id:"normalSalineDrug"}}, {_id:1468, properties:{name:"[18F]UCB-2897", id:"[18F]UCB2897Drug"}}, {_id:1470, properties:{name:"Ropinirole prolonged release", id:"RopiniroleprolongedreleaseDrug"}}, {_id:1471, properties:{name:"ropinirole immediate release", id:"ropiniroleimmediatereleaseDrug"}}, {_id:1473, properties:{name:"XC130-A10H", id:"XC130A10HDrug"}}, {_id:1475, properties:{name:"carbidopa/levodopa", id:"carbidopalevodopaDrug"}}, {_id:1476, properties:{name:"Carbidopa/Levodopa/Entacapone", id:"CarbidopaLevodopaEntacaponeDrug"}}, {_id:1480, properties:{name:"Group R+AD Rasagiline + Antidepressant", id:"GroupR+ADRasagiline+AntidepressantDrug"}}, {_id:1481, properties:{name:"Group R Rasagiline", id:"GroupRRasagilineDrug"}}, {_id:1482, properties:{name:"Group AD Anti-PD + Antidepressant", id:"GroupADAntiPD+AntidepressantDrug"}}, {_id:1487, properties:{name:"BEN-2001", id:"BEN2001Drug"}}, {_id:1489, properties:{name:"Intracerebral microinjections", id:"IntracerebralmicroinjectionsDrug"}}, {_id:1494, properties:{name:"Domperidone", id:"DomperidoneDrug"}}, {_id:1496, properties:{name:"placebo", id:"placeboDrug"}}, {_id:1497, properties:{name:"Clonidine", id:"ClonidineDrug"}}, {_id:1500, properties:{name:"Rivastigmine Patch 9.5 cm2", id:"RivastigminePatch9.5cm2Drug"}}, {_id:1504, properties:{name:"Levodopa-carbidopa intestinal gel (LCIG)", id:"LevodopacarbidopaintestinalgelLCIGDrug"}}, {_id:1506, properties:{name:"[18F]MNI-1126", id:"[18F]MNI1126Drug"}}, {_id:1512, properties:{name:"Rasagiline", id:"RasagilineDrug"}}, {_id:1514, properties:{name:"Ubiquinol", id:"UbiquinolDrug"}}, {_id:1520, properties:{name:"ADS-5102", id:"ADS5102Drug"}}, {_id:1528, properties:{name:"BIA 9-1067", id:"BIA91067Drug"}}, {_id:1529, properties:{name:"Levodopa/Carbidopa", id:"LevodopaCarbidopaDrug"}}, {_id:1530, properties:{name:"Levodopa/Benzerazide", id:"LevodopaBenzerazideDrug"}}, {_id:1534, properties:{name:"Febuxostat", id:"FebuxostatDrug"}}, {_id:1535, properties:{name:"Inosine", id:"InosineDrug"}}, {_id:1538, properties:{name:"sumanirole", id:"sumaniroleDrug"}}, {_id:1544, properties:{name:"blood draw", id:"blooddrawDrug"}}, {_id:1547, properties:{name:"Liraglutide", id:"LiraglutideDrug"}}, {_id:1549, properties:{name:"Azilect®", id:"Azilect®Drug"}}, {_id:1553, properties:{name:"ABBV-0805", id:"ABBV0805Drug"}}, {_id:1554, properties:{name:"Placebo ABBV-0805", id:"PlaceboABBV0805Drug"}}, {_id:1560, properties:{name:"rasagiline", id:"rasagilineDrug"}}, {_id:1562, properties:{name:"AFQ056 with L-dopa", id:"AFQ056withLdopaDrug"}}, {_id:1567, properties:{name:"NLY01", id:"NLY01Drug"}}, {_id:1568, properties:{name:"Vehicle", id:"VehicleDrug"}}, {_id:1572, properties:{name:"Ropinirole prolonged release/extended release(PR/XR)", id:"RopiniroleprolongedreleaseextendedreleasePRXRDrug"}}, {_id:1574, properties:{name:"Buspirone", id:"BuspironeDrug"}}, {_id:1576, properties:{name:"Terazosin 5 MG", id:"Terazosin5MGDrug"}}, {_id:1577, properties:{name:"Placebo oral capsule", id:"PlacebooralcapsuleDrug"}}, {_id:1581, properties:{name:"Minzasolmin (UCB0599)", id:"MinzasolminUCB0599Drug"}}, {_id:1584, properties:{name:"Capsaicin", id:"CapsaicinDrug"}}, {_id:1586, properties:{name:"Zonisamide Capsules", id:"ZonisamideCapsulesDrug"}}, {_id:1593, properties:{name:"LY03003( the name of rotigotine)", id:"LY03003thenameofrotigotineDrug"}}, {_id:1600, properties:{name:"DA-9805 45mg", id:"DA980545mgDrug"}}, {_id:1601, properties:{name:"DA-9805 90mg", id:"DA980590mgDrug"}}, {_id:1692, properties:{name:"Venglustat", id:"Venglustat"}}, {_id:2288, properties:{name:"Donepezil", id:"DonepezilDrug"}}, {_id:2290, properties:{name:"Amino acid supplement", id:"AminoacidsupplementDrug"}}, {_id:2292, properties:{name:"tozadenant", id:"tozadenantDrug"}}, {_id:2296, properties:{name:"Pimavanserin", id:"PimavanserinDrug"}}, {_id:2301, properties:{name:"Rasagiline Mesylate", id:"RasagilineMesylateDrug"}}, {_id:2305, properties:{name:"Agomelatine or PIacebo", id:"AgomelatineorPIaceboDrug"}}, {_id:2308, properties:{name:"ROZEREM", id:"ROZEREMDrug"}}, {_id:2309, properties:{name:"Ramelteon", id:"RamelteonDrug"}}, {_id:2312, properties:{name:"Perampanel", id:"PerampanelDrug"}}, {_id:2315, properties:{name:"IPX066 95 mg LD", id:"IPX06695mgLDDrug"}}, {_id:2316, properties:{name:"IPX066 145 mg LD", id:"IPX066145mgLDDrug"}}, {_id:2317, properties:{name:"IPX066 195 mg LD", id:"IPX066195mgLDDrug"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Drug;
UNWIND [{_id:2318, properties:{name:"IPX066 245 mg LD", id:"IPX066245mgLDDrug"}}, {_id:2321, properties:{name:"UB-312", id:"UB312Drug"}}, {_id:2325, properties:{name:"Sargramostim", id:"SargramostimDrug"}}, {_id:2331, properties:{name:"Safinamide", id:"SafinamideDrug"}}, {_id:2335, properties:{name:"LY03003 ( Rotigotine, extended-release microspheres)", id:"LY03003RotigotineextendedreleasemicrospheresDrug"}}, {_id:2336, properties:{name:"Placebo, extended-release microspheres", id:"PlaceboextendedreleasemicrospheresDrug"}}, {_id:2340, properties:{name:"[123I]ß CIT and SPECT imaging", id:"[123I]ßCITandSPECTimagingDrug"}}, {_id:2345, properties:{name:"PK-Merz® 200mg/500ml inj(Amantadine) , Normal saline 500ml inj", id:"PKMerz®200mg500mlinjAmantadineNormalsaline500mlinjDrug"}}, {_id:2347, properties:{name:"Stalevo", id:"StalevoDrug"}}, {_id:2348, properties:{name:"Carbidopa and Levodopa Controlled Release Tablets", id:"CarbidopaandLevodopaControlledReleaseTabletsDrug"}}, {_id:2356, properties:{name:"capsules containing: carbidopa (25 mg), levodopa (100 mg), entacapone (200 mg)", id:"capsulescontaining:carbidopa25mglevodopa100mgentacapone200mgDrug"}}, {_id:2358, properties:{name:"Metabolic Cofactor Supplementation", id:"MetabolicCofactorSupplementationDrug"}}, {_id:2359, properties:{name:"Sorbitol", id:"SorbitolDrug"}}, {_id:2362, properties:{name:"18F-AV-133", id:"18FAV133Drug"}}, {_id:2364, properties:{name:"general anesthesia", id:"generalanesthesiaDrug"}}, {_id:2365, properties:{name:"Conscious sedation", id:"ConscioussedationDrug"}}, {_id:2367, properties:{name:"Memantine", id:"MemantineDrug"}}, {_id:2373, properties:{name:"ioflupane 123I (DATSCAN®)", id:"ioflupane123IDATSCAN®Drug"}}, {_id:2375, properties:{name:"Spheramine (BAY86-5280)", id:"SpheramineBAY865280Drug"}}, {_id:2378, properties:{name:"apomorphine HCl injection", id:"apomorphineHClinjectionDrug"}}, {_id:2385, properties:{name:"CST-2032, matching placebo for CST-2032, CST-107, matching placebo for CST-107", id:"CST2032matchingplaceboforCST2032CST107matchingplaceboforCST107Drug"}}, {_id:2388, properties:{name:"AFQ056", id:"AFQ056Drug"}}, {_id:2393, properties:{name:"Entacapone", id:"EntacaponeDrug"}}, {_id:2395, properties:{name:"Rasagiline 1 mg capsule", id:"Rasagiline1mgcapsuleDrug"}}, {_id:2397, properties:{name:"Pramipexole Extended Release", id:"PramipexoleExtendedReleaseDrug"}}, {_id:2399, properties:{name:"entacapone and carbidopa", id:"entacaponeandcarbidopaDrug"}}, {_id:2400, properties:{name:"Sinemet 200mg/50mg", id:"Sinemet200mg50mgDrug"}}, {_id:2408, properties:{name:"Part 1, JM-010 component Group A", id:"Part1JM010componentGroupADrug"}}, {_id:2409, properties:{name:"Part 1, JM-010 component Group B", id:"Part1JM010componentGroupBDrug"}}, {_id:2410, properties:{name:"Part 1, JM-010 component Group C", id:"Part1JM010componentGroupCDrug"}}, {_id:2411, properties:{name:"Part 1, Placebo Group", id:"Part1PlaceboGroupDrug"}}, {_id:2412, properties:{name:"Part 2, JM-010 combination Group A", id:"Part2JM010combinationGroupADrug"}}, {_id:2413, properties:{name:"Part 2, JM-010 combination Group B", id:"Part2JM010combinationGroupBDrug"}}, {_id:2414, properties:{name:"Part 2, JM-010 component Group C", id:"Part2JM010componentGroupCDrug"}}, {_id:2415, properties:{name:"Part 2, Placebo Group", id:"Part2PlaceboGroupDrug"}}, {_id:2418, properties:{name:"Levodopa/carbidopa solution for SC administration", id:"LevodopacarbidopasolutionforSCadministrationDrug"}}, {_id:2424, properties:{name:"Methylphenidate (MPD)", id:"MethylphenidateMPDDrug"}}, {_id:2426, properties:{name:"G-CSF", id:"GCSFDrug"}}, {_id:2430, properties:{name:"levodopa/carbidopa", id:"levodopacarbidopaDrug"}}, {_id:2431, properties:{name:"entacapone", id:"entacaponeDrug"}}, {_id:2432, properties:{name:"tolcapone", id:"tolcaponeDrug"}}, {_id:2435, properties:{name:"PF-06649751", id:"PF06649751Drug"}}, {_id:2436, properties:{name:"Trimethobenzamide Hydrochloride", id:"TrimethobenzamideHydrochlorideDrug"}}, {_id:2438, properties:{name:"cabergoline", id:"cabergolineDrug"}}, {_id:2439, properties:{name:"controlled-release levodopa / carbidopa", id:"controlledreleaselevodopacarbidopaDrug"}}, {_id:2442, properties:{name:"18F-Fluoro-L-dopa", id:"18FFluoroLdopaDrug"}}, {_id:2443, properties:{name:"O-15 Water", id:"O15WaterDrug"}}, {_id:2445, properties:{name:"PF-06412562", id:"PF06412562Drug"}}, {_id:2451, properties:{name:"Sinemet® 100/25", id:"Sinemet®10025Drug"}}, {_id:2455, properties:{name:"Apomorphine", id:"ApomorphineDrug"}}, {_id:2461, properties:{name:"VY-AADC02", id:"VYAADC02Drug"}}, {_id:2463, properties:{name:"NPT520-34 (125 mg)", id:"NPT52034125mgDrug"}}, {_id:2464, properties:{name:"Placebos (125 mg)", id:"Placebos125mgDrug"}}, {_id:2466, properties:{name:"Quetiapine", id:"QuetiapineDrug"}}, {_id:2468, properties:{name:"LY03003", id:"LY03003Drug"}}, {_id:2478, properties:{name:"Rivastigmine Transdermal System", id:"RivastigmineTransdermalSystemDrug"}}, {_id:2480, properties:{name:"IRX4204", id:"IRX4204Drug"}}, {_id:2485, properties:{name:"AVP-923-45", id:"AVP92345Drug"}}, {_id:2488, properties:{name:"Liatermin (r-metHuGDNF)", id:"LiaterminrmetHuGDNFDrug"}}, {_id:2494, properties:{name:"Erythromycin", id:"ErythromycinDrug"}}, {_id:2499, properties:{name:"Deferiprone 20mg", id:"Deferiprone20mgDrug"}}, {_id:2500, properties:{name:"Deferiprone 30mg", id:"Deferiprone30mgDrug"}}, {_id:2503, properties:{name:"Lovastatin", id:"LovastatinDrug"}}, {_id:2506, properties:{name:"Cilostazol", id:"CilostazolDrug"}}, {_id:2507, properties:{name:"Standard treatment", id:"StandardtreatmentDrug"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Drug;
UNWIND [{_id:562, properties:{name:"SNpc", id:"SNpc"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BrainRegion;
UNWIND [{_id:8, properties:{name:"Dopamine", id:"Dopamine"}}, {_id:42, properties:{name:"Protein", id:"Protein"}}, {_id:44, properties:{name:"8OHdG", id:"8OHdG"}}, {_id:45, properties:{name:"ROS", id:"ROS"}}, {_id:46, properties:{name:"NADPH", id:"NADPH"}}, {_id:54, properties:{name:"UricAcidCompound", id:"UricAcidCompound"}}, {_id:89, properties:{name:"IronInBrain", id:"IronInBrain"}}, {_id:93, properties:{name:"Neuromelanin", id:"Neuromelanin"}}, {_id:96, properties:{name:"123IMIBG", id:"123IMIBG"}}, {_id:97, properties:{name:"BetaAmyloid", id:"BetaAmyloid"}}, {_id:98, properties:{name:"Tau", id:"Tau"}}, {_id:110, properties:{name:"SPECTTracers", id:"SPECTTracers"}}, {_id:120, properties:{name:"F-DOPA", id:"F-DOPA"}}, {_id:121, properties:{name:"dopamine", id:"dopamine"}}, {_id:125, properties:{name:"F-DOPACompound", id:"F-DOPACompound"}}, {_id:135, properties:{name:"PETTracer", id:"PETTracer"}}, {_id:143, properties:{name:"Iron", id:"Iron"}}, {_id:152, properties:{name:"MIBGCompound", id:"MIBGCompound"}}, {_id:153, properties:{name:"18F-FlorzolotauCompound", id:"18F-FlorzolotauCompound"}}, {_id:154, properties:{name:"TauPETTracer", id:"TauPETTracer"}}, {_id:191, properties:{name:"NeurofilamentLight", id:"NeurofilamentLight"}}, {_id:194, properties:{name:"ExtracellularVesicles", id:"ExtracellularVesicles"}}, {_id:233, properties:{name:"ApolipoproteinA1", id:"ApolipoproteinA1"}}, {_id:234, properties:{name:"PlasmaApoe", id:"PlasmaApoe"}}, {_id:235, properties:{name:"BetaAmyloidPeptide", id:"BetaAmyloidPeptide"}}, {_id:236, properties:{name:"UricAcid", id:"UricAcid"}}, {_id:352, properties:{name:"PETTracers", id:"PETTracers"}}, {_id:421, properties:{name:"Exosome_like_Microvesicles", id:"Exosome_like_Microvesicles"}}, {_id:422, properties:{name:"Cerebrospinal_Fluid", id:"Cerebrospinal_Fluid"}}, {_id:466, properties:{name:"DNL151", id:"DNL151"}}, {_id:467, properties:{name:"BIIB122", id:"BIIB122"}}, {_id:487, properties:{name:"AICARCompound", id:"AICARCompound"}}, {_id:527, properties:{name:"GNE7915Compound", id:"GNE7915Compound"}}, {_id:528, properties:{name:"GNE0877Compound", id:"GNE0877Compound"}}, {_id:529, properties:{name:"PF475Compound", id:"PF475Compound"}}, {_id:530, properties:{name:"PF360Compound", id:"PF360Compound"}}, {_id:531, properties:{name:"MLi2Compound", id:"MLi2Compound"}}, {_id:532, properties:{name:"DNL201Compound", id:"DNL201Compound"}}, {_id:533, properties:{name:"DNL151Compound", id:"DNL151Compound"}}, {_id:534, properties:{name:"BIIB122Compound", id:"BIIB122Compound"}}, {_id:535, properties:{name:"RebastinibCompound", id:"RebastinibCompound"}}, {_id:536, properties:{name:"PonatinibCompound", id:"PonatinibCompound"}}, {_id:537, properties:{name:"GZD824Compound", id:"GZD824Compound"}}, {_id:538, properties:{name:"AdoCblCompound", id:"AdoCblCompound"}}, {_id:539, properties:{name:"AdoCbl", id:"AdoCbl"}}, {_id:554, properties:{name:"StapledPeptide", id:"StapledPeptide"}}, {_id:555, properties:{name:"ASOInhibitorBIIB094", id:"ASOInhibitorBIIB094"}}, {_id:556, properties:{name:"DNL151/BIIB122", id:"DNL151/BIIB122"}}, {_id:563, properties:{name:"DA", id:"DA"}}, {_id:565, properties:{name:"BIIB094Compound", id:"BIIB094Compound"}}, {_id:566, properties:{name:"AICArCompound", id:"AICArCompound"}}, {_id:567, properties:{name:"PROTACsCompound", id:"PROTACsCompound"}}, {_id:572, properties:{name:"PROTACCompound", id:"PROTACCompound"}}, {_id:579, properties:{name:"PROTACdegraderCompound", id:"PROTACdegraderCompound"}}, {_id:611, properties:{name:"MLi-2Compound", id:"MLi-2Compound"}}, {_id:612, properties:{name:"VitaminB12", id:"VitaminB12"}}, {_id:613, properties:{name:"Nanobodies", id:"Nanobodies"}}, {_id:666, properties:{name:"Apomorphine", id:"Apomorphine"}}, {_id:687, properties:{name:"Ldopa", id:"Ldopa"}}, {_id:688, properties:{name:"Pramipexole", id:"Pramipexole"}}, {_id:711, properties:{name:"LevodopaDrug", id:"LevodopaDrug"}}, {_id:715, properties:{name:"Droxidopa", id:"Droxidopa"}}, {_id:727, properties:{name:"Macrogol", id:"Macrogol"}}, {_id:728, properties:{name:"Lubiprostone", id:"Lubiprostone"}}, {_id:729, properties:{name:"Nizatidine", id:"Nizatidine"}}, {_id:737, properties:{name:"Levodopa", id:"Levodopa"}}, {_id:738, properties:{name:"DopamineAgonists", id:"DopamineAgonists"}}, {_id:742, properties:{name:"Ropinirole", id:"Ropinirole"}}, {_id:743, properties:{name:"Rotigotine", id:"Rotigotine"}}, {_id:744, properties:{name:"DopamineBlockers", id:"DopamineBlockers"}}, {_id:745, properties:{name:"AnticholinergicAgents", id:"AnticholinergicAgents"}}, {_id:746, properties:{name:"Antihistamines", id:"Antihistamines"}}, {_id:749, properties:{name:"SerotoninReuptakeInhibitors", id:"SerotoninReuptakeInhibitors"}}, {_id:750, properties:{name:"TricyclicAntidepressants", id:"TricyclicAntidepressants"}}, {_id:754, properties:{name:"Clozazepam", id:"Clozazepam"}}, {_id:755, properties:{name:"Donepezil", id:"Donepezil"}}, {_id:771, properties:{name:"AlphaLipoicAcid", id:"AlphaLipoicAcid"}}, {_id:772, properties:{name:"GinkgoBiloba", id:"GinkgoBiloba"}}, {_id:773, properties:{name:"Pilocarpine", id:"Pilocarpine"}}, {_id:776, properties:{name:"Zinc", id:"Zinc"}}, {_id:811, properties:{name:"LevodopaCarbidopaEnteralSuspension", id:"LevodopaCarbidopaEnteralSuspension"}}, {_id:897, properties:{name:"Probiotics", id:"Probiotics"}}, {_id:963, properties:{name:"WerleCompound", id:"WerleCompound"}}, {_id:968, properties:{name:"MoclobemidaCompound", id:"MoclobemidaCompound"}}, {_id:971, properties:{name:"LiCompound", id:"LiCompound"}}, {_id:976, properties:{name:"SabehCompound", id:"SabehCompound"}}, {_id:981, properties:{name:"AyalaCompound", id:"AyalaCompound"}}, {_id:986, properties:{name:"GabilondoCompound", id:"GabilondoCompound"}}, {_id:990, properties:{name:"PerezLloretCompound", id:"PerezLloretCompound"}}, {_id:993, properties:{name:"OgawaCompound", id:"OgawaCompound"}}, {_id:1606, properties:{name:"GSLs", id:"GSLs"}}, {_id:1607, properties:{name:"BMP", id:"BMP"}}, {_id:1653, properties:{name:"KinaseInhibitor", id:"KinaseInhibitor"}}, {_id:1670, properties:{name:"Neurotoxins", id:"Neurotoxins"}}, {_id:1690, properties:{name:"Glucosylsphingosine", id:"Glucosylsphingosine"}}, {_id:1691, properties:{name:"Glucocerebroside", id:"Glucocerebroside"}}, {_id:1707, properties:{name:"Endotoxins", id:"Endotoxins"}}, {_id:1708, properties:{name:"AntiInflammatoryShortChainFattyAcids", id:"AntiInflammatoryShortChainFattyAcids"}}, {_id:1730, properties:{name:"BMPs", id:"BMPs"}}, {_id:1733, properties:{name:"Glucosylceramide", id:"Glucosylceramide"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Compound;
UNWIND [{_id:1739, properties:{name:"Anle138b", id:"Anle138b"}}, {_id:1740, properties:{name:"NPT200-11", id:"NPT200-11"}}, {_id:1741, properties:{name:"Inosine", id:"Inosine"}}, {_id:1742, properties:{name:"Ubidecarenone", id:"Ubidecarenone"}}, {_id:1743, properties:{name:"Ursodeoxycholic_Acid", id:"Ursodeoxycholic_Acid"}}, {_id:1744, properties:{name:"Monoclonal_Antibodies", id:"Monoclonal_Antibodies"}}, {_id:1745, properties:{name:"Minocycline", id:"Minocycline"}}, {_id:1746, properties:{name:"Pioglitazone", id:"Pioglitazone"}}, {_id:1747, properties:{name:"Sargramostim", id:"Sargramostim"}}, {_id:1748, properties:{name:"Azathioprine", id:"Azathioprine"}}, {_id:1856, properties:{name:"MPTP", id:"MPTP"}}, {_id:1871, properties:{name:"Immunosuppressants", id:"Immunosuppressants"}}, {_id:1884, properties:{name:"BloodMtDNA", id:"BloodMtDNA"}}, {_id:1885, properties:{name:"UrsodeoxycholicAcid", id:"UrsodeoxycholicAcid"}}, {_id:1889, properties:{name:"CinpanemabDrug", id:"CinpanemabDrug"}}, {_id:1890, properties:{name:"PrasinezumabDrug", id:"PrasinezumabDrug"}}, {_id:1891, properties:{name:"PioglitazoneDrug", id:"PioglitazoneDrug"}}, {_id:1892, properties:{name:"CreatineDrug", id:"CreatineDrug"}}, {_id:1893, properties:{name:"MinocyclineDrug", id:"MinocyclineDrug"}}, {_id:1894, properties:{name:"SargramostimDrug", id:"SargramostimDrug"}}, {_id:1895, properties:{name:"AzathioprineDrug", id:"AzathioprineDrug"}}, {_id:1907, properties:{name:"UnwantedProteins", id:"UnwantedProteins"}}, {_id:1909, properties:{name:"HeatShockProteins", id:"HeatShockProteins"}}, {_id:1915, properties:{name:"AmyloidFibril", id:"AmyloidFibril"}}, {_id:1924, properties:{name:"ThioflavinT", id:"ThioflavinT"}}, {_id:1925, properties:{name:"Proteins", id:"Proteins"}}, {_id:1936, properties:{name:"Lecanemab", id:"Lecanemab"}}, {_id:1937, properties:{name:"Donanemab", id:"Donanemab"}}, {_id:1946, properties:{name:"Thyroxine", id:"Thyroxine"}}, {_id:1947, properties:{name:"Retinol", id:"Retinol"}}, {_id:1948, properties:{name:"Patisiran", id:"Patisiran"}}, {_id:1949, properties:{name:"Intersen", id:"Intersen"}}, {_id:1989, properties:{name:"DonanemabDrug", id:"DonanemabDrug"}}, {_id:1990, properties:{name:"LecanemabDrug", id:"LecanemabDrug"}}, {_id:1991, properties:{name:"Cinpanemab", id:"Cinpanemab"}}, {_id:1992, properties:{name:"Prasinezumab", id:"Prasinezumab"}}, {_id:1993, properties:{name:"Tafamidis", id:"Tafamidis"}}, {_id:2090, properties:{name:"AmbroxolMolecule", id:"AmbroxolMolecule"}}, {_id:2091, properties:{name:"VenglustatInhibitor", id:"VenglustatInhibitor"}}, {_id:2096, properties:{name:"Ambroxol", id:"Ambroxol"}}, {_id:2097, properties:{name:"Cerezyme", id:"Cerezyme"}}, {_id:2098, properties:{name:"LTI291", id:"LTI291"}}, {_id:2099, properties:{name:"NL6574", id:"NL6574"}}, {_id:2100, properties:{name:"Venglustat", id:"Venglustat"}}, {_id:2101, properties:{name:"BIA286156", id:"BIA286156"}}, {_id:2102, properties:{name:"LY3884961", id:"LY3884961"}}, {_id:2104, properties:{name:"GLP1Agonist", id:"GLP1Agonist"}}, {_id:2106, properties:{name:"BIIB094", id:"BIIB094"}}, {_id:2107, properties:{name:"DNL201", id:"DNL201"}}, {_id:2207, properties:{name:"VitaminK2", id:"VitaminK2"}}, {_id:2209, properties:{name:"AmbroxolDrug", id:"AmbroxolDrug"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Compound;
UNWIND [{_id:660, properties:{name:"Depression", id:"Depression"}}, {_id:661, properties:{name:"Anxiety", id:"Anxiety"}}, {_id:662, properties:{name:"Apathy", id:"Apathy"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Neuropsychiatric;
UNWIND [{_id:362, properties:{name:"Neuroimaging", id:"Neuroimaging"}}, {_id:1920, properties:{name:"Clinicopathology", id:"Clinicopathology"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:FieldOfStudy;
UNWIND [{_id:623, properties:{name:"EmailNode", id:"EmailNode"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ContactInformation;
UNWIND [{_id:1662, properties:{name:"FetalMidbrainNeurons", id:"FetalMidbrainNeurons"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Cells;
UNWIND [{_id:1805, properties:{name:"16q11.2", id:"16q11.2"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ChromosomeRegion;
UNWIND [{_id:22, properties:{name:"OrexinGene", id:"OrexinGene"}}, {_id:28, properties:{name:"GFAPGene", id:"GFAPGene"}}, {_id:30, properties:{name:"LRRK2", id:"LRRK2Gene"}}, {_id:31, properties:{name:"SNCAgene", id:"SNCAgene"}}, {_id:52, properties:{name:"PARK7", id:"PARK7Gene"}}, {_id:63, properties:{name:"AlphaSynucleinGene", id:"AlphaSynucleinGene"}}, {_id:118, properties:{name:"AADC", id:"AADC"}}, {_id:122, properties:{name:"DOPAGene", id:"DOPAGene"}}, {_id:128, properties:{name:"VMAT2Gene", id:"VMAT2Gene"}}, {_id:131, properties:{name:"VachtGene", id:"VachtGene"}}, {_id:150, properties:{name:"TSPOGene", id:"TSPOGene"}}, {_id:158, properties:{name:"PRKN", id:"PRKNGene"}}, {_id:159, properties:{name:"VPS35Gene", id:"VPS35Gene"}}, {_id:160, properties:{name:"CHCHD2Gene", id:"CHCHD2Gene"}}, {_id:161, properties:{name:"PSAPGene", id:"PSAPGene"}}, {_id:162, properties:{name:"DJ1Gene", id:"DJ1Gene"}}, {_id:163, properties:{name:"FBXO7Gene", id:"FBXO7Gene"}}, {_id:164, properties:{name:"SYNJ1Gene", id:"SYNJ1Gene"}}, {_id:165, properties:{name:"EIF4G1Gene", id:"EIF4G1Gene"}}, {_id:166, properties:{name:"GIGYF2Gene", id:"GIGYF2Gene"}}, {_id:167, properties:{name:"HTRA2", id:"HTRA2Gene"}}, {_id:168, properties:{name:"PLA2G6Gene", id:"PLA2G6Gene"}}, {_id:169, properties:{name:"DNAJC6Gene", id:"DNAJC6Gene"}}, {_id:170, properties:{name:"ATP13A2Gene", id:"ATP13A2Gene"}}, {_id:171, properties:{name:"DNAJC13Gene", id:"DNAJC13Gene"}}, {_id:172, properties:{name:"GBA1Gene", id:"GBA1Gene"}}, {_id:173, properties:{name:"PINK1", id:"PINK1Gene"}}, {_id:174, properties:{name:"UCH-L1Gene", id:"UCH-L1Gene"}}, {_id:176, properties:{name:"UCHL1", id:"UCHL1Gene"}}, {_id:177, properties:{name:"GBAGene", id:"GBAGene"}}, {_id:179, properties:{name:"GranulinPrecursorGene", id:"GranulinPrecursorGene"}}, {_id:180, properties:{name:"ComplementC3Gene", id:"ComplementC3Gene"}}, {_id:183, properties:{name:"ALCAMGene", id:"ALCAMGene"}}, {_id:184, properties:{name:"Contactin1Gene", id:"Contactin1Gene"}}, {_id:185, properties:{name:"CD36Gene", id:"CD36Gene"}}, {_id:186, properties:{name:"DUS3Gene", id:"DUS3Gene"}}, {_id:187, properties:{name:"NEGR1Gene", id:"NEGR1Gene"}}, {_id:188, properties:{name:"Notch1Gene", id:"Notch1Gene"}}, {_id:189, properties:{name:"TrkBGene", id:"TrkBGene"}}, {_id:190, properties:{name:"BTKGene", id:"BTKGene"}}, {_id:192, properties:{name:"GBA", id:"GBA"}}, {_id:193, properties:{name:"APOE", id:"APOE"}}, {_id:237, properties:{name:"JadhavGene", id:"JadhavGene"}}, {_id:247, properties:{name:"LinGene", id:"LinGene"}}, {_id:249, properties:{name:"LiGene", id:"LiGene"}}, {_id:251, properties:{name:"ZhangGene", id:"ZhangGene"}}, {_id:255, properties:{name:"JiangGene", id:"JiangGene"}}, {_id:257, properties:{name:"TangGene", id:"TangGene"}}, {_id:264, properties:{name:"WuGene", id:"WuGene"}}, {_id:265, properties:{name:"WangGene", id:"WangGene"}}, {_id:300, properties:{name:"PinedaPardoGene", id:"PinedaPardoGene"}}, {_id:301, properties:{name:"SánchezFerroGene", id:"SánchezFerroGene"}}, {_id:302, properties:{name:"MonjeGene", id:"MonjeGene"}}, {_id:303, properties:{name:"ObesoGene", id:"ObesoGene"}}, {_id:304, properties:{name:"deNataleGene", id:"deNataleGene"}}, {_id:305, properties:{name:"WilsonGene", id:"WilsonGene"}}, {_id:306, properties:{name:"PolitisGene", id:"PolitisGene"}}, {_id:307, properties:{name:"MailletGene", id:"MailletGene"}}, {_id:308, properties:{name:"MétéreauGene", id:"MétéreauGene"}}, {_id:309, properties:{name:"TremblayGene", id:"TremblayGene"}}, {_id:310, properties:{name:"FavreGene", id:"FavreGene"}}, {_id:311, properties:{name:"KlingerGene", id:"KlingerGene"}}, {_id:312, properties:{name:"LhomméeGene", id:"LhomméeGene"}}, {_id:313, properties:{name:"LeBarsGene", id:"LeBarsGene"}}, {_id:314, properties:{name:"CastriotoGene", id:"CastriotoGene"}}, {_id:315, properties:{name:"PrangeGene", id:"PrangeGene"}}, {_id:316, properties:{name:"SgambatoGene", id:"SgambatoGene"}}, {_id:317, properties:{name:"LanciniGene", id:"LanciniGene"}}, {_id:318, properties:{name:"BartlGene", id:"BartlGene"}}, {_id:319, properties:{name:"HaagGene", id:"HaagGene"}}, {_id:320, properties:{name:"RühlingGene", id:"RühlingGene"}}, {_id:321, properties:{name:"AshtonGene", id:"AshtonGene"}}, {_id:322, properties:{name:"ZetterbergGene", id:"ZetterbergGene"}}, {_id:323, properties:{name:"DüzelGene", id:"DüzelGene"}}, {_id:324, properties:{name:"HämmererGene", id:"HämmererGene"}}, {_id:325, properties:{name:"BettsGene", id:"BettsGene"}}, {_id:326, properties:{name:"MelesGene", id:"MelesGene"}}, {_id:327, properties:{name:"TeuneGene", id:"TeuneGene"}}, {_id:328, properties:{name:"deJongGene", id:"deJongGene"}}, {_id:329, properties:{name:"DierckxGene", id:"DierckxGene"}}, {_id:330, properties:{name:"LeendersGene", id:"LeendersGene"}}, {_id:367, properties:{name:"MuleiroAlvarezGene", id:"MuleiroAlvarezGene"}}, {_id:368, properties:{name:"CanoHerreraGene", id:"CanoHerreraGene"}}, {_id:369, properties:{name:"OsorioMartinezGene", id:"OsorioMartinezGene"}}, {_id:370, properties:{name:"VegaGonzalesPortilloGene", id:"VegaGonzalesPortilloGene"}}, {_id:371, properties:{name:"MonroyGene", id:"MonroyGene"}}, {_id:372, properties:{name:"MurguiondoPerezGene", id:"MurguiondoPerezGene"}}, {_id:373, properties:{name:"TorresRiosGene", id:"TorresRiosGene"}}, {_id:374, properties:{name:"vanTienhovenGene", id:"vanTienhovenGene"}}, {_id:375, properties:{name:"GaribaldiBernotGene", id:"GaribaldiBernotGene"}}, {_id:376, properties:{name:"EsparzaSalazarGene", id:"EsparzaSalazarGene"}}, {_id:377, properties:{name:"QuattroneGene", id:"QuattroneGene"}}, {_id:378, properties:{name:"SaricaGene", id:"SaricaGene"}}, {_id:379, properties:{name:"BuonocoreGene", id:"BuonocoreGene"}}, {_id:380, properties:{name:"MorelliGene", id:"MorelliGene"}}, {_id:381, properties:{name:"BiancoGene", id:"BiancoGene"}}, {_id:382, properties:{name:"CalominoGene", id:"CalominoGene"}}, {_id:383, properties:{name:"AracriGene", id:"AracriGene"}}, {_id:384, properties:{name:"DeMariaGene", id:"DeMariaGene"}}, {_id:385, properties:{name:"VescioGene", id:"VescioGene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Gene;
UNWIND [{_id:386, properties:{name:"VaccaroGene", id:"VaccaroGene"}}, {_id:387, properties:{name:"ProsaposinGene", id:"ProsaposinGene"}}, {_id:388, properties:{name:"SaposinDDomainOfProsaposinGene", id:"SaposinDDomainOfProsaposinGene"}}, {_id:391, properties:{name:"PARKINGene", id:"PARKINGene"}}, {_id:392, properties:{name:"PARK2Gene", id:"PARK2Gene"}}, {_id:393, properties:{name:"SNCA", id:"SNCA"}}, {_id:394, properties:{name:"VPS35", id:"VPS35"}}, {_id:416, properties:{name:"MicroRNA132", id:"MicroRNA132"}}, {_id:417, properties:{name:"Nurr1", id:"Nurr1"}}, {_id:418, properties:{name:"MiR7_1_5p", id:"MiR7_1_5p"}}, {_id:419, properties:{name:"MiR223_3p", id:"MiR223_3p"}}, {_id:420, properties:{name:"Hsa_MiR144_3p", id:"Hsa_MiR144_3p"}}, {_id:423, properties:{name:"SHLP2Gene", id:"SHLP2Gene"}}, {_id:437, properties:{name:"Rab29Gene", id:"Rab29Gene"}}, {_id:446, properties:{name:"R1441GGene", id:"R1441GGene"}}, {_id:447, properties:{name:"Y1699CGene", id:"Y1699CGene"}}, {_id:448, properties:{name:"G2019SGene", id:"G2019SGene"}}, {_id:468, properties:{name:"EndoAGene", id:"EndoAGene"}}, {_id:469, properties:{name:"AuxilinGene", id:"AuxilinGene"}}, {_id:470, properties:{name:"AP2M1Gene", id:"AP2M1Gene"}}, {_id:476, properties:{name:"ArfGAP1Gene", id:"ArfGAP1Gene"}}, {_id:477, properties:{name:"RSG2Gene", id:"RSG2Gene"}}, {_id:502, properties:{name:"Rab29", id:"Rab29"}}, {_id:503, properties:{name:"Rab32", id:"Rab32"}}, {_id:505, properties:{name:"Rab10", id:"Rab10"}}, {_id:506, properties:{name:"Rab12", id:"Rab12"}}, {_id:547, properties:{name:"AUF1Gene", id:"AUF1Gene"}}, {_id:558, properties:{name:"ATICGene", id:"ATICGene"}}, {_id:583, properties:{name:"RAB32Gene", id:"RAB32Gene"}}, {_id:586, properties:{name:"ArfGAP1", id:"ArfGAP1"}}, {_id:587, properties:{name:"RGS2", id:"RGS2"}}, {_id:588, properties:{name:"ARHGEF7", id:"ARHGEF7"}}, {_id:589, properties:{name:"CHIP", id:"CHIP"}}, {_id:590, properties:{name:"WSB1", id:"WSB1"}}, {_id:591, properties:{name:"TRIM1", id:"TRIM1"}}, {_id:595, properties:{name:"DNAJC6", id:"DNAJC6"}}, {_id:596, properties:{name:"SYNJ1", id:"SYNJ1"}}, {_id:676, properties:{name:"APOE gene", id:"APOE gene"}}, {_id:681, properties:{name:"ANKK1Gene", id:"ANKK1Gene"}}, {_id:682, properties:{name:"CCKGene", id:"CCKGene"}}, {_id:683, properties:{name:"CCKRGene", id:"CCKRGene"}}, {_id:684, properties:{name:"DATGene", id:"DATGene"}}, {_id:689, properties:{name:"BIRC5Gene", id:"BIRC5Gene"}}, {_id:691, properties:{name:"SurvivinGene", id:"SurvivinGene"}}, {_id:692, properties:{name:"IL6Gene", id:"IL6Gene"}}, {_id:694, properties:{name:"GPX1Gene", id:"GPX1Gene"}}, {_id:710, properties:{name:"DopamineAgonistGene", id:"DopamineAgonistGene"}}, {_id:821, properties:{name:"CarrozzinoGene", id:"CarrozzinoGene"}}, {_id:823, properties:{name:"FasanoGene", id:"FasanoGene"}}, {_id:827, properties:{name:"CerriGene", id:"CerriGene"}}, {_id:832, properties:{name:"ChoiGene", id:"ChoiGene"}}, {_id:891, properties:{name:"JankovicGene", id:"JankovicGene"}}, {_id:925, properties:{name:"LeWittGene", id:"LeWittGene"}}, {_id:926, properties:{name:"ChaudhuriGene", id:"ChaudhuriGene"}}, {_id:927, properties:{name:"MaciasGarciaGene", id:"MaciasGarciaGene"}}, {_id:928, properties:{name:"MailankodyGene", id:"MailankodyGene"}}, {_id:929, properties:{name:"MakGene", id:"MakGene"}}, {_id:930, properties:{name:"WongGene", id:"WongGene"}}, {_id:931, properties:{name:"HuiChanGene", id:"HuiChanGene"}}, {_id:932, properties:{name:"MarsiliGene", id:"MarsiliGene"}}, {_id:933, properties:{name:"DuqueGene", id:"DuqueGene"}}, {_id:934, properties:{name:"SobreroGene", id:"SobreroGene"}}, {_id:935, properties:{name:"PremoliGene", id:"PremoliGene"}}, {_id:936, properties:{name:"DwivediGene", id:"DwivediGene"}}, {_id:937, properties:{name:"EspayGene", id:"EspayGene"}}, {_id:938, properties:{name:"MerolaGene", id:"MerolaGene"}}, {_id:939, properties:{name:"MeleGene", id:"MeleGene"}}, {_id:940, properties:{name:"VanGene", id:"VanGene"}}, {_id:941, properties:{name:"HolroydLeducGene", id:"HolroydLeducGene"}}, {_id:942, properties:{name:"IsmailGene", id:"IsmailGene"}}, {_id:943, properties:{name:"PringsheimGene", id:"PringsheimGene"}}, {_id:944, properties:{name:"GoodarziGene", id:"GoodarziGene"}}, {_id:945, properties:{name:"MenozziGene", id:"MenozziGene"}}, {_id:946, properties:{name:"MacnaughtanGene", id:"MacnaughtanGene"}}, {_id:947, properties:{name:"SchapiraGene", id:"SchapiraGene"}}, {_id:948, properties:{name:"MizrahiKligerGene", id:"MizrahiKligerGene"}}, {_id:949, properties:{name:"FeldmannGene", id:"FeldmannGene"}}, {_id:950, properties:{name:"KuhnGene", id:"KuhnGene"}}, {_id:951, properties:{name:"BergmanGene", id:"BergmanGene"}}, {_id:952, properties:{name:"MorleyGene", id:"MorleyGene"}}, {_id:953, properties:{name:"DudaGene", id:"DudaGene"}}, {_id:961, properties:{name:"PraetnerGene", id:"PraetnerGene"}}, {_id:966, properties:{name:"KeckGene", id:"KeckGene"}}, {_id:969, properties:{name:"QiGene", id:"QiGene"}}, {_id:974, properties:{name:"RanaGene", id:"RanaGene"}}, {_id:988, properties:{name:"RossiGene", id:"RossiGene"}}, {_id:991, properties:{name:"SakakibaraGene", id:"SakakibaraGene"}}, {_id:998, properties:{name:"ScheperjansGene", id:"ScheperjansGene"}}, {_id:999, properties:{name:"PekkonenGene", id:"PekkonenGene"}}, {_id:1000, properties:{name:"KaakkolaGene", id:"KaakkolaGene"}}, {_id:1001, properties:{name:"AuvinenGene", id:"AuvinenGene"}}, {_id:1002, properties:{name:"SharmaGene", id:"SharmaGene"}}, {_id:1003, properties:{name:"AwasthiGene", id:"AwasthiGene"}}, {_id:1004, properties:{name:"SinghGene", id:"SinghGene"}}, {_id:1005, properties:{name:"SimonGene", id:"SimonGene"}}, {_id:1006, properties:{name:"TannerGene", id:"TannerGene"}}, {_id:1007, properties:{name:"BrundinGene", id:"BrundinGene"}}, {_id:1030, properties:{name:"PellecchiaGene", id:"PellecchiaGene"}}, {_id:1040, properties:{name:"XiaoGene", id:"XiaoGene"}}, {_id:1042, properties:{name:"LeGene", id:"LeGene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Gene;
UNWIND [{_id:1045, properties:{name:"NDUFC2-KCTD14", id:"NDUFC2KCTD14Gene"}}, {_id:1046, properties:{name:"PPIF", id:"PPIFGene"}}, {_id:1047, properties:{name:"TRAP1", id:"TRAP1Gene"}}, {_id:1048, properties:{name:"PSMD14", id:"PSMD14Gene"}}, {_id:1049, properties:{name:"TUBA1B", id:"TUBA1BGene"}}, {_id:1050, properties:{name:"TUBB3", id:"TUBB3Gene"}}, {_id:1051, properties:{name:"TUBB4A", id:"TUBB4AGene"}}, {_id:1052, properties:{name:"TUBB4B", id:"TUBB4BGene"}}, {_id:1053, properties:{name:"ATP5PD", id:"ATP5PDGene"}}, {_id:1054, properties:{name:"cytochrome", id:"cytochromeGene"}}, {_id:1055, properties:{name:"UQCR11", id:"UQCR11Gene"}}, {_id:1056, properties:{name:"ADRM1", id:"ADRM1Gene"}}, {_id:1057, properties:{name:"ADCY5", id:"ADCY5Gene"}}, {_id:1058, properties:{name:"TUBA3E", id:"TUBA3EGene"}}, {_id:1059, properties:{name:"TUBA3D", id:"TUBA3DGene"}}, {_id:1060, properties:{name:"UBE2J2", id:"UBE2J2Gene"}}, {_id:1061, properties:{name:"COX6B2", id:"COX6B2Gene"}}, {_id:1062, properties:{name:"NDUFA11", id:"NDUFA11Gene"}}, {_id:1063, properties:{name:"COX4I1", id:"COX4I1Gene"}}, {_id:1064, properties:{name:"COX5B", id:"COX5BGene"}}, {_id:1065, properties:{name:"COX6A1", id:"COX6A1Gene"}}, {_id:1066, properties:{name:"COX6A2", id:"COX6A2Gene"}}, {_id:1067, properties:{name:"COX6B1", id:"COX6B1Gene"}}, {_id:1068, properties:{name:"COX6C", id:"COX6CGene"}}, {_id:1069, properties:{name:"COX7A1", id:"COX7A1Gene"}}, {_id:1070, properties:{name:"COX7A2", id:"COX7A2Gene"}}, {_id:1071, properties:{name:"COX7B", id:"COX7BGene"}}, {_id:1072, properties:{name:"ADORA2A", id:"ADORA2AGene"}}, {_id:1073, properties:{name:"COX7C", id:"COX7CGene"}}, {_id:1074, properties:{name:"COX8A", id:"COX8AGene"}}, {_id:1075, properties:{name:"PSMA8", id:"PSMA8Gene"}}, {_id:1076, properties:{name:"KLC3", id:"KLC3Gene"}}, {_id:1077, properties:{name:"CYC1", id:"CYC1Gene"}}, {_id:1078, properties:{name:"DAXX", id:"DAXXGene"}}, {_id:1079, properties:{name:"CALML6", id:"CALML6Gene"}}, {_id:1080, properties:{name:"DDIT3", id:"DDIT3Gene"}}, {_id:1081, properties:{name:"COX7B2", id:"COX7B2Gene"}}, {_id:1082, properties:{name:"DRD1", id:"DRD1Gene"}}, {_id:1083, properties:{name:"DRD2", id:"DRD2Gene"}}, {_id:1084, properties:{name:"DUSP1", id:"DUSP1Gene"}}, {_id:1085, properties:{name:"EIF2S1", id:"EIF2S1Gene"}}, {_id:1086, properties:{name:"SLC39A11", id:"SLC39A11Gene"}}, {_id:1087, properties:{name:"TUBB", id:"TUBBGene"}}, {_id:1088, properties:{name:"ERN1", id:"ERN1Gene"}}, {_id:1089, properties:{name:"SLC39A12", id:"SLC39A12Gene"}}, {_id:1090, properties:{name:"ATF6", id:"ATF6Gene"}}, {_id:1091, properties:{name:"SLC39A14", id:"SLC39A14Gene"}}, {_id:1092, properties:{name:"SLC39A6", id:"SLC39A6Gene"}}, {_id:1093, properties:{name:"TXN2", id:"TXN2Gene"}}, {_id:1094, properties:{name:"TUBB8B", id:"TUBB8BGene"}}, {_id:1095, properties:{name:"UQCRQ", id:"UQCRQGene"}}, {_id:1096, properties:{name:"SLC39A1", id:"SLC39A1Gene"}}, {_id:1097, properties:{name:"GNAI1", id:"GNAI1Gene"}}, {_id:1098, properties:{name:"GNAI2", id:"GNAI2Gene"}}, {_id:1099, properties:{name:"GNAI3", id:"GNAI3Gene"}}, {_id:1100, properties:{name:"GNAL", id:"GNALGene"}}, {_id:1101, properties:{name:"GNAS", id:"GNASGene"}}, {_id:1102, properties:{name:"SLC39A5", id:"SLC39A5Gene"}}, {_id:1103, properties:{name:"GPR37", id:"GPR37Gene"}}, {_id:1104, properties:{name:"SLC25A4", id:"SLC25A4Gene"}}, {_id:1105, properties:{name:"SLC25A5", id:"SLC25A5Gene"}}, {_id:1106, properties:{name:"SLC25A6", id:"SLC25A6Gene"}}, {_id:1107, properties:{name:"UQCR10", id:"UQCR10Gene"}}, {_id:1108, properties:{name:"SLC39A3", id:"SLC39A3Gene"}}, {_id:1109, properties:{name:"SLC39A2", id:"SLC39A2Gene"}}, {_id:1110, properties:{name:"APAF1", id:"APAF1Gene"}}, {_id:1111, properties:{name:"HSPA5", id:"HSPA5Gene"}}, {_id:1112, properties:{name:"COX8C", id:"COX8CGene"}}, {_id:1113, properties:{name:"TUBB8", id:"TUBB8Gene"}}, {_id:1114, properties:{name:"TUBB2B", id:"TUBB2BGene"}}, {_id:1115, properties:{name:"ITPR1", id:"ITPR1Gene"}}, {_id:1116, properties:{name:"ITPR2", id:"ITPR2Gene"}}, {_id:1117, properties:{name:"ITPR3", id:"ITPR3Gene"}}, {_id:1118, properties:{name:"NDUFS7", id:"NDUFS7Gene"}}, {_id:1119, properties:{name:"KIF5A", id:"KIF5AGene"}}, {_id:1120, properties:{name:"KIF5B", id:"KIF5BGene"}}, {_id:1121, properties:{name:"KIF5C", id:"KIF5CGene"}}, {_id:1122, properties:{name:"KLC1", id:"KLC1Gene"}}, {_id:1123, properties:{name:"MAOA", id:"MAOAGene"}}, {_id:1124, properties:{name:"MAOB", id:"MAOBGene"}}, {_id:1125, properties:{name:"MAPT", id:"MAPTGene"}}, {_id:1126, properties:{name:"MAP3K5", id:"MAP3K5Gene"}}, {_id:1127, properties:{name:"UQCRHL", id:"UQCRHLGene"}}, {_id:1128, properties:{name:"ATP6", id:"ATP6Gene"}}, {_id:1129, properties:{name:"ATP8", id:"ATP8Gene"}}, {_id:1130, properties:{name:"COX1", id:"COX1Gene"}}, {_id:1131, properties:{name:"COX2", id:"COX2Gene"}}, {_id:1132, properties:{name:"COX3", id:"COX3Gene"}}, {_id:1133, properties:{name:"CYTB", id:"CYTBGene"}}, {_id:1134, properties:{name:"ND1", id:"ND1Gene"}}, {_id:1135, properties:{name:"ND2", id:"ND2Gene"}}, {_id:1136, properties:{name:"ND3", id:"ND3Gene"}}, {_id:1137, properties:{name:"ND4", id:"ND4Gene"}}, {_id:1138, properties:{name:"ND4L", id:"ND4LGene"}}, {_id:1139, properties:{name:"ND5", id:"ND5Gene"}}, {_id:1140, properties:{name:"ND6", id:"ND6Gene"}}, {_id:1141, properties:{name:"ATF4", id:"ATF4Gene"}}, {_id:1142, properties:{name:"NDUFA1", id:"NDUFA1Gene"}}, {_id:1143, properties:{name:"NDUFA2", id:"NDUFA2Gene"}}, {_id:1144, properties:{name:"NDUFA3", id:"NDUFA3Gene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Gene;
UNWIND [{_id:1145, properties:{name:"COXFA4", id:"COXFA4Gene"}}, {_id:1146, properties:{name:"NDUFA5", id:"NDUFA5Gene"}}, {_id:1147, properties:{name:"NDUFA6", id:"NDUFA6Gene"}}, {_id:1148, properties:{name:"NDUFA7", id:"NDUFA7Gene"}}, {_id:1149, properties:{name:"NDUFA8", id:"NDUFA8Gene"}}, {_id:1150, properties:{name:"NDUFA9", id:"NDUFA9Gene"}}, {_id:1151, properties:{name:"NDUFA10", id:"NDUFA10Gene"}}, {_id:1152, properties:{name:"NDUFAB1", id:"NDUFAB1Gene"}}, {_id:1153, properties:{name:"NDUFB1", id:"NDUFB1Gene"}}, {_id:1154, properties:{name:"NDUFB2", id:"NDUFB2Gene"}}, {_id:1155, properties:{name:"NDUFB3", id:"NDUFB3Gene"}}, {_id:1156, properties:{name:"NDUFB4", id:"NDUFB4Gene"}}, {_id:1157, properties:{name:"NDUFB5", id:"NDUFB5Gene"}}, {_id:1158, properties:{name:"NDUFB6", id:"NDUFB6Gene"}}, {_id:1159, properties:{name:"NDUFB7", id:"NDUFB7Gene"}}, {_id:1160, properties:{name:"NDUFB8", id:"NDUFB8Gene"}}, {_id:1161, properties:{name:"NDUFB9", id:"NDUFB9Gene"}}, {_id:1162, properties:{name:"NDUFB10", id:"NDUFB10Gene"}}, {_id:1163, properties:{name:"NDUFC1", id:"NDUFC1Gene"}}, {_id:1164, properties:{name:"NDUFC2", id:"NDUFC2Gene"}}, {_id:1165, properties:{name:"NDUFS1", id:"NDUFS1Gene"}}, {_id:1166, properties:{name:"NDUFS2", id:"NDUFS2Gene"}}, {_id:1167, properties:{name:"NDUFS3", id:"NDUFS3Gene"}}, {_id:1168, properties:{name:"NDUFV1", id:"NDUFV1Gene"}}, {_id:1169, properties:{name:"NDUFS4", id:"NDUFS4Gene"}}, {_id:1170, properties:{name:"NDUFS5", id:"NDUFS5Gene"}}, {_id:1171, properties:{name:"NDUFS6", id:"NDUFS6Gene"}}, {_id:1172, properties:{name:"NDUFS8", id:"NDUFS8Gene"}}, {_id:1173, properties:{name:"NDUFV2", id:"NDUFV2Gene"}}, {_id:1174, properties:{name:"NDUFV3", id:"NDUFV3Gene"}}, {_id:1175, properties:{name:"NFE2L2", id:"NFE2L2Gene"}}, {_id:1176, properties:{name:"SLC11A2", id:"SLC11A2Gene"}}, {_id:1177, properties:{name:"ATP5F1A", id:"ATP5F1AGene"}}, {_id:1178, properties:{name:"ATP5F1B", id:"ATP5F1BGene"}}, {_id:1179, properties:{name:"ATP5F1C", id:"ATP5F1CGene"}}, {_id:1180, properties:{name:"NDUFA13", id:"NDUFA13Gene"}}, {_id:1181, properties:{name:"ATP5F1D", id:"ATP5F1DGene"}}, {_id:1182, properties:{name:"ATP5F1E", id:"ATP5F1EGene"}}, {_id:1183, properties:{name:"UBE2J1", id:"UBE2J1Gene"}}, {_id:1184, properties:{name:"ATP5PB", id:"ATP5PBGene"}}, {_id:1185, properties:{name:"ATP5MC1", id:"ATP5MC1Gene"}}, {_id:1186, properties:{name:"ATP5MC2", id:"ATP5MC2Gene"}}, {_id:1187, properties:{name:"ATP5MC3", id:"ATP5MC3Gene"}}, {_id:1188, properties:{name:"CALML5", id:"CALML5Gene"}}, {_id:1189, properties:{name:"TUBA8", id:"TUBA8Gene"}}, {_id:1190, properties:{name:"ATP5PF", id:"ATP5PFGene"}}, {_id:1191, properties:{name:"PLCG1", id:"PLCG1Gene"}}, {_id:1192, properties:{name:"ATP5PO", id:"ATP5POGene"}}, {_id:1193, properties:{name:"SEPTIN5", id:"SEPTIN5Gene"}}, {_id:1194, properties:{name:"CYCS", id:"CYCSGene"}}, {_id:1195, properties:{name:"NDUFB11", id:"NDUFB11Gene"}}, {_id:1196, properties:{name:"SLC39A9", id:"SLC39A9Gene"}}, {_id:1197, properties:{name:"SLC39A4", id:"SLC39A4Gene"}}, {_id:1198, properties:{name:"PRKACA", id:"PRKACAGene"}}, {_id:1199, properties:{name:"MFN1", id:"MFN1Gene"}}, {_id:1200, properties:{name:"PRKACB", id:"PRKACBGene"}}, {_id:1201, properties:{name:"PRKACG", id:"PRKACGGene"}}, {_id:1202, properties:{name:"NDUFA12", id:"NDUFA12Gene"}}, {_id:1203, properties:{name:"MAPK8", id:"MAPK8Gene"}}, {_id:1204, properties:{name:"MAPK9", id:"MAPK9Gene"}}, {_id:1205, properties:{name:"MAPK10", id:"MAPK10Gene"}}, {_id:1206, properties:{name:"PSMA1", id:"PSMA1Gene"}}, {_id:1207, properties:{name:"PSMA2", id:"PSMA2Gene"}}, {_id:1208, properties:{name:"PSMA3", id:"PSMA3Gene"}}, {_id:1209, properties:{name:"PSMA4", id:"PSMA4Gene"}}, {_id:1210, properties:{name:"PSMA5", id:"PSMA5Gene"}}, {_id:1211, properties:{name:"PSMA6", id:"PSMA6Gene"}}, {_id:1212, properties:{name:"PSMA7", id:"PSMA7Gene"}}, {_id:1213, properties:{name:"PSMB1", id:"PSMB1Gene"}}, {_id:1214, properties:{name:"PSMB2", id:"PSMB2Gene"}}, {_id:1215, properties:{name:"COXFA4L2", id:"COXFA4L2Gene"}}, {_id:1216, properties:{name:"PSMB3", id:"PSMB3Gene"}}, {_id:1217, properties:{name:"PSMB4", id:"PSMB4Gene"}}, {_id:1218, properties:{name:"PSMB5", id:"PSMB5Gene"}}, {_id:1219, properties:{name:"PSMB6", id:"PSMB6Gene"}}, {_id:1220, properties:{name:"PSMB7", id:"PSMB7Gene"}}, {_id:1221, properties:{name:"PSMC1", id:"PSMC1Gene"}}, {_id:1222, properties:{name:"PSMC2", id:"PSMC2Gene"}}, {_id:1223, properties:{name:"PSMC3", id:"PSMC3Gene"}}, {_id:1224, properties:{name:"PSMC4", id:"PSMC4Gene"}}, {_id:1225, properties:{name:"PSMC5", id:"PSMC5Gene"}}, {_id:1226, properties:{name:"PSMC6", id:"PSMC6Gene"}}, {_id:1227, properties:{name:"PSMD1", id:"PSMD1Gene"}}, {_id:1228, properties:{name:"PSMD2", id:"PSMD2Gene"}}, {_id:1229, properties:{name:"PSMD3", id:"PSMD3Gene"}}, {_id:1230, properties:{name:"PSMD4", id:"PSMD4Gene"}}, {_id:1231, properties:{name:"PSMD7", id:"PSMD7Gene"}}, {_id:1232, properties:{name:"PSMD8", id:"PSMD8Gene"}}, {_id:1233, properties:{name:"PSMD9", id:"PSMD9Gene"}}, {_id:1234, properties:{name:"PSMD11", id:"PSMD11Gene"}}, {_id:1235, properties:{name:"PSMD12", id:"PSMD12Gene"}}, {_id:1236, properties:{name:"SLC39A10", id:"SLC39A10Gene"}}, {_id:1237, properties:{name:"PSMD13", id:"PSMD13Gene"}}, {_id:1238, properties:{name:"BAX", id:"BAXGene"}}, {_id:1239, properties:{name:"BCL2L1", id:"BCL2L1Gene"}}, {_id:1240, properties:{name:"RPS27A", id:"RPS27AGene"}}, {_id:1241, properties:{name:"RYR3", id:"RYR3Gene"}}, {_id:1242, properties:{name:"SDHA", id:"SDHAGene"}}, {_id:1243, properties:{name:"SDHB", id:"SDHBGene"}}, {_id:1244, properties:{name:"SDHC", id:"SDHCGene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Gene;
UNWIND [{_id:1245, properties:{name:"SDHD", id:"SDHDGene"}}, {_id:1246, properties:{name:"SLC39A8", id:"SLC39A8Gene"}}, {_id:1247, properties:{name:"KLC2", id:"KLC2Gene"}}, {_id:1248, properties:{name:"SLC6A3", id:"SLC6A3Gene"}}, {_id:1249, properties:{name:"SLC18A1", id:"SLC18A1Gene"}}, {_id:1250, properties:{name:"SLC18A2", id:"SLC18A2Gene"}}, {_id:1251, properties:{name:"SNCA", id:"SNCAGene"}}, {_id:1252, properties:{name:"SOD1", id:"SOD1Gene"}}, {_id:1253, properties:{name:"TH", id:"THGene"}}, {_id:1254, properties:{name:"TP53", id:"TP53Gene"}}, {_id:1255, properties:{name:"TUBA4A", id:"TUBA4AGene"}}, {_id:1256, properties:{name:"TUBA3C", id:"TUBA3CGene"}}, {_id:1257, properties:{name:"TUBB2A", id:"TUBB2AGene"}}, {_id:1258, properties:{name:"TXN", id:"TXNGene"}}, {_id:1259, properties:{name:"UBA52", id:"UBA52Gene"}}, {_id:1260, properties:{name:"UBB", id:"UBBGene"}}, {_id:1261, properties:{name:"UBC", id:"UBCGene"}}, {_id:1262, properties:{name:"UBA1", id:"UBA1Gene"}}, {_id:1263, properties:{name:"UBA7", id:"UBA7Gene"}}, {_id:1264, properties:{name:"UBE2G1", id:"UBE2G1Gene"}}, {_id:1265, properties:{name:"UBE2G2", id:"UBE2G2Gene"}}, {_id:1266, properties:{name:"UBE2L3", id:"UBE2L3Gene"}}, {_id:1267, properties:{name:"UQCRB", id:"UQCRBGene"}}, {_id:1268, properties:{name:"UQCRC1", id:"UQCRC1Gene"}}, {_id:1269, properties:{name:"UQCRC2", id:"UQCRC2Gene"}}, {_id:1270, properties:{name:"UQCRFS1", id:"UQCRFS1Gene"}}, {_id:1271, properties:{name:"UQCRH", id:"UQCRHGene"}}, {_id:1272, properties:{name:"VDAC1", id:"VDAC1Gene"}}, {_id:1273, properties:{name:"VDAC2", id:"VDAC2Gene"}}, {_id:1274, properties:{name:"VDAC3", id:"VDAC3Gene"}}, {_id:1275, properties:{name:"XBP1", id:"XBP1Gene"}}, {_id:1276, properties:{name:"TUBA1A", id:"TUBA1AGene"}}, {_id:1277, properties:{name:"SLC39A7", id:"SLC39A7Gene"}}, {_id:1278, properties:{name:"SEM1", id:"SEM1Gene"}}, {_id:1279, properties:{name:"TUBAL3", id:"TUBAL3Gene"}}, {_id:1280, properties:{name:"CALM1", id:"CALM1Gene"}}, {_id:1281, properties:{name:"CALM2", id:"CALM2Gene"}}, {_id:1282, properties:{name:"CALM3", id:"CALM3Gene"}}, {_id:1283, properties:{name:"CALML3", id:"CALML3Gene"}}, {_id:1284, properties:{name:"TUBB1", id:"TUBB1Gene"}}, {_id:1285, properties:{name:"CAMK2A", id:"CAMK2AGene"}}, {_id:1286, properties:{name:"CAMK2B", id:"CAMK2BGene"}}, {_id:1287, properties:{name:"CAMK2D", id:"CAMK2DGene"}}, {_id:1288, properties:{name:"CAMK2G", id:"CAMK2GGene"}}, {_id:1289, properties:{name:"SLC25A31", id:"SLC25A31Gene"}}, {_id:1290, properties:{name:"CASP3", id:"CASP3Gene"}}, {_id:1291, properties:{name:"CASP9", id:"CASP9Gene"}}, {_id:1292, properties:{name:"TUBB6", id:"TUBB6Gene"}}, {_id:1293, properties:{name:"COX4I2", id:"COX4I2Gene"}}, {_id:1294, properties:{name:"TUBA1C", id:"TUBA1CGene"}}, {_id:1295, properties:{name:"KLC4", id:"KLC4Gene"}}, {_id:1296, properties:{name:"MCU", id:"MCUGene"}}, {_id:1297, properties:{name:"SLC39A13", id:"SLC39A13Gene"}}, {_id:1298, properties:{name:"COX7A2L", id:"COX7A2LGene"}}, {_id:1299, properties:{name:"CALML4", id:"CALML4Gene"}}, {_id:1300, properties:{name:"UBE2L6", id:"UBE2L6Gene"}}, {_id:1301, properties:{name:"COX5A", id:"COX5AGene"}}, {_id:1302, properties:{name:"EIF2AK3", id:"EIF2AK3Gene"}}, {_id:1303, properties:{name:"SNCAIP", id:"SNCAIPGene"}}, {_id:1304, properties:{name:"KEAP1", id:"KEAP1Gene"}}, {_id:1305, properties:{name:"PSMD6", id:"PSMD6Gene"}}, {_id:1306, properties:{name:"MFN2", id:"MFN2Gene"}}, {_id:1605, properties:{name:"GCaseGene", id:"GCaseGene"}}, {_id:1614, properties:{name:"PRKN", id:"PRKN"}}, {_id:1615, properties:{name:"PINK1", id:"PINK1"}}, {_id:1616, properties:{name:"DJ1", id:"DJ1"}}, {_id:1617, properties:{name:"GBA1", id:"GBA1"}}, {_id:1645, properties:{name:"SNCA_Gene", id:"SNCA_Gene"}}, {_id:1648, properties:{name:"GBA1_Gene", id:"GBA1_Gene"}}, {_id:1649, properties:{name:"MAPT_Gene", id:"MAPT_Gene"}}, {_id:1650, properties:{name:"KANSL1_Gene", id:"KANSL1_Gene"}}, {_id:1671, properties:{name:"LRRK2", id:"LRRK2"}}, {_id:1672, properties:{name:"ATP13A2", id:"ATP13A2"}}, {_id:1673, properties:{name:"PLA2G6", id:"PLA2G6"}}, {_id:1674, properties:{name:"FBXO7", id:"FBXO7"}}, {_id:1675, properties:{name:"CHCHD2", id:"CHCHD2"}}, {_id:1676, properties:{name:"VPS13C", id:"VPS13C"}}, {_id:1682, properties:{name:"PINK1GeneNode", id:"PINK1GeneNode"}}, {_id:1683, properties:{name:"PRKNGeneNode", id:"PRKNGeneNode"}}, {_id:1684, properties:{name:"LRRK2GeneNode", id:"LRRK2GeneNode"}}, {_id:1693, properties:{name:"RAB10Gene", id:"RAB10Gene"}}, {_id:1694, properties:{name:"RAB12Gene", id:"RAB12Gene"}}, {_id:1695, properties:{name:"RAB29Gene", id:"RAB29Gene"}}, {_id:1697, properties:{name:"HLARiskVariant", id:"HLARiskVariant"}}, {_id:1795, properties:{name:"ParkinGene", id:"ParkinGene"}}, {_id:1796, properties:{name:"SCA2", id:"SCA2"}}, {_id:1797, properties:{name:"SCA3MJD", id:"SCA3MJD"}}, {_id:1804, properties:{name:"MAPT", id:"MAPT"}}, {_id:1857, properties:{name:"PARKGene", id:"PARKGene"}}, {_id:1873, properties:{name:"Parkin", id:"Parkin"}}, {_id:1874, properties:{name:"Pink1Gene", id:"Pink1Gene"}}, {_id:1911, properties:{name:"AlphaSynuclein", id:"AlphaSynuclein"}}, {_id:1912, properties:{name:"AmyloidBeta42", id:"AmyloidBeta42"}}, {_id:1922, properties:{name:"SynucleinGene", id:"SynucleinGene"}}, {_id:1943, properties:{name:"TTR", id:"TTR"}}, {_id:1945, properties:{name:"TTRGene", id:"TTRGene"}}, {_id:1999, properties:{name:"LRRK2_Gene", id:"LRRK2_Gene"}}, {_id:2000, properties:{name:"VPS35_Gene", id:"VPS35_Gene"}}, {_id:2001, properties:{name:"CHCHD2_Gene", id:"CHCHD2_Gene"}}, {_id:2002, properties:{name:"RAB32_Gene", id:"RAB32_Gene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Gene;
UNWIND [{_id:2003, properties:{name:"PRKN_Gene", id:"PRKN_Gene"}}, {_id:2004, properties:{name:"PINK1_Gene", id:"PINK1_Gene"}}, {_id:2005, properties:{name:"PARK7_Gene", id:"PARK7_Gene"}}, {_id:2011, properties:{name:"PARKPRKN", id:"PARKPRKN"}}, {_id:2012, properties:{name:"PARKLRRK2", id:"PARKLRRK2"}}, {_id:2028, properties:{name:"RAB32", id:"RAB32"}}, {_id:2032, properties:{name:"Park7Gene", id:"Park7Gene"}}, {_id:2034, properties:{name:"PARKDCTN1Gene", id:"PARKDCTN1Gene"}}, {_id:2035, properties:{name:"VPS13CGene", id:"VPS13CGene"}}, {_id:2038, properties:{name:"PARKGBA1", id:"PARKGBA1"}}, {_id:2045, properties:{name:"PARKPRKNGene", id:"PARKPRKNGene"}}, {_id:2050, properties:{name:"C9orf72", id:"C9orf72"}}, {_id:2051, properties:{name:"RFC1", id:"RFC1"}}, {_id:2052, properties:{name:"NOTCH2NLC", id:"NOTCH2NLC"}}, {_id:2056, properties:{name:"DCTN1", id:"DCTN1"}}, {_id:2057, properties:{name:"SCAGene", id:"SCAGene"}}, {_id:2058, properties:{name:"C9orf72Gene", id:"C9orf72Gene"}}, {_id:2059, properties:{name:"RFC1Gene", id:"RFC1Gene"}}, {_id:2060, properties:{name:"NOTCH2NLCGene", id:"NOTCH2NLCGene"}}, {_id:2061, properties:{name:"FBXO47Gene", id:"FBXO47Gene"}}, {_id:2062, properties:{name:"ELOVL7Gene", id:"ELOVL7Gene"}}, {_id:2063, properties:{name:"EDN1Gene", id:"EDN1Gene"}}, {_id:2064, properties:{name:"ZIC1Gene", id:"ZIC1Gene"}}, {_id:2065, properties:{name:"ZIC4Gene", id:"ZIC4Gene"}}, {_id:2066, properties:{name:"STX6", id:"STX6"}}, {_id:2067, properties:{name:"EIF2AK3", id:"EIF2AK3"}}, {_id:2068, properties:{name:"MOBP", id:"MOBP"}}, {_id:2072, properties:{name:"MTF2_Gene", id:"MTF2_Gene"}}, {_id:2073, properties:{name:"PIK3CA_Gene", id:"PIK3CA_Gene"}}, {_id:2074, properties:{name:"ADD1_Gene", id:"ADD1_Gene"}}, {_id:2075, properties:{name:"SYBU_Gene", id:"SYBU_Gene"}}, {_id:2076, properties:{name:"IRS2_Gene", id:"IRS2_Gene"}}, {_id:2077, properties:{name:"USP8_Gene", id:"USP8_Gene"}}, {_id:2078, properties:{name:"PIGL_Gene", id:"PIGL_Gene"}}, {_id:2079, properties:{name:"FASN_Gene", id:"FASN_Gene"}}, {_id:2080, properties:{name:"MYLK2_Gene", id:"MYLK2_Gene"}}, {_id:2081, properties:{name:"USP25_Gene", id:"USP25_Gene"}}, {_id:2082, properties:{name:"EP300_Gene", id:"EP300_Gene"}}, {_id:2083, properties:{name:"PPP6R2_Gene", id:"PPP6R2_Gene"}}, {_id:2103, properties:{name:"GCase", id:"GCase"}}, {_id:2121, properties:{name:"GBA_Gene", id:"GBA_Gene"}}, {_id:2205, properties:{name:"GlucocerebrosidaseGene", id:"GlucocerebrosidaseGene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Gene;
UNWIND [{_id:784, properties:{name:"NociceptivePain", id:"NociceptivePain"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:TypeOfPain;
UNWIND [{_id:86, properties:{name:"BrainVolume", id:"BrainVolume"}}, {_id:139, properties:{name:"StandardDiffusionMeasures", id:"StandardDiffusionMeasures"}}, {_id:140, properties:{name:"FreeWater-CorrectedDiffusionMeasures", id:"FreeWater-CorrectedDiffusionMeasures"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Measure;
UNWIND [{_id:511, properties:{name:"EROrganelle", id:"EROrganelle"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Organelle;
UNWIND [{_id:2006, properties:{name:"MDSGene", id:"MDSGene"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Database;
UNWIND [{_id:1696, properties:{name:"HLARegion", id:"HLARegion"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:GenomicRegion;
UNWIND [{_id:634, properties:{name:"LewyBodies", id:"LewyBodies"}}, {_id:757, properties:{name:"AlphaSynucleinBodies", id:"AlphaSynucleinBodies"}}, {_id:758, properties:{name:"EntericNervousSystem", id:"EntericNervousSystem"}}, {_id:759, properties:{name:"OlfactoryBulb", id:"OlfactoryBulb"}}, {_id:795, properties:{name:"Nigro-DopaminergicNeurons", id:"Nigro-DopaminergicNeurons"}}, {_id:1663, properties:{name:"Mitochondria", id:"Mitochondria"}}, {_id:1664, properties:{name:"EndoplasmicReticulum", id:"EndoplasmicReticulum"}}, {_id:1665, properties:{name:"Lysosomes", id:"Lysosomes"}}, {_id:1705, properties:{name:"GutMicrobiome", id:"GutMicrobiome"}}, {_id:1706, properties:{name:"ProInflammatorySpecies", id:"ProInflammatorySpecies"}}, {_id:1710, properties:{name:"BloodBrainBarrier", id:"BloodBrainBarrier"}}, {_id:1711, properties:{name:"VagusNerve", id:"VagusNerve"}}, {_id:1716, properties:{name:"SubstantiaNigraNeurons", id:"SubstantiaNigraNeurons"}}, {_id:1719, properties:{name:"APOEStatus", id:"APOEStatus"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Entity;
UNWIND [{_id:570, properties:{name:"CORNode", id:"CORNode"}}, {_id:571, properties:{name:"LRRRepeat", id:"LRRRepeat"}}, {_id:573, properties:{name:"ROCNode", id:"ROCNode"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Node;
UNWIND [{_id:1899, properties:{name:"ProtofilamentPolymorphs", id:"ProtofilamentPolymorphs"}}, {_id:1900, properties:{name:"Prions", id:"Prions"}}, {_id:1901, properties:{name:"Amyloids", id:"Amyloids"}}, {_id:1902, properties:{name:"α-SynucleinOligomers", id:"α-SynucleinOligomers"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ProteinStructure;
UNWIND [{_id:2015, properties:{name:"MichaelJFoxFoundationGlobalMonogenicPDPProject", id:"MichaelJFoxFoundationGlobalMonogenicPDPProject"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ResearchProject;
UNWIND [{_id:557, properties:{name:"AICAR/ZMP", id:"AICAR/ZMP"}}, {_id:607, properties:{name:"MitochondrialDNA", id:"MitochondrialDNA"}}, {_id:1668, properties:{name:"ReactiveOxygenSpecies", id:"ReactiveOxygenSpecies"}}, {_id:1701, properties:{name:"MitochondrialAntigen", id:"MitochondrialAntigen"}}, {_id:1704, properties:{name:"BacterialToxin", id:"BacterialToxin"}}, {_id:1872, properties:{name:"TollLikeReceptors", id:"TollLikeReceptors"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Molecule;
UNWIND [{_id:542, properties:{name:"R1398HVariant", id:"R1398HVariant"}}, {_id:1655, properties:{name:"HLAVariant", id:"HLAVariant"}}, {_id:1860, properties:{name:"GBA1", id:"GBA1"}}, {_id:2041, properties:{name:"LRRK2LossOfFunctionVariant", id:"LRRK2LossOfFunctionVariant"}}, {_id:2042, properties:{name:"LRRK2GainOfFunctionVariant", id:"LRRK2GainOfFunctionVariant"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Variant;
UNWIND [{_id:1713, properties:{name:"TCells", id:"TCells"}}, {_id:1714, properties:{name:"Microglia", id:"Microglia"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ImmuneCell;
UNWIND [{_id:1757, properties:{name:"DrakeFoundation", id:"DrakeFoundation"}}, {_id:1758, properties:{name:"ParkinsonsUK", id:"ParkinsonsUK"}}, {_id:1759, properties:{name:"CureParkinsonsTrust", id:"CureParkinsonsTrust"}}, {_id:1760, properties:{name:"PSPAssociation", id:"PSPAssociation"}}, {_id:1762, properties:{name:"MichaelJFoxFoundation", id:"MichaelJFoxFoundation"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:NonProfit;
UNWIND [{_id:551, properties:{name:"AMPK", id:"AMPK"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Kinase;
UNWIND [{_id:85, properties:{name:"FDG-PET", id:"FDG-PET"}}, {_id:88, properties:{name:"T1-WeightedStructuralMRI", id:"T1-WeightedStructuralMRI"}}, {_id:104, properties:{name:"SPECTImaging", id:"SPECTImaging"}}, {_id:105, properties:{name:"PET", id:"PET"}}, {_id:106, properties:{name:"MagneticResonanceImaging", id:"MagneticResonanceImaging"}}, {_id:107, properties:{name:"FunctionalMagneticResonanceImaging", id:"FunctionalMagneticResonanceImaging"}}, {_id:119, properties:{name:"FMT-PET", id:"FMT-PET"}}, {_id:138, properties:{name:"T1-weightedMagneticResonanceImaging", id:"T1-weightedMagneticResonanceImaging"}}, {_id:144, properties:{name:"T2Relaxometry", id:"T2Relaxometry"}}, {_id:145, properties:{name:"QuantitativeSusceptibilityMapping", id:"QuantitativeSusceptibilityMapping"}}, {_id:156, properties:{name:"MRPI", id:"MRPI"}}, {_id:358, properties:{name:"FunctionalMRI", id:"FunctionalMRI"}}, {_id:360, properties:{name:"FreeWaterImaging", id:"FreeWaterImaging"}}, {_id:361, properties:{name:"PerlsIronStaining", id:"PerlsIronStaining"}}, {_id:364, properties:{name:"18F-FlorzolotauTauPET", id:"18F-FlorzolotauTauPET"}}, {_id:365, properties:{name:"AmyloidAndTauPET", id:"AmyloidAndTauPET"}}, {_id:366, properties:{name:"AlphaSynucleinPET", id:"AlphaSynucleinPET"}}, {_id:805, properties:{name:"IsokineticDynamometry", id:"IsokineticDynamometry"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Technique;
UNWIND [{_id:99, properties:{name:"TauDepositionNode", id:"TauDepositionNode"}}, {_id:798, properties:{name:"LimbStiffness", id:"LimbStiffness"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Phenomenon;
UNWIND [{_id:898, properties:{name:"KimHJ", id:"KimHJ"}}, {_id:899, properties:{name:"PaekSH", id:"PaekSH"}}, {_id:900, properties:{name:"KimJY", id:"KimJY"}}, {_id:901, properties:{name:"LeeJY", id:"LeeJY"}}, {_id:902, properties:{name:"LimYH", id:"LimYH"}}, {_id:903, properties:{name:"KimMR", id:"KimMR"}}, {_id:904, properties:{name:"KimDG", id:"KimDG"}}, {_id:905, properties:{name:"JeonBS", id:"JeonBS"}}, {_id:906, properties:{name:"KirschDL", id:"KirschDL"}}, {_id:907, properties:{name:"SmithRB", id:"SmithRB"}}, {_id:908, properties:{name:"KumbargereNagrajS", id:"KumbargereNagrajS"}}, {_id:909, properties:{name:"GeorgeRP", id:"GeorgeRP"}}, {_id:910, properties:{name:"ShettyN", id:"ShettyN"}}, {_id:911, properties:{name:"LevensonD", id:"LevensonD"}}, {_id:912, properties:{name:"FerraioloDM", id:"FerraioloDM"}}, {_id:913, properties:{name:"ShresthaA", id:"ShresthaA"}}, {_id:914, properties:{name:"LenkaA", id:"LenkaA"}}, {_id:915, properties:{name:"HegdeS", id:"HegdeS"}}, {_id:916, properties:{name:"JhunjhunwalaKR", id:"JhunjhunwalaKR"}}, {_id:917, properties:{name:"PalPK", id:"PalPK"}}, {_id:918, properties:{name:"LetaV", id:"LetaV"}}, {_id:919, properties:{name:"RayChaudhuriK", id:"RayChaudhuriK"}}, {_id:920, properties:{name:"MilnerO", id:"MilnerO"}}, {_id:921, properties:{name:"ChungFayG", id:"ChungFayG"}}, {_id:922, properties:{name:"MettaV", id:"MettaV"}}, {_id:923, properties:{name:"ParianteCM", id:"ParianteCM"}}, {_id:924, properties:{name:"BorsiniA", id:"BorsiniA"}}, {_id:1806, properties:{name:"NallsMA", id:"NallsMA"}}, {_id:1807, properties:{name:"BlauwendraatC", id:"BlauwendraatC"}}, {_id:1808, properties:{name:"VallergaCL", id:"VallergaCL"}}, {_id:1810, properties:{name:"DuffyPE", id:"DuffyPE"}}, {_id:1811, properties:{name:"TennysonVM", id:"TennysonVM"}}, {_id:1813, properties:{name:"GuoY", id:"GuoY"}}, {_id:1814, properties:{name:"SunY", id:"SunY"}}, {_id:1815, properties:{name:"SongZ", id:"SongZ"}}, {_id:1817, properties:{name:"YangY", id:"YangY"}}, {_id:1818, properties:{name:"ShiY", id:"ShiY"}}, {_id:1819, properties:{name:"SchweighauserM", id:"SchweighauserM"}}, {_id:1821, properties:{name:"SpillantiniMG", id:"SpillantiniMG"}}, {_id:1822, properties:{name:"SchmidtML", id:"SchmidtML"}}, {_id:1823, properties:{name:"LeeVMY", id:"LeeVMY"}}, {_id:1824, properties:{name:"TrojanowskiJQ", id:"TrojanowskiJQ"}}, {_id:1825, properties:{name:"JakesR", id:"JakesR"}}, {_id:1826, properties:{name:"GoedertM", id:"GoedertM"}}, {_id:1828, properties:{name:"TozziA", id:"TozziA"}}, {_id:1829, properties:{name:"SciaccalugaM", id:"SciaccalugaM"}}, {_id:1830, properties:{name:"LoffredoV", id:"LoffredoV"}}, {_id:1832, properties:{name:"CaloL", id:"CaloL"}}, {_id:1833, properties:{name:"WegrzynowiczM", id:"WegrzynowiczM"}}, {_id:1834, properties:{name:"Santivañez-PerezJ", id:"Santivañez-PerezJ"}}, {_id:1836, properties:{name:"TarutaniA", id:"TarutaniA"}}, {_id:1838, properties:{name:"LobanovaE", id:"LobanovaE"}}, {_id:1839, properties:{name:"WhitenD", id:"WhitenD"}}, {_id:1840, properties:{name:"RuggeriFS", id:"RuggeriFS"}}, {_id:1842, properties:{name:"BraakH", id:"BraakH"}}, {_id:1843, properties:{name:"TrediciKD", id:"TrediciKD"}}, {_id:1844, properties:{name:"RubU", id:"RubU"}}, {_id:1845, properties:{name:"VosRAI", id:"VosRAI"}}, {_id:1846, properties:{name:"SteurENHJ", id:"SteurENHJ"}}, {_id:1847, properties:{name:"BraakE", id:"BraakE"}}, {_id:1849, properties:{name:"AlamP", id:"AlamP"}}, {_id:1850, properties:{name:"BoussetL", id:"BoussetL"}}, {_id:1851, properties:{name:"MelkiR", id:"MelkiR"}}, {_id:1852, properties:{name:"OtzenDE", id:"OtzenDE"}}, {_id:2123, properties:{name:"FooJN", id:"FooJN"}}, {_id:2124, properties:{name:"ChewEGY", id:"ChewEGY"}}, {_id:2125, properties:{name:"ChungSJ", id:"ChungSJ"}}, {_id:2126, properties:{name:"PengR", id:"PengR"}}, {_id:2127, properties:{name:"MokKY", id:"MokKY"}}, {_id:2128, properties:{name:"SatakeW", id:"SatakeW"}}, {_id:2129, properties:{name:"TodaT", id:"TodaT"}}, {_id:2130, properties:{name:"ChaoY", id:"ChaoY"}}, {_id:2131, properties:{name:"FredriksenK", id:"FredriksenK"}}, {_id:2132, properties:{name:"AivazidisS", id:"AivazidisS"}}, {_id:2133, properties:{name:"SharmaK", id:"SharmaK"}}, {_id:2134, properties:{name:"BurbidgeKJ", id:"BurbidgeKJ"}}, {_id:2135, properties:{name:"PitcairnC", id:"PitcairnC"}}, {_id:2136, properties:{name:"ZunkeF", id:"ZunkeF"}}, {_id:2137, properties:{name:"GelyanaE", id:"GelyanaE"}}, {_id:2138, properties:{name:"MazzulliJR", id:"MazzulliJR"}}, {_id:2168, properties:{name:"KleinC", id:"KleinC"}}, {_id:2169, properties:{name:"HattoriN", id:"HattoriN"}}, {_id:2170, properties:{name:"MarrasC", id:"MarrasC"}}, {_id:2171, properties:{name:"KochS", id:"KochS"}}, {_id:2172, properties:{name:"LaabsBH", id:"LaabsBH"}}, {_id:2173, properties:{name:"KastenM", id:"KastenM"}}, {_id:2174, properties:{name:"VollstedtEJ", id:"VollstedtEJ"}}, {_id:2175, properties:{name:"BecktepeJ", id:"BecktepeJ"}}, {_id:2176, properties:{name:"BrüggemannN", id:"BrüggemannN"}}, {_id:2177, properties:{name:"FrankeA", id:"FrankeA"}}, {_id:2178, properties:{name:"KrämerUM", id:"KrämerUM"}}, {_id:2179, properties:{name:"KuhlenbäumerG", id:"KuhlenbäumerG"}}, {_id:2180, properties:{name:"LiebW", id:"LiebW"}}, {_id:2181, properties:{name:"KoschmidderE", id:"KoschmidderE"}}, {_id:2182, properties:{name:"WeissbachA", id:"WeissbachA"}}, {_id:2183, properties:{name:"LohmannK", id:"LohmannK"}}, {_id:2184, properties:{name:"KouriN", id:"KouriN"}}, {_id:2185, properties:{name:"RossOA", id:"RossOA"}}, {_id:2186, properties:{name:"DombroskiB", id:"DombroskiB"}}, {_id:2187, properties:{name:"YounkinCS", id:"YounkinCS"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Author;
UNWIND [{_id:2188, properties:{name:"SerieDJ", id:"SerieDJ"}}, {_id:2189, properties:{name:"Soto-OrtolazaA", id:"Soto-OrtolazaA"}}, {_id:2190, properties:{name:"BakerM", id:"BakerM"}}, {_id:2191, properties:{name:"FinchNCA", id:"FinchNCA"}}, {_id:2192, properties:{name:"YoonH", id:"YoonH"}}, {_id:2193, properties:{name:"KimJ", id:"KimJ"}}, {_id:2194, properties:{name:"LaiD", id:"LaiD"}}, {_id:2195, properties:{name:"AlipanahiB", id:"AlipanahiB"}}, {_id:2196, properties:{name:"FontanillasP", id:"FontanillasP"}}, {_id:2197, properties:{name:"Schwantes-AnTH", id:"Schwantes-AnTH"}}, {_id:2198, properties:{name:"AaslyJ", id:"AaslyJ"}}, {_id:2199, properties:{name:"AlcalayRN", id:"AlcalayRN"}}, {_id:2200, properties:{name:"BeechamGW", id:"BeechamGW"}}, {_id:2201, properties:{name:"BergD", id:"BergD"}}, {_id:2202, properties:{name:"BressmanS", id:"BressmanS"}}, {_id:2203, properties:{name:"BriceA", id:"BriceA"}}, {_id:2211, properties:{name:"CuradoF", id:"CuradoF"}}, {_id:2212, properties:{name:"BruggemannN", id:"BruggemannN"}}, {_id:2213, properties:{name:"PaulJ", id:"PaulJ"}}, {_id:2214, properties:{name:"BogdanovicX", id:"BogdanovicX"}}, {_id:2215, properties:{name:"ZulbaharS", id:"ZulbaharS"}}, {_id:2216, properties:{name:"SongP", id:"SongP"}}, {_id:2217, properties:{name:"PengW", id:"PengW"}}, {_id:2218, properties:{name:"SauveV", id:"SauveV"}}, {_id:2219, properties:{name:"FakihR", id:"FakihR"}}, {_id:2220, properties:{name:"XieZ", id:"XieZ"}}, {_id:2221, properties:{name:"YsselsteinD", id:"YsselsteinD"}}, {_id:2222, properties:{name:"KraincT", id:"KraincT"}}, {_id:2223, properties:{name:"WongYC", id:"WongYC"}}, {_id:2224, properties:{name:"MencacciNE", id:"MencacciNE"}}, {_id:2225, properties:{name:"SavasJN", id:"SavasJN"}}, {_id:2226, properties:{name:"TanAH", id:"TanAH"}}, {_id:2227, properties:{name:"NoyceA", id:"NoyceA"}}, {_id:2228, properties:{name:"CarrascoAM", id:"CarrascoAM"}}, {_id:2229, properties:{name:"ReimerA", id:"ReimerA"}}, {_id:2230, properties:{name:"IllarionovaA", id:"IllarionovaA"}}, {_id:2231, properties:{name:"SingletonA", id:"SingletonA"}}, {_id:2232, properties:{name:"Schumacher-SchuhA", id:"Schumacher-SchuhA"}}, {_id:2233, properties:{name:"StecherB", id:"StecherB"}}, {_id:2234, properties:{name:"SiddiqiB", id:"SiddiqiB"}}, {_id:2235, properties:{name:"TsengFS", id:"TsengFS"}}, {_id:2236, properties:{name:"FooJQX", id:"FooJQX"}}, {_id:2237, properties:{name:"MaiAS", id:"MaiAS"}}, {_id:2238, properties:{name:"TanEK", id:"TanEK"}}, {_id:2239, properties:{name:"TsujiS", id:"TsujiS"}}, {_id:2240, properties:{name:"ChoudaryPV", id:"ChoudaryPV"}}, {_id:2241, properties:{name:"MartinBM", id:"MartinBM"}}, {_id:2242, properties:{name:"StubblefieldBK", id:"StubblefieldBK"}}, {_id:2243, properties:{name:"MayorJA", id:"MayorJA"}}, {_id:2244, properties:{name:"BarrangerJA", id:"BarrangerJA"}}, {_id:2245, properties:{name:"GinnsEI", id:"GinnsEI"}}, {_id:2246, properties:{name:"TunoldJA", id:"TunoldJA"}}, {_id:2247, properties:{name:"TanMMX", id:"TanMMX"}}, {_id:2248, properties:{name:"ToftM", id:"ToftM"}}, {_id:2249, properties:{name:"RossO", id:"RossO"}}, {_id:2250, properties:{name:"vandeBergWDJ", id:"vandeBergWDJ"}}, {_id:2251, properties:{name:"PihlstromL", id:"PihlstromL"}}, {_id:2252, properties:{name:"UsnichT", id:"UsnichT"}}, {_id:2253, properties:{name:"OlmedillasM", id:"OlmedillasM"}}, {_id:2254, properties:{name:"SchellN", id:"SchellN"}}, {_id:2255, properties:{name:"PaulJJ", id:"PaulJJ"}}, {_id:2256, properties:{name:"SkobaljS", id:"SkobaljS"}}, {_id:2257, properties:{name:"CsotiI", id:"CsotiI"}}, {_id:2258, properties:{name:"ErtanS", id:"ErtanS"}}, {_id:2259, properties:{name:"GruberD", id:"GruberD"}}, {_id:2260, properties:{name:"ZittelS", id:"ZittelS"}}, {_id:2261, properties:{name:"AdlerC", id:"AdlerC"}}, {_id:2262, properties:{name:"AhmadAnnuarA", id:"AhmadAnnuarA"}}, {_id:2263, properties:{name:"AlbaneseA", id:"AlbaneseA"}}, {_id:2264, properties:{name:"AlMubarakB", id:"AlMubarakB"}}, {_id:2265, properties:{name:"AlvarezV", id:"AlvarezV"}}, {_id:2266, properties:{name:"WangW", id:"WangW"}}, {_id:2267, properties:{name:"WangX", id:"WangX"}}, {_id:2268, properties:{name:"FujiokaH", id:"FujiokaH"}}, {_id:2269, properties:{name:"HoppelC", id:"HoppelC"}}, {_id:2270, properties:{name:"WhoneAL", id:"WhoneAL"}}, {_id:2271, properties:{name:"CaldwellMA", id:"CaldwellMA"}}, {_id:2272, properties:{name:"CullenPJ", id:"CullenPJ"}}, {_id:2273, properties:{name:"LiuJ", id:"LiuJ"}}, {_id:2274, properties:{name:"ZhuX", id:"ZhuX"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Author;
UNWIND [{_id:11, properties:{name:"RakeshArya", id:"RakeshArya"}}, {_id:12, properties:{name:"AKMAHaque", id:"AKMAHaque"}}, {_id:13, properties:{name:"HemlataShakya", id:"HemlataShakya"}}, {_id:14, properties:{name:"MMBillah", id:"MMBillah"}}, {_id:15, properties:{name:"AnzanaParvin", id:"AnzanaParvin"}}, {_id:16, properties:{name:"MMDRahman", id:"MMDRahman"}}, {_id:17, properties:{name:"KMSakib", id:"KMSakib"}}, {_id:18, properties:{name:"HMFaruquee", id:"HMFaruquee"}}, {_id:19, properties:{name:"VijayKumar", id:"VijayKumar"}}, {_id:20, properties:{name:"JongJooKim", id:"JongJooKim"}}, {_id:198, properties:{name:"AlsterP", id:"AlsterP"}}, {_id:199, properties:{name:"MadetkoAlsterN", id:"MadetkoAlsterN"}}, {_id:200, properties:{name:"SchapiraAHV", id:"SchapiraAHV"}}, {_id:201, properties:{name:"ChaudhuriKR", id:"ChaudhuriKR"}}, {_id:202, properties:{name:"JennerP", id:"JennerP"}}, {_id:203, properties:{name:"NandanwarD", id:"NandanwarD"}}, {_id:204, properties:{name:"TruongDD", id:"TruongDD"}}, {_id:205, properties:{name:"LiddelowSA", id:"LiddelowSA"}}, {_id:206, properties:{name:"BarresBA", id:"BarresBA"}}, {_id:207, properties:{name:"AdamH", id:"AdamH"}}, {_id:208, properties:{name:"GopinathSCB", id:"GopinathSCB"}}, {_id:209, properties:{name:"MdArshadMK", id:"MdArshadMK"}}, {_id:210, properties:{name:"ParminNA", id:"ParminNA"}}, {_id:211, properties:{name:"HuseinI", id:"HuseinI"}}, {_id:212, properties:{name:"HashimU", id:"HashimU"}}, {_id:213, properties:{name:"VazquezVelezGE", id:"VazquezVelezGE"}}, {_id:214, properties:{name:"ZoghbiHY", id:"ZoghbiHY"}}, {_id:215, properties:{name:"TolosaE", id:"TolosaE"}}, {_id:216, properties:{name:"GarridoA", id:"GarridoA"}}, {_id:217, properties:{name:"ScholzSW", id:"ScholzSW"}}, {_id:218, properties:{name:"PoeweW", id:"PoeweW"}}, {_id:219, properties:{name:"RajputAH", id:"RajputAH"}}, {_id:220, properties:{name:"RajputA", id:"RajputA"}}, {_id:222, properties:{name:"LotankarS", id:"LotankarS"}}, {_id:223, properties:{name:"PrabhavalkarKS", id:"PrabhavalkarKS"}}, {_id:224, properties:{name:"BhattLK", id:"BhattLK"}}, {_id:225, properties:{name:"LiT", id:"LiT"}}, {_id:226, properties:{name:"LeW", id:"LeW"}}, {_id:227, properties:{name:"EmamzadehFN", id:"EmamzadehFN"}}, {_id:228, properties:{name:"SurguchovA", id:"SurguchovA"}}, {_id:238, properties:{name:"AvilaPerson", id:"AvilaPerson"}}, {_id:239, properties:{name:"SchollPerson", id:"SchollPerson"}}, {_id:240, properties:{name:"KovacsPerson", id:"KovacsPerson"}}, {_id:241, properties:{name:"KovariPerson", id:"KovariPerson"}}, {_id:242, properties:{name:"SkrabanaPerson", id:"SkrabanaPerson"}}, {_id:243, properties:{name:"EvansPerson", id:"EvansPerson"}}, {_id:244, properties:{name:"KontsekovaPerson", id:"KontsekovaPerson"}}, {_id:245, properties:{name:"MalawskaPerson", id:"MalawskaPerson"}}, {_id:246, properties:{name:"deSilvaPerson", id:"deSilvaPerson"}}, {_id:248, properties:{name:"OuPerson", id:"OuPerson"}}, {_id:250, properties:{name:"HouPerson", id:"HouPerson"}}, {_id:252, properties:{name:"WeiPerson", id:"WeiPerson"}}, {_id:253, properties:{name:"PangPerson", id:"PangPerson"}}, {_id:254, properties:{name:"LiuPerson", id:"LiuPerson"}}, {_id:256, properties:{name:"YangPerson", id:"YangPerson"}}, {_id:258, properties:{name:"HanPerson", id:"HanPerson"}}, {_id:259, properties:{name:"HuPerson", id:"HuPerson"}}, {_id:260, properties:{name:"XuPerson", id:"XuPerson"}}, {_id:261, properties:{name:"FanPerson", id:"FanPerson"}}, {_id:262, properties:{name:"LiangPerson", id:"LiangPerson"}}, {_id:263, properties:{name:"YuPerson", id:"YuPerson"}}, {_id:266, properties:{name:"ChePerson", id:"ChePerson"}}, {_id:267, properties:{name:"WangPerson", id:"WangPerson"}}, {_id:268, properties:{name:"XiaoPerson", id:"XiaoPerson"}}, {_id:269, properties:{name:"LinPerson", id:"LinPerson"}}, {_id:270, properties:{name:"ZenuniPerson", id:"ZenuniPerson"}}, {_id:271, properties:{name:"BovenziPerson", id:"BovenziPerson"}}, {_id:272, properties:{name:"BissaccoPerson", id:"BissaccoPerson"}}, {_id:273, properties:{name:"GrilloPerson", id:"GrilloPerson"}}, {_id:274, properties:{name:"SimonettaPerson", id:"SimonettaPerson"}}, {_id:275, properties:{name:"MascioliPerson", id:"MascioliPerson"}}, {_id:276, properties:{name:"PieriPerson", id:"PieriPerson"}}, {_id:277, properties:{name:"BernardiniPerson", id:"BernardiniPerson"}}, {_id:278, properties:{name:"SancesarioPerson", id:"SancesarioPerson"}}, {_id:279, properties:{name:"StefaniPerson", id:"StefaniPerson"}}, {_id:280, properties:{name:"MitchellPerson", id:"MitchellPerson"}}, {_id:281, properties:{name:"LehéricyPerson", id:"LehéricyPerson"}}, {_id:282, properties:{name:"ChiuPerson", id:"ChiuPerson"}}, {_id:283, properties:{name:"StrafellaPerson", id:"StrafellaPerson"}}, {_id:284, properties:{name:"StoesslPerson", id:"StoesslPerson"}}, {_id:285, properties:{name:"VaillancourtPerson", id:"VaillancourtPerson"}}, {_id:286, properties:{name:"PrangePerson", id:"PrangePerson"}}, {_id:287, properties:{name:"TheisPerson", id:"TheisPerson"}}, {_id:288, properties:{name:"BanwinklerPerson", id:"BanwinklerPerson"}}, {_id:289, properties:{name:"vanEimerenPerson", id:"vanEimerenPerson"}}, {_id:290, properties:{name:"afBjerkénPerson", id:"afBjerkénPerson"}}, {_id:291, properties:{name:"AxelssonPerson", id:"AxelssonPerson"}}, {_id:292, properties:{name:"LarssonPerson", id:"LarssonPerson"}}, {_id:293, properties:{name:"FlygarePerson", id:"FlygarePerson"}}, {_id:294, properties:{name:"RemesPerson", id:"RemesPerson"}}, {_id:295, properties:{name:"StrandbergPerson", id:"StrandbergPerson"}}, {_id:296, properties:{name:"ErikssonPerson", id:"ErikssonPerson"}}, {_id:297, properties:{name:"BäckströmPerson", id:"BäckströmPerson"}}, {_id:298, properties:{name:"JakobsonMoPerson", id:"JakobsonMoPerson"}}, {_id:616, properties:{name:"HuangYX", id:"HuangYX"}}, {_id:617, properties:{name:"ZhangQL", id:"ZhangQL"}}, {_id:848, properties:{name:"ElodieKip", id:"ElodieKip"}}, {_id:849, properties:{name:"LouiseCParrBrownlie", id:"LouiseCParrBrownlie"}}, {_id:850, properties:{name:"FanHC", id:"FanHC"}}, {_id:851, properties:{name:"ChangYK", id:"ChangYK"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:852, properties:{name:"TsaiJD", id:"TsaiJD"}}, {_id:853, properties:{name:"ChiangKL", id:"ChiangKL"}}, {_id:854, properties:{name:"ShihJH", id:"ShihJH"}}, {_id:855, properties:{name:"YehKY", id:"YehKY"}}, {_id:856, properties:{name:"MaKH", id:"MaKH"}}, {_id:857, properties:{name:"LiIH", id:"LiIH"}}, {_id:858, properties:{name:"FeliceVD", id:"FeliceVD"}}, {_id:859, properties:{name:"QuigleyEM", id:"QuigleyEM"}}, {_id:860, properties:{name:"SullivanAM", id:"SullivanAM"}}, {_id:861, properties:{name:"OKeefeGW", id:"OKeefeGW"}}, {_id:862, properties:{name:"OMahonySM", id:"OMahonySM"}}, {_id:863, properties:{name:"FernandezPajarínG", id:"FernandezPajarínG"}}, {_id:864, properties:{name:"MartínJiménezI", id:"MartínJiménezI"}}, {_id:865, properties:{name:"AresPensadoB", id:"AresPensadoB"}}, {_id:866, properties:{name:"SesarIgnacioA", id:"SesarIgnacioA"}}, {_id:867, properties:{name:"HaehnerA", id:"HaehnerA"}}, {_id:868, properties:{name:"BoesveldtS", id:"BoesveldtS"}}, {_id:869, properties:{name:"BerendseHW", id:"BerendseHW"}}, {_id:870, properties:{name:"MackaySimA", id:"MackaySimA"}}, {_id:871, properties:{name:"FleischmannJ", id:"FleischmannJ"}}, {_id:872, properties:{name:"SilburnPA", id:"SilburnPA"}}, {_id:873, properties:{name:"JohnstonAN", id:"JohnstonAN"}}, {_id:874, properties:{name:"MellickGD", id:"MellickGD"}}, {_id:875, properties:{name:"HertingB", id:"HertingB"}}, {_id:876, properties:{name:"ReichmannH", id:"ReichmannH"}}, {_id:877, properties:{name:"HummelT", id:"HummelT"}}, {_id:878, properties:{name:"HuangCL", id:"HuangCL"}}, {_id:879, properties:{name:"WuWQ", id:"WuWQ"}}, {_id:880, properties:{name:"SunJW", id:"SunJW"}}, {_id:881, properties:{name:"HuntJ", id:"HuntJ"}}, {_id:882, properties:{name:"CoulsonEJ", id:"CoulsonEJ"}}, {_id:883, properties:{name:"RajnarayananR", id:"RajnarayananR"}}, {_id:884, properties:{name:"OsterH", id:"OsterH"}}, {_id:885, properties:{name:"VidenovicA", id:"VidenovicA"}}, {_id:886, properties:{name:"RawashdehO", id:"RawashdehO"}}, {_id:1009, properties:{name:"TirassaPaola", id:"TirassaPaola"}}, {_id:1010, properties:{name:"SchirinziTommaso", id:"SchirinziTommaso"}}, {_id:1011, properties:{name:"RaspaMarcello", id:"RaspaMarcello"}}, {_id:1012, properties:{name:"RalliMassimo", id:"RalliMassimo"}}, {_id:1013, properties:{name:"GrecoAntonio", id:"GrecoAntonio"}}, {_id:1014, properties:{name:"PolimeniAntonella", id:"PolimeniAntonella"}}, {_id:1015, properties:{name:"PossentiRoberta", id:"PossentiRoberta"}}, {_id:1016, properties:{name:"MercuriNicolaBiagio", id:"MercuriNicolaBiagio"}}, {_id:1017, properties:{name:"SeveriniCinzia", id:"SeveriniCinzia"}}, {_id:1018, properties:{name:"TitovaN", id:"TitovaN"}}, {_id:1019, properties:{name:"TysnesOB", id:"TysnesOB"}}, {_id:1020, properties:{name:"StorsteinA", id:"StorsteinA"}}, {_id:1021, properties:{name:"MüllerB", id:"MüllerB"}}, {_id:1022, properties:{name:"LarsenJP", id:"LarsenJP"}}, {_id:1023, properties:{name:"UmemotoG", id:"UmemotoG"}}, {_id:1024, properties:{name:"FuruyaH", id:"FuruyaH"}}, {_id:1025, properties:{name:"ValeriaDFelice", id:"ValeriaDFelice"}}, {_id:1026, properties:{name:"QuigleyAM", id:"QuigleyAM"}}, {_id:1027, properties:{name:"SullivanG", id:"SullivanG"}}, {_id:1028, properties:{name:"O’KeeffeW", id:"O’KeeffeW"}}, {_id:1029, properties:{name:"M.O.’MahonySM", id:"M.O.’MahonySM"}}, {_id:1031, properties:{name:"CozzolinoPerson", id:"CozzolinoPerson"}}, {_id:1032, properties:{name:"LongoPerson", id:"LongoPerson"}}, {_id:1033, properties:{name:"PicilloPerson", id:"PicilloPerson"}}, {_id:1034, properties:{name:"MocciaPerson", id:"MocciaPerson"}}, {_id:1035, properties:{name:"AgostiPerson", id:"AgostiPerson"}}, {_id:1036, properties:{name:"SorrentinoPerson", id:"SorrentinoPerson"}}, {_id:1037, properties:{name:"CavalierePerson", id:"CavalierePerson"}}, {_id:1038, properties:{name:"MarcianoPerson", id:"MarcianoPerson"}}, {_id:1039, properties:{name:"BaronePerson", id:"BaronePerson"}}, {_id:1041, properties:{name:"ChenPerson", id:"ChenPerson"}}, {_id:1641, properties:{name:"ProfHuwRMorris", id:"ProfHuwRMorris"}}, {_id:1642, properties:{name:"ProfCM Sue", id:"ProfCM Sue"}}, {_id:1643, properties:{name:"ProfCHWilliamsGray", id:"ProfCHWilliamsGray"}}, {_id:1644, properties:{name:"ProfMGSpillantini", id:"ProfMGSpillantini"}}, {_id:1657, properties:{name:"FredericLewy", id:"FredericLewy"}}, {_id:1767, properties:{name:"WilliamSchollProfessor", id:"WilliamSchollProfessor"}}, {_id:1951, properties:{name:"EspayAlbertoJ", id:"EspayAlbertoJ"}}, {_id:1952, properties:{name:"LeesAndrewJ", id:"LeesAndrewJ"}}, {_id:2143, properties:{name:"MeisnerR", id:"MeisnerR"}}, {_id:2144, properties:{name:"DiazD", id:"DiazD"}}, {_id:2145, properties:{name:"SolanoyH", id:"SolanoyH"}}, {_id:2146, properties:{name:"WangX", id:"WangX"}}, {_id:2147, properties:{name:"NegrouE", id:"NegrouE"}}, {_id:2148, properties:{name:"BonderVV", id:"BonderVV"}}, {_id:2149, properties:{name:"JenningsD", id:"JenningsD"}}, {_id:2150, properties:{name:"HuntworkRodriguezS", id:"HuntworkRodriguezS"}}, {_id:2151, properties:{name:"VissersMFJM", id:"VissersMFJM"}}, {_id:2152, properties:{name:"DaryaniVM", id:"DaryaniVM"}}, {_id:2153, properties:{name:"GooMS", id:"GooMS"}}, {_id:2154, properties:{name:"ChenJJ", id:"ChenJJ"}}, {_id:2155, properties:{name:"MaciucaR", id:"MaciucaR"}}, {_id:2156, properties:{name:"FraserK", id:"FraserK"}}, {_id:2157, properties:{name:"MabroukOS", id:"MabroukOS"}}, {_id:2158, properties:{name:"JunkerJ", id:"JunkerJ"}}, {_id:2159, properties:{name:"LangeLM", id:"LangeLM"}}, {_id:2160, properties:{name:"VollstedtEJ", id:"VollstedtEJ"}}, {_id:2161, properties:{name:"RoopnarainK", id:"RoopnarainK"}}, {_id:2162, properties:{name:"DoqueniaMLM", id:"DoqueniaMLM"}}, {_id:2163, properties:{name:"AnnuarAA", id:"AnnuarAA"}}, {_id:2164, properties:{name:"AvenaliM", id:"AvenaliM"}}, {_id:2165, properties:{name:"BardienS", id:"BardienS"}}, {_id:2166, properties:{name:"BahrN", id:"BahrN"}}, {_id:2167, properties:{name:"EllisM", id:"EllisM"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Person;
UNWIND [{_id:1987, properties:{name:"AJSporadicParkinsonDisease", id:"AJSporadicParkinsonDisease"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ResearchArticle;
UNWIND [{_id:756, properties:{name:"Melatonin", id:"Melatonin"}}, {_id:1735, properties:{name:"TGFB1", id:"TGFB1"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Hormone;
UNWIND [{_id:1977, properties:{name:"VulnerableNeurons", id:"VulnerableNeurons"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BiologicalStructure;
UNWIND [{_id:91, properties:{name:"T2Relaxometry", id:"T2Relaxometry"}}, {_id:92, properties:{name:"MRI", id:"MRI"}}, {_id:126, properties:{name:"PETMethod", id:"PETMethod"}}, {_id:127, properties:{name:"SPECTMethod", id:"SPECTMethod"}}, {_id:351, properties:{name:"ConventionalMethods", id:"ConventionalMethods"}}, {_id:359, properties:{name:"MachineLearning", id:"MachineLearning"}}, {_id:1898, properties:{name:"BraakStaging", id:"BraakStaging"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Method;
UNWIND [{_id:195, properties:{name:"NoroPsikyatrArs2017", id:"NoroPsikyatrArs2017"}}, {_id:196, properties:{name:"MunhozEtAl2024", id:"MunhozEtAl2024"}}, {_id:197, properties:{name:"deKlerkEtAl2024", id:"deKlerkEtAl2024"}}, {_id:395, properties:{name:"GuevremontPaper", id:"GuevremontPaper"}}, {_id:396, properties:{name:"RoyPaper", id:"RoyPaper"}}, {_id:397, properties:{name:"CutfieldPaper", id:"CutfieldPaper"}}, {_id:398, properties:{name:"WilliamsPaper", id:"WilliamsPaper"}}, {_id:399, properties:{name:"ShaheenPaper1", id:"ShaheenPaper1"}}, {_id:400, properties:{name:"ShaheenPaper2", id:"ShaheenPaper2"}}, {_id:401, properties:{name:"OsamaPaper", id:"OsamaPaper"}}, {_id:402, properties:{name:"NashwanPaper", id:"NashwanPaper"}}, {_id:403, properties:{name:"BharmauriaPaper", id:"BharmauriaPaper"}}, {_id:404, properties:{name:"FloutyPaper", id:"FloutyPaper"}}, {_id:405, properties:{name:"LiPaper", id:"LiPaper"}}, {_id:406, properties:{name:"CaoPaper", id:"CaoPaper"}}, {_id:407, properties:{name:"LiuPaper1", id:"LiuPaper1"}}, {_id:408, properties:{name:"LiuPaper2", id:"LiuPaper2"}}, {_id:409, properties:{name:"ChenPaper", id:"ChenPaper"}}, {_id:410, properties:{name:"ZhangPaper", id:"ZhangPaper"}}, {_id:411, properties:{name:"ZhouPaper", id:"ZhouPaper"}}, {_id:412, properties:{name:"ZhaoPaper", id:"ZhaoPaper"}}, {_id:413, properties:{name:"LuoPaper", id:"LuoPaper"}}, {_id:414, properties:{name:"WuPaper", id:"WuPaper"}}, {_id:624, properties:{name:"JournalNode", id:"JournalNode"}}, {_id:892, properties:{name:"KaliaLangPaper", id:"KaliaLangPaper"}}, {_id:1753, properties:{name:"BritishMedicalJournal", id:"BritishMedicalJournal"}}, {_id:1983, properties:{name:"NeurologyJournal", id:"NeurologyJournal"}}, {_id:1984, properties:{name:"MolTherJournal", id:"MolTherJournal"}}, {_id:1985, properties:{name:"FrontierNeurosciJournal", id:"FrontierNeurosciJournal"}}, {_id:1986, properties:{name:"FrontierMolNeurosciJournal", id:"FrontierMolNeurosciJournal"}}, {_id:1997, properties:{name:"JACCStateOfTheArtReview", id:"JACCStateOfTheArtReview"}}, {_id:2017, properties:{name:"KastenEtAl2018", id:"KastenEtAl2018"}}, {_id:2018, properties:{name:"KleinEtAl2018", id:"KleinEtAl2018"}}, {_id:2019, properties:{name:"TrinhEtAl2018", id:"TrinhEtAl2018"}}, {_id:2020, properties:{name:"WittkeEtAl2021", id:"WittkeEtAl2021"}}, {_id:2021, properties:{name:"VollstedtEtAl2019", id:"VollstedtEtAl2019"}}, {_id:2022, properties:{name:"VollstedtEtAl2023a", id:"VollstedtEtAl2023a"}}, {_id:2023, properties:{name:"VollstedtEtAl2023b", id:"VollstedtEtAl2023b"}}, {_id:2024, properties:{name:"TanEtAl2021", id:"TanEtAl2021"}}, {_id:2025, properties:{name:"SchumacherSchuhEtAl2022", id:"SchumacherSchuhEtAl2022"}}, {_id:2026, properties:{name:"RizigEtAl2023", id:"RizigEtAl2023"}}, {_id:2027, properties:{name:"LangeEtAl2023", id:"LangeEtAl2023"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Publication;
UNWIND [{_id:2048, properties:{name:"MisfoldedProteins", id:"MisfoldedProteins"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:MolecularEntity;
UNWIND [{_id:1763, properties:{name:"UniversityCollegeLondon", id:"UniversityCollegeLondon"}}, {_id:1764, properties:{name:"CambridgeUniversity", id:"CambridgeUniversity"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:EducationalInstitution;
UNWIND [{_id:1887, properties:{name:"CerebrospinalFluid", id:"CerebrospinalFluid"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Substance;
UNWIND [{_id:35, properties:{name:"MotorDysfunction", id:"MotorDysfunction"}}, {_id:36, properties:{name:"AutonomicDysfunction", id:"AutonomicDysfunction"}}, {_id:37, properties:{name:"CognitiveImpairment", id:"CognitiveImpairment"}}, {_id:38, properties:{name:"SleepDisturbances", id:"SleepDisturbances"}}, {_id:39, properties:{name:"MoodDisorders", id:"MoodDisorders"}}, {_id:618, properties:{name:"PremotorSymptoms", id:"PremotorSymptoms"}}, {_id:619, properties:{name:"NonmotorSymptoms", id:"NonmotorSymptoms"}}, {_id:620, properties:{name:"MotorSymptoms", id:"MotorSymptoms"}}, {_id:633, properties:{name:"Hyposmia", id:"Hyposmia"}}, {_id:640, properties:{name:"NonMotorSymptoms", id:"NonMotorSymptoms"}}, {_id:641, properties:{name:"AutonomicSymptoms", id:"AutonomicSymptoms"}}, {_id:643, properties:{name:"EDS", id:"EDS"}}, {_id:644, properties:{name:"RBD", id:"RBD"}}, {_id:649, properties:{name:"Bradykinesia", id:"Bradykinesia"}}, {_id:650, properties:{name:"Tremor", id:"Tremor"}}, {_id:651, properties:{name:"Rigidity", id:"Rigidity"}}, {_id:652, properties:{name:"Dysphagia", id:"Dysphagia"}}, {_id:653, properties:{name:"WeightLoss", id:"WeightLoss"}}, {_id:668, properties:{name:"Apathy", id:"Apathy"}}, {_id:669, properties:{name:"Dysexecutive disorder", id:"Dysexecutive disorder"}}, {_id:671, properties:{name:"Visual hallucinations", id:"Visual hallucinations"}}, {_id:672, properties:{name:"Minor hallucinatory phenomena", id:"Minor hallucinatory phenomena"}}, {_id:673, properties:{name:"Delusions", id:"Delusions"}}, {_id:674, properties:{name:"Illusions", id:"Illusions"}}, {_id:675, properties:{name:"Hallucinations", id:"Hallucinations"}}, {_id:720, properties:{name:"Constipation", id:"Constipation"}}, {_id:721, properties:{name:"FecalIncontinence", id:"FecalIncontinence"}}, {_id:722, properties:{name:"Nausea", id:"Nausea"}}, {_id:723, properties:{name:"Vomiting", id:"Vomiting"}}, {_id:724, properties:{name:"Dyspepsia", id:"Dyspepsia"}}, {_id:725, properties:{name:"SleepDisorders", id:"SleepDisorders"}}, {_id:726, properties:{name:"Insomnia", id:"Insomnia"}}, {_id:781, properties:{name:"MotorFluctuations", id:"MotorFluctuations"}}, {_id:782, properties:{name:"MorningDystonia", id:"MorningDystonia"}}, {_id:792, properties:{name:"Paresthesia", id:"Paresthesia"}}, {_id:793, properties:{name:"Numbness", id:"Numbness"}}, {_id:796, properties:{name:"Stiffness", id:"Stiffness"}}, {_id:800, properties:{name:"PainfulShoulder", id:"PainfulShoulder"}}, {_id:806, properties:{name:"PosturalInstability", id:"PosturalInstability"}}, {_id:807, properties:{name:"GaitDisorders", id:"GaitDisorders"}}, {_id:818, properties:{name:"Anxiety", id:"Anxiety"}}, {_id:819, properties:{name:"Depression", id:"Depression"}}, {_id:894, properties:{name:"OrthostaticHypotension", id:"OrthostaticHypotension"}}, {_id:956, properties:{name:"Fatigue", id:"Fatigue"}}, {_id:957, properties:{name:"GastricMotorDysfunction", id:"GastricMotorDysfunction"}}, {_id:958, properties:{name:"NonMotorSigns", id:"NonMotorSigns"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Symptom;
UNWIND [{_id:83, properties:{name:"NoradrenergicNerve", id:"NoradrenergicNerve"}}, {_id:141, properties:{name:"WholeBrainWhiteMatter", id:"WholeBrainWhiteMatter"}}, {_id:142, properties:{name:"SubstantiaNigra", id:"SubstantiaNigra"}}, {_id:147, properties:{name:"Nigrosome1", id:"Nigrosome1"}}, {_id:148, properties:{name:"SN", id:"SN"}}, {_id:519, properties:{name:"Centrioles", id:"Centrioles"}}, {_id:520, properties:{name:"Microtubules", id:"Microtubules"}}, {_id:564, properties:{name:"SNpc", id:"SNpc"}}, {_id:604, properties:{name:"PrimaryCilia", id:"PrimaryCilia"}}, {_id:625, properties:{name:"GastricMyentericPlexus", id:"GastricMyentericPlexus"}}, {_id:626, properties:{name:"SubmucosalPlexus", id:"SubmucosalPlexus"}}, {_id:627, properties:{name:"VagusNerve", id:"VagusNerve"}}, {_id:628, properties:{name:"CentralNervousSystem", id:"CentralNervousSystem"}}, {_id:629, properties:{name:"DorsalMotorNucleusOfTheVagusNerve", id:"DorsalMotorNucleusOfTheVagusNerve"}}, {_id:735, properties:{name:"BasalGanglia", id:"BasalGanglia"}}, {_id:1661, properties:{name:"LewyBody", id:"LewyBody"}}, {_id:1669, properties:{name:"MitochondrialComplexI", id:"MitochondrialComplexI"}}, {_id:1677, properties:{name:"MitochondriaNode", id:"MitochondriaNode"}}, {_id:2047, properties:{name:"Mitochondria", id:"Mitochondria"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Structure;
UNWIND [{_id:221, properties:{name:"BiomarkersDefinitionsWorkingGroup", id:"BiomarkersDefinitionsWorkingGroup"}}, {_id:1631, properties:{name:"QueenSquareInstituteOfNeurology", id:"QueenSquareInstituteOfNeurology"}}, {_id:1632, properties:{name:"UniversityCollegeLondon", id:"UniversityCollegeLondon"}}, {_id:1633, properties:{name:"DepartmentOfClinicalAndMovementNeurosciences", id:"DepartmentOfClinicalAndMovementNeurosciences"}}, {_id:1634, properties:{name:"UniversityOfCambridge", id:"UniversityOfCambridge"}}, {_id:1635, properties:{name:"FacultyOfMedicine", id:"FacultyOfMedicine"}}, {_id:1636, properties:{name:"UniversityOfNewSouthWales", id:"UniversityOfNewSouthWales"}}, {_id:1637, properties:{name:"JohnVanGeestCentreForBrainRepair", id:"JohnVanGeestCentreForBrainRepair"}}, {_id:1638, properties:{name:"SydneyLocalHealthDistrict", id:"SydneyLocalHealthDistrict"}}, {_id:1639, properties:{name:"AligningScienceAcrossParkinsonsCollaborativeResearchNetwork", id:"AligningScienceAcrossParkinsonsCollaborativeResearchNetwork"}}, {_id:1640, properties:{name:"NeuroscienceResearchAustralia", id:"NeuroscienceResearchAustralia"}}, {_id:1755, properties:{name:"MovementDisorderSociety", id:"MovementDisorderSociety"}}, {_id:1765, properties:{name:"Wellcome", id:"Wellcome"}}, {_id:1768, properties:{name:"SchollFoundation", id:"SchollFoundation"}}, {_id:1769, properties:{name:"CambridgeUniversity", id:"CambridgeUniversity"}}, {_id:1770, properties:{name:"WellcomeTrust", id:"WellcomeTrust"}}, {_id:1772, properties:{name:"InstituteSanRaffaele", id:"InstituteSanRaffaele"}}, {_id:1773, properties:{name:"TauConsortium", id:"TauConsortium"}}, {_id:1774, properties:{name:"QatarBiomedicalResearchInstitute", id:"QatarBiomedicalResearchInstitute"}}, {_id:1775, properties:{name:"FondazioneDonGnocchi", id:"FondazioneDonGnocchi"}}, {_id:1776, properties:{name:"Eurac", id:"Eurac"}}, {_id:1777, properties:{name:"EuropeanBrainResearchInstitute", id:"EuropeanBrainResearchInstitute"}}, {_id:1781, properties:{name:"ParkinsonsUK", id:"ParkinsonsUK"}}, {_id:1782, properties:{name:"MJFF", id:"MJFF"}}, {_id:1783, properties:{name:"BiotechnologyAndBiologicalSciencesResearchCouncil", id:"BiotechnologyAndBiologicalSciencesResearchCouncil"}}, {_id:1784, properties:{name:"FondationDeLaRechercheAlzheimer", id:"FondationDeLaRechercheAlzheimer"}}, {_id:1785, properties:{name:"AlzheimersResearchUK", id:"AlzheimersResearchUK"}}, {_id:1786, properties:{name:"MedicalResearchCouncil", id:"MedicalResearchCouncil"}}, {_id:1787, properties:{name:"BillAndMelindaGatesFoundation", id:"BillAndMelindaGatesFoundation"}}, {_id:1788, properties:{name:"SouthEasternSydneyLocalHealthDistrict", id:"SouthEasternSydneyLocalHealthDistrict"}}, {_id:1789, properties:{name:"NHMRC", id:"NHMRC"}}, {_id:1790, properties:{name:"MedicalResearchFuturesFund", id:"MedicalResearchFuturesFund"}}, {_id:1791, properties:{name:"TaiwanMovementDisorderSociety", id:"TaiwanMovementDisorderSociety"}}, {_id:1794, properties:{name:"WorldParkinsonCongress", id:"WorldParkinsonCongress"}}, {_id:1798, properties:{name:"CambridgeCentreForParkinsonPlus", id:"CambridgeCentreForParkinsonPlus"}}, {_id:1967, properties:{name:"MichaelJFoxFoundation", id:"MichaelJFoxFoundation"}}, {_id:1968, properties:{name:"NIH", id:"NIH"}}, {_id:2286, properties:{name:"ColdSpringHarborLaboratory", id:"ColdSpringHarborLaboratory"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Organization;
UNWIND [{_id:64, properties:{name:"UricAcidBiomarker", id:"UricAcidBiomarker"}}, {_id:66, properties:{name:"8-OHdGMarker", id:"8-OHdGMarker"}}, {_id:67, properties:{name:"Aβ42Marker", id:"Aβ42Marker"}}, {_id:182, properties:{name:"DopaminergicSystem", id:"DopaminergicSystem"}}, {_id:230, properties:{name:"GFAPBiomarkerForConversionToDementiaAndAlzheimersDisease", id:"GFAPBiomarkerForConversionToDementiaAndAlzheimersDisease"}}, {_id:1878, properties:{name:"SalivaryAlphaSynucleinRTQuIC", id:"SalivaryAlphaSynucleinRTQuIC"}}, {_id:1879, properties:{name:"SerumFGF21", id:"SerumFGF21"}}, {_id:1880, properties:{name:"SerumGDF15", id:"SerumGDF15"}}, {_id:1881, properties:{name:"BloodMtDNACopyNumber", id:"BloodMtDNACopyNumber"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Biomarker;
UNWIND [{_id:57, properties:{name:"HealthyControl", id:"HealthyControl"}}, {_id:137, properties:{name:"HealthyControls", id:"HealthyControls"}}, {_id:707, properties:{name:"MultidisciplinaryTeam", id:"MultidisciplinaryTeam"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Group;
UNWIND [{_id:816, properties:{name:"Microbiota", id:"Microbiota"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BiologicalEntity;
UNWIND [{_id:960, properties:{name:"GutBrainAxis", id:"GutBrainAxis"}}, {_id:1905, properties:{name:"PrionLikeHypothesis", id:"PrionLikeHypothesis"}}, {_id:1950, properties:{name:"SynucleinopeniaHypothesis", id:"SynucleinopeniaHypothesis"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Theory;
UNWIND [{_id:2010, properties:{name:"LewyBodyPathology", id:"LewyBodyPathology"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Neuropathology;
UNWIND [{_id:1904, properties:{name:"BraakStaging", id:"BraakStaging"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Methodology;
UNWIND [{_id:229, properties:{name:"OrexinsRoleInNeurodegenerativeDiseases", id:"OrexinsRoleInNeurodegenerativeDiseases"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Research;
UNWIND [{_id:2009, properties:{name:"GeneticTestingPractices", id:"GeneticTestingPractices"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Practice;
UNWIND [{_id:548, properties:{name:"DCP12Complex", id:"DCP12Complex"}}, {_id:1803, properties:{name:"NSLComplex", id:"NSLComplex"}}, {_id:2044, properties:{name:"RetromerComplex", id:"RetromerComplex"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Complex;
UNWIND [{_id:1973, properties:{name:"ExtrapyramidalSymptoms", id:"ExtrapyramidalSymptoms"}}, {_id:1974, properties:{name:"Dementia", id:"Dementia"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ClinicalFeature;
UNWIND [{_id:525, properties:{name:"LewyBody", id:"LewyBody"}}, {_id:526, properties:{name:"TauInclusion", id:"TauInclusion"}}, {_id:1618, properties:{name:"LewyBodies", id:"LewyBodies"}}, {_id:1972, properties:{name:"AlphaSynucleinPathology", id:"AlphaSynucleinPathology"}}, {_id:1976, properties:{name:"LewyPathology", id:"LewyPathology"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:PathologicalFeature;
UNWIND [{_id:603, properties:{name:"SonicHedgehog", id:"SonicHedgehog"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:SignalingMolecule;
UNWIND [{_id:699, properties:{name:"LewyPathology", id:"LewyPathology"}}, {_id:820, properties:{name:"SerotonergicDegeneration", id:"SerotonergicDegeneration"}}, {_id:1724, properties:{name:"MitochondrialMechanism", id:"MitochondrialMechanism"}}, {_id:1725, properties:{name:"LysosomalMechanism", id:"LysosomalMechanism"}}, {_id:1726, properties:{name:"ImmuneMechanism", id:"ImmuneMechanism"}}, {_id:1931, properties:{name:"Seeding", id:"Seeding"}}, {_id:1932, properties:{name:"Heterogeneous nucleation", id:"Heterogeneous nucleation"}}, {_id:1933, properties:{name:"Homogenous nucleation", id:"Homogenous nucleation"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Mechanism;
UNWIND [{_id:677, properties:{name:"ε2 allele", id:"ε2 allele"}}, {_id:678, properties:{name:"ε3 allele", id:"ε3 allele"}}, {_id:679, properties:{name:"ε4 allele", id:"ε4 allele"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Allele;
UNWIND [{_id:1761, properties:{name:"MedicalResearchCouncil", id:"MedicalResearchCouncil"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:GovernmentAgency;
UNWIND [{_id:481, properties:{name:"GADModel", id:"GADModel"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Model;
UNWIND [{_id:789, properties:{name:"Dopamine", id:"Dopamine"}}, {_id:813, properties:{name:"Serotonin", id:"Serotonin"}}, {_id:814, properties:{name:"Norepinephrine", id:"Norepinephrine"}}, {_id:815, properties:{name:"Acetylcholine", id:"Acetylcholine"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Neurotransmitter;
UNWIND [{_id:521, properties:{name:"Mitochondria", id:"Mitochondria"}}, {_id:1941, properties:{name:"Brain", id:"Brain"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Organ;
UNWIND [{_id:695, properties:{name:"VisualHallucinations", id:"VisualHallucinations"}}, {_id:696, properties:{name:"Abulia", id:"Abulia"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:ClinicalManifestation;
UNWIND [{_id:576, properties:{name:"LewyBodies", id:"LewyBodies"}}, {_id:1659, properties:{name:"LewyNeurites", id:"LewyNeurites"}}, {_id:1660, properties:{name:"GlialCytoplasmicInclusions", id:"GlialCytoplasmicInclusions"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:PathologicalStructure;
UNWIND [{_id:705, properties:{name:"VideofluoroscopicSwallowStudy", id:"VideofluoroscopicSwallowStudy"}}, {_id:706, properties:{name:"FiberopticEndoscopicEvaluationOfSwallowing", id:"FiberopticEndoscopicEvaluationOfSwallowing"}}, {_id:739, properties:{name:"EpworthSleepinessScale", id:"EpworthSleepinessScale"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:AssessmentTool;
UNWIND [{_id:785, properties:{name:"BasalGanglia", id:"BasalGanglia"}}, {_id:786, properties:{name:"Cortex", id:"Cortex"}}, {_id:787, properties:{name:"Thalamus", id:"Thalamus"}}, {_id:788, properties:{name:"SubstantiaNigra", id:"SubstantiaNigra"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:BrainStructure;
UNWIND [{_id:713, properties:{name:"TRENDStudy", id:"TRENDStudy"}}, {_id:714, properties:{name:"PARSStudy", id:"PARSStudy"}}, {_id:1861, properties:{name:"ICICLEPDStudy", id:"ICICLEPDStudy"}}, {_id:1896, properties:{name:"AZAPD", id:"AZAPD"}}, {_id:1923, properties:{name:"BurkeResearch", id:"BurkeResearch"}}, {_id:2108, properties:{name:"PenetranceStudy", id:"PenetranceStudy"}}, {_id:2109, properties:{name:"KinCohortStudy", id:"KinCohortStudy"}}, {_id:2117, properties:{name:"GeneticRiskFactors", id:"GeneticRiskFactors"}}, {_id:2118, properties:{name:"ParkinsonsDiseaseGenetics", id:"ParkinsonsDiseaseGenetics"}}, {_id:2119, properties:{name:"NeuroinflammatoryRole", id:"NeuroinflammatoryRole"}}, {_id:2210, properties:{name:"RostockInternationalParkinsonsDiseaseStudy", id:"RostockInternationalParkinsonsDiseaseStudy"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Study;
UNWIND [{_id:77, properties:{name:"AChE", id:"AChE"}}, {_id:113, properties:{name:"AADCEnzyme", id:"AADCEnzyme"}}, {_id:543, properties:{name:"ATICEnzyme", id:"ATICEnzyme"}}, {_id:544, properties:{name:"AICARFormyltransferase", id:"AICARFormyltransferase"}}, {_id:545, properties:{name:"IMPcyclohydrolase", id:"IMPcyclohydrolase"}}, {_id:550, properties:{name:"ADKKinase", id:"ADKKinase"}}, {_id:1688, properties:{name:"GCaseEnzyme", id:"GCaseEnzyme"}}, {_id:1689, properties:{name:"LysosomalAcidCeramidase", id:"LysosomalAcidCeramidase"}}, {_id:1731, properties:{name:"Gcase", id:"Gcase"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Enzyme;
UNWIND [{_id:615, properties:{name:"Lysosomes", id:"Lysosomes"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:CellularStructure;
UNWIND [{_id:1858, properties:{name:"Mitochondria", id:"Mitochondria"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:`Organismal Structure`;
UNWIND [{_id:646, properties:{name:"Constipation", id:"Constipation"}}, {_id:647, properties:{name:"Anosmia", id:"Anosmia"}}, {_id:648, properties:{name:"Malabsorption", id:"Malabsorption"}}, {_id:730, properties:{name:"Insomnia", id:"Insomnia"}}, {_id:731, properties:{name:"Depression", id:"Depression"}}, {_id:732, properties:{name:"SleepFragmentation", id:"SleepFragmentation"}}] AS row
CREATE (n:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row._id}) SET n += row.properties SET n:Disorder;
UNWIND [{start: {_id:30}, end: {_id:50}, properties:{}}, {start: {_id:30}, end: {_id:55}, properties:{}}, {start: {_id:30}, end: {_id:439}, properties:{}}, {start: {_id:30}, end: {_id:440}, properties:{}}, {start: {_id:30}, end: {_id:441}, properties:{}}, {start: {_id:30}, end: {_id:442}, properties:{}}, {start: {_id:30}, end: {_id:443}, properties:{}}, {start: {_id:30}, end: {_id:454}, properties:{}}, {start: {_id:30}, end: {_id:479}, properties:{}}, {start: {_id:30}, end: {_id:482}, properties:{}}, {start: {_id:30}, end: {_id:484}, properties:{}}, {start: {_id:30}, end: {_id:518}, properties:{}}, {start: {_id:30}, end: {_id:522}, properties:{}}, {start: {_id:30}, end: {_id:546}, properties:{}}, {start: {_id:30}, end: {_id:580}, properties:{}}, {start: {_id:30}, end: {_id:581}, properties:{}}, {start: {_id:30}, end: {_id:582}, properties:{}}, {start: {_id:30}, end: {_id:584}, properties:{}}, {start: {_id:30}, end: {_id:585}, properties:{}}, {start: {_id:30}, end: {_id:599}, properties:{}}, {start: {_id:30}, end: {_id:600}, properties:{}}, {start: {_id:30}, end: {_id:608}, properties:{}}, {start: {_id:30}, end: {_id:1311}, properties:{}}, {start: {_id:30}, end: {_id:2040}, properties:{}}, {start: {_id:159}, end: {_id:50}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:439}, properties:{}}, {start: {_id:30}, end: {_id:441}, properties:{}}, {start: {_id:30}, end: {_id:442}, properties:{}}, {start: {_id:30}, end: {_id:443}, properties:{}}, {start: {_id:30}, end: {_id:450}, properties:{}}, {start: {_id:30}, end: {_id:454}, properties:{}}, {start: {_id:30}, end: {_id:455}, properties:{}}, {start: {_id:30}, end: {_id:462}, properties:{}}, {start: {_id:30}, end: {_id:492}, properties:{}}, {start: {_id:30}, end: {_id:493}, properties:{}}, {start: {_id:30}, end: {_id:494}, properties:{}}, {start: {_id:30}, end: {_id:495}, properties:{}}, {start: {_id:30}, end: {_id:496}, properties:{}}, {start: {_id:30}, end: {_id:497}, properties:{}}, {start: {_id:30}, end: {_id:498}, properties:{}}, {start: {_id:30}, end: {_id:499}, properties:{}}, {start: {_id:30}, end: {_id:500}, properties:{}}, {start: {_id:30}, end: {_id:517}, properties:{}}, {start: {_id:30}, end: {_id:560}, properties:{}}, {start: {_id:30}, end: {_id:593}, properties:{}}, {start: {_id:30}, end: {_id:602}, properties:{}}, {start: {_id:159}, end: {_id:560}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PHOSPHORYLATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:635}, properties:{}}, {start: {_id:0}, end: {_id:637}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1663}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES]->(end) SET r += row.properties;
UNWIND [{start: {_id:666}, end: {_id:664}, properties:{}}, {start: {_id:687}, end: {_id:0}, properties:{}}, {start: {_id:688}, end: {_id:0}, properties:{}}, {start: {_id:688}, end: {_id:116}, properties:{}}, {start: {_id:711}, end: {_id:0}, properties:{}}, {start: {_id:737}, end: {_id:0}, properties:{}}, {start: {_id:737}, end: {_id:43}, properties:{}}, {start: {_id:754}, end: {_id:116}, properties:{}}, {start: {_id:755}, end: {_id:116}, properties:{}}, {start: {_id:971}, end: {_id:972}, properties:{}}, {start: {_id:981}, end: {_id:982}, properties:{}}, {start: {_id:990}, end: {_id:994}, properties:{}}, {start: {_id:1743}, end: {_id:1749}, properties:{}}, {start: {_id:1748}, end: {_id:1749}, properties:{}}, {start: {_id:1889}, end: {_id:0}, properties:{}}, {start: {_id:1890}, end: {_id:0}, properties:{}}, {start: {_id:1891}, end: {_id:0}, properties:{}}, {start: {_id:1892}, end: {_id:0}, properties:{}}, {start: {_id:1893}, end: {_id:0}, properties:{}}, {start: {_id:1894}, end: {_id:0}, properties:{}}, {start: {_id:1895}, end: {_id:0}, properties:{}}, {start: {_id:1989}, end: {_id:23}, properties:{}}, {start: {_id:1990}, end: {_id:23}, properties:{}}, {start: {_id:2096}, end: {_id:0}, properties:{}}, {start: {_id:2097}, end: {_id:2095}, properties:{}}, {start: {_id:2098}, end: {_id:2095}, properties:{}}, {start: {_id:2100}, end: {_id:0}, properties:{}}, {start: {_id:2100}, end: {_id:2095}, properties:{}}, {start: {_id:2101}, end: {_id:2095}, properties:{}}, {start: {_id:2102}, end: {_id:2095}, properties:{}}, {start: {_id:2207}, end: {_id:0}, properties:{}}, {start: {_id:2209}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:8}, end: {_id:735}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS_SENSORIAL_PERCEPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:451}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_DEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:82}, end: {_id:85}, properties:{}}, {start: {_id:84}, end: {_id:85}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:1923}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:30}, properties:{}}, {start: {_id:158}, end: {_id:158}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_ENDO_LYSSOMAL_FUNCTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:648}, end: {_id:652}, properties:{}}, {start: {_id:648}, end: {_id:653}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1662}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1652}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2282}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES]->(end) SET r += row.properties;
UNWIND [{start: {_id:803}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MISDIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1711}, end: {_id:1712}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONNECTED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1609}, properties:{}}, {start: {_id:0}, end: {_id:1610}, properties:{}}, {start: {_id:0}, end: {_id:1611}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:50}, end: {_id:610}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:737}, properties:{}}, {start: {_id:778}, end: {_id:738}, properties:{}}, {start: {_id:778}, end: {_id:811}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:338}, end: {_id:339}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:700}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1855}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:616}, end: {_id:0}, properties:{}}, {start: {_id:617}, end: {_id:0}, properties:{}}, {start: {_id:850}, end: {_id:0}, properties:{}}, {start: {_id:851}, end: {_id:0}, properties:{}}, {start: {_id:852}, end: {_id:0}, properties:{}}, {start: {_id:853}, end: {_id:0}, properties:{}}, {start: {_id:854}, end: {_id:0}, properties:{}}, {start: {_id:855}, end: {_id:0}, properties:{}}, {start: {_id:856}, end: {_id:0}, properties:{}}, {start: {_id:857}, end: {_id:0}, properties:{}}, {start: {_id:878}, end: {_id:0}, properties:{}}, {start: {_id:879}, end: {_id:0}, properties:{}}, {start: {_id:880}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:32}, properties:{}}, {start: {_id:0}, end: {_id:33}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:89}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:713}, end: {_id:0}, properties:{}}, {start: {_id:714}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1606}, properties:{}}, {start: {_id:778}, end: {_id:1991}, properties:{}}, {start: {_id:778}, end: {_id:1992}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:144}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_ANALYZE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:676}, end: {_id:677}, properties:{}}, {start: {_id:676}, end: {_id:678}, properties:{}}, {start: {_id:676}, end: {_id:679}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:HAS_ALLELE]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1977}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:632}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:847}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMORBID_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:777}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RISK_FACTOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:808}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:84}, properties:{}}, {start: {_id:0}, end: {_id:94}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:156}, end: {_id:43}, properties:{}}, {start: {_id:156}, end: {_id:157}, properties:{}}, {start: {_id:365}, end: {_id:0}, properties:{}}, {start: {_id:366}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:466}, end: {_id:2105}, properties:{}}, {start: {_id:467}, end: {_id:2105}, properties:{}}, {start: {_id:563}, end: {_id:0}, properties:{}}, {start: {_id:1948}, end: {_id:1995}, properties:{}}, {start: {_id:1993}, end: {_id:1994}, properties:{}}, {start: {_id:2096}, end: {_id:2095}, properties:{}}, {start: {_id:2104}, end: {_id:0}, properties:{}}, {start: {_id:2106}, end: {_id:2105}, properties:{}}, {start: {_id:2107}, end: {_id:2105}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:1858}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_MITOPHAGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:778}, properties:{}}, {start: {_id:932}, end: {_id:716}, properties:{}}, {start: {_id:933}, end: {_id:716}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:248}, end: {_id:257}, properties:{}}, {start: {_id:266}, end: {_id:247}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1951}, end: {_id:1967}, properties:{}}, {start: {_id:1951}, end: {_id:1968}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNDING]->(end) SET r += row.properties;
UNWIND [{start: {_id:616}, end: {_id:778}, properties:{}}, {start: {_id:617}, end: {_id:778}, properties:{}}, {start: {_id:850}, end: {_id:778}, properties:{}}, {start: {_id:851}, end: {_id:778}, properties:{}}, {start: {_id:852}, end: {_id:778}, properties:{}}, {start: {_id:853}, end: {_id:778}, properties:{}}, {start: {_id:854}, end: {_id:778}, properties:{}}, {start: {_id:855}, end: {_id:778}, properties:{}}, {start: {_id:856}, end: {_id:778}, properties:{}}, {start: {_id:857}, end: {_id:778}, properties:{}}, {start: {_id:878}, end: {_id:778}, properties:{}}, {start: {_id:879}, end: {_id:778}, properties:{}}, {start: {_id:880}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:693}, end: {_id:695}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INCREASES_RISK_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1621}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1973}, end: {_id:0}, properties:{}}, {start: {_id:1974}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:0}, properties:{}}, {start: {_id:173}, end: {_id:0}, properties:{}}, {start: {_id:176}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1657}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DISCOVERED]->(end) SET r += row.properties;
UNWIND [{start: {_id:175}, end: {_id:1903}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPOSED_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1998}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:104}, end: {_id:108}, properties:{}}, {start: {_id:105}, end: {_id:111}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:142}, properties:{}}, {start: {_id:0}, end: {_id:735}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:1903}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:2281}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_GENETIC_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:1969}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY_THERAPY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:654}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1858}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:587}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_ACTIVITY_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:629}, end: {_id:638}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INnervates]->(end) SET r += row.properties;
UNWIND [{start: {_id:1031}, end: {_id:1030}, properties:{}}, {start: {_id:1032}, end: {_id:1030}, properties:{}}, {start: {_id:1033}, end: {_id:1030}, properties:{}}, {start: {_id:1034}, end: {_id:1030}, properties:{}}, {start: {_id:1035}, end: {_id:1030}, properties:{}}, {start: {_id:1036}, end: {_id:1030}, properties:{}}, {start: {_id:1037}, end: {_id:1030}, properties:{}}, {start: {_id:1038}, end: {_id:1030}, properties:{}}, {start: {_id:1039}, end: {_id:1030}, properties:{}}, {start: {_id:1041}, end: {_id:1040}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AUTHOR_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:2282}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:164}, properties:{}}, {start: {_id:30}, end: {_id:468}, properties:{}}, {start: {_id:30}, end: {_id:469}, properties:{}}, {start: {_id:30}, end: {_id:470}, properties:{}}, {start: {_id:30}, end: {_id:505}, properties:{}}, {start: {_id:30}, end: {_id:596}, properties:{}}, {start: {_id:30}, end: {_id:1693}, properties:{}}, {start: {_id:30}, end: {_id:1694}, properties:{}}, {start: {_id:30}, end: {_id:1695}, properties:{}}, {start: {_id:173}, end: {_id:1795}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PHOSPHORYLATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2171}, end: {_id:2172}, properties:{}}, {start: {_id:2171}, end: {_id:2173}, properties:{}}, {start: {_id:2171}, end: {_id:2174}, properties:{}}, {start: {_id:2171}, end: {_id:2175}, properties:{}}, {start: {_id:2171}, end: {_id:2176}, properties:{}}, {start: {_id:2171}, end: {_id:2177}, properties:{}}, {start: {_id:2171}, end: {_id:2178}, properties:{}}, {start: {_id:2171}, end: {_id:2179}, properties:{}}, {start: {_id:2171}, end: {_id:2180}, properties:{}}, {start: {_id:2181}, end: {_id:2182}, properties:{}}, {start: {_id:2181}, end: {_id:2183}, properties:{}}, {start: {_id:2184}, end: {_id:2185}, properties:{}}, {start: {_id:2184}, end: {_id:2186}, properties:{}}, {start: {_id:2184}, end: {_id:2187}, properties:{}}, {start: {_id:2184}, end: {_id:2188}, properties:{}}, {start: {_id:2184}, end: {_id:2189}, properties:{}}, {start: {_id:2194}, end: {_id:2195}, properties:{}}, {start: {_id:2194}, end: {_id:2196}, properties:{}}, {start: {_id:2194}, end: {_id:2197}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COAUTHORED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:344}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USED_TO_STUDY]->(end) SET r += row.properties;
UNWIND [{start: {_id:83}, end: {_id:43}, properties:{}}, {start: {_id:1677}, end: {_id:1678}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:956}, end: {_id:959}, properties:{}}, {start: {_id:957}, end: {_id:959}, properties:{}}, {start: {_id:958}, end: {_id:959}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1733}, properties:{}}, {start: {_id:962}, end: {_id:963}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:159}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:1663}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_MITOPHAGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:405}, end: {_id:415}, properties:{}}, {start: {_id:406}, end: {_id:415}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1661}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:634}, properties:{}}, {start: {_id:778}, end: {_id:757}, properties:{}}, {start: {_id:778}, end: {_id:758}, properties:{}}, {start: {_id:778}, end: {_id:759}, properties:{}}, {start: {_id:778}, end: {_id:1705}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:795}, properties:{}}, {start: {_id:0}, end: {_id:1716}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:426}, properties:{}}, {start: {_id:30}, end: {_id:427}, properties:{}}, {start: {_id:30}, end: {_id:428}, properties:{}}, {start: {_id:30}, end: {_id:431}, properties:{}}, {start: {_id:30}, end: {_id:552}, properties:{}}, {start: {_id:30}, end: {_id:553}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS_DOMAIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1384}, end: {_id:711}, properties:{}}, {start: {_id:1395}, end: {_id:711}, properties:{}}, {start: {_id:2324}, end: {_id:1894}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVESTIGATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1876}, end: {_id:0}, properties:{}}, {start: {_id:1877}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:785}, properties:{}}, {start: {_id:0}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:229}, end: {_id:230}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:713}, end: {_id:778}, properties:{}}, {start: {_id:714}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:30}, properties:{}}, {start: {_id:778}, end: {_id:31}, properties:{}}, {start: {_id:778}, end: {_id:63}, properties:{}}, {start: {_id:778}, end: {_id:158}, properties:{}}, {start: {_id:778}, end: {_id:159}, properties:{}}, {start: {_id:778}, end: {_id:247}, properties:{}}, {start: {_id:778}, end: {_id:249}, properties:{}}, {start: {_id:778}, end: {_id:393}, properties:{}}, {start: {_id:778}, end: {_id:394}, properties:{}}, {start: {_id:778}, end: {_id:925}, properties:{}}, {start: {_id:778}, end: {_id:926}, properties:{}}, {start: {_id:778}, end: {_id:927}, properties:{}}, {start: {_id:778}, end: {_id:928}, properties:{}}, {start: {_id:778}, end: {_id:998}, properties:{}}, {start: {_id:778}, end: {_id:999}, properties:{}}, {start: {_id:778}, end: {_id:1000}, properties:{}}, {start: {_id:778}, end: {_id:1001}, properties:{}}, {start: {_id:778}, end: {_id:1251}, properties:{}}, {start: {_id:778}, end: {_id:1605}, properties:{}}, {start: {_id:778}, end: {_id:1614}, properties:{}}, {start: {_id:778}, end: {_id:1615}, properties:{}}, {start: {_id:778}, end: {_id:1616}, properties:{}}, {start: {_id:778}, end: {_id:1645}, properties:{}}, {start: {_id:778}, end: {_id:1911}, properties:{}}, {start: {_id:778}, end: {_id:1922}, properties:{}}, {start: {_id:778}, end: {_id:2121}, properties:{}}, {start: {_id:1698}, end: {_id:1672}, properties:{}}, {start: {_id:2036}, end: {_id:2038}, properties:{}}, {start: {_id:2037}, end: {_id:2038}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:789}, end: {_id:735}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS_SENSORIAL_PERCEPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:77}, properties:{}}, {start: {_id:30}, end: {_id:543}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:642}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPONENT_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:451}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:1903}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AGGREGATES_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:892}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDYED]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1715}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:785}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:2044}, end: {_id:2277}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:816}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:144}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_IRON_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2094}, end: {_id:172}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DELIVERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:633}, end: {_id:0}, properties:{}}, {start: {_id:644}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:543}, end: {_id:487}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:785}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:906}, end: {_id:791}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RECOMMENDED]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1}, properties:{}}, {start: {_id:0}, end: {_id:2}, properties:{}}, {start: {_id:0}, end: {_id:1666}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:660}, end: {_id:762}, properties:{}}, {start: {_id:660}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:159}, end: {_id:2044}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:73}, end: {_id:74}, properties:{}}, {start: {_id:79}, end: {_id:81}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCATED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:2160}, end: {_id:2168}, properties:{}}, {start: {_id:2160}, end: {_id:2173}, properties:{}}, {start: {_id:2160}, end: {_id:2198}, properties:{}}, {start: {_id:2160}, end: {_id:2199}, properties:{}}, {start: {_id:2160}, end: {_id:2261}, properties:{}}, {start: {_id:2160}, end: {_id:2262}, properties:{}}, {start: {_id:2160}, end: {_id:2263}, properties:{}}, {start: {_id:2160}, end: {_id:2264}, properties:{}}, {start: {_id:2160}, end: {_id:2265}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEAD_AUTHOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:730}, end: {_id:655}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1646}, end: {_id:0}, properties:{}}, {start: {_id:1647}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_MECHANISMS]->(end) SET r += row.properties;
UNWIND [{start: {_id:98}, end: {_id:0}, properties:{}}, {start: {_id:143}, end: {_id:43}, properties:{}}, {start: {_id:236}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:715}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:0}, properties:{}}, {start: {_id:1944}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:948}, end: {_id:955}, properties:{}}, {start: {_id:949}, end: {_id:955}, properties:{}}, {start: {_id:950}, end: {_id:955}, properties:{}}, {start: {_id:951}, end: {_id:955}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ETIOLOGIES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:790}, end: {_id:807}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1926}, end: {_id:1925}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPOSED_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:941}, end: {_id:954}, properties:{}}, {start: {_id:942}, end: {_id:954}, properties:{}}, {start: {_id:943}, end: {_id:954}, properties:{}}, {start: {_id:944}, end: {_id:954}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MANAGES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1631}, end: {_id:1633}, properties:{}}, {start: {_id:1632}, end: {_id:1631}, properties:{}}, {start: {_id:1635}, end: {_id:1636}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:40}, properties:{}}, {start: {_id:0}, end: {_id:56}, properties:{}}, {start: {_id:0}, end: {_id:424}, properties:{}}, {start: {_id:0}, end: {_id:425}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:221}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPED_BIOMARKER]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AGGREGATES_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1688}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:808}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:433}, properties:{}}, {start: {_id:23}, end: {_id:0}, properties:{}}, {start: {_id:2275}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:603}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BLOCKS_SIGNALING]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:8}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:636}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:286}, end: {_id:33}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:764}, end: {_id:778}, properties:{}}, {start: {_id:1718}, end: {_id:778}, properties:{}}, {start: {_id:1722}, end: {_id:778}, properties:{}}, {start: {_id:1723}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1715}, end: {_id:1672}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:576}, properties:{}}, {start: {_id:55}, end: {_id:1659}, properties:{}}, {start: {_id:55}, end: {_id:1660}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPONENT_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:737}, end: {_id:739}, properties:{}}, {start: {_id:738}, end: {_id:739}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1662}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:727}, end: {_id:646}, properties:{}}, {start: {_id:728}, end: {_id:646}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1657}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DISCOVERED]->(end) SET r += row.properties;
UNWIND [{start: {_id:8}, end: {_id:785}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS_SENSORIAL_PERCEPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:52}, properties:{}}, {start: {_id:30}, end: {_id:158}, properties:{}}, {start: {_id:30}, end: {_id:159}, properties:{}}, {start: {_id:30}, end: {_id:173}, properties:{}}, {start: {_id:30}, end: {_id:437}, properties:{}}, {start: {_id:30}, end: {_id:583}, properties:{}}, {start: {_id:30}, end: {_id:586}, properties:{}}, {start: {_id:30}, end: {_id:588}, properties:{}}, {start: {_id:30}, end: {_id:1795}, properties:{}}, {start: {_id:159}, end: {_id:30}, properties:{}}, {start: {_id:177}, end: {_id:159}, properties:{}}, {start: {_id:583}, end: {_id:30}, properties:{}}, {start: {_id:1251}, end: {_id:30}, properties:{}}, {start: {_id:1605}, end: {_id:30}, properties:{}}, {start: {_id:1614}, end: {_id:1615}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:486}, end: {_id:544}, properties:{}}, {start: {_id:486}, end: {_id:545}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_SUBCLASS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:2030}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:525}, end: {_id:0}, properties:{}}, {start: {_id:1976}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:646}, end: {_id:719}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:30}, properties:{}}, {start: {_id:158}, end: {_id:158}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_MITOCHONDRIAL_FUNCTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:756}, end: {_id:115}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1715}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:659}, properties:{}}, {start: {_id:778}, end: {_id:708}, properties:{}}, {start: {_id:778}, end: {_id:709}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:543}, end: {_id:557}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_SUBSTRATE]->(end) SET r += row.properties;
UNWIND [{start: {_id:655}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_DIAGNOSIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:177}, end: {_id:610}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:638}, properties:{}}, {start: {_id:0}, end: {_id:639}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES_IN_GUT_BRAIN_AXIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}, {start: {_id:30}, end: {_id:43}, properties:{}}, {start: {_id:30}, end: {_id:475}, properties:{}}, {start: {_id:30}, end: {_id:2043}, properties:{}}, {start: {_id:31}, end: {_id:0}, properties:{}}, {start: {_id:52}, end: {_id:0}, properties:{}}, {start: {_id:158}, end: {_id:0}, properties:{}}, {start: {_id:158}, end: {_id:43}, properties:{}}, {start: {_id:158}, end: {_id:178}, properties:{}}, {start: {_id:159}, end: {_id:0}, properties:{}}, {start: {_id:160}, end: {_id:0}, properties:{}}, {start: {_id:173}, end: {_id:0}, properties:{}}, {start: {_id:174}, end: {_id:0}, properties:{}}, {start: {_id:176}, end: {_id:0}, properties:{}}, {start: {_id:177}, end: {_id:0}, properties:{}}, {start: {_id:247}, end: {_id:0}, properties:{}}, {start: {_id:257}, end: {_id:0}, properties:{}}, {start: {_id:1911}, end: {_id:0}, properties:{}}, {start: {_id:2011}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:598}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_SUMOYLATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:124}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:960}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1945}, end: {_id:1947}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRANSPORTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2015}, end: {_id:2017}, properties:{}}, {start: {_id:2015}, end: {_id:2018}, properties:{}}, {start: {_id:2015}, end: {_id:2019}, properties:{}}, {start: {_id:2015}, end: {_id:2020}, properties:{}}, {start: {_id:2015}, end: {_id:2021}, properties:{}}, {start: {_id:2015}, end: {_id:2022}, properties:{}}, {start: {_id:2015}, end: {_id:2023}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PUBLISHED_DATA]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:30}, properties:{}}, {start: {_id:0}, end: {_id:122}, properties:{}}, {start: {_id:1927}, end: {_id:1911}, properties:{}}, {start: {_id:1928}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1715}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:605}, properties:{}}, {start: {_id:1795}, end: {_id:605}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:194}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:627}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:56}, properties:{}}, {start: {_id:425}, end: {_id:50}, properties:{}}, {start: {_id:425}, end: {_id:577}, properties:{}}, {start: {_id:425}, end: {_id:1307}, properties:{}}, {start: {_id:425}, end: {_id:1308}, properties:{}}, {start: {_id:425}, end: {_id:1309}, properties:{}}, {start: {_id:425}, end: {_id:1310}, properties:{}}, {start: {_id:425}, end: {_id:1315}, properties:{}}, {start: {_id:425}, end: {_id:1317}, properties:{}}, {start: {_id:560}, end: {_id:561}, properties:{}}, {start: {_id:568}, end: {_id:569}, properties:{}}, {start: {_id:577}, end: {_id:50}, properties:{}}, {start: {_id:577}, end: {_id:493}, properties:{}}, {start: {_id:577}, end: {_id:1307}, properties:{}}, {start: {_id:577}, end: {_id:1308}, properties:{}}, {start: {_id:577}, end: {_id:1309}, properties:{}}, {start: {_id:577}, end: {_id:1310}, properties:{}}, {start: {_id:577}, end: {_id:1311}, properties:{}}, {start: {_id:577}, end: {_id:1314}, properties:{}}, {start: {_id:577}, end: {_id:1317}, properties:{}}, {start: {_id:1307}, end: {_id:50}, properties:{}}, {start: {_id:1307}, end: {_id:2040}, properties:{}}, {start: {_id:1308}, end: {_id:50}, properties:{}}, {start: {_id:1308}, end: {_id:1307}, properties:{}}, {start: {_id:1308}, end: {_id:1313}, properties:{}}, {start: {_id:1309}, end: {_id:50}, properties:{}}, {start: {_id:1309}, end: {_id:1307}, properties:{}}, {start: {_id:1309}, end: {_id:1308}, properties:{}}, {start: {_id:1309}, end: {_id:1310}, properties:{}}, {start: {_id:1309}, end: {_id:1314}, properties:{}}, {start: {_id:1309}, end: {_id:1315}, properties:{}}, {start: {_id:1310}, end: {_id:50}, properties:{}}, {start: {_id:1310}, end: {_id:1307}, properties:{}}, {start: {_id:1310}, end: {_id:1308}, properties:{}}, {start: {_id:1310}, end: {_id:1312}, properties:{}}, {start: {_id:1310}, end: {_id:1317}, properties:{}}, {start: {_id:1311}, end: {_id:50}, properties:{}}, {start: {_id:1311}, end: {_id:493}, properties:{}}, {start: {_id:1311}, end: {_id:1307}, properties:{}}, {start: {_id:1311}, end: {_id:1308}, properties:{}}, {start: {_id:1311}, end: {_id:1309}, properties:{}}, {start: {_id:1311}, end: {_id:1310}, properties:{}}, {start: {_id:1311}, end: {_id:1312}, properties:{}}, {start: {_id:1311}, end: {_id:1313}, properties:{}}, {start: {_id:1311}, end: {_id:1314}, properties:{}}, {start: {_id:1311}, end: {_id:1315}, properties:{}}, {start: {_id:1313}, end: {_id:493}, properties:{}}, {start: {_id:1313}, end: {_id:1307}, properties:{}}, {start: {_id:1314}, end: {_id:50}, properties:{}}, {start: {_id:1314}, end: {_id:493}, properties:{}}, {start: {_id:1314}, end: {_id:1307}, properties:{}}, {start: {_id:1314}, end: {_id:1308}, properties:{}}, {start: {_id:1314}, end: {_id:1310}, properties:{}}, {start: {_id:1314}, end: {_id:1313}, properties:{}}, {start: {_id:1314}, end: {_id:1315}, properties:{}}, {start: {_id:1314}, end: {_id:1317}, properties:{}}, {start: {_id:1315}, end: {_id:493}, properties:{}}, {start: {_id:1315}, end: {_id:1307}, properties:{}}, {start: {_id:1315}, end: {_id:1310}, properties:{}}, {start: {_id:1315}, end: {_id:1312}, properties:{}}, {start: {_id:1315}, end: {_id:1313}, properties:{}}, {start: {_id:1316}, end: {_id:50}, properties:{}}, {start: {_id:1316}, end: {_id:425}, properties:{}}, {start: {_id:1316}, end: {_id:577}, properties:{}}, {start: {_id:1316}, end: {_id:1307}, properties:{}}, {start: {_id:1316}, end: {_id:1308}, properties:{}}, {start: {_id:1316}, end: {_id:1309}, properties:{}}, {start: {_id:1316}, end: {_id:1310}, properties:{}}, {start: {_id:1316}, end: {_id:1311}, properties:{}}, {start: {_id:1316}, end: {_id:1312}, properties:{}}, {start: {_id:1316}, end: {_id:1313}, properties:{}}, {start: {_id:1316}, end: {_id:1314}, properties:{}}, {start: {_id:1316}, end: {_id:1315}, properties:{}}, {start: {_id:1317}, end: {_id:50}, properties:{}}, {start: {_id:1317}, end: {_id:1307}, properties:{}}, {start: {_id:1317}, end: {_id:1308}, properties:{}}, {start: {_id:2040}, end: {_id:55}, properties:{}}, {start: {_id:2040}, end: {_id:1307}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:182}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:113}, end: {_id:68}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:NECESSARY_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:1719}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INFLUENCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:955}, end: {_id:620}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:143}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCUMULATES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1661}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1884}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:NOT_A_BIOMARKER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:229}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1905}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:APPLIES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:564}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:487}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_MRNA_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:810}, end: {_id:0}, properties:{}}, {start: {_id:810}, end: {_id:2105}, properties:{}}, {start: {_id:2112}, end: {_id:0}, properties:{}}, {start: {_id:2113}, end: {_id:0}, properties:{}}, {start: {_id:2114}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:655}, properties:{}}, {start: {_id:778}, end: {_id:764}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:92}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:630}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:627}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXERTS_EFFECT_ON]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:30}, properties:{}}, {start: {_id:1918}, end: {_id:1911}, properties:{}}, {start: {_id:1919}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:562}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpressed_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1858}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:2205}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_MUTATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:816}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2030}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:2115}, end: {_id:2116}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:22}, end: {_id:24}, properties:{}}, {start: {_id:30}, end: {_id:115}, properties:{}}, {start: {_id:30}, end: {_id:778}, properties:{}}, {start: {_id:31}, end: {_id:778}, properties:{}}, {start: {_id:52}, end: {_id:778}, properties:{}}, {start: {_id:63}, end: {_id:778}, properties:{}}, {start: {_id:158}, end: {_id:778}, properties:{}}, {start: {_id:159}, end: {_id:778}, properties:{}}, {start: {_id:160}, end: {_id:778}, properties:{}}, {start: {_id:162}, end: {_id:778}, properties:{}}, {start: {_id:163}, end: {_id:778}, properties:{}}, {start: {_id:169}, end: {_id:778}, properties:{}}, {start: {_id:170}, end: {_id:778}, properties:{}}, {start: {_id:172}, end: {_id:778}, properties:{}}, {start: {_id:173}, end: {_id:778}, properties:{}}, {start: {_id:177}, end: {_id:778}, properties:{}}, {start: {_id:192}, end: {_id:778}, properties:{}}, {start: {_id:393}, end: {_id:778}, properties:{}}, {start: {_id:394}, end: {_id:778}, properties:{}}, {start: {_id:583}, end: {_id:778}, properties:{}}, {start: {_id:692}, end: {_id:778}, properties:{}}, {start: {_id:694}, end: {_id:778}, properties:{}}, {start: {_id:821}, end: {_id:778}, properties:{}}, {start: {_id:823}, end: {_id:778}, properties:{}}, {start: {_id:891}, end: {_id:778}, properties:{}}, {start: {_id:1030}, end: {_id:778}, properties:{}}, {start: {_id:1040}, end: {_id:778}, properties:{}}, {start: {_id:1042}, end: {_id:778}, properties:{}}, {start: {_id:1251}, end: {_id:778}, properties:{}}, {start: {_id:1614}, end: {_id:778}, properties:{}}, {start: {_id:1615}, end: {_id:778}, properties:{}}, {start: {_id:1616}, end: {_id:778}, properties:{}}, {start: {_id:1617}, end: {_id:778}, properties:{}}, {start: {_id:1645}, end: {_id:778}, properties:{}}, {start: {_id:1648}, end: {_id:778}, properties:{}}, {start: {_id:1649}, end: {_id:778}, properties:{}}, {start: {_id:1671}, end: {_id:778}, properties:{}}, {start: {_id:1672}, end: {_id:778}, properties:{}}, {start: {_id:1673}, end: {_id:778}, properties:{}}, {start: {_id:1674}, end: {_id:778}, properties:{}}, {start: {_id:1675}, end: {_id:778}, properties:{}}, {start: {_id:1676}, end: {_id:778}, properties:{}}, {start: {_id:1697}, end: {_id:778}, properties:{}}, {start: {_id:1795}, end: {_id:778}, properties:{}}, {start: {_id:1796}, end: {_id:778}, properties:{}}, {start: {_id:1797}, end: {_id:778}, properties:{}}, {start: {_id:1874}, end: {_id:778}, properties:{}}, {start: {_id:1911}, end: {_id:778}, properties:{}}, {start: {_id:1999}, end: {_id:778}, properties:{}}, {start: {_id:2000}, end: {_id:778}, properties:{}}, {start: {_id:2001}, end: {_id:778}, properties:{}}, {start: {_id:2002}, end: {_id:778}, properties:{}}, {start: {_id:2003}, end: {_id:778}, properties:{}}, {start: {_id:2004}, end: {_id:778}, properties:{}}, {start: {_id:2005}, end: {_id:778}, properties:{}}, {start: {_id:2028}, end: {_id:778}, properties:{}}, {start: {_id:2045}, end: {_id:778}, properties:{}}, {start: {_id:2072}, end: {_id:778}, properties:{}}, {start: {_id:2073}, end: {_id:778}, properties:{}}, {start: {_id:2074}, end: {_id:778}, properties:{}}, {start: {_id:2075}, end: {_id:778}, properties:{}}, {start: {_id:2076}, end: {_id:778}, properties:{}}, {start: {_id:2077}, end: {_id:778}, properties:{}}, {start: {_id:2078}, end: {_id:778}, properties:{}}, {start: {_id:2079}, end: {_id:778}, properties:{}}, {start: {_id:2080}, end: {_id:778}, properties:{}}, {start: {_id:2081}, end: {_id:778}, properties:{}}, {start: {_id:2082}, end: {_id:778}, properties:{}}, {start: {_id:2083}, end: {_id:778}, properties:{}}, {start: {_id:2205}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:44}, end: {_id:5}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:618}, properties:{}}, {start: {_id:778}, end: {_id:619}, properties:{}}, {start: {_id:778}, end: {_id:620}, properties:{}}, {start: {_id:778}, end: {_id:633}, properties:{}}, {start: {_id:778}, end: {_id:640}, properties:{}}, {start: {_id:778}, end: {_id:650}, properties:{}}, {start: {_id:778}, end: {_id:652}, properties:{}}, {start: {_id:778}, end: {_id:668}, properties:{}}, {start: {_id:778}, end: {_id:720}, properties:{}}, {start: {_id:778}, end: {_id:726}, properties:{}}, {start: {_id:778}, end: {_id:796}, properties:{}}, {start: {_id:778}, end: {_id:800}, properties:{}}, {start: {_id:778}, end: {_id:818}, properties:{}}, {start: {_id:778}, end: {_id:819}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1735}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1937}, end: {_id:1940}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_Biomarkers]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:1688}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENCODS]->(end) SET r += row.properties;
UNWIND [{start: {_id:630}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1730}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:707}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:621}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBCLASS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:627}, end: {_id:1712}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONNECTED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:778}, properties:{}}, {start: {_id:1976}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1709}, end: {_id:1710}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1923}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_ASSOCIATION_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2087}, end: {_id:2088}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:2205}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_MUTATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:43}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_A_SUBTYPE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:696}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLINICAL_MANIFESTATION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1978}, end: {_id:1972}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:145}, properties:{}}, {start: {_id:0}, end: {_id:360}, properties:{}}, {start: {_id:0}, end: {_id:361}, properties:{}}, {start: {_id:363}, end: {_id:364}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2006}, end: {_id:2007}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:175}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPOSED_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:443}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1901}, end: {_id:1925}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMED_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AUTOPHOSPHORYLATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:91}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_ANALYZE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1730}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:809}, end: {_id:806}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1645}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGICAL_FEATURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:34}, properties:{}}, {start: {_id:778}, end: {_id:1008}, properties:{}}, {start: {_id:1917}, end: {_id:1906}, properties:{}}, {start: {_id:1918}, end: {_id:34}, properties:{}}, {start: {_id:1919}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1251}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENCODES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:636}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:1969}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY_THERAPY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1879}, end: {_id:778}, properties:{}}, {start: {_id:1880}, end: {_id:778}, properties:{}}, {start: {_id:1881}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:707}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:700}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:2110}, end: {_id:2111}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRAPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:660}, properties:{}}, {start: {_id:0}, end: {_id:661}, properties:{}}, {start: {_id:0}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:662}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:726}, end: {_id:620}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:734}, end: {_id:735}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:34}, properties:{}}, {start: {_id:0}, end: {_id:55}, properties:{}}, {start: {_id:23}, end: {_id:56}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:778}, properties:{}}, {start: {_id:1944}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1858}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:704}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:`CO-OCCURS_WITH`]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:7}, properties:{}}, {start: {_id:778}, end: {_id:34}, properties:{}}, {start: {_id:778}, end: {_id:456}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:93}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS_NEUROMELANIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:666}, end: {_id:954}, properties:{}}, {start: {_id:687}, end: {_id:778}, properties:{}}, {start: {_id:688}, end: {_id:115}, properties:{}}, {start: {_id:688}, end: {_id:778}, properties:{}}, {start: {_id:711}, end: {_id:778}, properties:{}}, {start: {_id:727}, end: {_id:718}, properties:{}}, {start: {_id:728}, end: {_id:718}, properties:{}}, {start: {_id:737}, end: {_id:778}, properties:{}}, {start: {_id:754}, end: {_id:115}, properties:{}}, {start: {_id:755}, end: {_id:115}, properties:{}}, {start: {_id:1889}, end: {_id:778}, properties:{}}, {start: {_id:1890}, end: {_id:778}, properties:{}}, {start: {_id:1891}, end: {_id:778}, properties:{}}, {start: {_id:1892}, end: {_id:778}, properties:{}}, {start: {_id:1893}, end: {_id:778}, properties:{}}, {start: {_id:1894}, end: {_id:778}, properties:{}}, {start: {_id:1895}, end: {_id:778}, properties:{}}, {start: {_id:2096}, end: {_id:778}, properties:{}}, {start: {_id:2100}, end: {_id:778}, properties:{}}, {start: {_id:2207}, end: {_id:778}, properties:{}}, {start: {_id:2209}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1977}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:7}, properties:{}}, {start: {_id:689}, end: {_id:690}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:642}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:610}, properties:{}}, {start: {_id:0}, end: {_id:1903}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:192}, end: {_id:630}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpresses]->(end) SET r += row.properties;
UNWIND [{start: {_id:549}, end: {_id:487}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRANSPORTS_INTO_CELL]->(end) SET r += row.properties;
UNWIND [{start: {_id:945}, end: {_id:632}, properties:{}}, {start: {_id:946}, end: {_id:632}, properties:{}}, {start: {_id:947}, end: {_id:632}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATES_CONCEPT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1905}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:APPLIES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1973}, end: {_id:778}, properties:{}}, {start: {_id:1974}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:696}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLINICAL_MANIFESTATION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:803}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MISDIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:660}, properties:{}}, {start: {_id:778}, end: {_id:661}, properties:{}}, {start: {_id:778}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1656}, end: {_id:63}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:589}, properties:{}}, {start: {_id:30}, end: {_id:590}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGET_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:115}, end: {_id:43}, properties:{}}, {start: {_id:764}, end: {_id:0}, properties:{}}, {start: {_id:1718}, end: {_id:0}, properties:{}}, {start: {_id:1722}, end: {_id:0}, properties:{}}, {start: {_id:1723}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:892}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDYED]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:632}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1856}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:558}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_MRNA_STABILITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1977}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1696}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:948}, end: {_id:730}, properties:{}}, {start: {_id:949}, end: {_id:730}, properties:{}}, {start: {_id:950}, end: {_id:730}, properties:{}}, {start: {_id:951}, end: {_id:730}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ETIOLOGIES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:114}, end: {_id:113}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:756}, end: {_id:116}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1806}, end: {_id:1809}, properties:{}}, {start: {_id:1807}, end: {_id:1809}, properties:{}}, {start: {_id:1808}, end: {_id:1809}, properties:{}}, {start: {_id:1810}, end: {_id:1812}, properties:{}}, {start: {_id:1811}, end: {_id:1812}, properties:{}}, {start: {_id:1813}, end: {_id:1816}, properties:{}}, {start: {_id:1814}, end: {_id:1816}, properties:{}}, {start: {_id:1815}, end: {_id:1816}, properties:{}}, {start: {_id:1817}, end: {_id:1820}, properties:{}}, {start: {_id:1818}, end: {_id:1820}, properties:{}}, {start: {_id:1818}, end: {_id:1837}, properties:{}}, {start: {_id:1819}, end: {_id:1820}, properties:{}}, {start: {_id:1819}, end: {_id:1837}, properties:{}}, {start: {_id:1821}, end: {_id:1827}, properties:{}}, {start: {_id:1822}, end: {_id:1827}, properties:{}}, {start: {_id:1823}, end: {_id:1827}, properties:{}}, {start: {_id:1824}, end: {_id:1827}, properties:{}}, {start: {_id:1825}, end: {_id:1827}, properties:{}}, {start: {_id:1826}, end: {_id:1827}, properties:{}}, {start: {_id:1828}, end: {_id:1831}, properties:{}}, {start: {_id:1829}, end: {_id:1831}, properties:{}}, {start: {_id:1830}, end: {_id:1831}, properties:{}}, {start: {_id:1832}, end: {_id:1835}, properties:{}}, {start: {_id:1833}, end: {_id:1835}, properties:{}}, {start: {_id:1834}, end: {_id:1835}, properties:{}}, {start: {_id:1836}, end: {_id:1837}, properties:{}}, {start: {_id:1838}, end: {_id:1841}, properties:{}}, {start: {_id:1839}, end: {_id:1841}, properties:{}}, {start: {_id:1840}, end: {_id:1841}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PUBLISHED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:777}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RISK_FACTOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:633}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:71}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:810}, end: {_id:778}, properties:{}}, {start: {_id:2112}, end: {_id:778}, properties:{}}, {start: {_id:2113}, end: {_id:778}, properties:{}}, {start: {_id:2114}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEPENDS_ON]->(end) SET r += row.properties;
UNWIND [{start: {_id:91}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_IRON_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:735}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:654}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2284}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:735}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:663}, end: {_id:818}, properties:{}}, {start: {_id:663}, end: {_id:819}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:939}, end: {_id:668}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIAGNOSES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:620}, properties:{}}, {start: {_id:0}, end: {_id:633}, properties:{}}, {start: {_id:0}, end: {_id:958}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1646}, end: {_id:778}, properties:{}}, {start: {_id:1647}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_MECHANISMS]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:778}, properties:{}}, {start: {_id:2275}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:486}, end: {_id:487}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:940}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENTS_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:818}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:688}, properties:{}}, {start: {_id:0}, end: {_id:737}, properties:{}}, {start: {_id:0}, end: {_id:742}, properties:{}}, {start: {_id:0}, end: {_id:743}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT_OPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:810}, end: {_id:807}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:30}, properties:{}}, {start: {_id:0}, end: {_id:31}, properties:{}}, {start: {_id:0}, end: {_id:63}, properties:{}}, {start: {_id:0}, end: {_id:158}, properties:{}}, {start: {_id:0}, end: {_id:159}, properties:{}}, {start: {_id:0}, end: {_id:183}, properties:{}}, {start: {_id:0}, end: {_id:184}, properties:{}}, {start: {_id:0}, end: {_id:185}, properties:{}}, {start: {_id:0}, end: {_id:186}, properties:{}}, {start: {_id:0}, end: {_id:187}, properties:{}}, {start: {_id:0}, end: {_id:188}, properties:{}}, {start: {_id:0}, end: {_id:189}, properties:{}}, {start: {_id:0}, end: {_id:190}, properties:{}}, {start: {_id:0}, end: {_id:192}, properties:{}}, {start: {_id:0}, end: {_id:193}, properties:{}}, {start: {_id:0}, end: {_id:247}, properties:{}}, {start: {_id:0}, end: {_id:249}, properties:{}}, {start: {_id:0}, end: {_id:393}, properties:{}}, {start: {_id:0}, end: {_id:394}, properties:{}}, {start: {_id:0}, end: {_id:416}, properties:{}}, {start: {_id:0}, end: {_id:417}, properties:{}}, {start: {_id:0}, end: {_id:418}, properties:{}}, {start: {_id:0}, end: {_id:419}, properties:{}}, {start: {_id:0}, end: {_id:420}, properties:{}}, {start: {_id:0}, end: {_id:423}, properties:{}}, {start: {_id:0}, end: {_id:925}, properties:{}}, {start: {_id:0}, end: {_id:926}, properties:{}}, {start: {_id:0}, end: {_id:927}, properties:{}}, {start: {_id:0}, end: {_id:928}, properties:{}}, {start: {_id:0}, end: {_id:998}, properties:{}}, {start: {_id:0}, end: {_id:999}, properties:{}}, {start: {_id:0}, end: {_id:1000}, properties:{}}, {start: {_id:0}, end: {_id:1001}, properties:{}}, {start: {_id:0}, end: {_id:1251}, properties:{}}, {start: {_id:0}, end: {_id:1605}, properties:{}}, {start: {_id:0}, end: {_id:1614}, properties:{}}, {start: {_id:0}, end: {_id:1615}, properties:{}}, {start: {_id:0}, end: {_id:1616}, properties:{}}, {start: {_id:0}, end: {_id:1645}, properties:{}}, {start: {_id:0}, end: {_id:1911}, properties:{}}, {start: {_id:0}, end: {_id:1922}, properties:{}}, {start: {_id:0}, end: {_id:2121}, properties:{}}, {start: {_id:2122}, end: {_id:30}, properties:{}}, {start: {_id:2122}, end: {_id:158}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:134}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1905}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:APPLIES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:550}, end: {_id:487}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONVERTS_TO_ZMP]->(end) SET r += row.properties;
UNWIND [{start: {_id:1688}, end: {_id:1691}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CATABOLIZES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1606}, properties:{}}, {start: {_id:0}, end: {_id:1991}, properties:{}}, {start: {_id:0}, end: {_id:1992}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:350}, end: {_id:351}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2143}, end: {_id:2107}, properties:{}}, {start: {_id:2144}, end: {_id:467}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPED]->(end) SET r += row.properties;
UNWIND [{start: {_id:2239}, end: {_id:2240}, properties:{}}, {start: {_id:2239}, end: {_id:2241}, properties:{}}, {start: {_id:2239}, end: {_id:2242}, properties:{}}, {start: {_id:2239}, end: {_id:2243}, properties:{}}, {start: {_id:2239}, end: {_id:2244}, properties:{}}, {start: {_id:2239}, end: {_id:2245}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DISCOVERED_MUTATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:431}, properties:{}}, {start: {_id:30}, end: {_id:435}, properties:{}}, {start: {_id:30}, end: {_id:436}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:1858}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:205}, end: {_id:206}, properties:{}}, {start: {_id:207}, end: {_id:208}, properties:{}}, {start: {_id:209}, end: {_id:210}, properties:{}}, {start: {_id:211}, end: {_id:212}, properties:{}}, {start: {_id:222}, end: {_id:223}, properties:{}}, {start: {_id:1009}, end: {_id:1010}, properties:{}}, {start: {_id:1011}, end: {_id:1012}, properties:{}}, {start: {_id:1013}, end: {_id:1014}, properties:{}}, {start: {_id:1015}, end: {_id:1016}, properties:{}}, {start: {_id:1018}, end: {_id:201}, properties:{}}, {start: {_id:1019}, end: {_id:1020}, properties:{}}, {start: {_id:1021}, end: {_id:1022}, properties:{}}, {start: {_id:1023}, end: {_id:1024}, properties:{}}, {start: {_id:1025}, end: {_id:1026}, properties:{}}, {start: {_id:1027}, end: {_id:1028}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COLLABORATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERING_PROCESS]->(end) SET r += row.properties;
UNWIND [{start: {_id:620}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_DIAGNOSIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:662}, end: {_id:0}, properties:{}}, {start: {_id:662}, end: {_id:23}, properties:{}}, {start: {_id:662}, end: {_id:26}, properties:{}}, {start: {_id:662}, end: {_id:665}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:797}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1607}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:514}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:847}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMORBID_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:625}, end: {_id:192}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpresses]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:0}, properties:{}}, {start: {_id:50}, end: {_id:0}, properties:{}}, {start: {_id:123}, end: {_id:0}, properties:{}}, {start: {_id:440}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:491}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEGRADES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:49}, properties:{}}, {start: {_id:30}, end: {_id:439}, properties:{}}, {start: {_id:30}, end: {_id:440}, properties:{}}, {start: {_id:30}, end: {_id:441}, properties:{}}, {start: {_id:30}, end: {_id:442}, properties:{}}, {start: {_id:30}, end: {_id:443}, properties:{}}, {start: {_id:30}, end: {_id:451}, properties:{}}, {start: {_id:30}, end: {_id:458}, properties:{}}, {start: {_id:30}, end: {_id:462}, properties:{}}, {start: {_id:30}, end: {_id:482}, properties:{}}, {start: {_id:30}, end: {_id:483}, properties:{}}, {start: {_id:30}, end: {_id:485}, properties:{}}, {start: {_id:30}, end: {_id:496}, properties:{}}, {start: {_id:30}, end: {_id:497}, properties:{}}, {start: {_id:30}, end: {_id:499}, properties:{}}, {start: {_id:30}, end: {_id:504}, properties:{}}, {start: {_id:172}, end: {_id:175}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:481}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INCOMPATIBLE_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1609}, properties:{}}, {start: {_id:778}, end: {_id:1610}, properties:{}}, {start: {_id:778}, end: {_id:1611}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:1688}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CODON]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:646}, properties:{}}, {start: {_id:0}, end: {_id:730}, properties:{}}, {start: {_id:0}, end: {_id:731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:632}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:195}, properties:{}}, {start: {_id:0}, end: {_id:196}, properties:{}}, {start: {_id:0}, end: {_id:197}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:945}, end: {_id:960}, properties:{}}, {start: {_id:946}, end: {_id:960}, properties:{}}, {start: {_id:947}, end: {_id:960}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATES_CONCEPT]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:644}, properties:{}}, {start: {_id:778}, end: {_id:668}, properties:{}}, {start: {_id:778}, end: {_id:669}, properties:{}}, {start: {_id:778}, end: {_id:720}, properties:{}}, {start: {_id:778}, end: {_id:721}, properties:{}}, {start: {_id:778}, end: {_id:722}, properties:{}}, {start: {_id:778}, end: {_id:723}, properties:{}}, {start: {_id:778}, end: {_id:724}, properties:{}}, {start: {_id:778}, end: {_id:725}, properties:{}}, {start: {_id:778}, end: {_id:726}, properties:{}}, {start: {_id:778}, end: {_id:806}, properties:{}}, {start: {_id:778}, end: {_id:807}, properties:{}}, {start: {_id:778}, end: {_id:819}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:527}, end: {_id:0}, properties:{}}, {start: {_id:528}, end: {_id:0}, properties:{}}, {start: {_id:529}, end: {_id:0}, properties:{}}, {start: {_id:530}, end: {_id:0}, properties:{}}, {start: {_id:531}, end: {_id:0}, properties:{}}, {start: {_id:532}, end: {_id:0}, properties:{}}, {start: {_id:533}, end: {_id:0}, properties:{}}, {start: {_id:534}, end: {_id:0}, properties:{}}, {start: {_id:976}, end: {_id:977}, properties:{}}, {start: {_id:993}, end: {_id:995}, properties:{}}, {start: {_id:1871}, end: {_id:0}, properties:{}}, {start: {_id:1948}, end: {_id:1995}, properties:{}}, {start: {_id:1993}, end: {_id:1994}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:91}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_IRON_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:1970}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1631}, end: {_id:1641}, properties:{}}, {start: {_id:1632}, end: {_id:1641}, properties:{}}, {start: {_id:1634}, end: {_id:1643}, properties:{}}, {start: {_id:1637}, end: {_id:1643}, properties:{}}, {start: {_id:1640}, end: {_id:1642}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WORKS_AT]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:542}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:HAS_VARIANT]->(end) SET r += row.properties;
UNWIND [{start: {_id:146}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCUMULATES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:601}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_UBIQUITINATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:343}, end: {_id:345}, properties:{}}, {start: {_id:344}, end: {_id:345}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:784}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:2171}, end: {_id:2160}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COAUTHORED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:1887}, properties:{}}, {start: {_id:25}, end: {_id:1887}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:146}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCUMULATES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERING_PROCESS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:520}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:28}, end: {_id:0}, properties:{}}, {start: {_id:30}, end: {_id:0}, properties:{}}, {start: {_id:30}, end: {_id:2105}, properties:{}}, {start: {_id:162}, end: {_id:0}, properties:{}}, {start: {_id:172}, end: {_id:0}, properties:{}}, {start: {_id:177}, end: {_id:48}, properties:{}}, {start: {_id:391}, end: {_id:0}, properties:{}}, {start: {_id:1922}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:159}, end: {_id:30}, properties:{}}, {start: {_id:173}, end: {_id:1795}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USED_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:956}, properties:{}}, {start: {_id:778}, end: {_id:957}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_SYMPTOM]->(end) SET r += row.properties;
UNWIND [{start: {_id:801}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MISDIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:56}, end: {_id:23}, properties:{}}, {start: {_id:1734}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:135}, end: {_id:94}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES]->(end) SET r += row.properties;
UNWIND [{start: {_id:486}, end: {_id:557}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_SUBSTRATE]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:520}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:119}, end: {_id:113}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:939}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIAGNOSES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:448}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES_PROTEIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:666}, end: {_id:667}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:79}, end: {_id:80}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCATED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:0}, properties:{}}, {start: {_id:820}, end: {_id:664}, properties:{}}, {start: {_id:820}, end: {_id:686}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:198}, end: {_id:0}, properties:{}}, {start: {_id:199}, end: {_id:0}, properties:{}}, {start: {_id:200}, end: {_id:0}, properties:{}}, {start: {_id:201}, end: {_id:0}, properties:{}}, {start: {_id:202}, end: {_id:0}, properties:{}}, {start: {_id:1017}, end: {_id:0}, properties:{}}, {start: {_id:1029}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:781}, properties:{}}, {start: {_id:778}, end: {_id:782}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:120}, end: {_id:121}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_DECARBOXYLATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_SIMILARITIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:93}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS_NEUROMELANIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:357}, end: {_id:807}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:640}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_PROGRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:2208}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:58}, end: {_id:0}, properties:{}}, {start: {_id:59}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPARES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:525}, end: {_id:0}, properties:{}}, {start: {_id:526}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERISTIC_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:3}, end: {_id:4}, properties:{}}, {start: {_id:3}, end: {_id:5}, properties:{}}, {start: {_id:3}, end: {_id:6}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:778}, properties:{}}, {start: {_id:63}, end: {_id:778}, properties:{}}, {start: {_id:691}, end: {_id:778}, properties:{}}, {start: {_id:1002}, end: {_id:778}, properties:{}}, {start: {_id:1003}, end: {_id:778}, properties:{}}, {start: {_id:1004}, end: {_id:778}, properties:{}}, {start: {_id:1005}, end: {_id:778}, properties:{}}, {start: {_id:1006}, end: {_id:778}, properties:{}}, {start: {_id:1007}, end: {_id:778}, properties:{}}, {start: {_id:1911}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1951}, end: {_id:1754}, properties:{}}, {start: {_id:1951}, end: {_id:1953}, properties:{}}, {start: {_id:1951}, end: {_id:1954}, properties:{}}, {start: {_id:1951}, end: {_id:1955}, properties:{}}, {start: {_id:1951}, end: {_id:1956}, properties:{}}, {start: {_id:1951}, end: {_id:1957}, properties:{}}, {start: {_id:1951}, end: {_id:1958}, properties:{}}, {start: {_id:1951}, end: {_id:1959}, properties:{}}, {start: {_id:1951}, end: {_id:1960}, properties:{}}, {start: {_id:1951}, end: {_id:1961}, properties:{}}, {start: {_id:1951}, end: {_id:1962}, properties:{}}, {start: {_id:1951}, end: {_id:1963}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNDING]->(end) SET r += row.properties;
UNWIND [{start: {_id:92}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:42}, properties:{}}, {start: {_id:0}, end: {_id:191}, properties:{}}, {start: {_id:0}, end: {_id:235}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:798}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:432}, properties:{}}, {start: {_id:889}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBTYPE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:1921}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENCODER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:0}, properties:{}}, {start: {_id:34}, end: {_id:0}, properties:{}}, {start: {_id:50}, end: {_id:0}, properties:{}}, {start: {_id:55}, end: {_id:0}, properties:{}}, {start: {_id:55}, end: {_id:2139}, properties:{}}, {start: {_id:55}, end: {_id:2140}, properties:{}}, {start: {_id:56}, end: {_id:23}, properties:{}}, {start: {_id:175}, end: {_id:0}, properties:{}}, {start: {_id:331}, end: {_id:0}, properties:{}}, {start: {_id:456}, end: {_id:0}, properties:{}}, {start: {_id:456}, end: {_id:43}, properties:{}}, {start: {_id:497}, end: {_id:0}, properties:{}}, {start: {_id:497}, end: {_id:2053}, properties:{}}, {start: {_id:824}, end: {_id:0}, properties:{}}, {start: {_id:825}, end: {_id:0}, properties:{}}, {start: {_id:826}, end: {_id:0}, properties:{}}, {start: {_id:1619}, end: {_id:0}, properties:{}}, {start: {_id:1620}, end: {_id:0}, properties:{}}, {start: {_id:1651}, end: {_id:0}, properties:{}}, {start: {_id:1654}, end: {_id:0}, properties:{}}, {start: {_id:1935}, end: {_id:23}, properties:{}}, {start: {_id:1980}, end: {_id:0}, properties:{}}, {start: {_id:1988}, end: {_id:23}, properties:{}}, {start: {_id:2204}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:654}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_PROGRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:718}, end: {_id:758}, properties:{}}, {start: {_id:778}, end: {_id:795}, properties:{}}, {start: {_id:778}, end: {_id:1716}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:604}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS_GROWTH]->(end) SET r += row.properties;
UNWIND [{start: {_id:175}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPOSED_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1696}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:640}, properties:{}}, {start: {_id:0}, end: {_id:641}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:771}, end: {_id:762}, properties:{}}, {start: {_id:772}, end: {_id:762}, properties:{}}, {start: {_id:773}, end: {_id:762}, properties:{}}, {start: {_id:776}, end: {_id:762}, properties:{}}, {start: {_id:1871}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:2204}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:688}, properties:{}}, {start: {_id:778}, end: {_id:737}, properties:{}}, {start: {_id:778}, end: {_id:742}, properties:{}}, {start: {_id:778}, end: {_id:743}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT_OPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1884}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:NOT_A_BIOMARKER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:756}, end: {_id:644}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:986}, end: {_id:987}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1639}, end: {_id:1641}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEMBER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:634}, properties:{}}, {start: {_id:0}, end: {_id:757}, properties:{}}, {start: {_id:0}, end: {_id:758}, properties:{}}, {start: {_id:0}, end: {_id:759}, properties:{}}, {start: {_id:0}, end: {_id:1705}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ANALOGOUS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:22}, end: {_id:0}, properties:{}}, {start: {_id:22}, end: {_id:23}, properties:{}}, {start: {_id:22}, end: {_id:25}, properties:{}}, {start: {_id:22}, end: {_id:26}, properties:{}}, {start: {_id:28}, end: {_id:0}, properties:{}}, {start: {_id:28}, end: {_id:232}, properties:{}}, {start: {_id:30}, end: {_id:0}, properties:{}}, {start: {_id:30}, end: {_id:23}, properties:{}}, {start: {_id:30}, end: {_id:43}, properties:{}}, {start: {_id:30}, end: {_id:116}, properties:{}}, {start: {_id:30}, end: {_id:463}, properties:{}}, {start: {_id:30}, end: {_id:464}, properties:{}}, {start: {_id:30}, end: {_id:465}, properties:{}}, {start: {_id:30}, end: {_id:475}, properties:{}}, {start: {_id:30}, end: {_id:540}, properties:{}}, {start: {_id:30}, end: {_id:1646}, properties:{}}, {start: {_id:30}, end: {_id:1658}, properties:{}}, {start: {_id:30}, end: {_id:2043}, properties:{}}, {start: {_id:30}, end: {_id:2069}, properties:{}}, {start: {_id:31}, end: {_id:0}, properties:{}}, {start: {_id:52}, end: {_id:0}, properties:{}}, {start: {_id:63}, end: {_id:0}, properties:{}}, {start: {_id:63}, end: {_id:23}, properties:{}}, {start: {_id:158}, end: {_id:0}, properties:{}}, {start: {_id:159}, end: {_id:0}, properties:{}}, {start: {_id:159}, end: {_id:2278}, properties:{}}, {start: {_id:160}, end: {_id:0}, properties:{}}, {start: {_id:160}, end: {_id:43}, properties:{}}, {start: {_id:161}, end: {_id:43}, properties:{}}, {start: {_id:162}, end: {_id:0}, properties:{}}, {start: {_id:162}, end: {_id:43}, properties:{}}, {start: {_id:163}, end: {_id:0}, properties:{}}, {start: {_id:163}, end: {_id:43}, properties:{}}, {start: {_id:163}, end: {_id:2033}, properties:{}}, {start: {_id:164}, end: {_id:43}, properties:{}}, {start: {_id:164}, end: {_id:2033}, properties:{}}, {start: {_id:165}, end: {_id:43}, properties:{}}, {start: {_id:166}, end: {_id:43}, properties:{}}, {start: {_id:167}, end: {_id:43}, properties:{}}, {start: {_id:168}, end: {_id:43}, properties:{}}, {start: {_id:169}, end: {_id:0}, properties:{}}, {start: {_id:169}, end: {_id:43}, properties:{}}, {start: {_id:169}, end: {_id:2033}, properties:{}}, {start: {_id:170}, end: {_id:0}, properties:{}}, {start: {_id:170}, end: {_id:43}, properties:{}}, {start: {_id:171}, end: {_id:43}, properties:{}}, {start: {_id:172}, end: {_id:0}, properties:{}}, {start: {_id:172}, end: {_id:43}, properties:{}}, {start: {_id:172}, end: {_id:1875}, properties:{}}, {start: {_id:172}, end: {_id:2043}, properties:{}}, {start: {_id:172}, end: {_id:2071}, properties:{}}, {start: {_id:173}, end: {_id:0}, properties:{}}, {start: {_id:176}, end: {_id:0}, properties:{}}, {start: {_id:176}, end: {_id:23}, properties:{}}, {start: {_id:177}, end: {_id:0}, properties:{}}, {start: {_id:192}, end: {_id:0}, properties:{}}, {start: {_id:300}, end: {_id:0}, properties:{}}, {start: {_id:301}, end: {_id:0}, properties:{}}, {start: {_id:302}, end: {_id:0}, properties:{}}, {start: {_id:303}, end: {_id:0}, properties:{}}, {start: {_id:304}, end: {_id:0}, properties:{}}, {start: {_id:305}, end: {_id:0}, properties:{}}, {start: {_id:306}, end: {_id:0}, properties:{}}, {start: {_id:307}, end: {_id:0}, properties:{}}, {start: {_id:308}, end: {_id:0}, properties:{}}, {start: {_id:309}, end: {_id:0}, properties:{}}, {start: {_id:310}, end: {_id:0}, properties:{}}, {start: {_id:311}, end: {_id:0}, properties:{}}, {start: {_id:312}, end: {_id:0}, properties:{}}, {start: {_id:313}, end: {_id:0}, properties:{}}, {start: {_id:314}, end: {_id:0}, properties:{}}, {start: {_id:315}, end: {_id:0}, properties:{}}, {start: {_id:316}, end: {_id:0}, properties:{}}, {start: {_id:387}, end: {_id:0}, properties:{}}, {start: {_id:388}, end: {_id:0}, properties:{}}, {start: {_id:392}, end: {_id:0}, properties:{}}, {start: {_id:393}, end: {_id:0}, properties:{}}, {start: {_id:393}, end: {_id:43}, properties:{}}, {start: {_id:394}, end: {_id:0}, properties:{}}, {start: {_id:394}, end: {_id:43}, properties:{}}, {start: {_id:583}, end: {_id:0}, properties:{}}, {start: {_id:595}, end: {_id:0}, properties:{}}, {start: {_id:596}, end: {_id:0}, properties:{}}, {start: {_id:596}, end: {_id:2053}, properties:{}}, {start: {_id:682}, end: {_id:702}, properties:{}}, {start: {_id:692}, end: {_id:0}, properties:{}}, {start: {_id:694}, end: {_id:0}, properties:{}}, {start: {_id:821}, end: {_id:0}, properties:{}}, {start: {_id:823}, end: {_id:0}, properties:{}}, {start: {_id:891}, end: {_id:0}, properties:{}}, {start: {_id:961}, end: {_id:964}, properties:{}}, {start: {_id:1030}, end: {_id:0}, properties:{}}, {start: {_id:1040}, end: {_id:0}, properties:{}}, {start: {_id:1042}, end: {_id:0}, properties:{}}, {start: {_id:1125}, end: {_id:71}, properties:{}}, {start: {_id:1251}, end: {_id:0}, properties:{}}, {start: {_id:1251}, end: {_id:43}, properties:{}}, {start: {_id:1605}, end: {_id:2033}, properties:{}}, {start: {_id:1614}, end: {_id:0}, properties:{}}, {start: {_id:1614}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1615}, end: {_id:0}, properties:{}}, {start: {_id:1615}, end: {_id:43}, properties:{}}, {start: {_id:1616}, end: {_id:0}, properties:{}}, {start: {_id:1616}, end: {_id:43}, properties:{}}, {start: {_id:1617}, end: {_id:0}, properties:{}}, {start: {_id:1617}, end: {_id:43}, properties:{}}, {start: {_id:1645}, end: {_id:0}, properties:{}}, {start: {_id:1648}, end: {_id:0}, properties:{}}, {start: {_id:1648}, end: {_id:1749}, properties:{}}, {start: {_id:1649}, end: {_id:0}, properties:{}}, {start: {_id:1671}, end: {_id:0}, properties:{}}, {start: {_id:1672}, end: {_id:0}, properties:{}}, {start: {_id:1673}, end: {_id:0}, properties:{}}, {start: {_id:1674}, end: {_id:0}, properties:{}}, {start: {_id:1675}, end: {_id:0}, properties:{}}, {start: {_id:1675}, end: {_id:43}, properties:{}}, {start: {_id:1676}, end: {_id:0}, properties:{}}, {start: {_id:1676}, end: {_id:2054}, properties:{}}, {start: {_id:1684}, end: {_id:1678}, properties:{}}, {start: {_id:1697}, end: {_id:0}, properties:{}}, {start: {_id:1795}, end: {_id:0}, properties:{}}, {start: {_id:1796}, end: {_id:0}, properties:{}}, {start: {_id:1797}, end: {_id:0}, properties:{}}, {start: {_id:1804}, end: {_id:2069}, properties:{}}, {start: {_id:1874}, end: {_id:0}, properties:{}}, {start: {_id:1911}, end: {_id:0}, properties:{}}, {start: {_id:1999}, end: {_id:0}, properties:{}}, {start: {_id:2000}, end: {_id:0}, properties:{}}, {start: {_id:2001}, end: {_id:0}, properties:{}}, {start: {_id:2002}, end: {_id:0}, properties:{}}, {start: {_id:2003}, end: {_id:0}, properties:{}}, {start: {_id:2004}, end: {_id:0}, properties:{}}, {start: {_id:2005}, end: {_id:0}, properties:{}}, {start: {_id:2011}, end: {_id:2014}, properties:{}}, {start: {_id:2012}, end: {_id:2014}, properties:{}}, {start: {_id:2028}, end: {_id:0}, properties:{}}, {start: {_id:2028}, end: {_id:43}, properties:{}}, {start: {_id:2034}, end: {_id:2033}, properties:{}}, {start: {_id:2035}, end: {_id:2033}, properties:{}}, {start: {_id:2045}, end: {_id:0}, properties:{}}, {start: {_id:2050}, end: {_id:70}, properties:{}}, {start: {_id:2051}, end: {_id:70}, properties:{}}, {start: {_id:2052}, end: {_id:70}, properties:{}}, {start: {_id:2066}, end: {_id:2069}, properties:{}}, {start: {_id:2067}, end: {_id:2069}, properties:{}}, {start: {_id:2068}, end: {_id:2069}, properties:{}}, {start: {_id:2072}, end: {_id:0}, properties:{}}, {start: {_id:2073}, end: {_id:0}, properties:{}}, {start: {_id:2074}, end: {_id:0}, properties:{}}, {start: {_id:2075}, end: {_id:0}, properties:{}}, {start: {_id:2076}, end: {_id:0}, properties:{}}, {start: {_id:2077}, end: {_id:0}, properties:{}}, {start: {_id:2078}, end: {_id:0}, properties:{}}, {start: {_id:2079}, end: {_id:0}, properties:{}}, {start: {_id:2080}, end: {_id:0}, properties:{}}, {start: {_id:2081}, end: {_id:0}, properties:{}}, {start: {_id:2082}, end: {_id:0}, properties:{}}, {start: {_id:2083}, end: {_id:0}, properties:{}}, {start: {_id:2205}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:66}, end: {_id:0}, properties:{}}, {start: {_id:67}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:955}, end: {_id:655}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:655}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_DIAGNOSIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:71}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:159}, end: {_id:2044}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PARTicipates_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:2208}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:52}, end: {_id:51}, properties:{}}, {start: {_id:158}, end: {_id:2040}, properties:{}}, {start: {_id:1251}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENCODES]->(end) SET r += row.properties;
UNWIND [{start: {_id:749}, end: {_id:116}, properties:{}}, {start: {_id:750}, end: {_id:116}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:730}, end: {_id:620}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:625}, properties:{}}, {start: {_id:778}, end: {_id:626}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES_IN_GUT_BRAIN_AXIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1691}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_ACCUMULATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:452}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpressed_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1715}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:1661}, properties:{}}, {start: {_id:1682}, end: {_id:1677}, properties:{}}, {start: {_id:1683}, end: {_id:1677}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:622}, end: {_id:0}, properties:{}}, {start: {_id:1666}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:650}, end: {_id:785}, properties:{}}, {start: {_id:796}, end: {_id:785}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1717}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:429}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENCODES_PROTEIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:203}, end: {_id:0}, properties:{}}, {start: {_id:204}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATED]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:9}, properties:{}}, {start: {_id:0}, end: {_id:10}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1685}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:48}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:57}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPARES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1806}, end: {_id:0}, properties:{}}, {start: {_id:1807}, end: {_id:0}, properties:{}}, {start: {_id:2123}, end: {_id:0}, properties:{}}, {start: {_id:2124}, end: {_id:0}, properties:{}}, {start: {_id:2125}, end: {_id:0}, properties:{}}, {start: {_id:2126}, end: {_id:0}, properties:{}}, {start: {_id:2127}, end: {_id:0}, properties:{}}, {start: {_id:2128}, end: {_id:0}, properties:{}}, {start: {_id:2129}, end: {_id:0}, properties:{}}, {start: {_id:2130}, end: {_id:0}, properties:{}}, {start: {_id:2131}, end: {_id:0}, properties:{}}, {start: {_id:2132}, end: {_id:0}, properties:{}}, {start: {_id:2133}, end: {_id:0}, properties:{}}, {start: {_id:2134}, end: {_id:0}, properties:{}}, {start: {_id:2135}, end: {_id:0}, properties:{}}, {start: {_id:2136}, end: {_id:0}, properties:{}}, {start: {_id:2137}, end: {_id:0}, properties:{}}, {start: {_id:2138}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDYED]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CORRELATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:56}, properties:{}}, {start: {_id:30}, end: {_id:486}, properties:{}}, {start: {_id:30}, end: {_id:609}, properties:{}}, {start: {_id:30}, end: {_id:1802}, properties:{}}, {start: {_id:974}, end: {_id:975}, properties:{}}, {start: {_id:991}, end: {_id:992}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:474}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_KINASE_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1879}, end: {_id:0}, properties:{}}, {start: {_id:1880}, end: {_id:0}, properties:{}}, {start: {_id:1881}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:571}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXERTS_EFFECT_ON]->(end) SET r += row.properties;
UNWIND [{start: {_id:726}, end: {_id:733}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:175}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPOSED_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:2283}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:499}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPAIRS_ENDOCYTOSIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:591}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1854}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:505}, properties:{}}, {start: {_id:30}, end: {_id:506}, properties:{}}, {start: {_id:30}, end: {_id:586}, properties:{}}, {start: {_id:30}, end: {_id:587}, properties:{}}, {start: {_id:30}, end: {_id:596}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:646}, properties:{}}, {start: {_id:0}, end: {_id:647}, properties:{}}, {start: {_id:0}, end: {_id:648}, properties:{}}, {start: {_id:0}, end: {_id:730}, properties:{}}, {start: {_id:0}, end: {_id:731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:663}, end: {_id:731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:734}, end: {_id:797}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1907}, end: {_id:1908}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:789}, end: {_id:797}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS_SENSORIAL_PERCEPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1705}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:56}, end: {_id:55}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1733}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1735}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1688}, end: {_id:1691}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEGRADES]->(end) SET r += row.properties;
UNWIND [{start: {_id:27}, end: {_id:0}, properties:{}}, {start: {_id:34}, end: {_id:0}, properties:{}}, {start: {_id:50}, end: {_id:23}, properties:{}}, {start: {_id:50}, end: {_id:48}, properties:{}}, {start: {_id:65}, end: {_id:0}, properties:{}}, {start: {_id:1921}, end: {_id:0}, properties:{}}, {start: {_id:2070}, end: {_id:2084}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:30}, properties:{}}, {start: {_id:440}, end: {_id:30}, properties:{}}, {start: {_id:444}, end: {_id:30}, properties:{}}, {start: {_id:445}, end: {_id:30}, properties:{}}, {start: {_id:488}, end: {_id:30}, properties:{}}, {start: {_id:1311}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2117}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:340}, end: {_id:0}, properties:{}}, {start: {_id:341}, end: {_id:0}, properties:{}}, {start: {_id:342}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES]->(end) SET r += row.properties;
UNWIND [{start: {_id:350}, end: {_id:352}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:472}, end: {_id:474}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:502}, properties:{}}, {start: {_id:30}, end: {_id:503}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDUCES_TRANSLATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:2048}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SENSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1936}, end: {_id:1939}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INCREASES_SOLUBLE_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:145}, end: {_id:143}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_MEASURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:155}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLASSIFIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1876}, end: {_id:778}, properties:{}}, {start: {_id:1877}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1861}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:1618}, properties:{}}, {start: {_id:1911}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:237}, end: {_id:299}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:644}, end: {_id:43}, properties:{}}, {start: {_id:819}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:123}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXERTS_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1979}, end: {_id:1980}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:605}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:1685}, properties:{}}, {start: {_id:1795}, end: {_id:2046}, properties:{}}, {start: {_id:1857}, end: {_id:1685}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:564}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpressed_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1934}, end: {_id:1930}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1882}, end: {_id:0}, properties:{}}, {start: {_id:1883}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:NOT_A_BIOMARKER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1975}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLASSIFIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1763}, end: {_id:1631}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:605}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_MITOPHAGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:1915}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PROTEIN_TO_AMYLOID]->(end) SET r += row.properties;
UNWIND [{start: {_id:894}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1717}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1925}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:614}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:789}, end: {_id:785}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS_SENSORIAL_PERCEPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:610}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:2047}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:489}, end: {_id:30}, properties:{}}, {start: {_id:490}, end: {_id:30}, properties:{}}, {start: {_id:491}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:456}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_MUTATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:790}, end: {_id:0}, properties:{}}, {start: {_id:790}, end: {_id:2105}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:478}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES_GTP_BINDING]->(end) SET r += row.properties;
UNWIND [{start: {_id:107}, end: {_id:343}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_A_SUBTYPE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:394}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN_PATHOBILOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1719}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INFLUENCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:579}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEGRADER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CORRELATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:182}, end: {_id:68}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:941}, end: {_id:662}, properties:{}}, {start: {_id:942}, end: {_id:662}, properties:{}}, {start: {_id:943}, end: {_id:662}, properties:{}}, {start: {_id:944}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MANAGES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:607}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:342}, end: {_id:111}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1938}, end: {_id:1941}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLEARANCE_RESULTS_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:629}, end: {_id:625}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INnervates]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:115}, properties:{}}, {start: {_id:0}, end: {_id:658}, properties:{}}, {start: {_id:0}, end: {_id:718}, properties:{}}, {start: {_id:0}, end: {_id:780}, properties:{}}, {start: {_id:0}, end: {_id:888}, properties:{}}, {start: {_id:0}, end: {_id:954}, properties:{}}, {start: {_id:0}, end: {_id:955}, properties:{}}, {start: {_id:0}, end: {_id:1698}, properties:{}}, {start: {_id:685}, end: {_id:778}, properties:{}}, {start: {_id:686}, end: {_id:762}, properties:{}}, {start: {_id:686}, end: {_id:778}, properties:{}}, {start: {_id:2029}, end: {_id:778}, properties:{}}, {start: {_id:2105}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:487}, end: {_id:578}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBSTRATE]->(end) SET r += row.properties;
UNWIND [{start: {_id:2149}, end: {_id:467}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EVALUATED]->(end) SET r += row.properties;
UNWIND [{start: {_id:1737}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:2104}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:625}, properties:{}}, {start: {_id:0}, end: {_id:626}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES_IN_GUT_BRAIN_AXIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:146}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCUMULATES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1905}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:APPLIES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:84}, end: {_id:43}, properties:{}}, {start: {_id:471}, end: {_id:475}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:1663}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1803}, end: {_id:1804}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_MITOHPAGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1925}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:437}, end: {_id:438}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1705}, end: {_id:1706}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1720}, end: {_id:0}, properties:{}}, {start: {_id:1721}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:116}, properties:{}}, {start: {_id:355}, end: {_id:0}, properties:{}}, {start: {_id:433}, end: {_id:101}, properties:{}}, {start: {_id:1897}, end: {_id:0}, properties:{}}, {start: {_id:2013}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:467}, end: {_id:30}, properties:{}}, {start: {_id:1653}, end: {_id:30}, properties:{}}, {start: {_id:2107}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USED_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1385}, end: {_id:778}, properties:{}}, {start: {_id:1692}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:521}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:797}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:134}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_FUNCTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:151}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:820}, end: {_id:660}, properties:{}}, {start: {_id:820}, end: {_id:661}, properties:{}}, {start: {_id:820}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1251}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_LEVEL_CORRELATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:146}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:774}, end: {_id:762}, properties:{}}, {start: {_id:775}, end: {_id:762}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1630}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEFINES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:644}, properties:{}}, {start: {_id:0}, end: {_id:668}, properties:{}}, {start: {_id:0}, end: {_id:669}, properties:{}}, {start: {_id:0}, end: {_id:720}, properties:{}}, {start: {_id:0}, end: {_id:721}, properties:{}}, {start: {_id:0}, end: {_id:722}, properties:{}}, {start: {_id:0}, end: {_id:723}, properties:{}}, {start: {_id:0}, end: {_id:724}, properties:{}}, {start: {_id:0}, end: {_id:725}, properties:{}}, {start: {_id:0}, end: {_id:726}, properties:{}}, {start: {_id:0}, end: {_id:806}, properties:{}}, {start: {_id:0}, end: {_id:807}, properties:{}}, {start: {_id:0}, end: {_id:819}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:1685}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:394}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_MUTATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1651}, end: {_id:172}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_PRODUCT_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:650}, end: {_id:797}, properties:{}}, {start: {_id:720}, end: {_id:719}, properties:{}}, {start: {_id:796}, end: {_id:797}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:848}, end: {_id:778}, properties:{}}, {start: {_id:849}, end: {_id:778}, properties:{}}, {start: {_id:858}, end: {_id:778}, properties:{}}, {start: {_id:859}, end: {_id:778}, properties:{}}, {start: {_id:860}, end: {_id:778}, properties:{}}, {start: {_id:861}, end: {_id:778}, properties:{}}, {start: {_id:862}, end: {_id:778}, properties:{}}, {start: {_id:863}, end: {_id:778}, properties:{}}, {start: {_id:864}, end: {_id:778}, properties:{}}, {start: {_id:865}, end: {_id:778}, properties:{}}, {start: {_id:866}, end: {_id:778}, properties:{}}, {start: {_id:867}, end: {_id:778}, properties:{}}, {start: {_id:868}, end: {_id:778}, properties:{}}, {start: {_id:869}, end: {_id:778}, properties:{}}, {start: {_id:870}, end: {_id:778}, properties:{}}, {start: {_id:871}, end: {_id:778}, properties:{}}, {start: {_id:872}, end: {_id:778}, properties:{}}, {start: {_id:873}, end: {_id:778}, properties:{}}, {start: {_id:874}, end: {_id:778}, properties:{}}, {start: {_id:875}, end: {_id:778}, properties:{}}, {start: {_id:876}, end: {_id:778}, properties:{}}, {start: {_id:877}, end: {_id:778}, properties:{}}, {start: {_id:881}, end: {_id:778}, properties:{}}, {start: {_id:882}, end: {_id:778}, properties:{}}, {start: {_id:883}, end: {_id:778}, properties:{}}, {start: {_id:884}, end: {_id:778}, properties:{}}, {start: {_id:885}, end: {_id:778}, properties:{}}, {start: {_id:886}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2006}, end: {_id:2168}, properties:{}}, {start: {_id:2006}, end: {_id:2169}, properties:{}}, {start: {_id:2006}, end: {_id:2170}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CREATED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:133}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPONENT_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:51}, end: {_id:0}, properties:{}}, {start: {_id:124}, end: {_id:0}, properties:{}}, {start: {_id:577}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:660}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1903}, end: {_id:1969}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY_THERAPY]->(end) SET r += row.properties;
UNWIND [{start: {_id:31}, end: {_id:175}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CODS_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:1691}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_ACCUMULATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:142}, properties:{}}, {start: {_id:778}, end: {_id:735}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:785}, end: {_id:786}, properties:{}}, {start: {_id:785}, end: {_id:787}, properties:{}}, {start: {_id:785}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:941}, end: {_id:664}, properties:{}}, {start: {_id:942}, end: {_id:664}, properties:{}}, {start: {_id:943}, end: {_id:664}, properties:{}}, {start: {_id:944}, end: {_id:664}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MANAGES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:734}, end: {_id:785}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:98}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:2047}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:112}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1923}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_ASSOCIATION_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:778}, properties:{}}, {start: {_id:63}, end: {_id:778}, properties:{}}, {start: {_id:158}, end: {_id:778}, properties:{}}, {start: {_id:160}, end: {_id:778}, properties:{}}, {start: {_id:172}, end: {_id:778}, properties:{}}, {start: {_id:583}, end: {_id:778}, properties:{}}, {start: {_id:1911}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1664}, end: {_id:63}, properties:{}}, {start: {_id:1665}, end: {_id:63}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1645}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGICAL_FEATURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:635}, properties:{}}, {start: {_id:778}, end: {_id:637}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:646}, properties:{}}, {start: {_id:778}, end: {_id:730}, properties:{}}, {start: {_id:778}, end: {_id:731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1910}, end: {_id:1907}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:749}, end: {_id:644}, properties:{}}, {start: {_id:750}, end: {_id:644}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:131}, end: {_id:132}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:213}, end: {_id:214}, properties:{}}, {start: {_id:215}, end: {_id:216}, properties:{}}, {start: {_id:217}, end: {_id:218}, properties:{}}, {start: {_id:219}, end: {_id:220}, properties:{}}, {start: {_id:225}, end: {_id:226}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:644}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1971}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:456}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN_PATHOBILOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:134}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEFECTIVE_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1950}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPLAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1630}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEFINES]->(end) SET r += row.properties;
UNWIND [{start: {_id:290}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:1663}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:781}, properties:{}}, {start: {_id:0}, end: {_id:782}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1607}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1729}, end: {_id:1728}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBGROUP_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:105}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1638}, end: {_id:1642}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EMPLOYS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:779}, end: {_id:778}, properties:{}}, {start: {_id:802}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MISDIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:1970}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:716}, end: {_id:778}, properties:{}}, {start: {_id:778}, end: {_id:115}, properties:{}}, {start: {_id:778}, end: {_id:655}, properties:{}}, {start: {_id:778}, end: {_id:716}, properties:{}}, {start: {_id:778}, end: {_id:764}, properties:{}}, {start: {_id:778}, end: {_id:765}, properties:{}}, {start: {_id:778}, end: {_id:845}, properties:{}}, {start: {_id:778}, end: {_id:1698}, properties:{}}, {start: {_id:1917}, end: {_id:778}, properties:{}}, {start: {_id:2088}, end: {_id:2089}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:645}, properties:{}}, {start: {_id:778}, end: {_id:654}, properties:{}}, {start: {_id:778}, end: {_id:655}, properties:{}}, {start: {_id:778}, end: {_id:658}, properties:{}}, {start: {_id:778}, end: {_id:659}, properties:{}}, {start: {_id:778}, end: {_id:717}, properties:{}}, {start: {_id:778}, end: {_id:718}, properties:{}}, {start: {_id:778}, end: {_id:747}, properties:{}}, {start: {_id:778}, end: {_id:748}, properties:{}}, {start: {_id:778}, end: {_id:763}, properties:{}}, {start: {_id:778}, end: {_id:764}, properties:{}}, {start: {_id:778}, end: {_id:765}, properties:{}}, {start: {_id:778}, end: {_id:779}, properties:{}}, {start: {_id:778}, end: {_id:783}, properties:{}}, {start: {_id:778}, end: {_id:817}, properties:{}}, {start: {_id:778}, end: {_id:887}, properties:{}}, {start: {_id:778}, end: {_id:893}, properties:{}}, {start: {_id:778}, end: {_id:954}, properties:{}}, {start: {_id:778}, end: {_id:955}, properties:{}}, {start: {_id:778}, end: {_id:1926}, properties:{}}, {start: {_id:1917}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1925}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1983}, end: {_id:1987}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PUBLISHED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:434}, end: {_id:435}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STABILIZES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1975}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLASSIFIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:846}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1655}, end: {_id:0}, properties:{}}, {start: {_id:1860}, end: {_id:0}, properties:{}}, {start: {_id:1860}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:93}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1672}, properties:{}}, {start: {_id:34}, end: {_id:1912}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1739}, end: {_id:1738}, properties:{}}, {start: {_id:1740}, end: {_id:1738}, properties:{}}, {start: {_id:1744}, end: {_id:1738}, properties:{}}, {start: {_id:1993}, end: {_id:1942}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:751}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:534}, end: {_id:577}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS_KINASE_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:668}, end: {_id:0}, properties:{}}, {start: {_id:668}, end: {_id:23}, properties:{}}, {start: {_id:668}, end: {_id:26}, properties:{}}, {start: {_id:668}, end: {_id:665}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:732}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:357}, end: {_id:778}, properties:{}}, {start: {_id:890}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:797}, end: {_id:786}, properties:{}}, {start: {_id:797}, end: {_id:787}, properties:{}}, {start: {_id:797}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:597}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:125}, end: {_id:122}, properties:{}}, {start: {_id:154}, end: {_id:63}, properties:{}}, {start: {_id:527}, end: {_id:30}, properties:{}}, {start: {_id:528}, end: {_id:30}, properties:{}}, {start: {_id:529}, end: {_id:30}, properties:{}}, {start: {_id:530}, end: {_id:30}, properties:{}}, {start: {_id:531}, end: {_id:30}, properties:{}}, {start: {_id:533}, end: {_id:30}, properties:{}}, {start: {_id:565}, end: {_id:30}, properties:{}}, {start: {_id:566}, end: {_id:30}, properties:{}}, {start: {_id:567}, end: {_id:30}, properties:{}}, {start: {_id:572}, end: {_id:30}, properties:{}}, {start: {_id:611}, end: {_id:30}, properties:{}}, {start: {_id:963}, end: {_id:961}, properties:{}}, {start: {_id:2096}, end: {_id:2038}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1736}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_PD]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:703}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:`CO-OCCURS_WITH`]->(end) SET r += row.properties;
UNWIND [{start: {_id:1645}, end: {_id:0}, properties:{}}, {start: {_id:1648}, end: {_id:0}, properties:{}}, {start: {_id:1649}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1655}, end: {_id:778}, properties:{}}, {start: {_id:1860}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:539}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS_KINASE_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:87}, end: {_id:43}, properties:{}}, {start: {_id:716}, end: {_id:0}, properties:{}}, {start: {_id:778}, end: {_id:116}, properties:{}}, {start: {_id:1917}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1618}, properties:{}}, {start: {_id:778}, end: {_id:1972}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:1858}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:631}, properties:{}}, {start: {_id:0}, end: {_id:635}, properties:{}}, {start: {_id:0}, end: {_id:797}, properties:{}}, {start: {_id:0}, end: {_id:1622}, properties:{}}, {start: {_id:0}, end: {_id:1623}, properties:{}}, {start: {_id:0}, end: {_id:1624}, properties:{}}, {start: {_id:0}, end: {_id:1625}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:52}, end: {_id:51}, properties:{}}, {start: {_id:172}, end: {_id:2070}, properties:{}}, {start: {_id:1251}, end: {_id:55}, properties:{}}, {start: {_id:1645}, end: {_id:1738}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpresses]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:521}, properties:{}}, {start: {_id:1795}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:610}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:453}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:456}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN_PATHOBILOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1657}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DISCOVERED]->(end) SET r += row.properties;
UNWIND [{start: {_id:718}, end: {_id:649}, properties:{}}, {start: {_id:718}, end: {_id:650}, properties:{}}, {start: {_id:718}, end: {_id:651}, properties:{}}, {start: {_id:765}, end: {_id:649}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:453}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_DEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:668}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:2047}, properties:{}}, {start: {_id:1795}, end: {_id:2047}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2266}, end: {_id:2146}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COAUTHORED_PAPER]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:2010}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1645}, end: {_id:778}, properties:{}}, {start: {_id:1648}, end: {_id:778}, properties:{}}, {start: {_id:1649}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1675}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:501}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_SURVIVAL]->(end) SET r += row.properties;
UNWIND [{start: {_id:1736}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:606}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPONENT_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:136}, end: {_id:0}, properties:{}}, {start: {_id:357}, end: {_id:0}, properties:{}}, {start: {_id:357}, end: {_id:2105}, properties:{}}, {start: {_id:890}, end: {_id:0}, properties:{}}, {start: {_id:2093}, end: {_id:2043}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:449}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:735}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:91}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_IRON_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1888}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:645}, end: {_id:778}, properties:{}}, {start: {_id:658}, end: {_id:762}, properties:{}}, {start: {_id:658}, end: {_id:778}, properties:{}}, {start: {_id:766}, end: {_id:762}, properties:{}}, {start: {_id:767}, end: {_id:762}, properties:{}}, {start: {_id:768}, end: {_id:762}, properties:{}}, {start: {_id:769}, end: {_id:762}, properties:{}}, {start: {_id:770}, end: {_id:762}, properties:{}}, {start: {_id:778}, end: {_id:115}, properties:{}}, {start: {_id:778}, end: {_id:658}, properties:{}}, {start: {_id:778}, end: {_id:718}, properties:{}}, {start: {_id:778}, end: {_id:780}, properties:{}}, {start: {_id:778}, end: {_id:888}, properties:{}}, {start: {_id:778}, end: {_id:954}, properties:{}}, {start: {_id:778}, end: {_id:955}, properties:{}}, {start: {_id:778}, end: {_id:1698}, properties:{}}, {start: {_id:1667}, end: {_id:778}, properties:{}}, {start: {_id:1698}, end: {_id:778}, properties:{}}, {start: {_id:1886}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:541}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:HAS_MUTATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:149}, end: {_id:1886}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PARTicipates_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:558}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_MRNA_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1731}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:55}, end: {_id:1916}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1675}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:720}, end: {_id:649}, properties:{}}, {start: {_id:720}, end: {_id:650}, properties:{}}, {start: {_id:720}, end: {_id:651}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:797}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:395}, end: {_id:0}, properties:{}}, {start: {_id:396}, end: {_id:0}, properties:{}}, {start: {_id:397}, end: {_id:0}, properties:{}}, {start: {_id:398}, end: {_id:0}, properties:{}}, {start: {_id:399}, end: {_id:0}, properties:{}}, {start: {_id:400}, end: {_id:0}, properties:{}}, {start: {_id:401}, end: {_id:0}, properties:{}}, {start: {_id:402}, end: {_id:0}, properties:{}}, {start: {_id:403}, end: {_id:0}, properties:{}}, {start: {_id:404}, end: {_id:0}, properties:{}}, {start: {_id:405}, end: {_id:0}, properties:{}}, {start: {_id:406}, end: {_id:0}, properties:{}}, {start: {_id:407}, end: {_id:0}, properties:{}}, {start: {_id:408}, end: {_id:0}, properties:{}}, {start: {_id:409}, end: {_id:0}, properties:{}}, {start: {_id:410}, end: {_id:0}, properties:{}}, {start: {_id:411}, end: {_id:0}, properties:{}}, {start: {_id:412}, end: {_id:0}, properties:{}}, {start: {_id:413}, end: {_id:0}, properties:{}}, {start: {_id:414}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1782}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNDED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:2210}, end: {_id:2211}, properties:{}}, {start: {_id:2210}, end: {_id:2212}, properties:{}}, {start: {_id:2210}, end: {_id:2213}, properties:{}}, {start: {_id:2210}, end: {_id:2214}, properties:{}}, {start: {_id:2210}, end: {_id:2215}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AUTHOR_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:1969}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY_THERAPY]->(end) SET r += row.properties;
UNWIND [{start: {_id:790}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1925}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:712}, properties:{}}, {start: {_id:778}, end: {_id:843}, properties:{}}, {start: {_id:778}, end: {_id:844}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:939}, end: {_id:664}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIAGNOSES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:89}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:143}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCUMULATES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:779}, end: {_id:0}, properties:{}}, {start: {_id:802}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MISDIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1689}, end: {_id:1690}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEACYLATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:348}, end: {_id:0}, properties:{}}, {start: {_id:349}, end: {_id:0}, properties:{}}, {start: {_id:353}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:812}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1724}, properties:{}}, {start: {_id:778}, end: {_id:1725}, properties:{}}, {start: {_id:778}, end: {_id:1726}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:75}, end: {_id:76}, properties:{}}, {start: {_id:112}, end: {_id:68}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1724}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1903}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:646}, end: {_id:758}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:93}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS_NEUROMELANIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:792}, end: {_id:0}, properties:{}}, {start: {_id:793}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1794}, end: {_id:1798}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUPPORTED]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES_PROTEIN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:610}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:487}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBSTRATE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1885}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:443}, properties:{}}, {start: {_id:30}, end: {_id:593}, properties:{}}, {start: {_id:30}, end: {_id:594}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_PHOSPHORYLATION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:7}, properties:{}}, {start: {_id:0}, end: {_id:34}, properties:{}}, {start: {_id:0}, end: {_id:55}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:701}, end: {_id:702}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:605}, properties:{}}, {start: {_id:34}, end: {_id:1656}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRAPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AUTO_PHOSPHORYLATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2016}, end: {_id:2024}, properties:{}}, {start: {_id:2016}, end: {_id:2025}, properties:{}}, {start: {_id:2016}, end: {_id:2026}, properties:{}}, {start: {_id:2016}, end: {_id:2027}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PUBLISHED_DATA]->(end) SET r += row.properties;
UNWIND [{start: {_id:811}, end: {_id:813}, properties:{}}, {start: {_id:811}, end: {_id:814}, properties:{}}, {start: {_id:811}, end: {_id:815}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTS_ON]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:511}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:2120}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1902}, end: {_id:1901}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBSTRUCTURE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:32}, end: {_id:1703}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:394}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN_PATHOBILOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:367}, end: {_id:0}, properties:{}}, {start: {_id:368}, end: {_id:0}, properties:{}}, {start: {_id:369}, end: {_id:0}, properties:{}}, {start: {_id:370}, end: {_id:0}, properties:{}}, {start: {_id:371}, end: {_id:0}, properties:{}}, {start: {_id:372}, end: {_id:0}, properties:{}}, {start: {_id:373}, end: {_id:0}, properties:{}}, {start: {_id:374}, end: {_id:0}, properties:{}}, {start: {_id:375}, end: {_id:0}, properties:{}}, {start: {_id:376}, end: {_id:0}, properties:{}}, {start: {_id:377}, end: {_id:0}, properties:{}}, {start: {_id:378}, end: {_id:0}, properties:{}}, {start: {_id:379}, end: {_id:0}, properties:{}}, {start: {_id:380}, end: {_id:0}, properties:{}}, {start: {_id:381}, end: {_id:0}, properties:{}}, {start: {_id:382}, end: {_id:0}, properties:{}}, {start: {_id:383}, end: {_id:0}, properties:{}}, {start: {_id:384}, end: {_id:0}, properties:{}}, {start: {_id:385}, end: {_id:0}, properties:{}}, {start: {_id:386}, end: {_id:0}, properties:{}}, {start: {_id:929}, end: {_id:0}, properties:{}}, {start: {_id:930}, end: {_id:0}, properties:{}}, {start: {_id:931}, end: {_id:0}, properties:{}}, {start: {_id:934}, end: {_id:0}, properties:{}}, {start: {_id:935}, end: {_id:0}, properties:{}}, {start: {_id:936}, end: {_id:0}, properties:{}}, {start: {_id:937}, end: {_id:0}, properties:{}}, {start: {_id:938}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:719}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USED_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:11}, end: {_id:0}, properties:{}}, {start: {_id:12}, end: {_id:0}, properties:{}}, {start: {_id:17}, end: {_id:0}, properties:{}}, {start: {_id:19}, end: {_id:0}, properties:{}}, {start: {_id:20}, end: {_id:0}, properties:{}}, {start: {_id:848}, end: {_id:0}, properties:{}}, {start: {_id:849}, end: {_id:0}, properties:{}}, {start: {_id:858}, end: {_id:0}, properties:{}}, {start: {_id:859}, end: {_id:0}, properties:{}}, {start: {_id:860}, end: {_id:0}, properties:{}}, {start: {_id:861}, end: {_id:0}, properties:{}}, {start: {_id:862}, end: {_id:0}, properties:{}}, {start: {_id:863}, end: {_id:0}, properties:{}}, {start: {_id:864}, end: {_id:0}, properties:{}}, {start: {_id:865}, end: {_id:0}, properties:{}}, {start: {_id:866}, end: {_id:0}, properties:{}}, {start: {_id:867}, end: {_id:0}, properties:{}}, {start: {_id:868}, end: {_id:0}, properties:{}}, {start: {_id:869}, end: {_id:0}, properties:{}}, {start: {_id:870}, end: {_id:0}, properties:{}}, {start: {_id:871}, end: {_id:0}, properties:{}}, {start: {_id:872}, end: {_id:0}, properties:{}}, {start: {_id:873}, end: {_id:0}, properties:{}}, {start: {_id:874}, end: {_id:0}, properties:{}}, {start: {_id:875}, end: {_id:0}, properties:{}}, {start: {_id:876}, end: {_id:0}, properties:{}}, {start: {_id:877}, end: {_id:0}, properties:{}}, {start: {_id:881}, end: {_id:0}, properties:{}}, {start: {_id:882}, end: {_id:0}, properties:{}}, {start: {_id:883}, end: {_id:0}, properties:{}}, {start: {_id:884}, end: {_id:0}, properties:{}}, {start: {_id:885}, end: {_id:0}, properties:{}}, {start: {_id:886}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:547}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:778}, properties:{}}, {start: {_id:34}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:705}, end: {_id:652}, properties:{}}, {start: {_id:706}, end: {_id:652}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSESSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:60}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:362}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:519}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:476}, properties:{}}, {start: {_id:30}, end: {_id:477}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_GTPASE_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:731}, end: {_id:762}, properties:{}}, {start: {_id:731}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1309}, end: {_id:1689}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1608}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1938}, end: {_id:1831}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLEARANCE_RESULTS_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:126}, end: {_id:123}, properties:{}}, {start: {_id:127}, end: {_id:123}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_NEURODEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:71}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:785}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1713}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1705}, end: {_id:1707}, properties:{}}, {start: {_id:1705}, end: {_id:1708}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRODUCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:627}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:655}, properties:{}}, {start: {_id:0}, end: {_id:764}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1626}, properties:{}}, {start: {_id:778}, end: {_id:1627}, properties:{}}, {start: {_id:778}, end: {_id:1628}, properties:{}}, {start: {_id:778}, end: {_id:1629}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:466}, properties:{}}, {start: {_id:30}, end: {_id:467}, properties:{}}, {start: {_id:30}, end: {_id:527}, properties:{}}, {start: {_id:30}, end: {_id:528}, properties:{}}, {start: {_id:30}, end: {_id:529}, properties:{}}, {start: {_id:30}, end: {_id:530}, properties:{}}, {start: {_id:30}, end: {_id:531}, properties:{}}, {start: {_id:30}, end: {_id:532}, properties:{}}, {start: {_id:30}, end: {_id:533}, properties:{}}, {start: {_id:30}, end: {_id:534}, properties:{}}, {start: {_id:30}, end: {_id:554}, properties:{}}, {start: {_id:30}, end: {_id:555}, properties:{}}, {start: {_id:30}, end: {_id:556}, properties:{}}, {start: {_id:710}, end: {_id:711}, properties:{}}, {start: {_id:1911}, end: {_id:1924}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:457}, properties:{}}, {start: {_id:30}, end: {_id:460}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:92}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:1805}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:812}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1951}, end: {_id:1964}, properties:{}}, {start: {_id:1951}, end: {_id:1965}, properties:{}}, {start: {_id:1951}, end: {_id:1966}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ROYALTIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:666}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1662}, end: {_id:48}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2040}, end: {_id:2046}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNCTIONS_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1724}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1724}, properties:{}}, {start: {_id:0}, end: {_id:1725}, properties:{}}, {start: {_id:0}, end: {_id:1726}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:613}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:358}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USED_TO_STUDY]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}, {start: {_id:30}, end: {_id:463}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1975}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLASSIFIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1626}, properties:{}}, {start: {_id:0}, end: {_id:1627}, properties:{}}, {start: {_id:0}, end: {_id:1628}, properties:{}}, {start: {_id:0}, end: {_id:1629}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:359}, end: {_id:357}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:APPLIED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:638}, properties:{}}, {start: {_id:778}, end: {_id:639}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES_IN_GUT_BRAIN_AXIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1856}, properties:{}}, {start: {_id:2279}, end: {_id:98}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:940}, end: {_id:664}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENTS_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:28}, end: {_id:29}, properties:{}}, {start: {_id:30}, end: {_id:149}, properties:{}}, {start: {_id:30}, end: {_id:523}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION]->(end) SET r += row.properties;
UNWIND [{start: {_id:2206}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:162}, end: {_id:52}, properties:{}}, {start: {_id:1911}, end: {_id:1672}, properties:{}}, {start: {_id:1911}, end: {_id:1912}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:149}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:1663}, properties:{}}, {start: {_id:1795}, end: {_id:1663}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:139}, end: {_id:140}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_MORE_ACCURATE_THAN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1805}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:159}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_KINASE_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:735}, end: {_id:786}, properties:{}}, {start: {_id:735}, end: {_id:787}, properties:{}}, {start: {_id:735}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:1731}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:778}, properties:{}}, {start: {_id:1921}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:103}, end: {_id:99}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES]->(end) SET r += row.properties;
UNWIND [{start: {_id:804}, end: {_id:805}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1715}, end: {_id:0}, properties:{}}, {start: {_id:1715}, end: {_id:2084}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1702}, end: {_id:1615}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1670}, end: {_id:1669}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:778}, properties:{}}, {start: {_id:1911}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:663}, end: {_id:660}, properties:{}}, {start: {_id:663}, end: {_id:661}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1017}, end: {_id:778}, properties:{}}, {start: {_id:1029}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:562}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:777}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:615}, end: {_id:63}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1645}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGICAL_FEATURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:559}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDUCES_NEURODEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:960}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1913}, end: {_id:1914}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_A_SUBTYPE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1951}, end: {_id:1762}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNDING]->(end) SET r += row.properties;
UNWIND [{start: {_id:95}, end: {_id:149}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:940}, end: {_id:668}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENTS_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:940}, end: {_id:954}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENTS_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1971}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:798}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:578}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_MRNA_STABILITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1733}, end: {_id:1731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBSTRATE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:704}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:`CO-OCCURS_WITH`]->(end) SET r += row.properties;
UNWIND [{start: {_id:954}, end: {_id:0}, properties:{}}, {start: {_id:954}, end: {_id:23}, properties:{}}, {start: {_id:954}, end: {_id:26}, properties:{}}, {start: {_id:954}, end: {_id:665}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:967}, end: {_id:968}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1821}, end: {_id:1822}, properties:{}}, {start: {_id:1821}, end: {_id:1823}, properties:{}}, {start: {_id:1821}, end: {_id:1824}, properties:{}}, {start: {_id:1821}, end: {_id:1825}, properties:{}}, {start: {_id:1821}, end: {_id:1826}, properties:{}}, {start: {_id:2216}, end: {_id:2217}, properties:{}}, {start: {_id:2216}, end: {_id:2218}, properties:{}}, {start: {_id:2216}, end: {_id:2219}, properties:{}}, {start: {_id:2216}, end: {_id:2220}, properties:{}}, {start: {_id:2216}, end: {_id:2221}, properties:{}}, {start: {_id:2216}, end: {_id:2222}, properties:{}}, {start: {_id:2216}, end: {_id:2223}, properties:{}}, {start: {_id:2216}, end: {_id:2224}, properties:{}}, {start: {_id:2216}, end: {_id:2225}, properties:{}}, {start: {_id:2226}, end: {_id:2203}, properties:{}}, {start: {_id:2226}, end: {_id:2227}, properties:{}}, {start: {_id:2226}, end: {_id:2228}, properties:{}}, {start: {_id:2226}, end: {_id:2229}, properties:{}}, {start: {_id:2226}, end: {_id:2230}, properties:{}}, {start: {_id:2226}, end: {_id:2231}, properties:{}}, {start: {_id:2226}, end: {_id:2232}, properties:{}}, {start: {_id:2226}, end: {_id:2233}, properties:{}}, {start: {_id:2226}, end: {_id:2234}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AUTHOR_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:640}, properties:{}}, {start: {_id:778}, end: {_id:641}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:442}, properties:{}}, {start: {_id:30}, end: {_id:443}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBSTRATE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:91}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_ANALYZE]->(end) SET r += row.properties;
UNWIND [{start: {_id:1650}, end: {_id:1649}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_FUNCTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:646}, end: {_id:649}, properties:{}}, {start: {_id:646}, end: {_id:650}, properties:{}}, {start: {_id:646}, end: {_id:651}, properties:{}}, {start: {_id:647}, end: {_id:649}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1666}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1688}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REDUCES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:35}, properties:{}}, {start: {_id:0}, end: {_id:36}, properties:{}}, {start: {_id:0}, end: {_id:37}, properties:{}}, {start: {_id:0}, end: {_id:38}, properties:{}}, {start: {_id:0}, end: {_id:39}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:785}, properties:{}}, {start: {_id:778}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:356}, end: {_id:0}, properties:{}}, {start: {_id:778}, end: {_id:48}, properties:{}}, {start: {_id:778}, end: {_id:664}, properties:{}}, {start: {_id:778}, end: {_id:686}, properties:{}}, {start: {_id:778}, end: {_id:741}, properties:{}}, {start: {_id:778}, end: {_id:801}, properties:{}}, {start: {_id:778}, end: {_id:1859}, properties:{}}, {start: {_id:1917}, end: {_id:0}, properties:{}}, {start: {_id:2036}, end: {_id:2095}, properties:{}}, {start: {_id:2037}, end: {_id:2095}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2006}, end: {_id:2015}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNDING_SOURCE]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:574}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_PHAGOSOME_MATURATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:231}, end: {_id:230}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:663}, end: {_id:658}, properties:{}}, {start: {_id:663}, end: {_id:659}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1903}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:646}, properties:{}}, {start: {_id:778}, end: {_id:647}, properties:{}}, {start: {_id:778}, end: {_id:648}, properties:{}}, {start: {_id:778}, end: {_id:730}, properties:{}}, {start: {_id:778}, end: {_id:731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:954}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:55}, properties:{}}, {start: {_id:30}, end: {_id:516}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_PROTEIN_STABILITY_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:8}, end: {_id:797}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ALTERS_SENSORIAL_PERCEPTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:2007}, end: {_id:2008}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:118}, end: {_id:120}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENZYMATICALLY_CONVERTS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:777}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:670}, end: {_id:704}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STRONGLY_ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:0}, properties:{}}, {start: {_id:34}, end: {_id:1897}, properties:{}}, {start: {_id:55}, end: {_id:0}, properties:{}}, {start: {_id:55}, end: {_id:232}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:741}, end: {_id:744}, properties:{}}, {start: {_id:741}, end: {_id:745}, properties:{}}, {start: {_id:741}, end: {_id:746}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXACERBATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:664}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1663}, properties:{}}, {start: {_id:34}, end: {_id:1665}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRAPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:0}, properties:{}}, {start: {_id:1911}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:610}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:2070}, end: {_id:1691}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEGRADES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:513}, properties:{}}, {start: {_id:30}, end: {_id:515}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:661}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:960}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:956}, properties:{}}, {start: {_id:0}, end: {_id:957}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_SYMPTOM]->(end) SET r += row.properties;
UNWIND [{start: {_id:1688}, end: {_id:2084}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2285}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:30}, properties:{}}, {start: {_id:0}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:784}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1663}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1688}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REDUCES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:570}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:439}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1920}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:645}, properties:{}}, {start: {_id:0}, end: {_id:654}, properties:{}}, {start: {_id:0}, end: {_id:655}, properties:{}}, {start: {_id:0}, end: {_id:658}, properties:{}}, {start: {_id:0}, end: {_id:659}, properties:{}}, {start: {_id:0}, end: {_id:717}, properties:{}}, {start: {_id:0}, end: {_id:718}, properties:{}}, {start: {_id:0}, end: {_id:747}, properties:{}}, {start: {_id:0}, end: {_id:748}, properties:{}}, {start: {_id:0}, end: {_id:763}, properties:{}}, {start: {_id:0}, end: {_id:764}, properties:{}}, {start: {_id:0}, end: {_id:765}, properties:{}}, {start: {_id:0}, end: {_id:779}, properties:{}}, {start: {_id:0}, end: {_id:783}, properties:{}}, {start: {_id:0}, end: {_id:817}, properties:{}}, {start: {_id:0}, end: {_id:887}, properties:{}}, {start: {_id:0}, end: {_id:893}, properties:{}}, {start: {_id:0}, end: {_id:954}, properties:{}}, {start: {_id:0}, end: {_id:955}, properties:{}}, {start: {_id:0}, end: {_id:1926}, properties:{}}, {start: {_id:697}, end: {_id:778}, properties:{}}, {start: {_id:698}, end: {_id:778}, properties:{}}, {start: {_id:741}, end: {_id:778}, properties:{}}, {start: {_id:794}, end: {_id:778}, properties:{}}, {start: {_id:1875}, end: {_id:778}, properties:{}}, {start: {_id:1897}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:929}, end: {_id:778}, properties:{}}, {start: {_id:930}, end: {_id:778}, properties:{}}, {start: {_id:931}, end: {_id:778}, properties:{}}, {start: {_id:934}, end: {_id:778}, properties:{}}, {start: {_id:935}, end: {_id:778}, properties:{}}, {start: {_id:936}, end: {_id:778}, properties:{}}, {start: {_id:937}, end: {_id:778}, properties:{}}, {start: {_id:938}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:939}, end: {_id:954}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIAGNOSES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:792}, end: {_id:778}, properties:{}}, {start: {_id:793}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2204}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:622}, end: {_id:778}, properties:{}}, {start: {_id:1666}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1679}, end: {_id:1680}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REQUIRES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:149}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:666}, end: {_id:668}, properties:{}}, {start: {_id:688}, end: {_id:644}, properties:{}}, {start: {_id:727}, end: {_id:720}, properties:{}}, {start: {_id:728}, end: {_id:720}, properties:{}}, {start: {_id:729}, end: {_id:724}, properties:{}}, {start: {_id:754}, end: {_id:644}, properties:{}}, {start: {_id:755}, end: {_id:644}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1878}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CORRELATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:659}, properties:{}}, {start: {_id:0}, end: {_id:708}, properties:{}}, {start: {_id:0}, end: {_id:709}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1621}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:726}, end: {_id:655}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:49}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INCREASES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:583}, end: {_id:173}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COLLOCALIZES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:778}, properties:{}}, {start: {_id:34}, end: {_id:778}, properties:{}}, {start: {_id:50}, end: {_id:778}, properties:{}}, {start: {_id:55}, end: {_id:778}, properties:{}}, {start: {_id:175}, end: {_id:778}, properties:{}}, {start: {_id:456}, end: {_id:778}, properties:{}}, {start: {_id:824}, end: {_id:778}, properties:{}}, {start: {_id:825}, end: {_id:778}, properties:{}}, {start: {_id:826}, end: {_id:778}, properties:{}}, {start: {_id:1619}, end: {_id:778}, properties:{}}, {start: {_id:1620}, end: {_id:778}, properties:{}}, {start: {_id:1651}, end: {_id:778}, properties:{}}, {start: {_id:1654}, end: {_id:778}, properties:{}}, {start: {_id:1980}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:618}, properties:{}}, {start: {_id:0}, end: {_id:619}, properties:{}}, {start: {_id:0}, end: {_id:620}, properties:{}}, {start: {_id:0}, end: {_id:633}, properties:{}}, {start: {_id:0}, end: {_id:640}, properties:{}}, {start: {_id:0}, end: {_id:650}, properties:{}}, {start: {_id:0}, end: {_id:652}, properties:{}}, {start: {_id:0}, end: {_id:668}, properties:{}}, {start: {_id:0}, end: {_id:720}, properties:{}}, {start: {_id:0}, end: {_id:726}, properties:{}}, {start: {_id:0}, end: {_id:796}, properties:{}}, {start: {_id:0}, end: {_id:800}, properties:{}}, {start: {_id:0}, end: {_id:818}, properties:{}}, {start: {_id:0}, end: {_id:819}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2097}, end: {_id:2038}, properties:{}}, {start: {_id:2098}, end: {_id:2038}, properties:{}}, {start: {_id:2100}, end: {_id:2038}, properties:{}}, {start: {_id:2101}, end: {_id:2038}, properties:{}}, {start: {_id:2102}, end: {_id:2038}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:13}, end: {_id:21}, properties:{}}, {start: {_id:14}, end: {_id:21}, properties:{}}, {start: {_id:15}, end: {_id:21}, properties:{}}, {start: {_id:16}, end: {_id:21}, properties:{}}, {start: {_id:18}, end: {_id:21}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:627}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1945}, end: {_id:1946}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:43}, end: {_id:137}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DIFFERENTIATES_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1924}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1734}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:453}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:801}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MISDIAGNOSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ANALOGOUS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:774}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:115}, properties:{}}, {start: {_id:0}, end: {_id:655}, properties:{}}, {start: {_id:0}, end: {_id:716}, properties:{}}, {start: {_id:0}, end: {_id:764}, properties:{}}, {start: {_id:0}, end: {_id:765}, properties:{}}, {start: {_id:0}, end: {_id:845}, properties:{}}, {start: {_id:0}, end: {_id:1698}, properties:{}}, {start: {_id:1897}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:605}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_FUNCTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:40}, end: {_id:41}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION]->(end) SET r += row.properties;
UNWIND [{start: {_id:941}, end: {_id:668}, properties:{}}, {start: {_id:942}, end: {_id:668}, properties:{}}, {start: {_id:943}, end: {_id:668}, properties:{}}, {start: {_id:944}, end: {_id:668}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MANAGES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:820}, end: {_id:731}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1763}, end: {_id:1641}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:WORKS_AT]->(end) SET r += row.properties;
UNWIND [{start: {_id:151}, end: {_id:150}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1385}, end: {_id:0}, properties:{}}, {start: {_id:1692}, end: {_id:0}, properties:{}}, {start: {_id:1692}, end: {_id:2095}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:30}, properties:{}}, {start: {_id:978}, end: {_id:974}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1662}, end: {_id:610}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:1688}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpresses]->(end) SET r += row.properties;
UNWIND [{start: {_id:159}, end: {_id:30}, properties:{}}, {start: {_id:394}, end: {_id:30}, properties:{}}, {start: {_id:502}, end: {_id:30}, properties:{}}, {start: {_id:503}, end: {_id:30}, properties:{}}, {start: {_id:505}, end: {_id:30}, properties:{}}, {start: {_id:506}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:632}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:846}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:159}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENHANCES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:144}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_ANALYZE]->(end) SET r += row.properties;
UNWIND [{start: {_id:543}, end: {_id:544}, properties:{}}, {start: {_id:543}, end: {_id:545}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_SUBCLASS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:149}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1668}, end: {_id:1669}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AGGREGATES_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:34}, properties:{}}, {start: {_id:48}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES]->(end) SET r += row.properties;
UNWIND [{start: {_id:640}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_PROGRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:145}, end: {_id:146}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_MEASURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1618}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:778}, properties:{}}, {start: {_id:162}, end: {_id:778}, properties:{}}, {start: {_id:172}, end: {_id:778}, properties:{}}, {start: {_id:1922}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:737}, properties:{}}, {start: {_id:0}, end: {_id:738}, properties:{}}, {start: {_id:0}, end: {_id:811}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1618}, properties:{}}, {start: {_id:0}, end: {_id:1972}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:133}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:663}, end: {_id:686}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:132}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:818}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1897}, properties:{}}, {start: {_id:47}, end: {_id:0}, properties:{}}, {start: {_id:47}, end: {_id:23}, properties:{}}, {start: {_id:47}, end: {_id:48}, properties:{}}, {start: {_id:1651}, end: {_id:1875}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:93}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:107}, end: {_id:106}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_A_SUBTYPE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:2070}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REDUCES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AGGREGATES_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:720}, end: {_id:758}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1608}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:661}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:471}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_GTPASE_FUNCTION]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2090}, end: {_id:1688}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:116}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PREDISPOSES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:75}, end: {_id:77}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1911}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CORRELATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2009}, end: {_id:2006}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INFORMS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2092}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENZYME_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1927}, end: {_id:1929}, properties:{}}, {start: {_id:1928}, end: {_id:1929}, properties:{}}, {start: {_id:2279}, end: {_id:1619}, properties:{}}, {start: {_id:2279}, end: {_id:1944}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTRIBUTES_TO_PATHOGENESIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:654}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_PROGRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:116}, properties:{}}, {start: {_id:0}, end: {_id:664}, properties:{}}, {start: {_id:0}, end: {_id:686}, properties:{}}, {start: {_id:0}, end: {_id:1728}, properties:{}}, {start: {_id:116}, end: {_id:43}, properties:{}}, {start: {_id:347}, end: {_id:0}, properties:{}}, {start: {_id:389}, end: {_id:390}, properties:{}}, {start: {_id:685}, end: {_id:0}, properties:{}}, {start: {_id:686}, end: {_id:0}, properties:{}}, {start: {_id:2029}, end: {_id:0}, properties:{}}, {start: {_id:2105}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:144}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_IRON_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:647}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1920}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:23}, properties:{}}, {start: {_id:0}, end: {_id:48}, properties:{}}, {start: {_id:0}, end: {_id:664}, properties:{}}, {start: {_id:0}, end: {_id:686}, properties:{}}, {start: {_id:0}, end: {_id:741}, properties:{}}, {start: {_id:0}, end: {_id:801}, properties:{}}, {start: {_id:0}, end: {_id:1859}, properties:{}}, {start: {_id:697}, end: {_id:0}, properties:{}}, {start: {_id:698}, end: {_id:0}, properties:{}}, {start: {_id:741}, end: {_id:0}, properties:{}}, {start: {_id:794}, end: {_id:0}, properties:{}}, {start: {_id:983}, end: {_id:985}, properties:{}}, {start: {_id:994}, end: {_id:996}, properties:{}}, {start: {_id:1875}, end: {_id:0}, properties:{}}, {start: {_id:1897}, end: {_id:0}, properties:{}}, {start: {_id:2029}, end: {_id:2014}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:48}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:89}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:521}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_MITOPHAGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:1970}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:143}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCUMULATES_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}, {start: {_id:63}, end: {_id:0}, properties:{}}, {start: {_id:158}, end: {_id:0}, properties:{}}, {start: {_id:159}, end: {_id:43}, properties:{}}, {start: {_id:160}, end: {_id:0}, properties:{}}, {start: {_id:172}, end: {_id:0}, properties:{}}, {start: {_id:192}, end: {_id:0}, properties:{}}, {start: {_id:393}, end: {_id:0}, properties:{}}, {start: {_id:394}, end: {_id:0}, properties:{}}, {start: {_id:583}, end: {_id:0}, properties:{}}, {start: {_id:1911}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:948}, end: {_id:726}, properties:{}}, {start: {_id:949}, end: {_id:726}, properties:{}}, {start: {_id:950}, end: {_id:726}, properties:{}}, {start: {_id:951}, end: {_id:726}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ETIOLOGIES_CONDITION]->(end) SET r += row.properties;
UNWIND [{start: {_id:548}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DECAPS_MRNA]->(end) SET r += row.properties;
UNWIND [{start: {_id:670}, end: {_id:671}, properties:{}}, {start: {_id:670}, end: {_id:672}, properties:{}}, {start: {_id:670}, end: {_id:673}, properties:{}}, {start: {_id:670}, end: {_id:674}, properties:{}}, {start: {_id:670}, end: {_id:675}, properties:{}}, {start: {_id:778}, end: {_id:620}, properties:{}}, {start: {_id:778}, end: {_id:633}, properties:{}}, {start: {_id:778}, end: {_id:958}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXHIBITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:179}, end: {_id:0}, properties:{}}, {start: {_id:180}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_DISEASE_SEVERITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1319}, end: {_id:1320}, properties:{}}, {start: {_id:1321}, end: {_id:1322}, properties:{}}, {start: {_id:1325}, end: {_id:1326}, properties:{}}, {start: {_id:1333}, end: {_id:1334}, properties:{}}, {start: {_id:1333}, end: {_id:1335}, properties:{}}, {start: {_id:1337}, end: {_id:1338}, properties:{}}, {start: {_id:1341}, end: {_id:1342}, properties:{}}, {start: {_id:1343}, end: {_id:1344}, properties:{}}, {start: {_id:1347}, end: {_id:1348}, properties:{}}, {start: {_id:1347}, end: {_id:1349}, properties:{}}, {start: {_id:1353}, end: {_id:1354}, properties:{}}, {start: {_id:1356}, end: {_id:1349}, properties:{}}, {start: {_id:1356}, end: {_id:1357}, properties:{}}, {start: {_id:1358}, end: {_id:1359}, properties:{}}, {start: {_id:1362}, end: {_id:1363}, properties:{}}, {start: {_id:1374}, end: {_id:1375}, properties:{}}, {start: {_id:1376}, end: {_id:1377}, properties:{}}, {start: {_id:1378}, end: {_id:1349}, properties:{}}, {start: {_id:1378}, end: {_id:1379}, properties:{}}, {start: {_id:1384}, end: {_id:1385}, properties:{}}, {start: {_id:1389}, end: {_id:1390}, properties:{}}, {start: {_id:1395}, end: {_id:1385}, properties:{}}, {start: {_id:1395}, end: {_id:1396}, properties:{}}, {start: {_id:1395}, end: {_id:1397}, properties:{}}, {start: {_id:1401}, end: {_id:1402}, properties:{}}, {start: {_id:1403}, end: {_id:1404}, properties:{}}, {start: {_id:1407}, end: {_id:1408}, properties:{}}, {start: {_id:1410}, end: {_id:1411}, properties:{}}, {start: {_id:1412}, end: {_id:1413}, properties:{}}, {start: {_id:1412}, end: {_id:1414}, properties:{}}, {start: {_id:1412}, end: {_id:1415}, properties:{}}, {start: {_id:1416}, end: {_id:1417}, properties:{}}, {start: {_id:1420}, end: {_id:1349}, properties:{}}, {start: {_id:1420}, end: {_id:1421}, properties:{}}, {start: {_id:1423}, end: {_id:1424}, properties:{}}, {start: {_id:1425}, end: {_id:1426}, properties:{}}, {start: {_id:1429}, end: {_id:1430}, properties:{}}, {start: {_id:1434}, end: {_id:1435}, properties:{}}, {start: {_id:1434}, end: {_id:1436}, properties:{}}, {start: {_id:1437}, end: {_id:1438}, properties:{}}, {start: {_id:1439}, end: {_id:1440}, properties:{}}, {start: {_id:1441}, end: {_id:1442}, properties:{}}, {start: {_id:1452}, end: {_id:1453}, properties:{}}, {start: {_id:1457}, end: {_id:1458}, properties:{}}, {start: {_id:1460}, end: {_id:1461}, properties:{}}, {start: {_id:1460}, end: {_id:1462}, properties:{}}, {start: {_id:1467}, end: {_id:1468}, properties:{}}, {start: {_id:1469}, end: {_id:1470}, properties:{}}, {start: {_id:1469}, end: {_id:1471}, properties:{}}, {start: {_id:1472}, end: {_id:1349}, properties:{}}, {start: {_id:1472}, end: {_id:1473}, properties:{}}, {start: {_id:1474}, end: {_id:1475}, properties:{}}, {start: {_id:1474}, end: {_id:1476}, properties:{}}, {start: {_id:1479}, end: {_id:1480}, properties:{}}, {start: {_id:1479}, end: {_id:1481}, properties:{}}, {start: {_id:1479}, end: {_id:1482}, properties:{}}, {start: {_id:1486}, end: {_id:1349}, properties:{}}, {start: {_id:1486}, end: {_id:1487}, properties:{}}, {start: {_id:1488}, end: {_id:1489}, properties:{}}, {start: {_id:1493}, end: {_id:1494}, properties:{}}, {start: {_id:1495}, end: {_id:1496}, properties:{}}, {start: {_id:1495}, end: {_id:1497}, properties:{}}, {start: {_id:1499}, end: {_id:1500}, properties:{}}, {start: {_id:1503}, end: {_id:1504}, properties:{}}, {start: {_id:1505}, end: {_id:1506}, properties:{}}, {start: {_id:1511}, end: {_id:1349}, properties:{}}, {start: {_id:1511}, end: {_id:1512}, properties:{}}, {start: {_id:1513}, end: {_id:1514}, properties:{}}, {start: {_id:1519}, end: {_id:1520}, properties:{}}, {start: {_id:1527}, end: {_id:1349}, properties:{}}, {start: {_id:1527}, end: {_id:1528}, properties:{}}, {start: {_id:1527}, end: {_id:1529}, properties:{}}, {start: {_id:1527}, end: {_id:1530}, properties:{}}, {start: {_id:1533}, end: {_id:1534}, properties:{}}, {start: {_id:1533}, end: {_id:1535}, properties:{}}, {start: {_id:1536}, end: {_id:1357}, properties:{}}, {start: {_id:1537}, end: {_id:1538}, properties:{}}, {start: {_id:1543}, end: {_id:1544}, properties:{}}, {start: {_id:1546}, end: {_id:1349}, properties:{}}, {start: {_id:1546}, end: {_id:1547}, properties:{}}, {start: {_id:1548}, end: {_id:1549}, properties:{}}, {start: {_id:1552}, end: {_id:1553}, properties:{}}, {start: {_id:1552}, end: {_id:1554}, properties:{}}, {start: {_id:1559}, end: {_id:1496}, properties:{}}, {start: {_id:1559}, end: {_id:1560}, properties:{}}, {start: {_id:1561}, end: {_id:1349}, properties:{}}, {start: {_id:1561}, end: {_id:1562}, properties:{}}, {start: {_id:1566}, end: {_id:1567}, properties:{}}, {start: {_id:1566}, end: {_id:1568}, properties:{}}, {start: {_id:1571}, end: {_id:1572}, properties:{}}, {start: {_id:1573}, end: {_id:1349}, properties:{}}, {start: {_id:1573}, end: {_id:1574}, properties:{}}, {start: {_id:1575}, end: {_id:1576}, properties:{}}, {start: {_id:1575}, end: {_id:1577}, properties:{}}, {start: {_id:1580}, end: {_id:1581}, properties:{}}, {start: {_id:1582}, end: {_id:1453}, properties:{}}, {start: {_id:1583}, end: {_id:1584}, properties:{}}, {start: {_id:1585}, end: {_id:1586}, properties:{}}, {start: {_id:1592}, end: {_id:1593}, properties:{}}, {start: {_id:1599}, end: {_id:1600}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVESTIGATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1599}, end: {_id:1601}, properties:{}}, {start: {_id:2287}, end: {_id:2288}, properties:{}}, {start: {_id:2289}, end: {_id:2290}, properties:{}}, {start: {_id:2291}, end: {_id:1496}, properties:{}}, {start: {_id:2291}, end: {_id:2292}, properties:{}}, {start: {_id:2295}, end: {_id:2296}, properties:{}}, {start: {_id:2300}, end: {_id:1496}, properties:{}}, {start: {_id:2300}, end: {_id:2301}, properties:{}}, {start: {_id:2304}, end: {_id:2305}, properties:{}}, {start: {_id:2307}, end: {_id:2308}, properties:{}}, {start: {_id:2307}, end: {_id:2309}, properties:{}}, {start: {_id:2311}, end: {_id:2312}, properties:{}}, {start: {_id:2314}, end: {_id:1349}, properties:{}}, {start: {_id:2314}, end: {_id:2315}, properties:{}}, {start: {_id:2314}, end: {_id:2316}, properties:{}}, {start: {_id:2314}, end: {_id:2317}, properties:{}}, {start: {_id:2314}, end: {_id:2318}, properties:{}}, {start: {_id:2320}, end: {_id:1349}, properties:{}}, {start: {_id:2320}, end: {_id:2321}, properties:{}}, {start: {_id:2324}, end: {_id:2325}, properties:{}}, {start: {_id:2330}, end: {_id:1349}, properties:{}}, {start: {_id:2330}, end: {_id:2331}, properties:{}}, {start: {_id:2334}, end: {_id:2335}, properties:{}}, {start: {_id:2334}, end: {_id:2336}, properties:{}}, {start: {_id:2339}, end: {_id:2340}, properties:{}}, {start: {_id:2344}, end: {_id:2345}, properties:{}}, {start: {_id:2346}, end: {_id:2347}, properties:{}}, {start: {_id:2346}, end: {_id:2348}, properties:{}}, {start: {_id:2355}, end: {_id:2356}, properties:{}}, {start: {_id:2357}, end: {_id:2358}, properties:{}}, {start: {_id:2357}, end: {_id:2359}, properties:{}}, {start: {_id:2361}, end: {_id:2362}, properties:{}}, {start: {_id:2363}, end: {_id:2364}, properties:{}}, {start: {_id:2363}, end: {_id:2365}, properties:{}}, {start: {_id:2366}, end: {_id:1496}, properties:{}}, {start: {_id:2366}, end: {_id:2367}, properties:{}}, {start: {_id:2372}, end: {_id:2373}, properties:{}}, {start: {_id:2374}, end: {_id:2375}, properties:{}}, {start: {_id:2377}, end: {_id:2378}, properties:{}}, {start: {_id:2384}, end: {_id:2385}, properties:{}}, {start: {_id:2387}, end: {_id:1349}, properties:{}}, {start: {_id:2387}, end: {_id:2388}, properties:{}}, {start: {_id:2392}, end: {_id:2393}, properties:{}}, {start: {_id:2394}, end: {_id:1349}, properties:{}}, {start: {_id:2394}, end: {_id:2395}, properties:{}}, {start: {_id:2396}, end: {_id:2397}, properties:{}}, {start: {_id:2398}, end: {_id:2399}, properties:{}}, {start: {_id:2398}, end: {_id:2400}, properties:{}}, {start: {_id:2407}, end: {_id:2408}, properties:{}}, {start: {_id:2407}, end: {_id:2409}, properties:{}}, {start: {_id:2407}, end: {_id:2410}, properties:{}}, {start: {_id:2407}, end: {_id:2411}, properties:{}}, {start: {_id:2407}, end: {_id:2412}, properties:{}}, {start: {_id:2407}, end: {_id:2413}, properties:{}}, {start: {_id:2407}, end: {_id:2414}, properties:{}}, {start: {_id:2407}, end: {_id:2415}, properties:{}}, {start: {_id:2417}, end: {_id:1349}, properties:{}}, {start: {_id:2417}, end: {_id:2418}, properties:{}}, {start: {_id:2420}, end: {_id:1354}, properties:{}}, {start: {_id:2421}, end: {_id:1354}, properties:{}}, {start: {_id:2423}, end: {_id:1349}, properties:{}}, {start: {_id:2423}, end: {_id:2424}, properties:{}}, {start: {_id:2425}, end: {_id:1349}, properties:{}}, {start: {_id:2425}, end: {_id:2426}, properties:{}}, {start: {_id:2429}, end: {_id:2430}, properties:{}}, {start: {_id:2429}, end: {_id:2431}, properties:{}}, {start: {_id:2429}, end: {_id:2432}, properties:{}}, {start: {_id:2434}, end: {_id:1349}, properties:{}}, {start: {_id:2434}, end: {_id:2435}, properties:{}}, {start: {_id:2434}, end: {_id:2436}, properties:{}}, {start: {_id:2437}, end: {_id:2438}, properties:{}}, {start: {_id:2437}, end: {_id:2439}, properties:{}}, {start: {_id:2441}, end: {_id:2442}, properties:{}}, {start: {_id:2441}, end: {_id:2443}, properties:{}}, {start: {_id:2444}, end: {_id:1349}, properties:{}}, {start: {_id:2444}, end: {_id:2445}, properties:{}}, {start: {_id:2450}, end: {_id:1349}, properties:{}}, {start: {_id:2450}, end: {_id:1528}, properties:{}}, {start: {_id:2450}, end: {_id:2451}, properties:{}}, {start: {_id:2454}, end: {_id:2455}, properties:{}}, {start: {_id:2458}, end: {_id:1354}, properties:{}}, {start: {_id:2460}, end: {_id:2461}, properties:{}}, {start: {_id:2462}, end: {_id:2463}, properties:{}}, {start: {_id:2462}, end: {_id:2464}, properties:{}}, {start: {_id:2465}, end: {_id:2296}, properties:{}}, {start: {_id:2465}, end: {_id:2466}, properties:{}}, {start: {_id:2467}, end: {_id:2468}, properties:{}}, {start: {_id:2474}, end: {_id:1349}, properties:{}}, {start: {_id:2474}, end: {_id:1354}, properties:{}}, {start: {_id:2477}, end: {_id:2478}, properties:{}}, {start: {_id:2479}, end: {_id:2480}, properties:{}}, {start: {_id:2484}, end: {_id:1349}, properties:{}}, {start: {_id:2484}, end: {_id:2485}, properties:{}}, {start: {_id:2487}, end: {_id:2488}, properties:{}}, {start: {_id:2493}, end: {_id:1496}, properties:{}}, {start: {_id:2493}, end: {_id:2494}, properties:{}}, {start: {_id:2498}, end: {_id:1349}, properties:{}}, {start: {_id:2498}, end: {_id:2499}, properties:{}}, {start: {_id:2498}, end: {_id:2500}, properties:{}}, {start: {_id:2502}, end: {_id:1349}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVESTIGATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2502}, end: {_id:2503}, properties:{}}, {start: {_id:2505}, end: {_id:1349}, properties:{}}, {start: {_id:2505}, end: {_id:2506}, properties:{}}, {start: {_id:2505}, end: {_id:2507}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVESTIGATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:1906}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:116}, end: {_id:43}, properties:{}}, {start: {_id:116}, end: {_id:117}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:1858}, properties:{}}, {start: {_id:1795}, end: {_id:1858}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:740}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:615}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1715}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:2117}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:1251}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_LEVEL_CORRELATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:0}, properties:{}}, {start: {_id:685}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_SIMILARITIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USED_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:110}, end: {_id:104}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1878}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CORRELATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:7}, properties:{}}, {start: {_id:0}, end: {_id:34}, properties:{}}, {start: {_id:0}, end: {_id:55}, properties:{}}, {start: {_id:0}, end: {_id:56}, properties:{}}, {start: {_id:0}, end: {_id:60}, properties:{}}, {start: {_id:0}, end: {_id:61}, properties:{}}, {start: {_id:0}, end: {_id:62}, properties:{}}, {start: {_id:0}, end: {_id:440}, properties:{}}, {start: {_id:0}, end: {_id:456}, properties:{}}, {start: {_id:979}, end: {_id:980}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2174}, end: {_id:2168}, properties:{}}, {start: {_id:2174}, end: {_id:2173}, properties:{}}, {start: {_id:2174}, end: {_id:2198}, properties:{}}, {start: {_id:2174}, end: {_id:2199}, properties:{}}, {start: {_id:2174}, end: {_id:2261}, properties:{}}, {start: {_id:2174}, end: {_id:2262}, properties:{}}, {start: {_id:2174}, end: {_id:2263}, properties:{}}, {start: {_id:2174}, end: {_id:2264}, properties:{}}, {start: {_id:2174}, end: {_id:2265}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEAD_AUTHOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:592}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHAPERONE_ACTIVITY_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:610}, properties:{}}, {start: {_id:778}, end: {_id:1903}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:317}, end: {_id:0}, properties:{}}, {start: {_id:318}, end: {_id:0}, properties:{}}, {start: {_id:319}, end: {_id:0}, properties:{}}, {start: {_id:320}, end: {_id:0}, properties:{}}, {start: {_id:321}, end: {_id:0}, properties:{}}, {start: {_id:322}, end: {_id:0}, properties:{}}, {start: {_id:323}, end: {_id:0}, properties:{}}, {start: {_id:324}, end: {_id:0}, properties:{}}, {start: {_id:325}, end: {_id:0}, properties:{}}, {start: {_id:326}, end: {_id:0}, properties:{}}, {start: {_id:327}, end: {_id:0}, properties:{}}, {start: {_id:328}, end: {_id:0}, properties:{}}, {start: {_id:329}, end: {_id:0}, properties:{}}, {start: {_id:330}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:173}, end: {_id:1795}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RECRUITS]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:430}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:788}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1645}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGICAL_FEATURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:906}, end: {_id:896}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RECOMMENDED]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1612}, properties:{}}, {start: {_id:778}, end: {_id:1613}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:86}, end: {_id:88}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:732}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CHARACTERIZED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:149}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:181}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PROTECTS_AGAINST_PD]->(end) SET r += row.properties;
UNWIND [{start: {_id:1923}, end: {_id:699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_ASSOCIATION_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:1714}, end: {_id:1886}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PARTicipates_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:751}, end: {_id:752}, properties:{}}, {start: {_id:751}, end: {_id:753}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1663}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:620}, properties:{}}, {start: {_id:778}, end: {_id:633}, properties:{}}, {start: {_id:778}, end: {_id:643}, properties:{}}, {start: {_id:778}, end: {_id:644}, properties:{}}, {start: {_id:778}, end: {_id:650}, properties:{}}, {start: {_id:778}, end: {_id:894}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:735}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:1861}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIES_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:799}, end: {_id:798}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INCREASES]->(end) SET r += row.properties;
UNWIND [{start: {_id:718}, end: {_id:719}, properties:{}}, {start: {_id:778}, end: {_id:631}, properties:{}}, {start: {_id:778}, end: {_id:635}, properties:{}}, {start: {_id:778}, end: {_id:797}, properties:{}}, {start: {_id:778}, end: {_id:1622}, properties:{}}, {start: {_id:778}, end: {_id:1623}, properties:{}}, {start: {_id:778}, end: {_id:1624}, properties:{}}, {start: {_id:778}, end: {_id:1625}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1732}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBSTRATE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:2284}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1720}, end: {_id:778}, properties:{}}, {start: {_id:1721}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2049}, end: {_id:70}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:703}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:`CO-OCCURS_WITH`]->(end) SET r += row.properties;
UNWIND [{start: {_id:620}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDICATES_DIAGNOSIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:1969}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETED_BY_THERAPY]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:605}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:751}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:489}, end: {_id:577}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_DEGRADATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:737}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:144}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MEASURES_IRON_LEVELS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2103}, end: {_id:2096}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:588}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:GUANINE_NUCLEOTIDE_EXCHANGE_FACTOR_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:1618}, end: {_id:0}, properties:{}}, {start: {_id:1976}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:439}, end: {_id:30}, properties:{}}, {start: {_id:440}, end: {_id:30}, properties:{}}, {start: {_id:441}, end: {_id:30}, properties:{}}, {start: {_id:456}, end: {_id:30}, properties:{}}, {start: {_id:457}, end: {_id:30}, properties:{}}, {start: {_id:458}, end: {_id:30}, properties:{}}, {start: {_id:459}, end: {_id:30}, properties:{}}, {start: {_id:460}, end: {_id:30}, properties:{}}, {start: {_id:461}, end: {_id:30}, properties:{}}, {start: {_id:462}, end: {_id:30}, properties:{}}, {start: {_id:582}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:663}, end: {_id:717}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1714}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:664}, end: {_id:0}, properties:{}}, {start: {_id:664}, end: {_id:23}, properties:{}}, {start: {_id:664}, end: {_id:26}, properties:{}}, {start: {_id:664}, end: {_id:665}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2235}, end: {_id:2236}, properties:{}}, {start: {_id:2235}, end: {_id:2237}, properties:{}}, {start: {_id:2235}, end: {_id:2238}, properties:{}}, {start: {_id:2246}, end: {_id:2247}, properties:{}}, {start: {_id:2246}, end: {_id:2248}, properties:{}}, {start: {_id:2246}, end: {_id:2249}, properties:{}}, {start: {_id:2246}, end: {_id:2250}, properties:{}}, {start: {_id:2246}, end: {_id:2251}, properties:{}}, {start: {_id:2252}, end: {_id:2211}, properties:{}}, {start: {_id:2252}, end: {_id:2253}, properties:{}}, {start: {_id:2252}, end: {_id:2254}, properties:{}}, {start: {_id:2252}, end: {_id:2255}, properties:{}}, {start: {_id:2252}, end: {_id:2256}, properties:{}}, {start: {_id:2252}, end: {_id:2257}, properties:{}}, {start: {_id:2252}, end: {_id:2258}, properties:{}}, {start: {_id:2252}, end: {_id:2259}, properties:{}}, {start: {_id:2252}, end: {_id:2260}, properties:{}}, {start: {_id:2266}, end: {_id:2267}, properties:{}}, {start: {_id:2266}, end: {_id:2268}, properties:{}}, {start: {_id:2266}, end: {_id:2269}, properties:{}}, {start: {_id:2266}, end: {_id:2270}, properties:{}}, {start: {_id:2266}, end: {_id:2271}, properties:{}}, {start: {_id:2266}, end: {_id:2272}, properties:{}}, {start: {_id:2266}, end: {_id:2273}, properties:{}}, {start: {_id:2266}, end: {_id:2274}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COAUTHORED_PAPER]->(end) SET r += row.properties;
UNWIND [{start: {_id:1923}, end: {_id:1917}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_ASSOCIATION_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:605}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:34}, properties:{}}, {start: {_id:0}, end: {_id:1008}, properties:{}}, {start: {_id:1897}, end: {_id:1906}, properties:{}}, {start: {_id:1927}, end: {_id:34}, properties:{}}, {start: {_id:1928}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:91}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_ANALYZE]->(end) SET r += row.properties;
UNWIND [{start: {_id:898}, end: {_id:895}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PERFORMED]->(end) SET r += row.properties;
UNWIND [{start: {_id:51}, end: {_id:53}, properties:{}}, {start: {_id:1699}, end: {_id:1700}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1888}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:2041}, end: {_id:30}, properties:{}}, {start: {_id:2042}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:VARIATION_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:650}, end: {_id:735}, properties:{}}, {start: {_id:796}, end: {_id:735}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:656}, end: {_id:657}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:615}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRAPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:7}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:1714}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:2070}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REDUCES_ACTIVITY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:660}, properties:{}}, {start: {_id:0}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:681}, end: {_id:43}, properties:{}}, {start: {_id:682}, end: {_id:43}, properties:{}}, {start: {_id:683}, end: {_id:43}, properties:{}}, {start: {_id:684}, end: {_id:43}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_DEVELOPMENT_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:969}, end: {_id:970}, properties:{}}, {start: {_id:988}, end: {_id:989}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSIONALLY_REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1885}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:621}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBCLASS_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:1044}, properties:{}}, {start: {_id:52}, end: {_id:1044}, properties:{}}, {start: {_id:158}, end: {_id:1044}, properties:{}}, {start: {_id:167}, end: {_id:1044}, properties:{}}, {start: {_id:173}, end: {_id:1044}, properties:{}}, {start: {_id:176}, end: {_id:1044}, properties:{}}, {start: {_id:1045}, end: {_id:1044}, properties:{}}, {start: {_id:1046}, end: {_id:1044}, properties:{}}, {start: {_id:1047}, end: {_id:1044}, properties:{}}, {start: {_id:1048}, end: {_id:1044}, properties:{}}, {start: {_id:1049}, end: {_id:1044}, properties:{}}, {start: {_id:1050}, end: {_id:1044}, properties:{}}, {start: {_id:1051}, end: {_id:1044}, properties:{}}, {start: {_id:1052}, end: {_id:1044}, properties:{}}, {start: {_id:1053}, end: {_id:1044}, properties:{}}, {start: {_id:1054}, end: {_id:1044}, properties:{}}, {start: {_id:1055}, end: {_id:1044}, properties:{}}, {start: {_id:1056}, end: {_id:1044}, properties:{}}, {start: {_id:1057}, end: {_id:1044}, properties:{}}, {start: {_id:1058}, end: {_id:1044}, properties:{}}, {start: {_id:1059}, end: {_id:1044}, properties:{}}, {start: {_id:1060}, end: {_id:1044}, properties:{}}, {start: {_id:1061}, end: {_id:1044}, properties:{}}, {start: {_id:1062}, end: {_id:1044}, properties:{}}, {start: {_id:1063}, end: {_id:1044}, properties:{}}, {start: {_id:1064}, end: {_id:1044}, properties:{}}, {start: {_id:1065}, end: {_id:1044}, properties:{}}, {start: {_id:1066}, end: {_id:1044}, properties:{}}, {start: {_id:1067}, end: {_id:1044}, properties:{}}, {start: {_id:1068}, end: {_id:1044}, properties:{}}, {start: {_id:1069}, end: {_id:1044}, properties:{}}, {start: {_id:1070}, end: {_id:1044}, properties:{}}, {start: {_id:1071}, end: {_id:1044}, properties:{}}, {start: {_id:1072}, end: {_id:1044}, properties:{}}, {start: {_id:1073}, end: {_id:1044}, properties:{}}, {start: {_id:1074}, end: {_id:1044}, properties:{}}, {start: {_id:1075}, end: {_id:1044}, properties:{}}, {start: {_id:1076}, end: {_id:1044}, properties:{}}, {start: {_id:1077}, end: {_id:1044}, properties:{}}, {start: {_id:1078}, end: {_id:1044}, properties:{}}, {start: {_id:1079}, end: {_id:1044}, properties:{}}, {start: {_id:1080}, end: {_id:1044}, properties:{}}, {start: {_id:1081}, end: {_id:1044}, properties:{}}, {start: {_id:1082}, end: {_id:1044}, properties:{}}, {start: {_id:1083}, end: {_id:1044}, properties:{}}, {start: {_id:1084}, end: {_id:1044}, properties:{}}, {start: {_id:1085}, end: {_id:1044}, properties:{}}, {start: {_id:1086}, end: {_id:1044}, properties:{}}, {start: {_id:1087}, end: {_id:1044}, properties:{}}, {start: {_id:1088}, end: {_id:1044}, properties:{}}, {start: {_id:1089}, end: {_id:1044}, properties:{}}, {start: {_id:1090}, end: {_id:1044}, properties:{}}, {start: {_id:1091}, end: {_id:1044}, properties:{}}, {start: {_id:1092}, end: {_id:1044}, properties:{}}, {start: {_id:1093}, end: {_id:1044}, properties:{}}, {start: {_id:1094}, end: {_id:1044}, properties:{}}, {start: {_id:1095}, end: {_id:1044}, properties:{}}, {start: {_id:1096}, end: {_id:1044}, properties:{}}, {start: {_id:1097}, end: {_id:1044}, properties:{}}, {start: {_id:1098}, end: {_id:1044}, properties:{}}, {start: {_id:1099}, end: {_id:1044}, properties:{}}, {start: {_id:1100}, end: {_id:1044}, properties:{}}, {start: {_id:1101}, end: {_id:1044}, properties:{}}, {start: {_id:1102}, end: {_id:1044}, properties:{}}, {start: {_id:1103}, end: {_id:1044}, properties:{}}, {start: {_id:1104}, end: {_id:1044}, properties:{}}, {start: {_id:1105}, end: {_id:1044}, properties:{}}, {start: {_id:1106}, end: {_id:1044}, properties:{}}, {start: {_id:1107}, end: {_id:1044}, properties:{}}, {start: {_id:1108}, end: {_id:1044}, properties:{}}, {start: {_id:1109}, end: {_id:1044}, properties:{}}, {start: {_id:1110}, end: {_id:1044}, properties:{}}, {start: {_id:1111}, end: {_id:1044}, properties:{}}, {start: {_id:1112}, end: {_id:1044}, properties:{}}, {start: {_id:1113}, end: {_id:1044}, properties:{}}, {start: {_id:1114}, end: {_id:1044}, properties:{}}, {start: {_id:1115}, end: {_id:1044}, properties:{}}, {start: {_id:1116}, end: {_id:1044}, properties:{}}, {start: {_id:1117}, end: {_id:1044}, properties:{}}, {start: {_id:1118}, end: {_id:1044}, properties:{}}, {start: {_id:1119}, end: {_id:1044}, properties:{}}, {start: {_id:1120}, end: {_id:1044}, properties:{}}, {start: {_id:1121}, end: {_id:1044}, properties:{}}, {start: {_id:1122}, end: {_id:1044}, properties:{}}, {start: {_id:1123}, end: {_id:1044}, properties:{}}, {start: {_id:1124}, end: {_id:1044}, properties:{}}, {start: {_id:1125}, end: {_id:1044}, properties:{}}, {start: {_id:1126}, end: {_id:1044}, properties:{}}, {start: {_id:1127}, end: {_id:1044}, properties:{}}, {start: {_id:1128}, end: {_id:1044}, properties:{}}, {start: {_id:1129}, end: {_id:1044}, properties:{}}, {start: {_id:1130}, end: {_id:1044}, properties:{}}, {start: {_id:1131}, end: {_id:1044}, properties:{}}, {start: {_id:1132}, end: {_id:1044}, properties:{}}, {start: {_id:1133}, end: {_id:1044}, properties:{}}, {start: {_id:1134}, end: {_id:1044}, properties:{}}, {start: {_id:1135}, end: {_id:1044}, properties:{}}, {start: {_id:1136}, end: {_id:1044}, properties:{}}, {start: {_id:1137}, end: {_id:1044}, properties:{}}, {start: {_id:1138}, end: {_id:1044}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF_PATHWAY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1139}, end: {_id:1044}, properties:{}}, {start: {_id:1140}, end: {_id:1044}, properties:{}}, {start: {_id:1141}, end: {_id:1044}, properties:{}}, {start: {_id:1142}, end: {_id:1044}, properties:{}}, {start: {_id:1143}, end: {_id:1044}, properties:{}}, {start: {_id:1144}, end: {_id:1044}, properties:{}}, {start: {_id:1145}, end: {_id:1044}, properties:{}}, {start: {_id:1146}, end: {_id:1044}, properties:{}}, {start: {_id:1147}, end: {_id:1044}, properties:{}}, {start: {_id:1148}, end: {_id:1044}, properties:{}}, {start: {_id:1149}, end: {_id:1044}, properties:{}}, {start: {_id:1150}, end: {_id:1044}, properties:{}}, {start: {_id:1151}, end: {_id:1044}, properties:{}}, {start: {_id:1152}, end: {_id:1044}, properties:{}}, {start: {_id:1153}, end: {_id:1044}, properties:{}}, {start: {_id:1154}, end: {_id:1044}, properties:{}}, {start: {_id:1155}, end: {_id:1044}, properties:{}}, {start: {_id:1156}, end: {_id:1044}, properties:{}}, {start: {_id:1157}, end: {_id:1044}, properties:{}}, {start: {_id:1158}, end: {_id:1044}, properties:{}}, {start: {_id:1159}, end: {_id:1044}, properties:{}}, {start: {_id:1160}, end: {_id:1044}, properties:{}}, {start: {_id:1161}, end: {_id:1044}, properties:{}}, {start: {_id:1162}, end: {_id:1044}, properties:{}}, {start: {_id:1163}, end: {_id:1044}, properties:{}}, {start: {_id:1164}, end: {_id:1044}, properties:{}}, {start: {_id:1165}, end: {_id:1044}, properties:{}}, {start: {_id:1166}, end: {_id:1044}, properties:{}}, {start: {_id:1167}, end: {_id:1044}, properties:{}}, {start: {_id:1168}, end: {_id:1044}, properties:{}}, {start: {_id:1169}, end: {_id:1044}, properties:{}}, {start: {_id:1170}, end: {_id:1044}, properties:{}}, {start: {_id:1171}, end: {_id:1044}, properties:{}}, {start: {_id:1172}, end: {_id:1044}, properties:{}}, {start: {_id:1173}, end: {_id:1044}, properties:{}}, {start: {_id:1174}, end: {_id:1044}, properties:{}}, {start: {_id:1175}, end: {_id:1044}, properties:{}}, {start: {_id:1176}, end: {_id:1044}, properties:{}}, {start: {_id:1177}, end: {_id:1044}, properties:{}}, {start: {_id:1178}, end: {_id:1044}, properties:{}}, {start: {_id:1179}, end: {_id:1044}, properties:{}}, {start: {_id:1180}, end: {_id:1044}, properties:{}}, {start: {_id:1181}, end: {_id:1044}, properties:{}}, {start: {_id:1182}, end: {_id:1044}, properties:{}}, {start: {_id:1183}, end: {_id:1044}, properties:{}}, {start: {_id:1184}, end: {_id:1044}, properties:{}}, {start: {_id:1185}, end: {_id:1044}, properties:{}}, {start: {_id:1186}, end: {_id:1044}, properties:{}}, {start: {_id:1187}, end: {_id:1044}, properties:{}}, {start: {_id:1188}, end: {_id:1044}, properties:{}}, {start: {_id:1189}, end: {_id:1044}, properties:{}}, {start: {_id:1190}, end: {_id:1044}, properties:{}}, {start: {_id:1191}, end: {_id:1044}, properties:{}}, {start: {_id:1192}, end: {_id:1044}, properties:{}}, {start: {_id:1193}, end: {_id:1044}, properties:{}}, {start: {_id:1194}, end: {_id:1044}, properties:{}}, {start: {_id:1195}, end: {_id:1044}, properties:{}}, {start: {_id:1196}, end: {_id:1044}, properties:{}}, {start: {_id:1197}, end: {_id:1044}, properties:{}}, {start: {_id:1198}, end: {_id:1044}, properties:{}}, {start: {_id:1199}, end: {_id:1044}, properties:{}}, {start: {_id:1200}, end: {_id:1044}, properties:{}}, {start: {_id:1201}, end: {_id:1044}, properties:{}}, {start: {_id:1202}, end: {_id:1044}, properties:{}}, {start: {_id:1203}, end: {_id:1044}, properties:{}}, {start: {_id:1204}, end: {_id:1044}, properties:{}}, {start: {_id:1205}, end: {_id:1044}, properties:{}}, {start: {_id:1206}, end: {_id:1044}, properties:{}}, {start: {_id:1207}, end: {_id:1044}, properties:{}}, {start: {_id:1208}, end: {_id:1044}, properties:{}}, {start: {_id:1209}, end: {_id:1044}, properties:{}}, {start: {_id:1210}, end: {_id:1044}, properties:{}}, {start: {_id:1211}, end: {_id:1044}, properties:{}}, {start: {_id:1212}, end: {_id:1044}, properties:{}}, {start: {_id:1213}, end: {_id:1044}, properties:{}}, {start: {_id:1214}, end: {_id:1044}, properties:{}}, {start: {_id:1215}, end: {_id:1044}, properties:{}}, {start: {_id:1216}, end: {_id:1044}, properties:{}}, {start: {_id:1217}, end: {_id:1044}, properties:{}}, {start: {_id:1218}, end: {_id:1044}, properties:{}}, {start: {_id:1219}, end: {_id:1044}, properties:{}}, {start: {_id:1220}, end: {_id:1044}, properties:{}}, {start: {_id:1221}, end: {_id:1044}, properties:{}}, {start: {_id:1222}, end: {_id:1044}, properties:{}}, {start: {_id:1223}, end: {_id:1044}, properties:{}}, {start: {_id:1224}, end: {_id:1044}, properties:{}}, {start: {_id:1225}, end: {_id:1044}, properties:{}}, {start: {_id:1226}, end: {_id:1044}, properties:{}}, {start: {_id:1227}, end: {_id:1044}, properties:{}}, {start: {_id:1228}, end: {_id:1044}, properties:{}}, {start: {_id:1229}, end: {_id:1044}, properties:{}}, {start: {_id:1230}, end: {_id:1044}, properties:{}}, {start: {_id:1231}, end: {_id:1044}, properties:{}}, {start: {_id:1232}, end: {_id:1044}, properties:{}}, {start: {_id:1233}, end: {_id:1044}, properties:{}}, {start: {_id:1234}, end: {_id:1044}, properties:{}}, {start: {_id:1235}, end: {_id:1044}, properties:{}}, {start: {_id:1236}, end: {_id:1044}, properties:{}}, {start: {_id:1237}, end: {_id:1044}, properties:{}}, {start: {_id:1238}, end: {_id:1044}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF_PATHWAY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1239}, end: {_id:1044}, properties:{}}, {start: {_id:1240}, end: {_id:1044}, properties:{}}, {start: {_id:1241}, end: {_id:1044}, properties:{}}, {start: {_id:1242}, end: {_id:1044}, properties:{}}, {start: {_id:1243}, end: {_id:1044}, properties:{}}, {start: {_id:1244}, end: {_id:1044}, properties:{}}, {start: {_id:1245}, end: {_id:1044}, properties:{}}, {start: {_id:1246}, end: {_id:1044}, properties:{}}, {start: {_id:1247}, end: {_id:1044}, properties:{}}, {start: {_id:1248}, end: {_id:1044}, properties:{}}, {start: {_id:1249}, end: {_id:1044}, properties:{}}, {start: {_id:1250}, end: {_id:1044}, properties:{}}, {start: {_id:1251}, end: {_id:1044}, properties:{}}, {start: {_id:1252}, end: {_id:1044}, properties:{}}, {start: {_id:1253}, end: {_id:1044}, properties:{}}, {start: {_id:1254}, end: {_id:1044}, properties:{}}, {start: {_id:1255}, end: {_id:1044}, properties:{}}, {start: {_id:1256}, end: {_id:1044}, properties:{}}, {start: {_id:1257}, end: {_id:1044}, properties:{}}, {start: {_id:1258}, end: {_id:1044}, properties:{}}, {start: {_id:1259}, end: {_id:1044}, properties:{}}, {start: {_id:1260}, end: {_id:1044}, properties:{}}, {start: {_id:1261}, end: {_id:1044}, properties:{}}, {start: {_id:1262}, end: {_id:1044}, properties:{}}, {start: {_id:1263}, end: {_id:1044}, properties:{}}, {start: {_id:1264}, end: {_id:1044}, properties:{}}, {start: {_id:1265}, end: {_id:1044}, properties:{}}, {start: {_id:1266}, end: {_id:1044}, properties:{}}, {start: {_id:1267}, end: {_id:1044}, properties:{}}, {start: {_id:1268}, end: {_id:1044}, properties:{}}, {start: {_id:1269}, end: {_id:1044}, properties:{}}, {start: {_id:1270}, end: {_id:1044}, properties:{}}, {start: {_id:1271}, end: {_id:1044}, properties:{}}, {start: {_id:1272}, end: {_id:1044}, properties:{}}, {start: {_id:1273}, end: {_id:1044}, properties:{}}, {start: {_id:1274}, end: {_id:1044}, properties:{}}, {start: {_id:1275}, end: {_id:1044}, properties:{}}, {start: {_id:1276}, end: {_id:1044}, properties:{}}, {start: {_id:1277}, end: {_id:1044}, properties:{}}, {start: {_id:1278}, end: {_id:1044}, properties:{}}, {start: {_id:1279}, end: {_id:1044}, properties:{}}, {start: {_id:1280}, end: {_id:1044}, properties:{}}, {start: {_id:1281}, end: {_id:1044}, properties:{}}, {start: {_id:1282}, end: {_id:1044}, properties:{}}, {start: {_id:1283}, end: {_id:1044}, properties:{}}, {start: {_id:1284}, end: {_id:1044}, properties:{}}, {start: {_id:1285}, end: {_id:1044}, properties:{}}, {start: {_id:1286}, end: {_id:1044}, properties:{}}, {start: {_id:1287}, end: {_id:1044}, properties:{}}, {start: {_id:1288}, end: {_id:1044}, properties:{}}, {start: {_id:1289}, end: {_id:1044}, properties:{}}, {start: {_id:1290}, end: {_id:1044}, properties:{}}, {start: {_id:1291}, end: {_id:1044}, properties:{}}, {start: {_id:1292}, end: {_id:1044}, properties:{}}, {start: {_id:1293}, end: {_id:1044}, properties:{}}, {start: {_id:1294}, end: {_id:1044}, properties:{}}, {start: {_id:1295}, end: {_id:1044}, properties:{}}, {start: {_id:1296}, end: {_id:1044}, properties:{}}, {start: {_id:1297}, end: {_id:1044}, properties:{}}, {start: {_id:1298}, end: {_id:1044}, properties:{}}, {start: {_id:1299}, end: {_id:1044}, properties:{}}, {start: {_id:1300}, end: {_id:1044}, properties:{}}, {start: {_id:1301}, end: {_id:1044}, properties:{}}, {start: {_id:1302}, end: {_id:1044}, properties:{}}, {start: {_id:1303}, end: {_id:1044}, properties:{}}, {start: {_id:1304}, end: {_id:1044}, properties:{}}, {start: {_id:1305}, end: {_id:1044}, properties:{}}, {start: {_id:1306}, end: {_id:1044}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF_PATHWAY]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_NEURODEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:634}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1858}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRAPS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1936}, end: {_id:1941}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCELERATES_DEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:660}, properties:{}}, {start: {_id:778}, end: {_id:662}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:719}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:607}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1737}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:918}, end: {_id:897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:1903}, end: {_id:1970}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:610}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVES]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPRESSION_ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:576}, end: {_id:1970}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PATHOGENESIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:605}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:UBIQUITINATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:484}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:GUANINE_NUCLEOTIDE_EXCHANGE_FACTOR_FOR]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:0}, properties:{}}, {start: {_id:30}, end: {_id:48}, properties:{}}, {start: {_id:63}, end: {_id:0}, properties:{}}, {start: {_id:691}, end: {_id:0}, properties:{}}, {start: {_id:1002}, end: {_id:0}, properties:{}}, {start: {_id:1003}, end: {_id:0}, properties:{}}, {start: {_id:1004}, end: {_id:0}, properties:{}}, {start: {_id:1005}, end: {_id:0}, properties:{}}, {start: {_id:1006}, end: {_id:0}, properties:{}}, {start: {_id:1007}, end: {_id:0}, properties:{}}, {start: {_id:1911}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:521}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:620}, properties:{}}, {start: {_id:0}, end: {_id:633}, properties:{}}, {start: {_id:0}, end: {_id:643}, properties:{}}, {start: {_id:0}, end: {_id:644}, properties:{}}, {start: {_id:0}, end: {_id:650}, properties:{}}, {start: {_id:0}, end: {_id:894}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1911}, end: {_id:60}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:2108}, end: {_id:177}, properties:{}}, {start: {_id:2109}, end: {_id:30}, properties:{}}, {start: {_id:2118}, end: {_id:177}, properties:{}}, {start: {_id:2119}, end: {_id:177}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDIED]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:960}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1795}, end: {_id:2047}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO_MITOPHAGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:525}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INVOLVED_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:605}, properties:{}}, {start: {_id:30}, end: {_id:606}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INTERACTS_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:2099}, end: {_id:2098}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:894}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1904}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_DIAGNOSE]->(end) SET r += row.properties;
UNWIND [{start: {_id:627}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1976}, end: {_id:1906}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:699}, end: {_id:778}, properties:{}}, {start: {_id:820}, end: {_id:658}, properties:{}}, {start: {_id:820}, end: {_id:659}, properties:{}}, {start: {_id:820}, end: {_id:954}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:487}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_PROTEIN_LEVEL]->(end) SET r += row.properties;
UNWIND [{start: {_id:175}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:COMPOSED_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1922}, end: {_id:634}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:421}, properties:{}}, {start: {_id:0}, end: {_id:422}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:525}, end: {_id:778}, properties:{}}, {start: {_id:1976}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:785}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:483}, properties:{}}, {start: {_id:30}, end: {_id:512}, properties:{}}, {start: {_id:30}, end: {_id:597}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES_ACTIVITY_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:1701}, end: {_id:1699}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PRESENTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:172}, end: {_id:2070}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ENCODS]->(end) SET r += row.properties;
UNWIND [{start: {_id:23}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:354}, properties:{}}, {start: {_id:0}, end: {_id:712}, properties:{}}, {start: {_id:0}, end: {_id:843}, properties:{}}, {start: {_id:0}, end: {_id:844}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:115}, end: {_id:43}, properties:{}}, {start: {_id:115}, end: {_id:117}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DEVELOPS_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1792}, end: {_id:1798}, properties:{}}, {start: {_id:1793}, end: {_id:1798}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUPPORTED]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:452}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:141}, end: {_id:70}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1977}, end: {_id:1976}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1898}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CORRELATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:75}, end: {_id:78}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1612}, properties:{}}, {start: {_id:0}, end: {_id:1613}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:736}, end: {_id:732}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:93}, end: {_id:142}, properties:{}}, {start: {_id:93}, end: {_id:147}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FOUND_IN]->(end) SET r += row.properties;
UNWIND [{start: {_id:1948}, end: {_id:1945}, properties:{}}, {start: {_id:1949}, end: {_id:1945}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SILENCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:2090}, end: {_id:2070}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACTIVATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:444}, properties:{}}, {start: {_id:30}, end: {_id:449}, properties:{}}, {start: {_id:30}, end: {_id:507}, properties:{}}, {start: {_id:30}, end: {_id:508}, properties:{}}, {start: {_id:30}, end: {_id:509}, properties:{}}, {start: {_id:30}, end: {_id:510}, properties:{}}, {start: {_id:446}, end: {_id:449}, properties:{}}, {start: {_id:447}, end: {_id:449}, properties:{}}, {start: {_id:448}, end: {_id:449}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:BINDS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1854}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:1882}, end: {_id:778}, properties:{}}, {start: {_id:1883}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:NOT_A_BIOMARKER_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:99}, end: {_id:100}, properties:{}}, {start: {_id:99}, end: {_id:101}, properties:{}}, {start: {_id:99}, end: {_id:102}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:63}, end: {_id:7}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AGGREGATES_INTO]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:778}, properties:{}}, {start: {_id:440}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:2280}, end: {_id:2276}, properties:{}}, {start: {_id:2281}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SHARES_GENETIC_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1950}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXPLAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:144}, end: {_id:142}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:USES_TO_ANALYZE]->(end) SET r += row.properties;
UNWIND [{start: {_id:233}, end: {_id:234}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IS_PART_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:760}, end: {_id:761}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:PART_OF_TREATMENT]->(end) SET r += row.properties;
UNWIND [{start: {_id:30}, end: {_id:778}, properties:{}}, {start: {_id:30}, end: {_id:2141}, properties:{}}, {start: {_id:52}, end: {_id:778}, properties:{}}, {start: {_id:158}, end: {_id:778}, properties:{}}, {start: {_id:160}, end: {_id:778}, properties:{}}, {start: {_id:173}, end: {_id:778}, properties:{}}, {start: {_id:1911}, end: {_id:778}, properties:{}}, {start: {_id:2011}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:638}, end: {_id:192}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:EXpresses]->(end) SET r += row.properties;
UNWIND [{start: {_id:1975}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CLASSIFIES]->(end) SET r += row.properties;
UNWIND [{start: {_id:819}, end: {_id:762}, properties:{}}, {start: {_id:819}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1918}, end: {_id:1929}, properties:{}}, {start: {_id:1919}, end: {_id:1929}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:605}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LOCALIZES_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:1899}, end: {_id:1900}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SIMILAR_STRUCTURE]->(end) SET r += row.properties;
UNWIND [{start: {_id:2283}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:740}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATES_WITH]->(end) SET r += row.properties;
UNWIND [{start: {_id:749}, end: {_id:115}, properties:{}}, {start: {_id:750}, end: {_id:115}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TRIGGERS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1887}, end: {_id:1980}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:797}, end: {_id:635}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODULATES_INFORMATION_FROM]->(end) SET r += row.properties;
UNWIND [{start: {_id:820}, end: {_id:668}, properties:{}}, {start: {_id:820}, end: {_id:818}, properties:{}}, {start: {_id:820}, end: {_id:819}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:115}, end: {_id:43}, properties:{}}, {start: {_id:332}, end: {_id:0}, properties:{}}, {start: {_id:645}, end: {_id:0}, properties:{}}, {start: {_id:658}, end: {_id:0}, properties:{}}, {start: {_id:778}, end: {_id:116}, properties:{}}, {start: {_id:778}, end: {_id:664}, properties:{}}, {start: {_id:778}, end: {_id:686}, properties:{}}, {start: {_id:778}, end: {_id:1728}, properties:{}}, {start: {_id:1667}, end: {_id:0}, properties:{}}, {start: {_id:1698}, end: {_id:0}, properties:{}}, {start: {_id:1698}, end: {_id:2084}, properties:{}}, {start: {_id:1886}, end: {_id:0}, properties:{}}, {start: {_id:2086}, end: {_id:2084}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:1657}, end: {_id:576}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:DISCOVERED]->(end) SET r += row.properties;
UNWIND [{start: {_id:955}, end: {_id:733}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:90}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:889}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:SUBTYPE_OF]->(end) SET r += row.properties;
UNWIND [{start: {_id:730}, end: {_id:733}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMPACTS]->(end) SET r += row.properties;
UNWIND [{start: {_id:731}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES_RISK]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1897}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FORMS_PATHOLOGY]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:48}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:932}, end: {_id:894}, properties:{}}, {start: {_id:933}, end: {_id:894}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MITIGATES_EFFECT]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:9}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:AFFECTS_REGION]->(end) SET r += row.properties;
UNWIND [{start: {_id:715}, end: {_id:0}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATMENT]->(end) SET r += row.properties;
UNWIND [{start: {_id:710}, end: {_id:1385}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TARGETS]->(end) SET r += row.properties;
UNWIND [{start: {_id:106}, end: {_id:345}, properties:{}}, {start: {_id:358}, end: {_id:345}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:IMAGES]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:647}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CAUSES]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:1727}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:MODIFIED_FORM]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:737}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:1806}, end: {_id:778}, properties:{}}, {start: {_id:1807}, end: {_id:778}, properties:{}}, {start: {_id:2123}, end: {_id:778}, properties:{}}, {start: {_id:2124}, end: {_id:778}, properties:{}}, {start: {_id:2125}, end: {_id:778}, properties:{}}, {start: {_id:2126}, end: {_id:778}, properties:{}}, {start: {_id:2127}, end: {_id:778}, properties:{}}, {start: {_id:2128}, end: {_id:778}, properties:{}}, {start: {_id:2129}, end: {_id:778}, properties:{}}, {start: {_id:2130}, end: {_id:778}, properties:{}}, {start: {_id:2131}, end: {_id:778}, properties:{}}, {start: {_id:2132}, end: {_id:778}, properties:{}}, {start: {_id:2133}, end: {_id:778}, properties:{}}, {start: {_id:2134}, end: {_id:778}, properties:{}}, {start: {_id:2135}, end: {_id:778}, properties:{}}, {start: {_id:2136}, end: {_id:778}, properties:{}}, {start: {_id:2137}, end: {_id:778}, properties:{}}, {start: {_id:2138}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:STUDYED]->(end) SET r += row.properties;
UNWIND [{start: {_id:1692}, end: {_id:2038}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:TREATS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1704}, end: {_id:32}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:INDUCES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1936}, end: {_id:1831}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ACCELERATES_DEGENERATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:149}, end: {_id:501}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:NEUROINFLAMMATION]->(end) SET r += row.properties;
UNWIND [{start: {_id:778}, end: {_id:34}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PATHOGENESIS]->(end) SET r += row.properties;
UNWIND [{start: {_id:1802}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:ASSOCIATED_WITH_PARKINSONS_DISEASE]->(end) SET r += row.properties;
UNWIND [{start: {_id:0}, end: {_id:1998}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:RELATED_TO]->(end) SET r += row.properties;
UNWIND [{start: {_id:487}, end: {_id:30}, properties:{}}, {start: {_id:612}, end: {_id:30}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:REGULATES]->(end) SET r += row.properties;
UNWIND [{start: {_id:1782}, end: {_id:778}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:FUNDED_BY]->(end) SET r += row.properties;
UNWIND [{start: {_id:573}, end: {_id:570}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:CONTAINS]->(end) SET r += row.properties;
UNWIND [{start: {_id:34}, end: {_id:2010}, properties:{}}] AS row
MATCH (start:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.start._id})
MATCH (end:`UNIQUE IMPORT LABEL`{`UNIQUE IMPORT ID`: row.end._id})
CREATE (start)-[r:LEADS_TO]->(end) SET r += row.properties;
MATCH (n:`UNIQUE IMPORT LABEL`)  WITH n LIMIT 20000 REMOVE n:`UNIQUE IMPORT LABEL` REMOVE n.`UNIQUE IMPORT ID`;
DROP CONSTRAINT UNIQUE_IMPORT_NAME;
