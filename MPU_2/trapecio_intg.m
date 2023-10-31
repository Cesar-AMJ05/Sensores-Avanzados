function F =trapecio_intg(t,omega)
h=(t(1,2)-t(1,1));
%F=(h/2)*(fo+f1);
F=(h/2)*(omega(1,1)+omega(1,2));
end