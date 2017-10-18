%
% % Calcul des valeurs propres / vecteurs propre d'une matrice (eig)
% % Visualisation des vecteurs propres de la matrice de covariance
% % d'un nuage de points
%

mu = [0 0];
sigma = [1 1.5 ; 1.5 3];
X = mvnrnd(mu,sigma,200); 


figure ('Name', 'Vecteurs propres');
axis equal
hold on
scatter(X(:,1), X(:,2));


%A= cov(Echantillon)
%eig(A)
%[C D] = eig(A)
%V = [C(:,1) C(:,2)]


%t = CalculACP(X);
%Vdir1 = t(:,1)
%Vdir2 = t(:,2)

A= cov(X)

[V D] = eig(A)
V
D
eig(A)
Vdir1 = V(:,1)
Vdir2 = V(:,2)
x=-2:2;

y1 = droite2DVD(x,Vdir1,mu)

plot(x,y1,'r')

y2 = droite2DVD(x,Vdir2,mu)


plot(x,y2,'g')
hold off 