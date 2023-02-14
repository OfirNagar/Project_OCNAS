function [A,B]=Compute_Fourier_Coefficient(signals,Omega)

% This function calculate fourier coefficient ,its gets a signals and omega and returns the coefficient A and B 

L = length(signals);
n = 0:L-1;
Sin_elemnt = sin(Omega*n);
Cos_elemet = cos(Omega*n);

A = Cos_elemet*signals/(2*L);
B = Sin_elemnt*signals/(2*L);
end

