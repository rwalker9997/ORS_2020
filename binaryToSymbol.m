function out = binaryToSymbol(in, bps, bitDepth)
    out = zeros(1,floor(length(in)/bps));
    j = 1;
    len = length(in) - mod(length(in), bps);
    for i = 1:bps:len
            temp = num2str(in(i:i + bps - 1));
            temp(isspace(temp)) = '';
            out(j) = bin2dec(temp);
            j = j + 1;
    end
    out = upSampleBinary(out, bitDepth);
end