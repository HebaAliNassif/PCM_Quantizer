fm = 10;
T= 1/fm;

%Case1
fs = 40; 
Ts = 1/fs;
mu = 0;
L = 8;
mp = 5;
t1 = 0 : Ts : T;
x1 = 5*cos(2*pi*fm*t1);

[error, xq1_uniform_midtread]= uniform_quantizer_v1(x1, L, mp, 1)        %midtread uniform quantization
[error, xq1_uniform_midrise] = uniform_quantizer_v1(x1, L, mp, 2)       %midrise uniform quantization
[error, xq1_nonuniform] = non_uniform_quantizer_v1(x1, mu, mp, L)       %non-uniform quantization


%Case2
fs = 20; 
Ts = 1/fs;
mu = 0;
L = 32;
mp = 5;

t2 = 0 : Ts : T;
x2 = 5*cos(2*pi*fm*t2);

[error, xq2_uniform_midtread] = uniform_quantizer_v1(x2, L, mp, 1)        %midtread uniform quantization
[error, xq2_uniform_midrise] = uniform_quantizer_v1(x2, L, mp, 2)       %midrise uniform quantization
[error, xq2_nonuniform] = non_uniform_quantizer_v1(x2, mu, mp, L)       %non-uniform quantization

%Case3
fs = 15; 
Ts = 1/fs;
mu = 0;
L = 16;
mp = 5;

t3 = 0 : Ts : T;
x3 = 5*cos(2*pi*fm*t3);

[error, xq3_uniform_midtread] = uniform_quantizer_v1(x3, L, mp, 1)        %midtread uniform quantization
[error, xq3_uniform_midrise] = uniform_quantizer_v1(x3, L, mp, 2)       %midrise uniform quantization
[error, xq3_nonuniform] = non_uniform_quantizer_v1(x3, mu, mp, L)       %non-uniform quantization

%Case4
fs = 20; 
Ts = 1/fs;
mu = 100;
L = 32;
mp = 5;

t4 = 0 : Ts : T;
x4 = 5*cos(2*pi*fm*t4);

[error, xq4_uniform_midtread] = uniform_quantizer_v1(x4, L, mp, 1)        %midtread uniform quantization
[error, xq4_uniform_midrise] = uniform_quantizer_v1(x4, L, mp, 2)       %midrise uniform quantization
[error, xq4_nonuniform] = non_uniform_quantizer_v1(x4, mu, mp, L)       %non-uniform quantization
