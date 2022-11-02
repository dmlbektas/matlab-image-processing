clc;clear all;close all;
I=double(imread('lena_gray.bmp'));
figure,imshow(uint8(I))
[h,w]=size(I);
I2=zeros(h,w);

k=[1 0 -1;2 0 -2;1 0 -1];
[kh,kw]=size(k); %kernel size
m=zeros(kh,kw);
 for i=1:kh
     for j=1:kw
         m(kh+1-i,kw+1-j)=k(i,j);
     end
 end
 disp(m)
 fkh=floor(kh/2);
 fkw=floor(kw/2);
 for i=fkh+1:h-fkh
     for j =fkw+1:w-fkh
         block=I(i-fkh:i+fkh,j-fkw:j+fkw);
         I2(i,j)=sum(sum(block.*m));
     end
 end
 figure,imshow(uint8(I2)),title('conv')

