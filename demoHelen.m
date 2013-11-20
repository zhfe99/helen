% An interface demo for visualizing image and facial landmarks.
%
% History
%   create  -  Feng Zhou (zhfe99@gmail.com), 06-13-2012
%   modify  -  Feng Zhou (zhfe99@gmail.com), 10-21-2013

clear variables;

%% add path
addpath(genpath('./lib'));

%% data fold path
foldpath = sprintf('./data');

%% load label
matpath = sprintf('%s/helen.mat', foldpath);
mat = load(matpath);
Pts = mat.Pts;
imgs = mat.imgs;

%% #images
m = length(imgs);

%% per image
for i = 1 : m

    % load image
    imgpath = sprintf('%s/img/%s', foldpath, imgs{i});
    F = imread(imgpath);
    
    % landmarks
    Pt = Pts{i};

    % show image with landmark
    shFalLM(F, Pt, 'fig', 1);
    pause(.5);
end
