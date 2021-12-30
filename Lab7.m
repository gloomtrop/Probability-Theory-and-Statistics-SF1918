clear
close

load birth.dat
mmotion = birth(:,25);
fvikt = birth(:,3);
mlangd = birth(:,16);
mvikt = birth(:,15);
mlatt = birth(:,23);
mrok = birth(:,20)>2;
x = [mlatt mvikt mrok];

X = [ones(size(mvikt)) mvikt];
X_tak = [ones(size(x(:,1))) x(:,1) x(:,2) x(:,3)]; 

b = regress(fvikt, X);
[b_tak, bint, ~, ~, stats] = regress(fvikt, X_tak);

r = X_tak*b_tak - fvikt;

normplot(r)
hold on



