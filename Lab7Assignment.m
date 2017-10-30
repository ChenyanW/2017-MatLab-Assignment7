P = 50; % P <= 50 kN
Lad = 4;
Lbe = 5;
Lcg = 2;
%Area = 0.0004 % 4 cm^2
for i = 0:16
    d = i; % 0 <= d <= 16 m
    A = [1 1 1; 0 10 16; (6*Lad) (-16*Lbe) (10*Lcg)];
    b = [P; d*P; 0];
    x = A\b
    Fad = x(1,1);
    Fbe = x(2,1);
    Fcg = x(3,1);
end
%EL = elongation
%Let k be the constant so that:
%k = Fad*Lad/ELad = Fbe*Lbe/ELbe = Fcg*Lcg/Elcg
ELad*k/Lad = Fad
ELbe*k/Lbe = Fbe
ELcg*k/Lcg = Fcg
A2 =
b2 =
