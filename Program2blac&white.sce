//blackwhite

A = imread('pic.jpg')
B = im2bw(A,0.5);
D = double(A)
[m,n,c] = size(A);
//figure();
//imshow(B);
for i = 1 : m
    for j = 1 : n
        //for k = 1 : c
            S(i,j) = 0.299*D(i,j,1) + 0.587*D(i,j,2) + 0.114*D(i,j,3)
        //end
    end
end
imshow(B)
figure();
imshow(uint8(S));


//Streching

im=imread("FLOWER.png");
imshow(im)
stretch=imadjust(im,[0 0.5],[0.5 1]);
figure();
imshow(stretch);

