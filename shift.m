clc;clear;close all;

I1=double(imread('lena_gray.bmp'));
figure,imshow(uint8(I1)),title('org')
[h,w]=size(I1);

I2=zeros(2*h,2*w); 
I3=zeros(2*h,2*w);%çözünürlük arttırma%

for i=1:h-1
    for j=1:w-1
        I2(i*2,j*2)=I1(i,j);
        I2(i*2-1,j*2)=I1(i,j);
        I2(i*2,j*2-1)=I1(i,j);
        I2(i*2-1,j*2-1)=I1(i,j);
        
        
        I3(i*2,j*2)=(I1(i,j)+I1(i+1,j)+I1(i,j+1)+I1(i+1,j+1))/4;  %%sagalt
        I3(i*2-1,j*2)=(I1(i,j)+I1(i,j+1))/2; %%sagust
        I3(i*2-1,j*2-1)=(I1(i,j)); %%solust
        I3(i*2,j*2-1)=(I1(i,j)+I1(i+1,j))/2;
        
        
   
    end
end
figure,imshow(uint8(I2)),title('zoom1')
figure,imshow(uint8(I3)),title('zoom2')
