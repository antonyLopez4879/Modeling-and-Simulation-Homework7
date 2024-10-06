% ODE45(function - time of simulation(s) - initial condition, input) 
[t,x] = ode45(@electricalFcn,[0 5], [0 0]);
%-----------------------------------------------------
clf
figure(1)
plot(t,x(:,1),'r') % First state
grid on
title("Output Voltage"); xlabel("Time");ylabel("[V]")
hold on

time = 5;
index = find(out.ScopeData.time == time);
plot(out.ScopeData.time(1:index),out.ScopeData.signals(1).values,'g','LineStyle','-.')

legend('ODE45','Simulink-TF')