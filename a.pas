program Euler;
{1 - število Na, 2 - število Cl, 3 - število K, 4 - število neprehajajočih, 5 - prostornina mehurcka, 6 - polmer napetostne, 7 - saharoza}
uses crt;
const NN = 7; tol = 1E-6; hmax = 3E-1;
Lp=0.9e-13{/5};{4e-13}
sigmac = 11.9e-3{/10}; {7.8e-3 9.5e-3 11.9e-3 lysis tension}
kA = 0.354; {0.213 0.241 0.354 razteznostni modul membrane}
c0 = 1.89e26; {1.2e+26;}{koncentracija delcev, ki prispevajo k osmozi v začetku}
kT=1.38e-23*308; e0=1.6e-19;
gamma = 17e-12{5e-12}; {26e-12 29e-12 34.1e-12 linijska napetost pore}
DNa = 1.334e-9; {difuzijska konstanta Na}
DCl = 2.032e-9; {difuzijska konstanta Cl}
DK = 1.957e-9; {difuzijska konstanta K}
Ds = 5.2e-10; {difuzijska konstanta saharoze}
kc = 86.8*kT; {38.5 54.6 86.8}
kT8pikc=0{kT/(8*pi*kc)}; {za enkrat}
eta=0.9e-3;
seta=2*pi*eta;
d=5e-9;
meta=5*d{2×3.5e-7};

type  vec  = array[1..NN] of extended;

var a : real; {čas poka}
 re2 :text;


begin {glavni}
 assign(re2,'a.dat'); rewrite(re2); {reset(re2);}
 write('Voisi a');
 readln(a);
 writeln(a);
 close(re2)
end.

