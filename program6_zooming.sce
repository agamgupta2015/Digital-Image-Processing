//img=imread("C:\Users\Om Goel\Downloads\pic.jpg");  //compress image

img=imread("C:\Users\Om Goel\Downloads\pic (1).jpg");

im= rgb2gray(img);



Size=size(img);
arr1=[];
arr2=[];
z=input('Enter the zooming factor:  ');
for x=1:Size(1,1)
   for j=1:z
     arr1=[arr1;img(x,:)];
   end
end
for y=1:Size(1,2)
  for j=1:z
    arr2=[arr2,arr1(:,y)];
  end
end
figure()
imshow(im);
figure()
imshow(arr2);

