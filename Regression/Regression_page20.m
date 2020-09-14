xlsFile = 'data_1dim_height_training.xlsx';
data = xlsread(xlsFile);
height = data(:,1);
label = data(:,2);
label = label+1;
b1 = mldivide(height,label);
X = [ones(length(height),1) height];
b = X\label

yCalc1 = b1*height;
yCalc2 = X*b;
scatter(height(1:50),label(1:50));
hold on; %保有現有圖形
scatter(height(51:100),label(51:100),'x');
xlabel('Height');
ylabel('Class(0:female; 1:male)');
plot(height,yCalc1);
plot(height,yCalc2);
legend('female','male','y=\beta_1x','y=\beta_0+\beta_1x','Location','SouthEast');
grid on;