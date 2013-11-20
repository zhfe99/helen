function ha = shImg(F, varargin)
% Show image.
%
% Input
%   F        -  image, h x w x nChan
%   varargin
%     show option
%     ran    -  range, {[]} | 1 x 2
%
% Output
%   ha
%     haImg  -  figure handle
%
% History
%   create   -  Feng Zhou (zhfe99@gmail.com), 02-13-2009
%   modify   -  Feng Zhou (zhfe99@gmail.com), 07-02-2013

% show option
psSh(varargin);

% function option
ran = ps(varargin, 'ran', []);

% normalize
if ~isempty(ran)
    F = ranNor(F, ran);
end

% plot image
ha.haImg = imshow(F);
ha.ran = ran;
