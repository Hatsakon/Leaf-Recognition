clc
clear all  
close all
I = imread('Lenna.png');
[m1 n1 p1] = size(I);
IG = rgb2gray(I);
[m n p] = size(IG);
X = zeros(m+2,n+2);
for i = 1:m
    for j = 1:n
        X(i+1,j+1)=IG(i,j);
        if(i==1)&&(j==1)
            X(i,j) = IG(i,j);
            %X(i,j) = 255;
        else if(i==1)&&(j==512) 
                X(i,j+2) = IG(i,j);
                %X(i,j+2) = 255;
            else if(i==512)&&(j==1)
                    X(i+2,j) = IG(i,j);
                    %X(i+2,j) = 255;
                else if(i==512)&&(j==512)
                        X(i+2,j+2) = IG(i,j);
                        %X(i+2,j+2) = 255;
                    end
                end
            end
        end
    end
end
X(1,2:513) = IG(1,:);
X(514,2:513) = IG(512,:);
X(2:513,1) = IG(:,1);
X(2:513,514) = IG(:,512);
figure(1),imshow(mat2gray(X));
A = zeros(m,n);
for i = 1:m
    for j = 1:n
        A(i,j) = round(mean(mean(X(i:i+2,j:j+2))));
    end
end
figure(2),imshow(mat2gray(A));







