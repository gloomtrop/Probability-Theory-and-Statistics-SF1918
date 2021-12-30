clear 
close

load birth.dat

fvikt = birth(:,3);
alder = birth(:,4);
langd = birth(:,16);
mvikt = birth(:,15);

subplot(2,2,1), normplot(fvikt)
subplot(2,2,2), normplot(alder)
subplot(2,2,3), normplot(langd)
subplot(2,2,4), normplot(mvikt)


jbtest(fvikt)
jbtest(alder)
jbtest(langd)
jbtest(mvikt)

