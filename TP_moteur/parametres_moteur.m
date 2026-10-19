% LI Lucas
% 16/06/2026
% Ce fichier contient tout les paramètres physiques et de simulation 
% du moteur
% Effectuer Run ou F5 pour lancer le fichier

%% Paramètres électrique

U = 28; % Tension entrant du circuit (V)
R = 2 ; % Resistance (Ohm)
L = 2e-3; % Inductance (H)
Ke = 0.8 ; % Constante de force éléctromotrice (V/rads/s)
Kt = 0.8 ; % Constante de couple moteur (N.m/A)
J = 5e-2 ; % Inertie du moteur

%% Paramètres physiques

w = 3; % Vitesse moteur (rad/s)
coef_sec = 0.1; % (N.m) Frottement sec
coef_visq = 0.2; % (N.m/rad/s)