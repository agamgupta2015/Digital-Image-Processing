
I=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
title("Original Image",'color' ,'blue','fontsize',6)

subplot(1,3,1);
imshow(I);

k = imnoise(I,'gaussian');

subplot(1,3,2);
imshow(k);
title('Gaussian');
filter=fspecial('gaussian');
imf=imfilter(I,filter);
subplot(1,3,3);

title('Restored Image');
imshow(imf)

