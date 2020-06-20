num_experiments =  round(rand()*1000)
num_flips = round(rand()*10000)

experiment = zeros(1,num_experiments);
prob_heads = zeros(1,num_experiments);

for i=1:num_experiments
  toss = round(rand(1,num_flips));
  num_heads = length(find(toss));
  prob_heads(i) = num_heads/num_flips;
  experiment(i)=i;
endfor

disp(mean(prob_heads));
plot(experiment,prob_heads,'o');
xlabel("experiments");
ylabel("probability of head");
title("coin toss");
grid on
print -djpg coin_toss