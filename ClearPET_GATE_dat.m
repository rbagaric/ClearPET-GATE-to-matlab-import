% ClearPET_GATE_ascii 
% format: 
% 
% The system is set as a cylindricalPET system. Each line is a coincidence created with two singles and the columns are :
% 
% Column 1 : ID of the run (i.e. time-slice) (first single) (4-bytes, G4int)
% Column 2 : ID of the event (first single) (4-bytes, G4int)
% Column 3 : ID of the source (first single) (4-bytes, G4int)
% Column 4 to 6 : XYZ position of the source in world referential (first single) (8-bytes, G4double)
% Column 7 : Time stamp (first single) (8-bytes, G4double) (8-bytes, G4double)
% Column 8 : Deposited energy (first single) (8-bytes, G4double) (8-bytes, G4double)
% Column 9 to 11 : XYZ position in the world referential (first single) (8-bytes, G4double)
% Column 12 to 17 : volume IDs* (first single)
% For binary : Column 12 and 13 (8-bytes, G4double)
% For binary : Column 14 (8-bytes, G4double)
% For binary : Column 15 to 17 (4-bytes, G4int)
% Column 18 : Number of Compton interactions in phantoms before reaching the detector (first single) (4-bytes, G4int)
% Column 19 : Number of Compton interactions in detectors before reaching the detector (first single) (4-bytes, G4int)
% Column 20 : Number of Rayleigh interactions in phantoms before reaching the detector (first single) (4-bytes, G4int)
% Column 21 : Number of Rayleigh interactions in detectors before reaching the detector (first single) (4-bytes, G4int)
% Column 22 : Scanner axial position (first single) (8-bytes, G4double)
% Column 23 : Scanner angular position (first single) (8-bytes, G4double)
% Column 24 : ID of the run (i.e. time-slice) (second single) (4-bytes, G4int)
% Column 25 : ID of the event (second single) (4-bytes, G4int)
% Column 26 : ID of the source (second single) (4-bytes, G4int)
% Column 27 to 29 : XYZ position of the source in world referential (second single) (8-bytes, G4double)
% Column 30 : Time stamp (second single) (8-bytes, G4double)
% Column 31 : Energy deposited (second single) (8-bytes, G4double)
% Column 32 to 34 : XYZ position in the world referential (second single) (8-bytes, G4double)
% Column 35 to 40 : volume IDs
% For binary : Column 35 and 36 (8-bytes, G4double)
% For binary : Column 37 (8-bytes, G4double)
% For binary : Column 38 to 40 (4-bytes, G4int)
% 
%% 
%        0       9     1 3.113e+01 2.725e+01 1.357e+01 4.49805236031756213322536e-06 5.811e-01 4.516e+01 6.396e+01 1.248e+01     0     3     2     0    12     1      0     1     0     0 0.000e+00 0.000e+00       0       9     1 3.113e+01 2.725e+01 1.357e+01 4.49826100184323408252406e-06 4.747e-01 -5.418e+00 -6.783e+01 1.630e+01     0    15     2     0    25     0      0     0     0     0 0.000e+00 0.000e+00
%        1       2     3    4           5       6                   7                    8          9        10        11        12    13   14    15    16     17     18    19    20           21       22          23      24    25   26        27        28                 29                    30         31          32         33      34   35    36     37   38    39     40     41    42        43         44
%   
%%
% runID,
% eventID1,eventID2,
% sourceID1,sourceID2,
% sourcePosX1,sourcePosX2,sourcePosY1,sourcePosY2,sourcePosZ1,sourcePosZ2,
% rotationAngle,
% axialPos,
% globalPosX1,globalPosX2,globalPosY1,globalPosY2,globalPosZ1,globalPosZ2,
% time1,time2,
% energy1,energy2,
% comptVolName1,comptVolName2,
% RayleighVolName1,RayleighVolName2,
% comptonPhantom1,comptonPhantom2,
% comptonCrystal1,comptonCrystal2,
% RayleighPhantom1,RayleighPhantom2,
% RayleighCrystal1,RayleighCrystal2,
% gantryID1,rsectorID1,moduleID1,submoduleID1,crystalID1,layerID1, #/!\ depend on the system type
% gantryID2,rsectorID2,moduleID2,submoduleID2,crystalID2,layerID2, #/!\ depend on the system type
% sinogramTheta,
% sinogramS


