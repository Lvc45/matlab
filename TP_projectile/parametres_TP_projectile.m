% LI Lucas
% 10/06/2026
% Ce fichier contient tout les paramètres physiques et de simulation 
% du projectile
% Effectuer Run ou F5 pour lancer le fichier

%% Paramètres physiques

M = 15 ; % (kg) mass of cart  
g = 9.81; % (m/s²) acceleration of gravity
freq = 100 ; % (Hz) frequence de simu du modele 1/(pas)

%% Conditions initiales
vit0 = 85 ; %(m/s) vitesse initiale
theta = deg2rad(40) ; %(rad) angle de tir initial

vit_x0 = vit0*cos(theta) ; % (m/s) vitesse initiale suivant x
vit_y0 = vit0*sin(theta) ; % (m/s) vitesse initiale suivant y

pos_x0 = 0; % (m) position initiale suivant x
pos_y0 = 0 ; % (m) position initiale suivant y

coef_frot=0.04;
