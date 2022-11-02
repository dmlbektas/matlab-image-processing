Q=imread('lena_gray.bmp');
figure,imshow(uint8(Q));

I=imread('lena_gray.bmp');
figure,imshow(uint8(I));
[h,w]=size(I);
A=zeros(w,h);
for i=1:h
    j=1:w
    A(j,i)=I(i,j);
end

figure,imshow(uint8(A));



w=512;
h=512;
B=reshape(I,w,h);
figure,imshow(uint8(B))
B(50:150,50:150)=0;
figure,imshow(uint8(B))

A=zeros(w,h)
A=B-100
figure,imshow(uint8(A))

clear all
I=imread('lena_gray.bmp');
I2=imrotate(I,45,'nearest');
I3=imrotate(I,45,'bilinear');
I4=imrotate(I,45,'bicubic');

figure,imshow(uint8(I2));
figure,imshow(uint8(I3));
figure,imshow(uint8(I4))









