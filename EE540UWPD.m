% Unequal Wikinson Power Divider

Z0 = 50;    %input and output impedance
N=4;        % P2/P3 the ratio of power seen out of the two outputs
K=sqrt(N);  % useful for calculation
f= 2.4E9      % freq used for skindepth calc

% the impedances of the strips
Z1 = Z0*sqrt(K*(1+N));
Z2 = Z0*sqrt((1+N)/(K*N));
Z3 = Z0*sqrt(K);
Z4 = Z0/sqrt(K);
Rint = Z0* (K+K^-1);    % this one is a physical resistor
% Z1 feeds Z3
% Z2 feeds Z4
% Rint connectes Z3 and Z4

epsr = 4;       % relative permitiity of substrate 
% FR-4

d = 1.57;       % millimeters 
% 1.57mm is standard PCB thickness

% Formulas below sourced from EE440 Book (Sadiku - Elements of
% Electromagnetics  p. 490)
% skin depth general formula
% mu = 4*pi*1E7
% skindepth = 1/sqrt(pi*f*mu*sigma);
% skin depth calc for copper (mu_r = mu = 4*pi*1E7), sigma = 2.8E7)
skindepth= 66.1/sqrt(f);

% Solving for widths in mm
W1 = WOverD(Z1,epsr)*d;
W2 = WOverD(Z2,epsr)*d;
W3 = WOverD(Z3,epsr)*d;
W4 = WOverD(Z4,epsr)*d;

%test = WOverD(187,2.2)*1.59; % from homework problem 5.13 N=2

% calculating the effecticve permitivity of each strip
epse1 = epse(epsr,1/WOverD(Z1,epsr));
epse2 = epse(epsr,1/WOverD(Z2,epsr));
epse3 = epse(epsr,1/WOverD(Z3,epsr));
epse4 = epse(epsr,1/WOverD(Z4,epsr));

%teste = epse(2.2,d/test/1.59);      % from homework

f = 2.4*10^9;   % operating frequency (Hz)
% 2.4GHz is the IOT range

%calculating the length of each strip in mm
L1 = QuarterWavelength(f,epse1)*10^3;
L2 = QuarterWavelength(f,epse2)*10^3;
L3 = QuarterWavelength(f,epse3)*10^3;
L4 = QuarterWavelength(f,epse4)*10^3;

%testl = QuarterWavelength(4*10^9,teste)*10^3; % from the homework

function out = epse(epsr,dOverW)
    out = (epsr+1)/2 + (epsr-1)/(2*sqrt(1+12*dOverW));
end

function l = QuarterWavelength(f,epse)
    c = 3*10^8;     % speed of light in free space
    l = 0.25* c/(f*sqrt(epse));
end

function out = WOverD(Z0,epsr)
    A= (Z0/60) * sqrt((epsr+1)/2) + (0.23+0.11/epsr) * (epsr-1)/(epsr+1);
    out = 8*exp(A)/(exp(2*A)-2);
    if out > 2
        B = 377*pi/(2*Z0*sqrt(epsr));
        out = (2/pi)*(B-1-log(2*B-1)+(epsr-1)*(log(B-1) + 0.39 -0.61/epsr)/(2*epsr));
    end
end


