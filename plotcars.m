carcount = CountMotion('/Users/meganheydari/Desktop/2019-mini-h19/5secs/motion.h5', 'dx');
 
newsum = [];
carcount2 = carcount(1:length(carcount)-1); 
newsum(1) = carcount2(1); 

for i = 2: length(carcount2) 
   
    newsum(i) = carcount2(i) + newsum(i-1); 
end
 
time = 1:0.5:length(carcount2)/2;
 
plot(time, newsum(1:end-1))
title('Time vs Number of Cars (5 s)')
xlabel('Time (s)')
ylabel('Number of Cars')
axis([1 5 0 max(newsum)])
set(gca,'FontSize',15)
