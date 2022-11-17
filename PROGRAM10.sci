A=imread("C:\Users\student\Desktop\Image\image.jpg")
s = rgb2gray(A)
title("GRAY SCALE IMAGE" ,'color','blue' ,'fontsize',3)
subplot(2,3,1)

imshow(s);


f1=fspecial("sobel");
b1 =imfilter(A,f1);

subplot(2,3,2)
title("SOBEL IMAGE" ,'color','blue' ,'fontsize',3)
imshow(b1);


f2=fspecial("prewitt");
b2=imfilter(A,f2);

subplot(2,3,3)
title("PREWITT IMAGE" ,'color','blue' ,'fontsize',3)
imshow(b2);

f3=fspecial("laplacian");
b3 =imfilter(A,f3);

subplot(2,3,4)
title("LAPLACIAN IMAGE" ,'color','blue' ,'fontsize',3)
imshow(b3);


f4=fspecial("log");
b4 =imfilter(A,f4);

subplot(2,3,5)
title("LOG IMAGE " ,'color','blue' ,'fontsize',3)
imshow(b4);


f5=fspecial("log");
b5 =imfilter(s,f5);

subplot(2,3,6)
title("LOG 2 IMAGE" ,'color','blue' ,'fontsize',3)
imshow(b5);

