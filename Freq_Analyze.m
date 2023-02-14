function [Code] = Freq_Analyze(Filtterd_Frq)

%This function gets the freq map and extract the desured code of DTMF which says what digit were pressed in spcyfic row and column

[Frames,~] = size(Filtterd_Frq);

Rows_Detection = zeros(Frames,4);
Cols_Detection = zeros(Frames,4);

for i = 1:Frames
[m,j] = max(Filtterd_Frq(i,1:4));
    if(m ~= 0)
    Cols_Detection(i,j) = 1;
    else
    Cols_Detection(i,:) = 2;
    end
[m,j] = max(Filtterd_Frq(i,5:8));
    if(m ~= 0)
    Rows_Detection(i,j) = 1;
    else
    Rows_Detection(i,:) = 2;
    end
end

Code = zeros(Frames,1);
n = 1;
for i = 1:Frames
    if(Rows_Detection(i,1)==2||Cols_Detection(i,1)==2)
        n=n+1;
    else
        [Code(n)]=DTMF_Code(Rows_Detection(i,:),Cols_Detection(i,:));
    end
end

end