close
clear
%Problem 2: Maximum likelihood/Minsta kvadrat

M = 1e4;
b=4;
x = raylrnd(b,M,1);
hist_density(x, 40)
hold on
my_est_ml = sqrt(1/(2*M))*norm(x,2); %Skriv in din ML-skattning här
my_est_mk = sqrt(2/pi)*mean(x); %Skriv in din MK-skattning här
plot(my_est_ml, 0, "r*")
plot(my_est_mk, 0, "g*")
plot(b, 0, "ro")
plot(0:0.1:6, raylpdf(0:0.1:6, my_est_ml), "r")
hold off

