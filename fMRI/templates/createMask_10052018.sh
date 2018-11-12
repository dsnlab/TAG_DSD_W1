#!/bin/bash
#--------------------------------------------------------------
#
#SBATCH --job-name=groupMask
#SBATCH --output=groupMask.log
#SBATCH --error=groupMask_err.log
#SBATCH --cpus-per-task=25
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4000
#SBATCH --partition=fat,short

#load packages
module load fsl

#set paths
fmriprep=/projects/dsnlab/shared/tag/bids_data/derivatives/fmriprep
outdir=/projects/dsnlab/shared/tag/nonbids_data/fMRI/templates/masks

#declare an array of IDs
declare -a arr=("sub-TAG001"
				"sub-TAG002"
				"sub-TAG004"
				"sub-TAG005"
				"sub-TAG006"
				"sub-TAG007"
				"sub-TAG008"
				"sub-TAG009"
				"sub-TAG010"
				"sub-TAG011"
				"sub-TAG012"
				"sub-TAG013"
				"sub-TAG014"
				"sub-TAG015"
				"sub-TAG016"
				"sub-TAG018"
				"sub-TAG019"
				"sub-TAG020"
				"sub-TAG022"
				"sub-TAG023"
				"sub-TAG024"
				"sub-TAG026"
				"sub-TAG027"
				"sub-TAG028"
				"sub-TAG030"
				"sub-TAG032"
				"sub-TAG033"
				"sub-TAG034"
				"sub-TAG035"
				"sub-TAG036"
				"sub-TAG037"
				"sub-TAG038"
				"sub-TAG040"
				"sub-TAG041"
				"sub-TAG042"
				"sub-TAG044"
				"sub-TAG045"
				"sub-TAG046"
				"sub-TAG047"
				"sub-TAG048"
				"sub-TAG049"
				"sub-TAG050"
				"sub-TAG051"
				"sub-TAG052"
				"sub-TAG053"
				"sub-TAG054"
				"sub-TAG055"
				"sub-TAG056"
				"sub-TAG057"
				"sub-TAG058"
				"sub-TAG059"
				"sub-TAG060"
				"sub-TAG062"
				"sub-TAG064"
				"sub-TAG065"
				"sub-TAG066"
				"sub-TAG067"
				"sub-TAG068"
				"sub-TAG069"
				"sub-TAG070"
				"sub-TAG071"
				"sub-TAG072"
				"sub-TAG074"
				"sub-TAG075"
				"sub-TAG076"
				"sub-TAG077"
				"sub-TAG078"
				"sub-TAG080"
				"sub-TAG081"
				"sub-TAG083"
				"sub-TAG084"
				"sub-TAG085"
				"sub-TAG086"
				"sub-TAG087"
				"sub-TAG088"
				"sub-TAG089"
				"sub-TAG090"
				"sub-TAG091"
				"sub-TAG094"
				"sub-TAG095"
				"sub-TAG099"
				"sub-TAG100"
				"sub-TAG101"
				"sub-TAG102"
				"sub-TAG103"
				"sub-TAG104"
				"sub-TAG105"
				"sub-TAG106"
				"sub-TAG107"
				"sub-TAG109"
				"sub-TAG110"
				"sub-TAG111"
				"sub-TAG112"
				"sub-TAG113"
				"sub-TAG114"
				"sub-TAG116"
				"sub-TAG119"
				"sub-TAG120"
				"sub-TAG122"
				"sub-TAG124"
				"sub-TAG125"
				"sub-TAG127"
				"sub-TAG130"
				"sub-TAG131"
				"sub-TAG132"
				"sub-TAG137"
				"sub-TAG138"
				"sub-TAG140"
				"sub-TAG141"
				"sub-TAG143"
				"sub-TAG144"
				"sub-TAG145"
				"sub-TAG147"
				"sub-TAG149"
				"sub-TAG152"
				"sub-TAG155"
				"sub-TAG159"
				"sub-TAG160"
				"sub-TAG164"
				"sub-TAG165"
				"sub-TAG166"
				"sub-TAG167"
				"sub-TAG169"
				"sub-TAG173"
				"sub-TAG174"
				"sub-TAG175"
				"sub-TAG176"
				"sub-TAG177"
				"sub-TAG179"
				"sub-TAG180"
				"sub-TAG181"
				"sub-TAG186"
				"sub-TAG188"
				"sub-TAG190"
				"sub-TAG192"
				"sub-TAG194"
				"sub-TAG200"
				"sub-TAG202"
				"sub-TAG203"
				"sub-TAG206"
				"sub-TAG207"
				"sub-TAG208"
				"sub-TAG209"
				"sub-TAG210"
				"sub-TAG211"
				"sub-TAG215"
				"sub-TAG218"
				"sub-TAG220"
				"sub-TAG221"
				"sub-TAG223"
				"sub-TAG224"
				"sub-TAG225"
				"sub-TAG232"
				"sub-TAG233"
				"sub-TAG238"
				"sub-TAG240"
				"sub-TAG243"
				"sub-TAG244"
				"sub-TAG247"
				"sub-TAG250"
				"sub-TAG252"
				"sub-TAG253"
				"sub-TAG261"
				"sub-TAG266")

