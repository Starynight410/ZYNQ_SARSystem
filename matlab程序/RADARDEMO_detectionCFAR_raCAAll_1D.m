%220312��һάCFAR
function  [rangeInd, snrEst, noise, detected, threshold_total] = RADARDEMO_detectionCFAR_raCAAll_1D(map_RD_z_1, detectionCFARInst,type)
% ���������ʼ��
% ע�⣺map_RD_z_1 �����ΪdB�źţ���������Ĵ�����Ҫ���ɷ������Ƚ�


% type �����������map_RD_z_1�Ƿ��Ƿ��ȱ�ʾ����ֱ�ӷ��ȷֱ���ʾ  type=1����ʾ�Ƿֱ�(dB)   type=2����ʾ�Ƿ���
if type == 1
    map_RD_z_1 = 20*log10(abs(map_RD_z_1)); 
    zzz = 10.^(map_RD_z_1 ./20);
    map_RD_z_1 = zzz;
else
    map_RD_z_1 = map_RD_z_1;
end

%% ��ʼCFAR���
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

relativeThr	= detectionCFARInst.relThr;  %���������ϵ��
scale =	1/(detectionCFARInst.searchWinSizeRange); % �����򵥱߲ο���Ԫ�����ĵ���


for k = 1:detectionCFARInst.searchWinSizeRange
    indexLeft = detectionCFARInst.guardSizeRange + k;  %�����ڼ�ⵥԪ���û����Чֵ����ȡ��ⵥԪ�ұ���Чֵ�������ο���
    indexRight = 1 + detectionCFARInst.guardSizeRange + k;   %����ⵥԪ�Ҳ�ο�������ȡֵ
    leftWinPower = leftWinPower + map_RD_z_1(indexLeft);
    rightWinPower = rightWinPower + map_RD_z_1(indexRight);  % �ֱ�����������߲ο���Ԫ�źź�
end
totalPower = min(leftWinPower, rightWinPower);  % ����SO�㷨��ȡ�������߲ο���Ԫ�źź��еĽ�Сֵ��Ϊ��������
threshold = totalPower * relativeThr * scale;   % ��������ֵ
threshold_total = [threshold_total,threshold];  %jmm ���

 % �о�
if map_RD_z_1(1) > threshold
    tempDetected = tempDetected + 1;
    tempNoise(tempDetected) = totalPower;
    tempRangeIndex(tempDetected) = 1;
end

 % ��ⴰ�������ƶ������ƶ�����С�ڱ�����Ԫ���ȣ���ʱ��ⵥԪ����Ծ�û����Чֵ�����ұ�ȡֵ�������ο���
for j = 2 : detectionCFARInst.guardSizeRange + 1          
    indexLeftOut = j + detectionCFARInst.guardSizeRange - 1;
    indexLeftIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange;  
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale; 
    threshold_total = [threshold_total,threshold];  %jmm ���
 %   �о�
    if map_RD_z_1(j) > threshold
         tempDetected = tempDetected + 1;
         tempNoise(tempDetected) = totalPower;
         tempRangeIndex(tempDetected) = j;
    end
end
 %   ��ⴰ�������ƶ������ƶ��������ڱ�����Ԫ���ȣ���ʱ��ⵥԪ��߳�����Чֵ���������ο�����ֱ�����ο���������ȫ�����ȡֵ��
for j = detectionCFARInst.guardSizeRange +2 : detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange + 1
    indexLeftOut = j + detectionCFARInst.guardSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange;   
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale; 
    threshold_total = [threshold_total,threshold];  %jmm ���
%   �о�
    if map_RD_z_1(j) > threshold
        tempDetected = tempDetected + 1;
        tempNoise(tempDetected) = totalPower;
        tempRangeIndex(tempDetected) = j;
    end
end
    
%   ��ⴰ�ڼ������ƣ�����ⵥԪλ�ھ�������м䲿��ʱ�����ο������Ҳ�ο�������������ȡֵ
for j = detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange + 2 : powerPtrSize - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange

    indexLeftOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j + detectionCFARInst.guardSizeRange + detectionCFARInst.searchWinSizeRange;  
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale;  
    threshold_total = [threshold_total,threshold];  %jmm ���
%   �о�
    if map_RD_z_1(j) > threshold
        tempDetected = tempDetected + 1;
        tempNoise(tempDetected) = totalPower;
        tempRangeIndex(tempDetected) = j;
    end
end
    
%   ��ⴰ�ڼ������ƣ���ⵥԪ���ң����ο�������ȡֵ���Ҳ�ο���ȱ����Чֵ�����з�������
    %   ����ⵥԪ���Ҳ�ο����±꿪ʼ������Χʱ���Ӽ�ⵥԪ���ȡֵ���룬ֱ���ұ߲��ٴ�����Чֵ
for j =  powerPtrSize - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange + 1 : powerPtrSize - detectionCFARInst.guardSizeRange
    indexLeftOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j + detectionCFARInst.guardSizeRange;
    indexRightIn = j - detectionCFARInst.guardSizeRange;  
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale;  %�о�����
    threshold_total = [threshold_total,threshold];  %jmm ���
        
%   �о�
    if map_RD_z_1(j) > threshold
        tempDetected = tempDetected + 1;
        tempNoise(tempDetected) = totalPower;
        tempRangeIndex(tempDetected) = j;
    end
end 
    %   ��ⴰ�����ƣ�����ⵥԪ�ұ߲��ٴ�����Чֵ���Ҳ�ο���ȫ�������ȡֵ
for j =  powerPtrSize - detectionCFARInst.guardSizeRange + 1: powerPtrSize
        
    indexLeftOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange - 1;
    indexLeftIn = j - detectionCFARInst.guardSizeRange - 1;
    indexRightOut = j - detectionCFARInst.guardSizeRange - detectionCFARInst.searchWinSizeRange;
    indexRightIn = j - detectionCFARInst.guardSizeRange;
    leftWinPower = leftWinPower - map_RD_z_1(indexLeftOut) + map_RD_z_1(indexLeftIn);
    rightWinPower = rightWinPower - map_RD_z_1(indexRightOut) + map_RD_z_1(indexRightIn);
    totalPower = min(leftWinPower, rightWinPower);
    threshold = totalPower * relativeThr * scale;  %�о����� 
    threshold_total = [threshold_total,threshold];  %jmm ���
%   �о�
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
    snrEst(m) = map_RD_z_1(rangeInd(m))/noise(m);    %�����
end  

% type �����������map_RD_z_1�Ƿ��Ƿ��ȱ�ʾ����ֱ�ӷ��ȷֱ���ʾ  type=1����ʾ�Ƿֱ�(dB)   type=2����ʾ�Ƿ���
if type == 1
    threshold_total = 20*log10(abs(threshold_total)); 
else
    threshold_total = threshold_total;
end


end
    
    
        
        
        
        
    
    
    
    
    
    