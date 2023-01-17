clear all
close all
clc

I = imread('coins.png'); % hands1.jpg / hands2.jpg
figure(1), imshow(I);
title('Original Image');
BW1 = edge(I,'sobel');
BW2 = edge(I,'canny');
figure(2), imshow(BW1);
title('Sobel Filter');
figure(3), imshow(BW2);
title('Canny Filter');

