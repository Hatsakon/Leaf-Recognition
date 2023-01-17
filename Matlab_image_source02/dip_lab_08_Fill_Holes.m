clear all
close all
clc

I = imread('coins.png'); % hands1.jpg / hands2.jpg
figure(1), imshow(I);
title('Original Image');

BW = imbinarize(I);
figure(2), imshow(BW);
title('Original Image Converted to Binary Image');

BW2 = imfill(BW,'holes');
figure(3), imshow(BW2);
title('Filled Image');