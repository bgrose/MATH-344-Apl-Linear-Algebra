% Bradley Grose Lab 2
% 9/1/2021

% Question 2
x = 5:1:20
y = 11:-2:-13

%Question 3

% For k = 2

top(1:2) = 1;
bottom = 1:1:2;
sum(top./bottom)
lnFunction = log(2)+0.5772
sum(top./bottom) - lnFunction

% For k = 10
clear

top(1:10) = 1;
bottom = 1:1:10;
sum(top./bottom)
lnFunction = log(10)+0.5772
sum(top./bottom) - lnFunction

% For k = 100
clear

top(1:100) = 1;
bottom = 1:1:100;
sum(top./bottom)
lnFunction = log(100)+0.5772
sum(top./bottom) - lnFunction

clear

% Question 4
A = zeros(3);
A(1, 2) = 1

num(1:5) = 2;
B = diag(num)

num1(1:5) = 5;
C = diag(num1);
C(1:5) = C(1:5) + 1;
num2 = [1, 2];
C(1, 1:2) = C(1,1:2) + num2
