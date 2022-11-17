img1=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
imshow(img1)
//1
img_res=imresize(img1,2); 
imshow(img_res);
//2
gray_img=rgb2gray(img);
imshow(gray_img);

//convert to bnw
b=im2bw(a,0.5)
//displaying image
imshow(b)

//another way 
I = imread("s2.jpg");
r= size(I,1);
c= size(I,2);

R = zeros(r,c,3);
G = zeros(r,c,3);
B = zeros(r,c,3);

R(:,:,1) = I(:,:,1);
G(:,:,2) = I(:,:,2);
B(:,:,3) = I(:,:,3);

subplot(2,2,1), imshow(uint8(R));
subplot(2,2,2), imshow(uint8(G));
subplot(2,2,3), imshow(uint8(B));

imcat = cat(3,R(:,:,1),G(:,:,2),B(:,:,3));
subplot(2,2,4) , imshow(imcat);
