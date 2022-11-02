clear all

I=imread('lena_gray.bmp');
figure,imshow(uint8(I))
x1=55;
x2=155;
y1=15;
y2=100;
I2=I(x1:x2,y1:y2);
figure,imshow(uint8(I2))
imwrite(uint8(I2),'lena_crop.bmp')
