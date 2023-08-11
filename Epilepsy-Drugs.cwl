cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  epilepsy-drugs-1000mg---primary:
    run: epilepsy-drugs-1000mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  epilepsy-drugs-chewtab---primary:
    run: epilepsy-drugs-chewtab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-1000mg---primary/output
  epilepsy-drugs-1200mg---primary:
    run: epilepsy-drugs-1200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-chewtab---primary/output
  epilepsy-drugs-lyrica---primary:
    run: epilepsy-drugs-lyrica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-1200mg---primary/output
  epilepsy-drugs-epanutin---primary:
    run: epilepsy-drugs-epanutin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-lyrica---primary/output
  epilepsy-drugs-750mg---primary:
    run: epilepsy-drugs-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-epanutin---primary/output
  epilepsy-drugs-injsoln---primary:
    run: epilepsy-drugs-injsoln---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-750mg---primary/output
  epilepsy-drugs-125mg---primary:
    run: epilepsy-drugs-125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-injsoln---primary/output
  epilepsy-drugs-zonisamide---primary:
    run: epilepsy-drugs-zonisamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-125mg---primary/output
  epilepsy-drugs-phenobarbitone---primary:
    run: epilepsy-drugs-phenobarbitone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-zonisamide---primary/output
  epilepsy-drugs-sprinkle---primary:
    run: epilepsy-drugs-sprinkle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-phenobarbitone---primary/output
  epilepsy-drugs-diazepam---primary:
    run: epilepsy-drugs-diazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-sprinkle---primary/output
  epilepsy-drugs-oxcarbazepine---primary:
    run: epilepsy-drugs-oxcarbazepine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-diazepam---primary/output
  epilepsy-drugs-500microgram---primary:
    run: epilepsy-drugs-500microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-oxcarbazepine---primary/output
  epilepsy-drugs-mysoline---primary:
    run: epilepsy-drugs-mysoline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-500microgram---primary/output
  epilepsy-drugs-tegretol---primary:
    run: epilepsy-drugs-tegretol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-mysoline---primary/output
  epilepsy-drugs-piracetam---primary:
    run: epilepsy-drugs-piracetam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-tegretol---primary/output
  epilepsy-drugs-clobazam---primary:
    run: epilepsy-drugs-clobazam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-piracetam---primary/output
  epilepsy-drugs-gabapentin---primary:
    run: epilepsy-drugs-gabapentin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-clobazam---primary/output
  epilepsy-drugs-neurontin---primary:
    run: epilepsy-drugs-neurontin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-gabapentin---primary/output
  epilepsy-drugs-acetazolamide---primary:
    run: epilepsy-drugs-acetazolamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-neurontin---primary/output
  epilepsy-drugs-150mg---primary:
    run: epilepsy-drugs-150mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-acetazolamide---primary/output
  epilepsy-drugs-vigabatrin---primary:
    run: epilepsy-drugs-vigabatrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-150mg---primary/output
  epilepsy-drugs-drops---primary:
    run: epilepsy-drugs-drops---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-vigabatrin---primary/output
  epilepsy-drugs-teril---primary:
    run: epilepsy-drugs-teril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-drops---primary/output
  epilepsy-drugs-sabril---primary:
    run: epilepsy-drugs-sabril---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-teril---primary/output
  epilepsy-drugs-emeside---primary:
    run: epilepsy-drugs-emeside---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-sabril---primary/output
  epilepsy-drugs-gelatin---primary:
    run: epilepsy-drugs-gelatin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-emeside---primary/output
  epilepsy-drugs-phenytoin---primary:
    run: epilepsy-drugs-phenytoin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-gelatin---primary/output
  epilepsy-drugs-elixir---primary:
    run: epilepsy-drugs-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-phenytoin---primary/output
  epilepsy-drugs-primidone---primary:
    run: epilepsy-drugs-primidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-elixir---primary/output
  epilepsy-drugs-pentran---primary:
    run: epilepsy-drugs-pentran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-primidone---primary/output
  epilepsy-drugs-diamox---primary:
    run: epilepsy-drugs-diamox---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-pentran---primary/output
  epilepsy-drugs-carbagen---primary:
    run: epilepsy-drugs-carbagen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-diamox---primary/output
  trileptal-epilepsy-drugs---primary:
    run: trileptal-epilepsy-drugs---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-carbagen---primary/output
  epilepsy-drugs-zarontin---primary:
    run: epilepsy-drugs-zarontin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: trileptal-epilepsy-drugs---primary/output
  epilepsy-drugs-zonegran---primary:
    run: epilepsy-drugs-zonegran---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-zarontin---primary/output
  epilepsy-drugs-pharm---primary:
    run: epilepsy-drugs-pharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-zonegran---primary/output
  epilepsy-drugs-nootropil---primary:
    run: epilepsy-drugs-nootropil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-pharm---primary/output
  epilepsy-drugs-tablet---primary:
    run: epilepsy-drugs-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-nootropil---primary/output
  epilepsy-drugs-300mg---primary:
    run: epilepsy-drugs-300mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-tablet---primary/output
  epilepsy-drugs-ethosuximide---primary:
    run: epilepsy-drugs-ethosuximide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-300mg---primary/output
  epilepsy-drugs-epival---primary:
    run: epilepsy-drugs-epival---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-ethosuximide---primary/output
  epilepsy-drugs-sterwin---primary:
    run: epilepsy-drugs-sterwin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-epival---primary/output
  epilepsy-drugs-hillcross---primary:
    run: epilepsy-drugs-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-sterwin---primary/output
  epilepsy-drugs-lagap---primary:
    run: epilepsy-drugs-lagap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-hillcross---primary/output
  epilepsy-drugs-winthrop---primary:
    run: epilepsy-drugs-winthrop---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-lagap---primary/output
  epilepsy-drugs-pregabalin---primary:
    run: epilepsy-drugs-pregabalin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-winthrop---primary/output
  epilepsy-drugs-depakote---primary:
    run: epilepsy-drugs-depakote---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-pregabalin---primary/output
  epilepsy-drugs-topiramate---primary:
    run: epilepsy-drugs-topiramate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-depakote---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: epilepsy-drugs-topiramate---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
