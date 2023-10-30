function F= rule_boole(t,omega,n)
    h=(t(1,2)-t(1,1))/n;
    %F=(2h/45)*(fo+32f1+12f2+32f3+7f4);
    F=((2*h)/45)*(omega(1,1)+(32*omega(1,2))+(12*omega(1,3))+(32*omega(1,4))+(7*omega(1,5)));
end