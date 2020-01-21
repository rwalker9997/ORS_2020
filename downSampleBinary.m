function out = downSampleBinary(in, factor)
out = zeros(1, length(in)/factor);
j = 1;
for i = 1:factor:length(in)
   avg = mean(in(i:i + factor - 1));
   if  avg < 0.5
       out(j) = 0;
   else
       out(j) = 1;
   end
   j = j + 1;
end
end