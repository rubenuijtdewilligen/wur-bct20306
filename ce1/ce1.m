a = 1, b = 2, c = a+b
a = 1; b = 2; c = a+b
% with a , everything is logged. with a ; only the end result is logged.

a = 1:10, b = 1:2:20, b1(:,1) = 1:2:20, c = b', d = a+b
% a, b, c and d are vectors (horizontal and vertical).
% ' is used to transpose a vector or matrix

who
whos

size(a)
% size of variable
length(a)
% length of vector

a, c, e = a(3), f = c(4), a(3), c(4)
% () is for the index. a(3) gets the third element from variable a.

e1 = a(5:7), f1 = c(4:6)
% : is used to get the 5th through the 7th (and 4 through 6th) element

e2 = a([2,4,8]), f2 = c([5,3,1])
% this gets the 2nd, 4th and 8th element (and 5th, 3th and 1st)

A = [1,2,3;4,5,6;-1,-2,-3;-4,-5,-6], g = A(2,3), h = A(1,:), k = A(:,2)
% A is a matrix
% [] is used to build a matrix. ; starts a new row.
% (2, 3) gets the element from the 2nd row, 3th column
% (1,:) gets the first row
% (:,2) gets the second column

h1 = h(1:2), h2 = h([1,3])
% (1:2) gets the elements from position 1 through position 2
% ([1,3]) is a set of non-consecutive positions

v = A(1:2,3), B = A(2:3,1:2)
% (1:2,3) makes a new matrix with the elements from row 1 through 2 and column 3
% (2:3,1:2) makes a new matrix with the 2:3 and 1:2

v1 = B*v
% v is a vector (2x1) and B is a matrix (2x2)
% v*B is not possible because 2x1:2x2 does not match (1 != 2)

A = randn(4,5), B = randn(5,6), C = A*B
% Å is a 4x5 matrix with random numbers

A = zeros(4,5), B = zeros(5,6), C = A*B
% A is a 4x5 matrix with only zeros

C = A([3,1,2],2:4), D = B([3,2,4],[5,2,5])
% ([3,1,2],2:4) gets the 3rd, 1st and 2nd row and the 2nd through 4th col
% ([3,2,4],[5,2,5]) gets the 3rd, 2nd and 4th row and 5th, 2nd and 5th col

clc
% clears the command window

A % shows one variable

B, D, e1, f1 % shows all four variables

save % saves variables from workspace to a file

clear A % clears A from the workspace

clear B D e1 f1 % clears all four variables from the workspace

clear % clears all variables

load % loads variables from a file

t = 0:0.1:2*pi, st = sin(t)
% t and st have the same length
% sin(t) applies sine to all elements of t

figure(1) % creates an empty figure
plot(t,st) % plots t on y and st on x
plot(st,t) % plots st on y and t on x

plot(t,st)
title('Plot of sine function')
xlabel('Time [s]'), ylabel('sin(t)')
% add title and axis labels to plot

figure(2), plot(t,st,t,cos(t))
title('Plot of sine and cosine function')
xlabel('Time [s]')
ylabel('sin(t), cos(t)')
legend('sin(t)','cos(t)')
% plots both sin and cos in the same figure

close(1)
% closes figure 1

close all
% closes all figures

figure(1);
f = 0.1;
st = sin(2*pi*f*t);
plot(t,st)

hold on
for f = 0.1:0.1:0.5
    st = sin(2*pi*f*t);
    plot(t,st)
end
legend(num2str([0.1:0.1:0.5]'))
hold off
% hold retains the current plot when adding new plots

figure(1);
plot(t,st,'*r', t,cos(t),'-g', t,st+cos(t),'ob')
% easier way to place multiple variables in one plot
% (x,y,linetype)
% *r = red asterisks. -g = green line. ob = blue circles

shg % shows current figure

figure(2);
subplot(2,1,1)
plot(t,st,'*r')
subplot(2,1,2)
plot(t,10*cos(t),'-g')
% multiple plots can be put into one figure
% (2,1,1) is 2 rows, 1 column and use grid position 1
% (2,1,2) is 2 rows, 1 column and use grid position 2
% you can edit the 1st subplot by first doing subplot(2,1,1) again

