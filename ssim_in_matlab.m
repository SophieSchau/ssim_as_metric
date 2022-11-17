load('recons.mat')

%% no scaling 
disp('No scaling:')
full_ssim_0 = ssim(GT,abs(recon_full_ifft)) ;
disp(['Full : ' , num2str(full_ssim_0)])

us1_ssim_0 = ssim(GT,abs(recon_us1_ifft)) ;
disp(['Undersampled 1 : ' , num2str(us1_ssim_0)])

us2_ssim_0 = ssim(GT,abs(recon_us2_ifft)) ;
disp(['Undersampled 2 : ' , num2str(us2_ssim_0)])

us3_ssim_0 = ssim(GT,abs(recon_us3_ifft)) ;
disp(['Undersampled 3 : ' , num2str(us3_ssim_0)])

us4_ssim_0 = ssim(GT,abs(recon_us4_ifft)) ;
disp(['Undersampled 4 : ' , num2str(us4_ssim_0)])

disp('--------------------------------------------------')

%% scaled 
disp('Scaled by max:')
full_ssim_1 = ssim(GT/max(GT(:)),abs(recon_full_ifft)/max(abs(recon_full_ifft(:)))) ;
disp(['Full : ' , num2str(full_ssim_1)])

[us1_ssim_1, S] = ssim(GT/max(GT(:)),abs(recon_us1_ifft)/max(abs(recon_us1_ifft(:)))) ;
disp(['Undersampled 1 : ' , num2str(us1_ssim_1)])

us2_ssim_1 = ssim(GT/max(GT(:)),abs(recon_us2_ifft)/max(abs(recon_us2_ifft(:)))) ;
disp(['Undersampled 2 : ' , num2str(us2_ssim_1)])

us3_ssim_1 = ssim(GT/max(GT(:)),abs(recon_us3_ifft)/max(abs(recon_us3_ifft(:)))) ;
disp(['Undersampled 3 : ' , num2str(us3_ssim_1)])

us4_ssim_1 = ssim(GT/max(GT(:)),abs(recon_us4_ifft)/max(abs(recon_us4_ifft(:)))) ;
disp(['Undersampled 4 : ' , num2str(us4_ssim_1)])

disp('--------------------------------------------------')

disp('Scaled by median:')
full_ssim_2 = ssim(GT/median(GT(:)),abs(recon_full_ifft)/median(abs(recon_full_ifft(:)))) ;
disp(['Full : ' , num2str(full_ssim_2)])

us1_ssim_2 = ssim(GT/median(GT(:)),abs(recon_us1_ifft)/median(abs(recon_us1_ifft(:)))) ;
disp(['Undersampled 1 : ' , num2str(us1_ssim_2)])

us2_ssim_2 = ssim(GT/median(GT(:)),abs(recon_us2_ifft)/median(abs(recon_us2_ifft(:)))) ;
disp(['Undersampled 2 : ' , num2str(us2_ssim_2)])

us3_ssim_2 = ssim(GT/median(GT(:)),abs(recon_us3_ifft)/median(abs(recon_us3_ifft(:)))) ;
disp(['Undersampled 3 : ' , num2str(us3_ssim_2)])

us4_ssim_2 = ssim(GT/median(GT(:)),abs(recon_us4_ifft)/median(abs(recon_us4_ifft(:)))) ;
disp(['Undersampled 4 : ' , num2str(us4_ssim_2)])

disp('--------------------------------------------------')


%% Change data type
disp('Change to uint 8:')
full_ssim_3 = ssim(uint8(GT),uint8(abs(recon_full_ifft))) ;
disp(['Full : ' , num2str(full_ssim_3)])

us1_ssim_3 = ssim(uint8(GT),uint8(abs(recon_us1_ifft))) ;
disp(['Undersampled 1 : ' , num2str(us1_ssim_3)])

us2_ssim_3 = ssim(uint8(GT),uint8(abs(recon_us2_ifft))) ;
disp(['Undersampled 2 : ' , num2str(us2_ssim_3)])

us3_ssim_3 = ssim(uint8(GT),uint8(abs(recon_us3_ifft))) ;
disp(['Undersampled 3 : ' , num2str(us3_ssim_3)])

us4_ssim_3 = ssim(uint8(GT),uint8(abs(recon_us4_ifft))) ;
disp(['Undersampled 4 : ' , num2str(us4_ssim_3)])

disp('--------------------------------------------------')

disp('Change to uint 16:')
full_ssim_4 = ssim(uint16(GT),uint16(abs(recon_full_ifft))) ;
disp(['Full : ' , num2str(full_ssim_4)])

us1_ssim_4 = ssim(uint16(GT),uint16(abs(recon_us1_ifft))) ;
disp(['Undersampled 1 : ' , num2str(us1_ssim_4)])

us2_ssim_4 = ssim(uint16(GT),uint16(abs(recon_us2_ifft))) ;
disp(['Undersampled 2 : ' , num2str(us2_ssim_4)])

us3_ssim_4 = ssim(uint16(GT),uint16(abs(recon_us3_ifft))) ;
disp(['Undersampled 3 : ' , num2str(us3_ssim_4)])

us4_ssim_4 = ssim(uint16(GT),uint16(abs(recon_us4_ifft))) ;
disp(['Undersampled 4 : ' , num2str(us4_ssim_4)])

disp('--------------------------------------------------')

save('ssim_matlab.mat','full_ssim_0','full_ssim_1','full_ssim_2','full_ssim_3','full_ssim_4', 'us1_ssim_0', 'us1_ssim_1', 'us1_ssim_2','us1_ssim_3', 'us1_ssim_4', 'us2_ssim_0', 'us2_ssim_1', 'us2_ssim_2','us2_ssim_3', 'us2_ssim_4','us3_ssim_0', 'us3_ssim_1', 'us3_ssim_2','us3_ssim_3', 'us3_ssim_4','us4_ssim_0', 'us4_ssim_1', 'us4_ssim_2','us4_ssim_3', 'us4_ssim_4','S')