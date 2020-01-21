function out = symbolToBinary(in, bps, bitDepth)
    out = zeros(1,floor(length(in)*bps));
    j = 1;
    for i = 1:length(in)
            out(j:j+bps -1) = dec2bin(in(i));
            j = j + 1;
    end
    out = upSampleBinary(out, bitDepth);
end