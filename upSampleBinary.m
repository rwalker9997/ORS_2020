function out = upSampleBinary(in, factor)
out = zeros(1,factor*length(in));
j = 1;
    for i = 1:factor:length(out)
        out(i:i+factor - 1) = in(j);
        j = j + 1;
    end
end