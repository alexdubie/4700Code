%Initialization when simulation interaction of silicon and argon atoms
doPlot = 1;
dt = 15e-15;
TStop = 100000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

%Setting the masses of the molecules
Mass0 = 14 * C.am; % Silicon
Mass1 = 5 * C.am; % Argon
%Mass2 = 12 * C.am ; *Magnesium

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1/6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 300;

%Setting initial position of each atom
X0 = AtomSpacing*[-0.8 0 0.8 0.9];
Y0 = AtomSpacing*[0 -1.2 0 0.9];
% V = sqrt(2 * 2e-22 / Mass1);
V = 1;
%Setting initial
VX0 = [0 0 0 0];
VY0 = [0 V/2 V/2 0];
Types = [0 1 0 1]; %Assigning the types of the atoms
%Types = [0 1 0 2]; %Assigning the types of the atoms
AddListAtomic(X0,Y0,VX0,VY0,Types,0,0);

Size = 4 * AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5*dt;
MarkerSize = 10;
PlotFile = 'Block.gif';
doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];
PlotPosOnly = 1;

ScaleV = .2e-11;
ScaleF = 20;
