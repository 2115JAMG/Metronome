clc
clear all
close all

Tramos = '�Cuantos pulsos desea ingresar? ';% INGRESO DEL USUARIO DE VECES QUE SE REPETIR� LA ONDA SENOIDAL
f = input(Tramos);% FRECUENCIA DE LA ONDA
Pause = '�C�al es la pausa que desea dar entre sonido y sonido? ';% INGRESO DEL USUARIO DE LA PAUSA QUE DAR� 
p = input(Pause);% PAUSA
S = 60/f; % CANTIDAD DE VECES QUE SONAR� LA BOCINA
Fs = 200e3; % FRECUENCIA DE MUESTREO [Hz]
t = 0:1/Fs:0.1; % VECTOR DE TIEMPO

for v = 0:S:59
pause (p) %TIEMPO DE ESPERA ENTRE PULSO Y PULSO
sq2 = sin(5*pi*500*t);
sound(sq2,Fs)
end 

