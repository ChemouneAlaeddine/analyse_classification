close all
epsilon = 0.1; % critere d'arret
attenuation = 3; % pas du gradient 1/log(attenuation)

x = 0:0.1:6;
y = fonction(x);

figure('Name', 'recherche du minimum sur un polynome')
hold on;
plot(x,y);

%x0 = randi(250,1)
x0=0;
xcurrent = x0 - 2*x0;
xprec = 5;

plot(x0,fonction(5),'ok','MarkerSize',20);


while(abs(xprec - xcurrent) > epsilon)
    
    plot(xcurrent,fonction(xcurrent),'ob');
   
    xprec  = xcurrent;
    nu = 1/log(attenuation);
    attenuation = attenuation+1;
    xcurrent = xprec - nu*2*xprec;
    pause(1);
end
plot(xcurrent,fonction(xcurrent),'xr', 'MarkerSize',20);