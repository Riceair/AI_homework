xlsFile = 'data_2dim_weight_height.xlsx';
data = xlsread(xlsFile);
weight = data(:,1);
height = data(:,2);

scatter(weight,height,'*');
hold on;
grid on;