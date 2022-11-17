A = imread('pic.jpg');
B = rgb2gray(A);
D = double(B)
[m,n] = size(B);
C = mean2(B);
theSum = 0.0;
for row = 1 : m
    for col = 1 : n
        theSum = theSum + D(row,col);
    end
end
theMean = theSum/(n*m);
disp(theMean)
disp(C)
