xlsFile = 'data_1dim_height_training.xlsx';
data = xlsread(xlsFile);
height = data(:,1);
label = data(:,2);
scatter(height(1:50),label(1:50));
hold on; %保有現有圖形
scatter(height(51:100),label(51:100),'x');
figure(1);
xlabel('Height');
ylabel('Class(0:female; 1:male)');
legend('female','male')
grid on;