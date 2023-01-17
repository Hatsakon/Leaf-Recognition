clc
clear all
close all
I = imread('Lenna.png');
[m1 n1 p1] = size(I);
G = rgb2gray(I);
[m2 n2 p2] = size(G);
% figure(3),imhist(G);
X = zeros(m2,n2);
for i = 1:m2
    for j = 1:n2
        if G(i,j) >= 175 && G(i,j) <=220
            X(i,j) = 255;
        end
    end
end
T = mat2gray(X);
figure(1),imshow(T);
figure(2),imshow(G);



% figure(1),imshow(G);
% X = zeros(m2,n2);
% T = mat2gray(X);
% figure(2),imshow(T);
% X1 = ones(m2,n2);
% T1 = mat2gray(X1);
% figure(3),imshow(T1);
% vcnt = 0;
















