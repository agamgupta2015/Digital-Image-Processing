// Addition Program from loop
im = imread('pic.jpg');
im1 = imread('pic2.jpg');
kk = imresize(im,[120,188]);
yy = double(kk);
uu = double(im1);
hh = imadd(kk,im1);
[a,b,c] = size(kk);
for i=1:a
    for j=1:b
        for k=1:c
            g(i,j,k) = yy(i,j,k)+uu(i,j,k)
            if(g(i,j,k)>255)
                g(i,j,k)=255
               end
        end
    end    
end
imshow(uint8(g));
figure();
imshow(hh);
