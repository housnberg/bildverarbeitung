function my_plotKernels(k0, k1)
%MY_PLOTKERNELS Summary of this function goes here
%   Detailed explanation goes here

figure('name', 'Compare Kernels');
subplot(2, 1, 1);
surf(real(fftshift(k0)), 'EdgeColor', 'none');
colormap(jet);
shading interp;
view(-180, 0);

subplot(2, 1, 2);
surf(real(fftshift(k1)), 'EdgeColor', 'none');
colormap(jet);
shading interp;
view(-180, 0);

end