%%
T3 = readtable('ClearPET4_2 sec_3 sources_rotAngle/pet8-60sCoincidences.dat')

%%

T3.Properties.VariableNames{1} = 'sliceID1';
T3.Properties.VariableNames{2} = 'eventID';
T3.Properties.VariableNames{4} = 'source x1';
T3.Properties.VariableNames{5} = 'source y1';
T3.Properties.VariableNames{6} = 'source z1';
T3.Properties.VariableNames{7} = 'time 1';
T3.Properties.VariableNames{8} = 'energy 1';
T3.Properties.VariableNames{9} = 'global x1';
T3.Properties.VariableNames{10} = 'global y1';
T3.Properties.VariableNames{11} = 'global z1';
T3.Properties.VariableNames{12} = 'gantryID1';
T3.Properties.VariableNames{13} = 'rsectorID1';
T3.Properties.VariableNames{14} = 'moduleID1';
T3.Properties.VariableNames{15} = 'submoduleID1';
T3.Properties.VariableNames{16} = 'crystalID1';
T3.Properties.VariableNames{17} = 'layerID1';

T3.Properties.VariableNames{18} = 'compton phantom 1';
T3.Properties.VariableNames{19} = 'comptom crystal 1';
T3.Properties.VariableNames{20} = 'axial position';
T3.Properties.VariableNames{21} = 'Reyleigh phantom 1';
T3.Properties.VariableNames{22} = 'Reyleigh crystal 1';

T3.Properties.VariableNames{23} = 'rotAngle';

T3.Properties.VariableNames{24} = 'sliceID2';
T3.Properties.VariableNames{25} = 'eventID2';
T3.Properties.VariableNames{27} = 'source x2';
T3.Properties.VariableNames{28} = 'source y2';
T3.Properties.VariableNames{29} = 'source z2';
T3.Properties.VariableNames{30} = 'time 2 ';
T3.Properties.VariableDescriptions{30} = 'time 2 in seconds';

T3.Properties.VariableNames{31} = 'energyID2';
T3.Properties.VariableNames{32} = 'global x2';
T3.Properties.VariableNames{33} = 'global y2';
T3.Properties.VariableNames{34} = 'global z2';

T3.Properties.VariableNames{35} = 'gantryID2';
T3.Properties.VariableNames{36} = 'rsectorID2';
T3.Properties.VariableNames{37} = 'moduleID2';
T3.Properties.VariableNames{38} = 'submoduleID2';
T3.Properties.VariableNames{39} = 'crystalID2';
T3.Properties.VariableNames{40} = 'layerID2';

T3.Properties.VariableNames{41} = 'compton  fantom 2';
T3.Properties.VariableNames{42} = 'compton crystal 2';


display(T3(1:5,:))


%% visualize data
figure(1)
scatter3(T3.("source x1"),T3.("source y1"),T3.("source z1"),'.');

figure(2)
scatter3(T3.("global x1"),T3.("global y1"),T3.("global z1"),'.');

%% ClearPET data: only partial rings 1 2 3 4 - 11 (12) 13 14

T3partial = T3;

[m n] = size(T3partial);

%%
% rsectors 0-19

% if rsector < 10 and > 3 or rsector > 13
for i = m:-1:1
    if ((T3partial.rsectorID1(i) < 10 && T3partial.rsectorID1(i) > 3) || T3partial.rsectorID1(i) > 13) || (T3partial.rsectorID2(i) < 10 && T3partial.rsectorID2(i) > 3) || T3partial.rsectorID2(i) > 13
        T3partial(i,:)=[];
    
    end
end


%% visualisation

size(T3)

size(T3partial)

figure(1)
scatter3(T3.("source x1"),T3.("source y1"),T3.("source z1"),'.');

figure(2)
scatter3(T3.("global x1"),T3.("global y1"),T3.("global z1"),'.');

figure(3)
histogram(T3.rsectorID1)

figure(4)
histogram(T3partial.rsectorID1)

figure(5)
histogram(T3partial.rsectorID2)

figure(6)
scatter3(T3partial.("source x1"),T3partial.("source y1"),T3partial.("source z1"),'.');

figure(7)
scatter3(T3partial.("global x1"),T3partial.("global y1"),T3partial.("global z1"),'.');

%%










