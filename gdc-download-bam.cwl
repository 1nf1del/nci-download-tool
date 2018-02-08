
class: CommandLineTool
cwlVersion: v1.0


baseCommand: [ /usr/local/bin/gdc-download, download ]

requirements:
    - class: DockerRequirement
      dockerPull: opengenomics/nci-download-tool

inputs:
    token:
      type: File
      inputBinding:
          prefix: "-t"
    file_id:
      type: string
      inputBinding:
          position: 2
    nthreads:
      type: int
      default: 10
      inputBinding:
        prefix: "-n"

outputs:
   out:
      type: File
      outputBinding:
          glob: "*/*.bam"
      secondaryFiles:
          - .bai