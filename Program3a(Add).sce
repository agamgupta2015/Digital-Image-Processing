// Addition Program
im = imread('pic.jpg');
im1 = imread('pic2.jpg');
kk = imresize(im,[120,188]);
hh = imadd(kk,im1);
imshow(hh); 

