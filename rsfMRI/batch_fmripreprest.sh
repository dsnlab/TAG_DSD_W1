#!/bin/bash
#
# This batch file calls on your subject
# list (named subject_list.txt). And 
# runs the job_fmriprep.sh file for 
# each subject. It saves the ouput
# and error files in their specified
# directories.
#
# Set your directories

group_dir=/projects/dsnlab/shared/
#container=BIDS/SingularityContainers/poldracklab_fmriprep_latest-2017-07-20-dd77d76c5e14.img
container=BIDS/SingularityContainers/poldracklab_fmriprep_latest-2017-12-07-ba92e815fc4e.img
study="tag"

# Set subject list
#SUBJLIST=`cat sublist_restw2_n82.txt`
SUBJLIST=`cat test.txt`

# 
for SUBJ in $SUBJLIST; do

#SUBID=`echo $SUBJ|awk '{print $1}' FS=","`
#SESSID=`echo $SUBJ|awk '{print $2}' FS=","`
	
sbatch --export ALL,subid=${SUBJ},group_dir=${group_dir},study=${study},container=${container} --job-name fmripreprest --partition=short --time=0-20:00:00 --mem=8G -o "${group_dir}"/"${study}"/TAG_scripts/rsfMRI/output/"${SUBJ}"_fmripreprest_output.txt -e "${group_dir}"/"${study}"/TAG_scripts/rsfMRI/output/"${SUBJ}"_fmripreprest_error.txt job_fmripreprest.sh
	
done