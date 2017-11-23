clear;
close all;

%% exercise 06a
x = -2*pi:0.05:2*pi;
f = sin(x);

fdft = my_dft1D(f);
fidft = my_idft1D(fdft);

figure('name', '6a: dft-idft');
subplot(2,1,1);
plot(x,fidft,'b');
subplot(2,1,2);
plot(x,fftshift(fdft),'r');

solution_06a(x,f);

%% exercise 06b

x = -2*pi:0.05:2*pi;
[f1, f2, f12] = my_combined1DFunction(x);


%add code for plotting all 3 functions
%and their fft here
my_plotDft1D(x,f1,'6b: Sine Func. 1');
my_plotDft1D(x,f2,'6b: Sine Func. 2');
my_plotDft1D(x,f12,'6b: Combined Sine Func.');

solution_06b(x);

%% exercise 06c

noisyf12 = my_add1DNoise(f12);
my_plotDft1D(x,noisyf12,'6c: Noisy Function');

denoisedf12 = my_simple1DDFTDenoise(noisyf12);
my_plotDft1D(x,denoisedf12,'6c: Simple Denoise Function');
%add code for plotting all 3 functions
%and their fft here

solution_06c(x,f12);

%% exercise 06d 1D Box filter

w = 4;

boxf12 = my_1DBoxFilter(noisyf12,w);
my_plotDft1D(x,boxf12,'6d: Spatial BoxFilter');

%1D FFTBox filter

fftboxf12 = my_1DBoxFilterDFT(noisyf12,w);
my_plotDft1D(x,fftboxf12,'6d: Fourier BoxFilter');

solution_06d(x,noisyf12,w);

