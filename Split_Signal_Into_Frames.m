function [Frames] = Split_Signal_Into_Frames(Sampels,Time_int,Fs)

%This function splits the 'input signal' into frames with the same gaps  

Wide=length(Sampels);
Total_time=Wide/Fs;
N=Total_time/Time_int;
signals=Sampels(1:Wide);
Frames=zeros(Wide/N,N);

    for i=1:Wide/N 
    Frames(i,:)=signals(1+(i-1)*N:i*N,1);
    end
end

