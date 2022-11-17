S=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
/*
a=imresize(a,[3 3]);

a(:,:,1)

b=zeros(1,1000);
[r,c,z]=size(a);
for i=1:1:r
    for j=1:1:c
       // for k=1:1:z
           b(i,j,:)=a(j,i,:);
        
    end
end

imshow(r);
*/


//a=imrotate(a,90);
//imshow(a);


//S = imread("RAINING.jpg");
y =input("enter degree") ;
subplot(1,3,1);
imshow(S);
title("Original Image");

mat = [ cosd(y) -sind(y)   0;
        sind(y) cosd(y)    0;
        0        0           1];
 
//input take 10
S2 = imtransform(S,mat,'affine');
subplot(1,3,2);
imshow(S2);
title('anticlockwise');

mat = [ cosd(-y) -sind(-y)   0;
        sind(-y) cosd(-y)    0;
        0        0           1];
 
S2 = imtransform(S,mat,'affine');
subplot(1,3,3);
imshow(S2);
title('clockwise')

