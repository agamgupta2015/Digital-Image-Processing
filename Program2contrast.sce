//contrast
A=imread('pic.jpg');
B=imadjust(A,[0.5 1],[0,0.5]);
imshow(B);
