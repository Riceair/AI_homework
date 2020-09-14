[X,Y] = meshgrid(0:100);
Z = Dj28(X,Y);
figure(1);
meshc(X,Y,Z);
title('Dj28');
xlabel('x');
ylabel('y');
zlabel('z');
figure(2);
contour(X,Y,Z);
title('\bf Dj28');
xlabel('\bf x');
ylabel('\bf y');

Z = Ms30(X,Y);
[X,Y] = meshgrid(0:100);
figure(3);
meshc(X,Y,Z);
title('Ms30');
xlabel('x');
ylabel('y');
zlabel('z');
figure(4);
contour(X,Y,Z);
title('\bf Ms30');
xlabel('\bf x');
ylabel('\bf y');

Z = Ms32(X,Y);
[X,Y] = meshgrid(0:100);
figure(5);
meshc(X,Y,Z);
title('Ms32');
xlabel('x');
ylabel('y');
zlabel('z');
figure(6);
contour(X,Y,Z);
title('\bf Ms32');
xlabel('\bf x');
ylabel('\bf y');