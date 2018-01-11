function  plotMarrhildreth(  img, sigma0, sigma1 )

[ DoGimg, Gmh  ] = my_marrhildrethEdge( img, sigma0, sigma1 );

figure;
  subplot(2,2,1);imshow(img);title('Original image');
  subplot(2,2,2);imagesc(DoGimg);title('DoG');
  subplot(2,2,3);imshow(Gmh);title('Marr Hildreth Edge');
  
  % Create the Colormap
  n=1111;
  factor = 100;
  offset = -13;
  for j=1:n
 
     i=j+offset;
     map(j,1) = min(factor * max(0,-(i-(n+1)/2)/((n-1)/2)), 1);
     map(j,2) = 0;
     map(j,3) = min(factor * max(0,(i-(n+1)/2)/((n-1)/2)), 1);
   
  end
  colormap(map);
  %colorbar;
    
end

