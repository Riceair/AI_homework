xlsFile = 'data_1dim_height_training.xlsx';
data = xlsread(xlsFile);
height = data(:,1);
label = data(:,2);
theta = glmfit(height, label, 'binomial', 'link', 'logit');
yCalc = 1./(1+exp(-theta(1,1)-theta(2,1)*height));

scatter(height(1:50),label(1:50));
hold on; %保有現有圖形
scatter(height(51:100),label(51:100),'x');
xlabel('Height');
ylabel('Class(0:female; 1:male)');
plot(height,yCalc)
grid on;