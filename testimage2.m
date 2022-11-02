clear all;close all;clc 

w=256;
h=256;
I1=zeros(h,w);
for i=1:256
    for j=1:256
        A(i,j)=j-1;
    end
end
figure,imshow(uint8(A))