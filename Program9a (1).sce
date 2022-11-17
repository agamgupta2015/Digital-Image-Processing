im = imread(fullpath(getIPCVpath() + "/images/baboon.png"));
im2 = rgb2gray(im)
S = im2;
h = mkfftfilter(S,'gauss',0.1);
S2 = fft2(im2double(S));
S3 = S2.*fftshift(1-h);
S4 = real(ifft(S3));


subplot(2,2,1);
xtitle('original image')
imshow(S);
subplot(2,2,2);
xtitle('image in frequency domain')
imshow(S2);
subplot(2,2,3);
xtitle('gaussian filter')
imshow(1-h);
subplot(2,2,4);
xtitle('image after inverse fourier transform')
imshow(S4);
