clc,clear
close all

%% 数据加载
raw_data = load('E:\ZynqProject_py\data20230616202350_30m\20230616202350.mat');  % 双目标
radar_data = raw_data.n;
[nframe, nchirp, samplesInChirp , nChannel] = size(radar_data); % 帧数 * 每帧chirp数 * 每个chirp内采样数 * 接收通道数
radar_dout = squeeze(radar_data(:,:,:,3));  % 通道3

%% 参数定义
T = 200 * 10^(-6);      % 调频周期 
fc = 24 * 10^9;         % 载波中心频率
prt = 400 * 10^(-6);    % chirp周期
c = 3 * 10^8;           % 光速
BW = 2 * 10^9;          % 调频带宽
fs = 2 * BW;            % 采样频率
K = BW / T;             % chirp斜率
sample = 10 * 10^6;     % 采样率10MHz
lambda = c/fc;          % 波长
sampleTime = samplesInChirp/sample;     % chirp内采样时间
frameValidTime = prt * nchirp;          % 帧中采数据的时间
Fs_time = sample;       % 快时间采样率
Fs_doppler = 1/prt;     % 慢时间采样率


%% 性能参数显示
fprintf('性能参数显示:\n')
unit_range_freq = 2*K/c;
Rmax = (Fs_time)/unit_range_freq;
fprintf('最大可检测距离%.2f米，',Rmax);
fast_freq_res = 1/sampleTime;           % 快时间频谱分辨率
range_res = fast_freq_res/unit_range_freq;
fprintf('距离分辨率%.4f米\n',range_res)

unit_velocity_doppler = 2/lambda;
Vmax = (Fs_doppler)/unit_velocity_doppler;
fprintf('最大可检测速度%.4f米/秒，',Vmax);
doppler_freq_res = 1/frameValidTime;    % 慢时间频谱分辨率
velocity_res = doppler_freq_res/unit_velocity_doppler;
fprintf('速度分辨率%.4f米/秒\n',velocity_res)


%% 画图
map_R = fft(radar_dout,samplesInChirp,3); % 测距FFT

r_bin = range_res * (0 : samplesInChirp - 1);
v_bin = velocity_res * (-nchirp / 2 : nchirp / 2 - 1);

% 判断每帧是否单个chirp
if nchirp == 1
    map_R1 = squeeze(map_R(:,1,:));
else
    map_R1 = squeeze(sum(map_R,2));  % 多个chirp数据叠加
%     map_R1 = squeeze(map_R(:,1,:));    % 取第1个chirp
end

adcDataOutWindowed = map_R1';
adcDataOutWindowed(1:1,:) = 0;  % 去除近场干扰
map_RD_z_1 = 20*log10(abs(sum(adcDataOutWindowed,2)));  %FFT后处理得到的是幅度，不是功率，需要20*lg
% map_RD_z_1 = sum(adcDataOutWindowed,2); %20帧积累

%% 距离-时间图
time = (1 : nframe) / fs;
range = (1 : samplesInChirp) * range_res;
[x, y] = meshgrid(time, range);
% figure;
% mesh(x,y,abs(adcDataOutWindowed));
% title('距离-时间像');xlabel('时间（s）');ylabel('距离（m）');zlabel('幅度');
% ylim([25 40]);
% zlim([0 1e6]);
% view([90, 0]);
% % view([0, 90]);colormap('jet');

type = 1; % type 来决定输入的map_RD_z_1是否是幅度表示还是直接幅度分贝表示  type=1：表示是分贝(dB)   type=2：表示是幅度
if type == 1
    map_RD_z_temp = 10.^(map_RD_z_1 ./20);
else
    map_RD_z_temp = map_RD_z_1;
end

% 20帧积累
figure; 
plot(range,abs(map_RD_z_temp));
xlim([15 40]);
% ylim([0 9e6]);
title('一维距离像');xlabel('距离（m）');ylabel('幅度');


%% 一维CFAR检测
%CFAR系数
detectionCFARInst.fft1DSize = length(map_RD_z_temp);% /**< 1D FFT size*/  距离向FFT长度
detectionCFARInst.relThr  = 3.2;  	    			% /**< Input relative threshold.*/  相对门限系数
detectionCFARInst.rangeRes = range_res;  	    	% /**< Range resolution.*/  距离分辨率
detectionCFARInst.searchWinSizeRange = 15;	    	% /**< Search window size for range domain search.*/  距离向单边参考单元个数
detectionCFARInst.guardSizeRange = 3;	    		% /**< Number of guard samples for range domain search.*/  距离向单边保护单元个数
detectionCFARInst.maxNumDetObj = 10;	    		% /**< Maximum number of objects to detect.*/　最大检测目标数目
detectionCFARInst.leftSkipSize = 0;                 % /**< numberof samples to be skipped on the left side in range domain.*/  距离向左边删除的单元
detectionCFARInst.rightSkipSize = 0;                % /**< number of samples to be skipped on the right side in range domain. */  距离向右边删除的单元

map_RD_z_temp = map_RD_z_temp - 2/3 * min(map_RD_z_temp);   %调整幅度值便于CFAR检测  

type = 1; % type 来决定输入的map_RD_z_1是否是幅度表示还是直接幅度分贝表示  type=1：表示是分贝(dB)   type=2：表示是幅度
[rangeInd, snrEst, noise, detected, threshold_total] = RADARDEMO_detectionCFAR_raCAAll_1D(map_RD_z_temp, detectionCFARInst, type);

threshold_total = threshold_total';
figure;
plot(range,map_RD_z_1);
hold on;
plot(range,threshold_total);
xlim([15 40]);
xlabel('距离（m）');ylabel('幅度(dB)');
legend ('多chirp、多帧累加后的幅度-距离','CA-CFAR检测阈值');
title('多chirp、多帧累加后的幅度-距离');
grid on;

map_RD_z_2 = zeros(1,length(map_RD_z_1));
map_RD_z_2(rangeInd)=snrEst;

figure;
plot(range,abs(map_RD_z_2));
xlim([15 40]);
xlabel('距离（m）');ylabel('信噪比');
title('CA-CFAR检测处理');
grid on;

% %% 距离-速度图像
% map_RV = fftshift(fft(map_R,nchirp,2),2);
% map_RV = squeeze(sum(map_RV));
% map_RV(:,1) = 0;  % 去除近场干扰
% [x, y] = meshgrid(v_bin, r_bin);
% figure;
% mesh(x,y,(abs(map_RV')));
% title('RD图');xlabel('速度（m/s）');ylabel('距离（m）');
% ylim([0 70]);
% view([90, 90]);colormap('jet');

