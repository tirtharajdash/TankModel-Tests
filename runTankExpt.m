% COSt = genCOStData(0,1000);
% COSt_tst = genCOStData(1001,1300);

% net = fitnet([10 10 10],'trainlm');
% net = train(net,COSt(:,1:6)',COSt(:,7)');
% cosFitVal = net(COSt_tst(:,1:6)');

D = genTankData1(0,1000);
Dtst = genTankData2(1000,1300);

net1 = fitnet([20],'trainlm');
net1.trainParam.showCommandLine =  true;
net1.trainParam.showWindow = false;
net1 = train(net1,D(:,1:7)',D(:,8)');
Dfitnn = net1(Dtst(:,1:7)');

hold on;
plot(Dtst(:,8));
plot(Dfitnn,'r-');
xlabel('t');
ylabel('Q(t)');
legend('True','Predicted')
box on;
grid on;

% old codes

%Dfit1 = linReg.predictFcn(Dtst(:,1:6));
%Dfit2 = cubicSVM.predictFcn(Dtst(:,1:6));
%Dfit3 = sqexpGPR.predictFcn(Dtst(:,1:6));
%Dfit4 = finegaussianSVM.predictFcn(Dtst(:,1:6));

% net = fitnet([20],'trainlm');
% net = train(net,D(:,1:7)',D(:,8)');
% Dfitnn = net(Dtst(:,1:7)');
%
% hold on;
% plot(Dtst(:,8));
% plot(Dfit1,'r-');
% plot(Dfit2,'g-');
% plot(Dfit3,'k-');
% plot(Dfit4,'c-');
% plot(Dfitnn,'r-');
%legend('True','Lin Reg','Cubic SVM','Squared Exp. GPR','Gaussian SVM','MLP');
% xlabel('t');
% ylabel('Q(t)');
% box on;
% grid on;