clear all,close, clc
%Cargamos datos
load("mediciones.mat")
%Vector de tiempo
t=transpose(medicion(:,2));
%t=linspace(0,2*pi,1000);
%Funcion a integrar
f=transpose(medicion(:,1));
%%f=sin(t);
%Tamaño de la funcion 
[a,b]=size(f);
%vector a guardar la Integral en ceros
w=zeros(a,b);
%w(1,1)=-1;
%
for i=2:b-1
    w(1,i)=w(1,i-1)+trapecio_intg([t(1,i),t(1,i+1)],[f(1,i),f(1,i+1)]);
end
%Plot Integral numerica
plot(t(1,1:b-1),w(1,1:b-1),'r')
hold on
%Plot funcion
plot(t,f,'b')
