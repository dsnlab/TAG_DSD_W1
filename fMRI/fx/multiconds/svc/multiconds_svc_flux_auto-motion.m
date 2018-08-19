%-----------------------------------------------------------------------
% Job saved on 19-Aug-2018 14:45:05 by cfg_util (rev $Rev: 6942 $)
% spm SPM - SPM12 (7219)
% cfg_basicio BasicIO - Unknown
%-----------------------------------------------------------------------
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.parent = {'/projects/dsnlab/shared/tag/nonbids_data/fMRI/fx/models/svc_flux_auto-motion/'};
matlabbatch{1}.cfg_basicio.file_dir.dir_ops.cfg_mkdir.name = 'sub-TAG001';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tag/bids_data/derivatives/fmriprep/sub-TAG001/ses-wave1/func/'};
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'sub-TAG001_ses-wave1_task-SVC_run-01_bold_space-MNI152NLin2009cAsym_preproc.nii.gz';
matlabbatch{2}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.dir = {'/projects/dsnlab/shared/tag/bids_data/derivatives/fmriprep/sub-TAG001/ses-wave1/func/'};
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.filter = 'sub-TAG001_ses-wave1_task-SVC_run-02_bold_space-MNI152NLin2009cAsym_preproc.nii.gz';
matlabbatch{3}.cfg_basicio.file_dir.file_ops.file_fplist.rec = 'FPList';
matlabbatch{4}.cfg_basicio.file_dir.file_ops.cfg_gunzip_files.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (sub-TAG001_ses-wave1_task-SVC_run-01_bold_space-MNI152NLin2009cAsym_preproc.nii.gz)', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{4}.cfg_basicio.file_dir.file_ops.cfg_gunzip_files.outdir(1) = cfg_dep('Make Directory: Make Directory ''sub-TAG001''', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{4}.cfg_basicio.file_dir.file_ops.cfg_gunzip_files.keep = true;
matlabbatch{5}.cfg_basicio.file_dir.file_ops.cfg_gunzip_files.files(1) = cfg_dep('File Selector (Batch Mode): Selected Files (sub-TAG001_ses-wave1_task-SVC_run-02_bold_space-MNI152NLin2009cAsym_preproc.nii.gz)', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{5}.cfg_basicio.file_dir.file_ops.cfg_gunzip_files.outdir(1) = cfg_dep('Make Directory: Make Directory ''sub-TAG001''', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{5}.cfg_basicio.file_dir.file_ops.cfg_gunzip_files.keep = true;
matlabbatch{6}.spm.util.exp_frames.files(1) = cfg_dep('Gunzip Files: Gunzipped Files', substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{':'}));
matlabbatch{6}.spm.util.exp_frames.frames = Inf;
matlabbatch{7}.spm.util.exp_frames.files(1) = cfg_dep('Gunzip Files: Gunzipped Files', substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('()',{':'}));
matlabbatch{7}.spm.util.exp_frames.frames = Inf;
matlabbatch{8}.spm.spatial.smooth.data(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{8}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{8}.spm.spatial.smooth.dtype = 0;
matlabbatch{8}.spm.spatial.smooth.im = 0;
matlabbatch{8}.spm.spatial.smooth.prefix = 's';
matlabbatch{9}.spm.spatial.smooth.data(1) = cfg_dep('Expand image frames: Expanded filename list.', substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{9}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{9}.spm.spatial.smooth.dtype = 0;
matlabbatch{9}.spm.spatial.smooth.im = 0;
matlabbatch{9}.spm.spatial.smooth.prefix = 's';
matlabbatch{10}.spm.stats.fmri_spec.dir(1) = cfg_dep('Make Directory: Make Directory ''sub-TAG001''', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','dir'));
matlabbatch{10}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{10}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{10}.spm.stats.fmri_spec.timing.fmri_t = 72;
matlabbatch{10}.spm.stats.fmri_spec.timing.fmri_t0 = 36;
matlabbatch{10}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{10}.spm.stats.fmri_spec.sess(1).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{10}.spm.stats.fmri_spec.sess(1).multi = {'/projects/dsnlab/shared/tag/nonbids_data/fMRI/fx/multiconds/svc_flux_auto-motion/tag001_wave_1_svc_run1.mat'};
matlabbatch{10}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{10}.spm.stats.fmri_spec.sess(1).multi_reg = {'/projects/dsnlab/shared/tag/nonbids_data/fMRI/fx/motion/svc_flux_auto-motion/rp_txt_ml/rp_TAG001_SVC1.txt'};
matlabbatch{10}.spm.stats.fmri_spec.sess(1).hpf = 128;
matlabbatch{10}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Smooth: Smoothed Images', substruct('.','val', '{}',{9}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files'));
matlabbatch{10}.spm.stats.fmri_spec.sess(2).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
matlabbatch{10}.spm.stats.fmri_spec.sess(2).multi = {'/projects/dsnlab/shared/tag/nonbids_data/fMRI/fx/multiconds/svc_flux_auto-motion/tag001_wave_1_svc_run2.mat'};
matlabbatch{10}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{10}.spm.stats.fmri_spec.sess(2).multi_reg = {'/projects/dsnlab/shared/tag/nonbids_data/fMRI/fx/motion/svc_flux_auto-motion/rp_txt_ml/rp_TAG001_SVC2.txt'};
matlabbatch{10}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{10}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{10}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{10}.spm.stats.fmri_spec.volt = 1;
matlabbatch{10}.spm.stats.fmri_spec.global = 'None';
matlabbatch{10}.spm.stats.fmri_spec.mthresh = -Inf;
matlabbatch{10}.spm.stats.fmri_spec.mask = {};
matlabbatch{10}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{11}.spm.stats.fmri_est.write_residuals = 1;
matlabbatch{11}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{12}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
matlabbatch{12}.spm.stats.con.consess{1}.tcon.name = 'SelfProPop';
matlabbatch{12}.spm.stats.con.consess{1}.tcon.weights = [1 0 0 0 0 0];
matlabbatch{12}.spm.stats.con.consess{1}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.consess{2}.tcon.name = 'SelfUnpop';
matlabbatch{12}.spm.stats.con.consess{2}.tcon.weights = [0 1 0 0 0 0];
matlabbatch{12}.spm.stats.con.consess{2}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.consess{3}.tcon.name = 'SelfAntiPop';
matlabbatch{12}.spm.stats.con.consess{3}.tcon.weights = [0 0 1 0 0 0];
matlabbatch{12}.spm.stats.con.consess{3}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.consess{4}.tcon.name = 'ChangeProPop';
matlabbatch{12}.spm.stats.con.consess{4}.tcon.weights = [0 0 0 1 0 0];
matlabbatch{12}.spm.stats.con.consess{4}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.consess{5}.tcon.name = 'ChangeUnpop';
matlabbatch{12}.spm.stats.con.consess{5}.tcon.weights = [0 0 0 0 1 0];
matlabbatch{12}.spm.stats.con.consess{5}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.consess{6}.tcon.name = 'ChangeAntiPop';
matlabbatch{12}.spm.stats.con.consess{6}.tcon.weights = [0 0 0 0 0 1];
matlabbatch{12}.spm.stats.con.consess{6}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.consess{7}.tcon.name = 'SelfChange';
matlabbatch{12}.spm.stats.con.consess{7}.tcon.weights = [0.33 0.33 0.33 -0.33 -0.33 -0.33];
matlabbatch{12}.spm.stats.con.consess{7}.tcon.sessrep = 'repl';
matlabbatch{12}.spm.stats.con.delete = 0;
