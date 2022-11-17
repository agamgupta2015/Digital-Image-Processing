A = imread('C:\Users\agamg\Desktop\images (1).jpg');
B = rgb2gray(A);
[m,n] = size(B);
for row = 1 : m
    for col = 1 : n
        AA(row,col) = B(m-row+1,col);
       //AA(row,col) = B(row,n-col+1);
    end
end
imshow(AA);
figure();
imshow(B);





//another
im = imread("s3.jpg");
im1 = imread("s3.jpg");
[x,y,z] = size(im);

for plane =1:z
    len = x;
    for i = 1:x
        for j =1:y
            if i<x/2
                temp = im(i,j,plane);
                im(i,j,plane) = im(len,j,plane);
                im(len,j,plane)=temp;
            end
        end
        len = len-1;
    end 
end
subplot(2,1,1),imshow(im1);
subplot(2,1,2),imshow(im);



im = imread("s3.jpg");
im1 = imread("s3.jpg");
[x,y,z] = size(im);

for plane =1:z
    len = x;
    for i = 1:x
        for j =1:y
            if i<x/2
                temp = im(i,j,plane);
                im(i,j,plane) = im(len,j,plane);
                im(len,j,plane)=temp;
            end
        end
        len = len-1;
    end 
end
subplot(2,1,1),imshow(im1);
subplot(2,1,2),imshow(im);



im = imread('sign.jpg')
imshow(im)
f=flipdim(im,1)
imshow(f)

