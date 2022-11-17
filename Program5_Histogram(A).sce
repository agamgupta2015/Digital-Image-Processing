
//b. Program without using standard MATLAB functions 
img1=imread("C:\Users\Om Goel\Desktop\scilab\pic.jpg");
img1=rgb2gray(img1);
img1=uint16(img1);
[x,y]=size(img1);
freqn=zeros(1,256);
for i=1:x
    for j=1:y
        freqn(img1(i,j)+1)=freqn(img1(i,j)+1)+1;
    end
end

subplot(1,2,1);
//bar(0:255,freqn,'black');
plot2d3(0:255,freqn);

pr=freqn/(x*y);
csum=255*(cumsum(pr));
s=round(csum);
s=uint16(s);
s=s+1;
freqn_new=zeros(1,256);
for i=1:256
    freqn_new(s(i))=freqn_new(s(i))+freqn(i);
end
subplot(1,2,2);
plot2d3(0:255,freqn_new);


