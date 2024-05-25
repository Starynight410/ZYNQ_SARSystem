%220312，一维CFAR
function  [rangeInd, snrEst, noise, detected, threshold_total] = RADARDEMO_detectionCFAR_raCAAll_1D(map_RD_z_1, detectionCFARInst,type)
% 输出变量初始化
% 注意：map_RD_z_1 输入的为dB信号，函数后面的处理需要换成幅度来比较


% type 来决定输入的map_RD_z_1是否是幅度表示还是直接幅度分贝表示  type=1：表示是分贝(dB)   type=2：表示是幅度
if type == 1
    map_RD_z_1 = 20*log10(abs(map_RD_z_1)); 
    zzz = 10.^(map_RD_z_1 ./20);
    map_RD_z_1 = zzz;
else
    map_RD_z_1 = map_RD_z_1;
end

%% 开始CFAR检测
powerPtrSize = length(map_RD_z_1);
rangeInd = [];
snrEst = [];
noise = [];
detected = 0;
leftWinPower = 0;
rightWinPower = 0;
totalPower = 0;
tempDetected = 0;
threshold_total = [];

relativeThr	= detectionCFARInst.relThr;  %　相对门限系数
scale =	1/(detectionCFARInst.searchWinSizeRange); % 距离向单边参考单元个数的倒数


for k = 1:detectionCFARInst.searchWinSizeRange
    indexLeft = detectionCFARInst.guardSizeRange + k;  %　由于检测单元左边没有有效值，故取检测单元右边有效值填入左侧参考窗
    indexRight = 1 + detectionCFARInst.guardSizeRange + k;   %　检测单元右侧参考窗正常取值
    leftWinPower = leftWinPower + map_RD_z_1(indexLeft);
    rightWinPower = rightWinPower + map_RD_z_1(indexRight);  % 分别计算左右两边参考单元信号和
end
totalPower = min(leftWinPower, rightWinPower);  % 采用SO算法，取左右两边参考单元信号和中的较小值作为噪声估计
threshold = totalPower * relativeThr * scale;   % 计算检测阈值
threshold_total = [threshold_total,threshold];  %jmm 添加

 % 判决
if map_RD_z_1(1) > threshold
    tempDetected = tempDetected + 1;
    tempNoise(tempDetected) = totalPower;
    tempRangeIndex(tempDetected) = 1;
end

 % 检测窗口向右移动，若移动步数小于保护单元长度，此时检测单元左边仍旧没有有效值，从右边取值填入左侧参考窗
for j = 2 : detectionCFARInst.guardSizeRange + 1          
    indexLeftOut = j + detectionCFARInst.guardSizeRange - 1;
    indexLeftIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange;  
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale; 
    threshold_total = [threshold_total,threshold];  %jmm 添加
 %   判决
    if map_RD_z_1(j) > threshold
         tempDetected = tempDetected + 1;
         tempNoise(tempDetected) = totalPower;
         tempRangeIndex(tempDetected) = j;
    end
end
 %   检测窗口向右移动，若移动步数大于保护单元长度，此时检测单元左边出现有效值，填入左侧参考窗。直至左侧参考窗可以完全从左侧取值。
for j = detectionCFARInst.guardSizeRange +2 : detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange + 1
    indexLeftOut = j + detectionCFARInst.guardSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange;   
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale; 
    threshold_total = [threshold_total,threshold];  %jmm 添加
%   判决
    if map_RD_z_1(j) > threshold
        tempDetected = tempDetected + 1;
        tempNoise(tempDetected) = totalPower;
        tempRangeIndex(tempDetected) = j;
    end
end
    
%   检测窗口继续右移，当检测单元位于距离像的中间部分时，左侧参考窗和右侧参考窗均可以正常取值
for j = detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange + 2 : powerPtrSize - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange

    indexLeftOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange;  
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale;  
    threshold_total = [threshold_total,threshold];  %jmm 添加
%   判决
    if map_RD_z_1(j) > threshold
        tempDetected = tempDetected + 1;
        tempNoise(tempDetected) = totalPower;
        tempRangeIndex(tempDetected) = j;
    end
end
    
%   检测窗口继续右移，检测单元靠右，左侧参考窗正常取值，右侧参考窗缺少有效值，进行分类讨论
    %   当检测单元的右侧参考窗下标开始超出范围时，从检测单元左边取值填入，直至右边不再存在有效值
for j =  powerPtrSize - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange + 1 : powerPtrSize - detectionCFARInst.guardSizeRange
    indexLeftOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j - detectionCFARInst.guardSizeRange;  
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale;  %判决门限
    threshold_total = [threshold_total,threshold];  %jmm 添加
        
%   判决
    if map_RD_z_1(j) > threshold
        tempDetected = tempDetected + 1;
        tempNoise(tempDetected) = totalPower;
        tempRangeIndex(tempDetected) = j;
    end
end 
    %   检测窗口右移，若检测单元右边不再存在有效值，右侧参考窗全部从左边取值
for j =  powerPtrSize - detectionCFARInst.guardSizeRange + 1: powerPtrSize
        
    indexLeftOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange;
    indexRightIn = j - detectionCFARInst.guardSizeRange;
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale;  %判决门限 
    threshold_total = [threshold_total,threshold];  %jmm 添加
%   判决
     if map_RD_z_1(j) > threshold
         tempDetected = tempDetected + 1;
         tempNoise(tempDetected) = totalPower;
         tempRangeIndex(tempDetected) = j;
     end
end 
 for numdetected = 1 : tempDetected
     detected = detected + 1;
     noise(detected) = tempNoise(numdetected) * scale; 
     rangeInd(detected) = tempRangeIndex(numdetected);   
 end
 
for m = 1 : detected      
    snrEst(m) = map_RD_z_1(rangeInd(m))/noise(m);    %信噪比
end  

% type 来决定输入的map_RD_z_1是否是幅度表示还是直接幅度分贝表示  type=1：表示是分贝(dB)   type=2：表示是幅度
if type == 1
    threshold_total = 20*log10(abs(threshold_total)); 
else
    threshold_total = threshold_total;
end


end
    
    
        
        
        
        
    
    
    
    
    
    