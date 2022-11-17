
im=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
subplot(1,3,1);
imshow(im);

filter1=fspecial('gaussian');
imf1=imfilter(im,filter1);
subplot(1,3,2);
imshow(imf1);

filter2=fspecial('gaussian',[4,4],1);
imf2=imfilter(im,filter2);
subplot(1,3,3);
imshow(imf2);
