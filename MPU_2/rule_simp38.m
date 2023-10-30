function F= rule_simp38(t,omega,n)
h=(t(1,2)-t(1,1))/n;
%F=(3h/8)*(fo+3f1+3f2+f3);
F=((3*h)/8)*(omega(1,1)+(3*omega(1,2))+(3*omega(1,3))+omega(1,4));
end