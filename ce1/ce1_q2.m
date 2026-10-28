% ce1_q2: Matlab script that executes the commands from preparation question 2
%
% Programmer: Ruben Uijtdewilligen
% Date: 2026

% 1. Expected: f = 3, g = -1
a = 1; b = 2; [f,g] = addsub(a,b)

% 2. Expected: a = 7, b = -1
[a,b] = addsub(3,4)

% 3. Expected: a = 9
[a] = addsub(4,5)

% 4. Expected: f = 45
f = 3 * addsub(6,9)

% 5. Expected: s = 20, t = 0
b = 10; t = 3; s = 4; [s,t] = addsub(b,10);

% 6. Expected: a = 6.28..., b = 1.57..., f = 2 * 1 * 0.5 * 1 = 1
a = 2*pi; b = 0.5*pi; f = 2*cos(a)*0.5*sin(b)