clc ;
clear ;
close all ;

para.nLv = 6;          % number of decompositions
para.denoise = 1;      % weight smoothing in each subbands for denoising
para.wpropagation = 1; % weight propagation among subbands from parent to children

% Guide for using:
% J = imfuse( para,  fname,  fname,  ...,  fname ) OR
% J = imfuse( para,  Image,  Image,  ...,  Image )

% input arguments :
% para = parameters 
% image = gray scale images (R^MxN) and rgb color images (R^MxNx3)
% fname = file names of input images
% output arguments : J  a fused image

J = imfuse( para, 'H1.jpg' , 'H2.jpg');

%   *** Other executed test images ***
%J = imfuse( para, 'B1.jpg' , 'B2.jpg');
%J = imfuse( para, 'L1.jpg' , 'L2.jpg');
%J = imfuse( para, 'k1.jpg' , 'k2.jpg' , 'k3.jpg' ,'k4.jpg' , 'k5.jpg' , 'k6.jpg' , 'k7.jpg');

figure , imshow(J); title(' Result : Fused Image ');





