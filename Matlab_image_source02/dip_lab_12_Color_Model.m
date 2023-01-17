clear all
close all
clc

RGB = imread('hands2.jpg');
figure(1), imshow(RGB);
title('Original Image');

HSV=rgb2hsv(RGB);
H=HSV(:,:,1);
S=HSV(:,:,2);
V=HSV(:,:,3);

figure(2), subplot(2,2,1), imshow(H); title('H Value');
figure(2), subplot(2,2,2), imshow(S); title('S Value');
figure(2), subplot(2,2,3), imshow(V); title('V Value');
figure(2), subplot(2,2,4), imshow(RGB); title('RGB Image');

