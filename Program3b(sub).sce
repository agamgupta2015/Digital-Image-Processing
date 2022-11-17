// Subtraction Program
im = imread('agam1.jpg');
im1 = imread('agam.jpg');
kk = imresize(im,[533,800]);
hh = imsubtract(kk,im1);
imshow(hh)
