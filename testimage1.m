clear all;close all;clc

w=256;
h=256;
I1=zeros(h,w);
x=144;
y=144;
r=100;

for i=1:256
    for j=1:256
        if((x-i)^2+(y-j)^2 <= r^2)
            I(i,j)=255;
        else
            I(i,j)=0;
        end
    end
end
figure,imshow(uint8(I))
w=256;
h=256;
I1=zeros(h,w);
for i=1:256
    for j=1:256
        A(i,j)=j-1;
    end
end
figure,imshow(uint8(A))

I2=A .*I/255;
figure,imshow(uint8(I2))
    