function out = PAM_DEMOD(in, fc)
csine = exp(-2*pi*1i*fc);
out = conv(csine, in);
end