I=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
title("Original Image",'color' ,'blue','fontsize',6)

subplot(1,3,1);
imshow(I);

k = imnoise(I,'salt & pepper');

subplot(1,3,2);
imshow(k);
title('Noisy-Salt and Pepper');
img=immedian(k,5);
subplot(1,3,3);

title('Restored Image');
imshow(img)

