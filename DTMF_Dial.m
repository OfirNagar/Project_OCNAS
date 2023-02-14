function [ dial ] = DTMF_Dial( Code )

%This Function Generate the desired dialed number

dial = '';

for i = 1:length(Code)

    %1st Row of DTMF

    if Code(i,1)==11
       dial = strcat(dial,'1');
    elseif Code(i,1)==12
       dial = strcat(dial,'2');
    elseif Code(i,1)==13
       dial = strcat(dial,'3');
    elseif Code(i,1)==14
       dial = strcat(dial,'A');
    
    %2nd Row of DTMF

    elseif Code(i,1)==21
       dial = strcat(dial,'4');
    elseif Code(i,1)==22
       dial = strcat(dial,'5');
    elseif Code(i,1)==23
       dial = strcat(dial,'6');
    elseif Code(i,1)==24
       dial = strcat(dial,'B');

    %3th Row of DTMF

    elseif Code(i,1)==31
       dial = strcat(dial,'7');
    elseif Code(i,1)==32
       dial = strcat(dial,'8');
    elseif Code(i,1)==33
       dial = strcat(dial,'9');
    elseif Code(i,1)==34
       dial = strcat(dial,'C');

    %4th Row of DTMF

       elseif Code(i,1)==41
       dial = strcat(dial,'*');
    elseif Code(i,1)==42
       dial = strcat(dial,'0');
    elseif Code(i,1)==43
       dial = strcat(dial,'#');
    elseif Code(i,1)==44
       dial = strcat(dial,'D');
    end
end
end

