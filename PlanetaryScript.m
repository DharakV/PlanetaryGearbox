% Input Prompts for relevant values
pitch = input("Pitch");
ringDMax = input("Maximum size for the ring gear");
planetCount = input("How many planet gears");
ratio = input("Ratio you want to achieve");
zA = input("Sun tooth count");
SIT = input("Shock Torque"); 
%pAng = input("Pressure angle")

% Note the gearbox will be in two stages with the the sun as the input and
% planet carrier as the output for each stage

%The convention followed for gears labes will be A:Sun, B:Planet, C:Ring

% Known Constants
HP = 7.5; %Horsepower of given engine
pAng = 20; %Pressure Angle of gears


D_A = zA*pitch; %Pitch Dia of Sun
D_B = zB*pitch; %Pitch Dia of Planet
D_C = ZC*pitch; %Pitch Dia of Ring

%Stage One

%Contact forces b/w gears from shock loading
IFt = SIT*D_B/2; %Inertial Forces Tangentially
IFr =IFt*tan(pAng); %Inertial Forces Radially

 
%Forces b/w A to B(Should be the same for contact forces b/w B to C from
%Engine
PV_A = pi*D_A*iRPM/12; %pitch line velocity in ft/min
EFt = 33000*HP/PV_A; %Force tangential of sun to planet (Engine)
EF = Ft*tan(pAng); %Force radial of sun to planet  (Engine)

