
im=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
subplot(1,4,1);
imshow(im);

filter1=fspecial('prewitt');
imf1=imfilter(im,filter1);
subplot(1,4,2);
imshow(imf1);

filter2=fspecial('sobel');
imf2=imfilter(im,filter2);
subplot(1,4,3);
imshow(imf2);

filter3=fspecial('laplacian',0.5);
imf3=imfilter(im,filter3);
subplot(1,4,4);
imshow(imf3);
