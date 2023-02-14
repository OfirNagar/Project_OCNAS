function [Phone_Number]=DecodeNumber(file_name)

%This is the Master function who gets the audio file and decode it to a string containig the phone number.

[Sampels,Fs]=audioread(file_name);
Time_int=20e-3;

[Frames]=Split_Signal_Into_Frames(Sampels,Time_int,Fs);

[Filtterd_Frq]=Analyze_Frames(Frames,Fs);

[Code] = Freq_Analyze(Filtterd_Frq);

Phone_Number = strcat('The phone number dialed is: ',DTMF_Dial(Code));
end

