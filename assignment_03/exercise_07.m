clear;
close all;

%% exercise 7a

%function
f_Quad = zeros(128,128);
f_Quad(32:96,32:96) = 1;

my_plotFFT2D(f_Quad,'7: f_Quad');


lfF_Quad = my_idealLowPassFilter(f_Quad,15);
my_plotFFT2D(lfF_Quad,'7: Ideal Low Pass');


hfF_Quad = my_idealHighPassFilter(f_Quad,15);
my_plotFFT2D(hfF_Quad,'7: Ideal High Pass');

solution_07a(f_Quad);
