a=imread("C:\Users\student\Desktop\Image\image.jpg")
subplot(2,2,1)
imshow(a)
title("ORIGINal IMAGE" ,'color','blue' ,'fontsize',3)

s=imcreatese("rect",7,7)
dilate=imdilate(a,s);

subplot(2,2,2)
imshow(dilate)
title("Dilated IMAGE" ,'color','blue' ,'fontsize',3)
erode=imerode(a,s)

subplot(2,2,3)
imshow(erode)
title("Eroded IMAGE" ,'color','blue' ,'fontsize',3)
