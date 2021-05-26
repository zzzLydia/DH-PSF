J=LaguerreGaussnew(1,1,0)/max(max(abs(LaguerreGaussnew(1,1,0))))+LaguerreGaussnew(3,5,0)/max(max(abs(LaguerreGaussnew(3,5,0))))+LaguerreGaussnew(5,9,0)/max(max(abs(LaguerreGaussnew(5,9,0))))+LaguerreGaussnew(7,13,0)/max(max(abs(LaguerreGaussnew(7,13,0))))+LaguerreGaussnew(9,17,0)/max(max(abs(LaguerreGaussnew(9,17,0))));

Spatial = real(J);
Phase = angle(J);
Intensity = abs(J);



%Plots
figure('Name',strcat('LG',num2str(2),',',num2str(2)),'Renderer', 'painters', 'Position', [125 125 1300 300])
subplot(1,3,1)
xlabel('E(x,y)')
xlim([1 length(Grid)]);ylim([1 length(Grid)]);
surface(Spatial)
colormap(jet)
colorbar()
shading interp 

subplot(1,3,2)
xlabel('|E(x,y)|\^{2}')
xlim([1 length(Grid)]);ylim([1 length(Grid)]);
surface(Intensity)
colormap(hot)
colorbar()
shading interp 

subplot(1,3,3)
xlabel('Phase')
xlim([1 length(Grid)]);ylim([1 length(Grid)]);
surface(Phase)
colormap(hot)
colorbar('Ticks',[-pi -pi/2 0 pi/2 pi], 'Ticklabels',{'-\pi', '-\pi/2', '0', '\pi/2', '\pi'})
shading interp 