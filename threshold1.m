clear all;close all;clc
I1=double(imread('lena_gray.bmp'));
[h,w]=size(I1);
I2=zeros(h,w);
T=mean2(I1);

for i=1:h
    for j=1:w
        if(I1(i,j)>=T)
            I2(i,j)=255;
        else
            I2(i,j)=0;
        end
    end
end
figure,imshow(uint8(I1))
figure,imshow(uint8(I2))
         
            