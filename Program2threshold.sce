A=imread('pic.jpg');
figure();
imshow(A);
B=zeros(size(A,1),size(A,2));
th = 152;
for l=1:size(A,1)
    for m=1:size(A,2)
        if(A(l,m)>th)
            B(l,m)=1;
        else
            B(l,m)=0;
        end
    end
end
figure();
imshow(B);
