function [out, symbols] = PAMMOD(in, fs, fc, bitDepth, bitsPerSym)
symbols = binaryToSymbol(in, bitsPerSym, bitDepth);
time = 0:1/(bitDepth * fs): (length(symbols) - 1)/(fs * bitDepth);
xx = cos(2*pi*fc.*time);
out = xx.*symbols;
end