%% Date - Author 
%This file is used to : 
% - define suspension model parameters 
% - create a disturbed road profile 
clear all 
clc 
close all 

%% suspension parameters 
gravity = 9.81;     % (m/s²)
m1      = 500;      % (kg) mass of quarter vehicle 
m2      = 80;       % (kg) suspension mass 
k1      = 20000;    % (N/m) suspension spring rate 
k2      = 125000;   % (N/m) wheel spring stiffness 
b1      = 87.5;     % (N.s/m) suspension damping coefficient  
b2      = 3755;     % (N.s/m) wheel damping coefficient

%% download random route profile 
profil_route_aleatoire =xlsread('signal_aleatoire.xlsx') ; 


%%% plot the route profile 
time_profil = profil_route_aleatoire(:,1) ; 
x_profil    = profil_route_aleatoire(:,2) ; 
plot(time_profil, x_profil)
xlabel('time (s)') , ylabel('m'), grid 
title('Road perturbation') 
%% 
return
%% lancer la simulation 
sim("Automotive_suspension_modele.slx") ; 


% %% tracés de resultats 
% figure(1)
% plot(route)
% hold on 
% plot(pos_passager)
% grid 
% ylabel("route (m)")
% legend("route", "pos\_passager")
% title("comparaison profil route et pos passager")