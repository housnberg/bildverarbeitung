function displayfft2( f )
%DISPLAY_FFT Calculate and display the FT of f
[N,M]=size(f);
F=fft2(f,N,M);
F2=log(abs(fftshift(F)));

B = max(F2);
C = max(B);

[X,Y] = meshgrid(0:1:M-1,0:1:N-1);

F2(F2<0) = 0;
F2(F2>C) = C;

%imshow(F2, [0 C], 'InitialMagnification','fit'); 
%imagesc(F2); 
%axis equal;
%axis([1,M,1,N]);




surf(X,Y,real(F2),real(F2),'EdgeColor','none');
shading interp ;
%axis equal; 

axis([0,M-1,0,N-1]);

 %h = bar3(F2);
 
 %%set(h,'BarWidth', 0.8);
 %set(h,'edgecolor','none');
 
 %for k = 1:length(h)
 %    zdata = get(h(k),'ZData');
 %    set(h(k),'CData',zdata,...
 %             'FaceColor','flat')
 %end
 
 %axis equal; axis([1,M,1,N]);
colormap(jet); %colorbar
