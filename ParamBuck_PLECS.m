%parameter system
vin = 36;
vo = 3.3;
R = 2;
fsw = 20e3;
perc_I = 20;
perc_V = 2;
Io=vo/R;
dI = (perc_I/100)*Io;
dV = (perc_V/100)*vo;

%duty cycle
D = vo/vin;
Ts = 1/fsw;

%inductance and capacitance
L = vo * (1 - D) / (dI * fsw);
C = vo * (1 - D) / (8 * dV * L * fsw^2);
