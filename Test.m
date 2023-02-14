
%This is the test function who upload the audio file and display the phone number dialed.
%filename:"phonecall.wav"
%Phone_Number:The MSG who contains the phone number.
%Upload the audio file - Returns phone number in a string.

[Phone_Number] = DecodeNumber("phonecall.wav");
disp(Phone_Number)

