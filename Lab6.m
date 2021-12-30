clear
close

load moore.dat
x = moore(:,1); y = moore(:,2);
X = [ones(size(x)) x];

y1 = log(y);
[beta_hat ,~, ~, ~,stats ]  = regress(y1, X);
R2 = stats(1)
%Problem 6: Regression
res = X*beta_hat -y1;
subplot(2,2,1), plot(x, X*beta_hat, x, y1, "o")
subplot(2,2,2), normplot(res)
subplot(2,2,3), hist(res)
subplot(2,2,4), plot(x,y, x, exp(X*beta_hat))

ar = 2025;
antal_trans = exp(beta_hat(1) + beta_hat(2)*ar);