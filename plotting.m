clear all;clc
x=[1:10];
y=x.^2;
plot(x,y)
clear all
x=0:360;%degrees
y=sin(x*pi/180);
plot(x,y);
xlabel('Angle 0<x<360');
ylabel('sin(x)');
title('line plot of sine between 0 and 360 degrees')
clear all

