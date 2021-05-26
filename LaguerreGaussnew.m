
function u=LaguerreGaussnew(m,n,z)
%%Description%%
% A simple function which plots the spatial, phase and
% intensity profiles of Laguerre-Gauss(P,L) modes. 
% P = P mode n
% L = L mode m
% A = Amplitude
% W = FWHM
% LAGUERREL(P,L) p:(n-m)/2 l:m

%Define working grid size and resolution.
A=1;
w0=1;
Grid= -5:0.05:5;
[x,y] = meshgrid(Grid);

lamda=100;
%Laguerre-Gauss equaiton: 
%(ref: N. Hodgson, 'Laser Resonators and Beam Propagation'.(Pg 222))
z0=pi*w0^2/lamda;
z1=z/z0;
w=w0*sqrt(1+z1^2);
r=sqrt(x.^2+y.^2);
r1=r/w;
phi=atan(z1);
G=(w0/w)*exp(-r1.^2).*exp(1i*r1.^2*z1)*exp(-1i*phi);
R=(sqrt(2)*r1).^m.*laguerreL((n-m)/2,m,(2*r1.^2));
Phi=exp(1i*m.*atan2(y,x));
Z=exp(-1i*n.*phi);
u=A*G.*R.*Phi.*Z;
end
