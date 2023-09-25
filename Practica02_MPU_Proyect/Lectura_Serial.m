clc,clear all, close all;
%%Inicia pidiendo el Puerto COM
disp('Puertos Seriales Disponibles');
kumi=serialportlist;
disp(kumi)
    try
    dumi=input('Selecciona el puerto serial ejem(1):');
    SerialObjet=kumi(dumi);
    PortCom=serialport(SerialObjet,19200);
    configureTerminator(PortCom,"CR/LF");
    catch
        disp('Error en la conexion');
    end

%Inicia PLOT y Contador
i=1;
[X,Y] = meshgrid(-5:.5:5);
Z = Y.*sin(X) - X.*cos(Y);
buffer="";
while 1
 % Calculamos el angulo del eje
 
 newdata=str2num(readline(PortCom));
 angxz=round((atan2(newdata(1,1)-760,newdata(1,3)-490))*(180/pi));
 angxy=(atan2(newdata(1,1)-760,newdata(1,2)-252))*(180/pi);
 angyz=round((atan2(newdata(1,2)-252,newdata(1,3)-490))*(180/pi));
 if(angxz)<0
     angxz=angxz+360;
 end
 if(angxy)<0
     angxy=angxy+360;
 end
 if(angyz)<0
     angyz=angyz+360;
 end
s2 = surface(X,Y,Z);
xlim([-10, 10]); % Límites para el eje x
ylim([-10, 10]); % Límites para el eje y
zlim([-10, 10]); % Límites para el eje z

xlabel('Eje X'), ylabel('Eje Y') ,zlabel('Eje Z');

rotate(s2,[1 0 0],angyz);      %Angulo YZ

rotate(s2,[0 1 0],angxz);       %Angulo XZ
% direction=[1 0 0];
% rotate(s2,direction,data(i,2));
view(3)
pause(0.09)
cla;
end
