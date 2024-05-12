K = 5;
T = 2;
T1 = 3;
T2 = 1.3;
ksi = 0.2;
modelling_time = 4;

W1 = tf(K);
W2 = tf(K, [1 0]);
W3 = tf(K, [T1 1]);
W4 = tf([T1 1], 1);
W5 = tf(K, [T2 T1*ksi 1]);
W6 = tf(K*2, [T2 T1*ksi 1]);
W7 = tf(K, [T*T T*ksi 1]); %
W8 = tf(K, [4*T*T 2*T*ksi 1]); %
W9 = tf(K, [T2 T1*ksi 1]);
W10 = tf(K, [T2 0.5*T1*ksi 1]);
W11 = tf(K, [T2 0 1]);