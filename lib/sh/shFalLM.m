function shFalLM(F, Pt, varargin)
% Show facacial landmark on the image.
%
% Input
%   F        -  image
%   Pt       -  landmark points, 2 x 29
%   varargin
%     show option
%     parMk  -  marker parameter, {[]}
%
% History
%   create   -  Feng Zhou (zhfe99@gmail.com), 05-31-2012
%   modify   -  Feng Zhou (zhfe99@gmail.com), 08-30-2012

% show option
psSh(varargin);
parMk = ps(varargin, 'parMk', []);
vis = ps(varargin, 'vis', []);
mkEgCl = ps(varargin, 'mkEgCl', 'k');

% default marker parameter
if isempty(parMk)
    parMk = st('mkSiz', 7, 'cl', 'w', 'mk', 'o', 'lnWid', 0, ...
               'mkEgWid', 1, 'mkEgCl', mkEgCl);
end

% dimension
k = size(Pt, 2);

% default vis
if isempty(vis)
    vis = zeros(1, k);
end

% show image
if ~isempty(F)
    shImg(F);
end

% show points
if ~isempty(Pt)
    hold on;
    plotmk(Pt, 1, parMk);

    % show visbility
    for c = 1 : k
        if vis(c)
            plot(Pt(1, c), Pt(2, c), 'ro', 'markerfacecolor', 'r', 'markersize', 10, 'linewidth', 1, 'markeredgecolor', mkEgCl);
        end
    end
end

if isempty(F)
    axis ij;
    axis equal;
end
