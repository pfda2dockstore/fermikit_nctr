baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: fermikit_nctr
inputs:
  output_prefix:
    default: genome
    doc: custom your output files
    inputBinding:
      position: 4
      prefix: --output_prefix
    type: string
  read_input:
    doc: if not inputed, it will run the demo
    inputBinding:
      position: 1
      prefix: --read_input
    type: File
  read_input_2:
    doc: if paired-end reads, input here
    inputBinding:
      position: 2
      prefix: --read_input_2
    type: File?
  read_length:
    default: '100'
    doc: read length from fastq file
    inputBinding:
      position: 5
      prefix: --read_length
    type: string
  reference:
    doc: 'default: demo reference'
    inputBinding:
      position: 3
      prefix: --reference
    type: File
  reference_size:
    default: '30000'
    doc: 'default: demo 30000; human 3g'
    inputBinding:
      position: 6
      prefix: --reference_size
    type: string
label: FermiKit_NCTR_DBB
outputs:
  assembly_output:
    doc: Assembled contigs file
    outputBinding:
      glob: assembly_output/*
    type: File
  snv_output:
    doc: SNV calling result
    outputBinding:
      glob: snv_output/*
    type: File
  sv_output:
    doc: SV calling result
    outputBinding:
      glob: sv_output/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/fermikit_nctr:22
s:author:
  class: s:Person
  s:name: Leihong Wu
