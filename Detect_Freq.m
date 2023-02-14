function [det]=Detect_Freq(frames,f,Fs,BW)

%This Function purpose is to identify all the freq who exist in the area

Delta = -BW/2:BW/2;
Delta = round(Delta);
Omega=2*(pi)*(f+Delta)/Fs;

    det=0;
    for i=1:length(Omega)
    [A,B]=Compute_Fourier_Coefficient(frames,Omega(i));%Help function to find the coefficient
    det = det + abs(A) + abs(B);
    end

    if(det<50e-3)%get read off all the nois while passing all the desired frq for mapping the signal
    det = 0;
    end

end

