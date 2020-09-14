xlsFile = 'data_2dim_weight_height.xlsx';
data = xlsread(xlsFile);
weight = data(:,1);
height = data(:,2);
b1 = mldivide(weight,height);

yCalc1 = b1*weight;
scatter(weight,height,'*');
hold on;
plot(weight,yCalc1);
xlabel('weight');
ylabel('height');
title('Regression');
grid on;