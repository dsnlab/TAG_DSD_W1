%-----------------------------------------------------------------------
% Job saved on 05-Jun-2018 20:33:00 by cfg_util (rev $Rev: 6460 $)
% spm SPM - SPM12 (6906)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.spm.spatial.smooth.data = {'/Volumes/psych-cog/dsnlab/TAG/nonbids_data/fmri/ppc/000/sub-TAG000_ses-wave1_task-DSD_run-01_bold_space-MNI152NLin2009cAsym_preproc.nii,1'};
matlabbatch{1}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{1}.spm.spatial.smooth.dtype = 0;
matlabbatch{1}.spm.spatial.smooth.im = 0;
matlabbatch{1}.spm.spatial.smooth.prefix = 's';
matlabbatch{2}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent = {'/Volumes/psych-cog/dsnlab/TAG/nonbids_data/fmri/fx/models/dsd'};
matlabbatch{2}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = '1';
matlabbatch{3}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''1''', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{3}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{3}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{3}.spm.stats.fmri_spec.timing.fmri_t = 72;
matlabbatch{3}.spm.stats.fmri_spec.timing.fmri_t0 = 36;
matlabbatch{3}.spm.stats.fmri_spec.sess.scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{3}.spm.stats.fmri_spec.sess.cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{3}.spm.stats.fmri_spec.sess.multi = {'/Volumes/psych-cog/dsnlab/TAG/nonbids_data/fmri/fx/multiconds/dsd/wave1/NOD/2_NOD.mat'};
matlabbatch{3}.spm.stats.fmri_spec.sess.regress = struct('name', {}, 'val', {});
matlabbatch{3}.spm.stats.fmri_spec.sess.multi_reg = {'/Volumes/psych-cog/dsnlab/TAG/nonbids_data/fmri/fx/motion/wave1/auto-motion-output/rp_txt/rp_001_DSD2.txt'};
matlabbatch{3}.spm.stats.fmri_spec.sess.hpf = 128;
matlabbatch{3}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{3}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{3}.spm.stats.fmri_spec.volt = 1;
matlabbatch{3}.spm.stats.fmri_spec.global = 'None';
matlabbatch{3}.spm.stats.fmri_spec.mthresh = -Inf;
matlabbatch{3}.spm.stats.fmri_spec.mask = {'/projects/dsnlab/shared/tds/fMRI/analysis/masks/tds1_tds2/tds1_tds2_gw_smoothed_group_average_optthr.nii,1'};
matlabbatch{3}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{4}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{4}.spm.stats.fmri_est.write_residuals = 1;
matlabbatch{4}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{5}.spm.stats.con.spmmat = '<UNDEFINED>';
matlabbatch{5}.spm.stats.con.consess{1}.tcon.name = 'pc>rest';
matlabbatch{5}.spm.stats.con.consess{1}.tcon.weights = [0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{2}.tcon.name = 'pc>wait';
matlabbatch{5}.spm.stats.con.consess{2}.tcon.weights = [-0.5 1 0 0 0 0 0 0 0 0 -0.5 1 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{2}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{3}.tcon.name = 'ct_2C_inc>rest';
matlabbatch{5}.spm.stats.con.consess{3}.tcon.weights = [0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{3}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{4}.tcon.name = 'ct_2C_inc>wait';
matlabbatch{5}.spm.stats.con.consess{4}.tcon.weights = [-0.5 0 1 0 0 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{4}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{5}.tcon.name = 'ct_2P_inc>rest';
matlabbatch{5}.spm.stats.con.consess{5}.tcon.weights = [0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{5}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{6}.tcon.name = 'ct_2P_inc>wait';
matlabbatch{5}.spm.stats.con.consess{6}.tcon.weights = [-0.5 0 0 1 0 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{6}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{7}.tcon.name = 'ct_2P_p_inc>rest';
matlabbatch{5}.spm.stats.con.consess{7}.tcon.weights = [0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{7}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{8}.tcon.name = 'ct_2P_p_inc>wait';
matlabbatch{5}.spm.stats.con.consess{8}.tcon.weights = [-0.5 0 0 0 1 0 0 0 0 0 -0.5 0 0 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{8}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{9}.tcon.name = 'ct_2C_exc>rest';
matlabbatch{5}.spm.stats.con.consess{9}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{9}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{10}.tcon.name = 'ct_2C_exc>wait';
matlabbatch{5}.spm.stats.con.consess{10}.tcon.weights = [-0.5 0 0 0 0 0 0 0 0 0 -0.5 0 1 0 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{10}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{11}.tcon.name = 'ct_2C_p_exc>rest';
matlabbatch{5}.spm.stats.con.consess{11}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{11}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{12}.tcon.name = 'ct_2C_p_exc>wait';
matlabbatch{5}.spm.stats.con.consess{12}.tcon.weights = [-0.5 0 0 0 0 0 0 0 0 0 -0.5 0 0 1 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{12}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{13}.tcon.name = 'ct_2P_exc>rest';
matlabbatch{5}.spm.stats.con.consess{13}.tcon.weights = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{13}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{14}.tcon.name = 'ct_2P_exc>wait';
matlabbatch{5}.spm.stats.con.consess{14}.tcon.weights = [-0.5 0 0 0 0 0 0 0 0 0 -0.5 0 0 0 1 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{14}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{15}.tcon.name = 'ct_2C_p_inc>ct_2P_p_exc';
matlabbatch{5}.spm.stats.con.consess{15}.tcon.weights = [0 0 0 0 1 0 0 0 0 0 0 0 0 -1 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{15}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.consess{16}.tcon.name = 'ct_2C_p_exc>ct_2P_p_inc';
matlabbatch{5}.spm.stats.con.consess{16}.tcon.weights = [0 0 0 0 -1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0];
matlabbatch{5}.spm.stats.con.consess{16}.tcon.sessrep = 'none';
matlabbatch{5}.spm.stats.con.delete = 1;
