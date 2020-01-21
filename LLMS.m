function [en, hn] = LLMS(dn, xn, stepsize, p)
%yn - filtered signal + interference (WGN)
%xn - Original Signal
n = length(xn);
hn = zeros(1,n);
en = zeros(1,n);
for i = 1:n
    if i - p + 1 > 0
        en(i) = dn(i) - ctranspose(hn(i))*xn(i);
        est = 0;
        for j = 0:p - 1
            est = est + xn(i-j)*conj(en(i-j));
        end
        est = est/p;
        hn(i+1) = est *stepsize + hn(i);
    else
        en(i) = 0;
    end
end
end
        
        