%Machine problem2(MATLAB)
%Malabanan,Angelo - Perez,Eric
%2-ece-a


% X&Y
x1 = input (' x1: ');y1 = input (' y1: ');
x2 = input (' x2: ');y2 = input (' y2: ');
x3 = input (' x3: ');y3 = input (' y3: ');

D = (((x2.^2)-(x1.^2)).*(y3-y1)+((y2.^2)-(y1.^2)).*(y3-y1)+((x1.^2)-(x3.^2)).*(y2-y1)+((y1.^2)-(y3.^2)).*(y2-y1)) / ((y3-y1).*(x1-x2)-(x1-x3).*(y2-y1));
E = (((x1.^2)-(x3.^2)).*(x1-x2)+((y1.^2)-(y3.^2)).*(x1-x2)+((x2.^2)-(x1.^2)).*(x1-x3)+((y2.^2)-(y1.^2)).*(x1-x3)) / ((x1-x2).*(y3-y1)-(y2-y1).*(x1-x3));
F = - (x1.^2) - (y1.^2) - (D).*(x1) - (E).*(y1);

%Eqn for the center
h = D ./ -2; k = E ./ -2;
center = [h,k];
%getting radius 
radius = sqrt (h .^2) + (k.^2) - (F);

solution = [D,E,F];
disp('Center: ');disp(center);
disp('Radius: ');disp(radius);
disp('Solution for DEF: ');disp(solution);