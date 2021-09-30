function [xs] = jc_convolve_hanning(x, win)
% convolve_hanning  Smooth data by convolving a hanning function of length 'win'.
% 
%   convolve_hanning(x) uses a default window of 5.
%
%   To specify the window length, use:
%
%   convolve_hanning(x, win)
%

if ~exist('win', 'var')
    win = 5;
end

w = hann(win);

xs = conv2(x, w, 'same')/sum(w);