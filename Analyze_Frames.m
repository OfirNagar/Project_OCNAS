function [ Freq_Mapping ] = Analyze_Frames( Frames,Fs )

%This function gets Frames and Fs and returns frequency maps of each of the frames.called by Decode number

H_Frq = [1209,1336,1477,1633];
L_Frq = [697,770,852,941];

DTMF_Table = [H_Frq,L_Frq];
BW = 2;

[F_Num,F_Len] = size(Frames);

Freq_Mapping=zeros(200,8);
    for i = 1:F_Num
        for j = 1:8
        Freq_Mapping(i,j) = Detect_Freq(Frames(i,:)',DTMF_Table(j),Fs,BW);%calling Freq_bin to filter the desired sound.
        end
    end        

end

