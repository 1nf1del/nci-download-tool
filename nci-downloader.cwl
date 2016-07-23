
class: CommandLineTool
cwlVersion: cwl:draft-3


baseCommand: [ nci-downloader ]

requirements:
    - class: DockerRequirement
      dockerPull: opengenomics/nci-downloader

inputs:
    - id: config
      type: File
      inputBinding:
          position: 1
    - id: uuid
      type: string
      inputBinding:
          position: 2

outputs:
    - id: out
      type: File
      outputBinding:
          glob: "*.bam"
      secondaryFiles:
          - .bai