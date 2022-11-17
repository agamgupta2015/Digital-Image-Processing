x=input("Enter shrinking factor:");
img=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
[r,c]=size(img);
r1=r/x;
c1=c/x;

r1=int(r1);
c1=int(c1);
k=1;
l=1;
for i=1:r1
    for j=1:c1    
        img2(i,j,1)=img(k,l,1);
        img2(i,j,2)=img(k,l,2);
        img2(i,j,3)=img(k,l,3);
        l=l+x
    end
    l=1
    k=k+x
end

subplot(1,2,1);
imshow(img);
title("Original Image");

subplot(1,2,2);
imshow(img2);
title("Shrinked");

