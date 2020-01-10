#PBS -l nodes=1:ppn=1:haswell,walltime=60:00:00,mem=8gb
#PBS -o <Processing Folder>
#PBS -e <Processing Folder>

module load singularity-3.2.1

singularity exec -B <directory of run_qunex.sh & SpecFiles Folder>:/opt/xnat_pbs_jobs_control,<directory of gradient_coefficient_files>:/export/HCP/gradient_coefficient_files <path to qunex oontainer/qunex.sif> /opt/xnat_pbs_jobs_control/run_qunex.sh \
  --studyfolder=<Processing Folder>/<subject_name> \
  --subjects=<subject_name> \
  --overwrite=yes \
  --hcppipelineprocess=StructuralPreprocessing
