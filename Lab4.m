clear
%Problem4: Fördelningar av givna data
load birth.dat
x = birth(birth(:,20)<3, 3);
y = birth(birth(:,20) == 3,3);
z = birth(birth(:,23) ==1, 3);

subplot(2,2,1), boxplot(x),
axis([0 2 500 5000])
subplot(2,2,2), boxplot(y),
axis([0 2 500 5000])

subplot(2,2,3:4), ksdensity(x),
hold on
[fy, ty] = ksdensity(y);
plot(ty, fy, "r", 2500, 0, "b*")
ksdensity(z)
hold off
