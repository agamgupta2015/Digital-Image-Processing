im = imread("pic.jpg");
im1=imread("pic2.jpg");
kk=imresize(im,[120,188]);
result =kk&im1;  //and
result1=kk|im1;   //or
result2 =intersect(kk,im1);  //intersect

subplot(2,3,1)
imshow(kk);
subplot(2,3,2)
imshow(im1);
subplot(2,3,3)
imshow(result);
subplot(2,3,4)
imshow(result1);
subplot(2,3,5)
imshow(result2);
subplot(2,3,6)
imshow(~im);
