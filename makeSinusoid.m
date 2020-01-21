function sinusoid = makeSinusoid(freq, amp, phase, tt)
sinusoid = amp.*cos(2*pi*freq.*tt + phase);
end