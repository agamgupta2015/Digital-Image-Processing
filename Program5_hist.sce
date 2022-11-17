//5. To write a program for histogram calculation and equalization using 
//a. Standard MATLAB function 

x= imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
y= rgb2gray(x);
figure;
subplot(2,2,1);
imshow(y);
H= imhist(y);
subplot(2,2,2);
plot2d3(0:255,H);
hist= imhistequal(y);
hist1= imhist(hist);
subplot(2,2,3);
imshow(hist);
subplot(2,2,4);
plot2d3(0:255,hist1)
