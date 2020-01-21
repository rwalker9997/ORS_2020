fc = 480;
fs = 1084;
bd = 3;
bps = 2;
in = prbs(10000);
subplot(3,2, 1);
plot(in,'.');
subplot(3,2,2)
[xn,symbols] = PAMMOD(in, fs, fc, bd, bps);
plot(xn, '.');
subplot(3,2,3);
mysteryFilt = [1,0.1,4];
dn= conv(xn, mysteryFilt);
plot(dn,'.');
subplot(3,2,4);
[en, hn] = LLMS(dn, xn,0.1, 3);
plot(hn,'.');
subplot(3,2,5);
plot(en,'.');
subplot(3,2,6);
%stem(yn);
yn = PAM_DEMOD(en, fc);
yn = lowpass(yn, 480, 1084);
plot(yn,'.');
    t1 = 0;
    t4 = 0.75*(max(abs(en)));
    t3 = 0.5*(max(abs(en)));
    t2 = 0.25*(max(abs(en)));
% for i = 1:length(yy)
%     if abs(yy(i)) > t1 && abs(yy(i)) >t2
%         yy(i) = 0;
%     elseif abs(yy(i)) > t2 && abs(yy(i)) <t3
%             yy(i) = 1;
%     elseif abs(yy(i)) > t3 && abs(yy(i)) <t4
%                 yy(i) = 2;
%     else
%                 yy(i) = 3;
%     end
% end
% stem(yy)
