clear
close
%Problem 3: Konfidenintervall för Rayleighfördelning
load wave_data.mat
subplot(2,1,1), plot(y(1:100))
subplot(2,1,2), hist_density(y)

% my_est = sqrt(1/(2*length(y)))*norm(y,2);
my_est = sqrt(2/pi)*mean(y);
hold on
lower_bound = my_est - 1.96*sqrt((4-pi)*my_est^2/(length(y)*pi));
upper_bound = my_est + 1.96*sqrt((4-pi)*my_est^2/(length(y)*pi));
plot(lower_bound, 0, "g*")
plot(upper_bound, 0, "g*")

plot(0:0.1:6, raylpdf(0:0.1:6,my_est), "r")
hold off

