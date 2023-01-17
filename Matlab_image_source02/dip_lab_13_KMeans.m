clear all
close all
clc
he = imread('Lenna.png');
figure(1), imshow(he), title('H&E image');
cform = makecform('srgb2lab');
lab_he = applycform(he,cform);

ab = double(lab_he(:,:,2:3));
nrows = size(ab,1);
ncols = size(ab,2);
ab = reshape(ab,nrows*ncols,2);

nColors = 3;
% repeat the clustering 3 times to avoid local minima
[cluster_idx, cluster_center] = kmeans(ab,nColors,'distance','sqEuclidean','Replicates',3);
pixel_labels = reshape(cluster_idx,nrows,ncols);
figure(2), imshow(pixel_labels,[]), title('image labeled by cluster index');
segmented_images = cell(1,3);
rgb_label = repmat(pixel_labels,[1 1 3]);

for k = 1:nColors
    color = he;
    color(rgb_label ~= k) = 0;
    segmented_images{k} = color;
end

figure(3), imshow(segmented_images{1}), title('objects in cluster 1');
figure(4),imshow(segmented_images{2}), title('objects in cluster 2');
figure(5),imshow(segmented_images{3}), title('objects in cluster 3');
