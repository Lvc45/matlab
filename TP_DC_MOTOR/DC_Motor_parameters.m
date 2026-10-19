% date - Author - 
% This file is used to initialize the parameters of the DC motor and its
% power supply
clear  
clc 
close all

%% Electrical Parameters  
U   = 28    ; % (V) supply voltage across the motor terminals 
L   = 2e-3  ; % (Henry) motor winding inductance
R   = 2     ; % (Ohm) motor winding resistance 
K_e = 0.8   ; % (V/rads/s) back electromotive force constant 
Kt  = 0.8   ; % (N.m/A) motor torque constant 

%% Physical parameters 
w = 3 ; % (rad/s) motor speed 

%% Mechanical parameters  
J = 5e-2 ; % (Kg.m²) load inertia 
C_sec  =  0.1; % (N.m) Dry friction (or Coulomb friction)
C_visq = 0.2 ; % (N.m/rad/s) Viscous friction (or Damping coefficient)