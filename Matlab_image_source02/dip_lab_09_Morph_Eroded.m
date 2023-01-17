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

se = strel('square',15);
erodedBW2 = imerode(BW2,se);
figure(4), imshow(erodedBW2);
title('Eroded Image with Square 15x15');

se = strel('sphere',15);
erodedBW2 = imerode(BW2,se);
figure(5), imshow(erodedBW2);
title('Eroded Image with sphere R = 15');