#now loop through the above array and create grey and white matter images (remove CSF).
for sub in "${arr[@]}"; do
	fslmaths $fmriprep/$sub/ses-wave1/anat/"${sub}"_ses-wave1_T1w_space-MNI152NLin2009cAsym_dtissue.nii.gz -thr 2 $outdir/"${sub}"_GMWM.nii.gz
done

#now add all images to create group mask
fslmaths "${outdir}"/sub-TAG001_GMWM.nii.gz -add "${outdir}"/sub-TAG002_GMWM.nii.gz -add "${outdir}"/sub-TAG004_GMWM.nii.gz -add "${outdir}"/sub-TAG005_GMWM.nii.gz -add "${outdir}"/sub-TAG006_GMWM.nii.gz -add "${outdir}"/sub-TAG007_GMWM.nii.gz -add "${outdir}"/sub-TAG008_GMWM.nii.gz -add "${outdir}"/sub-TAG009_GMWM.nii.gz -add "${outdir}"/sub-TAG010_GMWM.nii.gz -add "${outdir}"/sub-TAG011_GMWM.nii.gz -add "${outdir}"/sub-TAG012_GMWM.nii.gz -add "${outdir}"/sub-TAG013_GMWM.nii.gz -add "${outdir}"/sub-TAG014_GMWM.nii.gz -add "${outdir}"/sub-TAG015_GMWM.nii.gz -add "${outdir}"/sub-TAG016_GMWM.nii.gz -add "${outdir}"/sub-TAG018_GMWM.nii.gz -add "${outdir}"/sub-TAG019_GMWM.nii.gz -add "${outdir}"/sub-TAG020_GMWM.nii.gz -add "${outdir}"/sub-TAG022_GMWM.nii.gz -add "${outdir}"/sub-TAG023_GMWM.nii.gz -add "${outdir}"/sub-TAG024_GMWM.nii.gz -add "${outdir}"/sub-TAG026_GMWM.nii.gz -add "${outdir}"/sub-TAG027_GMWM.nii.gz -add "${outdir}"/sub-TAG028_GMWM.nii.gz -add "${outdir}"/sub-TAG030_GMWM.nii.gz -add "${outdir}"/sub-TAG032_GMWM.nii.gz -add "${outdir}"/sub-TAG033_GMWM.nii.gz -add "${outdir}"/sub-TAG034_GMWM.nii.gz -add "${outdir}"/sub-TAG035_GMWM.nii.gz -add "${outdir}"/sub-TAG036_GMWM.nii.gz -add "${outdir}"/sub-TAG037_GMWM.nii.gz -add "${outdir}"/sub-TAG038_GMWM.nii.gz -add "${outdir}"/sub-TAG040_GMWM.nii.gz -add "${outdir}"/sub-TAG041_GMWM.nii.gz -add "${outdir}"/sub-TAG042_GMWM.nii.gz -add "${outdir}"/sub-TAG044_GMWM.nii.gz -add "${outdir}"/sub-TAG045_GMWM.nii.gz -add "${outdir}"/sub-TAG046_GMWM.nii.gz -add "${outdir}"/sub-TAG047_GMWM.nii.gz -add "${outdir}"/sub-TAG048_GMWM.nii.gz -add "${outdir}"/sub-TAG049_GMWM.nii.gz -add "${outdir}"/sub-TAG050_GMWM.nii.gz -add "${outdir}"/sub-TAG051_GMWM.nii.gz -add "${outdir}"/sub-TAG052_GMWM.nii.gz -add "${outdir}"/sub-TAG053_GMWM.nii.gz -add "${outdir}"/sub-TAG054_GMWM.nii.gz -add "${outdir}"/sub-TAG055_GMWM.nii.gz -add "${outdir}"/sub-TAG056_GMWM.nii.gz -add "${outdir}"/sub-TAG057_GMWM.nii.gz -add "${outdir}"/sub-TAG058_GMWM.nii.gz -add "${outdir}"/sub-TAG059_GMWM.nii.gz -add "${outdir}"/sub-TAG060_GMWM.nii.gz -add "${outdir}"/sub-TAG062_GMWM.nii.gz -add "${outdir}"/sub-TAG064_GMWM.nii.gz -add "${outdir}"/sub-TAG065_GMWM.nii.gz -add "${outdir}"/sub-TAG066_GMWM.nii.gz -add "${outdir}"/sub-TAG067_GMWM.nii.gz -add "${outdir}"/sub-TAG068_GMWM.nii.gz -add "${outdir}"/sub-TAG069_GMWM.nii.gz -add "${outdir}"/sub-TAG070_GMWM.nii.gz -add "${outdir}"/sub-TAG071_GMWM.nii.gz -add "${outdir}"/sub-TAG072_GMWM.nii.gz -add "${outdir}"/sub-TAG074_GMWM.nii.gz -add "${outdir}"/sub-TAG075_GMWM.nii.gz -add "${outdir}"/sub-TAG076_GMWM.nii.gz -add "${outdir}"/sub-TAG077_GMWM.nii.gz -add "${outdir}"/sub-TAG078_GMWM.nii.gz -add "${outdir}"/sub-TAG080_GMWM.nii.gz -add "${outdir}"/sub-TAG081_GMWM.nii.gz -add "${outdir}"/sub-TAG083_GMWM.nii.gz -add "${outdir}"/sub-TAG084_GMWM.nii.gz -add "${outdir}"/sub-TAG085_GMWM.nii.gz -add "${outdir}"/sub-TAG086_GMWM.nii.gz -add "${outdir}"/sub-TAG087_GMWM.nii.gz -add "${outdir}"/sub-TAG088_GMWM.nii.gz -add "${outdir}"/sub-TAG089_GMWM.nii.gz -add "${outdir}"/sub-TAG090_GMWM.nii.gz -add "${outdir}"/sub-TAG091_GMWM.nii.gz -add "${outdir}"/sub-TAG094_GMWM.nii.gz -add "${outdir}"/sub-TAG095_GMWM.nii.gz -add "${outdir}"/sub-TAG099_GMWM.nii.gz -add "${outdir}"/sub-TAG100_GMWM.nii.gz -add "${outdir}"/sub-TAG101_GMWM.nii.gz -add "${outdir}"/sub-TAG102_GMWM.nii.gz -add "${outdir}"/sub-TAG103_GMWM.nii.gz -add "${outdir}"/sub-TAG104_GMWM.nii.gz -add "${outdir}"/sub-TAG105_GMWM.nii.gz -add "${outdir}"/sub-TAG106_GMWM.nii.gz -add "${outdir}"/sub-TAG107_GMWM.nii.gz -add "${outdir}"/sub-TAG109_GMWM.nii.gz -add "${outdir}"/sub-TAG110_GMWM.nii.gz -add "${outdir}"/sub-TAG111_GMWM.nii.gz -add "${outdir}"/sub-TAG112_GMWM.nii.gz -add "${outdir}"/sub-TAG113_GMWM.nii.gz -add "${outdir}"/sub-TAG114_GMWM.nii.gz -add "${outdir}"/sub-TAG116_GMWM.nii.gz -add "${outdir}"/sub-TAG119_GMWM.nii.gz -add "${outdir}"/sub-TAG120_GMWM.nii.gz -add "${outdir}"/sub-TAG122_GMWM.nii.gz -add "${outdir}"/sub-TAG124_GMWM.nii.gz -add "${outdir}"/sub-TAG125_GMWM.nii.gz -add "${outdir}"/sub-TAG127_GMWM.nii.gz -add "${outdir}"/sub-TAG130_GMWM.nii.gz -add "${outdir}"/sub-TAG131_GMWM.nii.gz -add "${outdir}"/sub-TAG132_GMWM.nii.gz -add "${outdir}"/sub-TAG137_GMWM.nii.gz -add "${outdir}"/sub-TAG138_GMWM.nii.gz -add "${outdir}"/sub-TAG140_GMWM.nii.gz -add "${outdir}"/sub-TAG141_GMWM.nii.gz -add "${outdir}"/sub-TAG143_GMWM.nii.gz -add "${outdir}"/sub-TAG144_GMWM.nii.gz -add "${outdir}"/sub-TAG145_GMWM.nii.gz -add "${outdir}"/sub-TAG147_GMWM.nii.gz -add "${outdir}"/sub-TAG149_GMWM.nii.gz -add "${outdir}"/sub-TAG152_GMWM.nii.gz -add "${outdir}"/sub-TAG155_GMWM.nii.gz -add "${outdir}"/sub-TAG159_GMWM.nii.gz -add "${outdir}"/sub-TAG160_GMWM.nii.gz -add "${outdir}"/sub-TAG164_GMWM.nii.gz -add "${outdir}"/sub-TAG165_GMWM.nii.gz -add "${outdir}"/sub-TAG166_GMWM.nii.gz -add "${outdir}"/sub-TAG167_GMWM.nii.gz -add "${outdir}"/sub-TAG169_GMWM.nii.gz -add "${outdir}"/sub-TAG173_GMWM.nii.gz -add "${outdir}"/sub-TAG174_GMWM.nii.gz -add "${outdir}"/sub-TAG175_GMWM.nii.gz -add "${outdir}"/sub-TAG176_GMWM.nii.gz -add "${outdir}"/sub-TAG177_GMWM.nii.gz -add "${outdir}"/sub-TAG179_GMWM.nii.gz -add "${outdir}"/sub-TAG180_GMWM.nii.gz -add "${outdir}"/sub-TAG181_GMWM.nii.gz -add "${outdir}"/sub-TAG186_GMWM.nii.gz -add "${outdir}"/sub-TAG188_GMWM.nii.gz -add "${outdir}"/sub-TAG190_GMWM.nii.gz -add "${outdir}"/sub-TAG192_GMWM.nii.gz -add "${outdir}"/sub-TAG194_GMWM.nii.gz -add "${outdir}"/sub-TAG200_GMWM.nii.gz -add "${outdir}"/sub-TAG202_GMWM.nii.gz -add "${outdir}"/sub-TAG203_GMWM.nii.gz -add "${outdir}"/sub-TAG206_GMWM.nii.gz -add "${outdir}"/sub-TAG207_GMWM.nii.gz -add "${outdir}"/sub-TAG208_GMWM.nii.gz -add "${outdir}"/sub-TAG209_GMWM.nii.gz -add "${outdir}"/sub-TAG210_GMWM.nii.gz -add "${outdir}"/sub-TAG211_GMWM.nii.gz -add "${outdir}"/sub-TAG215_GMWM.nii.gz -add "${outdir}"/sub-TAG218_GMWM.nii.gz -add "${outdir}"/sub-TAG220_GMWM.nii.gz -add "${outdir}"/sub-TAG221_GMWM.nii.gz -add "${outdir}"/sub-TAG223_GMWM.nii.gz -add "${outdir}"/sub-TAG224_GMWM.nii.gz -add "${outdir}"/sub-TAG225_GMWM.nii.gz -add "${outdir}"/sub-TAG232_GMWM.nii.gz -add "${outdir}"/sub-TAG233_GMWM.nii.gz -add "${outdir}"/sub-TAG238_GMWM.nii.gz -add "${outdir}"/sub-TAG240_GMWM.nii.gz -add "${outdir}"/sub-TAG243_GMWM.nii.gz -add "${outdir}"/sub-TAG244_GMWM.nii.gz -add "${outdir}"/sub-TAG247_GMWM.nii.gz -add "${outdir}"/sub-TAG250_GMWM.nii.gz -add "${outdir}"/sub-TAG252_GMWM.nii.gz -add "${outdir}"/sub-TAG253_GMWM.nii.gz -add "${outdir}"/sub-TAG261_GMWM.nii.gz -add "${outdir}"/sub-TAG266_GMWM.nii.gz "${outdir}"/groupStruct.nii

# now threshold group image
fslmaths "${outdir}"/groupStruct.nii.gz -thr 41 -bin "${outdir}"/groupStruct_25perc.nii.gz