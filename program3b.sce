// Subtract Program from loop
im = imread('agam1.jpg');
im1 = imread('agam.jpg');
kk = imresize(im,[533,800]);
yy = double(kk);
uu = double(im1);
hh = imsubtract(kk,im1);
[a,b,c] = size(kk);
for i=1:a
    for j=1:b
        for k=1:c
            g(i,j,k) = yy(i,j,k)-uu(i,j,k)
            if(g(i,j,k)<0)
                g(i,j,k)=0
               end
        end
    end    
end
imshow(uint8(g));
figure();
imshow(hh);
