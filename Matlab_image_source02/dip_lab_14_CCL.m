clear all
close all
clc

% Example 1
BW = imread('text.png');
s = regionprops(BW,'PixelList'); % Connected Component Labeling
centroids = s.PixelList;
figure(1), imshow(BW);
% hold on
% plot(centroids(:,1),centroids(:,2), 'b*')
% hold off

% % Example 2
% a = imread('circlesBrightDark.png');
% bw = a < 100;
% figure(2), imshow(bw);
% title('Image with Circles')
% stats = regionprops('table',bw,'Centroid','MajorAxisLength','MinorAxisLength')
% centers = stats.Centroid;
% diameters = mean([stats.MajorAxisLength stats.MinorAxisLength],2);
% radii = diameters/2;
% hold on
% viscircles(centers,radii);
% hold off

