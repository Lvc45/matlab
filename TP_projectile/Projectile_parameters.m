%% Date - Author 
% This file is used to: 
% define the projectile model parameters 
% run the simulation 
% plot the results
clear all 
clc 
close all 
%% Physical parameters 
masse           = 15     ; % (kg) projectile mass 
gravite         = 9.81   ; % (m/s²) gravity acceleration 
coef_frottement = 0.04   ; % air friction coefficient 
%% Initial conditions 
vit0 = 85          ; %(m/s) initial velocity
theta = deg2rad(40) ; %(rad) initial firing angle
pos_x0 = 0; % (m) initial position along x
vit_x0 = vit0*cos(theta) ; % (m/s) initial velocity along x
pos_y0 = 0 ; % (m) initial position along y
vit_y0 = vit0*sin(theta) ; % (m/s) initial velocity along y
%% Simulation parameters 
choix_modelisation_projectile = 2; % 1: no air friction, 2: with air friction and ground modeling 
if choix_modelisation_projectile==1
    duree_simu = 5 ; %(s) simulation duration
    sim('projectile.slx')
elseif choix_modelisation_projectile==2
    duree_simu = 12 ; %(s) simulation duration
    sim('Projectile_friction_and_ground_modeling.slx')
end
%% Plotting results 
figure(1)
plot(temps_simu, pos_x)
xlabel('Time (s)') ,  grid 
legend('position along x-axis (m)')
figure(2)
plot(temps_simu, vit_x)
xlabel('Time (s)') ,  grid 
legend('velocity along x-axis (m/s)')
 
figure(3)
plot(temps_simu, cinematique_y(:,1))
xlabel('Time (s)') ,  grid 
legend('position along y-axis (m)')
figure(4)
plot(temps_simu, cinematique_y(:,2))
xlabel('Time (s)') ,  grid 
legend('velocity along y-axis (m/s)')
figure(5)
plot(pos_x, cinematique_y(:,1))
xlabel('x--> ') , ylabel('y-->');  grid 
legend('projectile position in space (m) ')
 
  
%% Projectile position animation  
figure(6)
plot(pos_x(1), cinematique_y(1,1), 'b*')
xlim([min(pos_x) max(pos_x)]*1.1)
ylim([min(cinematique_y(:,1)) max(cinematique_y(:,1))]*1.1)
%ylim([0 max(cinematique_y(:,1))]*1.1)
xlabel('x--> ') , ylabel('y-->');  grid
hold on
%pause 
for j =2: length(pos_x)
    plot(pos_x(j), cinematique_y(j,1), 'b*')
    pause(0.1)
end    
legend('projectile position in space (m) ')