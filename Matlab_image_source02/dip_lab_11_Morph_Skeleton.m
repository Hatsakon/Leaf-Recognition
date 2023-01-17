clear all
close all
clc

I = imread('hands1.jpg');
I = rgb2gray(I);
figure(1), imshow(I);
title('Original Image');

BW = ~imbinarize(I);
figure(2), imshow(BW);
title('Original Image Converted to Binary Image');

BW2 = bwmorph(BW,'skel',Inf);
figure(3), imshow(BW2);
title('Skeleton Image');