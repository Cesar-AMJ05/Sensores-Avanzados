function F= rule_simp13(t,omega,n)
h=(t(1,2)-t(1,1))/n;
%F=(h/3)*(fo+4f1+f2);
F=(h/3)*(omega(1,1)+(4*omega(1,2))+omega(1,3));
end